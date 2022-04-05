--!strict
local FFlagToolboxAssetCategorization2 = game:GetFastFlag("ToolboxAssetCategorization2")

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Swimlane = require(Plugin.Core.Components.Categorization.Swimlane)
local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)
local IconTile = require(Plugin.Core.Components.Categorization.IconTile)
local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)

local function createSwimlaneWrapper(props)
	return FFlagToolboxAssetCategorization2
			and Roact.createElement(ToolboxStoryWrapper, {}, {
				Example = Roact.createElement(Swimlane, props),
			})
		or CoreTestUtils.mustSetFlag("FFlagToolboxAssetCategorization2", true)
end

local function createIconTileData(key, caption)
	return {
		BackgroundColor = Color3.fromRGB(math.random(255), math.random(255), math.random(255)),
		Image = "rbxassetid://6002241241",
		Key = key,
		Title = caption,
	}
end

return {
	summary = "A section with a title, horizontal list, and optional 'see all' button",
	stories = {
		{
			name = "Simple example",
			summary = "a general example with data",
			story = createSwimlaneWrapper({
				Data = {
					"This",
					"is",
					"a",
					"test",
				},
				Total = 123,
				Title = "Just a bunch of Frames",
				OnClickSeeAll = function()
					print("See All")
				end,
				OnRenderItem = function(index, data)
					return Roact.createElement("TextLabel", {
						LayoutOrder = index,
						Size = UDim2.new(0, 100, 0, 100),
						Text = data,
					})
				end,
			}),
		},
		{
			name = "Icon Tiles",
			summary = "Tiles that represent products to buy",
			story = createSwimlaneWrapper({
				Data = {
					createIconTileData("1", "Blonde Hair"),
					createIconTileData("2", "Cool Blonde Hair"),
					createIconTileData("3", "Original Blonde"),
					createIconTileData("4", "Blonde"),
					createIconTileData("5", "Blondie"),
					createIconTileData("6", "Bulond"),
					createIconTileData("7", "Blund"),
					createIconTileData("8", "Real Blonde"),
					createIconTileData("9", "Blond"),
					createIconTileData("10", "Blonde"),
				},
				Title = "Check Out This Hair!",
				Total = 12341115,
				OnClickSeeAll = function()
					print("See All")
				end,
				OnRenderItem = function(index, data)
					return Roact.createElement(IconTile, {
						LayoutOrder = index,
						BackgroundColor = data.BackgroundColor,
						Image = data.Image,
						Key = data.Key,
						Title = data.Title,
						Size = UDim2.new(0, 90, 0, 105),
						OnClick = function(key)
							print(index, key)
						end,
					})
				end,
			}),
		},
	},
}
