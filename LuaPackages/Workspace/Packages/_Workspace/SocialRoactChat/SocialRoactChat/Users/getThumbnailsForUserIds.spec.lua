return function()
	local getThumbnailsForUserIds = require(script.Parent.getThumbnailsForUserIds)

	describe("GIVEN a single userId", function()
		it("SHOULD return a string", function()
			local result = getThumbnailsForUserIds({ "myUserId" })
			expect(result).to.be.ok()
			expect(type(result)).to.equal("table")

			expect(result[1]).to.be.ok()
			expect(type(result[1])).to.equal("string")

			expect(#result).to.equal(1)
		end)
	end)

	describe("GIVEN zero userIds", function()
		it("SHOULD return an empty table", function()
			local result = getThumbnailsForUserIds({})
			expect(result).to.be.ok()
			expect(type(result)).to.equal("table")

			expect(#result).to.equal(0)
		end)
	end)

	describe("GIVEN two userIds", function()
		it("SHOULD return multiple strings in a table", function()
			local result = getThumbnailsForUserIds({ "myUserId", "myOtherUserId" })
			expect(result).to.be.ok()
			expect(type(result)).to.equal("table")

			expect(#result).to.equal(2)

			expect(result[1]).to.be.ok()
			expect(type(result[1])).to.equal("string")
			expect(result[2]).to.be.ok()
			expect(type(result[2])).to.equal("string")

			expect(result[1]).to.never.equal(result[2])
		end)
	end)
end
