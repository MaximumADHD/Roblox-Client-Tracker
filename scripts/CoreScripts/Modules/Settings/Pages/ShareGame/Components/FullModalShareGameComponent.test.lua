--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local Promise = require(CorePackages.Packages.Promise)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local afterAll = JestGlobals.afterAll
local jest = JestGlobals.jest

local Modules = CoreGui.RobloxGui.Modules
local FFlagFixPromptGameInviteUIButtonScaling = require(Modules.Flags.FFlagFixPromptGameInviteUIButtonScaling)
local FFlagFixPromptGameInviteUIMissingDisplayName =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagFixPromptGameInviteUIMissingDisplayName

-- Declared before jest.mock so the hoisted factory closes over these bindings.
local mockProfileCombinedName = ""
local mockProfileUsername = ""
local mockProfileFetchStatus = "success"

-- The single-user prompt resolves the recipient's name through UserProfileStore, which
-- would otherwise issue a real HTTP request on mount.
jest.mock(CorePackages.Workspace.Packages.UserProfiles, function()
	local Signals = require(CorePackages.Packages.Signals)

	local mockUserProfileStore = {
		fetchNamesByUserIds = function()
			local getResult = Signals.createSignal({
				status = mockProfileFetchStatus,
				data = {
					{
						names = {
							getCombinedName = function()
								return mockProfileCombinedName
							end,
							getUsername = function()
								return mockProfileUsername
							end,
						},
					},
				},
			})
			return getResult
		end,
	}

	return {
		Stores = {
			UserProfileStore = {
				get = function()
					return mockUserProfileStore
				end,
			},
		},
	}
end)

local ShareGameAppReducer = require(script.Parent.Parent.AppReducer)

local FullModalShareGameComponent = require(script.Parent.FullModalShareGameComponent)

local function createStore()
	return Rodux.Store.new(ShareGameAppReducer, nil, { Rodux.thunkMiddleware })
end

local function createStoreWithState(initialState)
	return Rodux.Store.new(ShareGameAppReducer, initialState, { Rodux.thunkMiddleware })
end

-- A stand-in for httpRequest(HttpRbxApiService) that resolves instead of hitting
-- the network. ShareGameContainer's friends fetch fires on mount, so injecting this
-- keeps the spec off unmocked HTTP (which otherwise produces unhandled rejections).
local function createMockRequestImpl()
	local mock = { callCount = 0 }
	mock.requestImpl = function()
		mock.callCount += 1
		return Promise.resolve({
			responseBody = {
				data = {},
				userPresences = {},
			},
		})
	end
	return mock
end

describe("createElement", function()
	it("should mount and unmount without issue", function()
		local fullModalElement = Roact.createElement(FullModalShareGameComponent, {
			store = createStore(),
			-- isLoading avoids mounting ShareGameContainer, which fetches friends over HTTP
			-- and produces unhandled promise rejections in the test env.
			isLoading = true,
		})
		local fullModalInstance = Roact.mount(fullModalElement)
		Roact.unmount(fullModalInstance)
	end)
end)

describe("mount and reconcile w/ isVisible", function()
	it("should mount and reconcile without issue", function()
		local function createModal(isVisible)
			return Roact.createElement(FullModalShareGameComponent, {
				store = createStore(),
				isVisible = isVisible,
				-- isVisible drives ScreenGui.Enabled, which renders regardless of loading
				-- state. isLoading avoids mounting ShareGameContainer and its HTTP fetch.
				isLoading = true,
			})
		end

		local folder = Instance.new("Folder")
		local instance = Roact.mount(createModal(false), folder)

		expect(instance).never.toBeNil()
		expect(folder:FindFirstChildOfClass("ScreenGui", true).Enabled).toBe(false)

		local newInstance = Roact.update(instance, createModal(true))

		expect(newInstance).never.toBeNil()
		expect(folder:FindFirstChildOfClass("ScreenGui", true).Enabled).toBe(true)
	end)
end)

describe("multi user invite prompt", function()
	it("should display custom text when prop is provided", function()
		local oldFlagValue = game:SetFastFlagForTesting("EnableNewInviteMenuStyle", true)

		local mock = createMockRequestImpl()
		local folder = Instance.new("Folder")
		local instance = Roact.mount(
			Roact.createElement(FullModalShareGameComponent, {
				store = createStore(),
				isVisible = true,
				promptMessage = "Custom",
				requestImpl = mock.requestImpl,
			}),
			folder
		)

		expect(instance).never.toBeNil()
		expect(folder:FindFirstChild("CustomText", true).Text).toBe("Custom")
		expect(mock.callCount).toBeGreaterThan(0)

		game:SetFastFlagForTesting("EnableNewInviteMenuStyle", oldFlagValue)
	end)
end)

