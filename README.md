== README

Hippo is a self-hosted open source project to help your team convert text to images. It is self-hosted so images can be stored locally, maintaining the privacy of the original text. 

== Configuration

=== To enable Google+ Oauth

You will need to acquire a Google API key to run your local instance. 
You can get one here: https://code.google.com/apis/console/b/0/?pli=1

Create a file in config/secrets.yml, with your Google API key:

    development:
      google_key: YOUR_GOOGLE_KEY
      google_secret: YOUR_GOOGLE_SECRET

Google Auth is required for production mode.  *Do not check secrets.yml into the repository.*

