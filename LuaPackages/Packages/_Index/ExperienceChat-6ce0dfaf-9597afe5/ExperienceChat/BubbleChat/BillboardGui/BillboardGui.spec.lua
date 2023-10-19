local HttpService = game:GetService("HttpService")
local TextChatService = game:GetService("TextChatService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local setUpConfigurationObjects = require(ExperienceChat.mountClientApp.helpers.setUpConfigurationObjects)

local createStore = require(ExperienceChat.createStore)
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local IncomingMessageReceived = require(ExperienceChat.Actions.IncomingMessageReceived)
local IncomingBubbleChatMessageReceived = require(ExperienceChat.Actions.IncomingBubbleChatMessageReceived)
local BubbleChatSettingsChanged = require(ExperienceChat.Actions.BubbleChatSettingsChanged)
local ChatPrivacySettingsReceived = require(ExperienceChat.Actions.ChatPrivacySettingsReceived)
local AdorneeAdded = require(ExperienceChat.Actions.AdorneeAdded)

local GlobalFlags = require(ExperienceChat.GlobalFlags)

return function()
	local BillboardGui = require(script.Parent)

	local player = game.Players.LocalPlayer
	local TextChannel = Instance.new("TextChannel")
	TextChannel.Parent = game:GetService("TextChatService")
	local TextSource = TextChannel:AddUserAsync(player.UserId)

	describe("GIVEN props", function()
		local store = createStore()
		store:dispatch(BubbleChatSettingsChanged("BubbleDuration", 1))
		store:dispatch(ChatPrivacySettingsReceived(true))
		store:dispatch(BubbleChatSettingsChanged("Enabled", true))

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

			store:dispatch(AdorneeAdded(player.UserId, character, humanoid))

			beforeAll(function(c)
				c.mountBillboardInstance = function()
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

					return {
						billboardInstance = billboardInstance,
						unmount = function()
							Roact.unmount(roactInstance)
							billboardInstance:Destroy()
						end,
					}
				end
			end)

			it("SHOULD mount", function(c)
				local mountResult = c.mountBillboardInstance()
				local billboardInstance = mountResult.billboardInstance

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
				-- send a 3rd message, but as a bubble chat only message (i.e. Chat.Chatted, TextChatService.BubbleAdded)
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

				mountResult.unmount()
			end)

			describe("WHEN using BubbleChatConfigurationAPI", function()
				beforeAll(function(c)
					c.bubbleChatConfiguration = TextChatService:FindFirstChildOfClass("BubbleChatConfiguration")

					c.doesInstanceSettingMatchConfiguration = function(billboardInstance, setting)
						local chatBubbleFrame = c.findFirstInstance(billboardInstance, { Name = "ChatBubbleFrame" })
						local textLabel = c.findFirstInstance(billboardInstance, { ClassName = "TextLabel" })
						local instanceSettings = {
							BackgroundColor3 = chatBubbleFrame.BackgroundColor3,
							TextColor3 = textLabel.TextColor3,
							TextSize = textLabel.TextSize,
							FontFace = textLabel.FontFace,
						}

						local property = setting.property
						local value = setting.value
						if type(value) == "number" then
							expect(instanceSettings[property]).toBeCloseTo(value)
						else
							expect(instanceSettings[property]).toEqual(value)
						end
					end

					c.setBubbleChatProperty = function(property, value)
						c.Roact.act(function()
							c.bubbleChatConfiguration[property] = value
							wait()
						end)
					end

					local RBXGeneral = Instance.new("TextChannel")
					RBXGeneral.Name = "RBXGeneral"
					RBXGeneral.Parent = TextChatService:FindFirstChild("TextChannels")
					local config = {
						defaultTargetTextChannel = RBXGeneral,
					}
					c.mockConfig = config
				end)

				beforeEach(function(c)
					local mountResult = c.mountBillboardInstance()
					setUpConfigurationObjects(store, c.mockConfig)

					c.billboardInstance = mountResult.billboardInstance

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
				end)

				it("SHOULD have default property style values", function(c)
					local properties = {
						"BackgroundColor3",
						"TextColor3",
						"TextSize",
						"FontFace",
					}
					for _, property in pairs(properties) do
						c.doesInstanceSettingMatchConfiguration(
							c.billboardInstance,
							{ property = property, value = c.bubbleChatConfiguration[property] }
						)
					end
				end)

				it("SHOULD mount with configuration values even when changed", function(c)
					local customSettings = {
						{
							property = "FontFace",
							value = Font.new("rbxasset://fonts/families/Merriweather.json"),
						},
						{
							property = "TextColor3",
							value = Color3.new(0.3, 0.9, 0.4),
						},
						{
							property = "BackgroundColor3",
							value = Color3.new(0.1, 0.2, 0.1),
						},
						{
							property = "TextSize",
							value = 6,
						},
					}

					for _, setting in pairs(customSettings) do
						c.setBubbleChatProperty(setting.property, setting.value)
						c.doesInstanceSettingMatchConfiguration(c.billboardInstance, setting)
					end
				end)

				it("SHOULD have correct property values when changed by configuration", function(c)
					local customSettings = {
						{
							property = "FontFace",
							value = Font.new(
								"rbxasset://fonts/families/SpecialElite.json",
								Enum.FontWeight.Bold,
								Enum.FontStyle.Italic
							),
						},
						{
							property = "TextColor3",
							value = Color3.new(0.2, 0.1, 0.4),
						},
						{
							property = "BackgroundColor3",
							value = Color3.new(0.1, 0.8, 0.9),
						},
						{
							property = "TextSize",
							value = 10,
						},
					}

					for _, setting in pairs(customSettings) do
						c.setBubbleChatProperty(setting.property, setting.value)
						c.doesInstanceSettingMatchConfiguration(c.billboardInstance, setting)
					end
				end)
			end)
		end)
	end)

	describe("ControlsBubble", function()
		beforeEach(function(c)
			c.flagValue = GlobalFlags.AvatarChatEnabled
			GlobalFlags.AvatarChatEnabled = true
		end)

		afterEach(function(c)
			GlobalFlags.AvatarChatEnabled = c.flagValue
		end)

		local store = createStore()
		store:dispatch(BubbleChatSettingsChanged("BubbleDuration", 1))

		local character = player.Character
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		store:dispatch(AdorneeAdded(player.UserId, character, humanoid))

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
				adornee = character,
			}
		end

		it("should render PlayerButtons if self view is closed", function()
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

			local controlsBubble = billboardInstance:FindFirstChild("PlayerButtons", true)
			assert(controlsBubble, "should have rendered PlayerButtons")

			Roact.unmount(roactInstance)
		end)

		it("Should NOT render PlayerButtons if self view is open", function()
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

			local controlsBubble = billboardInstance:FindFirstChild("PlayerButtons", true)
			assert(controlsBubble == nil, "should NOT have rendered PlayerButtons")

			Roact.unmount(roactInstance)
		end)

		--[[
			Because BillboardGui.lua uses the Players Service directly, we need to initialize
			a player as the local player in order for a billboard to be shown.

			Then we can update the isLocalPlayer status through props.
		]]
		it("Should render PlayerButtons on another player if self view is open for the local player", function()
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

			local controlsBubble = billboardInstance:FindFirstChild("PlayerButtons", true)
			assert(controlsBubble, "should have rendered PlayerButtons")

			Roact.unmount(roactInstance)
		end)

		it("Should NOT render PlayerButtons on another player if voice is disabled for them", function()
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

			local controlsBubble = billboardInstance:FindFirstChild("PlayerButtons", true)
			assert(controlsBubble == nil, "should NOT have rendered PlayerButtons")

			Roact.unmount(roactInstance)
		end)

		it("Should NOT render PlayerButtons if ChromeEnabled is true", function()
			local previousChromeEnabled = GlobalFlags.ChromeEnabled
			GlobalFlags.ChromeEnabled = true

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

			local controlsBubble = billboardInstance:FindFirstChild("PlayerButtons", true)
			assert(controlsBubble == nil, "should NOT have rendered PlayerButtons")

			Roact.unmount(roactInstance)

			GlobalFlags.ChromeEnabled = previousChromeEnabled
		end)
	end)
end
