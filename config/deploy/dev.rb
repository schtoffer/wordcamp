# Set the deployment directory on the target hosts.
set :deploy_to, "/home1/schtoffe/public_html/sites/#{application}-#{stage}" #FIXME

# Use the correct branch on github. Uncomment this if you have set up seperate branches for each staging area
set :branch, "dev" #FIXME

# The hostnames to deploy to.
role :web, "schtoffer.com" #FIXME

# Specify one of the web servers to use for database backups or updates.
# This server should also be running Wordpress.
role :db, "schtoffer.com", :primary => true #FIXME

# The path to wp-cli
set :wp, "cd #{current_path}/#{app_root} ; /home1/schtoffe/bin/wp" #FIXME (Should be the full path to the wp command on your server)

# The username on the target system, if different from your local username
ssh_options[:user] = 'schtoffe' #FIXME
