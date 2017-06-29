require './lib/permissions.rb'

class UsersRepo
  def get_all
    [
      {"name"=>'Sarah', "identifier"=>'sarah@emailprovider.com', "permission"=>Permissions::FOCUS, "roles"=>[], "phone"=>'123-456-7890'},
      {"name"=>'Caroline', "identifier"=>'caroline@woahdude.com', "permission"=>Permissions::ADMIN, "roles"=>['driver', 'coordinator'], "phone"=>'123-456-7890'},
      {"name"=>'Jack', "identifier"=>'jack@coolwebsite.com', "permission"=>Permissions::HELPER, "roles"=>['active friend']},
      {"name"=>'Austin', "identifier"=>'austin@yeehaw.com', "permission"=>Permissions::HELPER, "roles"=>[], "phone"=>'123-456-7890'}
    ]
  end
end
