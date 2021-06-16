let environment = {
  plugins: [
    require('postcss-import'),
    require('tailwindcss'),
    require('autoprefixer'),
    require('postcss-flexbugs-fixes'),
  ]
}

if (process.env.RAILS_ENV === "production") {
  environment.plugins.push(
      require('@fullhuman/postcss-purgecss')({
        content: [
          './app/**/*.html.erb',
          './app/helpers/**/*.rb',
          './app/javascript/**/*.js',
          './app/javascript/**/*.jsx',
        ],
        defaultExtractor: content => content.match(/[A-Za-z0-9-_:/]+/g) || []
      })
  )
}

module.exports = environment