local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local Flags = require(Foundation.Utility.Flags)

local BottomSheet = require(script.Parent.BottomSheet)
local CenterSheet = require(script.Parent.CenterSheet)
local SideSheet = require(script.Parent.SideSheet)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local GuiService = require(Foundation.Utility.Wrappers).Services.GuiService
local DialogSize = require(Foundation.Enums.DialogSize)
local withDefaults = require(Foundation.Utility.withDefaults)
type DialogSize = DialogSize.DialogSize

local SheetTypes = require(script.Parent.Types)
type SheetRef = SheetTypes.SheetRef
export type SheetProps = SheetTypes.SheetProps

local defaultProps = {
	testId = "--foundation-sheet",
}

local function Sheet(sheetProps: SheetProps, ref: React.Ref<GuiObject>): React.ReactNode
	local props = withDefaults(sheetProps, defaultProps)
	local isOpen, setIsOpen = React.useState(if props.isOpen == nil then true else props.isOpen)
	local sheetRef = React.useRef(nil :: SheetRef?)
	local overlay = useOverlay()

	local isLandscape, setIsLandscape =
		React.useState(if overlay then overlay.AbsoluteSize.X > overlay.AbsoluteSize.Y else true)
	local displaySize, setDisplaySize = React.useState(GuiService.ViewportDisplaySize)

	React.useImperativeHandle(props.sheetRef, function()
		return sheetRef.current
	end, {})

	React.useEffect(function()
		if props.isOpen == false and sheetRef.current then
			sheetRef.current.close()
		elseif props.isOpen then
			setIsOpen(true)
		end
	end, { props.isOpen })

	React.useEffect(function()
		if not isOpen and props.isOpen then
			setIsOpen(true)
		end
	end, { isOpen })

	ReactUtils.useEventConnection(GuiService:GetPropertyChangedSignal("ViewportDisplaySize"), function()
		setDisplaySize(GuiService.ViewportDisplaySize)
	end, {})

	local useLandscapeEffect: typeof(React.useLayoutEffect) = if Flags.FoundationSheetFixLandscapeFlicker
		then React.useLayoutEffect
		else React.useEffect
	useLandscapeEffect(function()
		local connection
		if overlay then
			setIsLandscape(overlay.AbsoluteSize.X > overlay.AbsoluteSize.Y)
			connection = overlay:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				setIsLandscape(overlay.AbsoluteSize.X > overlay.AbsoluteSize.Y)
			end)
		end

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, { overlay })

	if not isOpen then
		return nil
	end

	local childProps: any = table.clone(props)
	childProps.isOpen = nil
	childProps.ref = ref
	childProps.sheetRef = sheetRef
	childProps.displaySize = displaySize
	childProps.onClose = function()
		if props.onClose then
			props.onClose()
		end
		setIsOpen(false)
	end

	if displaySize == Enum.DisplaySize.Small and not isLandscape then
		return React.createElement(BottomSheet, childProps)
	elseif
		props.preferCenterSheet
		and (if Flags.FoundationSheetNoCenterSheetSmallScreens then displaySize ~= Enum.DisplaySize.Small else true)
	then
		return React.createElement(CenterSheet, childProps)
	else
		return React.createElement(SideSheet, childProps)
	end
end

return React.memo(React.forwardRef(Sheet))
