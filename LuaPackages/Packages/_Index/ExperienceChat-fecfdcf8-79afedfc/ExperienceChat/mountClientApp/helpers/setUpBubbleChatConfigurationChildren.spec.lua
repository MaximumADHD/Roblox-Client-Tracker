local TextChatService = game:GetService("TextChatService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local Config = require(ExperienceChat.Config)

local Actions = ExperienceChat.Actions
local ConfigurationObjectsLoaded = require(Actions.ConfigurationObjectsLoaded)

local setUpBubbleChatConfigurationChildren = require(script.Parent.setUpBubbleChatConfigurationChildren)

return function()
	local bubbleChatConfiguration = TextChatService:FindFirstChildOfClass("BubbleChatConfiguration")

	if not bubbleChatConfiguration then
		return
	end

	it("SHOULD set up legacy settings if SetUpBubbleChatConfigurationChildProperties flag is turned off", function()
		game:SetFastFlagForTesting("SetUpBubbleChatConfigurationChildProperties", false)
		local initialSettings = setUpBubbleChatConfigurationChildren()
		expect(initialSettings).toEqual(Config.DefaultBubbleChatChildrenCustomizationProperties)
	end)

	describe("WHEN SetUpBubbleChatConfigurationChildProperties is turned on", function()
		beforeAll(function(rootContext)
			game:SetFastFlagForTesting("SetUpBubbleChatConfigurationChildProperties", true)

			local installReducer = require(ExperienceChat.installReducer)
			rootContext.createStore = function()
				local store = rootContext.Rodux.Store.new(installReducer, {}, {
					rootContext.Rodux.thunkMiddleware,
				})
				return store
			end
		end)

		afterAll(function()
			bubbleChatConfiguration:ClearAllChildren()
			game:SetFastFlagForTesting("SetUpBubbleChatConfigurationChildProperties", false)
		end)

		describe("WHEN BubbleChatConfiguration has no children", function()
			beforeAll(function(c)
				c.mockStore = c.createStore()
				c.getBubbleChatReducer = function()
					return c.mockStore:getState().BubbleChatSettings
				end

				bubbleChatConfiguration:ClearAllChildren()
			end)

			it("SHOULD return empty dictionary when function is called", function(c)
				local initialSettings = setUpBubbleChatConfigurationChildren(c.mockStore)
				expect(initialSettings).toEqual({})
			end)

			describe("WHEN a child is parented to BubbleChatConfiguration added", function()
				it("SHOULD not update reducer if the child is not a valid child", function(c)
					local TextLabel = Instance.new("TextLabel")
					TextLabel.Parent = bubbleChatConfiguration
					TextLabel.Text = "hello"
					TextLabel.Name = "UIGradient" -- Should be checking by ClassName not Instance's Name

					local reducer = c.getBubbleChatReducer()
					expect(reducer.TextLabel).toBeNil()
				end)

				it("SHOULD update reducer if the child is a UICorner", function(c)
					local UICorner = Instance.new("UICorner")
					UICorner.CornerRadius = UDim.new(0, 8)
					UICorner.Parent = bubbleChatConfiguration

					task.wait()
					local reducer = c.getBubbleChatReducer()
					expect(reducer.UICorner).never.toBeNil()
					expect(reducer.UICorner.CornerRadius).toEqual(UICorner.CornerRadius)
				end)

				it("SHOULD update reducer if the child is a UIGradient", function(c)
					local UIGradient = Instance.new("UIGradient")
					UIGradient.Enabled = false
					UIGradient.Parent = bubbleChatConfiguration

					task.wait()
					local reducer = c.getBubbleChatReducer()
					expect(reducer.UIGradient).never.toBeNil()
					expect(reducer.UIGradient.Color).toEqual(UIGradient.Color)
				end)

				it("SHOULD update reducer if the child is a ImageLabel", function(c)
					local ImageLabel = Instance.new("ImageLabel")
					ImageLabel.Image = ""
					ImageLabel.Parent = bubbleChatConfiguration

					task.wait()
					local reducer = c.getBubbleChatReducer()
					expect(reducer.ImageLabel).never.toBeNil()
					expect(reducer.ImageLabel.Image).toEqual("")
				end)

				it("SHOULD update reducer if the child is a UIPadding", function(c)
					local UIPadding = Instance.new("UIPadding")
					UIPadding.PaddingTop = UDim.new(0, 12)
					UIPadding.Parent = bubbleChatConfiguration

					task.wait()
					local reducer = c.getBubbleChatReducer()
					expect(reducer.UIPadding).never.toBeNil()
					expect(reducer.UIPadding.PaddingTop).toEqual(UDim.new(0, 12))
				end)
			end)
		end)

		describe("WHEN BubbleChatConfiguration has children", function()
			beforeAll(function(c)
				c.mockStore = c.createStore()
				c.getBubbleChatReducer = function()
					return c.mockStore:getState().BubbleChatSettings
				end

				bubbleChatConfiguration:ClearAllChildren()

				local ImageLabel = Instance.new("ImageLabel")
				ImageLabel.Image = "rbxassetid://2610133241"
				local UIGradient = Instance.new("UIGradient")
				UIGradient.Enabled = false
				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(0, 15)
				local UIPadding = Instance.new("UIPadding")
				UIPadding.PaddingLeft = UDim.new(0, 12)

				for _, child in ipairs({ ImageLabel, UIGradient, UICorner, UIPadding }) do
					child.Parent = bubbleChatConfiguration
				end
			end)

			it("SHOULD return non-empty dictionary with children property settings when function is called", function(c)
				local initialSettings = setUpBubbleChatConfigurationChildren(c.mockStore)
				expect(initialSettings).never.toEqual({})

				expect(initialSettings.ImageLabel.Image).toEqual("rbxassetid://2610133241")
				expect(initialSettings.UIGradient.Enabled).toEqual(false)
				expect(initialSettings.UICorner.CornerRadius).toEqual(UDim.new(0, 15))
				expect(initialSettings.UIPadding.PaddingLeft).toEqual(UDim.new(0, 12))
			end)

			it("SHOULD update reducer when a valid child's property is changed", function(c)
				local UICorner = bubbleChatConfiguration:FindFirstChild("UICorner")
				local UIGradient = bubbleChatConfiguration:FindFirstChild("UIGradient")
				local ImageLabel = bubbleChatConfiguration:FindFirstChild("ImageLabel")
				local UIPadding = bubbleChatConfiguration:FindFirstChild("UIPadding")

				-- Set properties to new values
				UICorner.CornerRadius = UDim.new(0, 1)
				ImageLabel.Image = ""
				UIGradient.Enabled = true
				UIPadding.PaddingLeft = UDim.new(0, 1)

				task.wait()
				local reducer = c.getBubbleChatReducer()
				expect(reducer.UICorner.CornerRadius.Offset).toEqual(1)
				expect(reducer.ImageLabel.Image).toEqual("")
				expect(reducer.UIGradient.Enabled).toEqual(true)
				expect(reducer.UIPadding.PaddingLeft).toEqual(UDim.new(0, 1))
			end)

			describe("WHEN a new valid child is added", function()
				local newCornerOffset = 20

				beforeAll(function(c)
					local initialSettings = setUpBubbleChatConfigurationChildren(c.mockStore)
					c.mockStore:dispatch(ConfigurationObjectsLoaded({ bubbleChatSettings = initialSettings }))

					local UICornerNew = Instance.new("UICorner")
					UICornerNew.Name = "UICornerNew"
					UICornerNew.CornerRadius = UDim.new(0, newCornerOffset)
					UICornerNew.Parent = bubbleChatConfiguration
				end)

				it("SHOULD not update the reducer with new child properties", function(c)
					local reducer = c.getBubbleChatReducer()
					expect(reducer.UICorner.CornerRadius.Offset).never.toEqual(newCornerOffset)
				end)

				describe("WHEN an old child of same class is deleted", function()
					it("SHOULD update reducer with property values of the new child", function(c)
						bubbleChatConfiguration:FindFirstChild("UICorner"):Destroy()
						task.wait()

						local reducer = c.getBubbleChatReducer()
						expect(reducer.UICorner.CornerRadius.Offset).toEqual(newCornerOffset)
					end)

					it("SHOULD update reducer when property values of the new child is changed", function(c)
						bubbleChatConfiguration:FindFirstChild("UICornerNew").CornerRadius = UDim.new(0, 100)
						task.wait()

						local reducer = c.getBubbleChatReducer()
						expect(reducer.UICorner.CornerRadius.Offset).toEqual(100)
					end)

					it("SHOULD remove the property key from reducer when new child is removed", function(c)
						bubbleChatConfiguration:FindFirstChild("UICornerNew"):Destroy()
						task.wait()

						local reducer = c.getBubbleChatReducer()
						expect(reducer.UICorner).toBeNil()
					end)
				end)
			end)

			it("SHOULD remove property keys from reducer when any valid children are removed", function(c)
				bubbleChatConfiguration:ClearAllChildren()
				task.wait()

				local reducer = c.getBubbleChatReducer()
				expect(reducer.UICorner).toBeNil()
				expect(reducer.UIGradient).toBeNil()
				expect(reducer.ImageLabel).toBeNil()
				expect(reducer.UIPadding).toBeNil()
			end)
		end)
	end)
end
