#A lot of this stuff has been overridden for PHP/Non Rails magic
namespace :deploy do
  
  task :default do
    update
    finalize_update
    composer
  end
  
 

git clone https://www.github.com/mezgani/myBlog.git  
cd myBlog
mkdir tmp
chown -R nobody:nogroup tmp
chmod 755 tmp
rake tmp:pids:clear             
rake tmp:sessions:clear
rake tmp:sockets:clear
rake tmp:cache:clear
/etc/init.d/nginx restart
chown  -R nobody:nogroup /home/blog/myBlog/tmp/cache/
mkdir -p vendor/javascript


 
  task :finalize_update, :except => { :no_release => true } do
    run "chmod -R g+w #{latest_release}" if fetch(:group_writable, true)
    run "cp -fr #{current}/wp-content #{shared_path}/"
    run "cp #{current}/.htaccess #{shared_path}/"
    run "cp #{current}/wp-config.php #{shared_path}/configs/"
    run "cp #{shared_path}/configs/wp-config.php #{latest_release}/"
    run "cp -fr #{shared_path}/wp-content #{latest_release}/"
    run "chmod -R 755 #{latest_release}/tmp"
    run "cp #{shared_path}/.htaccess #{latest_release}/"
  end
end 
task :composer do
  top.upload("#{local_path}/composer.json", "#{shared_path}/install", {:via => :scp, :recursive => true})
  run "cd #{shared_path}/install && curl -s http://getcomposer.org/installer | #{php_bin}"
  run "cd #{shared_path}/install && ./composer.phar install"
end
task :setup do
  run "sudo apt-get install curl"
  run "mkdir #{shared_path}/"
  run "mkdir #{shared_path}/install/"
  run "mkdir #{shared_path}/configs/"
  
  set(:wp_environment_ready, Capistrano::CLI.ui.ask("Is wp-config.php ready for this environment? (yes/no): "))
  if wp_environment_ready == 'yes'
    #top.upload("htdocs/wp-config.php", "#{shared_path}/configs/wp-config.php", :via => :scp)
    run "cp #{deploy_to}/wp-config.php #{shared_path}/configs/wp-config.php "
  end
  run "mkdir #{shared_path}/wp-content"
  run "mkdir #{shared_path}/wp-content/uploads"
end
