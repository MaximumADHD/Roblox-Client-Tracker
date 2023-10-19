local TextChatService = game:GetService("TextChatService")
local GuiService = game:GetService("GuiService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local Config = require(ExperienceChat.Config)

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)

local setUpConfigurationObjects = require(ExperienceChat.mountClientApp.helpers.setUpConfigurationObjects)

return function()
	local topBarVerticalOffset = GuiService:GetGuiInset().Y
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("AppLayout.story"))
		local installReducer = require(script.Parent.Parent.installReducer)

		rootContext.mount = function(context)
			local Roact = context.Roact
			local storyMiddleware = context.storyMiddleware
			local instance = Instance.new("ScreenGui")
			instance.Parent = game:GetService("CoreGui")

			local store = context.Rodux.Store.new(installReducer, {}, {
				context.Rodux.thunkMiddleware,
			})

			local tree = Roact.createElement(storyMiddleware(storyDefinition.story), {
				controls = {
					isChatWindowVisible = true,
					isChatInputBarVisible = true,
					sentMessageHz = 1,
					canLocalUserChat = true,
				},
				timeSignal = Instance.new("BindableEvent").Event,
				store = store,
			})

			local roactInstance = Roact.mount(tree, instance)
			return {
				instance = instance,
				unmount = function()
					Roact.unmount(roactInstance)
					instance:Destroy()
				end,
				store = store,
			}
		end

		rootContext.chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
		rootContext.chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
		local RBXGeneral = Instance.new("TextChannel")
		RBXGeneral.Name = "RBXGeneral"
		RBXGeneral.Parent = TextChatService:FindFirstChild("TextChannels")
		local config = {
			defaultTargetTextChannel = RBXGeneral,
		}
		rootContext.mockConfig = config
	end)

	describe("GIVEN ChatWindow API Dev Controls", function()
		describe("WHEN using ChatWindow Positioning API", function()
			beforeEach(function(c)
				local mountResult = c:mount()
				local store = mountResult.store

				setUpConfigurationObjects(store, c.mockConfig)
				c.appLayout = c.findFirstInstance(mountResult.instance, { Name = "appLayout" })
				c.uiListLayout = c.findFirstInstance(c.appLayout, { Name = "layout" })
			end)

			it("SHOULD mount AppContainer with top-left position by default", function(c)
				expect(c.appLayout.Position).toEqual(UDim2.new(0, 8, 0, 4))
				expect(c.appLayout.AnchorPoint).toEqual(Vector2.new(0, 0))
				expect(c.uiListLayout.VerticalAlignment).toEqual(Enum.VerticalAlignment.Top)
			end)

			it(
				"SHOULD change horizontal positioning when ChatWindowConfiguration.HorizontalAlignment changes",
				function(c)
					c.Roact.act(function()
						c.chatWindowConfiguration.HorizontalAlignment = Enum.HorizontalAlignment.Center
						wait()
					end)

					expect(c.appLayout.AnchorPoint.X).toEqual(0.5)
					expect(c.appLayout.Position.X).toEqual(UDim.new(0.5, 0))
					expect(c.uiListLayout.VerticalAlignment).toEqual(Enum.VerticalAlignment.Top)

					c.Roact.act(function()
						c.chatWindowConfiguration.HorizontalAlignment = Enum.HorizontalAlignment.Right
						wait()
					end)

					expect(c.appLayout.AnchorPoint.X).toEqual(1)
					expect(c.appLayout.Position.X).toEqual(UDim.new(1, -8))
					expect(c.uiListLayout.VerticalAlignment).toEqual(Enum.VerticalAlignment.Top)
				end
			)

			it("SHOULD change vertical positioning when ChatWindowConfiguration.VerticalAlignment changes", function(c)
				c.Roact.act(function()
					c.chatWindowConfiguration.VerticalAlignment = Enum.VerticalAlignment.Center
					wait()
				end)

				expect(c.appLayout.AnchorPoint.Y).toEqual(0.5)
				expect(c.appLayout.Position.Y).toEqual(UDim.new(0.5, -topBarVerticalOffset))
				expect(c.uiListLayout.VerticalAlignment).toEqual(Enum.VerticalAlignment.Center)

				c.Roact.act(function()
					c.chatWindowConfiguration.VerticalAlignment = Enum.VerticalAlignment.Bottom
					wait()
				end)
				expect(c.appLayout.AnchorPoint.Y).toEqual(1)
				expect(c.appLayout.Position.Y).toEqual(UDim.new(1, -4))
				expect(c.uiListLayout.VerticalAlignment).toEqual(Enum.VerticalAlignment.Bottom)
			end)

			it(
				"SHOULD change both positionings when both HorizontalAlignment and VerticalAlignment are changed",
				function(c)
					c.Roact.act(function()
						c.chatWindowConfiguration.VerticalAlignment = Enum.VerticalAlignment.Center
						c.chatWindowConfiguration.HorizontalAlignment = Enum.HorizontalAlignment.Center
						wait()
					end)

					expect(c.appLayout.AnchorPoint).toEqual(Vector2.new(0.5, 0.5))
					expect(c.appLayout.Position).toEqual(UDim2.new(0.5, 0, 0.5, -topBarVerticalOffset))
					expect(c.uiListLayout.VerticalAlignment).toEqual(Enum.VerticalAlignment.Center)
				end
			)
		end)

		describe("WHEN using ChatWindow Style API", function()
			beforeAll(function(c)
				c.doesInstanceSettingMatchConfiguration = function(mountInstance, setting)
					local chatWindow = c.findFirstInstance(mountInstance, { Name = "chatWindow" })
					local textMessageLabel = c.findFirstInstance(chatWindow, { ClassName = "TextLabel" })
					local instanceSettings = {
						FontFace = textMessageLabel.FontFace,
						TextColor3 = textMessageLabel.TextColor3,
						TextSize = textMessageLabel.TextSize,
						TextStrokeColor3 = textMessageLabel.TextStrokeColor3,
						TextStrokeTransparency = textMessageLabel.TextStrokeTransparency,
						BackgroundColor3 = chatWindow.BackgroundColor3,
						BackgroundTransparency = chatWindow.BackgroundTransparency,
					}

					local property = setting.property
					local value = setting.value
					if type(value) == "number" then
						expect(instanceSettings[property]).toBeCloseTo(value)
					else
						expect(instanceSettings[property]).toEqual(value)
					end
				end

				c.setChatWindowProperty = function(property, value)
					c.Roact.act(function()
						c.chatWindowConfiguration[property] = value
						wait()
					end)
				end
			end)

			beforeEach(function(c)
				local message = {
					MessageId = tostring(os.clock()),
					TextChannel = { Name = "Test" },
					Status = Enum.TextChatMessageStatus.Success,
					Timestamp = DateTime.now(),
					PrefixText = "daweezy",
					Text = "WASSSSSSSUP",
				}
				c.mountResult = c:mount()
				local store = c.mountResult.store

				setUpConfigurationObjects(store, c.mockConfig)

				c.Roact.act(function()
					-- Send a message so we can look at the properties of the messages
					store:dispatch(IncomingMessageReceived(message))
					wait()
				end)

				expect(c.findFirstInstance(c.mountResult.instance, { ClassName = "TextLabel" })).never.toBeNil()
			end)

			it("SHOULD have the correct properties by default", function(c)
				local mountInstance = c.mountResult.instance
				local styleProperties = {
					"FontFace",
					"TextColor3",
					"TextSize",
					"TextStrokeColor3",
					"TextStrokeTransparency",
					"BackgroundColor3",
					"BackgroundTransparency",
				}

				for _, property in pairs(styleProperties) do
					c.doesInstanceSettingMatchConfiguration(
						mountInstance,
						{ property = property, value = c.chatWindowConfiguration[property] }
					)
				end
			end)

			it("SHOULD mount settings according to configuration values", function(c)
				local customSettings = {
					{
						property = "FontFace",
						value = Font.new(
							"rbxasset://fonts/families/GrenzeGotisch.json",
							Enum.FontWeight.Thin,
							Enum.FontStyle.Italic
						),
					},
					{
						property = "TextColor3",
						value = Color3.new(0.1, 0.9, 0.9),
					},
					{
						property = "TextStrokeTransparency",
						value = 0.35,
					},
					{
						property = "BackgroundColor3",
						value = Color3.new(0.6, 0.1, 0.85),
					},
					{
						property = "BackgroundTransparency",
						value = 0.4,
					},
				}

				local mountInstance = c.mountResult.instance
				for _, setting in pairs(customSettings) do
					c.setChatWindowProperty(setting.property, setting.value)
					c.doesInstanceSettingMatchConfiguration(mountInstance, setting)
				end
			end)

			it("SHOULD change property values when chatWindowConfiguration changes", function(c)
				local mountInstance = c.mountResult.instance

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
						value = Color3.new(0.3, 0.7, 0.4),
					},
					{
						property = "TextStrokeTransparency",
						value = 0.15,
					},
					{
						property = "BackgroundColor3",
						value = Color3.new(0.1, 0.2, 0.9),
					},
					{
						property = "BackgroundTransparency",
						value = 0.9,
					},
				}

				for _, setting in pairs(customSettings) do
					c.setChatWindowProperty(setting.property, setting.value)
					c.doesInstanceSettingMatchConfiguration(mountInstance, setting)
				end
			end)
		end)

		describe("WHEN using ChatWindow Resizing API", function()
			beforeEach(function(c)
				c.getAppLayoutInstance = function()
					local mountResult = c:mount()
					local store = mountResult.store
					setUpConfigurationObjects(store, c.mockConfig)

					local appLayoutInstance = c.findFirstInstance(mountResult.instance, { Name = "appLayout" })
					expect(appLayoutInstance).never.toBeNil()

					return appLayoutInstance
				end

				c.defaultXScale = Config.ChatWindowSize.X.Scale
				c.defaultYScale = Config.ChatWindowSize.Y.Scale
			end)

			it("SHOULD have scale values of 1 by default", function(c)
				local appLayout = c.getAppLayoutInstance()

				expect(appLayout.Size.X.Scale).toBeCloseTo(c.defaultXScale)
				expect(appLayout.Size.Y.Scale).toBeCloseTo(c.defaultYScale)
			end)

			it("SHOULD change scale values when configuration value changes", function(c)
				local appLayout = c.getAppLayoutInstance()

				c.Roact.act(function()
					c.chatWindowConfiguration.WidthScale = 0.7
					c.chatWindowConfiguration.HeightScale = 1.5
					wait()
				end)

				expect(appLayout.Size.X.Scale).toBeCloseTo(c.defaultXScale * 0.7)
				expect(appLayout.Size.Y.Scale).toBeCloseTo(c.defaultYScale * 1.5)
			end)
		end)
	end)

	describe("GIVEN ChatInputBar API Dev Controls", function()
		local getEnableChatInputBarConfigurationStyleCustomizations =
			require(ExperienceChat.Flags.getEnableChatInputBarConfigurationStyleCustomizations)

		if getEnableChatInputBarConfigurationStyleCustomizations() then
			describe("WHEN using ChatInputBar Style API", function()
				beforeAll(function(c)
					c.doesMountedInstanceSettingMatchConfiguration = function(mountInstance, setting)
						local chatInputBar = c.findFirstInstance(mountInstance, { Name = "chatInputBar" })
						local inputBarBackground = c.findFirstInstance(chatInputBar, { Name = "Background" })
						local textBox = c.findFirstInstance(mountInstance, { ClassName = "TextBox" })
						local sendIcon = c.findFirstInstance(mountInstance, { Name = "SendIcon" })
						local instanceSettings = {
							BackgroundTransparency = inputBarBackground.BackgroundTransparency,
							BackgroundColor3 = inputBarBackground.BackgroundColor3,
							TextSize = textBox.TextSize,
							TextColor3 = textBox.TextColor3,
							TextStrokeColor3 = textBox.TextStrokeColor3,
							TextStrokeTransparency = textBox.TextStrokeTransparency,
							FontFace = textBox.FontFace,
							PlaceholderColor3 = sendIcon.ImageColor3,
						}
						local property = setting.property
						local value = setting.value

						if type(value) == "number" then
							expect(instanceSettings[property]).toBeCloseTo(value)
						else
							expect(instanceSettings[property]).toEqual(value)
						end
					end

					c.setChatInputBarProperty = function(property, value)
						c.Roact.act(function()
							c.chatInputBarConfiguration[property] = value
							wait()
						end)
					end
				end)

				beforeEach(function(c)
					c.mountResult = c:mount()
					local store = c.mountResult.store

					setUpConfigurationObjects(store, c.mockConfig)
				end)

				it("SHOULD mount input bar with correct default values", function(c)
					local stlyeProperties = {
						"BackgroundTransparency",
						"TextStrokeTransparency",
						"BackgroundColor3",
						"TextSize",
						"TextColor3",
						"TextStrokeColor3",
						"FontFace",
						"PlaceholderColor3",
					}

					for _, property in pairs(stlyeProperties) do
						c.doesMountedInstanceSettingMatchConfiguration(
							c.mountResult.instance,
							{ property = property, value = c.chatInputBarConfiguration[property] }
						)
					end
				end)

				it("SHOULD change styles to match chat input bar configuration", function(c)
					local customSettings = {
						{ property = "BackgroundTransparency", value = 0.43 },
						{ property = "BackgroundColor3", value = Color3.fromRGB(110, 32, 49) },
						{ property = "TextSize", value = 18 },
						{ property = "TextColor3", value = Color3.fromRGB(55, 16, 39) },
						{ property = "TextStrokeColor3", value = Color3.fromRGB(55, 22, 66) },
						{ property = "TextStrokeTransparency", value = 0.2 },
						{
							property = "FontFace",
							value = Font.new(
								"rbxasset://fonts/families/GrenzeGotisch.json",
								Enum.FontWeight.Thin,
								Enum.FontStyle.Italic
							),
						},
						{ property = "PlaceholderColor3", value = Color3.new(1, 0.5, 0.5) },
					}

					for _, setting in pairs(customSettings) do
						c.setChatInputBarProperty(setting.property, setting.value)
						c.doesMountedInstanceSettingMatchConfiguration(c.mountResult.instance, setting)
					end
				end)

				-- @TODO enable later for EnableChatInputBarConfigurationStyleCustomizations clean up!
				-- describe("WHEN using developer defined focus chat hotkey", function()
				-- 	it("SHOULD use developer defined focus chat hotkey if valid", function(c)
				-- 		c.setChatInputBarProperty("KeyboardKeyCode", Enum.KeyCode.E)

				-- 		c.Roact.act(function()
				-- 			c.Rhodium.VirtualInput.Keyboard.pressKey(Enum.KeyCode.E)
				-- 			c.Rhodium.VirtualInput.Keyboard.releaseKey(Enum.KeyCode.E)
				-- 			wait()
				-- 		end)

				-- 		expect(c.instance).toHaveProperty("Text", "")
				-- 		expect(c.instance:IsFocused()).toEqual(true)
				-- 	end)

				-- 	it("SHOULD NOT use developer defined focus chat hotkey if invalid", function(c)
				-- 		c.setChatInputBarProperty("KeyboardKeyCode", Enum.KeyCode.Escape)
				-- 		expect(c.instance).never.toBeNil()
				-- 	end)
				-- end)
			end)
		end
	end)
end
