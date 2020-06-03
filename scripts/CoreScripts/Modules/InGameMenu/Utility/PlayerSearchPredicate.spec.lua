return function()
	local PlayerSearchPredicate = require(script.Parent.PlayerSearchPredicate)

	it("should succeed for no search query", function()
		local searchQuery = ""
		local userName = "TheGamer101"
		local displayName = "TheGamer101"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed for search query equal to name", function()
		local searchQuery = "TheGamer101"
		local userName = "TheGamer101"
		local displayName = "TheGamer101"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed with lowercase search query", function()
		local searchQuery = "thegamer101"
		local userName = "TheGamer101"
		local displayName = "TheGamer101"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed with uppercase search query", function()
		local searchQuery = "THEGAMER101"
		local userName = "TheGamer101"
		local displayName = "TheGamer101"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed with partial match", function()
		local searchQuery = "The"
		local userName = "TheGamer101"
		local displayName = "TheGamer101"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed with partial center match", function()
		local searchQuery = "Gamer"
		local userName = "TheGamer101"
		local displayName = "TheGamer101"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed with partial end match for display name", function()
		local searchQuery = "101"
		local userName = "SomeFakeGamer"
		local displayName = "TheGamer101"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed with different case partial match", function()
		local searchQuery = "iLDerm"
		local userName = "builderman"
		local displayName = "Dave"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should fail with for completely different search query", function()
		local searchQuery = "Builderman"
		local userName = "TheGamer101"
		local displayName = "TheGamer101"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(false)
	end)

	it("should fail with for partially different search query", function()
		local searchQuery = "TheBuilderman101"
		local userName = "TheGamer101"
		local displayName = "TheGamer101"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(false)
	end)

	it("should succeed with for DisplayName only", function()
		local searchQuery = "MyFriendsName"
		local userName = "TheGamer101"
		local displayName = "MyFriendsName"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed with no DisplayName", function()
		local searchQuery = "thegamer"
		local userName = "TheGamer101"
		local displayName = nil

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed with for Username only", function()
		local searchQuery = "TheGamer101"
		local userName = "TheGamer101"
		local displayName = "MyFriendsName"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed for utf8 display name", function()
		local searchQuery = "我爱你"
		local userName = "TheGamer101"
		local displayName = "我爱你"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed for mixed utf8 display name", function()
		local searchQuery = "Piérre"
		local userName = "FrenchUser123"
		local displayName = "Piérre"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should succeed partial utf8 display name", function()
		local searchQuery = "平"
		local userName = "TheGamer101"
		local displayName = "龙平果"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should support lowercase search for some utf8 characters", function()
		local searchQuery = "dáve"
		local userName = "Builderman"
		local displayName = "DÁVE"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(true)
	end)

	it("should fail for different utf8 characters", function()
		local searchQuery = "DÅVE"
		local userName = "Builderman"
		local displayName = "DÁVE"

		local result = PlayerSearchPredicate(searchQuery, userName, displayName)
		expect(result).to.equal(false)
	end)
end