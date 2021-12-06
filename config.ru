require './config/environment'

use Rack::MethodOverride
use GamesController
use UsersController
run ApplicationController
