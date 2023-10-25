local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)

local UIBlox = dependencies.UIBlox
local Colors = UIBlox.App.Style.Colors
local useStyle = UIBlox.Core.Style.useStyle
local Interactable = UIBlox.Core.Control.Interactable
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images

local PADDING_LEFT = 24
local PADDING_RIGHT = 28
local IMAGE_SIZE = 28

export type Props = {
	name: string,
	description: string,
	layoutOrder: number?,
}

local noOpt = function() end

local function SectionHeader(props: Props)
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local active, setActive = React.useState(false)

	return React.createElement("Frame", {
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, 24),
		BackgroundColor3 = theme.BackgroundContrast.Color,
		LayoutOrder = props.layoutOrder,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, PADDING_LEFT),
		}),
		HeaderText = React.createElement("TextLabel", {
			Size = UDim2.new(1, -IMAGE_SIZE, 1, 0),
			BackgroundTransparency = 1,
			Font = font.Footer.Font,
			Text = string.upper(props.name),
			TextColor3 = theme.TextDefault.Color,
			TextSize = font.Footer.RelativeSize * font.BaseSize,
			TextTransparency = theme.TextDefault.Transparency,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 0, 0.5, 0),
		}),
		Tooltip = withTooltip({
			headerText = props.name,
			bodyText = props.description,
		}, {
			preferredOrientation = TooltipOrientation.Right,
			guiTarget = CoreGui,
			DisplayOrder = 100,
			active = active,
		}, function(triggerPointChanged)
			return React.createElement(Interactable, {
				Position = UDim2.new(1, -PADDING_RIGHT, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				Size = UDim2.fromOffset(IMAGE_SIZE, IMAGE_SIZE),
				BackgroundTransparency = 1,
				[React.Change.AbsolutePosition] = triggerPointChanged,
				[React.Change.AbsoluteSize] = triggerPointChanged,
				[React.Event.Activated] = function(rbx: GuiObject)
					setActive(not active)
				end,
				onStateChanged = noOpt,
			}, {
				Label = React.createElement(ImageSetLabel, {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Image = Images["icons/actions/info"],
					ImageColor3 = Colors.White,
				}),
			})
		end),
	})
end

return SectionHeader
