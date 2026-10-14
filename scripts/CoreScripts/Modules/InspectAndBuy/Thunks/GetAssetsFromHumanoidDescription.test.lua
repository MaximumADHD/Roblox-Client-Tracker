local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local it = JestGlobals.it
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local Network = require(InspectAndBuyFolder.Services.Network)
local Thunk = require(InspectAndBuyFolder.Thunk)
local GetAssetsFromHumanoidDescription = require(script.Parent.GetAssetsFromHumanoidDescription)

local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local mockClassInterfaces = UnitTestHelpers.mockClassInterfaces

local function countKeys(t)
	local count = 0
	for _ in pairs(t) do
		count = count + 1
	end
	return count
end

it("should run without errors", function()
	local mockNetwork = MockNetwork.new()
	local analytics = mockClassInterfaces.new(Analytics, "Analytics")

	local store = Rodux.Store.new(Reducer, nil, {
		Thunk.middleware({
			[Network] = mockNetwork,
			[Analytics] = analytics.mockService,
		}),
	})
	local mockHumanoidDescription = MockNetwork.GetMockHumanoidDescriptionEmpty()
	local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription)

	Thunk.test(thunk, store, {
		[Network] = mockNetwork,
	})

	local state = store:getState()

	expect(state.assets).toEqual({})
end)

--[[
	Using the mock humanoid description object in MockNetwork.lua, there are 4 valid ids.
	Body color and scale fields should be ignored.
]]
it("should add a characters currently wearing assets from a humanoid description object", function()
	local mockNetwork = MockNetwork.new()

	local analytics = mockClassInterfaces.new(Analytics, "Analytics")

	local store = Rodux.Store.new(Reducer, nil, {
		Thunk.middleware({
			[Network] = mockNetwork,
			[Analytics] = analytics.mockService,
		}),
	})

	local mockHumanoidDescription = MockNetwork.GetMockHumanoidDescription()
	local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription)

	Thunk.test(thunk, store, {
		[Network] = mockNetwork,
	})

	local state = store:getState()

	expect(countKeys(state.assets)).toBe(4)
end)

it("shouldn't fail and add no assets on an empty humanoid description object", function()
	local mockNetwork = MockNetwork.new()

	local analytics = mockClassInterfaces.new(Analytics, "Analytics")

	local store = Rodux.Store.new(Reducer, nil, {
		Thunk.middleware({
			[Network] = mockNetwork,
			[Analytics] = analytics.mockService,
		}),
	})
	local mockHumanoidDescription = MockNetwork.GetMockHumanoidDescriptionEmpty()
	local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription)

	Thunk.test(thunk, store, {
		[Network] = mockNetwork,
	})

	local state = store:getState()

	expect(state.assets).toEqual({})
end)

it("should correctly add emotes from a humanoid description", function()
	local mockNetwork = MockNetwork.new()

	local analytics = mockClassInterfaces.new(Analytics, "Analytics")

	local store = Rodux.Store.new(Reducer, nil, {
		Thunk.middleware({
			[Network] = mockNetwork,
			[Analytics] = analytics.mockService,
		}),
	})

	local mockHumanoidDescription = MockNetwork.GetMockHumanoidDescriptionEmotes()
	local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription)

	Thunk.test(thunk, store, {
		[Network] = mockNetwork,
	})

	local state = store:getState()

	expect(countKeys(state.assets)).toBe(3)
end)

it("should catch network errors that happen and still run", function()
	local mockNetwork = MockNetwork.new(true)

	local analytics = mockClassInterfaces.new(Analytics, "Analytics")

	local store = Rodux.Store.new(Reducer, nil, {
		Thunk.middleware({
			[Network] = mockNetwork,
			[Analytics] = analytics.mockService,
		}),
	})
	local mockHumanoidDescription = MockNetwork.GetMockHumanoidDescriptionEmpty()
	local thunk = GetAssetsFromHumanoidDescription(mockHumanoidDescription, false)

	Thunk.test(thunk, store, {
		[Network] = mockNetwork,
	})
end)
