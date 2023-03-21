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

local bind = require(UIBlox.Utility.bind)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local BUTTON_IMAGE = "component_assets/circle_17_stroke_1"
local COLLAPSE_IMAGE = "truncate_arrows/actions_truncationCollapse"
local EXPAND_IMAGE = "truncate_arrows/actions_truncationExpand"

local DROPDOWN_MENU_MAX_WIDTH = 300

local function getCellDataKey(cellData)
	return if cellData.key ~= nil then cellData.key else cellData.text
end

local DropdownMenuComponent = Roact.Component:extend("DropdownMenuComponent")

DropdownMenuComponent.validateProps = t.strictInterface({
	-- Texts shown by the DropdownCell when no value is selected, i.e. the initial state.
	placeholder = t.string,

	-- The callback function when a value is selected, passing the selected value as the parameter.
	onChange = t.callback,

	-- Height of the DropdownCell.
	height = t.UDim,

	-- Size of the display area, used to determine the position for dropdown menu and the size of dismiss layer.
	screenSize = t.Vector2,

	-- Shadow Effect of the DropdownMenuList's Frame
	showDropShadow = t.optional(t.boolean),

	-- Set Fixed DropdownMenuList's Height
	fixedListHeight = t.optional(t.number),

	-- If the component is in error state (shows the error style).
	errorState = t.optional(t.boolean),

	-- If the component is disabled.
	isDisabled = t.optional(t.boolean),

	-- Callback triggers on menu open/close events. A single boolean will be passed with the open state of the menu.
	onMenuOpenChange = t.optional(t.callback),

	-- Array of datas for menu cells
	cellDatas = t.array(t.strictInterface({
		-- Icon can either be an Image in a ImageSet or a regular image asset
		icon = t.optional(t.union(t.table, t.string)),

		-- value of the cell, also the text displayed in this cell
		text = t.string,

		-- unique identifier for each cell (defaults to `text` field if not provided)
		key = t.optional(t.string), -- UIBloxConfig.dropDownMenuUseUniqueKeys

		-- is the cell is disabled
		disabled = t.optional(t.boolean),

		-- A KeyCode to display a keycode hint for, the display string based on
		-- the users keyboard or gamepad button is displayed.
		keyCodeLabel = t.optional(t.union(
			t.enum(Enum.KeyCode),
			t.strictInterface({
				key = t.enum(Enum.KeyCode),
				axis = t.optional(t.string),
			})
		)),

		-- the color to override the default icon color
		iconColorOverride = t.optional(t.Color3),

		-- the color to override the default text color
		textColorOverride = t.optional(t.Color3),
	})),
})

DropdownMenuComponent.defaultProps = {
	showDropShadow = false,
	fixedListHeight = nil,
}

function DropdownMenuComponent:didUpdate(prevProps, prevState)
	if self.props.onMenuOpenChange and self.state.menuOpen ~= prevState.menuOpen then
		self.props.onMenuOpenChange(self.state.menuOpen)
	end
end

