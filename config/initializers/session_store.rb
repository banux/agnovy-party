# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_agnovi_party_session',
  :secret      => '860afd4effb2d93e483fb72b71ed21082a6a2c37a918788dbe395b3615a77e0f8c79dd0ed74dde94bcdd7ed3237e608d1253da97b6beca5489bd39e626aaac58'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
