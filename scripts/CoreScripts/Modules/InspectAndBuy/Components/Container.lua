local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local InitialView = require(InspectAndBuyFolder.Components.InitialView)
local AssetDetails = require(InspectAndBuyFolder.Components.AssetDetails)
local CloseButton = require(InspectAndBuyFolder.Components.CloseButton)
local Overlay = require(InspectAndBuyFolder.Components.Overlay)
local NoInventoryNotice = require(InspectAndBuyFolder.Components.NoInventoryNotice)
local Colors = require(InspectAndBuyFolder.Colors)
local Constants = require(InspectAndBuyFolder.Constants)

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local Theme = require(Modules.Settings.Theme)
local TopBarConstants = require(Modules.TopBar.Constants)

local screenSideOffset = TopBarConstants.ScreenSideOffset
local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)

local FFlagAttributionInInspectAndBuy = require(InspectAndBuyFolder.Flags.FFlagAttributionInInspectAndBuy)

local Container = Roact.PureComponent:extend("Container")

function Container:init()
	self.frameRef = Roact.createRef()
	self.lastSavedSelectedCoreGui = nil
end

function Container:didMount()
	local gamepadEnabled = self.props.gamepadEnabled

	self.selectedCoreObjectChangedSignal = GuiService:GetPropertyChangedSignal('SelectedCoreObject'):Connect(function()
		if self.props.visible and GuiService.SelectedCoreObject then
			self.lastSavedSelectedCoreGui = GuiService.SelectedCoreObject
		end
	end)

	if gamepadEnabled then
		-- AddSelectionParent is deprecated
		(GuiService :: any):AddSelectionParent("InspectMenu", self.frameRef.current)
	end
end

function Container:didUpdate(prevProps)
	local visible = self.props.visible
	local gamepadEnabled = self.props.gamepadEnabled

	if visible and gamepadEnabled and self.frameRef.current then
		(GuiService :: any):RemoveSelectionGroup("InspectMenu")
		-- AddSelectionParent is deprecated
		;(GuiService :: any):AddSelectionParent("InspectMenu", self.frameRef.current)
		if self.lastSavedSelectedCoreGui then
			GuiService.SelectedCoreObject = self.lastSavedSelectedCoreGui
		end
	elseif (not gamepadEnabled and prevProps.gamepadEnabled) or not visible then
		-- AddSelectionParent/RemoveSelectionGroup is deprecated
		(GuiService :: any):RemoveSelectionGroup("InspectMenu")
	end

	if visible and not prevProps.visible then
		GuiService.SelectedCoreObject = self.lastSavedSelectedCoreGui
	end
end

function Container:willUnmount()
	self.selectedCoreObjectChangedSignal:disconnect()
	-- AddSelectionParent/RemoveSelectionGroup is deprecated
	;(GuiService :: any):RemoveSelectionGroup("InspectMenu")
	GuiService.SelectedCoreObject = nil
end

function Container:render()
	local view = self.props.view
	local localPlayerModel = self.props.localPlayerModel
	local visible = self.props.visible
	local panelLayout = Theme.UseInspectAndBuyPanel()
	local topBarHeight = if Theme.UIBloxThemeEnabled then TopBarConstants.TopBarHeight else 46

	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local viewMapping = views[view]
			return Roact.createElement("ImageButton", {
				Size = UDim2.new(
					1,
					if panelLayout then screenSideOffset * -2 else 0,
					1,
					if panelLayout then Theme.DefaultCornerRadius.Offset else topBarHeight
				),
				Position = UDim2.new(
					0,
					if panelLayout then screenSideOffset else 0,
					0,
					if panelLayout then 0 else -topBarHeight
				),
				BackgroundColor3 = viewMapping.ContainerBackgroundColor,
				BackgroundTransparency = viewMapping.ContainerBackgroundTransparency,
				Visible = visible,
				Selectable = false,
				AutoButtonColor = false,
				AutoLocalize = false,
				[Roact.Event.Activated] = function()
					if view == Constants.View.Wide then
						GuiService:CloseInspectMenu()
					end
				end,
			}, {
				UICorner = if panelLayout
					then Roact.createElement("UICorner", {
						CornerRadius = Theme.DefaultCornerRadius,
					})
					else nil,
				Overlay = if FFlagAttributionInInspectAndBuy then Roact.createElement(Overlay) else nil,
				MainContainer = Roact.createElement("ImageButton", {
					AnchorPoint = viewMapping.ContainerAnchorPoint,
					Size = viewMapping.ContainerSize,
					Position = viewMapping.ContainerPosition,
					BackgroundColor3 = Colors.Carbon,
					BorderSizePixel = 0,
					Active = true,
					AutoButtonColor = false,
					Selectable = false,
					[Roact.Ref] = self.frameRef,
				}, {
					AspectRatioConstraint = viewMapping.UseContainerAspectRatio and Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = viewMapping.ContainerAspectRatio,
					}),
					CloseButton = Roact.createElement(CloseButton),
					InitialView = Roact.createElement(InitialView),
					AssetDetails = Roact.createElement(AssetDetails, {
						localPlayerModel = localPlayerModel,
					}),
					NoInventoryNotice = Roact.createElement(NoInventoryNotice),
				})
			})
		end
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			view = state.view,
			visible = state.visible,
			gamepadEnabled = state.gamepadEnabled,
		}
	end
)(Container)
