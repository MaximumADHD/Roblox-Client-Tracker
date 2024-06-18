local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local Images = require(UIBlox.App.ImageSet.Images)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)

local DropdownMenuList = require(UIBlox.App.Menu.DropdownMenuList)
local DropdownMenuCell = require(UIBlox.App.Menu.DropdownMenuCell)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)

local bind = require(UIBlox.Utility.bind)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local useStyle = require(UIBlox.Core.Style.useStyle)
local StyleDefaults = require(script.Parent.StyleDefaults)

local BUTTON_IMAGE = "component_assets/circle_17_stroke_1"
local COLLAPSE_IMAGE = "truncate_arrows/actions_truncationCollapse"
local EXPAND_IMAGE = "truncate_arrows/actions_truncationExpand"

local DROPDOWN_MENU_MAX_WIDTH = 300

local function getCellDataKey(cellData)
	return if cellData.key ~= nil then cellData.key else cellData.text
end

local DropdownMenu = Roact.Component:extend("DropdownMenu")

DropdownMenu.validateProps = t.strictInterface({
	-- Text to be shown by the component when no value is selected, i.e. the initial state
	placeholder = t.string,

	-- A function to be called when a Cell is clicked, passing the value as a parameter.
	-- This will be called even if the value is the same with the previous one.
	onChange = t.callback,

	-- Height of the DropdownCell.
	height = if UIBloxConfig.enableNewMenuLayout then t.optional(t.UDim) else t.UDim,

	-- The total size of the screen, used for the dismiss background and the DropdownMenuList's position on the compact width
	screenSize = t.Vector2,

	-- If the DropdownMenu's DropdownMenuList's frame has shadow effect
	showDropShadow = t.optional(t.boolean),

	-- If the DropdownMenu's DropdownMenuList's height with fixed number
	fixedListHeight = t.optional(t.number),

	-- If the DropdownMenu is in the error state
	errorState = t.optional(t.boolean),

	-- If the DropdownMenu is disabled
	isDisabled = t.optional(t.boolean),

	-- Callback triggers on menu open/close events. A single boolean will be passed with the open state of the menu.
	onMenuOpenChange = t.optional(t.callback),

	-- Override `DropdownMenuList` background
	menuListBackground = t.optional(validateColorInfo),

	-- The properties for each cell. It is an array that contains multiple tables of the following format:
	cellDatas = t.array(t.strictInterface({
		-- An rbxasset address recognized by Roblox Studio or an ImageSet Image
		icon = t.optional(t.union(t.table, t.string)),

		-- The label for the specific button
		text = t.string,

		-- Unique identifier for each cell (defaults to `text` field if not provided)
		key = t.optional(t.string),

		-- If the cell is disabled or not
		disabled = t.optional(t.boolean),

		-- A keycode to display a button hint for on the right side of the button
		keyCodeLabel = t.optional(t.union(
			t.enum(Enum.KeyCode),
			t.strictInterface({
				key = t.enum(Enum.KeyCode),
				axis = t.optional(t.string),
			})
		)),

		-- A Color3 value to override the Icon ImageColor with
		iconColorOverride = t.optional(t.Color3),

		-- A Color3 value to override the Text TextColor with
		textColorOverride = t.optional(t.Color3),
	})),

	-- Menu button color styles
	menuStateColors = t.optional(t.strictInterface({
		-- Button default color
		buttonDefault = t.optional(validateColorInfo),
		-- Content default color
		contentDefault = t.optional(validateColorInfo),
		-- Button color when menu is in alert state
		alert = t.optional(validateColorInfo),
	})),

	-- Indicate whether design override is enabled
	enableTokenOverride = t.optional(t.boolean),

	-- Override the internal menuOpen dropdown state to close dropdown when true
	isForcedClosed = t.optional(t.boolean),

	-- Override selection order. This selection order only affects calling GuiService:Select() on an ancestor. This property does not affect directional navigation.
	selectionOrder = t.optional(t.number),

	-- Override the menu list position (keeping it mounted directly under the DropdownMenu component instead of the bottom of the screen)
	dropdownMenuListPositionFixed = t.optional(t.boolean),
})

DropdownMenu.defaultProps = {
	showDropShadow = false,
	fixedListHeight = nil,
	enableTokenOverride = false,
	dropdownMenuListPositionFixed = false,
}

function DropdownMenu:didUpdate(prevProps, prevState)
	if self.props.onMenuOpenChange and self.state.menuOpen ~= prevState.menuOpen then
		self.props.onMenuOpenChange(self.state.menuOpen)
	end
end

function DropdownMenu:init()
	self:setState({
		menuOpen = false,
		selectedKey = nil,
		absoluteSize = Vector2.new(0, 0),
	})

	self.openMenu = function()
		self:setState({
			menuOpen = true,
		})
	end

	self.closeMenu = function()
		self:setState({
			menuOpen = false,
		})
	end

	self.onSelect = function(key)
		self:setState({
			menuOpen = false,
			selectedKey = key,
		})
		self.props.onChange(key)
	end

	self.mapCellData = function(cellData)
		local key = getCellDataKey(cellData)
		local functionalCell = Cryo.Dictionary.join(cellData, {
			key = Cryo.None,
		})
		functionalCell.onActivated = bind(self.onSelect, key)
		functionalCell.selected = self.state.selectedKey == key
		return functionalCell
	end

	self.onResize = function(rbx)
		self:setState({
			absoluteSize = rbx.AbsoluteSize,
		})
	end
