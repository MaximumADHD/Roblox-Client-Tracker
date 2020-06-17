return function()
	local Root = script.Parent.Parent
	local Workspace = game:GetService("Workspace")

	local PurchaseError = require(Root.Enums.PurchaseError)

	local GetFFlagLuaPremiumCatalogIGPP = require(Root.Flags.GetFFlagLuaPremiumCatalogIGPP)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)

	local meetsPrerequisites = require(script.Parent.meetsPrerequisites)
	local defaultExternalSettings = MockExternalSettings.new(false, false, {})

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
			},
		}
	end

	it("should return true if prerequisites are all met", function()
		local productInfo = getValidProductInfo()
		local met, _ = meetsPrerequisites(productInfo, false, false, defaultExternalSettings)

		expect(met).to.equal(true)
	end)

	it("should return true if third party restrictions do not apply", function()
		local productInfo = getValidProductInfo()
		Workspace.AllowThirdPartySales = false

		-- Set creator id to game's creator id
		productInfo.Creator.CreatorTargetId = game.CreatorId

		local met, _ = meetsPrerequisites(productInfo, false, true, defaultExternalSettings)

		expect(met).to.equal(true)
	end)

	it("should return false if the player owns the item already", function()
		local productInfo = getValidProductInfo()
		local met, errorReason = meetsPrerequisites(productInfo, true, true, defaultExternalSettings)

		expect(met).to.equal(false)
		expect(errorReason).to.equal(PurchaseError.AlreadyOwn)
	end)

	it("should return false if the product is not for sale", function()
		local productInfo = getValidProductInfo()
		productInfo.IsForSale = false
		productInfo.IsPublicDomain = false

		local met, errorReason = meetsPrerequisites(productInfo, false, false, defaultExternalSettings)

		expect(met).to.equal(false)
		expect(errorReason).to.equal(PurchaseError.NotForSale)
	end)

	it("should return false if no copies are available", function()
		local productInfo = getValidProductInfo()
		productInfo.IsLimited = true
		productInfo.Remaining = 0

		local met, errorReason = meetsPrerequisites(productInfo, false, false, defaultExternalSettings)

		expect(met).to.equal(false)
		expect(errorReason).to.equal(PurchaseError.Limited)
	end)

	it("should return false if third-party sales are restricted by permissions service", function()
		local productInfo = getValidProductInfo()

		-- Set product creator to a number that is ~= to game.CreatorId and is > 1
		-- (which is considered ROBLOX, and is never restricted)
		productInfo.Creator.CreatorTargetId = game.CreatorId + 2

		local externalSettings = MockExternalSettings.new(false, false, {
			LuaUseThirdPartyPermissions = true,
			PermissionsServiceIsThirdPartyPurchaseAllowed = false,
		})
		local met, errorReason = meetsPrerequisites(productInfo, false, true, externalSettings)

		expect(met).to.equal(false)
		expect(errorReason).to.equal(PurchaseError.ThirdPartyDisabled)
	end)

	it("should return true if third-party sales are allowed by permissions service", function()
		local productInfo = getValidProductInfo()

		-- Set product creator to a number that is ~= to game.CreatorId and is > 1
		-- (which is considered ROBLOX, and is never restricted)
		productInfo.Creator.CreatorTargetId = game.CreatorId + 2

		local externalSettings = MockExternalSettings.new(false, false, {
			LuaUseThirdPartyPermissions = true,
			PermissionsServiceIsThirdPartyPurchaseAllowed = true,
		})
		local met, errorReason = meetsPrerequisites(productInfo, false, true, externalSettings)

		expect(met).to.equal(true)
	end)
	
	it("should return false if third-party sales are restricted", function()
		local productInfo = getValidProductInfo()
		Workspace.AllowThirdPartySales = false

		-- Set product creator to a number that is ~= to game.CreatorId and is > 1
		-- (which is considered ROBLOX, and is never restricted)
		productInfo.Creator.CreatorTargetId = game.CreatorId + 2

		local externalSettings = MockExternalSettings.new(false, false, {
			LuaUseThirdPartyPermissions = false,
			RestrictSales2 = true,
		})
		local met, errorReason = meetsPrerequisites(productInfo, false, true, externalSettings)

		expect(met).to.equal(false)
		expect(errorReason).to.equal(PurchaseError.ThirdPartyDisabled)
	end)

	if GetFFlagLuaPremiumCatalogIGPP() then
		it("should return false if premium purchase", function()
			local productInfo = getValidProductInfo()
			productInfo.MinimumMembershipLevel = 4

			local met, errorReason = meetsPrerequisites(productInfo, false, true, defaultExternalSettings)

			expect(met).to.equal(false)
			expect(errorReason).to.equal(PurchaseError.PremiumOnly)
		end)
	end
end
