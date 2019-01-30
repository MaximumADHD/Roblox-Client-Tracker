local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local mouseKey = require(Plugin.Src.Keys.mouseKey)

local fastFlags = require(Plugin.Src.Util.FastFlags)

local FFlagMouseCursorsInGameSettings = settings():GetFFlag("MouseCursorsInGameSettings")
local DEFAULT_CURSOR = "rbxasset://SystemCursors/Arrow"

local MouseProvider = Roact.Component:extend("MouseProvider")

local function getSystemCursor(icon)
	return "rbxasset://SystemCursors/" .. icon
end

function MouseProvider:init(props)
	local mouse = props.mouse

	local icons = {}

	self._context[mouseKey] = {
		current = mouse,

		setHoverIcon = function(icon, hovering)
			local canSetIcon = FFlagMouseCursorsInGameSettings and mouse
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

		getNativeMouse = fastFlags.isMorphingPanelWidgetsStandardizationOn() and function()
			return mouse
		end or nil,
	}

	self.resetMouse = function()
		if mouse and FFlagMouseCursorsInGameSettings then
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

return MouseProvider