local LoadingRoot = script.Parent.Parent
local UIBloxRoot = LoadingRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)

local StyleProvider = require(UIBloxRoot.Style.StyleProvider)
local StyleRoot = UIBloxRoot.Style
local testStyle = require(StyleRoot.Validator.TestStyle)
local ImageSetProvider = require(UIBloxRoot.ImageSet.ImageSetProvider)
local LoadableImage = require(LoadingRoot.LoadableImage)

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
	if not self.state.isSimulatingLoading then
		image = "rbxassetid://924320031"
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	},
	{
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
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
		ReloadButton = Roact.createElement("TextButton", {
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			LayoutOrder = 1,
			Size = UDim2.new(0, 100, 0, 30),
			Text = "Simulate Reload",
			[Roact.Event.Activated] = function() self.simulateLoad() end,
		}),
	})
end

return function(target)
	local styleProvider = Roact.createElement(StyleProvider, {
		style = testStyle,
	}, {
		Roact.createElement(ImageSetProvider, {
			imageSetData = {},
		}, {
			Roact.createElement(LoadableImageComponent)
		})
	})
	local handle = Roact.mount(styleProvider, target, "LoadableImage")
	return function()
		Roact.unmount(handle)
	end
end