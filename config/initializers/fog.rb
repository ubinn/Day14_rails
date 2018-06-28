puts ENV["aws_access_key_id"]
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["aws_access_key_id"],           # required
    aws_secret_access_key: ENV["aws_secret_access_key"],      # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
#    host:                  's3.example.com',             # optional, defaults to nil
    endpoint:              'https://s3-ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = ENV["s3_bucket_name"]                                      # required
end