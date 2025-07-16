local PillRoot = script.Parent
local Control = PillRoot.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local RoactGamepad = require(Packages.RoactGamepad)
local Focusable = RoactGamepad.Focusable
local FitFrame = require(Packages.FitFrame)
local FitFrameHorizontal = FitFrame.FitFrameHorizontal

local IconSize = require(App.ImageSet.Enum.IconSize)
local Images = require(App.ImageSet.Images)

local useStyle = require(UIBlox.Core.Style.useStyle)
local IconButton = require(UIBlox.App.Button.IconButton)
local useIsGamepad = require(UIBlox.Utility.useIsGamepad)
local ScrollingListWithArrowsAndGradient = require(Control.HorizontalNav.ScrollingListWithArrowsAndGradient)
local Pill = require(PillRoot.Pillv2)

-- Signature for callback invoked when pill selection changes
export type OnSelectionChanged = (selectedPills: { string }) -> ()

export type Props = {
	-- The list of pills to show
	pills: { string },
	-- The list of pills that are currently selected (typically, parent components will
	-- pass back the same selection given to them via `onSelectionChanged` but this prop
	-- also allows them to clear or update the selection from outside the component).
	selectedPills: { string }?,
	isLoading: boolean?,
	-- Callback function invoked when the Pill selection changes
	onSelectionChanged: OnSelectionChanged?,
	-- Position in an ordered layout
	layoutOrder: number?,
	leftPadding: number?,
	rightPadding: number?,

	-- Navigation parameter for RoactGamepad support
	NextSelectionLeft: any,
	-- Navigation parameter for RoactGamepad support
	NextSelectionRight: any,
	-- Navigation parameter for RoactGamepad support
	NextSelectionUp: any,
	-- Navigation parameter for RoactGamepad support
	NextSelectionDown: any,
	forwardRef: any,
	-- Whether to enable RoactGamepad functionality
	isRoactGamepadEnabled: boolean?,
}

local PILL_GROUP_HEIGHT = 52

local BUTTON_PADDING = 8

local DEFAULT_LEFT_RIGHT_PADDING = 15

