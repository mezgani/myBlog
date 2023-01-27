const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
      extend: {
          gridTemplateColumns: {
              'xl': 'repeat(12, 1fr)',
              'lg': 'repeat(12, 1fr)',
              'md': 'repeat(12, 1fr)',
              'sm': 'repeat(12, 1fr)',
              'xs': 'repeat(12, 1fr)',
              '1': 'repeat(1, 1fr)',
              '2': 'repeat(2, 1fr)',
              '3': 'repeat(3, 1fr)',
              '4': 'repeat(4, 1fr)',
              '5': 'repeat(5, 1fr)',
              '6': 'repeat(6, 1fr)',
              '7': 'repeat(7, 1fr)',
              '8': 'repeat(8, 1fr)',
              '9': 'repeat(9, 1fr)',
              '10': 'repeat(10, 1fr)',
              '11': 'repeat(11, 1fr)',
              '12': 'repeat(12, 1fr)',
          },
          gridTemplateRows: {
              '1': 'repeat(1, 1fr)',
              '2': 'repeat(2, 1fr)',
              '3': 'repeat(3, 1fr)',
              '4': 'repeat(4, 1fr)',
              '5': 'repeat(5, 1fr)',
              '6': 'repeat(6, 1fr)',
              '7': 'repeat(7, 1fr)',
              '8': 'repeat(8, 1fr)',
              '9': 'repeat(9, 1fr)',
              '10': 'repeat(10, 1fr)',
              '11': 'repeat(11, 1fr)',
              '12': 'repeat(12, 1fr)',
          },
      },
    extend: {
      fontFamily: {
        sans: 'Optima', 'sans-serif',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    function({addBase, config}) {
      addBase({
        '@import': '"https://fonts.cdnfonts.com/css/optima-4"',
      })
    },
  ]
}

