return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local GetAssetsFromHumanoidDescription = require(script.Parent.GetAssetsFromHumanoidDescription)

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)
		local mockHumanoidDescription = MockNetwork.GetMockHumanoidDescriptionEmpty()
		local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(countKeys(state.assets)).to.equal(0)
	end)

	--[[
		Using the mock humanoid description object in MockNetwork.lua, there are 4 valid ids.
		Body color and scale fields should be ignored.
	]]
	it("should add a characters currently wearing assets from a humanoid description object", function()
		local store = Rodux.Store.new(Reducer)
		local mockHumanoidDescription = MockNetwork.GetMockHumanoidDescription()
		local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(countKeys(state.assets)).to.equal(4)
	end)

	it("shouldn't fail and add no assets on an empty humanoid description object", function()
		local store = Rodux.Store.new(Reducer)
		local mockHumanoidDescription = MockNetwork.GetMockHumanoidDescriptionEmpty()
		local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(countKeys(state.assets)).to.equal(0)
	end)

	it("should correctly add emotes from a humanoid description", function()
		local store = Rodux.Store.new(Reducer)
		local mockHumanoidDescription = MockNetwork.GetMockHumanoidDescriptionEmotes()
		local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(countKeys(state.assets)).to.equal(3)
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		local mockHumanoidDescription = MockNetwork.GetMockHumanoidDescriptionEmpty()
		local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription, false)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
		})
	end)
end