Rails.application.config.middleware.use OmniAuth::Builder do
provider :login_dot_gov, {
    name: :logindotgov,
    client_id: 'urn:gov:gsa:openidconnect.profiles:sp:sso:tts_future:cloud_login_iaml2_test', # same value as registered in the Partner Dashboard
    idp_base_url: 'https://idp.int.identitysandbox.gov/', # login.gov sandbox environment IdP
    ial: 1,
    private_key: OpenSSL::PKey::RSA.new(Rails.application.credentials.login_pem),
    redirect_uri: 'http://localhost:3000/auth/logindotgov/callback',
    scope: 'openid address email phone profile'
}
end
