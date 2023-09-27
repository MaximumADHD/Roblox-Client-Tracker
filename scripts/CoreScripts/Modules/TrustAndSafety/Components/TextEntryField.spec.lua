--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)
	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents


	local TextEntryField = require(script.Parent.TextEntryField)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			TextEntryField = Roact.createElement(TextEntryField, {
				enabled = true,
				text = "Hello world!",
				textChanged = function() end,
				maxTextLength = 30,
				autoFocusOnEnabled = false,
				PlaceholderText = "Enter text here",
				LayoutOrder = 2,
				Size = UDim2.new(0.5, 0, 0.5, 0),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should call textChanged when the user enters text", function()
		local textChangedMock, textChangedFn = jest.fn()

		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			TextEntryField = Roact.createElement(TextEntryField, {
				enabled = true,
				text = "",
				textChanged = textChangedFn,
				maxTextLength = 200,
				autoFocusOnEnabled = false,
				PlaceholderText = "Enter text here",
				LayoutOrder = 2,
				Size = UDim2.new(0.5, 0, 0.5, 0),
			}),
		})

		local folder = Instance.new("Folder")

		local instance = Roact.mount(element, folder)

		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
		textBox.Text = "Hello world!"

		waitForEvents.act()
		expect(textChangedMock).toHaveBeenCalled()

		Roact.unmount(instance)
	end)

	it("should keep old text when new text exceeds max length", function()
		local text = "Hello"
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			TextEntryField = Roact.createElement(TextEntryField, {
				enabled = true,
				text = text,
				textChanged = function(newText)
					text = newText
				end,
				maxTextLength = 5,
				autoFocusOnEnabled = false,
				PlaceholderText = "Enter text here",
				LayoutOrder = 2,
				Size = UDim2.new(0.5, 0, 0.5, 0),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)

		textBox.Text = "Hello world!"
		waitForEvents.act()

		expect(textBox.Text).toBe("Hello")
		expect(text).toBe("Hello")

		Roact.unmount(instance)
	end)

	it("should keep old multi-byte text when new text exceeds max length", function()
		local text = "罗布乐思"
		local element = Roact.createElement(UIBlox.Style.Provider, {}, {
			TextEntryField = Roact.createElement(TextEntryField, {
				enabled = true,
				text = text,
				textChanged = function(newText)
					text = newText
				end,
				maxTextLength = 4,
				autoFocusOnEnabled = false,
				PlaceholderText = "Enter text here",
				LayoutOrder = 2,
				Size = UDim2.new(0.5, 0, 0.5, 0),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)

		textBox.Text = "罗布乐思是世界最大的多人在线游戏"
		waitForEvents.act()
		expect(textBox.Text).toBe("罗布乐思")
		expect(text).toBe("罗布乐思")

		Roact.unmount(instance)
	end)
end
