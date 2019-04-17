return function()
	local InviteToGamePrompt = require(script.Parent.InviteToGamePrompt)

	describe("new", function()
		it("should return a new prompt", function()
			local prompt = InviteToGamePrompt.new()

			expect(prompt).to.be.ok()
			expect(prompt.show).to.be.ok()
			expect(prompt.hide).to.be.ok()
			expect(prompt.isActive).to.equal(false)
		end)

		it("should accept mountTarget as a parameter", function()
			local folder = Instance.new("Folder")
			local prompt = InviteToGamePrompt.new(folder)

			expect(prompt).to.be.ok()
			expect(prompt.show).to.be.ok()
			expect(prompt.hide).to.be.ok()
			expect(prompt.isActive).to.equal(false)

			expect(prompt.mountTarget).to.be.ok()
			expect(prompt.mountTarget).to.equal(folder)

			folder:Destroy()
		end)
	end)

	describe("withSocialServiceAndLocalPlayer", function()
		it("should accept passed socialService", function()
			local mockSocialService = {}
			local prompt = InviteToGamePrompt.new()
			local promptWithSocial = prompt:withSocialServiceAndLocalPlayer(mockSocialService)

			expect(promptWithSocial).to.be.ok()
			expect(promptWithSocial.socialService).to.equal(mockSocialService)
			expect(promptWithSocial).to.equal(prompt)
		end)

		it("should accept passed localPlayer", function()
			local mockLocalPlayer = {}
			local prompt = InviteToGamePrompt.new()
			local promptWithPlayer = prompt:withSocialServiceAndLocalPlayer(nil, mockLocalPlayer)

			expect(promptWithPlayer).to.be.ok()
			expect(promptWithPlayer.localPlayer).to.equal(mockLocalPlayer)
			expect(promptWithPlayer).to.equal(prompt)
		end)
	end)

	describe("withAnalytics", function()
		it("should accept passed analytics", function()
			local mockAnalytics = {}
			local prompt = InviteToGamePrompt.new()
			local promptWithAnalytics = prompt:withAnalytics(mockAnalytics)

			expect(promptWithAnalytics).to.be.ok()
			expect(promptWithAnalytics.analytics).to.equal(mockAnalytics)
			expect(promptWithAnalytics).to.equal(prompt)
		end)
	end)

	describe("show", function()
		it("should create an instance on the first show", function()
			local folder = Instance.new("Folder")
			local prompt = InviteToGamePrompt.new(folder)

			expect(prompt.instance).to.never.be.ok()

			prompt:show()

			expect(prompt.instance).to.be.ok()

			InviteToGamePrompt:destruct()
			folder:Destroy()
		end)

		it("should make the prompt visible", function()
			local folder = Instance.new("Folder")
			local prompt = InviteToGamePrompt.new(folder)

			prompt:show()

			local screenGui = folder:FindFirstChildOfClass("ScreenGui", true)
			expect(screenGui).to.be.ok()
			expect(screenGui.Enabled).to.equal(true)

			InviteToGamePrompt:destruct()
			folder:Destroy()
		end)

		it("should do nothing if prompt is already visible", function()
			local folder = Instance.new("Folder")
			local prompt = InviteToGamePrompt.new(folder)

			prompt:show()
			prompt:show()

			local screenGui = folder:FindFirstChildOfClass("ScreenGui", true)
			expect(screenGui).to.be.ok()
			expect(screenGui.Enabled).to.equal(true)

			InviteToGamePrompt:destruct()
			folder:Destroy()
		end)
	end)

	describe("hide", function()
		it("should do nothing if prompt is already hidden", function()
			local folder = Instance.new("Folder")
			local prompt = InviteToGamePrompt.new(folder)

			prompt:hide()
			prompt:hide()

			expect(prompt.instance).to.never.be.ok()

			InviteToGamePrompt:destruct()
			folder:Destroy()
		end)
	end)

	it("should hide the active prompt if it was shown", function()
		local folder = Instance.new("Folder")
		local prompt = InviteToGamePrompt.new(folder)

		prompt:show()
		prompt:hide()

		expect(prompt.instance).to.be.ok()
		local screenGui = folder:FindFirstChildOfClass("ScreenGui", true)
		expect(screenGui).to.be.ok()
		expect(screenGui.Enabled).to.equal(false)

		InviteToGamePrompt:destruct()
		folder:Destroy()
	end)

	it("should invoke socialService's InvokeGameInvitePromptClosed after shown", function()
		local lastSentLocalPlayer
		local lastSentUserIds

		local mockSocialService = {
			InvokeGameInvitePromptClosed = function(self, localPlayer, sentUserIds)
				lastSentLocalPlayer = localPlayer
				lastSentUserIds = sentUserIds
			end,
		}
		local mockLocalPlayer = {}
		local mockSentUserIds = {}

		local folder = Instance.new("Folder")
		local prompt = InviteToGamePrompt.new(folder)
			:withSocialServiceAndLocalPlayer(mockSocialService, mockLocalPlayer)

		prompt:show()
		prompt:hide(mockSentUserIds)

		expect(lastSentLocalPlayer).to.equal(mockLocalPlayer)
		-- lastSentUserIds should always be an empty array
		expect(#lastSentUserIds).to.equal(0)

		InviteToGamePrompt:destruct()
		folder:Destroy()
	end)

	it("should not invoke socialService's InvokeGameInvitePromptClosed if never shown", function()
		local lastSentLocalPlayer
		local lastSentUserIds

		local mockSocialService = {
			InvokeGameInvitePromptClosed = function(self, localPlayer, sentUserIds)
				lastSentLocalPlayer = localPlayer
				lastSentUserIds = sentUserIds
			end,
		}
		local mockLocalPlayer = {}
		local mockSentUserIds = {}

		local folder = Instance.new("Folder")
		local prompt = InviteToGamePrompt.new(folder)
			:withSocialServiceAndLocalPlayer(mockSocialService, mockLocalPlayer)

		-- intentionally do not show
		prompt:hide(mockSentUserIds)

		expect(lastSentLocalPlayer).to.equal(nil)
		expect(lastSentUserIds).to.equal(nil)

		InviteToGamePrompt:destruct()
		folder:Destroy()
	end)
end