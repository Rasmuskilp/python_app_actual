# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'python_app'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'python_app::default'

# Specify a custom source for a single cookbook:
cookbook 'python_app', path: '.'
cookbook 'nodejs', '= 5.0.0', :supermarket
cookbook 'apt', '~> 7.2.0'
cookbook 'pm2', '~> 0.7.4'
cookbook 'poise-python', '~> 1.7.0'
