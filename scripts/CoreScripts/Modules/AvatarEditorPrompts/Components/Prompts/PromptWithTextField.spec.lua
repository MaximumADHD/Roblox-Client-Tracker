return function()
	local CorePackages = game:GetService("CorePackages")
	local UserInputService = game:GetService("UserInputService")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local VirtualInput = Rhodium.VirtualInput
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)

	local AvatarEditorPrompts = script.Parent.Parent.Parent
	local Reducer = require(AvatarEditorPrompts.Reducer)

	local ButtonType = UIBlox.App.Button.Enum.ButtonType


	local buttonStackInfo = {
		buttons = {
			{
				props = {
					onActivated = function()

					end,
					text = "no",
				},
			},
			{
				buttonType = ButtonType.PrimarySystem,
				props = {
					isDisabled = true,
					onActivated = function()

					end,
					text = "okay",
				},
			},
		},
	}

	describe("PromptWithTextField", function()
		it("should create and destroy without errors", function()
			local PromptWithTextField = require(script.Parent.PromptWithTextField)

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
					PromptWithTextField = Roact.createElement(PromptWithTextField, {
						fieldText = "test",
						onFieldTextUpdated = function()

						end,

						-- Props passed to Alert
						title = "hello",
						bodyText = "world!",
						buttonStackInfo = buttonStackInfo,
					})
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should call onFieldTextUpdated when text is sent", function()
			local PromptWithTextField = require(script.Parent.PromptWithTextField)

			local updatedText

			local wrappedComponent = function()
				return Roact.createElement(UIBlox.Style.Provider, {}, {
					PromptWithTextField = Roact.createElement(PromptWithTextField, {
						fieldText = "Hello",
						onFieldTextUpdated = function(text)
							updatedText = text
						end,

						-- Props passed to Alert
						title = "hello",
						bodyText = "world!",
						buttonStackInfo = buttonStackInfo,
					})
				})
			end

			local initalStoreState = {
				screenSize = Vector2.new(800, 800)
			}

			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).never.toBeNil()

				local rootInstance = baseWidget:waitForRbxInstance(1)

				local textboxInstance = rootInstance:FindFirstChildWhichIsA("TextBox", true)
				expect(textboxInstance).never.toBeNil()
				expect(textboxInstance.Text).toBe("Hello")

				textboxInstance.Text = textboxInstance.Text .. " world!"

				wait()

				expect(updatedText).toBe("Hello world!")
			end,
			wrappedComponent, Reducer, initalStoreState, nil)
		end)
	end)
end
