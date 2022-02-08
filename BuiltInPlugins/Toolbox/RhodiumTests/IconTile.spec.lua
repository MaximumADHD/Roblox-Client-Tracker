return function()
	local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization")
	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	if not FFlagToolboxAssetCategorization then
		return
	end

	local Plugin = script.Parent.Parent
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)
	local Cryo = require(Libs.Cryo)
	local Framework = require(Libs.Framework)

	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath
	local Element = Rhodium.Element
	local IconTile = require(Plugin.Core.Components.Categorization.IconTile)
	local makeTheme = require(Plugin.Core.Util.makeTheme)

	local ContextServices = Framework.ContextServices
	local ThemeSwitcher = Framework.Style.ThemeSwitcher

	local TestHelpers = require(script.Parent.Util.TestHelpers)

	local ICON_TILE_PATH = "game.CoreGui.ScreenGui.IconTile"

	local function mockContextServices(children)
		return ContextServices.provide({
			TestHelpers.mockMouse(),
			makeTheme(nil, ThemeSwitcher),
		}, children)
	end

	local function createIconTile(props)
		local element = mockContextServices({
			ScreenGui = Roact.createElement("ScreenGui", {}, {
				IconTile = Roact.createElement(IconTile, Cryo.Dictionary.join({
					BackgroundColor = Color3.new(1, 0, 0),
					Image = "rbxassetid://6002241241",
					Size = UDim2.new(0, 125, 0, 90),
					Title = "CATEGORY",
				}, props or {})),
			}),
		})
		return Roact.mount(element, game.CoreGui, "")
	end

	describe("IconTile", function()
		local instance

		afterEach(function()
			if instance then
			    Roact.unmount(instance)
			    instance = nil
			end
		end)

		it("should get instance", function()
			instance = createIconTile()
			local path = XPath.new(ICON_TILE_PATH)
			local componentInstance = Element.new(path)

			expect(componentInstance:getRbxInstance()).to.be.ok()
			expect(componentInstance:getAttribute("Name")).to.equal("IconTile")
		end)

		it("should pass the Key to the OnClick function", function()
			local updatedKey
			local key = "hello"
			instance = createIconTile({
				Key = key,
				OnClick = function(key) updatedKey = key end,
			})
			local path = XPath.new(ICON_TILE_PATH)

			TestHelpers.delay()
			TestHelpers.clickInstanceWithXPath(path)

			expect(updatedKey).to.equal(key)
		end)
	end)
end
