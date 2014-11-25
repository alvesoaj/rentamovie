if Rails.env == "production"
    CarrierWave.configure do |config|
        config.fog_credentials = {
            :provider               => 'AWS', # required
            :aws_access_key_id      => 'AKIAIEMBW6XS2C3JHVWQ', # required
            :aws_secret_access_key  => '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', # required
            :region                 => 'sa-east-1'  # optional, defaults to 'us-east-1'
        }
        config.fog_directory  = 'rentamovie' # required
        # config.fog_host     = 'https://assets.example.com' # optional, defaults to nil
        config.fog_public     = false # optional, defaults to true
        config.fog_attributes = { 'Cache-Control'=>'max-age=315576000' } # optional, defaults to {}
    end
end