local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local UserGameSettings = UserSettings():GetService("UserGameSettings")
local MasterVolumeChanged = UserGameSettings:GetPropertyChangedSignal("MasterVolume")

local InGameMenu = script.Parent.Parent.Parent

local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local SliderEntry = require(script.Parent.SliderEntry)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local Flags = InGameMenu.Flags
local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

if CoreGui.RobloxGui:FindFirstChild("Sounds") == nil then
	local folder = Instance.new("Folder")
	folder.Name = "Sounds"
	folder.Parent = CoreGui.RobloxGui
end

local volumeTest = Instance.new("Sound", CoreGui.RobloxGui.Sounds)
volumeTest.Name = "VolumeChangeSound"
volumeTest.Volume = 1
volumeTest.SoundId = "rbxasset://sounds/uuhhh.mp3"

local VolumeEntry = Roact.PureComponent:extend("VolumeEntry")
VolumeEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	canCaptureFocus = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.boolean) or nil,
	isMenuOpen = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.boolean) or nil,
	buttonRef = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.table) or nil,
})

function VolumeEntry:init()
	self.onVolumeChanged = function()
		self:setState({
			volume = math.floor(UserGameSettings.MasterVolume * 10 + 0.5)
		})
	end

	self.onVolumeChanged()
end

function VolumeEntry:render()
	return Roact.createFragment({
		VolumeSlider = Roact.createElement(SliderEntry, {
			labelKey = "CoreScripts.InGameMenu.GameSettings.Volume",
			LayoutOrder = self.props.LayoutOrder,
			min = 0,
			max = 10,
			stepInterval = 1,
			value = self.state.volume,
			valueChanged = function(newValue)
				UserGameSettings.MasterVolume = newValue / 10
				volumeTest:Play()
				SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
			end,
			canCaptureFocus = GetFFlagInGameMenuControllerDevelopmentOnly() and self.props.canCaptureFocus or nil,
			isMenuOpen = GetFFlagInGameMenuControllerDevelopmentOnly() and self.props.isMenuOpen or nil,
			buttonRef = GetFFlagInGameMenuControllerDevelopmentOnly() and self.props.buttonRef or nil
		}),
		VolumeListener = Roact.createElement(ExternalEventConnection, {
			event = MasterVolumeChanged,
			callback = self.onVolumeChanged,
		}),
	})
end

return VolumeEntry