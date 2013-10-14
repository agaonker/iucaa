import sys, os, bottle

sys.path = ['/var/www/mercury_bottle/'] + sys.path

# Change working directory so relative paths (and template lookup) work again
os.chdir(os.path.dirname(__file__))

import appserver         # This loads appserver containing the routes and extenal facing endpoints

# Do NOT use bottle.run() with mod_wsgi
application = bottle.default_app()
