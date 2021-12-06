require './config/environment'

use Rack::MethodOverride
use UsersController
use GamesController
run ApplicationController
