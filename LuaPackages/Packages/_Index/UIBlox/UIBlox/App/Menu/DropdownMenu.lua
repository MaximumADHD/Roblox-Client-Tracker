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

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local BUTTON_IMAGE = "component_assets/circle_17_stroke_1"
local COLLAPSE_IMAGE = "truncate_arrows/actions_truncationCollapse"
local EXPAND_IMAGE = "truncate_arrows/actions_truncationExpand"

local DROPDOWN_MENU_MAX_WIDTH = 300

local DropdownMenuComponent = Roact.Component:extend("DropdownMenuComponent")

DropdownMenuComponent.validateProps = t.strictInterface({
	-- Texts shown by the DropdownCell when no value is selected, i.e. the initial state.
	placeholder = t.string,

  -- The callback function when a value is selected, passing the selected value as the parameter.
	onChange = t.callback,

	-- Size of the DropdownCell.
	size = (not UIBloxConfig.fixDropdownMenuListPositionAndSize) and t.UDim2 or nil,

	-- Height of the DropdownCell.
	height = UIBloxConfig.fixDropdownMenuListPositionAndSize and t.UDim or nil,

	-- Size of the display area, used to determine the position for dropdown menu and the size of dismiss layer.
	screenSize = t.Vector2,

	-- If the component is in error state (shows the error style).
	errorState = t.optional(t.boolean),

	-- If the component is disabled.
	isDisabled = t.optional(t.boolean),

	-- Array of datas for menu cells
	cellDatas = t.array(t.strictInterface({
		-- Icon can either be an Image in a ImageSet or a regular image asset
		icon = t.optional(t.union(t.table, t.string)),

		-- value of the cell, also the text displayed in this cell
		text = t.string,

		-- is the cell is disabled
		disabled = t.optional(t.boolean),

		-- A KeyCode to display a keycode hint for, the display string based on the users keyboard is displayed.
		keyCodeLabel = t.optional(t.enum(Enum.KeyCode)),

		-- the color to override the default icon color
		iconColorOverride = t.optional(t.Color3),

		-- the color to override the default text color
		textColorOverride = t.optional(t.Color3),
	}))
})

function DropdownMenuComponent:init()
	self.rootRef = Roact.createRef()

	self:setState({
		menuOpen = false,
		selectedValue = self.props.placeholder,
		absoluteSize = UIBloxConfig.fixDropdownMenuListPositionAndSize and Vector2.new(0, 0) or nil,
	})

	self.openMenu = function()
		self:setState({
			menuOpen = true
		})
	end

	self.closeMenu = function()
		self:setState({
			menuOpen = false
		})
	end

	self.onSelect = function(cell)
		local value = cell.LeftAlignedContent.Text.text
		self:setState({
			menuOpen = false,
			selectedValue = value,
		})
		self.props.onChange(value)
	end

	self.mapCellData = function(cellData, cellIndex)
		local functionalCell = {}
		for i,v in pairs(cellData) do
			functionalCell[i] = v
		end
		functionalCell.onActivated = self.onSelect
		functionalCell.selected = self.state.selectedValue == functionalCell.text
		return functionalCell
	end

	self.onResize = function(rbx)
		self:setState({
			absoluteSize = rbx.AbsoluteSize,
		})
	end
end

function DropdownMenuComponent:render()
	local cellDatas = self.props.cellDatas
	local functionalCells = Cryo.List.map(cellDatas, self.mapCellData)

	local defaultState = "SecondaryDefault"
	local hoverState = "SecondaryOnHover"
	local textState = "TextEmphasis"

	local absoluteSize = self.state.absoluteSize
	local limitMenuWidth = UIBloxConfig.fixDropdownMenuListPositionAndSize and absoluteSize.X > 640

	if self.state.menuOpen then
		hoverState = defaultState
	end

	if self.props.errorState then
		defaultState = "Alert"
		hoverState = "Alert"
	end

	return Roact.createElement("Frame", {
		Size = UIBloxConfig.fixDropdownMenuListPositionAndSize and UDim2.new(UDim.new(1, 0), self.props.height)
			or UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		[Roact.Change.AbsoluteSize] = UIBloxConfig.fixDropdownMenuListPositionAndSize and self.onResize or nil,
	}, UIBloxConfig.fixDropdownMenuListPositionAndSize and {
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
				text = self.state.selectedValue,
				isDisabled = self.props.isDisabled,
				isLoading = false,
				isActivated = self.state.menuOpen,
				hasContent = self.state.selectedValue ~= self.props.placeholder,
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

				onDismiss = self.closeMenu,
			}),
			UISizeConstraint = limitMenuWidth and
				Roact.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(DROPDOWN_MENU_MAX_WIDTH, math.huge),
			}) or nil,
		}) or nil,
	} or {
		SpawnButton = Roact.createElement(DropdownMenuCell, {
			Size = self.props.size,
			buttonImage = Images[BUTTON_IMAGE],
			buttonStateColorMap = {
				[ControlState.Default] = defaultState,
				[ControlState.Hover] = hoverState,
			},
			contentStateColorMap = {
				[ControlState.Default] = textState,
			},
			icon = self.state.menuOpen and Images[COLLAPSE_IMAGE] or Images[EXPAND_IMAGE],
			text = self.state.selectedValue,
			isDisabled = self.props.isDisabled,
			isLoading = false,
			isActivated = self.state.menuOpen,
			hasContent = self.state.selectedValue ~= self.props.placeholder,
			userInteractionEnabled = true,
			onActivated = self.openMenu,
		}),
		DropdownMenuList = Roact.createElement(DropdownMenuList, {
			buttonProps = functionalCells,

			zIndex = 2,
			open = self.state.menuOpen,
			openPositionY = UDim.new(0, 12),
			buttonSize = self.props.size,

			closeBackgroundVisible = false,
			screenSize = self.props.screenSize,

			onDismiss = self.closeMenu,
		}),
	})
end

return DropdownMenuComponent
