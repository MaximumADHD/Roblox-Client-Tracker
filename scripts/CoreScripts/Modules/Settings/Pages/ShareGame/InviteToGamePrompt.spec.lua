--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local act = ReactRoblox.act

	local InviteToGamePrompt = require(script.Parent.InviteToGamePrompt)

	describe("new", function()
		it("should return a new prompt", function()
			local prompt = InviteToGamePrompt.new()

			expect(prompt).toMatchObject({
				show = expect.anything(),
				hide = expect.anything(),
				isActive = false,
			})
		end)

		it("should accept mountTarget as a parameter", function()
			local folder = Instance.new("Folder")
			local prompt = InviteToGamePrompt.new(folder)

			expect(prompt).toMatchObject({
				show = expect.anything(),
				hide = expect.anything(),
				isActive = false,
				mountTarget = folder,
			})

			folder:Destroy()
		end)
	end)

	describe("withSocialServiceAndLocalPlayer", function()
		it("should accept passed socialService", function()
			local mockSocialService = {}
			local prompt = InviteToGamePrompt.new()
			local promptWithSocial = prompt:withSocialServiceAndLocalPlayer(mockSocialService)

			expect(promptWithSocial.socialService).toEqual(mockSocialService)
			expect(promptWithSocial).toBe(prompt)
		end)

		it("should accept passed localPlayer", function()
			local mockLocalPlayer = {}
			local prompt = InviteToGamePrompt.new()
			local promptWithPlayer = prompt:withSocialServiceAndLocalPlayer(nil, mockLocalPlayer)

			expect(promptWithPlayer.localPlayer).toEqual(mockLocalPlayer)
			expect(promptWithPlayer).toBe(prompt)
		end)
	end)

	describe("withAnalytics", function()
		it("should accept passed analytics", function()
			local mockAnalytics = {}
			local prompt = InviteToGamePrompt.new()
			local promptWithAnalytics = prompt:withAnalytics(mockAnalytics)

			expect(promptWithAnalytics.analytics).toEqual(mockAnalytics)
			expect(promptWithAnalytics).toBe(prompt)
		end)
	end)

	describe("show", function()
		it("should create an instance on the first show", function()
			local folder = Instance.new("Folder")
			local prompt = InviteToGamePrompt.new(folder)

			expect(prompt.instance).toBeNil()

			act(function()
				prompt:show()
			end)

			expect(prompt.instance).never.toBeNil()

			InviteToGamePrompt:destruct()
			folder:Destroy()
		end)

		it("should make the prompt visible", function()
			local folder = Instance.new("Folder")
			local prompt = InviteToGamePrompt.new(folder)

			act(function()
				prompt:show()
			end)

			local screenGui = folder:FindFirstChildOfClass("ScreenGui", true)
			expect(screenGui).toMatchInstance({ Enabled = true })

			InviteToGamePrompt:destruct()
			folder:Destroy()
		end)

		it("should do nothing if prompt is already visible", function()
			local folder = Instance.new("Folder")
			local prompt = InviteToGamePrompt.new(folder)

			act(function()
				prompt:show()
			end)
			act(function()
				prompt:show()
			end)

			local screenGui = folder:FindFirstChildOfClass("ScreenGui", true)
			expect(screenGui).toMatchInstance({ Enabled = true })

			InviteToGamePrompt:destruct()
			folder:Destroy()
		end)
	end)

	describe("hide", function()
		it("should do nothing if prompt is already hidden", function()
			local folder = Instance.new("Folder")
			local prompt = InviteToGamePrompt.new(folder)

			act(function()
				prompt:hide()
			end)
			act(function()
				prompt:hide()
			end)

			expect(prompt.instance).toBeNil()

			InviteToGamePrompt:destruct()
			folder:Destroy()
		end)
	end)

	it("should hide the active prompt if it was shown", function()
		local folder = Instance.new("Folder")
		local prompt = InviteToGamePrompt.new(folder)

		act(function()
			prompt:show()
		end)
		act(function()
			prompt:hide()
		end)

		expect(prompt.instance).never.toBeNil()
		local screenGui = folder:FindFirstChildOfClass("ScreenGui", true)
		expect(screenGui).toMatchInstance({ Enabled = false })

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

		act(function()
			prompt:show()
		end)
		act(function()
			prompt:hide(mockSentUserIds)
		end)

		expect(lastSentLocalPlayer).toBe(mockLocalPlayer)
		-- lastSentUserIds should always be an empty array
		expect(#lastSentUserIds).toBe(0)

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
		act(function()
			prompt:hide(mockSentUserIds)
		end)

		expect(lastSentLocalPlayer).toBeNil()
		expect(lastSentUserIds).toBeNil()

		InviteToGamePrompt:destruct()
		folder:Destroy()
	end)
end
