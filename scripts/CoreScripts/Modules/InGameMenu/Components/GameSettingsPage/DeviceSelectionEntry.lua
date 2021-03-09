local CorePackages = game:GetService("CorePackages")
local VoiceChatService2 = nil
pcall(function()
	VoiceChatService2 = game:GetService("VoiceChatService2")
end)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local DropDownSelection = require(InGameMenu.Components.DropDownSelection)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

-- This is a temporary component, will iterate when there's final design
local DeviceSelectionEntry = Roact.PureComponent:extend("DeviceSelectionEntry")

DeviceSelectionEntry.DeviceType = {
	Input = "Input",
	Output = "Output",
}

DeviceSelectionEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	deviceType = t.string,
})

function DeviceSelectionEntry:init()
	self:setState({
		deviceNames = {},
		deviceGuids = {},
		selectedIndex = 0,
	})
end

function DeviceSelectionEntry:render()
	if VoiceChatService2 == nil or self.state.deviceNames == nil or
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
			selections = self.state.deviceNames,
			selectedIndex = self.state.selectedIndex,
			placeHolderText = "",
			enabled = true,
			localize = false,
			selectionChanged = function(newIndex)
				if self.props.deviceType == DeviceSelectionEntry.DeviceType.Input then
					VoiceChatService2:SetMicDevice(self.state.deviceNames[newIndex], self.state.deviceGuids[newIndex])
				else
					VoiceChatService2:SetSpeakerDevice(self.state.deviceNames[newIndex], self.state.deviceGuids[newIndex])
				end

				-- TODO: This will be removed when set device API refactoring is done
				pcall(function()
					local groupId = VoiceChatService2:GetGroupId()
					if groupId and groupId ~= "" then
						local muted = VoiceChatService2:IsPublishPaused()
						VoiceChatService2:Leave()
						VoiceChatService2:JoinByGroupId(groupId, muted)
					end
				end)

				self:setState({
					selectedIndex = newIndex,
				})
			end,
		})
	})
end

function DeviceSelectionEntry:willUpdate(nextProps)
	if not self.props.isMenuOpen and nextProps.isMenuOpen then
		-- Update device info each time user opens the menu
		-- TODO: This should be simplified by new API
		spawn(function()
			local success, deviceNames, deviceGuids, selectedIndex = pcall(function()
				if nextProps.deviceType == DeviceSelectionEntry.DeviceType.Input then
					return VoiceChatService2:GetMicDevices()
				else
					return VoiceChatService2:GetSpeakerDevices()
				end
			end)
			if success and deviceNames and deviceGuids and selectedIndex and
				#deviceNames > 0 and selectedIndex > 0 and selectedIndex <= #deviceNames and
				#deviceNames == #deviceGuids then
				self:setState({
					deviceNames = deviceNames,
					deviceGuids = deviceGuids,
					selectedIndex = selectedIndex,
				})
			else
				warn("Errors in get "..nextProps.deviceType.."Device info")
				self:setState({
					deviceNames = {},
					deviceGuids = {},
					selectedIndex = 0,
				})
			end
		end)
	end
end

return DeviceSelectionEntry
