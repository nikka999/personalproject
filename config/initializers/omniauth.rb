Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '141041772633198', '0c0805a77d99c5a425bcaed5085878b9'

#,{:client_options => {:ssl => {:ca_path => "/System/Library/OpenSSL/certs/"}}}
end

