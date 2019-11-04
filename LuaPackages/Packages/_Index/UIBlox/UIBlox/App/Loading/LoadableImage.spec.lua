return function()
	local Loading = script.Parent
	local App = Loading.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local LoadableImage = require(Loading.LoadableImage)

	local testImage = "https://t5.rbxcdn.com/ed422c6fbb22280971cfb289f40ac814"
	local defaultLoadImage = "rbxasset://textures/ui/LuaApp/icons/ic-game.png"

	describe("LoadableImage", function()
		it("should create and destroy without errors", function()
			local element = mockStyleComponent({
				Image = Roact.createElement(LoadableImage, {
					Image = testImage,
					Size = UDim2.new(0, 80, 0, 80),
					Position = UDim2.new(0, 50, 0, 50),
					BackgroundColor3 = Color3.new(0, 0, 0),
					BackgroundTransparency = 0,
					loadingImage = defaultLoadImage,
				})
			})
			local instance = Roact.mount(element, nil, "LoadableImageSample")
			Roact.unmount(instance)
		end)
		it("should not set loading image if image is already in cache", function()
			LoadableImage._mockPreloadDone(testImage)
			local element = mockStyleComponent({
				Image = Roact.createElement(LoadableImage, {
					Image = testImage,
					Size = UDim2.new(0, 80, 0, 80),
					Position = UDim2.new(0, 50, 0, 50),
					BackgroundColor3 = Color3.new(0, 0, 0),
					BackgroundTransparency = 0,
					loadingImage = defaultLoadImage,
				})
			})
			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container, "LoadableImageSample")
			expect(container.LoadableImageSample.Image).never.to.equal(defaultLoadImage)
			Roact.unmount(instance)
		end)
		it("should create and destroy on all non-default optional parameters without errors", function()
			LoadableImage._mockPreloadDone(testImage)
			local element = mockStyleComponent({
				Image = Roact.createElement(LoadableImage, {
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundColor3 = Color3.new(255, 0, 0),
					BackgroundTransparency = 0.5,
					Image = testImage,
					LayoutOrder = 1,
					loadingImage = defaultLoadImage,
					MaxSize = Vector2.new(10, 10),
					MinSize = Vector2.new(1, 1),
					Position = UDim2.new(0, 50, 0, 50),
					Size = UDim2.new(0, 80, 0, 80),
					useShimmerAnimationWhileLoading = false,
					ZIndex = 1,
				})
			})
			local instance = Roact.mount(element, nil, "LoadableImageSample")
			Roact.unmount(instance)
		end)
		it("should set failed image without errors", function()
			local element = mockStyleComponent({
				Image = Roact.createElement(LoadableImage, {
					Image = "invalid-image-url",
					Size = UDim2.new(0, 80, 0, 80),
					Position = UDim2.new(0, 50, 0, 50),
					BackgroundColor3 = Color3.new(0, 0, 0),
					BackgroundTransparency = 0,
					loadingImage = defaultLoadImage,
					showFailedStateWhenLoadingFailed = true,
				})
			})
			local instance = Roact.mount(element, nil, "LoadableImageSample")
			Roact.unmount(instance)
		end)
	end)
end
