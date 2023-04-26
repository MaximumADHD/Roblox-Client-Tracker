local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local SceneView = RoactNavigation.SceneView
local SceneManagement = require(Packages.SceneManagement)
local SurfaceGuiWithAdornee = SceneManagement.SurfaceGuiWithAdornee
local Constants = require(ReactNavigationExtend.Views.Constants)
local TenFootUiCommon = require(Packages.TenFootUiCommon)

type Descriptor = TenFootUiCommon.Descriptor
type ScreenKind = TenFootUiCommon.ScreenKind

export type Props = {
	isVisible: boolean,
	descriptor: Descriptor,
	adorneeCFrame: CFrame?,
	groupTransparency: number,
	setAdornee: (Instance?) -> (),
	setSurfaceGui: (Instance?) -> ()?,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
	screenProps: { [any]: any }?,
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

	local screenKind: ScreenKind = descriptor.options.screenKind or "Default"
	local isVisible = props.isVisible

	local dims: Vector3, defaultCframe: CFrame = getScreenProps(screenKind)

	return React.createElement(SurfaceGuiWithAdornee, {
		adorneeSize = dims,
		adorneeCFrame = props.adorneeCFrame or defaultCframe,
		canvasSize = Constants.PageContentCanvasSize,
		alwaysOnTop = isVisible,
		isVisible = isVisible,
		name = descriptor.key,
		adorneeParent = props.adorneeParent,
		surfaceGuiParent = props.surfaceGuiParent,
		setAdornee = props.setAdornee,
		setSurfaceGui = props.setSurfaceGui,
		adorneeChildren = React.createElement("Attachment"),
		surfaceGuiChildren = React.createElement("CanvasGroup", {
			Name = "CanvasGroup",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			GroupTransparency = props.groupTransparency,
		}, {
			SceneView = React.createElement(SceneView, {
				component = descriptor.getComponent(),
				navigation = descriptor.navigation,
				screenProps = props.screenProps,
			}),
		}),
	})
end

return TenFootUiBaseViewCard
