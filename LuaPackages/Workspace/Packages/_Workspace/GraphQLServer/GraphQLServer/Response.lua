local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local Packages = GraphQLServer.Parent
local Promise = require(Packages.Promise)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>
type Error = LuauPolyfill.Error
local stringify = require(Packages.GraphQL).stringify

type Response = {
	body: Object,
	text: (Response) -> Promise<string>,
}

local Response = {}
Response.__index = Response

function Response.new(body: Object): Response
	local self = {}

	self.body = body

	setmetatable(self, Response)
	return (self :: any) :: Response
end

function Response:text(): Promise<string>
	return Promise.new(function(resolve, reject)
		local ok, text = pcall(function()
			if self.body.errors then
				for i, error in self.body.errors do
					if type(error) == "table" and error.name == "GraphQLError" then
						self.body.errors[i] = {
							message = error.message,
							locations = error.locations,
							extensions = error.extensions,
							path = error.path,
						}
					end
				end
			end

			return stringify(self.body)
		end)
		if ok then
			resolve(text)
		else
			reject(Error.new(text))
		end
	end)
end

return Response
