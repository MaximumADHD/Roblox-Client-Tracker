local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetDetailsInformation = require(InspectAndBuyFolder.Actions.SetDetailsInformation)
local SetTryingOnInfo = require(InspectAndBuyFolder.Actions.SetTryingOnInfo)

local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local Theme = require(Modules.Settings.Theme)

local CloseButton = Roact.PureComponent:extend("CloseButton")

local BUTTON_SIZE = 26
local BUTTON_SIZE_MOBILE = 18

function CloseButton:render()
	local view = self.props.view
	local viewingDetails = self.props.detailsInformation.viewingDetails
	local closeDetails = self.props.closeDetails
	local setTryingOnInfo = self.props.setTryingOnInfo

	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local viewMapping = views[view]
			local positionOffset = UDim2.new(0, 0, 0, 0)
			local buttonSize = BUTTON_SIZE
			if Theme.UseInspectAndBuyPanel() then
				buttonSize = BUTTON_SIZE_MOBILE
				positionOffset = UDim2.new(0, viewMapping.BorderPaddingSize, 0, 0)
			end
			return Roact.createElement("ImageButton", {
				Size = UDim2.new(0, buttonSize, 0, buttonSize),
				Position = viewMapping.CloseButtonPosition :: UDim2 + positionOffset,
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
		end,
	})
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		view = state.view,
		detailsInformation = state.detailsInformation,
	}
end, function(dispatch)
	return {
		closeDetails = function()
			dispatch(SetDetailsInformation(false, nil))
		end,
		setTryingOnInfo = function(tryingOn, assetId)
			dispatch(SetTryingOnInfo(tryingOn, assetId))
		end,
	}
end)(CloseButton)
