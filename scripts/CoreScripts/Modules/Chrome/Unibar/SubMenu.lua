local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local useSelectionCursor = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local ChromeService = require(script.Parent.Parent.Service)
local ChromeTypes = require(script.Parent.Parent.Service.Types)
local UserInputService = game:GetService("UserInputService")

local useChromeMenuItems = require(script.Parent.Parent.Hooks.useChromeMenuItems)
local useObservableValue = require(script.Parent.Parent.Hooks.useObservableValue)

local IconHost = require(script.Parent.ComponentHosts.IconHost)

type Table = { [any]: any }

export type SubMenuProps = {
	items: { [number]: ChromeTypes.IntegrationComponentProps },
}

function MenuRow(props: ChromeTypes.IntegrationComponentProps)
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font
	local defaultBgColor = {
		Color = Color3.new(0, 0, 0),
		Transparency = 1,
	}

	local highlightColor, setHighlightColor = React.useBinding(defaultBgColor)

	local stateChange = React.useCallback(function(_, newState)
		if newState == ControlState.Pressed then
			setHighlightColor(theme.BackgroundOnPress)
		elseif newState == ControlState.Hover then
			setHighlightColor(theme.BackgroundOnHover)
		else
			setHighlightColor(defaultBgColor)
		end
	end)

	return React.createElement(Interactable, {
		Size = UDim2.new(1, 0, 0, 56),
		BorderSizePixel = 0,
		BackgroundTransparency = highlightColor:map(function(v)
			return v.Transparency
		end),
		BackgroundColor3 = highlightColor:map(function(v)
			return v.Color
		end),
		SelectionImageObject = useSelectionCursor(CursorKind.RoundedRectNoInset),
		[React.Event.Activated] = props.activated,
		LayoutOrder = props.order,
		onStateChanged = stateChange,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24),
			PaddingRight = UDim.new(0, 8),
		}),

		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, 8),
		}),

		IconHost = React.createElement(IconHost, {
			integration = props,
			disableButtonBehaviors = true,
		} :: any),

		StyledTextLabel = React.createElement(StyledTextLabel, {
			fontStyle = font.Header2,
			colorStyle = theme.TextEmphasis,
			text = props.integration.label,
			textTruncate = Enum.TextTruncate.AtEnd,
			textXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

function SubMenu(props: SubMenuProps)
	local style = useStyle()
	local theme = style.Theme
	local menuRef = React.useRef(nil)

	React.useEffect(function()
		-- A manual Left, Right exit out of the sub-menu, back into Unibar
		local conn = UserInputService.InputBegan:Connect(function(input)
			local key = input.KeyCode
			if key == Enum.KeyCode.Left or key == Enum.KeyCode.DPadLeft then
				local selectedWithinMenu = menuRef.current
					and menuRef.current:IsAncestorOf(GuiService.SelectedCoreObject)
				if selectedWithinMenu then
					ChromeService:setSelectedByOffset(-1)
				end
			elseif key == Enum.KeyCode.Right or key == Enum.KeyCode.DPadRight then
				local selectedWithinMenu = menuRef.current
					and menuRef.current:IsAncestorOf(GuiService.SelectedCoreObject)
				if selectedWithinMenu then
					ChromeService:setSelectedByOffset(1)
				end
			end
		end)
		return function()
			conn:Disconnect()
		end
	end, {})

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
	for _, item in props.items do
		rows[item.id] = React.createElement(MenuRow, item)
	end

	return React.createElement("Frame", {
		Size = UDim2.new(0, 240, 0, 0),
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, 0, 0, 0),
		BackgroundColor3 = theme.BackgroundUIContrast.Color,
		BackgroundTransparency = theme.BackgroundUIContrast.Transparency,
		AutomaticSize = Enum.AutomaticSize.Y,
		ref = menuRef,
	}, {
		UIPadding = React.createElement("UIPadding", {
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
			SelectionGroup = true,
			SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
			SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
			SelectionBehaviorDown = Enum.SelectionBehavior.Stop,
			Selectable = false,
		}, rows),
	})
end

export type SubMenuHostProps = {}

return function(props: SubMenuHostProps) -- SubMenuHost
	local children: Table = {}

	local connection: { current: RBXScriptConnection? } = React.useRef(nil)

	local currentSubMenu = useObservableValue(ChromeService:currentSubMenu())

	-- close submenu on click outside
	React.useEffect(function()
		if not currentSubMenu and connection.current then
			connection.current:Disconnect()
			connection.current = nil
		end

		if currentSubMenu and connection.current == nil then
			connection.current = UserInputService.InputEnded:Connect(function(inputChangedObj: InputObject, _)
				local pressed = inputChangedObj.UserInputType == Enum.UserInputType.MouseButton1
					or inputChangedObj.UserInputType == Enum.UserInputType.Touch

				local subMenuId = ChromeService:currentSubMenu():get()
				if subMenuId and pressed then
					ChromeService:toggleSubMenu(subMenuId)
				end
			end)
		end
	end, { currentSubMenu })

	local menuItems = useChromeMenuItems()
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
