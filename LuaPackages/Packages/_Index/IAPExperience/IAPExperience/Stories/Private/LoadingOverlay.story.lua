local PrivateRoot = script.Parent
local StoryRoot = PrivateRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local LoadingOverlay = require(IAPExperienceRoot.Generic.LoadingOverlay)
local LoadingOverlayState = require(IAPExperienceRoot.Generic.LoadingOverlayState)

local LoadingOverlayContainer = Roact.PureComponent:extend("LoadingOverlayContainer")

function LoadingOverlayContainer:init()
	self.screenRef = Roact.createRef()
	self.state = {
		screenSize = Vector2.new(0, 0),
	}

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize
			})
		end
	end
end

function LoadingOverlayContainer:render()
	local props = self.props
	
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		LoadingOverlay = Roact.createElement(LoadingOverlay, {
			loadingState = props.controls.loadingState,
		})
	})
end

return {
	controls = {
		loadingState = {
			LoadingOverlayState.Loading,
			LoadingOverlayState.PurchasingItem,
			LoadingOverlayState.PurchasingRobux,
			LoadingOverlayState.WaitingForPurchase,
			LoadingOverlayState.WaitingForRobux,
			LoadingOverlayState.None,
		 },
	},
	story = LoadingOverlayContainer
}
