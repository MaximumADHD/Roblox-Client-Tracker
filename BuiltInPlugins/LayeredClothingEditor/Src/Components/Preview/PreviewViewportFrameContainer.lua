--[[
	Main frame containing Preview components

	Required Props:
		UDim2 Size: size of the frame
		table UserAddedAssets: the table of assets added by the user
		callback UpdateUserAddedAssets: function called when user added assets are changed

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number LayoutOrder: render order of component in layout
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local FFlagEnablePreviewDockWidget = require(Plugin.Src.Flags.GetFFlagEnablePreviewDockWidget)()

local SetDocked = require(Plugin.Src.Actions.SetDocked)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator
local Typecheck = Util.Typecheck

local UI = Framework.UI
local Pane = UI.Pane

local Components = AvatarToolsShared.Components
local PreviewDockWidget = Components.PreviewDockWidget
local PreviewViewportFrame = Components.PreviewViewportFrame

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local PreviewingInfo = AccessoryAndBodyToolSharedUtil.PreviewingInfo

local PreviewViewportFrameContainer = Roact.PureComponent:extend("PreviewViewportFrameContainer")
Typecheck.wrap(PreviewViewportFrameContainer, script)

function PreviewViewportFrameContainer:init()
	self.onPoppedOut = function()
		self.props.SetDocked(false)
	end

	self.onWidgetClosed = function()
		self.props.SetDocked(true)
	end
end

function PreviewViewportFrameContainer:render()
	if not FFlagEnablePreviewDockWidget then
		return nil
	end

	local props = self.props
	local docked = props.Docked
	local setDocked = props.SetDocked
    local layoutOrder = props.LayoutOrder
	local style = props.Stylizer

	local viewportProps = {}

	if docked then
		viewportProps.ShowPopoutButton = docked
		viewportProps.OnPopoutClicked = self.onPoppedOut
		return Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, style.PreviewViewportFrameHeight),
			LayoutOrder = layoutOrder,
		}, {
			PreviewViewportFrame = Roact.createElement(PreviewViewportFrame, viewportProps)
		})
	else
		viewportProps.OnClose = self.onWidgetClosed
		return Roact.createElement(PreviewDockWidget, viewportProps)
	end
end

PreviewViewportFrameContainer = withContext({
	Stylizer = ContextServices.Stylizer,
})(PreviewViewportFrameContainer)

local function mapStateToProps(state, props)
	local previewStatus = state.previewStatus
	local animation = state.animation

	return {
		Docked = previewStatus.docked,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetDocked = function(docked)
			dispatch(SetDocked(docked))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PreviewViewportFrameContainer)
