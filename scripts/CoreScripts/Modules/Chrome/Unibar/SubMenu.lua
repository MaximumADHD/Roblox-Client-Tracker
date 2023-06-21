local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle

local ChromeService = require(script.Parent.Parent.Service)

local useChromeMenuItems = require(script.Parent.Parent.Hooks.useChromeMenuItems)
local useObservableValue = require(script.Parent.Parent.Hooks.useObservableValue)

local IconHost = require(script.Parent.ComponentHosts.IconHost)

type Array<T> = { [number]: T }
type Table = { [any]: any }

function SubMenu(props)
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local rows: Table = {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		UISizeConstraint = React.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(math.huge, 232),
		}),
		-- extra padding to account for broken AutomaticSize + Padding
		BottomPadding = React.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, 20),
			BackgroundTransparency = 1,
			LayoutOrder = 10000,
		}),
	}
	for i, v: any? in props.items do
		-- todo: make a real Row component with hover state
		if v then
			rows[v.id] = React.createElement("ImageButton", {
				Size = UDim2.new(1, 0, 0, 72),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				[React.Event.Activated] = v.activated,
				LayoutOrder = v.order,
			}, {
				UIPadding = React.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 16),
				}),

				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, 8),
				}),

				IconHost = React.createElement(IconHost, {
					integration = v,
				} :: any),

				StyledTextLabel = React.createElement(StyledTextLabel, {
					fontStyle = font.Header2,
					colorStyle = theme.TextEmphasis,
					text = v.integration.label,
					textTruncate = Enum.TextTruncate.AtEnd,
					textXAlignment = Enum.TextXAlignment.Left,
				}),
			})
		end
	end

	return React.createElement("Frame", {
		Size = UDim2.new(0, 240, 0, 0),
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, 0, 0, 0),
		BackgroundColor3 = Color3.new(0.1, 0.1, 0.1),
		AutomaticSize = Enum.AutomaticSize.Y,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 8),
			PaddingRight = UDim.new(0, 8),
			PaddingTop = UDim.new(0, 8),
			PaddingBottom = UDim.new(0, 8),
		}),
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 10),
		}),
		ScrollingFrame = React.createElement("ScrollingFrame", {
			ScrollBarThickness = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			AutomaticCanvasSize = Enum.AutomaticSize.XY,
			ScrollingDirection = Enum.ScrollingDirection.Y,
		}, rows),
	})
end

return function(props) -- SubMenuHost
	local children: Table = {}

	local currentSubMenu: string? = useObservableValue(ChromeService:currentSubMenu())

	local menuItems: Array<any>? = useChromeMenuItems()
	local subMenuItems = {}

	if currentSubMenu and menuItems then
		-- todo: scanning for the menu id isn't ideal - improve
		for i, v in menuItems do
			if currentSubMenu == v.id then
				subMenuItems = v.children
				break
			end
		end
	end

	if #subMenuItems > 0 then
		children[currentSubMenu] = React.createElement(SubMenu, {
			items = subMenuItems,
		})
	end

	return React.createElement("Frame", {
		Name = "SubMenuHost",
		Size = UDim2.new(0, 0, 1, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, children)
end
