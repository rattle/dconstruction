# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dconstruct2010_session',
  :secret      => 'bb6305ef468cc9b4323eda7e623a350599bc97c1d01e6a5f4a699f6b96ca79b167897812f15ced4235d2719cc76f7bb8e5c487d6e44196bd05e892c95602a8bf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
