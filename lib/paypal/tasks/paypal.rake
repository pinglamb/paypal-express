desc 'Show Paypal Configurations'
namespace :paypal do
  task :dump => :environment do
    puts "Paypal Username: #{Paypal.username}"
    puts "Paypal Password: #{Paypal.password}"
    puts "Paypal Signature: #{Paypal.signature}"
  end
end
