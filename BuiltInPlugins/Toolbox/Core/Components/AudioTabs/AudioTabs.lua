--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local Util = Plugin.Core.Util

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Constants = require(Util.Constants)

local Category = require(Plugin.Core.Types.Category)
local Images = require(Plugin.Core.Util.Images)

local AudioTabs = Roact.PureComponent:extend("AudioTabs")

type _InteralAudioTabsProps = {
	Stylizer: any,
	Localization: any,
}

type AudioTabsProps = _InteralAudioTabsProps & {
	SelectedTab: string,
	OnTabSelect: (tab: string) -> nil,
}
type AudioTabsState = {}

function AudioTabs:init(props: AudioTabsProps)
	self.state = {}
end

function AudioTabs:render()
	local props: AudioTabsProps = self.props

	local localization = props.Localization
	local onTabSelect = props.OnTabSelect
	local selectedTab = props.SelectedTab

	local theme = props.Stylizer.audioTabs

	local createTab = function(audioType: any, icon: string, layoutOrder: number)
		local audioTypeName = audioType.name
		return Roact.createElement("ImageButton", {
			Size = UDim2.new(0.5, 0, 1, 0),
			LayoutOrder = layoutOrder,
			BackgroundColor3 = if selectedTab == audioTypeName
				then theme.selectedButtonColor
				else theme.backgroundButtonColor,
			[Roact.Event.MouseButton1Click] = function()
				onTabSelect(audioTypeName)
			end,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, 5),
			}),
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 5),
			}),
			Icon = Roact.createElement("Frame", {
				Size = UDim2.new(0, 20, 0, 20),
				LayoutOrder = 1,
				BackgroundTransparency = 1,
			}, {
				Roact.createElement("ImageLabel", {
					Image = icon,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 20, 0, 20),
					LayoutOrder = 1,
					ImageColor3 = if selectedTab == audioTypeName then theme.selectedTextColor else theme.textColor,
				}),
			}),
			Text = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Text = localization:getText("Audio", audioTypeName),
				AutomaticSize = Enum.AutomaticSize.X,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextColor3 = if selectedTab == audioTypeName then theme.selectedTextColor else theme.textColor,
			}),
		})
	end
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}),
		SoundEffectTab = createTab(Category.SOUND_EFFECTS, Images.SOUND_EFFECT_ICON, 1),
		MusicTab = createTab(Category.MUSIC, Images.MUSIC_ICON, 2),
	})
end

AudioTabs = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(AudioTabs)

return AudioTabs
