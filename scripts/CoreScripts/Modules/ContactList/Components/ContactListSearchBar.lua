--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Packages.Cryo)
local React = require(CorePackages.Packages.React)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)

local UIBlox = dependencies.UIBlox

local Colors = UIBlox.App.Style.Colors
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useStyle = UIBlox.Core.Style.useStyle

export type Props = {
	layoutOrder: number?,
	onSearchChanged: (string) -> ()?,
	searchBarHeight: number?,
	searchText: string?,
	onFocused: () -> ()?,
}

local defaultProps = {
	searchBarHeight = 36,
	searchText = "",
}

local IMAGE_SIZE = 16
local IN_BETWEEN_PADDING = 4

local ContactListSearchBar = function(passedProps)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)
	local style = useStyle()
	local font = style.Font
	local theme = style.Theme

	local isFocused, setIsFocused = React.useState(false)

	local onSearchChanged = React.useCallback(function(instance, property)
		if property == "Text" then
			props.onSearchChanged(instance.Text)
		end
	end, { props.onSearchChanged })

	return React.createElement("Frame", {
		Size = UDim2.new(1, -48, 0, props.searchBarHeight),
		BackgroundColor3 = theme.UIMuted.Color,
		BackgroundTransparency = theme.UIMuted.Transparency,
		LayoutOrder = props.layoutOrder,
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, IN_BETWEEN_PADDING),
		}),
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 12),
			PaddingRight = UDim.new(0, 12),
		}),
		UIStroke = React.createElement("UIStroke", {
			Color = Colors.Pumice,
			Thickness = 1,
		}),
		SearchImage = React.createElement(ImageSetLabel, {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Image = Images["icons/common/search_small"],
			ImageColor3 = if isFocused then Colors.White else Color3.fromHex("#696A6B"),
			Size = UDim2.fromOffset(IMAGE_SIZE, IMAGE_SIZE),
		}),
		TextBox = React.createElement("TextBox", {
			Size = UDim2.new(1, -(IMAGE_SIZE + IN_BETWEEN_PADDING), 1, 0),
			BackgroundTransparency = 1,
			ClearTextOnFocus = false,
			ClipsDescendants = true,
			Font = font.Body.Font,
			LayoutOrder = 2,
			PlaceholderColor3 = Color3.fromHex("#696A6B"),
			-- TODO(IRIS-864): Localization.
			PlaceholderText = "Search friends",
			Text = props.searchText,
			TextColor3 = Colors.White,
			TextSize = font.BaseSize * font.Body.RelativeSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			[React.Event.Changed] = onSearchChanged,
			[React.Event.Focused] = function()
				setIsFocused(true)
				props.onFocused()
			end,
			[React.Event.FocusLost] = function()
				setIsFocused(false)
			end,
		}),
	})
end

return ContactListSearchBar
