return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local Constants = require(Plugin.Core.Util.Constants)
	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local Urls = require(Plugin.Core.Util.Urls)

	local AssetIcon = require(Plugin.Core.Components.Asset.AssetIcon)
	local ImageWithDefault = require(Plugin.Core.Components.ImageWithDefault)

	local assetId = 1234567890

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			AssetIcon = Roact.createElement(AssetIcon, {
				assetId = assetId,
				isEndorsed = false,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should have the correct image", function()
		ImageWithDefault.mockImage(Urls.constructAssetThumbnailUrl(assetId,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE))

		local element = Roact.createElement(MockWrapper, {}, {
			AssetIcon = Roact.createElement(AssetIcon, {
				assetId = assetId,
				isEndorsed = false,
			}),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "AssetIcon")

		local assetImage = container:FindFirstChild("AssetImage", true)
		expect(assetImage.Image:match("id=" .. assetId)).to.be.ok()

		Roact.unmount(instance)
	end)

	-- TODO CLIDEVSRVS-1687: Either move this test to Types/Background or modify this to dispatch a store action that changes the background
	--[[
	it("should have the correct background", function()
		local backgrounds = {
			{
				Image = "",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			},
			{
				Image = "",
				BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			},
			{
				Image = Images.NO_BACKGROUND_ICON,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			},
		}

		for index, backgroundDetails in ipairs(backgrounds) do
			local element = Roact.createElement(MockWrapper, {}, {
				AssetIcon = Roact.createElement(AssetIcon, {
					assetId = assetId,
					backgroundIndex = index,
					isEndorsed = false,
				}),
			})

			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container, "AssetIcon")

			local background = container.AssetIcon
			expect(background.Image).to.equal(backgroundDetails.Image)
			expect(background.BackgroundColor3).to.equal(backgroundDetails.BackgroundColor3)

			Roact.unmount(instance)
		end
	end)
	]]

	it("should have or not have the endorsed badge", function()
		for _, isEndorsed in ipairs({true, false}) do
			local element = Roact.createElement(MockWrapper, {}, {
				AssetIcon = Roact.createElement(AssetIcon, {
					assetId = assetId,
					isEndorsed = isEndorsed,
				}),
			})

			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container, "AssetIcon")

			local assetIcon = container.AssetIcon
			local badge = assetIcon:FindFirstChild("Badge")
			if isEndorsed then
				expect(badge).to.be.ok()
			else
				expect(badge).never.to.be.ok()
			end
			Roact.unmount(instance)
		end
	end)
end
