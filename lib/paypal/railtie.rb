module Paypal
  class Railtie < Rails::Railtie
    config.after_initialize do
      paypal_settings = YAML.load_file(File.join(Rails.root.to_s, 'config', 'paypal.yml'))[Rails.env || "development"]
      Paypal.username = paypal_settings["username"]
      Paypal.password = paypal_settings["password"]
      Paypal.signature = paypal_settings["signature"]
    end
    rake_tasks do
      load "paypal/tasks/paypal.rake"
    end
  end
end
