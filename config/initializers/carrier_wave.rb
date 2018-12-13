if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAITBWBCX6PGY2HWUQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['minitwi']
  end
end