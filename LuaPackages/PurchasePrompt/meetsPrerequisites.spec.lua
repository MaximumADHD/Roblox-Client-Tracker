return function()
	local Workspace = game:GetService("Workspace")

	local PurchaseError = require(script.Parent.PurchaseError)

	local meetsPrerequisites = require(script.Parent.meetsPrerequisites)

	local function getValidProductInfo()
		return {
			IsForSale = true,
			IsPublicDomain = true,
			IsLimited = false,
			ContentRatingTypeId = 0,
			AssetId = 0,
			-- Assets have ProductType "User Product"
			ProductType = "User Product",
			Creator = {
				CreatorType = "User",
				CreatorTargetId = 1,
			}
		}
	end

	it("should return true if prerequisites are all met", function()
		local productInfo = getValidProductInfo()
		local met, _ = meetsPrerequisites(productInfo, false, false)

		expect(met).to.equal(true)
	end)

	it("should return true if third party restrictions do not apply", function()
		local productInfo = getValidProductInfo()
		Workspace.AllowThirdPartySales = false

		-- Set creator id to game's creator id
		productInfo.Creator.CreatorTargetId = game.CreatorId

		local met, _ = meetsPrerequisites(productInfo, false, true)

		expect(met).to.equal(true)
	end)

	it("should return false if the player owns the item already", function()
		local productInfo = getValidProductInfo()
		local met, errorReason = meetsPrerequisites(productInfo, true, true)

		expect(met).to.equal(false)
		expect(errorReason).to.equal(PurchaseError.AlreadyOwn)
	end)

	it("should return false if the product is not for sale", function()
		local productInfo = getValidProductInfo()
		productInfo.IsForSale = false
		productInfo.IsPublicDomain = false

		local met, errorReason = meetsPrerequisites(productInfo, false, false)

		expect(met).to.equal(false)
		expect(errorReason).to.equal(PurchaseError.NotForSale)
	end)

	it("should return false if no copies are available", function()
		local productInfo = getValidProductInfo()
		productInfo.IsLimited = true
		productInfo.Remaining = 0

		local met, errorReason = meetsPrerequisites(productInfo, false, false)

		expect(met).to.equal(false)
		expect(errorReason).to.equal(PurchaseError.Limited)
	end)

	it("should return false if third-party sales are restricted", function()
		local productInfo = getValidProductInfo()
		Workspace.AllowThirdPartySales = false

		-- Set product creator to a number that is ~= to game.CreatorId and is > 1
		-- (which is considered ROBLOX, and is never restricted)
		productInfo.Creator.CreatorTargetId = game.CreatorId + 2

		local met, errorReason = meetsPrerequisites(productInfo, false, true)

		expect(met).to.equal(false)
		expect(errorReason).to.equal(PurchaseError.ThirdPartyDisabled)
	end)
end