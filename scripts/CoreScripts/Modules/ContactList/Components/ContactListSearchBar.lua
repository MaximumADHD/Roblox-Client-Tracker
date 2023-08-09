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
	position: UDim2?,
}

local defaultProps = {
	searchBarHeight = 36,
	searchText = "",
}

local ContactListSearchBar = function(passedProps)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)
	local style = useStyle()
	local font = style.Font

	local onSearchChanged = React.useCallback(function(instance, property)
		if property == "Text" then
			props.onSearchChanged(instance.Text)
		end
	end, { props.onSearchChanged })

	return React.createElement("Frame", {
		Position = props.position,
		Size = UDim2.new(1, -48, 0, props.searchBarHeight),
		BackgroundColor3 = Colors.Slate,
		BackgroundTransparency = 0,
		LayoutOrder = props.layoutOrder,
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, 4),
		}),
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 12),
			PaddingRight = UDim.new(0, 12),
		}),
		UIStroke = React.createElement("UIStroke", {
			Color = Colors.White,
			Thickness = 1,
			Transparency = 0.7,
		}),
		SearchImage = React.createElement(ImageSetLabel, {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Image = Images["icons/common/search_small"],
			Size = UDim2.fromOffset(16, 16),
		}),
		TextBox = React.createElement("TextBox", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Font = font.Body.Font,
			LayoutOrder = 2,
			-- TODO (timothyhsu): Localization
			PlaceholderText = "Search friends",
			Text = props.searchText,
			TextColor3 = Colors.White,
			TextSize = font.BaseSize * font.Body.RelativeSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			[React.Event.Changed] = onSearchChanged,
			[React.Event.Focused] = props.onFocused,
		}),
	})
end

return ContactListSearchBar
