return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)

	local UserModel = dependencies.UserModel
	local sortComparator = require(script.Parent.presenceSortComparator)

	--( ingame > online > studio > offline )
	describe("should sort based on presence priority properly", function()
		local entryA = {
			presence = UserModel.PresenceType.IN_GAME,
			displayName = "Abc",
		}

		local entryB = {
			presence = UserModel.PresenceType.ONLINE,
			displayName = "Bcd",
		}

		local entryC = {
			presence = UserModel.PresenceType.IN_STUDIO,
			displayName = "Cde",
		}

		local entryD = {
			presence = UserModel.PresenceType.OFFLINE,
			displayName = "Def",
		}

		it("should sort IN_GAME before ONLINE", function()
			expect(sortComparator(entryA, entryB)).to.equal(true)
			expect(sortComparator(entryB, entryA)).to.equal(false)
		end)

		it("should sort ONLINE before IN_STUDIO", function()
			expect(sortComparator(entryB, entryC)).to.equal(true)
			expect(sortComparator(entryC, entryB)).to.equal(false)
		end)

		it("should sort IN_STUDIO before OFFLINE", function()
			expect(sortComparator(entryC, entryD)).to.equal(true)
			expect(sortComparator(entryD, entryC)).to.equal(false)
		end)

		it("should sort IN_GAME before OFFLINE", function()
			expect(sortComparator(entryA, entryD)).to.equal(true)
			expect(sortComparator(entryD, entryA)).to.equal(false)
		end)
	end)

	describe("should sort based on alphabetical order if presence is the same", function()
		local entryA = {
			presence = UserModel.PresenceType.ONLINE,
			displayName = "Abc",
		}

		local entryB = {
			presence = UserModel.PresenceType.ONLINE,
			displayName = "Bcd",
		}

		local entryC = {
			presence = UserModel.PresenceType.ONLINE,
			displayName = "Cde",
		}

		local entryD = {
			presence = UserModel.PresenceType.ONLINE,
			displayName = "Def",
		}

		it("should sort Abc before Bcd", function()
			expect(sortComparator(entryA, entryB)).to.equal(true)
			expect(sortComparator(entryB, entryA)).to.equal(false)
		end)

		it("should sort Bcd before Cde", function()
			expect(sortComparator(entryB, entryC)).to.equal(true)
			expect(sortComparator(entryC, entryB)).to.equal(false)
		end)

		it("should sort Cde before Def", function()
			expect(sortComparator(entryC, entryD)).to.equal(true)
			expect(sortComparator(entryD, entryC)).to.equal(false)
		end)

		it("should sort Abc before Def", function()
			expect(sortComparator(entryA, entryD)).to.equal(true)
			expect(sortComparator(entryD, entryA)).to.equal(false)
		end)
	end)

	describe("should sort based on alphabetical order if presence is absent", function()
		local entryA = {
			displayName = "Abc",
		}

		local entryB = {
			displayName = "Bcd",
		}

		local entryC = {
			displayName = "Cde",
		}

		local entryD = {
			displayName = "Def",
		}

		it("should sort Abc before Bcd", function()
			expect(sortComparator(entryA, entryB)).to.equal(true)
			expect(sortComparator(entryB, entryA)).to.equal(false)
		end)

		it("should sort Bcd before Cde", function()
			expect(sortComparator(entryB, entryC)).to.equal(true)
			expect(sortComparator(entryC, entryB)).to.equal(false)
		end)

		it("should sort Cde before Def", function()
			expect(sortComparator(entryC, entryD)).to.equal(true)
			expect(sortComparator(entryD, entryC)).to.equal(false)
		end)

		it("should sort Abc before Def", function()
			expect(sortComparator(entryA, entryD)).to.equal(true)
			expect(sortComparator(entryD, entryA)).to.equal(false)
		end)
	end)
end
