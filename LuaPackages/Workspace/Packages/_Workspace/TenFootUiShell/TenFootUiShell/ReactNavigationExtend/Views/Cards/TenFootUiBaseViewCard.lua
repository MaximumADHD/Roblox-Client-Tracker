local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local SceneManagement = require(Packages.SceneManagement)
local SurfaceGuiWithAdornee = SceneManagement.SurfaceGuiWithAdornee
local Constants = require(ReactNavigationExtend.Views.Constants)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local SceneViewWithFocusRoot = require(script.Parent.SceneViewWithFocusRoot)

type Descriptor = TenFootUiCommon.Descriptor
type ScreenKind = TenFootUiCommon.ScreenKind

export type Props = {
	isVisible: boolean,
	descriptor: Descriptor,
	adorneeCFrame: CFrame?,
	adorneeAnchored: boolean,
	groupTransparency: number,
	setAdornee: (Instance?) -> (),
	setSurfaceGui: (Instance?) -> ()?,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
	screenProps: { [any]: any }?,
	attachmentRef: React.Ref<any>?,
}

local function getScreenProps(screenKind: ScreenKind)
	if screenKind == "FullScreen" :: ScreenKind then
		return Constants.GetFullScreenDims()
	else
		return Constants.GetPageContentDims()
	end
end

local function TenFootUiBaseViewCard(props: Props)
	local descriptor: Descriptor = props.descriptor
	local adorneeParent = props.adorneeParent

	local screenKind: ScreenKind = descriptor.options.screenKind or "Default"
	local isVisible = props.isVisible

	local dims: Vector3, defaultCframe: CFrame, screenCenterCframe: CFrame = getScreenProps(screenKind)
	local adorneeCFrame = props.adorneeCFrame or defaultCframe

	local intialAttachementOffset, setInitialAttachementOffset = React.useState(Vector3.zero)

	React.useEffect(function()
		-- set attachment position according to offset between defaultCframe and screenCenterCframe
		local offset = screenCenterCframe.Position - adorneeCFrame.Position
		if offset ~= Vector3.zero then
			setInitialAttachementOffset(offset)
		end
	end, {})

	return React.createElement(SurfaceGuiWithAdornee, {
		adorneeSize = dims,
		adorneeCFrame = adorneeCFrame,
		adorneeAnchored = props.adorneeAnchored,
		canvasSize = Constants.PAGE_CONTENT_CANVAS_SIZE,
		alwaysOnTop = isVisible,
		isVisible = isVisible,
		name = descriptor.key,
		adorneeParent = adorneeParent,
		surfaceGuiParent = props.surfaceGuiParent,
		setAdornee = props.setAdornee,
		setSurfaceGui = props.setSurfaceGui,
		adorneeChildren = React.createElement("Attachment", {
			ref = props.attachmentRef,
			Name = string.format("%s_Attachment", descriptor.key),
			Position = intialAttachementOffset,
		}),
		surfaceGuiChildren = React.createElement("CanvasGroup", {
			Name = "CanvasGroup",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			GroupTransparency = props.groupTransparency,
		}, {
			SceneView = React.createElement(SceneViewWithFocusRoot, {
				component = descriptor.getComponent(),
				navigation = descriptor.navigation,
				screenProps = props.screenProps,
			}),
		}),
	})
end

return TenFootUiBaseViewCard
