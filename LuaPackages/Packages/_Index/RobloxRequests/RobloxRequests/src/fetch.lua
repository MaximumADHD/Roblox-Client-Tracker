local Main = script.Parent.Parent
local Packages = Main.Parent
---------------------------------------------------

local Promise = require(Packages.Promise)

---------------------------------------------------

function createFetch(promise_request)
	local function fetch(url, options)
		if options == nil then
			options = {}
		end

		local method = options.method or "GET"
		options.method = nil
		options.data = options.body
		options.body = nil
		return promise_request(method, url, options):andThen(function(response)
			local text = response.text
			response.text = function()
				return Promise.resolve(text)
			end
			response.status = response.code
			return response
		end)
	end
	return fetch
end

return createFetch
