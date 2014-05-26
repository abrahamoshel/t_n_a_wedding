class Admin < App

  get '/'do
   	admin_haml :'admin/index'
  end
end
