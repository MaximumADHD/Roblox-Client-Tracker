local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local SoundService = game:GetService("SoundService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local DropdownMenu = UIBlox.App.Menu.DropdownMenu

local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local log = require(RobloxGui.Modules.Logger):new(script.Name)
local Constants = require(InGameMenu.Resources.Constants)

-- This is a temporary component, will iterate when there's final design
local DeviceSelectionEntry = Roact.PureComponent:extend("DeviceSelectionEntry")

local GetFFlagVoiceChatUILogging = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatUILogging)

DeviceSelectionEntry.DeviceType = {
	Input = "Input",
	Output = "Output",
}

DeviceSelectionEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	deviceType = t.string,
	isMenuOpen = t.boolean,
	screenSize = t.Vector2,
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
		ready = false,
	})

	VoiceChatServiceManager:asyncInit():andThen(function()
		self:setState({
			ready = true
		})
		VoiceChatServiceManager:SetupParticipantListeners()
		if SoundService.DeviceListChanged then
			SoundService.DeviceListChanged:Connect(function()
				if self.onSettingsPage then
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

	local dropDownSelection = {}
	local dropDownSelectionNameToIndex = {}

	for index, deviceName in ipairs(self.state.deviceNames) do
		dropDownSelection[index] = { text = deviceName }
		dropDownSelectionNameToIndex[deviceName] = index;
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 44 + 56 + 20),
		BackgroundTransparency = 1,
		LayoutOrder = self.props.LayoutOrder,
		ZIndex = self.state.dropdownMenuOpen and 3 or 2,
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
		OffsetFrame = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 44),
			Position = UDim2.new(0, 0, 0, 56),
			BackgroundTransparency = 1,
		}, {
			Dropdown = Roact.createElement(DropdownMenu, {
				onMenuOpenChange = function(menuOpen)
					self:setState({
						dropdownMenuOpen = menuOpen
					})
				end,
				height = UDim.new(0, 44),
				screenSize = self.props.screenSize,
				cellDatas = dropDownSelection,
				placeholder = self.state.selectedIndex and dropDownSelection[self.state.selectedIndex].text or "",
				onChange = function(deviceName)
					local newIndex = dropDownSelectionNameToIndex[deviceName]
					if newIndex ~= nil then
						VoiceChatServiceManager:SwitchDevice(
							self.props.deviceType,
							self.state.deviceNames[newIndex],
							self.state.deviceGuids[newIndex]
						)

						self:setState({
							selectedIndex = newIndex,
						})
					end
				end,
			})
		}),
		PageWatcher = Roact.createElement(PageNavigationWatcher, {
			desiredPage = Constants.GameSettingsPageKey,
			onNavigateTo = function()
				self.onSettingsPage = true
				self:pollDevices(self.props.deviceType)
			end,
			onNavigateAway = function()
				self.onSettingsPage = false
			end,
		}),
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

return DeviceSelectionEntry
