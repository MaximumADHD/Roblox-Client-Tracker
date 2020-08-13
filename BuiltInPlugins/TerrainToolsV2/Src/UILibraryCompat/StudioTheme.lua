--[[
	Same as UILibrary StudioTheme.lua but with dev framework Signal
]]

game:DefineFastFlag("FixMockStudioTheme", false)

local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework

local join = require(script.Parent.join)
local Signal = require(Framework.Util).Signal

local StudioTheme = {}
StudioTheme.__index = StudioTheme

function StudioTheme.new(createValues, overrideSignal)
	local self = {
		getTheme = function()
			return settings().Studio.Theme
		end,

		createValues = function(...)
			return createValues(...)
		end,

		valuesChanged = Signal.new(),
		values = {},
		themeChangedConnection = nil,
	}

	setmetatable(self, StudioTheme)

	if overrideSignal then
		self.themeChangedConnection = overrideSignal:Connect(function()
			self:recalculateTheme()
		end)
	else
		self.themeChangedConnection = settings().Studio.ThemeChanged:Connect(function()
			self:recalculateTheme()
		end)
	end

	self:recalculateTheme()

	return self
end

function StudioTheme:connect(...)
	return self.valuesChanged:Connect(...)
end

function StudioTheme:destroy()
	if self.themeChangedConnection then
		self.themeChangedConnection:Disconnect()
	end
end

function StudioTheme:update(changedValues)
	self.values = join(self.values, changedValues)

	if self.valuesChanged then
		self.valuesChanged:Fire(self.values)
	end
end

function StudioTheme:recalculateTheme()
	local theme = self.getTheme()

	-- Shorthands for getting a color
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local function getColor(...)
		return theme:GetColor(...)
	end

	local newValues = self.createValues(getColor, c, m)

	self:update(newValues)
end

function StudioTheme.newDummyTheme(createValues)
	local self = {
		getTheme = function()
			return {
				GetColor = function()
					return Color3.new()
				end,
			}
		end,

		createValues = function(...)
			return createValues(...)
		end,

		valuesChanged = Signal.new(),
		values = {},
	}

	setmetatable(self, StudioTheme)

	if game:GetFastFlag("FixMockStudioTheme") then
		local newValues = self.createValues(function()
			return self.getTheme():GetColor()
		end, {}, {})

		self:update(newValues)
	else
		self:recalculateTheme()
	end

	return self
end

return StudioTheme
