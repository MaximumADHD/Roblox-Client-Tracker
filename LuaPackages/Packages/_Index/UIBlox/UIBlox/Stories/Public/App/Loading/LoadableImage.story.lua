local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local LoadableImage = require(Packages.UIBlox.App.Loading.LoadableImage)

local LoadableImageComponent = Roact.PureComponent:extend("LoadableImageComponent")

function LoadableImageComponent:init()
	self.state = {
		isSimulatingLoading = true,
	}

	self.simulateLoad = function()
		spawn(function()
			self:setState({
				isSimulatingLoading = true,
			})
			wait(1)
			self:setState({
				isSimulatingLoading = false,
			})
		end)
	end
end

function LoadableImageComponent:didMount()
	-- Simulate component load
	self.simulateLoad()
end

function LoadableImageComponent:render()
	local image
	local imageTransparentBackground
	local invalidContentId
	if not self.state.isSimulatingLoading then
		image = "rbxassetid://924320031"
		imageTransparentBackground = "rbxassetid://1028594"
		invalidContentId = "invalid-content-id"
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 10),
		}),
		ControlsFrame = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 50),
			LayoutOrder = 1,
			BackgroundTransparency = 1,
		}, {
			ReloadButton = Roact.createElement("TextButton", {
				LayoutOrder = 1,
				Size = UDim2.new(0, 100, 0, 48),
				Text = "Simulate Reload",
				[Roact.Event.Activated] = self.simulateLoad,
			}),
		}),
		Story = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 100),
			LayoutOrder = 0,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 20),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			LoadableImage = Roact.createElement(LoadableImage, {
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = 1,
				Image = image,
				LayoutOrder = 0,
				Size = UDim2.new(0, 100, 0, 100),
				useShimmerAnimationWhileLoading = true,
			}),

			LoadableImageTransparentBackground = Roact.createElement(LoadableImage, {
				Image = imageTransparentBackground,
				LayoutOrder = 1,
				Size = UDim2.new(0, 100, 0, 100),
				useShimmerAnimationWhileLoading = true,
			}),

			LoadableImageFailedState = Roact.createElement(LoadableImage, {
				Image = invalidContentId,
				LayoutOrder = 2,
				Size = UDim2.new(0, 100, 0, 100),
				useShimmerAnimationWhileLoading = true,
				showFailedStateWhenLoadingFailed = true,
			}),
		}),
	})
end

return LoadableImageComponent
