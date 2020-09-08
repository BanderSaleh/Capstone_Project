# frozen_string_literal: true

Rails::Application.class_eval do
  def credentials
    @credentials ||= encrypted(config.credentials.content_path, key_path: config.credentials.key_path)
  end
end

Rails::Application::Configuration.prepend(Module.new do
  attr_accessor :credentials

  def initialize(*)
    super
    @credentials = ActiveSupport::OrderedOptions.new
    @credentials.content_path = default_credentials_content_path
    @credentials.key_path = default_credentials_key_path
  end

  def credentials_available_for_current_env?
    File.exist?("#{root}/config/credentials/#{Rails.env}.yml.enc")
  end

  def default_credentials_content_path
    if credentials_available_for_current_env?
      File.join(root, "config", "credentials", "#{Rails.env}.yml.enc")
    else
      File.join(root, "config", "credentials.yml.enc")
    end
  end

  def default_credentials_key_path
    if credentials_available_for_current_env?
      File.join(root, "config", "credentials", "#{Rails.env}.key")
    else
      File.join(root, "config", "master.key")
    end
  end
end)