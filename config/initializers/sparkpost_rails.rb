SparkPostRails.configure do |c|
  c.api_key = ENV['SPARKPOST_API_KEY']
  c.html_content_only = true
  c.return_path = 'no-reply@email.stoketech.com'
end
