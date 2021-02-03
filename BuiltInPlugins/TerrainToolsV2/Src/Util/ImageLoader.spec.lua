local ImageLoader = require(script.Parent.ImageLoader)

return function()
	local function createMockImageLoader(customOnImageLoaded)
		local imageLabels = {}

		local function createImageLabel(parent)
			local imageLabel = {
				Image = "",
				IsLoaded = false,
				Destroy = function() end,
			}
			table.insert(imageLabels, imageLabel)
			return imageLabel
		end

		local loadedImagesById = {}

		local function onImageLoaded(imageId)
			loadedImagesById[imageId] = true
			if customOnImageLoaded then
				customOnImageLoaded(imageId)
			end
		end

		local imageLoader = ImageLoader.new({
			dontPoll = true,
			createImageLabel = createImageLabel,
		})

		local conn = imageLoader.ImageLoaded:Connect(onImageLoaded)

		return imageLoader, conn, imageLabels, loadedImagesById
	end

	it("should load an image", function()
		local imageLoader, conn, imageLabels, loadedImagesById = createMockImageLoader()

		imageLoader:loadImage("foo")

		-- Check we've created an image label to do the loading
		expect(#imageLabels).to.equal(1)
		expect(imageLabels[1].Image).to.equal("foo")
		expect(loadedImagesById["foo"]).to.never.be.ok()

		-- Mark "foo" as loaded
		imageLabels[1].IsLoaded = true
		imageLoader:_checkImages()
		-- Need to explicitly clear IsLoaded, normally engine would handle this but we mock the behaviour
		imageLabels[1].IsLoaded = false
		expect(loadedImagesById["foo"]).to.equal(true)

		conn:Disconnect()
		imageLoader:destroy()
	end)

	it("should cache loaded images", function()
		local loadedImageId
		local function onImageLoaded(imageId)
			loadedImageId = imageId
		end

		local imageLoader, conn, imageLabels, loadedImagesById = createMockImageLoader(onImageLoaded)

		local alreadyLoaded = imageLoader:loadImage("foo")
		expect(alreadyLoaded).to.equal(false)
		alreadyLoaded = imageLoader:loadImage("bar")
		expect(alreadyLoaded).to.equal(false)

		-- Load "foo" but not "bar"
		imageLabels[1].IsLoaded = true
		imageLoader:_checkImages()
		imageLabels[1].IsLoaded = false

		expect(loadedImagesById["foo"]).to.equal(true)
		expect(loadedImagesById["bar"]).to.never.be.ok()

		expect(imageLoader:hasImageLoaded("foo")).to.equal(true)
		expect(imageLoader:hasImageLoaded("bar")).to.equal(false)

		expect(loadedImageId).to.equal("foo")
		loadedImageId = nil

		-- Trying to reload an image just returns true and immediately fires the event
		alreadyLoaded = imageLoader:loadImage("foo")
		expect(alreadyLoaded).to.equal(true)
		expect(loadedImageId).to.equal("foo")

		expect(imageLoader:hasImageLoaded("foo")).to.equal(true)
		expect(imageLoader:hasImageLoaded("bar")).to.equal(false)

		conn:Disconnect()
		imageLoader:destroy()
	end)

	it("should handle trying to load an image that's already loading", function()
		local imageLoader, conn, imageLabels, _ = createMockImageLoader()

		imageLoader:loadImage("foo")

		-- Trying to load the same image whilst its already being loaded should do nothing
		expect(#imageLabels).to.equal(1)
		expect(imageLabels[1].Image).to.equal("foo")
		imageLoader:loadImage("foo")
		expect(#imageLabels).to.equal(1)
		expect(imageLabels[1].Image).to.equal("foo")

		conn:Disconnect()
		imageLoader:destroy()
	end)

	it("should handle nil and empty string", function()
		local imageLoader, conn, imageLabels, _ = createMockImageLoader()

		expect(function()
			imageLoader:loadImage(nil)
		end).to.never.throw()
		expect(#imageLabels).to.equal(0)

		expect(function()
			imageLoader:loadImage("")
		end).to.never.throw()
		expect(#imageLabels).to.equal(0)

		conn:Disconnect()
		imageLoader:destroy()
	end)

	it("should handle multiple images loading in 1 step", function()
		local imageLoader, conn, imageLabels, loadedImagesById = createMockImageLoader()

		imageLoader:loadImage("a")
		imageLoader:loadImage("b")
		imageLoader:loadImage("c")
		imageLoader:loadImage("d")
		imageLoader:loadImage("e")

		expect(#imageLabels).to.equal(5)

		-- This should do nothing
		imageLoader:_checkImages()
		expect(#imageLabels).to.equal(5)
		expect((next(loadedImagesById))).to.never.be.ok()

		imageLabels[1].IsLoaded = true
		imageLabels[2].IsLoaded = true
		imageLoader:_checkImages()
		imageLabels[1].IsLoaded = false
		imageLabels[2].IsLoaded = false

		expect(#imageLabels).to.equal(5)
		expect(loadedImagesById["a"]).to.equal(true)
		expect(loadedImagesById["b"]).to.equal(true)
		expect(loadedImagesById["c"]).to.never.be.ok()
		expect(loadedImagesById["d"]).to.never.be.ok()
		expect(loadedImagesById["e"]).to.never.be.ok()


		imageLabels[3].IsLoaded = true
		imageLabels[4].IsLoaded = true
		imageLabels[5].IsLoaded = true
		imageLoader:_checkImages()
		imageLabels[3].IsLoaded = false
		imageLabels[4].IsLoaded = false
		imageLabels[5].IsLoaded = false

		expect(#imageLabels).to.equal(5)
		expect(loadedImagesById["a"]).to.equal(true)
		expect(loadedImagesById["b"]).to.equal(true)
		expect(loadedImagesById["c"]).to.equal(true)
		expect(loadedImagesById["d"]).to.equal(true)
		expect(loadedImagesById["e"]).to.equal(true)

		conn:Disconnect()
		imageLoader:destroy()
	end)

	it("should reuse labels in the pool", function()
		local imageLoader, conn, imageLabels, _ = createMockImageLoader()

		expect(#imageLabels).to.equal(0)
		imageLoader:loadImage("a")
		expect(#imageLabels).to.equal(1)

		imageLabels[1].IsLoaded = true
		imageLoader:_checkImages()
		imageLabels[1].IsLoaded = false

		expect(#imageLabels).to.equal(1)

		-- Reuse an ImageLabel from the pool
		imageLoader:loadImage("b")
		expect(#imageLabels).to.equal(1)

		-- Create a new label
		imageLoader:loadImage("c")
		expect(#imageLabels).to.equal(2)

		imageLabels[1].IsLoaded = true
		imageLabels[2].IsLoaded = true
		imageLoader:_checkImages()
		imageLabels[1].IsLoaded = false
		imageLabels[2].IsLoaded = false

		-- Reuse labels
		imageLoader:loadImage("d")
		expect(#imageLabels).to.equal(2)
		imageLoader:loadImage("e")
		expect(#imageLabels).to.equal(2)

		-- New label
		imageLoader:loadImage("f")
		expect(#imageLabels).to.equal(3)

		conn:Disconnect()
		imageLoader:destroy()
	end)
end
