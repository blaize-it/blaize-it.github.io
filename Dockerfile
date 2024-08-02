# Use the official Ruby image as a base image
FROM ruby:3.2

# Set environment variables
ENV JEKYLL_ENV=production

# Install dependencies
RUN apt-get update && apt-get install -y build-essential

# Create a directory for the Jekyll site
RUN mkdir /blaize
WORKDIR /blaize

# Copy the Gemfile and Gemfile.lock into the Docker image
COPY Gemfile* ./

# Install the gems specified in the Gemfile
RUN bundle install

# Copy the rest of the site into the Docker image
COPY . .

# Build the Jekyll site
RUN bundle exec jekyll build

# Expose port 4000
EXPOSE 4000

# Start the Jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
