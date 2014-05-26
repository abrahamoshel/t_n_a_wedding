class Page < App
  set :haml, layout => :'page/layout'

	get '/' do
    page_haml :'page/index'
	end
end
