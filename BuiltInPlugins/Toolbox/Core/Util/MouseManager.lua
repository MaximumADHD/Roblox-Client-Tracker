local Plugin = script.Parent.Parent.Parent

local Images = require(Plugin.Core.Util.Images)

-- TODO CLIDEVSRVS-1357: Make this better

local disableMouseIcons = true

local MouseManager = {
	_mouse = nil,
	_icons = {},
}

function MouseManager:setPlugin(plugin)
	self._mouse = plugin:GetMouse()
end

function MouseManager:pushIcon(icon)
	if disableMouseIcons then
		return
	end

	if self._icons == icon then
		return
	end

	self._mouse.Icon = icon
	self._icons[#self._icons + 1] = icon
end

function MouseManager:popIcon(icon)
	if disableMouseIcons then
		return
	end

	if #self._icons == 0 then
		return
	end

	local top = self._icons[#self._icons]
	if top == icon then
		self._icons[#self._icons] = nil
	end

	self._mouse.Icon = self._icons[#self._icons] or Images.CURSOR_DEFAULT
end

function MouseManager:clearIcons()
	if disableMouseIcons then
		return
	end

	self._icons = {}
	self._mouse.Icon = Images.CURSOR_DEFAULT
end

return MouseManager
