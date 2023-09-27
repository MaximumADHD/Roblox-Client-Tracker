--!nonstrict
return function()
	local FFlagLuaInviteModalEnabled = settings():GetFFlag("LuaInviteModalEnabledV384")
	if not FFlagLuaInviteModalEnabled then
		return
	end

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local ShareGameAppReducer = require(script.Parent.Parent.AppReducer)

	local FullModalShareGameComponent = require(script.Parent.FullModalShareGameComponent)

	local function createStore()
		return Rodux.Store.new(ShareGameAppReducer, nil, { Rodux.thunkMiddleware })
	end

	local function createStoreWithState(initialState)
		return Rodux.Store.new(ShareGameAppReducer, initialState, { Rodux.thunkMiddleware })
	end

	describe("createElement", function()
		it("should mount and unmount without issue", function()
			local fullModalElement = Roact.createElement(FullModalShareGameComponent, {
				store = createStore(),
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

			local folder = Instance.new("Folder")
			local instance = Roact.mount(
				Roact.createElement(FullModalShareGameComponent, {
					store = createStore(),
					isVisible = true,
					promptMessage = "Custom",
				}),
				folder
			)

			expect(instance).never.toBeNil()
			expect(folder:FindFirstChild("CustomText", true).Text).toBe("Custom")

			game:SetFastFlagForTesting("EnableNewInviteMenuStyle", oldFlagValue)
		end)
	end)

	describe("single user invite prompt", function()
		beforeAll(function(c)
			c.oldFlagValue = game:SetFastFlagForTesting("EnableNewInviteMenuStyle", true)
		end)

		afterAll(function(c)
			game:SetFastFlagForTesting("EnableNewInviteMenuStyle", c.oldFlagValue)
		end)

		it("should show display name in default prompt", function()
			local folder = Instance.new("Folder")
			local instance = Roact.mount(
				Roact.createElement(FullModalShareGameComponent, {
					store = createStoreWithState({
						Users = {
							["416"] = {
								id = 416,
								displayName = "TestUser",
							}
						},
					}),
					isVisible = true,
					inviteUserId = 416,
				}),
				folder
			)

			expect(instance).never.toBeNil()
			expect(folder:FindFirstChild("Header", true).Text:match("TestUser")).never.toBeNil()
			expect(folder:FindFirstChild("TextBody", true).Text:match("TestUser")).never.toBeNil()
		end)

		it("should use custom text if provided", function()
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
				}),
				folder
			)

			expect(instance).never.toBeNil()
			expect(folder:FindFirstChild("TextBody", true).Text).toBe("Custom Text")
		end)
	end)
end
