local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local DEFAULT_CURSOR = "rbxasset://SystemCursors/Arrow"

local MouseProvider = Roact.Component:extend("MouseProvider")

local mouseKey = newproxy(true)
getmetatable(mouseKey).__tostring = function()
	return "Symbol(Mouse)"
end

local function getMouse(component)
	return component._context[mouseKey]
end

local function getSystemCursor(icon)
	return "rbxasset://SystemCursors/" .. icon
end

function MouseProvider:init(props)
	local mouse = props.mouse

	local icons = {}

	self._context[mouseKey] = {
		current = mouse,

		setHoverIcon = function(icon, hovering)
			local canSetIcon = mouse
				and icon ~= nil and hovering ~= nil

			if canSetIcon then
				if hovering then
					table.insert(icons, getSystemCursor(icon))
				elseif #icons > 0 then
					table.remove(icons, #icons)
				end
				if #icons > 0 then
					mouse.Icon = icons[#icons]
				else
					mouse.Icon = DEFAULT_CURSOR
				end
			end
		end,

		resetMouse = function()
			mouse.Icon = DEFAULT_CURSOR
			icons = {}
		end,

		getNativeMouse = function()
			return mouse
		end,
	}

	self.resetMouse = function()
		if mouse then
			mouse.Icon = DEFAULT_CURSOR
		end
	end

	self.resetMouse()
end

function MouseProvider:willUnmount()
	self.resetMouse()
end

function MouseProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return {
	Provider = MouseProvider,
	getMouse = getMouse,
}