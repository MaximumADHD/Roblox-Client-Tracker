--!nonstrict
--[[
	Encompasses both the automatic graphics quality toggle _and_ the graphics
	quality slider.
]]

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local UserGameSettings = UserSettings():GetService("UserGameSettings")
local RenderSettings = settings().Rendering

local SavedQualityLevelChanged = UserGameSettings:GetPropertyChangedSignal("SavedQualityLevel")

local InGameMenu = script.Parent.Parent.Parent

local ToggleEntry = require(script.Parent.ToggleEntry)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local SliderEntry = require(script.Parent.SliderEntry)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local SAVED_QUALITY_LEVELS = #Enum.SavedQualitySetting:GetEnumItems() - 1
local GRAPHICS_QUALITY_LEVELS = 10

local function mapInteger(x, xMin, xMax, yMin, yMax)
	return math.clamp(
		math.floor(yMin + (x - xMin)*(yMax - yMin)/(xMax - xMin)),
		yMin,
		yMax)
end

local GraphicsQualityEntry = Roact.PureComponent:extend("GraphicsQualityEntry")
GraphicsQualityEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	canCaptureFocus = t.optional(t.boolean),
	isMenuOpen = t.optional(t.boolean),
})

function GraphicsQualityEntry:init()
	local isAutomatic = UserGameSettings.SavedQualityLevel == Enum.SavedQualitySetting.Automatic
	self:setState({
		quality = isAutomatic and 5 or UserGameSettings.SavedQualityLevel.Value,
		automatic = isAutomatic,
	})

	self.onQualityChanged = function()
		local newSavedQuality = UserGameSettings.SavedQualityLevel
		local changedToAutomatic = newSavedQuality == Enum.SavedQualitySetting.Automatic

		self:setState({
			quality = not changedToAutomatic and newSavedQuality.Value or nil,
			automatic = newSavedQuality == Enum.SavedQualitySetting.Automatic,
		})
	end

	if isAutomatic then
		self:setAutomaticQualityLevel()
	else
		self:setManualQualityLevel(self.state.quality)
	end
end

function GraphicsQualityEntry:setAutomaticQualityLevel()
	UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.Automatic
	RenderSettings.QualityLevel = 0
end

function GraphicsQualityEntry:setManualQualityLevel(manualQualityLevel)
	local renderQualityLevel = mapInteger(
		manualQualityLevel,
		1, SAVED_QUALITY_LEVELS,
		-- Quality levels are zero-based; GetMaxQualityLevel reports 22, even
		-- though 21 is the maximum.
		1, RenderSettings:GetMaxQualityLevel() - 1)
	UserGameSettings.SavedQualityLevel = manualQualityLevel
	RenderSettings.QualityLevel = renderQualityLevel
	return nil
end

function GraphicsQualityEntry:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 56 + 100),
		LayoutOrder = self.props.LayoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		AutoToggle = Roact.createElement(ToggleEntry, {
			LayoutOrder = 1,
			labelKey = "CoreScripts.InGameMenu.GameSettings.AutoGraphicsQuality",
			checked = self.state.automatic,
			onToggled = function()
				if self.state.automatic then
					self:setManualQualityLevel(self.state.quality)
				else
					self:setAutomaticQualityLevel()
				end
				SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
			end,
		}),
		Slider = Roact.createElement(SliderEntry, {
			LayoutOrder = 2,
			labelKey = "CoreScripts.InGameMenu.GameSettings.ManualGraphicsQuality",
			min = 1,
			max = GRAPHICS_QUALITY_LEVELS,
			stepInterval = 1,
			value = self.state.quality,
			disabled = self.state.automatic,
			valueChanged = function(newValue)
				self:setManualQualityLevel(newValue)
				SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
			end,
			canCaptureFocus = self.props.canCaptureFocus,
			isMenuOpen = self.props.isMenuOpen,
		}),
		QualityListener = Roact.createElement(ExternalEventConnection, {
			event = SavedQualityLevelChanged,
			callback = self.onQualityChanged,
		})
	})
end

return GraphicsQualityEntry
