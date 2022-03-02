local FFlagToolboxAssetGridRefactor5 = game:GetFastFlag("ToolboxAssetGridRefactor5")

local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)
local Rodux = require(Packages.Rodux)

local ContextServices = Framework.ContextServices
local MockPlugin = Framework.TestHelpers.Instances.MockPlugin

local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)

local Asset = require(Plugin.Core.Components.Asset.Asset)
local AssetPreviewWrapper = require(Plugin.Core.Components.Asset.Preview.AssetPreviewWrapper)

local MockWrapper = require(Plugin.Core.Util.MockWrapper)
local MockItems = require(Plugin.TestUtils.MockItems)
local TabTestWrapper = require(script.Parent.TabTestWrapper)
local ToolboxTestWrapper = require(script.Parent.ToolboxTestWrapper)

local Rhodium = require(Plugin.Packages.Dev.Rhodium)
local Element = Rhodium.Element

local TestHelpers = {}

local TEST_DELAY_SECONDS = 0.2

local TOOLBOX_COMPONENT_NAME = "ToolboxComponent"

function TestHelpers.getPathInTestToolbox(path)
	return string.format("game.CoreGui.ScreenGui.%s.%s", TOOLBOX_COMPONENT_NAME, path)
end

function TestHelpers.cleanupCategoryVerification()
	for i, child in ipairs(game.CoreGui:GetChildren()) do
		if child.Name == "CategoryVerification" then
			child:Destroy()
		end
	end
end

function TestHelpers.createTestAsset(container, name, asset, mockProps)
	local myAsset = asset or MockItems.getSimpleAsset("12345")
	local assetId = myAsset.Asset.Id

	mockProps = mockProps or {}
	if FFlagToolboxAssetGridRefactor5 then
		mockProps = Cryo.Dictionary.join(mockProps, {
			store = Rodux.Store.new(ToolboxReducer, {
				assets = {
					idToAssetMap = { [assetId] = myAsset },
				},
			}, { Rodux.thunkMiddleware }),
		})
	end

	local element = Roact.createElement(MockWrapper, mockProps or {}, {
		Asset = Roact.createElement(Asset, {
			asset = not FFlagToolboxAssetGridRefactor5 and myAsset or nil,
			assetId = FFlagToolboxAssetGridRefactor5 and assetId or nil,
			LayoutOrder = 1,
			Selected = false,
		}),
	})

	return Roact.mount(element, container or nil, name or "")
end

function TestHelpers.createTestTab(container, name, asset, mockProps)
	local element = Roact.createElement("ScreenGui", {
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Root = Roact.createElement("Frame", {
			Size = UDim2.new(0.5, 0, 0.5, 0),
			Position = UDim2.new(0, 0, 0, 0),
		}, {
			Components = Roact.createElement(MockWrapper, mockProps or {}, {
				Tab = Roact.createElement(TabTestWrapper, {}),
			}),
		}),
	})

	return Roact.mount(element, container or nil, name or "")
end

function TestHelpers.createTestToolbox(container, component, asset, mockProps)
	container.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	local element = Roact.createElement("Frame", {
		Size = UDim2.new(0.8, 0, 0.8, 0),
		Position = UDim2.new(0, 0, 0, 0),
	}, {
		Components = Roact.createElement(MockWrapper, mockProps or {
			pluginGui = container,
		}, {
			Toolbox = Roact.createElement(ToolboxTestWrapper, {}),
		}),
	})

	return Roact.mount(element, container or nil, TOOLBOX_COMPONENT_NAME)
end

function TestHelpers.cleanupTestToolbox()
	for i, container in ipairs(game.CoreGui:GetChildren()) do
		for j, child in ipairs(container:GetChildren()) do
			if child.Name == TOOLBOX_COMPONENT_NAME then
				container:Destroy()
				break
			end
		end
	end
end

function TestHelpers.createPreviewAsset(container, name, asset, mockProps)
	local element = Roact.createElement(MockWrapper, {}, {
		AssetPreviewWrapper = Roact.createElement(AssetPreviewWrapper, {
			assetData = MockItems.getPreviewAsset("112312321312"),
			previewFuncs = {},
		}),
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

function TestHelpers.typeInstanceWithXPath(XPath, str)
	local element = Element.new(XPath)
	element:sendText(str)
	TestHelpers.delay()

	return element
end

function TestHelpers.clickInstance(instance)
	local element = Element.new(instance)
	element:click()
	TestHelpers.delay()

	return element
end

function TestHelpers.mockMouse(mockPlugin)
	if not mockPlugin then
		mockPlugin = MockPlugin.new()
	end
	return ContextServices.Mouse.new(mockPlugin:GetMouse())
end

return TestHelpers