end

function DropdownMenu.getDerivedStateFromProps(nextProps, lastState)
	local found = false
	for _, cellData in nextProps.cellDatas do
		if getCellDataKey(cellData) == lastState.selectedKey then
			found = true
			break
		end
	end

	if not found then
		return {
			selectedKey = Roact.None,
		}
	end

	return nil
end

function DropdownMenu:render()
	local cellDatas = self.props.cellDatas
	local functionalCells = Cryo.List.map(cellDatas, self.mapCellData)

	local selectionOrder = self.props.selectionOrder

	local selectedIndex = Cryo.List.findWhere(functionalCells, function(cell)
		return cell.selected
	end)
	local selectedValue = if selectedIndex ~= nil then functionalCells[selectedIndex].text else self.props.placeholder

	local absoluteSize = self.state.absoluteSize
	local limitMenuWidth = absoluteSize.X > 640

	local buttonStateColorMap, contentStateColorMap
	if UIBloxConfig.enableNewMenuLayout and self.props.enableTokenOverride then
		local buttonDefault = self.props.menuStateColors.buttonDefault
		local contentDefault = self.props.menuStateColors.contentDefault

		if self.props.errorState then
			buttonDefault = self.props.menuStateColors.alert
		end

		buttonStateColorMap = {
			[ControlState.Default] = buttonDefault,
		}
		contentStateColorMap = {
			[ControlState.Default] = contentDefault,
		}
	else
		local defaultState = "SecondaryDefault"
		local hoverState = "SecondaryOnHover"
		local textState = "TextEmphasis"

		if self.state.menuOpen then
			hoverState = defaultState
		end

		if self.props.errorState then
			defaultState = "Alert"
			hoverState = "Alert"
		end
		buttonStateColorMap = {
			[ControlState.Default] = defaultState,
			[ControlState.Hover] = hoverState,
		}
		contentStateColorMap = {
			[ControlState.Default] = textState,
		}
	end

	if self.props.isForcedClosed and self.state.menuOpen then
		self:setState({
			menuOpen = false,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(UDim.new(1, 0), self.props.height),
		BackgroundTransparency = 1,
		[Roact.Change.AbsoluteSize] = self.onResize,
		[Roact.Ref] = self.props[Roact.Ref],
	}, {
		InnerFrame = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			SpawnButton = Roact.createElement(DropdownMenuCell, {
				Size = UDim2.fromScale(1, 1),
				buttonImage = Images[BUTTON_IMAGE],
				buttonStateColorMap = buttonStateColorMap,
				contentStateColorMap = contentStateColorMap,
				icon = self.state.menuOpen and Images[COLLAPSE_IMAGE] or Images[EXPAND_IMAGE],
				text = selectedValue,
				isDisabled = self.props.isDisabled,
				isLoading = false,
				isActivated = self.state.menuOpen,
				hasContent = selectedIndex ~= nil,
				userInteractionEnabled = true,
				onActivated = function()
					if self.state.menuOpen then
						self.closeMenu()
					else
						self.openMenu()
					end
				end,
				enableTokenOverride = self.props.enableTokenOverride,
				SelectionOrder = selectionOrder,
			}),
			DropdownMenuList = Roact.createElement(DropdownMenuList, {
				buttonProps = functionalCells,

				zIndex = 2,
				open = self.state.menuOpen,
				openPositionY = UDim.new(0, 12),
				buttonSize = UDim2.fromScale(1, 1),

				closeBackgroundVisible = false,
				menuListBackground = self.props.menuListBackground,
				screenSize = self.props.screenSize,
				showDropShadow = self.props.showDropShadow,
				fixedListHeight = self.props.fixedListHeight,
				onDismiss = self.closeMenu,
				enableTokenOverride = self.props.enableTokenOverride,
				selectionOrder = if selectionOrder then selectionOrder + 1 else nil,
				menuPositionFixed = self.props.dropdownMenuListPositionFixed,
			}),
			UISizeConstraint = limitMenuWidth and Roact.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(DROPDOWN_MENU_MAX_WIDTH, math.huge),
			}) or nil,
		}) or nil,
	})
end

return Roact.forwardRef(function(providedProps: any, ref: any)
	local props
	if UIBloxConfig.enableNewMenuLayout and providedProps.enableTokenOverride then
		local style = useStyle()
		local styleDefaults = StyleDefaults.getDropdownMenuDefaultTokens(style)

		local menuStateColors = Cryo.Dictionary.join(styleDefaults.menuStateColors, providedProps.menuStateColors or {})
		props = Cryo.Dictionary.join(providedProps, {
			height = providedProps.height or styleDefaults.height,
			menuStateColors = menuStateColors,
		})
	else
		props = providedProps
	end

	return Roact.createElement(
		DropdownMenu,
		Cryo.Dictionary.join(props, {
			[Roact.Ref] = ref,
		})
	)
end)
