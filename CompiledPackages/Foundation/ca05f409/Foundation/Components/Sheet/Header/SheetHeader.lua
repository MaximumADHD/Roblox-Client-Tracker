local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Sheet = script:FindFirstAncestor("Sheet")
local SheetContext = require(Sheet.SheetContext)
local SheetType = require(Sheet.SheetType)

local Flags = require(Foundation.Utility.Flags)

local CloseAffordance = require(Foundation.Components.CloseAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local View = require(Foundation.Components.View)

export type SheetHeaderProps = {
	hasCloseAffordance: boolean?,
	children: React.ReactNode,
}

local function SheetHeader(props: SheetHeaderProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local sheet = React.useContext(SheetContext)

	local innerScrollY = sheet.innerScrollY
	local setHasHeader = sheet.setHasHeader
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
		tag = "size-full-0 auto-y col",
		testId = `{testId}--header`,
		ref = ref,
	}, {
		Content = React.createElement(View, {
			LayoutOrder = 1,
			tag = {
				["auto-y row gap-small items-center"] = true,
				["size-full-1400 margin-left-small padding-y-small padding-right-medium align-y-center"] = Flags.FoundationSheetHeaderSmallerPadding,
				["size-full-0 margin-x-small margin-bottom-small"] = not Flags.FoundationSheetHeaderSmallerPadding,
				["padding-top-small"] = not Flags.FoundationSheetHeaderSmallerPadding and isBottomSheet,
				["margin-top-small"] = not Flags.FoundationSheetHeaderSmallerPadding and not isBottomSheet,
			},
		}, {
			SubContent = React.createElement(View, {
				LayoutOrder = 1,
				tag = "size-full-0 auto-y row gap-small items-center shrink",
			}, props.children),
			CloseAffordance = if hasCloseAffordance
				then React.createElement(CloseAffordance, {
					onActivated = closeSheet,
					ref = closeAffordanceRef,
					NextSelectionDown = contentStartRef,
					variant = CloseAffordanceVariant.Utility,
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
