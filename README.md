A simple rails app using MySQL to help manage projects more easily. 

To use this, you need to head to config/database.yml , and replace the "development" environment's
database information with a database that you will be using on your own (a local MySQL database for
demonstration purposes.)

Then, while you're in the root directory, run
'''
rails s
'''
if you have the Ruby gem rails already installed. If the process doesn't work, you may need to run
''' bundle install '''
and then you may run rails s.
