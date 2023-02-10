
require 'pagy/extras/overflow'
# Optionally override some pagy default with your own in the pagy initializer
Pagy::DEFAULT[:items] = 3        # items per page
Pagy::DEFAULT[:size]  = [1,4,4,1] # nav bar links
Pagy::DEFAULT[:overflow] = :last_page
