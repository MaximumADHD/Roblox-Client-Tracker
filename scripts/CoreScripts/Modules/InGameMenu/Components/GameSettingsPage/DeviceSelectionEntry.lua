local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local SoundService = game:GetService("SoundService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local DropDownSelection = require(InGameMenu.Components.DropDownSelection)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local log = require(RobloxGui.Modules.Logger):new(script.Name)

-- This is a temporary component, will iterate when there's final design
local DeviceSelectionEntry = Roact.PureComponent:extend("DeviceSelectionEntry")

local Flags = InGameMenu.Flags
local GetFFlagTruncateDeviceSelection = require(Flags.GetFFlagTruncateDeviceSelection)

local GetFFlagVoiceChatUILogging = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatUILogging)

DeviceSelectionEntry.DeviceType = {
	Input = "Input",
	Output = "Output",
}

DeviceSelectionEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	deviceType = t.string,
	isMenuOpen = t.boolean,
	canOpen = t.optional(t.boolean),
	canCaptureFocus = t.optional(t.boolean),
})

DeviceSelectionEntry.defaultProps = {
	canOpen = true
}

function DeviceSelectionEntry:init()
	self:setState({
		deviceNames = {},
		deviceGuids = {},
		selectedIndex = 0,
		ready = false
	})

	VoiceChatServiceManager:asyncInit():andThen(function()
		self:setState({
			ready = true
		})
		VoiceChatServiceManager:SetupParticipantListeners()
		if SoundService.DeviceListChanged then
			SoundService.DeviceListChanged:Connect(function()
				if self.props.isMenuOpen then
					self:pollDevices(self.props.deviceType)
				end
			end)
		end
	end):catch(function()
		if GetFFlagVoiceChatUILogging() then
			log:warning("Failed to init VoiceChatServiceManager")
		end
	end)
end

function DeviceSelectionEntry:render()
	if not self.state.ready or self.state.deviceNames == nil or
		#self.state.deviceNames == 0 then
		return nil
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 44 + 56 + 20),
		BackgroundTransparency = 1,
		LayoutOrder = self.props.LayoutOrder,
		ZIndex = 2,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24),
			PaddingRight = UDim.new(0, 24),
		}),
		InputLabel = Roact.createElement(ThemedTextLabel, {
			fontKey = "Body",
			themeKey = "TextDefault",
			Size = UDim2.new(1, 0, 0, 56),
			Position = UDim2.new(0, 0, 0, 0),
			AnchorPoint = Vector2.new(0, 0),
			Text = self.props.deviceType == DeviceSelectionEntry.DeviceType.Input and
				"Input Device" or "Output Device",
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Dropdown = Roact.createElement(DropDownSelection, {
			Size = UDim2.new(1, 0, 0, 44),
			Position = UDim2.new(0, 0, 0, 56),
			truncate = GetFFlagTruncateDeviceSelection(),
			selections = self.state.deviceNames,
			selectedIndex = self.state.selectedIndex,
			placeHolderText = "",
			enabled = true,
			localize = false,
			selectionParentName = self.props.deviceType.."DeviceSelectionEntryDropdown",
			canOpen = self.props.canOpen,
			canCaptureFocus = self.props.canCaptureFocus,
			selectionChanged = function(newIndex)
				VoiceChatServiceManager:SwitchDevice(
					self.props.deviceType,
					self.state.deviceNames[newIndex],
					self.state.deviceGuids[newIndex]
				)

				self:setState({
					selectedIndex = newIndex,
				})
			end,
		})
	})
end

function DeviceSelectionEntry:pollDevices(deviceType)
	spawn(function()
		local success, deviceNames, deviceGuids, selectedIndex = VoiceChatServiceManager:GetDevices(deviceType)
		if success then
			self:setState({
				deviceNames = deviceNames,
				deviceGuids = deviceGuids,
				selectedIndex = selectedIndex,
			})
		else
			if GetFFlagVoiceChatUILogging() then
				log:warning("Errors in get {} Device info", deviceType)
			end
			self:setState({
				deviceNames = {},
				deviceGuids = {},
				selectedIndex = 0,
			})
		end
	end)

end

function DeviceSelectionEntry:willUpdate(nextProps)
	-- Update device info each time user opens the menu
	-- TODO: This should be simplified by new API
	if not self.props.isMenuOpen and nextProps.isMenuOpen then
		self:pollDevices(nextProps.deviceType)
	end
end

return DeviceSelectionEntry
