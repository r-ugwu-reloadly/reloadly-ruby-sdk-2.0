Gem::Specification.new do |s|
  s.name = 'reloadly_sdk'
  s.version = '1.0.0'
  s.summary = 'reloadly_sdk'
  s.description = ''
  s.authors = ['Reloadly Developers']
  s.email = 'developers@reloadly.com'
  s.homepage = 'https://www.reloadly.com'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.3')
  s.add_dependency('faraday', '~> 2.0', '>= 2.0.1')
  s.add_dependency('faraday-follow_redirects', '~> 0.2')
  s.add_dependency('faraday-multipart', '~> 1.0')
  s.add_dependency('faraday-gzip', '~> 0.1')
  s.add_dependency('faraday-retry', '~> 1.0')
  s.add_dependency('faraday-net_http_persistent', '~> 2.0')
  s.add_dependency('certifi', '~> 2018.1', '>= 2018.01.18')
  s.add_dependency('faraday-http-cache', '~> 2.2')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
