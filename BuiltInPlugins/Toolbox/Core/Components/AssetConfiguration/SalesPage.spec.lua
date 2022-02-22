return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local AssetConfigTheme = require(Plugin.Core.Util.AssetConfigTheme)
	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)
	local SalesPage = require(Plugin.Core.Components.AssetConfiguration.SalesPage)

	local function createSales(status, price)
		status = status or AssetConfigConstants.ASSET_STATUS.Unknown
		price = price or 0

		return Roact.createElement(MockWrapper, {
			theme = AssetConfigTheme.createDummyThemeManager(),
		}, {
			SalesPage = Roact.createElement(SalesPage, {
				Size = UDim2.new(1, -150, 1, 0),

				assetId = 1,
				assetTypeEnum = Enum.AssetType.Hat,

				allowedAssetTypesForRelease = {
					[Enum.AssetType.Hat.Name] = {}
				},
				currentAssetStatus = status,
				newAssetStatus = status,
				price = price,
				minPrice = price,
				maxPrice = price,
				feeRate = 0,

				onStatusChange = function() end,
				onPriceChange = function() end,
				validatePrice = function(_, _, _)
					return true
				end,
			}),
		})
	end


	it("should create and destroy without errors", function()
		local element = createSales()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createSales()

		local instance = Roact.mount(element, container)

		local page = container:FindFirstChild("SalesPage", true)

		expect(page.PriceComponent).to.be.ok()
		expect(page.SalesStatus).to.be.ok()
		expect(page.Separator1).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render correctly when ready for sale", function()
		local container = Instance.new("Folder")

		local price = 200
		local element = createSales(AssetConfigConstants.ASSET_STATUS.ReviewApproved, price)

		local instance = Roact.mount(element, container)

		local page = container:FindFirstChild("SalesPage", true)

		expect(page.PriceComponent.Content.InputRow.TextInputBox.RoundTextBox.Contents.TextBox.Text).to.equal(tostring(price))

		Roact.unmount(instance)
	end)
end
