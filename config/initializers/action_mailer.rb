# This is an example configuration for ActionMailer.
# delete it if you don't need it, or
# uncomment it, put the ActionMailer gem in your gemfile,
# and add some mailers.  That might not be an obvious
# thing, so we'll probably have some better documentation
# on that eventually.  Alternatively, you can do the same thing
# in your environment-specific config... then you can decide
# not send mails in development, for instance.

# require 'action_mailer'

# we have found that the best way to configure this, in order to keep
# file paths organized and to a minimum, is to create an app/mailers
# directory that contains the subclasses of ActionMailer::Base, and
# keep the templates in app/mailers/templates/<name_of_subclass>.
#
# ActionMailer::Base.view_paths= File.expand_path('app/mailers/templates')


# ActionMailer::Base.perform_deliveries = true
# ActionMailer::Base.raise_delivery_errors = true


# you could do this here, but you might be better off defining this
# in the environment-specific initializers.
# ActionMailer::Base.delivery_method = :smtp

# would love to just do this, but the keys need to be symbols.
# ActionMailer::Base.smtp_settings = Global.action_mailer.to_hash

# ActionMailer::Base.smtp_settings = {
#   :address              => Global.action_mailer["address"],
#   :port                 => Global.action_mailer["port"],
#   :domain               => Global.action_mailer["domain"],
#   :user_name            => Global.action_mailer["user_name"],
#   :password             => Global.action_mailer["password"],
#   :authentication       => Global.action_mailer["authentication"],
#   :enable_starttls_auto => Global.action_mailer["enable_starttls_auto"],
# }

