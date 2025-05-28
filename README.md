# Personal Website

This is my personal website built with Jekyll. It showcases my projects, skills, and experience in cybersecurity and software engineering.

## Setup with Docker

1. Make sure you have Docker and Docker Compose installed
2. Clone this repository
3. Run `docker-compose up --build`
4. Visit `http://localhost:4000` to view the site

The site will automatically rebuild when you make changes to the source files.

## Development

- Add new projects in the `_projects` directory
- Modify layouts in the `_layouts` directory
- Update styles in `assets/css/main.scss`
- Configure site settings in `_config.yml`

## Manual Setup (without Docker)

If you prefer to run without Docker:

1. Install Ruby and Bundler if you haven't already
2. Clone this repository
3. Run `bundle install` to install dependencies
4. Run `bundle exec jekyll serve` to start the development server
5. Visit `http://localhost:4000` to view the site

## License

MIT License 