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
local useBinding = require(UIBlox.Utility.useBinding)
local useInitializedValue = require(UIBlox.Utility.useInitializedValue)

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

local GRADIENT_SIZE = 50
local BUTTON_PADDING = 12

local GRADIENT_THRESHOLD = 20

local function renderGradient(theme, rotation)
	return React.createElement("UIGradient", {
		Rotation = rotation,
		Color = ColorSequence.new(theme.BackgroundDefault.Color),
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(0.666, 1),
			NumberSequenceKeypoint.new(1, 1),
		}),
	})
end

local function useRefCache()
	return useInitializedValue(RoactGamepad.createRefCache)
end

local function shouldShowGradientForScrollingFrame(scrollingFrame: ScrollingFrame)
	local absoluteWidth = scrollingFrame.AbsoluteSize.X
	local canvasWidth = scrollingFrame.CanvasSize.X.Offset
	local canvasPositionX = scrollingFrame.CanvasPosition.X

	local showLeft = false
	local showRight = false
	if absoluteWidth < canvasWidth then
		showLeft = canvasPositionX > GRADIENT_THRESHOLD
		showRight = canvasPositionX + absoluteWidth < canvasWidth - GRADIENT_THRESHOLD
	end

	return showLeft, showRight
end

local function TagGroup(props: Props)
	local gradientFrameRef = React.useRef(nil)
	local scrollingFrameRef = React.useRef(nil)

	local selectedTags, setSelectedTags = React.useState({})

	local stylePalette = useStyle()
	local theme = stylePalette.Theme

	local onNavFrameSizeChanged = React.useCallback(function(rbx)
		if scrollingFrameRef.current then
			scrollingFrameRef.current.CanvasSize = UDim2.new(0, rbx.AbsoluteSize.X, 1, 0)
		end
	end)

	local tagRefs = useRefCache()

	local showLeftGradientBinding, updateShowLeftGradient = useBinding(false)
	local showRightGradientBinding, updateShowRightGradient = useBinding(false)

	local checkShowGradient = React.useCallback(function(rbx)
		local showLeft, showRight = shouldShowGradientForScrollingFrame(rbx)
		updateShowLeftGradient(showLeft)
		updateShowRightGradient(showRight)
	end)

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
			ref = tagRefs[0],
			NextSelectionRight = tagRefs[1],
		}) or nil,
	}
	local nextSelectionLeft = nil
	local nextSelectionRight = nil

	for i, tag in sortedTags do
		local function onActivated()
			setSelectedTags(function(oldTags)
				local newTags = if Cryo.List.find(oldTags, tag)
					then Cryo.List.removeValue(oldTags, tag)
					else Cryo.List.join(oldTags, { tag })

				if props.onSelectionChanged then
					props.onSelectionChanged(newTags)
				end
				return newTags
			end)
		end

		local isSelected = i <= #selectedTags

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

	return React.createElement(Focusable.Frame, {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = theme.BackgroundDefault.Color,
		BackgroundTransparency = theme.BackgroundDefault.Transparency,
		BorderSizePixel = 0,
		LayoutOrder = props.layoutOrder,
		ref = props.forwardRef,
		NextSelectionUp = props.NextSelectionUp,
		NextSelectionDown = props.NextSelectionDown,
		defaultChild = tagRefs[1],
	}, {
		Left = React.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 0),
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(0, GRADIENT_SIZE, 1, 0),
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderSizePixel = 0,
			ZIndex = 2,
			Visible = showLeftGradientBinding,
		}, {
			Gradient = renderGradient(theme, 0),
		}),
		Right = React.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(0, GRADIENT_SIZE, 1, 0),
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderSizePixel = 0,
			ZIndex = 2,
			Visible = showRightGradientBinding,
		}, {
			Gradient = renderGradient(theme, 180),
		}),
		ScrollingList = React.createElement("ScrollingFrame", {
			Size = UDim2.fromScale(1, 1),
			ScrollBarThickness = 0,
			BackgroundTransparency = 1,
			ZIndex = 1,

			ElasticBehavior = Enum.ElasticBehavior.Always,
			ScrollingDirection = Enum.ScrollingDirection.X,

			[React.Change.AbsoluteSize] = checkShowGradient,
			[React.Change.CanvasSize] = checkShowGradient,
			[React.Change.CanvasPosition] = checkShowGradient,

			ref = scrollingFrameRef,
		}, {
			SubNavFrame = React.createElement(FitFrameHorizontal, {
				height = UDim.new(1, 0),
				contentPadding = UDim.new(0, BUTTON_PADDING),
				margin = FitFrame.Rect.rectangle(15, 0),

				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				BackgroundTransparency = 1,
				[React.Change.AbsoluteSize] = onNavFrameSizeChanged,
			}, children),
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
