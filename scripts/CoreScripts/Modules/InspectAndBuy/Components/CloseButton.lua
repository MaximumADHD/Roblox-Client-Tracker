local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetDetailsInformation = require(InspectAndBuyFolder.Actions.SetDetailsInformation)
local SetTryingOnInfo = require(InspectAndBuyFolder.Actions.SetTryingOnInfo)

local CloseButton = Roact.PureComponent:extend("CloseButton")

function CloseButton:render()
	local view = self.props.view
	local viewMapping = self._context[view]
	local viewingDetails = self.props.detailsInformation.viewingDetails
	local closeDetails = self.props.closeDetails
	local setTryingOnInfo = self.props.setTryingOnInfo

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(0, 26, 0, 26),
		Position = viewMapping.CloseButtonPosition,
		BackgroundTransparency = 1,
		Selectable = false,
		Image = viewingDetails and "rbxasset://textures/ui/InspectMenu/caret_tail_left.png"
			or "rbxasset://textures/ui/InspectMenu/x.png",
		ZIndex = 2,
		[Roact.Event.Activated] = function()
			if viewingDetails then
				closeDetails()
				setTryingOnInfo(false, nil)
			else
				GuiService:CloseInspectMenu()
			end
		end,
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			view = state.view,
			detailsInformation = state.detailsInformation,
		}
	end,
	function(dispatch)
		return {
			closeDetails = function()
				dispatch(SetDetailsInformation(false, nil))
			end,
			setTryingOnInfo = function(tryingOn, assetId)
				dispatch(SetTryingOnInfo(tryingOn, assetId))
			end
		}
	end
)(CloseButton)