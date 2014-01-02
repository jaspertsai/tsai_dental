require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end
TsaiDental::Application.config.secret_key_base = 'a275c550c67764a8f585a7697b39e8f54d790bab112a01722a2bb7250297ce460c802e2a8cdd0c7043d2086befde0c3acaed0a51658c6726153d72d58700fb5a'
