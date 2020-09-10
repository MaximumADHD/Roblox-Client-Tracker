return function()
	local Loading = script.Parent
	local App = Loading.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local LoadableImage = require(Loading.LoadableImage)

	local ContentProviderContext = require(UIBlox.App.Context.ContentProvider)

	local function getMockedContentProvider()
		local MockContentProvider = {}
		MockContentProvider.__index = MockContentProvider
		function MockContentProvider.new()
			local self = {}

			setmetatable(self, {
				__index = MockContentProvider,
			})
			return self
		end

		function MockContentProvider:PreloadAsync(assets, callback)
			for _, value in ipairs(assets) do
				callback(value, Enum.AssetFetchStatus.Success)
			end
		end

		return MockContentProvider.new()
	end

	local testImage = "https://t5.rbxcdn.com/ed422c6fbb22280971cfb289f40ac814"
	local defaultLoadImage = "rbxasset://textures/ui/LuaApp/icons/ic-game.png"

	describe("LoadableImage", function()
		it("should create and destroy without errors", function()
			local element = mockStyleComponent({
				Image = Roact.createElement(LoadableImage, {
					Image = testImage,
					Size = UDim2.fromOffset(80, 80),
					Position = UDim2.fromOffset(50, 50),
					BackgroundColor3 = Color3.new(0, 0, 0),
					BackgroundTransparency = 0,
					loadingImage = defaultLoadImage,
				})
			})
			local instance = Roact.mount(element, nil, "LoadableImageSample")
			Roact.unmount(instance)
		end)
		it("should not set loading image if image is already in cache", function()
			local element = mockStyleComponent({
				ContentProviderProvider = Roact.createElement(ContentProviderContext.Provider, {
					value = getMockedContentProvider(),
				}, {
					Image = Roact.createElement(LoadableImage, {
						Image = testImage,
						Size = UDim2.fromOffset(80, 80),
						Position = UDim2.fromOffset(50, 50),
						BackgroundColor3 = Color3.new(0, 0, 0),
						BackgroundTransparency = 0,
						loadingImage = defaultLoadImage,
					})
				})
			})
			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container, "LoadableImageSample")
			expect(container.LoadableImageSample.Image).never.to.equal(defaultLoadImage)
			Roact.unmount(instance)
		end)
		it("should create and destroy on all non-default optional parameters without errors", function()
			local element = mockStyleComponent({
				ContentProviderProvider = Roact.createElement(ContentProviderContext.Provider, {
					value = getMockedContentProvider(),
				}, {
					Image = Roact.createElement(LoadableImage, {
						AnchorPoint = Vector2.new(0.5, 0),
						BackgroundColor3 = Color3.new(255, 0, 0),
						BackgroundTransparency = 0.5,
						Image = testImage,
						ImageRectOffset = Vector2.new(0, 0),
						ImageRectSize = Vector2.new(50, 50),
						LayoutOrder = 1,
						loadingImage = defaultLoadImage,
						MaxSize = Vector2.new(10, 10),
						MinSize = Vector2.new(1, 1),
						Position = UDim2.fromOffset(50, 50),
						Size = UDim2.fromOffset(80, 80),
						useShimmerAnimationWhileLoading = false,
						ZIndex = 1,
					})
				})
			})
			local instance = Roact.mount(element, nil, "LoadableImageSample")
			Roact.unmount(instance)
		end)
		it("should set failed image without errors", function()
			local element = mockStyleComponent({
				Image = Roact.createElement(LoadableImage, {
					Image = "invalid-image-url",
					Size = UDim2.fromOffset(80, 80),
					Position = UDim2.fromOffset(50, 50),
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
