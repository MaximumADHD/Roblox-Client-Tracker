return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
	local Bundles = require(script.Parent.Bundles)
	local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)

	local MOCK_BUNDLE_1 = BundleInfo.mock()
	MOCK_BUNDLE_1.bundleId = "123"

	local MOCK_BUNDLE_2 = BundleInfo.mock()
	MOCK_BUNDLE_2.bundleId = "456"

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	describe("SetBundles", function()
		it("should set a bundle's information", function()
			local newState = Bundles(nil, SetBundles({
				[1] = MOCK_BUNDLE_1,
			}))

			expect(newState[MOCK_BUNDLE_1.bundleId].bundleId).to.equal(MOCK_BUNDLE_1.bundleId)
			expect(countKeys(newState)).to.equal(1)
		end)

		it("should set multiple bundles information", function()
			local newState = Bundles(nil, SetBundles({
				[1] = MOCK_BUNDLE_1,
				[2] = MOCK_BUNDLE_2,
			}))

			expect(newState[MOCK_BUNDLE_1.bundleId].bundleId).to.equal(MOCK_BUNDLE_1.bundleId)
			expect(newState[MOCK_BUNDLE_2.bundleId].bundleId).to.equal(MOCK_BUNDLE_2.bundleId)
			expect(countKeys(newState)).to.equal(2)
		end)

		it("should update a bundle's information", function()
			local bundle1 = MOCK_BUNDLE_1
			local numFavorites = 500
			local newState = Bundles(nil, SetBundles({
				[1] = bundle1,
			}))

			expect(newState[bundle1.bundleId].bundleId).to.equal(bundle1.bundleId)

			bundle1.numFavorites = numFavorites
			newState = Bundles(newState, SetBundles({
				[1] = bundle1,
			}))

			expect(newState[bundle1.bundleId].numFavorites).to.equal(numFavorites)
			expect(countKeys(newState)).to.equal(1)
		end)
	end)
end