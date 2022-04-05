return function()
	local AvatarToolsShared = script.Parent.Parent.Parent
	local Packages = AvatarToolsShared.Parent
	local Roact = require(Packages.Roact)
	local Framework = require(Packages.Framework)

	local Pane = Framework.UI.Pane

	local TestRunner = require(AvatarToolsShared.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local Tile = require(script.Parent)
	local InstanceSelectorTile = require(script.Parent.InstanceSelectorTile)
	local AssetThumbnailTiles = require(script.Parent.AssetThumbnailTiles)

	local function createInstanceSelectorTile()
		return Roact.createElement(InstanceSelectorTile, {
			OnInstanceSelectorInvalidSelection = function() end,
			OnInstanceSelectorValidSelection = function() end,
			IsSelectedInstanceValid = function() end,
			OnClickAddNewInstance = function() end,
		})
	end

	local function createAssetThumbnailTiles()
		local children = AssetThumbnailTiles({
			DefaultThumbnail = "",
			AssetIds = {"{1}", "{2}", "{3}"},
			OnThumbnailClick = function(_, _) end,
			LayoutOrder = 1,
			SelectedTiles = {},
			AssetsInfo = {
				["{1}"] = {
					ThumbnailType = "",
					Name = "A",
				},
				["{2}"] = {
					ThumbnailType = "",
					Name = "B",
				},
				["{3}"] = {
					ThumbnailType = "",
					Name = "C",
				},
			}
		})

		return Roact.createElement(Pane, {}, children)
	end

	describe("Tile", function()
		it("should create and destroy without errors", function()
			runComponentTest(Roact.createElement(Tile, {
				OnClick = function()
				end,
				Text = "test"
			}))
		end)

		it("should render correctly", function ()
			runComponentTest(
				Roact.createElement(Tile, {
					OnClick = function()
					end,
					Text = "test"
				}),
				function(container)
					local frame = container:FindFirstChildOfClass("Frame")
					local contents = frame.Contents
					local decoration = frame.Decoration
					local textButton = frame.Contents.TextButton
					local imageFrame = frame.Contents.TextButton.ImageFrame
					local image = frame.Contents.TextButton.ImageFrame.Image

					expect(frame).to.be.ok()
					expect(contents).to.be.ok()
					expect(decoration).to.be.ok()
					expect(textButton).to.be.ok()
					expect(imageFrame).to.be.ok()
					expect(image).to.be.ok()
				end
			)
		end)
	end)

	describe("InstanceSelectorTile", function()
		it("should create and destroy without errors", function()
			runComponentTest(createInstanceSelectorTile())
		end)
	end)

	describe("AssetThumbnailTiles", function()
		it("should render proper amount of tiles", function()
			runComponentTest(
				createAssetThumbnailTiles(),
				function(container)
					local frame = container:FindFirstChildOfClass("Frame")

					local tile1 = frame:FindFirstChild("1")
					local tile2 = frame:FindFirstChild("2")
					local tile3 = frame:FindFirstChild("3")

					expect(frame).to.be.ok()
					expect(tile1).to.be.ok()
					expect(tile2).to.be.ok()
					expect(tile3).to.be.ok()
				end
			)
		end)
	end)
end