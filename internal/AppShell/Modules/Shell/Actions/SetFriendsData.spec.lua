return function()
	it("should return a table", function()
		local action = require(script.Parent.SetFriendsData)

		expect(action).to.be.a("table")
	end)

	it("should return a table without friendsData when passed nil", function()
		local action = require(script.Parent.SetFriendsData)()

		expect(action).to.be.a("table")
		expect(action.friendsData).to.equal(nil)
	end)

	it("should set the name", function()
		local action = require(script.Parent.SetFriendsData)

		expect(action.name).to.equal("SetFriendsData")
	end)

	it("should set the elements at the first depth", function()
		local action = require(script.Parent.SetFriendsData)( { {}, {} } )

		expect(action.friendsData[2]).to.be.a("table")
	end)

	it("should set the elements at the second depth", function()
		local action = require(script.Parent.SetFriendsData)( { { a="A", b="B" } } )

		expect(action.friendsData[1]).to.be.a("table")
		expect(action.friendsData[1].a).to.equal("A")
	end)

	it("should set the type", function()
		local action = require(script.Parent.SetFriendsData)()

		expect(action.type).to.equal("SetFriendsData")
	end)
end