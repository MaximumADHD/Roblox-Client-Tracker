--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local VideoCaptureService = game:GetService("VideoCaptureService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local DropdownMenu = UIBlox.App.Menu.DropdownMenu

local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local log = require(RobloxGui.Modules.Logger):new(script.Name)
local Constants = require(InGameMenu.Resources.Constants)

local VideoCameraEntry = Roact.PureComponent:extend("VideoCameraEntry")
local GetFFlagEnableCameraByDefault = require(RobloxGui.Modules.Flags.GetFFlagEnableCameraByDefault)
local GetFFlagUseVideoCaptureServiceEvents = require(RobloxGui.Modules.Flags.GetFFlagUseVideoCaptureServiceEvents)

local VideoPromptOff = "Off"
local VideoPromptSystemDefault = "System Default"
local VideoPromptVideoCamera =  "Video Camera"

VideoCameraEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	isMenuOpen = t.boolean,
	screenSize = t.Vector2,
})

VideoCameraEntry.defaultProps = {
}

function VideoCameraEntry:init()

	pcall(function()
		VideoPromptOff = RobloxTranslator:FormatByKey("Feature.SettingsHub.Video.Off")
		VideoPromptSystemDefault = RobloxTranslator:FormatByKey("Feature.SettingsHub.Video.SystemDefault")
		VideoPromptVideoCamera =  RobloxTranslator:FormatByKey("Feature.SettingsHub.Video.VideoCamera")
	end)

	self:setState({
		deviceNames = {},
		deviceGuids = {},
		selectedIndex = 0,
		ready = false
	})

	self:updateDevicesList()
end

function VideoCameraEntry:render()
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
			Text = VideoPromptVideoCamera,
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
					if newIndex ~= nil and newIndex >= 1 and newIndex <= #self.state.deviceGuids then
						log:info("Changed webcam to: {}", self.state.deviceGuids[newIndex])
						UserGameSettings.DefaultCameraID = self.state.deviceGuids[newIndex]
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
				self:updateDevicesList()
				if GetFFlagUseVideoCaptureServiceEvents() then
					self.connection = VideoCaptureService.DevicesChanged:Connect(function()
						if self.onSettingsPage then
							self:updateDevicesList()
						end
					end)
				end
			end,
			onNavigateAway = function()
				self.onSettingsPage = false
				if GetFFlagUseVideoCaptureServiceEvents() then
					if self.connection then
						self.connection:Disconnect()
					end
				end
			end,
		}),
	})
end

function VideoCameraEntry:updateDevicesList()
	spawn(function()
		local devs = VideoCaptureService:GetCameraDevices()
		local deviceNames = {}
		local deviceGuids = {}
		local selectedIndex = 1

		-- Set to default device in case UserGameSettings.DefaultCameraID is not available (in search below)
		if GetFFlagEnableCameraByDefault() and (UserGameSettings.DefaultCameraID ~= "{NullDeviceGuid}") then
			selectedIndex = 2
		end

		table.insert(deviceNames, VideoPromptOff)
		table.insert(deviceGuids, "{NullDeviceGuid}")
		table.insert(deviceNames, VideoPromptSystemDefault)
		table.insert(deviceGuids, "{DefaultDeviceGuid}")

		for guid, name in pairs(devs) do
			if guid == UserGameSettings.DefaultCameraID then
				selectedIndex = #deviceNames + 1
			end

			table.insert(deviceNames, name)
			table.insert(deviceGuids, guid)
		end

		-- Set the camera to the selected state during startup. Subsequent changes will be handled via onChange.
		if self.state.ready == false then
			log:info("Changed webcam to: {}", deviceGuids[selectedIndex])
			UserGameSettings.DefaultCameraID = deviceGuids[selectedIndex]
		end

		self:setState({
			deviceNames = deviceNames,
			deviceGuids = deviceGuids,
			selectedIndex = selectedIndex,
			ready = true
		})
	end)
end

return VideoCameraEntry
