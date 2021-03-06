# Remember to define a namespace e.g. for views if you want to use nested resources

# Example namespaces for views:

# App.Views.Main =
#   Users: {}
#   Articles: {}

# App.Views.Admin =
#   Users: {}
#   Articles: {}
#   Comments: {}

# now you can define classes such as App.Views.Main.Articles.Show or App.Views.Admin.Users.List

loco = new App.Loco
  # set to your Turbolinks version if you have enabled Turbolinks
  turbolinks: 5                       # false by default

  # your browser's app will be checking for new notifications periodically via ajax polling
  notifications:
    enable: true                      # false by default
    #pollingTime: 3000                # 3000 ms by default

    # display upcoming notifications in browser's console e.g. for debugging
    #log: true                        # false by default

    #ssl: false                       # your current protocol by default

    # location must the same as where you mount Loco in routes.rb
    #location: 'notification-center'  # 'notification-center' by default

    # max number of notifications that is fetched at once via ajax pooling
    # must be the same as notifications_size defined in initializers/loco.rb
    # next batch of notifications will be fetched immediately after max size is reached
    #size: 100                        # 100 by default

    # after this time your current namespace controller / controller instance method
    # disconnectedForTooLong: will be called with the 'time since disconnection' passed as an argument
    #allowedDisconnectionTime: 10     # 10 by default [sec]
  #locale: 'en'                       # 'en' by default

  # if provided - loco will be using absolute path instead of site-root-relative path in all xhr requests
  #protocolWithHost: 'https://example.com'

  # this method is called at the end, after given controller methods has been called
  # at this time Loco's instance is initialized and you can use it to change behaviour of your browser app
  # e.g. polling interval -> App.Env.loco.getWire().setPollingTime <time>
  #postInit: ->

loco.init()