function DropdownMenuComponent:init()
	self.rootRef = Roact.createRef()

	self:setState({
		menuOpen = false,
		selectedKey = if UIBloxConfig.dropDownMenuUseUniqueKeys then nil else nil,
		selectedValue = if UIBloxConfig.dropDownMenuUseUniqueKeys then nil else self.props.placeholder,
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

	if UIBloxConfig.dropDownMenuUseUniqueKeys then
		self.onSelect = function(key)
			self:setState({
				menuOpen = false,
				selectedKey = key,
			})
			self.props.onChange(key)
		end
	else
		self.onSelect = function(cell)
			local value = cell.LeftAlignedContent.Text.text
			self:setState({
				menuOpen = false,
				selectedValue = value,
			})
			self.props.onChange(value)
		end
	end

	self.mapCellData = function(cellData)
		if UIBloxConfig.dropDownMenuUseUniqueKeys then
			local key = getCellDataKey(cellData)
			local functionalCell = Cryo.Dictionary.join(cellData, {
				key = Cryo.None,
			})
			functionalCell.onActivated = bind(self.onSelect, key)
			functionalCell.selected = self.state.selectedKey == key
			return functionalCell
		else
			local functionalCell = {}
			for i, v in pairs(cellData) do
				functionalCell[i] = v
			end
			functionalCell.onActivated = self.onSelect
			functionalCell.selected = self.state.selectedValue == functionalCell.text
			return functionalCell
		end
	end

	self.onResize = function(rbx)
		self:setState({
			absoluteSize = rbx.AbsoluteSize,
		})
	end
end

function DropdownMenuComponent.getDerivedStateFromProps(nextProps, lastState)
	if UIBloxConfig.enableDropdownMenuUpdateSelectedValueFromPlaceholder or UIBloxConfig.dropDownMenuUseUniqueKeys then
		local found = false
		if UIBloxConfig.dropDownMenuUseUniqueKeys then
			for _, cellData in nextProps.cellDatas do
				if getCellDataKey(cellData) == lastState.selectedKey then
					found = true
					break
				end
			end
		else
			for i, v in nextProps.cellDatas do
				if v.text == lastState.selectedValue then
					found = true
					break
				end
			end
		end

		if UIBloxConfig.dropDownMenuUseUniqueKeys then
			if not found then
				return {
					selectedKey = Roact.None,
				}
			end
		else
			if not found then
				return {
					selectedValue = nextProps.placeholder,
				}
			end
		end
	end

	return nil
end

function DropdownMenuComponent:render()
	local cellDatas = self.props.cellDatas
	local functionalCells = Cryo.List.map(cellDatas, self.mapCellData)

	local selectedIndex
	local selectedValue
	if UIBloxConfig.dropDownMenuUseUniqueKeys then
		selectedIndex = Cryo.List.findWhere(functionalCells, function(cell)
			return cell.selected
		end)
		selectedValue = if selectedIndex ~= nil then functionalCells[selectedIndex].text else self.props.placeholder
	else
		selectedValue = self.state.selectedValue
	end

	local defaultState = "SecondaryDefault"
	local hoverState = "SecondaryOnHover"
	local textState = "TextEmphasis"

	local absoluteSize = self.state.absoluteSize
	local limitMenuWidth = absoluteSize.X > 640

	if self.state.menuOpen then
		hoverState = defaultState
	end

	if self.props.errorState then
		defaultState = "Alert"
		hoverState = "Alert"
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(UDim.new(1, 0), self.props.height),
		BackgroundTransparency = 1,
		[Roact.Change.AbsoluteSize] = self.onResize,
	}, {
		InnerFrame = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			SpawnButton = Roact.createElement(DropdownMenuCell, {
				Size = UDim2.fromScale(1, 1),
				buttonImage = Images[BUTTON_IMAGE],
				buttonStateColorMap = {
					[ControlState.Default] = defaultState,
					[ControlState.Hover] = hoverState,
				},
				contentStateColorMap = {
					[ControlState.Default] = textState,
				},
				icon = self.state.menuOpen and Images[COLLAPSE_IMAGE] or Images[EXPAND_IMAGE],
				text = selectedValue,
				isDisabled = self.props.isDisabled,
				isLoading = false,
				isActivated = self.state.menuOpen,
				hasContent = if UIBloxConfig.dropDownMenuUseUniqueKeys
					then selectedIndex ~= nil
					else self.state.selectedValue ~= self.props.placeholder,
				userInteractionEnabled = true,
				onActivated = self.openMenu,
			}),
			DropdownMenuList = Roact.createElement(DropdownMenuList, {
				buttonProps = functionalCells,

				zIndex = 2,
				open = self.state.menuOpen,
				openPositionY = UDim.new(0, 12),
				buttonSize = UDim2.fromScale(1, 1),

				closeBackgroundVisible = false,
				screenSize = self.props.screenSize,
				showDropShadow = self.props.showDropShadow,
				fixedListHeight = self.props.fixedListHeight,
				onDismiss = self.closeMenu,
			}),
			UISizeConstraint = limitMenuWidth and Roact.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(DROPDOWN_MENU_MAX_WIDTH, math.huge),
			}) or nil,
		}) or nil,
	})
end

return DropdownMenuComponent
