# coding: utf-8
Gem::Specification.new do |spec|

  # Project version
  spec.version                    = "0.0.2"

  # Project description
  spec.name                       = "rest-ftp-daemon-remote-sftp"
  spec.authors                    = ["Bruno MEDICI"]
  spec.email                      = "rftpd-project@bmconseil.com"
  spec.description                = "rest-ftp-daemon plugin: sFTP"
  spec.summary                    = "rest-ftp-daemon plugin: transfer files with sFTP"
  spec.homepage                   = "http://github.com/bmedici/#{spec.name}"
  spec.licenses                   = ["MIT"]
  spec.date                       = Time.now.strftime("%Y-%m-%d")

  # List files and executables
  spec.files                      = `git ls-files -z`.split("\x0")
  spec.executables                = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths              = ["lib"]
  spec.required_ruby_version      = ">= 2.3"

  # Runtime dependencies
  spec.add_runtime_dependency     "net-sftp"
  spec.add_runtime_dependency     "rbnacl", '>= 3.2', '< 5.0'
  spec.add_runtime_dependency     "rbnacl-libsodium"
  spec.add_runtime_dependency     "bcrypt_pbkdf"

  # Development dependencies
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
