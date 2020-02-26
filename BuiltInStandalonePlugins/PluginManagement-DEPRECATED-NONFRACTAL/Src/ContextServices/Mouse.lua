--[[ SHAMELESSLY STOLEN FROM ANIMATION CLIP EDITOR ]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Symbol = require(Plugin.Packages.Symbol)
local mouseKey = Symbol.named("Mouse")

local DEFAULT_CURSOR = "rbxasset://SystemCursors/Arrow"

local function getSystemCursor(icon)
	return "rbxasset://SystemCursors/" .. icon
end

local MouseProvider = Roact.PureComponent:extend("MouseProvider")
function MouseProvider:init()
	local mouse = self.props.mouse
	assert(mouse ~= nil, "No mouse was given to this MouseProvider.")

	local mouseObject
	if type(mouse) == "table" then
		mouseObject = mouse
	else
		mouseObject = {
			current = mouse,
			cursors = {},
		}

		mouseObject.pushCursor = function(cursor)
			local currentMouse = mouseObject.current
			if currentMouse ~= nil then
				local cursors = mouseObject.cursors
				table.insert(cursors, getSystemCursor(cursor))

				if #cursors > 0 then
					currentMouse.Icon = mouseObject.cursors[#cursors]
				else
					currentMouse.Icon = DEFAULT_CURSOR
				end
			end
		end

		mouseObject.popCursor = function()
			local currentMouse = mouseObject.current
			if currentMouse ~= nil then
				local cursors = mouseObject.cursors
				table.remove(mouseObject.cursors, #cursors)

				if #cursors > 0 then
					currentMouse.Icon = mouseObject.cursors[#cursors]
				else
					currentMouse.Icon = DEFAULT_CURSOR
				end
			end
		end

		mouseObject.resetCursor = function()
			mouseObject.cursors = {}
			local currentMouse = mouseObject.current
			if currentMouse ~= nil then
				currentMouse.Icon = DEFAULT_CURSOR
			end
		end
	end

	self._context[mouseKey] = mouseObject
end
function MouseProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

-- Gets the mouse at the passed in component's context.
local function getMouse(component)
	assert(component._context[mouseKey] ~= nil, "No MouseProvider found.")
	local mouseObject = component._context[mouseKey]
	return mouseObject
end

local function mock()
	local mockMouseObj = {
		current = {},
		pushCursor = function()
		end,
		popCursor = function()
		end,
		resetCursor = function()
		end,
	}
	return mockMouseObj
end

return {
	Provider = MouseProvider,
	getMouse = getMouse,
	mock = mock,
}