return function()
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local AssetDetailBottomBar = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.AssetDetailBottomBar)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)
	local UIBloxConfig = require(Modules.UIBloxInGameConfig)


	local wrappedComponent = withInGameMenuV3Providers(AssetDetailBottomBar)

	local getInitState = function(owned, price, isForSale: boolean?, bundlesAssetIsIn: any)
		return {
			inspectAndBuy = {
				SelectedItem = {
					owned = owned,
					price = price,
					isForSale = if isForSale ~= nil then isForSale else true,
					bundlesAssetIsIn = bundlesAssetIsIn or {},
				},
				Bundles = {
					["123"] = {
						owned = false,
						price = 999,
						isForSale = true
					}
				}
			},
			screenSize = Vector2.new(500, 500),
		}
	end

	local buttonContentPath
	if UIBloxConfig.enableActionBarLayoutFix then
		buttonContentPath = "ActionBar.Button3.Icon.ButtonContent"
	else
		buttonContentPath = "ActionBar.3.1.ButtonContent"
	end

	if UIBloxConfig.genericButtonInputChanges then
		buttonContentPath = buttonContentPath .. ".ButtonMiddleContent"
	end

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		describe("AssetDetailBottomBar", function()
			it("should mount", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, getInitState(false, false), nil)
			end)

			it("should display all buttons in the bottom bar", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local moreButtonPath = path:cat(XPath.new(UIBloxConfig.enableActionBarLayoutFix and "ActionBar.Button1.Icon" or "ActionBar.1.1.imageLabel"))
					local moreButton = Element.new(moreButtonPath)
					expect(moreButton:waitForRbxInstance(1)).to.be.ok()

					local tryOnButtonPath = path:cat(XPath.new(UIBloxConfig.enableActionBarLayoutFix and "ActionBar.Button2.Icon" or "ActionBar.2.1.imageLabel"))
					local tryOnButton = Element.new(tryOnButtonPath)
					expect(tryOnButton:waitForRbxInstance(1)).to.be.ok()

					local actionButtonPath = path:cat(XPath.new(UIBloxConfig.enableActionBarLayoutFix and "ActionBar.Button3.Icon" or "ActionBar.3.1.imageLabel"))
					local actionButton = Element.new(actionButtonPath)
					expect(actionButton:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, getInitState(false, false), nil)
			end)

			it("should display price and icon when not owned", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local textPath = path:cat(XPath.new(buttonContentPath .. ".Text"))
					local text = Element.new(textPath)
					expect(text:waitForRbxInstance(1)).to.be.ok()
					expect(text:getAttribute("Text")).to.equal("100")

					local iconPath = path:cat(XPath.new(buttonContentPath .. ".Icon"))
					local icon = Element.new(iconPath)
					expect(icon:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, getInitState(false, 100), nil)
			end)

			it("should display no text and icon when owned", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local textPath = path:cat(XPath.new(buttonContentPath .. ".Text"))
					local text = Element.new(textPath)
					expect(text:waitForRbxInstance(1)).to.be.ok()
					expect(text:getAttribute("Text")).to.equal("")

					local iconPath = path:cat(XPath.new(buttonContentPath .. ".Icon"))
					local icon = Element.new(iconPath)
					expect(icon:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, getInitState(true, 100), nil)
			end)

			it("should display free when price is 0 and not owned and no icon", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local textPath = path:cat(XPath.new(buttonContentPath .. ".Text"))
					local text = Element.new(textPath)
					expect(text:waitForRbxInstance(1)).to.be.ok()
					expect(text:getAttribute("Text")).to.equal("Free")

					local iconPath = path:cat(XPath.new(buttonContentPath .. ".Icon"))
					local icon = Element.new(iconPath)
					expect(icon:waitForRbxInstance(1)).to.never.be.ok()
				end,
				wrappedComponent, Reducer, getInitState(false, 0), nil)
			end)

			it("should display bundle info if asset is part of bundle", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local textPath = path:cat(XPath.new(buttonContentPath .. ".Text"))
					local text = Element.new(textPath)
					expect(text:waitForRbxInstance(1)).to.be.ok()
					expect(text:getAttribute("Text")).to.equal("999")

					local iconPath = path:cat(XPath.new(buttonContentPath .. ".Icon"))
					local icon = Element.new(iconPath)
					expect(icon:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, getInitState(false, 0, false, {"123"}), nil)
			end)
		end)
	end
end
