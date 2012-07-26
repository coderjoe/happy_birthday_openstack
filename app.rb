require 'zlib'
require 'base64'
require 'coderay'
require 'uri'
require 'sinatra'

module Wizardry
	def self.do_some_magic( request )
		iywRFqowCSzrNe = [
			"==geeZ6bD0nS1mp8AGeHt2VR+Tmyq3mD7rt5jLg7\nu9dxALYH4m/+GLeH6FKh4IlsCvFaCqFMQvZg0jN6YjuY2g/PR8zCu2FvLkE/\n/jX629hL4wfVvJOm6YGkvLne1Gn/xHgYFnhGzxYxzuzU14EScm+/Jv8ErvIB\nZcdx1ftynZWYIyxucKb9tVdqU1aR9saTVwak7lKC0jKS7bHEHzLfNbuZehgs\npu7/KtYaZKNbwezVdLdWK9iWRuE2CuIwDRcFklLJ9sUF5/ehQEzALF0jdpNe",
			"=oGq17wPIy0sZJ/JgLjZvX7vpr/D7vtCK+C0/Nr3fOv6\nQpIN7OCFRp3M4lxUwHyWOdTJBXHf3phtezdqJtPv00BFFJF+Z/SnLmANQeID\n6sl8Qf5oiuQ97DvchW+aqUT2k3Nn5e/8mj5lGx4j6q/Uze77MGmDe9R7OPey\n7/N0ZSimTZE9lpOmJzS7mgpqoRdsJLuLbNAmTnwnZikMjnuCl/pTainokOWE\nRuxORDYibKrh8cMQ7691WoTRaTekD2FwP598I7LRXbHmIWV6jciXQMcQ0IU8\ng6q22SaDJZUEq0LEN2FG2fWONOFFWw94DE9WVasFQsappUZYsLVKXZdpNanq\nIYdgWUNq5EAWWBtlHmIaXflSSwdENagIKQQim+dgdsmpPwUM3zr3hxQhIo4s\n9+frt2amxYSza4o7lIq02HLS9qkFXK4wErVWK0F26xwVm/chQEjArFEkdpNe",
			"Ucu1Mbw+U0DbGjZeP+3JdnhF\naqjeaQeBKyBy5sKhJSzbU4z+hSyYoBpZA1sOXKC4DBvCXFQnyQCXwHkTPJyP\nvTbgExcGmPH5ZUBFH6QG0skB6npa/e+nwuW6OWIGC+AO8ODzgt+tvMqnq0pN\ngLIjU65cteemMlpwvEDjD7qfU6ahsnP8unG81nnevf99W66TyIN21gqgkznp\nzowRSeTJFylFUKB4mmzFhxc7eE0dksLmOaayBv13mCCSyZQCGwDworrCYbBv\nxbuB52nsNxxNBwaC+DajTw1TZrftBFGw3wf7TR4g1LlOyomra+YbLjVVpb7Z\nDi7Cr5gl3mwaWy/FG74Vp5PH1rdyhoz2r1R76fsKrO06/90T71Ftcz+whgLg\n9mt+XDxf2tSqWdRdSzMVfGU89hBmvkYYxzISMj0FFG3TX/ZxUAjwP91jNqNe"
		]

    eval Zlib::Inflate.inflate(Base64::decode64(iywRFqowCSzrNe[0].reverse))
	end
end

set :protection, except: :ip_spoofing

get '/src' do
	response.headers['i_has_a_secret'] = URI.encode('=IQCg7GAG4MTJ5yCN')
	response.headers['lulz'] = URI.encode("lllululuulull")
	File.open(__FILE__) { |f| CodeRay.scan( f.readlines.join, :ruby).page }
end

get '/' do
	content_type :txt
	Wizardry::do_some_magic( request )
end
