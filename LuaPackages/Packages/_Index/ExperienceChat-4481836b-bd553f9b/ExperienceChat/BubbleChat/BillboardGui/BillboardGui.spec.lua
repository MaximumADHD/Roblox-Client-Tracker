local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local createStore = require(ExperienceChat.createStore)
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local IncomingMessageReceived = require(ExperienceChat.Actions.IncomingMessageReceived)
local BubbleChatSettingsChanged = require(ExperienceChat.Actions.BubbleChatSettingsChanged)

return function()
	local BillboardGui = require(script.Parent)

	local player = game.Players.LocalPlayer
	local TextChannel = Instance.new("TextChannel")
	TextChannel.Parent = game:GetService("TextChatService")
	local TextSource = TextChannel:AddUserAsync(player.UserId)

	describe("GIVEN props", function()
		local store = createStore()
		store:dispatch(BubbleChatSettingsChanged("BubbleDuration", 1))

		local props = {
			userId = tostring(player.UserId),
			onFadeOut = jest.fn(),
			voiceEnabled = true,
			chatSettings = {},
		}

		it("SHOULD mount with store", function()
			local tree = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				app = Roact.createElement(BillboardGui, props),
			})

			Roact.mount(tree, game:GetService("CoreGui"))
		end)

		describe("GIVEN custom character and camera close", function()
			local camera = workspace.CurrentCamera
			local character = Instance.new("Model")

			-- part
			local part = Instance.new("Part")
			part.Anchored = true
			part:PivotTo(camera.CFrame)
			part.Parent = character
			character.PrimaryPart = part

			-- humanoid
			local humanoid = Instance.new("Humanoid")
			humanoid.MaxHealth = 100
			humanoid.Health = 100
			humanoid.Parent = character

			character.Parent = game
			player.Character = character

			it("SHOULD mount", function(c)
				local tree = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					app = Roact.createElement(BillboardGui, props),
				})

				local folder = Instance.new("ScreenGui")
				folder.Parent = game:GetService("CoreGui")
				local roactInstance = Roact.mount(tree, folder)

				Roact.act(function()
					game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Heartbeat:Wait()
				end)

				local billboardInstance = folder:FindFirstChildOfClass("BillboardGui", true)
				assert(billboardInstance, "expected billboard instance")
				expect(billboardInstance).toHaveProperty("Adornee", character.PrimaryPart)

				-- send a message
				Roact.act(function()
					store:dispatch(IncomingMessageReceived({
						MessageId = "1",
						PrefixText = "Me",
						Text = "hello world!",
						Timestamp = DateTime.now(),
						TextSource = TextSource,
						TextChannel = TextChannel,
						Status = Enum.TextChatMessageStatus.Success,
					}))
					game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Heartbeat:Wait()
				end)

				local renderedBubble = c.findFirstInstance(billboardInstance, {
					Text = "hello world!",
				})
				assert(renderedBubble, "should have rendered message as a bubble")

				-- wait for bubble lifetime...
				Roact.act(function()
					local now = os.clock()
					local lifetime = store:getState().BubbleChatSettings.BubbleDuration
					while os.clock() - now < lifetime do
						task.wait()
					end
					game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Heartbeat:Wait()
				end)

				local renderedBubbleAgain = c.findFirstInstance(billboardInstance, {
					Text = "hello world!",
				})
				assert(renderedBubbleAgain == nil, "should have faded out the bubble by now")

				-- zoom out
				camera.CFrame = camera.CFrame + Vector3.new(0, 90, 0)
				-- send a 2nd message
				Roact.act(function()
					store:dispatch(IncomingMessageReceived({
						MessageId = "2",
						PrefixText = "Me",
						Text = "goodbye world!",
						Timestamp = DateTime.now(),
						TextSource = TextSource,
						TextChannel = TextChannel,
						Status = Enum.TextChatMessageStatus.Success,
					}))
					game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Heartbeat:Wait()
				end)

				local distantBubble = c.findFirstInstance(billboardInstance, {
					Name = "DistantBubble",
				})
				assert(distantBubble, "should have rendered a distant bubble")

				Roact.unmount(roactInstance)
			end)
		end)
	end)
end
