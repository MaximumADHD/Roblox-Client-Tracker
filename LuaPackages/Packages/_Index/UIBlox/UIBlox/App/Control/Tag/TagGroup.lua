--!strict
local TagRoot = script.Parent
local Control = TagRoot.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Tag = require(TagRoot.Tag)

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local t = require(Packages.t)
local RoactGamepad = require(Packages.RoactGamepad)
local Focusable = RoactGamepad.Focusable
local FitFrame = require(Packages.FitFrame)
local FitFrameHorizontal = FitFrame.FitFrameHorizontal

local IconSize = require(App.ImageSet.Enum.IconSize)
local Images = require(App.ImageSet.Images)

local useStyle = require(UIBlox.Core.Style.useStyle)
local IconButton = require(UIBlox.App.Button.IconButton)
local InputButton = require(UIBlox.Core.InputButton.InputButton)
local isCallable = require(UIBlox.Utility.isCallable)
local useInitializedValue = require(UIBlox.Utility.useInitializedValue)
local useIsGamepad = require(UIBlox.Utility.useIsGamepad)
local ScrollingListWithArrowsAndGradient = require(Control.HorizontalNav.ScrollingListWithArrowsAndGradient)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

-- Signature for callback invoked when tag selection changes
export type OnSelectionChanged = (selectedTags: { string }) -> ()

export type Props = {
	tags: { string },
	isLoading: boolean?,
	onSelectionChanged: OnSelectionChanged?,
	layoutOrder: number?,

	-- optional parameters for RoactGamepad
	NextSelectionLeft: any,
	NextSelectionRight: any,
	NextSelectionUp: any,
	NextSelectionDown: any,
	forwardRef: any,
}

local TAG_GROUP_HEIGHT = 52

local BUTTON_PADDING = 8

local function useRefCache()
	return useInitializedValue(RoactGamepad.createRefCache)
end

local function TagGroup(props: Props)
	local isGamepad = useIsGamepad()

	local scrollingFrameRef = React.useRef(nil)

	local function scrollToStart()
		local scrollingFrame = scrollingFrameRef.current
		if scrollingFrame then
			scrollingFrame:ScrollToTop()
		end
	end

	local selectedTags, setSelectedTags = React.useState({})

	local stylePalette = useStyle()
	local theme = stylePalette.Theme

	local onNavFrameSizeChanged = React.useCallback(function(rbx)
		if scrollingFrameRef.current then
			scrollingFrameRef.current.CanvasSize = UDim2.new(0, rbx.AbsoluteSize.X, 1, 0)
		end
	end)

	local tagRefs = useRefCache()

	local clearTags = React.useCallback(function()
		setSelectedTags({})
		if props.onSelectionChanged then
			props.onSelectionChanged({})
		end
	end)

	local sortedTags = React.useMemo(function()
		local unselectedTags = {}
		for _, tag in props.tags do
			if not Cryo.List.find(selectedTags, tag) then
				table.insert(unselectedTags, tag)
			end
		end
		return Cryo.List.join(selectedTags, unselectedTags)
	end, { props.tags, selectedTags })

	local showClearButton = #selectedTags > 1

	local children: any = {
		ClearButton = showClearButton and React.createElement(IconButton, {
			layoutOrder = 1,
			size = UDim2.fromOffset(24, 24),
			iconSize = IconSize.Medium,
			icon = Images["icons/actions/reject"],
			onActivated = clearTags,
			key = "0",
			buttonRef = tagRefs[0],
			NextSelectionRight = tagRefs[1],
		}) or nil,
	}
	local nextSelectionLeft = nil
	local nextSelectionRight = nil

	local allTagsLoading = props.isLoading

	for i, tag in sortedTags do
		local function onActivated()
			setSelectedTags(function(oldTags)
				local wasSelected = Cryo.List.find(oldTags, tag) ~= nil

				local newTags = if wasSelected
					then Cryo.List.removeValue(oldTags, tag)
					else Cryo.List.join(oldTags, { tag })

				if not wasSelected then
					scrollToStart()
				end

				if props.onSelectionChanged then
					props.onSelectionChanged(newTags)
				end
				return newTags
			end)
		end

		local isSelected = i <= #selectedTags

		if isSelected then
			allTagsLoading = false
		end

		children[i] = React.createElement(Focusable[Tag], {
			layoutOrder = i + 1,
			key = tostring(i),
			text = tag,
			isSelected = isSelected,
			isLoading = props.isLoading and not isSelected,
			ref = tagRefs[i],
			NextSelectionLeft = if i > 1 or showClearButton then tagRefs[i - 1] else nil,
			NextSelectionRight = if i < #sortedTags then tagRefs[i + 1] else nil,
			onActivated = onActivated,
		})
	end

	if allTagsLoading and isGamepad then
		-- If using gamepad navigation, create a dummy tag to hold focus
		-- for the brief time when no active tags are visible.
		-- Otherwise, this component may suddenly have no focusable children,
		-- causing gamepad focus to be lost completely.
		children[1] = React.createElement(Focusable[Tag], {
			layoutOrder = 2,
			key = "1",
			ref = tagRefs[1],
			text = "",
		})
	end

	local function getScrollingListChildren()
		return {
			SubNavFrame = React.createElement(FitFrameHorizontal, {
				height = UDim.new(1, 0),
				contentPadding = UDim.new(0, BUTTON_PADDING),
				margin = FitFrame.Rect.rectangle(15, 0),

				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				BackgroundTransparency = 1,
				[React.Change.AbsoluteSize] = onNavFrameSizeChanged,
			}, children),
		}
	end

	-- Need an actual array so buttonRefs can be iterated over (won't work with ref cache)
	local buttonRefs = {}
	for i = 1, #sortedTags do
		buttonRefs[i] = tagRefs[i]
	end

	return React.createElement(Focusable.Frame, {
		Size = UDim2.new(1, 0, 0, TAG_GROUP_HEIGHT),
		BackgroundColor3 = theme.BackgroundDefault.Color,
		BackgroundTransparency = theme.BackgroundDefault.Transparency,
		BorderSizePixel = 0,
		LayoutOrder = props.layoutOrder,
		ref = props.forwardRef,
		NextSelectionUp = props.NextSelectionUp,
		NextSelectionDown = props.NextSelectionDown,
		defaultChild = tagRefs[1],
	}, {
		ScrollingList = React.createElement(ScrollingListWithArrowsAndGradient, {
			-- Purposely causing ScrollingListWithArrowsAndGradient to rerender when we are rerendered.
			getScollingListContent = getScrollingListChildren,
			listHeight = TAG_GROUP_HEIGHT,
			scrollingFrameRef = scrollingFrameRef,
			buttonRefs = buttonRefs,
			buttonPadding = BUTTON_PADDING,
			padOutsideEdges = true,
			hideGradient = true,
		}),
	})
end

return React.forwardRef(function(props, ref)
	return React.createElement(
		TagGroup,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)
