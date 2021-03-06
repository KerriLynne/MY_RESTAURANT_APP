require './config/environment'

use Rack::MethodOverride
# use Rack::Flash, :accessorize => [:notice, :error]

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use RestaurantsController
use UsersController
use SessionController
use ReviewsController
run ApplicationController
