local Plugin = script.Parent.Parent.Parent
local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Asset = require(Plugin.Core.Components.Asset.Asset)
local AssetPreviewWrapper = require(Plugin.Core.Components.Asset.Preview.AssetPreviewWrapper)

local MockWrapper = require(Plugin.Core.Util.MockWrapper)
local MockItems = require(script.Parent.MockItems)
local TabTestWrapper = require(script.Parent.TabTestWrapper)

local Rhodium = require(Plugin.Packages.Dev.Rhodium)
local Element = Rhodium.Element

local TestHelpers = {}

local TEST_DELAY_SECONDS = 0.1

function TestHelpers.createTestAsset(container, name, asset, mockProps)
	local element = Roact.createElement(MockWrapper, mockProps or {}, {
		Asset = Roact.createElement(Asset, {
			asset = asset or MockItems.getSimpleAsset("12345"),

			LayoutOrder = 1,
			isHovered = false,
			Selected = false,
		}),
	})

	return Roact.mount(element, container or nil, name or "")
end

function TestHelpers.createTestTab(container, name, asset, mockProps)

	local element = Roact.createElement("ScreenGui", {ZIndexBehavior = Enum.ZIndexBehavior.Sibling,},{
		Root = Roact.createElement("Frame", {Size = UDim2.new(0.5, 0, 0.5, 0),Position = UDim2.new(0, 0, 0, 0),},{
			Components = Roact.createElement(MockWrapper, mockProps or {}, {
				Tab = Roact.createElement(TabTestWrapper, {}),
			})
		})
	})

	return Roact.mount(element, container or nil, name or "")
end

function TestHelpers.createPreviewAsset(container, name, asset, mockProps)
	local element = Roact.createElement(MockWrapper, {}, {
		AssetPreviewWrapper = Roact.createElement(AssetPreviewWrapper, {
			assetData = MockItems.getPreviewAsset("12345"),
			previewFuncs = {}
		})
	})

	return Roact.mount(element, container or nil, name or "")
end

function TestHelpers.getDescendants(instance)
	return instance:GetDescendants()
end

function TestHelpers.getDescendant(instance, target)
	local descendants = TestHelpers.getDescendants(instance)
	local current = nil
	for _, descendant in pairs(descendants) do
		if descendant == target then
			current = descendant
		end
	end
	return current
end

function TestHelpers.delay()
	wait(TEST_DELAY_SECONDS)
end

function TestHelpers.clickInstanceWithXPath(XPath)
	local element = Element.new(XPath)
	element:click()
	TestHelpers.delay()

	return element
end

function TestHelpers.clickInstance(instance)
	local element = Element.new(instance)
	element:click()
	TestHelpers.delay()

	return element
end

return TestHelpers
