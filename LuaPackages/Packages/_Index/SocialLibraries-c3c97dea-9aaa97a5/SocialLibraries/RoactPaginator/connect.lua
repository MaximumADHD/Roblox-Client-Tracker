local root = script:FindFirstAncestor("RoactPaginator")
local fetchInitSymbol = require(root.fetchInitSymbol)
local fetchWithCursorSymbol = require(root.fetchWithCursorSymbol)
local loadNextSymbol = require(root.loadNextSymbol)
local loadPreviousSymbol = require(root.loadPreviousSymbol)
local Logger = require(root.Logger)

local dependencies = require(root.Parent.dependencies)
local Roact = dependencies.Roact
local Cryo = dependencies.Cryo
local GenericPagination = dependencies.GenericPagination

--[[
	Formats a multi-line message with printf-style placeholders.
]]
local function formatMessage(lines, parameters)
	return table.concat(lines, "\n"):format(unpack(parameters or {}))
end

local function connect(parameters)
	assert(parameters and type(parameters) == "function", "RoactPaginator.connect: parameters expected to be a function")
	local connectTrace = debug.traceback()

	return function(innerComponent)
		if innerComponent == nil then
			local message = formatMessage({
				"connect returns a function that must be passed a component.",
				"Check the connection at:",
				"%s",
			}, {
				connectTrace,
			})

			error(message, 2)
		end

		local componentName = ("PaginatorConnection(%s)"):format(tostring(innerComponent))

		local Connection = Roact.Component:extend(componentName)

		function Connection:init()
			local parametersResult = parameters()
			assert(parametersResult, "RoactPaginator.connect: Expected parameters to return an object")

			self.paginator = GenericPagination.new({
				pageSize = parametersResult.pageSize,
				fetchInit = self.props[fetchInitSymbol],
				fetchWithCursor = self.props[fetchWithCursorSymbol],
			})
		end

		function Connection:render()
			local props = Cryo.Dictionary.join(self.props, {
				[loadNextSymbol] = function()
					if self.paginator:isFetching() then
						return
					end

					self.paginator:getNext():catch(function(error)
						Logger:error("Could not getNext. Got error: {}", error)
					end)
				end,
				[loadPreviousSymbol] = function()
					if self.paginator:isFetching() then
						return
					end

					self.paginator:getPrevious():catch(function(error)
						Logger:error("Could not getPrevious. Got error: {}", error)
					end)
				end,
			})

			return Roact.createElement(innerComponent, props)
		end

		return Connection
	end
end

return connect
