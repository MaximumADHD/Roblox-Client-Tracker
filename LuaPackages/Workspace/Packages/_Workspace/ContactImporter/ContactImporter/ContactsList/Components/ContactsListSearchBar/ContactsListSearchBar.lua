local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local UIBlox = dependencies.UIBlox
local SocialLibraries = dependencies.SocialLibraries

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local IconSize = UIBlox.App.Constant.IconSize
local CallbackInputBox = SocialLibraries.Components.CallbackInputBox
local Images = UIBlox.App.ImageSet.Images
local TextKeys = require(ContactImporter.Common.TextKeys)
local useStyle = dependencies.useStyle

local useLocalization = dependencies.useLocalization

local HORIZONTAL_PADDING = 13
local LAYOUT_PADDING = 4
local ICON = Images["icons/common/search"]
local CLEAR_BUTTON_IMAGE = Images["icons/actions/edit/clear_small"]

export type Props = {
	height: number,
	layoutOrder: number?,
	textChangeCallback: (filterText: string) -> nil,
}

function ContactsListSearchBar(props: Props)
	local localized = useLocalization({
		searchContacts = TextKeys.SEARCH_CONTACTS,
	})
	local style = useStyle()

	local isSearchBarFocused, setIsSearchBarFocused = React.useState(false)

	return Roact.createElement("Frame", {
		BackgroundTransparency = style.Theme.BackgroundMuted.Transparency,
		BorderSizePixel = 0,
		BackgroundColor3 = style.Theme.BackgroundMuted.Color,
		Size = UDim2.new(1, 0, 0, props.height),
		LayoutOrder = props.layoutOrder,
	}, {
		layout = Roact.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, LAYOUT_PADDING),
		}),
		BorderRadius = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, LAYOUT_PADDING),
		}),
		Border = React.createElement("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = if isSearchBarFocused then style.Theme.SecondaryOnHover.Color else style.Theme.Divider.Color,
			Transparency = if isSearchBarFocused
				then style.Theme.SecondaryOnHover.Transparency
				else style.Theme.Divider.Transparency,
			Thickness = 1,
		}),
		padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, HORIZONTAL_PADDING),
			PaddingRight = UDim.new(0, HORIZONTAL_PADDING),
		}),
		icon = Roact.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, IconSize.Small, 0, IconSize.Small),
			Image = ICON,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			LayoutOrder = 1,
		}),
		searchBarWrapper = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = UDim2.new(1, -IconSize.Small, 0, props.height),
		}, {
			searchBar = Roact.createElement(CallbackInputBox, {
				clearIcon = CLEAR_BUTTON_IMAGE,
				clearIconColor3 = style.Theme.IconEmphasis.Color,
				clearIconTransparency = style.Theme.IconEmphasis.Transparency,
				clearButtonSize = IconSize.Small,
				clearButtonDisabled = false,
				focusChangedCallback = setIsSearchBarFocused,
				inputTextColor3 = style.Theme.TextEmphasis.Color,
				inputTextTransparency = style.Theme.TextEmphasis.Transparency,
				placeholderText = localized.searchContacts,
				placeholderTextColor3 = style.Theme.TextMuted.Color,
				placeholderTextTransparency = style.Theme.TextMuted.Transparency,
				inputTextXAlignment = Enum.TextXAlignment.Left,
				textChangedCallback = props.textChangeCallback,
			}),
		}),
	})
end

return ContactsListSearchBar
