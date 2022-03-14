return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect

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
			jestExpect(sortComparator(entryA, entryB)).toBe(true)
			jestExpect(sortComparator(entryB, entryA)).toBe(false)
		end)

		it("should sort ONLINE before IN_STUDIO", function()
			jestExpect(sortComparator(entryB, entryC)).toBe(true)
			jestExpect(sortComparator(entryC, entryB)).toBe(false)
		end)

		it("should sort IN_STUDIO before OFFLINE", function()
			jestExpect(sortComparator(entryC, entryD)).toBe(true)
			jestExpect(sortComparator(entryD, entryC)).toBe(false)
		end)

		it("should sort IN_GAME before OFFLINE", function()
			jestExpect(sortComparator(entryA, entryD)).toBe(true)
			jestExpect(sortComparator(entryD, entryA)).toBe(false)
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
			jestExpect(sortComparator(entryA, entryB)).toBe(true)
			jestExpect(sortComparator(entryB, entryA)).toBe(false)
		end)

		it("should sort Bcd before Cde", function()
			jestExpect(sortComparator(entryB, entryC)).toBe(true)
			jestExpect(sortComparator(entryC, entryB)).toBe(false)
		end)

		it("should sort Cde before Def", function()
			jestExpect(sortComparator(entryC, entryD)).toBe(true)
			jestExpect(sortComparator(entryD, entryC)).toBe(false)
		end)

		it("should sort Abc before Def", function()
			jestExpect(sortComparator(entryA, entryD)).toBe(true)
			jestExpect(sortComparator(entryD, entryA)).toBe(false)
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
			jestExpect(sortComparator(entryA, entryB)).toBe(true)
			jestExpect(sortComparator(entryB, entryA)).toBe(false)
		end)

		it("should sort Bcd before Cde", function()
			jestExpect(sortComparator(entryB, entryC)).toBe(true)
			jestExpect(sortComparator(entryC, entryB)).toBe(false)
		end)

		it("should sort Cde before Def", function()
			jestExpect(sortComparator(entryC, entryD)).toBe(true)
			jestExpect(sortComparator(entryD, entryC)).toBe(false)
		end)

		it("should sort Abc before Def", function()
			jestExpect(sortComparator(entryA, entryD)).toBe(true)
			jestExpect(sortComparator(entryD, entryA)).toBe(false)
		end)
	end)
end
