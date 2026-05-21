local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Sheet = script:FindFirstAncestor("Sheet")
local SheetContext = require(Sheet.SheetContext)
local SheetType = require(Sheet.SheetType)

local CloseAffordance = require(Foundation.Components.CloseAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local View = require(Foundation.Components.View)

local Flags = require(Foundation.Utility.Flags)

export type SheetHeaderProps = {
	hasCloseAffordance: boolean?,
	children: React.ReactNode,
}

local function SheetHeader(props: SheetHeaderProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local sheet = React.useContext(SheetContext)

	local innerScrollY = sheet.innerScrollY
	local setHasHeader = sheet.setHasHeader
	local hasFullBleed = if Flags.FoundationSheetFullBleed then sheet.hasFullBleed else nil
	local sheetType = sheet.sheetType
	local closeSheet = sheet.closeSheet
	local testId = sheet.testId
	local closeAffordanceRef = sheet.closeAffordanceRef
	local contentStartRef = sheet.contentStartRef
	assert(innerScrollY and setHasHeader and closeSheet and testId, "SheetHeader must be used within a Sheet")

	local isBottomSheet = sheetType == SheetType.Bottom

	React.useEffect(function()
		setHasHeader(true)
		return function()
			setHasHeader(false)
		end
	end, {})

	local hasCloseAffordance = if props.hasCloseAffordance == nil then not isBottomSheet else props.hasCloseAffordance

	return React.createElement(View, {
		ZIndex = 2,
		tag = "col size-full-0 auto-y",
		testId = `{testId}--header`,
		ref = ref,
	}, {
		Content = React.createElement(View, {
			LayoutOrder = 1,
			tag = "row align-y-center items-center gap-small size-full-1400 auto-y margin-left-small padding-y-small padding-right-medium",
		}, {
			SubContent = React.createElement(View, {
				LayoutOrder = 1,
				tag = "row items-center shrink gap-small size-full-0 auto-y",
			}, props.children),
			CloseAffordance = if hasCloseAffordance
				then React.createElement(CloseAffordance, {
					onActivated = closeSheet,
					ref = closeAffordanceRef,
					NextSelectionDown = contentStartRef,
					variant = if Flags.FoundationSheetFullBleed and hasFullBleed
						then CloseAffordanceVariant.OverMedia
						else CloseAffordanceVariant.Utility,
					LayoutOrder = 2,
					testId = `{testId}--header--close-affordance`,
				})
				else nil,
		}),
		BottomBorder = React.createElement(View, {
			LayoutOrder = 2,
			backgroundStyle = innerScrollY:map(function(value: number)
				return {
					Color3 = tokens.Color.Stroke.Default.Color3,
					Transparency = math.lerp(
						1,
						tokens.Color.Stroke.Default.Transparency,
						math.clamp(value / tokens.Size.Size_1200, 0, 1)
					),
				}
			end),
			testId = `{testId}--header--bottom-border`,
			Size = UDim2.new(1, 0, 0, tokens.Stroke.Standard),
		}),
	})
end

return React.memo(React.forwardRef(SheetHeader))
