local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local jest = globals.jest
local Dictionary = require(Packages.llama).Dictionary
local Roact = require(Packages.Roact)
local GlobalFlags = require(ExperienceChat.GlobalFlags)
local Players = game:GetService("Players")

local UIBlox = require(Packages.UIBlox)
-- Don't error if already initialized
local ok, err = pcall(function()
	local UIBloxConfig = require(Packages:FindFirstChild("ExperienceChat"):FindFirstChild("UIBloxConfig"))
	UIBlox.init(UIBloxConfig)
end)
if not ok then
	warn("Error initializing UIBlox", err)
end

return function()
	describe("BubbleChatApp", function()
		beforeAll(function(root)
			local onFadeOut = jest.fn()
			root.onFadeOut = onFadeOut

			local storyDefinition = require(script.Parent:FindFirstChild("BubbleChatApp.story"))

			local createProps = function(c)
				return {
					controls = {
						hasCameraPermissions = true,
						hasMicPermissions = true,
						voiceState = "Inactive",
					},
					userId = "userId",
					getPermissions = function(callback)
						callback(c.hasCameraPermissions, c.hasMicPermissions)
					end,
					selfViewListenerChanged = {
						getSelfViewVisibility = function()
							return c.selfViewVisibility
						end,
						selfViewVisibilityUpdatedSignal = {
							connect = function() end,
						},
					},
					mockUserIdToPartOrModel = {
						[Players.LocalPlayer.UserId] = Instance.new("Attachment"),
					},
				}
			end

			root.mount = root.createMount(storyDefinition.story, createProps)

			root.update = function(c, roactInstance, updateProps)
				local updateCreateProps = function()
					return Dictionary.join(createProps(), updateProps)
				end

				local tree = c:makeTree(storyDefinition.story, updateCreateProps)
				Roact.update(roactInstance, tree)
			end
		end)

		it("should render PlayerButtons with camera enabled and voice chat disabled", function(c)
			local prevFlag = GlobalFlags.AvatarChatEnabled
			GlobalFlags.AvatarChatEnabled = true

			c.hasCameraPermissions = true
			c.hasMicPermissions = false

			local result = c:mount()
			Roact.act(function()
				game:GetService("RunService").Heartbeat:Wait()
				game:GetService("RunService").Heartbeat:Wait()
				game:GetService("RunService").Heartbeat:Wait()
			end)

			local PlayerButtons = result.instance:FindFirstChild("PlayerButtons", true)

			assert(PlayerButtons ~= nil, "player buttons should be visible")
			GlobalFlags.AvatarChatEnabled = prevFlag
		end)

		it("should NOT render PlayerButtons with camera enabled and voice chat disabled", function(c)
			local prevFlag = GlobalFlags.AvatarChatEnabled
			GlobalFlags.AvatarChatEnabled = true

			c.hasCameraPermissions = false
			c.hasMicPermissions = false

			local result = c:mount()
			Roact.act(function()
				game:GetService("RunService").Heartbeat:Wait()
				game:GetService("RunService").Heartbeat:Wait()
				game:GetService("RunService").Heartbeat:Wait()
			end)

			local PlayerButtons = result.instance:FindFirstChild("PlayerButtons", true)

			assert(PlayerButtons == nil, "player buttons should NOT be visible")
			GlobalFlags.AvatarChatEnabled = prevFlag
		end)
	end)
end
