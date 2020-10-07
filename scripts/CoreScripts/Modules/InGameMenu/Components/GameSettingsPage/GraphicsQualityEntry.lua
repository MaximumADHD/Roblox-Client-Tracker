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

local SavedQualityLevelChanged = UserGameSettings:GetPropertyChangedSignal("SavedQualityLevel")  --  <- DEPRECATED: remove with FixGraphicsQuality

local InGameMenu = script.Parent.Parent.Parent

local ToggleEntry = require(script.Parent.ToggleEntry)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local SliderEntry = require(script.Parent.SliderEntry)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFixGraphicsQuality = require(RobloxGui.Modules.Flags.GetFixGraphicsQuality)

local SendNotification
local RobloxTranslator
local GraphicsQualityLevelChanged

if GetFixGraphicsQuality() then
	RobloxTranslator = require(RobloxGui:WaitForChild("Modules"):WaitForChild("RobloxTranslator"))
	GraphicsQualityLevelChanged = UserGameSettings:GetPropertyChangedSignal("GraphicsQualityLevel")
end

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local SAVED_QUALITY_LEVELS = #Enum.SavedQualitySetting:GetEnumItems() - 1 --  <- DEPRECATED: remove with FixGraphicsQuality
local GRAPHICS_QUALITY_LEVELS = 10

if GetFixGraphicsQuality() then
	GRAPHICS_QUALITY_LEVELS = RenderSettings:GetMaxQualityLevel() - 1
	-- Don't be fooled by the word "max".  It's not the maximum level, it's a strict upper bound
	-- so if GetMaxQualityLevel() returns 22, that means the biggest the level can be is 21
end

local function mapInteger(x, xMin, xMax, yMin, yMax) --  <- DEPRECATED: remove with FixGraphicsQuality
	return math.clamp(
		math.floor(yMin + (x - xMin)*(yMax - yMin)/(xMax - xMin)),
		yMin,
		yMax)
end

--[[
	Generates the popup in the lower-right corner when the user changes the
	graphics quality level with F-keys.
]]
local function sendNotificationForGraphicsQualityLevelChange(message, level)
	if SendNotification == nil then
		SendNotification = RobloxGui:WaitForChild("SendNotificationInfo")
	end
	SendNotification:Fire({
		GroupName = "Graphics",
		Title = "Graphics Quality",
		Text = message,
		DetailText = message,
		Image = "",
		Duration = 2
	})
end

--[[
	Takes two arguments: newValue, delta. If delta is non-zero, constructs a message for the pop-up
	notification (based on whether delta is positive or negative) to inform the user that the level
	incrememnted / decremented to the new value.
]]
local function notifyForLevelChange(newValue, delta)
	if delta > 0 then
		sendNotificationForGraphicsQualityLevelChange(
		RobloxTranslator:FormatByKey("NotificationScrip2.onCurrentGraphicsQualityLevelChanged.Increased", {RBX_NUMBER = tostring(newValue)}),
			newValue)
	elseif delta < 0 then
		sendNotificationForGraphicsQualityLevelChange(
		RobloxTranslator:FormatByKey("NotificationScrip2.onCurrentGraphicsQualityLevelChanged.Decreased", {RBX_NUMBER = tostring(newValue)}),
			newValue)
	end
end

local GraphicsQualityEntry = Roact.PureComponent:extend("GraphicsQualityEntry")
GraphicsQualityEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
})

function GraphicsQualityEntry:init()
	local isAutomatic
	if GetFixGraphicsQuality() then
		local quality = UserGameSettings.GraphicsQualityLevel
		isAutomatic = quality == 0
		self:setState({
			quality = isAutomatic and 5 or UserGameSettings.GraphicsQualityLevel,
			automatic = isAutomatic,
		})
		self.onQualityChanged = function()
			local quality = UserGameSettings.GraphicsQualityLevel
			self:setState({
				quality = quality ~= 0 and quality or nil,
				automatic = quality == 0,
			})
		end
	else
		isAutomatic = UserGameSettings.SavedQualityLevel == Enum.SavedQualitySetting.Automatic
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
	end

	if isAutomatic then
		self:setAutomaticQualityLevel()
	else
		self:setManualQualityLevel(self.state.quality)
	end

	if GetFixGraphicsQuality() then
		--[[
			Gets called when the user hits F10 / Shift-F10 to adjust the graphcs quality level.

			Calls setManualQualityLevel to set the new level.  Note: setManualQualityLevel checks whether the new value
			it's given is in bounds.  The returned newValue and delta indicate the change that actually takes place
			We use newValue and delta to determine what notification to show.
		]]
		game.GraphicsQualityChangeRequest:connect(
			function(isIncrease)
				local current = UserGameSettings.GraphicsQualityLevel
				if current ~= 0 then
					local newValue, delta = self:setManualQualityLevel(current + (isIncrease and 1 or -1))
					notifyForLevelChange(newValue, delta)
				end
			end
		)
	end
end

function GraphicsQualityEntry:setAutomaticQualityLevel()
	if GetFixGraphicsQuality() then
		UserGameSettings.GraphicsQualityLevel = 0
		RenderSettings.QualityLevel = 0
	else
		UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.Automatic
		RenderSettings.QualityLevel = 0
	end
end

function GraphicsQualityEntry:setManualQualityLevel(manualQualityLevel)
	if GetFixGraphicsQuality() then
		local newValue = math.clamp(manualQualityLevel, 1, GRAPHICS_QUALITY_LEVELS)
		local oldValue = UserGameSettings.GraphicsQualityLevel

		UserGameSettings.GraphicsQualityLevel = newValue
		RenderSettings.QualityLevel = newValue

		return newValue, newValue - oldValue
	else
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
		}),
		QualityListener = Roact.createElement(ExternalEventConnection, {
			event = GetFixGraphicsQuality() and GraphicsQualityLevelChanged or SavedQualityLevelChanged,
			callback = self.onQualityChanged,
		})
	})
end

return GraphicsQualityEntry