describe("single user invite prompt", function()
	local c: any = {}

	beforeAll(function()
		c.oldFlagValue = game:SetFastFlagForTesting("EnableNewInviteMenuStyle", true)
	end)

	beforeEach(function()
		mockProfileCombinedName = ""
		mockProfileUsername = ""
		mockProfileFetchStatus = "success"
	end)

	afterAll(function()
		game:SetFastFlagForTesting("EnableNewInviteMenuStyle", c.oldFlagValue)
	end)

	it("should show display name in default prompt", function()
		local mock = createMockRequestImpl()
		local folder = Instance.new("Folder")
		local instance = Roact.mount(
			Roact.createElement(FullModalShareGameComponent, {
				store = createStoreWithState({
					Users = {
						["416"] = {
							id = 416,
							displayName = "TestUser",
						},
					},
				}),
				isVisible = true,
				inviteUserId = 416,
				requestImpl = mock.requestImpl,
			}),
			folder
		)

		expect(instance).never.toBeNil()
		expect(folder:FindFirstChild("Header", true).Text:match("TestUser")).never.toBeNil()
		expect(folder:FindFirstChild("TextBody", true).Text:match("TestUser")).never.toBeNil()
		expect(mock.callCount).toBeGreaterThan(0)
	end)

	it("should use custom text if provided", function()
		local mock = createMockRequestImpl()
		local folder = Instance.new("Folder")
		local instance = Roact.mount(
			Roact.createElement(FullModalShareGameComponent, {
				store = createStoreWithState({
					Users = {
						["416"] = {
							id = 416,
							displayName = "TestUser",
						},
					},
				}),
				isVisible = true,
				inviteUserId = 416,
				promptMessage = "Custom Text",
				requestImpl = mock.requestImpl,
			}),
			folder
		)

		expect(instance).never.toBeNil()
		expect(folder:FindFirstChild("TextBody", true).Text).toBe("Custom Text")
		expect(mock.callCount).toBeGreaterThan(0)
	end)

	it("should name the recipient from their profile when the friends entry has no name", function()
		mockProfileCombinedName = "ProfileUser"

		local mock = createMockRequestImpl()
		local folder = Instance.new("Folder")
		local instance = Roact.mount(
			Roact.createElement(FullModalShareGameComponent, {
				store = createStoreWithState({
					Users = {
						["416"] = {
							id = 416,
							displayName = "",
						},
					},
				}),
				isVisible = true,
				inviteUserId = 416,
				requestImpl = mock.requestImpl,
			}),
			folder
		)

		expect(instance).never.toBeNil()
		if FFlagFixPromptGameInviteUIMissingDisplayName then
			expect(folder:FindFirstChild("Header", true).Text:match("ProfileUser")).never.toBeNil()
			expect(folder:FindFirstChild("TextBody", true).Text:match("ProfileUser")).never.toBeNil()
		else
			expect(folder:FindFirstChild("Header", true).Text:match("ProfileUser")).toBeNil()
		end
	end)

	if FFlagFixPromptGameInviteUIMissingDisplayName then
		it("should fall back to the username when the profile has no combined name", function()
			mockProfileUsername = "profile_user"

			local mock = createMockRequestImpl()
			local folder = Instance.new("Folder")
			Roact.mount(
				Roact.createElement(FullModalShareGameComponent, {
					store = createStoreWithState({
						Users = {
							["416"] = {
								id = 416,
								displayName = "",
							},
						},
					}),
					isVisible = true,
					inviteUserId = 416,
					requestImpl = mock.requestImpl,
				}),
				folder
			)

			expect(folder:FindFirstChild("Header", true).Text:match("profile_user")).never.toBeNil()
		end)

		it("should withhold the prompt while the recipient's name is still resolving", function()
			mockProfileFetchStatus = "fetching"

			local mock = createMockRequestImpl()
			local folder = Instance.new("Folder")
			Roact.mount(
				Roact.createElement(FullModalShareGameComponent, {
					store = createStoreWithState({
						Users = {
							["416"] = {
								id = 416,
								displayName = "",
							},
						},
					}),
					isVisible = true,
					inviteUserId = 416,
					requestImpl = mock.requestImpl,
				}),
				folder
			)

			expect(folder:FindFirstChild("Header", true)).toBeNil()
			expect(folder:FindFirstChild("TextBody", true)).toBeNil()
		end)
	end
end)

describe("FixPromptGameInviteUIButtonScaling", function()
	it("should render a scoped Foundation StyleLink inside the ScreenGui to match the flag", function()
		local folder = Instance.new("Folder")
		local instance = Roact.mount(
			Roact.createElement(FullModalShareGameComponent, {
				store = createStore(),
				isVisible = true,
				-- isLoading avoids mounting ShareGameContainer, which fetches friends over HTTP and
				-- produces unhandled promise rejections in the test env. The StyleLink renders
				-- regardless of loading state, so this still exercises the flagged behavior.
				isLoading = true,
			}),
			folder
		)

		local screenGui = folder:FindFirstChildOfClass("ScreenGui", true)
		expect(screenGui).never.toBeNil()
		if FFlagFixPromptGameInviteUIButtonScaling then
			expect(screenGui:FindFirstChildOfClass("StyleLink")).never.toBeNil()
		else
			expect(screenGui:FindFirstChildOfClass("StyleLink")).toBeNil()
		end

		Roact.unmount(instance)
	end)
end)
