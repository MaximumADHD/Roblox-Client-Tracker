--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local MessageBus = require(CorePackages.UniversalApp.MessageBus)
	local WebViewProtocol = require(CorePackages.UniversalApp.WebView.WebViewProtocol)

	describe("WebViewProtocol", function()
		beforeAll(function(c)
			c.WebViewProtocol = WebViewProtocol.new()
			c.subscriber = MessageBus.Subscriber.new()
		end)

		beforeEach(function(c)
			c.oldValue = game:SetFastFlagForTesting("EnableWebViewProtocolForTestingOnly", true)
		end)

		afterEach(function(c)
			c.WebViewProtocol:stopListening()
			c.subscriber:unsubscribeFromAllMessages()
			game:SetFastFlagForTesting("EnableWebViewProtocolForTestingOnly", c.oldValue)
		end)

		it("should throw if the protocol is not enabled", function(c)
			game:SetFastFlagForTesting("EnableWebViewProtocolForTestingOnly", false)

			expect(c.WebViewProtocol.isEnabled()).to.equal(false)
			expect(function()
				c.WebViewProtocol:openWindow({
					url = "roblox.com",
					windowType = "Default",
				})
			end).to.throw()
			expect(function()
				c.WebViewProtocol:mutateWindow({})
			end).to.throw()
			expect(function()
				c.WebViewProtocol:closeWindow()
			end).to.throw()
			expect(function()
				c.WebViewProtocol:listenForWindowClose(function() end)
			end).to.throw()
			expect(function()
				c.WebViewProtocol:stopListening()
			end).to.throw()

			game:SetFastFlagForTesting("EnableWebViewProtocolForTestingOnly", true)
		end)

		describe("Open Window", function()
			it("should open the window with minimum valid params", function(c)
				local windowOpened = false
				c.subscriber:subscribe(WebViewProtocol.OPEN_WINDOW_DESCRIPTOR, function(params)
					windowOpened = true
				end)

				c.WebViewProtocol:openWindow({
					url = "roblox.com",
					windowType = "Default",
				})
				wait()

				expect(windowOpened).to.equal(true)
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

				expect(windowOpened).to.equal(true)
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
				end).to.throw()

				expect(windowOpened).to.equal(false)
			end)
		end)

		describe("Mutate Window", function()
			it("should mutate the window with all valid params", function(c)
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

				expect(currentUrl).to.equal("minecraft.net")
			end)
		end)

		describe("Close Window", function()
			it("should receive the window closing event", function(c)
				local windowOpened = true
				c.WebViewProtocol:listenForWindowClose(function()
					windowOpened = false
				end)

				MessageBus.publish(WebViewProtocol.HANDLE_WINDOW_CLOSE_DESCRIPTOR, {})
				wait()

				expect(windowOpened).to.equal(false)
			end)
		end)
	end)
end
