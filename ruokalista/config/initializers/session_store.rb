# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ruokalista_session',
  :secret      => '7b106fb2fd2f4f7d487c81ad8887636a3f1f845afb4aeb76996501c5e9604e32b048d77b0c74e3a02c8b0f3af0a656a99115cf36f443dcb79a24713ee08442d4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