local function PillGroup(props: Props)
	local isRoactGamepadEnabled = if props.isRoactGamepadEnabled ~= nil then props.isRoactGamepadEnabled else true
	local isGamepad = useIsGamepad() and isRoactGamepadEnabled

	local scrollingFrameRef = React.useRef(nil)

	local function scrollToStart()
		local scrollingFrame = scrollingFrameRef.current
		if scrollingFrame then
			scrollingFrame:ScrollToTop()
		end
	end

	local leftPadding = props.leftPadding or DEFAULT_LEFT_RIGHT_PADDING
	local rightPadding = props.rightPadding or DEFAULT_LEFT_RIGHT_PADDING

	local selectedPills = props.selectedPills or {}

	local stylePalette = useStyle()
	local theme = stylePalette.Theme

	local onNavFrameSizeChanged = React.useCallback(function(rbx)
		if scrollingFrameRef.current then
			scrollingFrameRef.current.CanvasSize = UDim2.new(0, rbx.AbsoluteSize.X, 1, 0)
		end
	end)

	local refCache = React.useRef({})
	local pillRefs = isRoactGamepadEnabled and RoactGamepad.useRefCache() or refCache.current

	local clearPills = React.useCallback(function()
		if props.onSelectionChanged then
			props.onSelectionChanged({})
		end
	end)

	local sortedPills = React.useMemo(function()
		local unselectedPills = {}
		for _, pill in props.pills do
			if not Cryo.List.find(selectedPills, pill) then
				table.insert(unselectedPills, pill)
			end
		end
		return Cryo.List.join(selectedPills, unselectedPills)
	end, { props.pills, selectedPills })

	local showClearButton = #selectedPills > 1

	local children: any = {
		ClearButton = showClearButton and React.createElement(IconButton, {
			layoutOrder = 1,
			size = UDim2.fromOffset(24, 24),
			iconSize = IconSize.Medium,
			icon = Images["icons/actions/reject"],
			onActivated = clearPills,
			key = "0",
			buttonRef = pillRefs[0],
			NextSelectionRight = pillRefs[1],
		}) or nil,
	}

	local allPillsLoading = props.isLoading

	for i, pill in sortedPills do
		local function onActivated()
			local wasSelected = Cryo.List.find(selectedPills, pill) ~= nil

			local newPills = if wasSelected
				then Cryo.List.removeValue(selectedPills, pill)
				else Cryo.List.join(selectedPills, { pill })

			if not wasSelected then
				scrollToStart()
			end

			if props.onSelectionChanged then
				props.onSelectionChanged(newPills)
			end
		end

		local isSelected = i <= #selectedPills

		if isSelected then
			allPillsLoading = false
		end

		if not isRoactGamepadEnabled then
			pillRefs[i] = pillRefs[i] or React.createRef()
		end

		children[i] = React.createElement(if isRoactGamepadEnabled then Focusable[Pill] else Pill, {
			layoutOrder = i + 1,
			key = tostring(i),
			text = pill,
			isSelected = isSelected,
			isLoading = props.isLoading and not isSelected,
			onActivated = onActivated,
			ref = pillRefs[i],
			NextSelectionLeft = if i > 1 or showClearButton then pillRefs[i - 1] else nil,
			NextSelectionRight = if i < #sortedPills then pillRefs[i + 1] else nil,
		})
	end

	if allPillsLoading and isGamepad and isRoactGamepadEnabled then
		-- If using gamepad navigation, create a dummy pill to hold focus
		-- for the brief time when no active pills are visible.
		-- Otherwise, this component may suddenly have no focusable children,
		-- causing gamepad focus to be lost completely.
		children[1] = React.createElement(Focusable[Pill], {
			layoutOrder = 2,
			key = "1",
			ref = pillRefs[1],
			text = "",
		})
	end

	local function getScrollingListChildren()
		return {
			SubNavFrame = React.createElement(FitFrameHorizontal, {
				height = UDim.new(1, 0),
				contentPadding = UDim.new(0, BUTTON_PADDING),
				margin = FitFrame.Rect.quad(0, rightPadding, 0, leftPadding),

				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				BackgroundTransparency = 1,
				[React.Change.AbsoluteSize] = onNavFrameSizeChanged,
			}, children),
		}
	end

	-- Need an actual array so buttonRefs can be iterated over (won't work with ref cache)
	local buttonRefs = {}
	for i = 1, #sortedPills do
		buttonRefs[i] = pillRefs[i]
	end

	return React.createElement(if isRoactGamepadEnabled then Focusable.Frame else "Frame", {
		Size = UDim2.new(1, 0, 0, PILL_GROUP_HEIGHT),
		BackgroundColor3 = theme.BackgroundDefault.Color,
		BackgroundTransparency = theme.BackgroundDefault.Transparency,
		BorderSizePixel = 0,
		LayoutOrder = props.layoutOrder,
		ref = props.forwardRef,
		NextSelectionUp = props.NextSelectionUp,
		NextSelectionDown = props.NextSelectionDown,
		defaultChild = if isRoactGamepadEnabled then pillRefs[1] else nil,
	}, {
		ScrollingList = React.createElement(ScrollingListWithArrowsAndGradient, {
			-- Purposely causing ScrollingListWithArrowsAndGradient to rerender when we are rerendered.
			getScollingListContent = getScrollingListChildren,
			listHeight = PILL_GROUP_HEIGHT,
			scrollingFrameRef = scrollingFrameRef,
			buttonRefs = buttonRefs,
			buttonPadding = BUTTON_PADDING,
			padOutsideEdges = false,
			hideGradient = true,
		}),
	})
end

return React.forwardRef(function(props, ref)
	return React.createElement(
		PillGroup,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)
