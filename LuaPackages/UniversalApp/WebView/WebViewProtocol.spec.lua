--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local HttpService = game:GetService("HttpService")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local MessageBus = require(CorePackages.Workspace.Packages.MessageBus).MessageBus
	local WebViewProtocol = require(CorePackages.UniversalApp.WebView.WebViewProtocol)
	local GetFFlagEnableUnifiedWebViews = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableUnifiedWebViews

	local JestGlobals = require(CorePackages.JestGlobals)
	local jest = JestGlobals.jest
	local expect = JestGlobals.expect

	local createMemberFunctionMocker = require(CorePackages.Workspace.Packages.UnitTestHelpers).createMemberFunctionMocker
	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

	local function createHandler()
		local acquired = false

		local function getAcquired()
			return acquired
		end

		local function onAcquired()
			acquired = true
		end

		return getAcquired, onAcquired
	end

	local function createMockBrowserService()
		local sendCommand = jest.fn()
		local javaScriptEvent = Instance.new("BindableEvent")
		return {
			SendCommand = sendCommand,
			JavaScriptCallback = javaScriptEvent.Event,
			_jsEvent = javaScriptEvent,
		}
	end

	describe("WebViewProtocol", function()
		beforeAll(function(c)
			c.browserServiceMock = createMockBrowserService()
			c.WebViewProtocol = WebViewProtocol.new(nil, c.browserServiceMock)
			c.subscriber = MessageBus.Subscriber.new()
			c.mockMemberFunction, c.resetMockMemberFunctions = createMemberFunctionMocker(c.WebViewProtocol)
		end)

		beforeEach(function(c)
			c.mockMemberFunction("isEnabled").mockReturnValue(true)
		end)

		afterEach(function(c)
			c.mockMemberFunction("isEnabled").mockReturnValue(true)
			c.WebViewProtocol:stopListening()
			c.subscriber:unsubscribeFromAllMessages()
			c.browserServiceMock.SendCommand.mockReset()
			c.resetMockMemberFunctions()
		end)

		it("should throw if the protocol is not enabled", function(c)
			c.mockMemberFunction("isEnabled").mockReturnValue(false)

			expect(c.WebViewProtocol.isEnabled()).toEqual(false)
			expect(function()
				c.WebViewProtocol:openWindow({
					url = "roblox.com",
					windowType = if GetFFlagEnableUnifiedWebViews()
						then nil
						else "Default",
				})
			end).toThrow()
			expect(function()
				c.WebViewProtocol:mutateWindow({})
			end).toThrow()
			expect(function()
				c.WebViewProtocol:closeWindow()
			end).toThrow()
			expect(function()
				c.WebViewProtocol:listenForWindowClose(function() end)
			end).toThrow()
			expect(function()
				c.WebViewProtocol:stopListeningForWindowClose()
			end).toThrow()
			expect(function()
				c.WebViewProtocol:stopListening()
			end).toThrow()
		end)

		describe("Open Window", function()
			it("should open the window with minimum valid params", function(c)
				local windowOpened = false
				c.subscriber:subscribe(WebViewProtocol.OPEN_WINDOW_DESCRIPTOR, function(params)
					windowOpened = true
				end)

				c.WebViewProtocol:openWindow({
					url = "roblox.com",
					windowType = if GetFFlagEnableUnifiedWebViews()
						then nil
						else "Default",
				})
				wait()

				expect(windowOpened).toEqual(true)
			end)

			it("should open the window with all valid params", function(c)
				local windowOpened = false
				c.subscriber:subscribe(WebViewProtocol.OPEN_WINDOW_DESCRIPTOR, function(params)
					windowOpened = true
				end)

				c.WebViewProtocol:openWindow({
					url = "roblox.com",
					title = "Roblox",
					isVisible = true,
					searchParams = {
						searchType = "Players",
					},
					transitionAnimation = "Slide-Out",
					windowType = "Default",
				})
				wait()

				expect(windowOpened).toEqual(true)
			end)

			it("should not open window without a url", function(c)
				local windowOpened = false
				c.subscriber:subscribe(WebViewProtocol.OPEN_WINDOW_DESCRIPTOR, function(params)
					windowOpened = true
				end)

				expect(function()
					c.WebViewProtocol:openWindow({
						windowType = "Default",
					})
				end).toThrow()

				expect(windowOpened).toEqual(false)
			end)

			if GetFFlagEnableUnifiedWebViews() then
				it("should force visibility with shouldForceVisibleOnOpen=true", function(c)
					c.mockMemberFunction("shouldForceVisibleOnOpen").mockReturnValue(true)
					c.mockMemberFunction("shouldForceBrowserServiceOnMutate").mockReturnValue(false)

					local isVisible = nil

					c.subscriber:subscribe(WebViewProtocol.OPEN_WINDOW_DESCRIPTOR, function(params)
						isVisible = params.isVisible
					end)

					c.WebViewProtocol:openWindow({
						url = "roblox.com",
						isVisible = false,
					})
					wait()

					expect(isVisible).toEqual(true)
				end)

				it("should not force visibility with shouldForceVisibleOnOpen=false", function(c)
					c.mockMemberFunction("shouldForceVisibleOnOpen").mockReturnValue(false)
					c.mockMemberFunction("shouldForceBrowserServiceOnMutate").mockReturnValue(false)

					local isVisible = nil

					c.subscriber:subscribe(WebViewProtocol.OPEN_WINDOW_DESCRIPTOR, function(params)
						isVisible = params.isVisible
					end)

					c.WebViewProtocol:openWindow({
						url = "roblox.com",
						isVisible = false,
					})
					wait()

					expect(isVisible).toEqual(false)
				end)

				it("should rename visibility with shouldRenameIsVisibleParam=true", function(c)
					c.mockMemberFunction("shouldRenameIsVisibleParam").mockReturnValue(true)

					local visible = nil

					c.subscriber:subscribe(WebViewProtocol.OPEN_WINDOW_DESCRIPTOR, function(params)
						visible = params.visible
					end)

					c.WebViewProtocol:openWindow({
						url = "roblox.com",
						isVisible = true,
					})
					wait()

					expect(visible).toEqual(true)
				end)

				it("should not rename visibility with shouldRenameIsVisibleParam=false", function(c)
					c.mockMemberFunction("shouldRenameIsVisibleParam").mockReturnValue(false)

					local visible = nil

					c.subscriber:subscribe(WebViewProtocol.OPEN_WINDOW_DESCRIPTOR, function(params)
						visible = params.visible
					end)

					c.WebViewProtocol:openWindow({
						url = "roblox.com",
						isVisible = true,
					})
					wait()

					expect(visible).toEqual(nil)
				end)
			end
		end)

		describe("Mutate Window", function()
			it("should mutate the window with all valid params", function(c)
				c.mockMemberFunction("shouldForceBrowserServiceOnMutate").mockReturnValue(false)

				local currentUrl = "roblox.com"
				c.subscriber:subscribe(WebViewProtocol.MUTATE_WINDOW_DESCRIPTOR, function(params)
					currentUrl = params.url
				end)

				c.WebViewProtocol:mutateWindow({
					url = "minecraft.net",
					title = "Minecraft",
					isVisible = true,
					searchParams = {
						searchType = "Players",
					},
					transitionAnimation = "Slide-Out",
					windowType = "Default",
				})
				wait()

				expect(currentUrl).toEqual("minecraft.net")
			end)

			if GetFFlagEnableUnifiedWebViews() then
				it("should use BrowserService with shouldForceBrowserServiceOnMutate=true", function(c)
					c.mockMemberFunction("shouldForceBrowserServiceOnMutate").mockReturnValue(true)

					local mutateCalled = false
					c.subscriber:subscribe(WebViewProtocol.MUTATE_WINDOW_DESCRIPTOR, function()
						mutateCalled = true
					end)

					c.WebViewProtocol:mutateWindow({
						isVisible = true,
					})
					wait()

					expect(mutateCalled).toEqual(false)
					expect(c.browserServiceMock.SendCommand).toHaveBeenCalledTimes(1)
					expect(c.browserServiceMock.SendCommand).toHaveBeenCalledWith(
						c.browserServiceMock,
						HttpService:JSONEncode({
							command = "config",
							visible = true,
						})
					)
				end)

				it("should not use BrowserService with shouldForceBrowserServiceOnMutate=false", function(c)
					c.mockMemberFunction("shouldForceBrowserServiceOnMutate").mockReturnValue(false)

					local mutateCalled = false
					c.subscriber:subscribe(WebViewProtocol.MUTATE_WINDOW_DESCRIPTOR, function()
						mutateCalled = true
					end)

					c.WebViewProtocol:mutateWindow({
						isVisible = true,
					})
					wait()

					expect(mutateCalled).toEqual(true)
					expect(c.browserServiceMock.SendCommand).never.toHaveBeenCalled()
				end)
			end
		end)

		describe("Close Window", function()
			it("should receive the window closing event", function(c)
				local windowClosed = false
				c.WebViewProtocol:listenForWindowClose(function()
					windowClosed = true
				end)

				MessageBus.publish(WebViewProtocol.HANDLE_WINDOW_CLOSE_DESCRIPTOR, {})
				wait()

				expect(windowClosed).toEqual(true)
			end)

			if GetFFlagEnableUnifiedWebViews() then
				it("should not receive the window closing event when unsubscribed", function(c)
					local windowClosed = false
					c.WebViewProtocol:listenForWindowClose(function()
						windowClosed = true
					end)

					c.WebViewProtocol:stopListeningForWindowClose()

					MessageBus.publish(WebViewProtocol.HANDLE_WINDOW_CLOSE_DESCRIPTOR, {})
					wait()

					expect(windowClosed).toEqual(false)
				end)
			end
		end)

		if GetFFlagEnableUnifiedWebViews() then
			describe("Request access", function()
				it("should process multiple async requests in fifo order", function(c)
					local getAcquired1, onAcquired1 = createHandler()
					local getAcquired2, onAcquired2 = createHandler()
					local getAcquired3, onAcquired3 = createHandler()

					expect(getAcquired1()).toEqual(false)
					expect(getAcquired2()).toEqual(false)
					expect(getAcquired3()).toEqual(false)

					local release1 = c.WebViewProtocol:request(onAcquired1)
					local release2 = c.WebViewProtocol:request(onAcquired2)
					local release3 = c.WebViewProtocol:request(onAcquired3)

					expect(getAcquired1()).toEqual(true)
					expect(getAcquired2()).toEqual(false)
					expect(getAcquired3()).toEqual(false)

					release1()
					wait()

					expect(getAcquired1()).toEqual(true)
					expect(getAcquired2()).toEqual(true)
					expect(getAcquired3()).toEqual(false)

					release2()
					wait()

					expect(getAcquired1()).toEqual(true)
					expect(getAcquired2()).toEqual(true)
					expect(getAcquired3()).toEqual(true)

					release3()
					wait()
				end)
			end)

			describe("JavaScript callback", function()
				it("should receive JavaScript event callbacks", function(c)
					local javaScriptEventContent = nil
					c.WebViewProtocol:listenForJavaScript(function(content)
						javaScriptEventContent = content
					end)

					c.browserServiceMock._jsEvent:Fire("some js event")

					waitForEvents()

					expect(javaScriptEventContent).toEqual("some js event")
				end)

				it("should not receive JavaScript event callbacks when unsubscribed", function(c)
					local javaScriptEventContent = nil
					c.WebViewProtocol:listenForJavaScript(function(content)
						javaScriptEventContent = content
					end)

					c.WebViewProtocol:stopListeningForJavaScript()

					c.browserServiceMock._jsEvent:Fire("some js event")

					expect(javaScriptEventContent).toEqual(nil)
				end)
			end)
		end
	end)
end
