return function()

	local CreatorInfoHelper = require(script.Parent.CreatorInfoHelper)

	describe("getCreatorTypeValueFromName", function()

		it("returns the type", function()

			expect(CreatorInfoHelper.getCreatorTypeValueFromName(Enum.CreatorType.Group.Name)).to.equal(Enum.CreatorType.Group.Value)
			expect(CreatorInfoHelper.getCreatorTypeValueFromName(Enum.CreatorType.User.Name)).to.equal(Enum.CreatorType.User.Value)
		end)

		it("throws if invalid", function()

			expect(function()
				CreatorInfoHelper.getCreatorTypeValueFromName("blah")
			end).to.throw()
		end)
	end)

	it("clientToBackend", function()
		expect(CreatorInfoHelper.clientToBackend(Enum.CreatorType.User.Value)).to.equal(1)
		expect(CreatorInfoHelper.clientToBackend(Enum.CreatorType.Group.Value)).to.equal(2)
		expect(function()
			CreatorInfoHelper.clientToBackend(2)
		end).to.throw()
	end)

	it("backendToClient", function()
		expect(CreatorInfoHelper.backendToClient(1)).to.equal(Enum.CreatorType.User.Value)
		expect(CreatorInfoHelper.backendToClient(2)).to.equal(Enum.CreatorType.Group.Value)
		expect(function()
			CreatorInfoHelper.backendToClient(3)
		end).to.throw()
	end)

	describe("isValidCreatorType", function()

		it("returns true", function()
			expect(CreatorInfoHelper.isValidCreatorType(Enum.CreatorType.Group.Value)).to.equal(true)
		end)

		it("returns false", function()
			expect(CreatorInfoHelper.isValidCreatorType("blah")).to.equal(false)
		end)
	end)

	describe("getNameFromResult", function()
		it("returns the user name", function()
			expect(CreatorInfoHelper.getNameFromResult({
				responseBody = {
					Username = "foo"
				}
			}, Enum.CreatorType.User.Value)).to.equal("foo")
		end)

		it("returns the group name", function()
			expect(CreatorInfoHelper.getNameFromResult({
				responseBody = {
					Name = "foo"
				}
			}, Enum.CreatorType.Group.Value)).to.equal("foo")
		end)

		it("throws if creatorType is invalid", function()
			expect(function()
				CreatorInfoHelper.getNameFromResult({
					responseBody = {}
				}, math.huge)
			end).to.throw()
		end)

	end)

	describe("isCached", function()

		local function getStoreStub(cachedCreatorInfo)
			return {
				getState = function()
					return {
						assets = {
							cachedCreatorInfo = cachedCreatorInfo
						}
					}
				end
			}
		end

		describe("returns false if", function()
			it("there is no cachedCreatorInfo", function()
				expect(CreatorInfoHelper.isCached(getStoreStub(), 1, Enum.CreatorType.User.Value)).to.equal(false)
			end)

			it("there is no cachedCreatorInfo Id", function()
				expect(CreatorInfoHelper.isCached(getStoreStub({}), 1, Enum.CreatorType.User.Value)).to.equal(false)
			end)

			it("the cachedCreatorInfo Id does not match", function()
				expect(CreatorInfoHelper.isCached(getStoreStub({
					Id = 2,
					Type = Enum.CreatorType.User.Value
				}), 1, Enum.CreatorType.User.Value)).to.equal(false)
			end)

			it("the cachedCreatorInfo Type does not match", function()
				expect(CreatorInfoHelper.isCached(getStoreStub({
					Id = 1,
					Type = Enum.CreatorType.Group.Value
				}), 1, Enum.CreatorType.User.Value)).to.equal(false)
			end)
		end)

		it("returns true if the cachedCreatorInfo Id and Type both match", function()
			expect(CreatorInfoHelper.isCached(getStoreStub({
				Id = 1,
				Type = Enum.CreatorType.User.Value
			}), 1, Enum.CreatorType.User.Value)).to.equal(true)
		end)
	end)

end