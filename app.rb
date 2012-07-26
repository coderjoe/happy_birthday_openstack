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

		c = "1941d81841b0801681b01a4188e8e81241b81981b01841d0194b81a41b81981b01841d0194a01081841cc194d8d0e8e819019418c1bc190194d8d0a01a41e41dc1481181c41bc1dc10c14c1e81c813819416cc0174b81c81941d81941c81cc194a4a428"
		send(:print,c.split(/#{"\x17"}/)[1..-1].map {|b|(b.to_i(16)>>2).chr}.join)
	end
end

set :protection, except: :ip_spoofing

get '/src' do
	c,d = "1c81941cc1c01bc1b81cc194b81a01941841901941c81cc16c9c1a417c1a01841cc17c18417c1cc19418c1c81941d09c17480f480154148124b81941b818c1bc190194a09cf412414410c19cdc11c10411cd0134150128d41e410c1389ca4281c81941cc1c01bc1b81cc194b81a01941841901941c81cc16c9c1b01d41b01e89c17480f480154148124b81941b818c1bc190194a0881b01b01b01d41b01d41b01d41d41b01d41b01b088a4281181a41b0194b81bc1c01941b8a0190a4801ec801f01981f08010c1bc1901941481841e4b81cc18c1841b8a080198b81c81941841901b01a41b81941ccb81a81bc1a41b8b080e81c81d41881e4a4b81c018419c194801f428",XYZZY
	send(:print,c.split(/#{"\x17"}/)[1..-1].map {|b|(b.to_i(16)>>2).chr}.join)
end

get '/' do
	content_type :txt
	Wizardry::do_some_magic( request )
end
