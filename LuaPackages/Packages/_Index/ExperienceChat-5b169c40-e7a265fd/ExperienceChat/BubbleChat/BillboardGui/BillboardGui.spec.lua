local HttpService = game:GetService("HttpService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local createStore = require(ExperienceChat.createStore)
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local IncomingMessageReceived = require(ExperienceChat.Actions.IncomingMessageReceived)
local IncomingBubbleChatMessageReceived = require(ExperienceChat.Actions.IncomingBubbleChatMessageReceived)
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

				-- zoom back in
				camera.CFrame = camera.CFrame - Vector3.new(0, 90, 0)
				-- send a 3rd message, but as a bubble chat only message (i.e. Chat.Chatted)
				Roact.act(function()
					store:dispatch(IncomingBubbleChatMessageReceived({
						message = "hello again!",
						bubbleChatMessageId = HttpService:GenerateGUID(false),
						bubbleChatMessageUserId = tostring(player.UserId),
						partOrModel = character,
						timestamp = DateTime.now(),
					}))
					game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Heartbeat:Wait()
				end)

				local renderedBubbleForBubbleChatOnly = c.findFirstInstance(billboardInstance, {
					Text = "hello again!",
				})
				assert(renderedBubbleForBubbleChatOnly, "should have rendered message as a bubble")

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

				local renderedBubbleAgainForBubbleChatOnly = c.findFirstInstance(billboardInstance, {
					Text = "hello again!",
				})
				assert(renderedBubbleAgainForBubbleChatOnly == nil, "should have faded out the bubble by now")

				Roact.unmount(roactInstance)
			end)
		end)
	end)

	describe("ControlsBubble", function()
		beforeEach(function(c)
			c.flagValue = game:SetFastFlagForTesting("BubbleChatWithControlButtons2", true)
		end)

		afterEach(function(c)
			game:SetFastFlagForTesting("BubbleChatWithControlButtons2", c.flagValue)
		end)

		local store = createStore()
		store:dispatch(BubbleChatSettingsChanged("BubbleDuration", 1))

		local function getProps(propConfig)
			local userId = if propConfig.isLocalPlayer then tostring(player.UserId) else "401784814"

			return {
				userId = userId,
				onFadeOut = jest.fn(),
				voiceEnabled = propConfig.voiceEnabled,
				chatSettings = {},
				selfViewListenerChanged = {
					selfViewVisibilityUpdatedSignal = Instance.new("BindableEvent").Event,
					getSelfViewVisibility = function()
						return propConfig.selfViewVisible
					end,
				},
				voiceState = "Inactive",
			}
		end

		local character = player.Character

		it("should render a Controls Bubble if self view is closed", function()
			local propConfig = {
				selfViewVisible = false,
				isLocalPlayer = true,
				voiceEnabled = true,
			}

			local tree = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				app = Roact.createElement(BillboardGui, getProps(propConfig)),
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

			local controlsBubble = billboardInstance:FindFirstChild("ControlsBubble", true)
			assert(controlsBubble, "should have rendered a controls bubble")

			Roact.unmount(roactInstance)
		end)

		it("Should NOT render a Controls bubble if self view is open", function()
			local propConfig = {
				selfViewVisible = true,
				isLocalPlayer = true,
				voiceEnabled = true,
			}

			local tree = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				app = Roact.createElement(BillboardGui, getProps(propConfig)),
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

			local controlsBubble = billboardInstance:FindFirstChild("ControlsBubble", true)
			assert(controlsBubble == nil, "should NOT have rendered a controls bubble")

			Roact.unmount(roactInstance)
		end)

		--[[
			Because BillboardGui.lua uses the Players Service directly, we need to initialize
			a player as the local player in order for a billboard to be shown.

			Then we can update the isLocalPlayer status through props.
		]]
		it("Should render a Controls bubble on another player if self view is open for the local player", function()
			local propConfig = {
				selfViewVisible = true,
				isLocalPlayer = true,
				voiceEnabled = true,
			}
			local tree = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				app = Roact.createElement(BillboardGui, getProps(propConfig)),
			})

			local folder = Instance.new("ScreenGui")
			folder.Parent = game:GetService("CoreGui")
			local roactInstance = Roact.mount(tree, folder)

			Roact.act(function()
				game:GetService("RunService").Heartbeat:Wait()
				game:GetService("RunService").Heartbeat:Wait()
				game:GetService("RunService").Heartbeat:Wait()

				--[[
					Update the UserId prop to signify the created character is not the LocalPlayer.
				]]
				propConfig = {
					selfViewVisible = true,
					isLocalPlayer = false,
					voiceEnabled = true,
				}

				Roact.update(
					roactInstance,
					Roact.createElement(RoactRodux.StoreProvider, {
						store = store,
					}, {
						app = Roact.createElement(BillboardGui, getProps(propConfig)),
					})
				)
			end)

			local billboardInstance = folder:FindFirstChildOfClass("BillboardGui", true)
			assert(billboardInstance, "expected billboard instance")
			expect(billboardInstance).toHaveProperty("Adornee", character.PrimaryPart)

			local controlsBubble = billboardInstance:FindFirstChild("ControlsBubble", true)
			assert(controlsBubble, "should have rendered a controls bubble")

			Roact.unmount(roactInstance)
		end)

		it("Should NOT render a Controls bubble on another player if voice is disabled for them", function()
			local propConfig = {
				selfViewVisible = true,
				isLocalPlayer = true,
				voiceEnabled = true,
			}

			local tree = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				app = Roact.createElement(BillboardGui, getProps(propConfig)),
			})

			local folder = Instance.new("ScreenGui")
			folder.Parent = game:GetService("CoreGui")
			local roactInstance = Roact.mount(tree, folder)

			Roact.act(function()
				game:GetService("RunService").Heartbeat:Wait()
				game:GetService("RunService").Heartbeat:Wait()
				game:GetService("RunService").Heartbeat:Wait()

				propConfig = {
					selfViewVisible = true,
					isLocalPlayer = false,
					voiceEnabled = false,
				}

				--[[
					Update the UserId prop to signify the created character is not the LocalPlayer.
				]]
				Roact.update(
					roactInstance,
					Roact.createElement(RoactRodux.StoreProvider, {
						store = store,
					}, {
						app = Roact.createElement(BillboardGui, getProps(propConfig)),
					})
				)
			end)

			local billboardInstance = folder:FindFirstChildOfClass("BillboardGui", true)
			assert(billboardInstance, "expected billboard instance")
			expect(billboardInstance).toHaveProperty("Adornee", character.PrimaryPart)

			local controlsBubble = billboardInstance:FindFirstChild("ControlsBubble", true)
			assert(controlsBubble == nil, "should NOT have rendered a controls bubble")

			Roact.unmount(roactInstance)
		end)
	end)
end
