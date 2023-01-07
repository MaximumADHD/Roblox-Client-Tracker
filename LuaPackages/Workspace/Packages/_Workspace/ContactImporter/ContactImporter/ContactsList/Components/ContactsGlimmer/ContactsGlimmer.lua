local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel
local withStyle = UIBlox.Style.withStyle

local ContactsGlimmer = Roact.PureComponent:extend("ContactsGlimmer")

local INFO_HEIGHT = 14
local INFO_PADDING = 10
local PLAYER_NAME_WIDTH = 90
local CONTEXTUAL_INFO_WIDTH = 160
local ADD_BUTTON_WIDTH = 44
local CONTACTS_ENTRY_HEIGHT = 72
local INNER_PADDING = 12

export type Props = {
	layoutOrder: number,
}

function ContactsGlimmer:render()
	local props: Props = self.props

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			LayoutOrder = props.layoutOrder,
			Size = UDim2.new(1, 0, 0, CONTACTS_ENTRY_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			entryContent = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 0),
				}),
				middleGroup = Roact.createElement("Frame", {
					Size = UDim2.new(1, -ADD_BUTTON_WIDTH - 2 * INNER_PADDING, 1, 0),
					BackgroundTransparency = 1,
					-- selene: allow(roblox_incorrect_roact_usage)
					[Roact.Event.Activated] = self.openBlankProfileView,
					LayoutOrder = 2,
					BackgroundColor3 = Color3.fromRGB(222, 22, 222),
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, INFO_PADDING),
					}),
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, INNER_PADDING),
					}),
					PlayerName = Roact.createElement(ShimmerPanel, {
						LayoutOrder = 1,
						Size = UDim2.fromOffset(PLAYER_NAME_WIDTH, INFO_HEIGHT),
					}),
					ContextualInfo = Roact.createElement(ShimmerPanel, {
						LayoutOrder = 2,
						Size = UDim2.fromOffset(CONTEXTUAL_INFO_WIDTH, INFO_HEIGHT),
					}),
				}),
			}),
			Divider = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = style.Theme.Divider.Color,
				BackgroundTransparency = style.Theme.Divider.Transparency,
			}),
		})
	end)
end

return ContactsGlimmer
