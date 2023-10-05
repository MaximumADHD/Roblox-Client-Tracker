return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Rodux = InGameMenuDependencies.Rodux

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local MockGuiService = require(RobloxGui.Modules.TestHelpers.MockGuiService)
	local MockAppStorageService = require(RobloxGui.Modules.TestHelpers.MockAppStorageService)

	local OpenEducationalPopup = require(script.Parent.OpenEducationalPopup)

	local LOCAL_STORAGE_KEY = "NativeCloseLuaPromptDisplayCount"

	local MockNotificationType = {
		NATIVE_EXIT = 35,
	}

	local MockStore = {}

	function MockStore.new(initialState)
		return Rodux.Store.new(reducer, initialState or {}, { Rodux.thunkMiddleware })
	end

	it("should broadcast NATIVE_EXIT if popup already enabled", function()
		local store = MockStore.new({
			nativeClosePrompt = {
				closingApp = true,
			}
		})

		local guiService = MockGuiService.new()
		local appStorageService = MockAppStorageService.new()

		store:dispatch(OpenEducationalPopup(guiService, appStorageService, 10))

		expect(guiService.broadcasts[1].notification).toBe(MockNotificationType.NATIVE_EXIT)
	end)

	it("should increase local storage count after popup displayed", function()
		local store = MockStore.new({
			nativeClosePrompt = {
				closingApp = false,
			}
		})

		local guiService = MockGuiService.new()
		local appStorageService = MockAppStorageService.new()

		store:dispatch(OpenEducationalPopup(guiService, appStorageService, 10))

		local state = store:getState()
		expect(state.nativeClosePrompt.closingApp).toBe(true)
		expect(tonumber(appStorageService:GetItem(LOCAL_STORAGE_KEY))).toBe(1)
	end)

	it("should not display popup if display count hits the limitation", function()
		local store = MockStore.new({
			nativeClosePrompt = {
				closingApp = false,
			}
		})

		local guiService = MockGuiService.new()
		local appStorageService = MockAppStorageService.new({[LOCAL_STORAGE_KEY] = 3,})

		store:dispatch(OpenEducationalPopup(guiService, appStorageService, 3))

		local state = store:getState()
		expect(state.nativeClosePrompt.closingApp).toBe(false)
		expect(tonumber(appStorageService:GetItem(LOCAL_STORAGE_KEY))).toBe(3)
		expect(guiService.broadcasts[1].notification).toBe(MockNotificationType.NATIVE_EXIT)
	end)

end
