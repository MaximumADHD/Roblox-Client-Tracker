local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local Gradient = require(Foundation.Components.Gradient)
local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local withDefaults = require(Foundation.Utility.withDefaults)

local Sheet = script:FindFirstAncestor("Sheet")
local SheetContext = require(Sheet.SheetContext)

type Bindable<T> = Types.Bindable<T>
type AspectRatio = Types.AspectRatio
type ColorStyle = Types.ColorStyle

export type SheetFullBleedProps = {
	media: Bindable<string>,
	mediaStyle: ColorStyle?,
	backgroundStyle: ColorStyle?,
	height: UDim?,
	aspectRatio: AspectRatio?,
	sticky: boolean?,
	children: React.ReactNode?,
}

local defaultProps = {
	height = UDim.new(1, 0),
	sticky = false,
}

local function SheetFullBleed(fullBleedProps: SheetFullBleedProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(fullBleedProps, defaultProps)
	local sheet = React.useContext(SheetContext)

	local setFullBleedHeight = sheet.setFullBleedHeight
	local fullBleedHeight = sheet.fullBleedHeight
	local innerScrollY = sheet.innerScrollY
	local hasHeader = sheet.hasHeader
	local hasRadius = sheet.hasRadius
	local testId = sheet.testId
	assert(setFullBleedHeight and hasHeader and testId, "SheetFullBleed must be used within a Sheet")

	React.useEffect(function()
		assert(
			not (props.sticky and hasHeader:getValue()),
			"Sheet.FullBleed with sticky=true is unsupported when used with Sheet.Header"
		)
	end, { props.sticky, hasHeader } :: { unknown })

	local onAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		setFullBleedHeight(rbx.AbsoluteSize.Y)
	end, {})

	React.useEffect(function()
		return function()
			setFullBleedHeight(0)
		end
	end, {})

	local imageSize = UDim2.new(1, 0, props.height.Scale, props.height.Offset)

	-- Sticky: in-flow, static size.
	-- Non-sticky: out of flow (Folder), shrinks 1:1 with scroll.
	local wrapperSize: Bindable<UDim2>?
	if props.sticky then
		wrapperSize = imageSize
	elseif innerScrollY and fullBleedHeight then
		wrapperSize = React.joinBindings({
			scrollY = innerScrollY,
			height = fullBleedHeight,
		}):map(function(values: { scrollY: number, height: number })
			if values.height == 0 then
				-- without this, an engine bug(?) means the content images never get their height set
				return UDim2.fromScale(1, 1)
			end
			local newHeight = math.max(0, values.height - values.scrollY)
			return UDim2.new(1, 0, 0, newHeight)
		end)
	end

	local fullBleedContent = {
		-- When the sheet has rounded corners, use dual-image gradient mask
		-- to simulate rounded top corners (UICorner doesn't clip children).
		RoundedCorners = if hasRadius
			then React.createElement(Image, {
				Image = props.media,
				imageStyle = props.mediaStyle,
				backgroundStyle = props.backgroundStyle,
				aspectRatio = props.aspectRatio,
				tag = "radius-large",
				Size = imageSize,
				testId = `{testId}--full-bleed--rounded-corners`,
				ZIndex = 1,
			})
			else nil,
		Image = React.createElement(
			Image,
			{
				Image = props.media,
				imageStyle = props.mediaStyle,
				backgroundStyle = props.backgroundStyle,
				aspectRatio = props.aspectRatio,
				-- We don't need to track the size of the image if it's sticky,
				onAbsoluteSizeChanged = if not props.sticky then onAbsoluteSizeChanged else nil,
				Size = imageSize,
				ZIndex = 0,
			},
			if hasRadius
				then {
					TransparencyGradient = React.createElement(Gradient, {
						fillDirection = Enum.FillDirection.Vertical,
						top = false,
					}),
				}
				else nil
		),
		Content = if props.children
			then React.createElement(View, {
				aspectRatio = props.aspectRatio,
				Size = imageSize,
				ZIndex = 2,
			}, props.children)
			else nil,
	}

	local fullBleedContainer = React.createElement(
		View,
		{
			Size = wrapperSize,
			aspectRatio = if props.sticky then props.aspectRatio else nil,
			LayoutOrder = if props.sticky then Constants.MIN_LAYOUT_ORDER else nil,
			ClipsDescendants = true,
			ZIndex = 2,
			testId = `{testId}--full-bleed`,
			ref = ref,
		},
		if not props.sticky and props.aspectRatio
			-- When not sticky with an aspect ratio, the children can get shrunk by the aspect ratio
			-- because the main wrapper height shrinks on scroll. This view fixes that by giving ample height.
			then React.createElement(View, {
				Size = UDim2.new(1, 0, 0, 9999),
				aspectRatio = props.aspectRatio,
			}, fullBleedContent)
			else fullBleedContent
	)

	-- When not sticky, wrap in a Folder to break out of UIListLayout.
	-- The ScrollView adds a spacer via fullBleedHeight from context.
	if not props.sticky then
		return React.createElement("Folder", nil, fullBleedContainer)
	end

	return fullBleedContainer
end

return React.memo(React.forwardRef(SheetFullBleed))
