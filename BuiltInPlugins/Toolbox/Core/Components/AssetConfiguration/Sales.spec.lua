return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local AssetConfigTheme = require(Plugin.Core.Util.AssetConfigTheme)
	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local Constants = require(Plugin.Core.Util.Constants)
	local Sales = require(Plugin.Core.Components.AssetConfiguration.Sales)

	local function createSales(status, price)
		status = status or Constants.AssetStatus.Unknown
		price = price or 0

		return Roact.createElement(MockWrapper, {
			theme = AssetConfigTheme.createDummyThemeManager(),
		}, {
			Sales = Roact.createElement(Sales, {
				Size = UDim2.new(1, -150, 1, 0),

				AssetTypeId = Enum.AssetType.Hat,

				AllowedAssetTypesForRelease = {},
				AssetStatus = status,
				Price = price,

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

		local SalesUI = container:FindFirstChildOfClass("ScrollingFrame")

		expect(SalesUI.Price).to.be.ok()
		expect(SalesUI.SalesStatus).to.be.ok()
		expect(SalesUI.Separator1).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render correctly when ready for sale", function()
		local container = Instance.new("Folder")

		local price = 200
		local element = createSales(Constants.AssetStatus.ReviewApproved, price)

		local instance = Roact.mount(element, container)

		local SalesUI = container:FindFirstChildOfClass("ScrollingFrame")

		expect(SalesUI.Price.Content.InputRow.TextInputBox["1"].Border.Text.Text.Text).to.equal(tostring(price))

		Roact.unmount(instance)
	end)
end
