--[[
	This component renders a headphone icon, "Mute" text, and a dropdown menu that
	allows users to change who they want muted in their experience. The options are to
	mute everyone, mute non-friends, and mute nobody.
]]
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local Modules = CoreGui.RobloxGui.Modules

local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

-- TODO: Uncomment the below code once translation keys are available
-- local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local DropdownMenu = require(Modules.Settings.Components.DropdownMenu)

local MUTE_ICON_SIZE = 38
local MUTE_TOGGLES_HEIGHT = 40
local MUTE_TOGGLES_PADDING = 12
local MUTE_IMAGE = Images["icons/controls/headphoneDeafen"]

export type MuteTogglesType = () -> React.ReactElement

local function MuteToggles()
	-- TODO: Uncomment the below code once translation keys are available
	-- local _localizedText = useLocalization({
	-- 	muteLabel = "Feature.SettingsHub.Label.Mute",
	-- 	nobodyLabel = "Feature.SettingsHub.Action.NobodyToggle",
	-- 	nonfriendsLabel = "Feature.SettingsHub.Action.NonfriendsToggle",
	-- 	everyoneLabel = "Feature.SettingsHub.Action.EveryoneToggle",
	-- })
	local style = useStyle()
	local fontStyle = style.Font.SubHeader1
	local fontSize = fontStyle.RelativeSize * style.Font.BaseSize

	local selectedIndex, setSelectedIndex = React.useState(1)

	local onSelection = React.useCallback(function(index: number)
		setSelectedIndex(index)
	end)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, MUTE_TOGGLES_HEIGHT),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = 1,
		ZIndex = 3,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, MUTE_TOGGLES_PADDING),
			PaddingRight = UDim.new(0, MUTE_TOGGLES_PADDING),
		}),
		MuteFrame = Roact.createElement("Frame", {
			Size = UDim2.new(0.5, 0, 1, 0),
			BorderSizePixel = 0,
			LayoutOrder = 1,
			BackgroundTransparency = 1,
		}, {
			ImageSetLabel = Roact.createElement(ImageSetLabel, {
				Image = MUTE_IMAGE,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, MUTE_ICON_SIZE, 0, MUTE_ICON_SIZE),
				Position = UDim2.new(0, -1, 0, 2),
			}),
			TextLabel = Roact.createElement("TextLabel", {
				-- TODO: Change so that the text uses translation instead
				Text = "Mute",
				Font = fontStyle.Font,
				TextSize = fontSize,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				AutoLocalize = false,
				Position = UDim2.new(0, 60 - MUTE_TOGGLES_PADDING, .5, 0),
				AutomaticSize = Enum.AutomaticSize.X,
			}),
		}),
		DropdownMenu = Roact.createElement(DropdownMenu, {
			buttonSize = UDim2.new(0.5, 0, 0, MUTE_TOGGLES_HEIGHT),
			-- TODO: Change so that the text uses translation instead
			dropdownList = { "Nobody", "Non-friends", "Everyone" },
			selectedIndex = selectedIndex,
			onSelection = onSelection,
			layoutOrder = 2,
		}),
	})
end

return MuteToggles :: MuteTogglesType