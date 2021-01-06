local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local InitialView = require(InspectAndBuyFolder.Components.InitialView)
local AssetDetails = require(InspectAndBuyFolder.Components.AssetDetails)
local CloseButton = require(InspectAndBuyFolder.Components.CloseButton)
local NoInventoryNotice = require(InspectAndBuyFolder.Components.NoInventoryNotice)
local Colors = require(InspectAndBuyFolder.Colors)
local Constants = require(InspectAndBuyFolder.Constants)

local FFlagInspectAndBuyResetSelectedCoreObject = game:DefineFastFlag("InspectAndBuyResetSelectedCoreObject", false)

local Container = Roact.PureComponent:extend("Container")

function Container:init()
	self.frameRef = Roact.createRef()
	self.lastSavedSelectedCoreGui = nil
end

function Container:didMount()
	local gamepadEnabled = self.props.gamepadEnabled

	self.selectedCoreObjectChangedSignal = GuiService:GetPropertyChangedSignal('SelectedCoreObject'):connect(function()
		if self.props.visible and GuiService.SelectedCoreObject then
			self.lastSavedSelectedCoreGui = GuiService.SelectedCoreObject
		end
	end)

	if gamepadEnabled then
		GuiService:AddSelectionParent("InspectMenu", self.frameRef.current)
	end
end

function Container:didUpdate(prevProps)
	local visible = self.props.visible
	local gamepadEnabled = self.props.gamepadEnabled

	if visible and gamepadEnabled and self.frameRef.current then
		GuiService:RemoveSelectionGroup("InspectMenu")
		GuiService:AddSelectionParent("InspectMenu", self.frameRef.current)
		if self.lastSavedSelectedCoreGui then
			GuiService.SelectedCoreObject = self.lastSavedSelectedCoreGui
		end
	elseif (not gamepadEnabled and prevProps.gamepadEnabled) or not visible then
		GuiService:RemoveSelectionGroup("InspectMenu")
	end

	if visible and not prevProps.visible then
		GuiService.SelectedCoreObject = self.lastSavedSelectedCoreGui
	end
end

function Container:willUnmount()
	self.selectedCoreObjectChangedSignal:disconnect()
	GuiService:RemoveSelectionGroup("InspectMenu")

	if FFlagInspectAndBuyResetSelectedCoreObject then
		GuiService.SelectedCoreObject = nil
	end
end

function Container:render()
	local view = self.props.view
	local viewMapping = self._context[view]
	local localPlayerModel = self.props.localPlayerModel
	local visible = self.props.visible

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 1, 46),
		Position = UDim2.new(0, 0, 0, -46),
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

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			view = state.view,
			visible = state.visible,
			gamepadEnabled = state.gamepadEnabled,
		}
	end
)(Container)