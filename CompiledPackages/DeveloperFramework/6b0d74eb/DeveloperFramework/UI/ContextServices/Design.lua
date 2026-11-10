--[[
    A ContextService which provides a StyleSheet. Useful for passing a plugin's
    StyleSheet to trees external to the main PluginGui tree, like dialogs,
    tooltips, and menus.

    The recommended way to incorporate this is to set `self.design` in
    `MainPlugin:init` to your plugin's StyleSheet, and create and provide this
    context in `MainPlugin:render`.
    Then wherever you render UI outside the main PluginGui, use this context and
    create a StyleLink to link styling to that UI.
]]
--!strict

local StylingService = game:GetService("StylingService")

local Framework = script:FindFirstAncestor("UI").Parent
local Signal = require(Framework.Util.Signal)
local ContextItem = require(Framework.UI.ContextServices.ContextItem)
local Design = ContextItem:extend("Design")

local FFlagDevFrameworkParentStylesToDm = require(Framework.SharedFlags.getFFlagDevFrameworkParentStylesToDm)()

local function verifyNewItem(item: unknown)
	assert(typeof(item) == "Instance" and item:IsA("StyleSheet"), "Design.new: Expected a StyleSheet as the target.")
end

function Design.new(obj)
	verifyNewItem(obj)
	if FFlagDevFrameworkParentStylesToDm and obj.Parent == nil then
		obj.Parent = StylingService
	end
	local self = setmetatable({
		_obj = obj,
	}, Design)

	self._themeChangedSignal = Signal.new()
	local ok, connection = pcall(function()
		return settings().Studio.ThemeChanged:Connect(function()
			self._themeChangedSignal:Fire(self)
		end)
	end)
	self._themeChangedConnection = if ok then connection else nil

	return self
end

function Design:get()
	return self._obj
end

function Design:getSignal()
	return self._themeChangedSignal
end

function Design:getConsumerItem()
	return table.clone(self)
end

function Design:destroy()
	if self._themeChangedConnection then
		self._themeChangedConnection:Disconnect()
		self._themeChangedConnection = nil
	end
	self._obj = nil
end

function Design.getStudioThemeColor(key: string): Color3?
	local ok, studioTheme = pcall(function()
		return settings().Studio.Theme
	end)
	return if ok then studioTheme:GetColor(key) else nil
end

function Design.mock(obj)
	local mock = Design.new(obj)
	mock.getStudioThemeColor = function()
		return Color3.fromRGB(0, 0, 0)
	end
	return mock
end

return Design
