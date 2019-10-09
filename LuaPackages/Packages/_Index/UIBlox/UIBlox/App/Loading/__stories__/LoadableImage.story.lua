local Loading = script.Parent.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local UIBloxStyle = require(Packages.UIBloxResources.UIBloxStyle)

local LoadableImage = require(Loading.LoadableImage)
local StyleProvider = require(UIBlox.Style.StyleProvider)
local withStyle = require(UIBlox.Style.withStyle)

local LoadableImageComponent = Roact.PureComponent:extend("LoadableImageComponent")

function LoadableImageComponent:init()
	self.state = {
		isSimulatingLoading = true
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

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.BackgroundDefault.Color,
			BackgroundTransparency = theme.BackgroundDefault.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 20),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			LoadableImages = Roact.createElement("Frame", {
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
			ReloadButton = Roact.createElement("TextButton", {
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				LayoutOrder = 1,
				Size = UDim2.new(0, 100, 0, 30),
				Text = "Simulate Reload",
				[Roact.Event.Activated] = self.simulateLoad,
			}),
		})
	end)
end

return function(target)
	local styleProvider = Roact.createElement(StyleProvider, {
		style = UIBloxStyle,
	}, {
		Roact.createElement(LoadableImageComponent)
	})
	local handle = Roact.mount(styleProvider, target, "LoadableImage")
	return function()
		Roact.unmount(handle)
	end
end