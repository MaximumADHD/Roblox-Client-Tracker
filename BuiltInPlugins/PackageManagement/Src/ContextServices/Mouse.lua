local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Symbol = require(Plugin.Src.Util.Symbol)

local DEFAULT_CURSOR = "rbxasset://SystemCursors/Arrow"

local MouseProvider = Roact.Component:extend("MouseProvider")

local mouseKey = Symbol.named("Mouse")
local function getMouse(component)
	return component._context[mouseKey]
end

local function getSystemCursor(icon)
	return "rbxasset://SystemCursors/" .. icon
end

function MouseProvider:init(props)
	local icons = {}

	self._context[mouseKey] = {
		current = self.props.mouse,

		setHoverIcon = function(icon, hovering)
			local canSetIcon = self.props.mouse
				and icon ~= nil and hovering ~= nil

			if canSetIcon then
				if hovering then
					table.insert(icons, getSystemCursor(icon))
				elseif #icons > 0 then
					table.remove(icons, #icons)
				end
				if #icons > 0 then
					self.props.mouse.Icon = icons[#icons]
				else
					self.props.mouse.Icon = DEFAULT_CURSOR
				end
			end
		end,

		resetMouse = function()
			self.props.mouse.Icon = DEFAULT_CURSOR
			icons = {}
		end,

		getNativeMouse = function()
			return self.props.mouse
		end,
	}

	self.resetMouse = function()
		if self.props.mouse then
			self.props.mouse.Icon = DEFAULT_CURSOR
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