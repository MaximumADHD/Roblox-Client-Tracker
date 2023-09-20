--[[
	This component is a dropdown component similar to the UIBlox dropdown menu, but
	it allows passing the selected option and a function that is called when an option is selected.
	This makes it possible to change the selected option from outside the dropdown menu.
	It also allows some customization through buttonSize, dropdownList, and layoutOrder props.
	More customization options can be added in the future (for example, changing colors through
	props).
]]
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)

local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useStyle = UIBlox.Core.Style.useStyle
local BaseMenu = UIBlox.App.Menu.BaseMenu

local ELEMENT_HEIGHT = 40
local ARROW_SIZE = 16
local ARROW_OFFSET = ARROW_SIZE / 2
local TEXT_PADDING = 12
local EXPAND_IMAGE = Images["icons/actions/truncationExpand_small"]

type Props = {
	buttonSize: UDim2,
	dropdownList: { [number]: string },
	selectedIndex: number,
	onSelection: (index: number) -> nil,
	layoutOrder: number,
}

export type DropdownMenuType = (props: Props) -> React.ReactElement

local validateProps = ArgCheck.wrap(t.strictInterface({
	buttonSize = t.UDim2,
	dropdownList = t.table,
	selectedIndex = t.number,
	onSelection = t.callback,
	layoutOrder = t.number,
}))

local function DropdownMenu(props: Props)
	assert(validateProps(props))

	local style = useStyle()
	local fontStyle = style.Font.CaptionHeader
	local fontSize = fontStyle.RelativeSize * style.Font.BaseSize
	local backgroundColor = if style.UIBloxThemeEnabled then style.color("ControlInputBackground") else Color3.fromRGB(79, 84, 95)

	local showDropdown, setShowDropdown = React.useState(false)
	local buttonProps, setButtonProps = React.useState({})

	local onMainButtonPressed = React.useCallback(function()
		if not showDropdown then
			local tempButtonProps = {}
			for index, option in pairs(props.dropdownList) do
				tempButtonProps[index] = {
					text = option,
					fontStyle = {
						Font = fontStyle.Font,
						RelativeSize = fontStyle.RelativeSize,
					},
					onActivated = function()
						props.onSelection(index)
						setShowDropdown(false)
					end,
					leftPaddingOffset = -TEXT_PADDING,
					selected = index == props.selectedIndex,
					selectedIconPaddingRight = TEXT_PADDING,
				}
			end
			setButtonProps(tempButtonProps)
		end
		setShowDropdown(not showDropdown)
	end)

	return Roact.createElement("Frame", {
		Size = props.buttonSize,
		LayoutOrder = props.layoutOrder,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 3,
	}, {
		SpawnButton = Roact.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			Text = props.dropdownList[props.selectedIndex],
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = fontSize,
			Font = fontStyle.Font,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundColor3 = backgroundColor,
			BackgroundTransparency = 0,
			LayoutOrder = props.layoutOrder,
			[Roact.Event.Activated] = onMainButtonPressed,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),
			UIPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, TEXT_PADDING),
			}),
			UIStroke = Roact.createElement("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Color3.new(1, 1, 1),
				Thickness = 1,
				Transparency = 0.8,
			}),
			Arrow = Roact.createElement(ImageSetLabel, {
				Image = EXPAND_IMAGE,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, ARROW_SIZE, 0, ARROW_SIZE),
				Position = UDim2.new(1, -ARROW_SIZE - ARROW_OFFSET - 4, .5, -ARROW_OFFSET),
			}),
		}),
		Dropdown = showDropdown and Roact.createElement(BaseMenu, {
			buttonProps = buttonProps,
			position = UDim2.new(0, 0, 1, 6),
			layoutOrder = 2,
			elementHeight = ELEMENT_HEIGHT,
			background = { 
				Color = backgroundColor,
			},
			showDropShadow = true,
		}),
	})
end

return DropdownMenu :: DropdownMenuType