return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Rodux = InGameMenuDependencies.Rodux

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)

	local OpenEducationalPopup = require(script.Parent.OpenEducationalPopup)

	local LOCAL_STORAGE_KEY = "NativeCloseLuaPromptDisplayCount"

	local MockNotificationType = {
		NATIVE_EXIT = 35,
	}

	local MockGuiService = {}
	MockGuiService.__index = MockGuiService

	function MockGuiService.new()
		local event = Instance.new("BindableEvent")

		local self = {
			broadcasts = {},
			NativeClose = {
				Connect = function(_, callback)
					return event.Event:Connect(callback)
				end,
			},
		}
		setmetatable(self, {
			__index = MockGuiService,
		})
		return self
	end

	function MockGuiService:BroadcastNotification(data, notification)
		table.insert(
			self.broadcasts,
			{
				data = data,
				notification = notification,
			})
	end

	function MockGuiService:GetNotificationTypeList()
		return {
			NATIVE_EXIT = 35,
		}
	end

	local MockAppStorageService = {}
	MockAppStorageService.__index = MockAppStorageService

	function MockAppStorageService.new(initial)
		local self = initial or {}

		setmetatable(self, {
			__index = MockAppStorageService,
		})
		return self
	end

	function MockAppStorageService:GetItem(key)
		return self[key]

	end

	function MockAppStorageService:SetItem(key, value)
		self[key] = tostring(value)
	end

	function MockAppStorageService:flush()
	end

	local MockStore = {}

	function MockStore.new(initialState)
		return Rodux.Store.new(reducer, initialState or {}, { Rodux.thunkMiddleware })
	end

	it("should broadcast NATIVE_EXIT with popup enabled", function()
		local store = MockStore.new({
			nativeClosePrompt = {
				closingApp = true,
			}
		})

		local guiService = MockGuiService.new()
		local appStorageService = MockAppStorageService.new()

		store:dispatch(OpenEducationalPopup(guiService, appStorageService, 10))

		expect(guiService.broadcasts[1].notification).to.equal(MockNotificationType.NATIVE_EXIT)
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
		expect(state.nativeClosePrompt.closingApp).to.equal(true)
		expect(tonumber(appStorageService:GetItem(LOCAL_STORAGE_KEY))).equal(1)
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
		expect(state.nativeClosePrompt.closingApp).to.equal(false)
		expect(tonumber(appStorageService:GetItem(LOCAL_STORAGE_KEY))).equal(3)
		expect(guiService.broadcasts[1].notification).to.equal(MockNotificationType.NATIVE_EXIT)
	end)

end
