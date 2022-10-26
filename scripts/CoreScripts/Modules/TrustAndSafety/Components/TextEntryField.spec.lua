--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local TextEntryField = require(script.Parent.TextEntryField)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
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
		local textChangedWasCalled = false

		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			TextEntryField = Roact.createElement(TextEntryField, {
				enabled = true,
				text = "",
				textChanged = function(newText)
					textChangedWasCalled = true
				end,
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
		Roact.unmount(instance)

		expect(textChangedWasCalled).to.equal(true)
	end)

	it("should keep old text when new text exceeds max length", function()
		local text = "Hello"
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
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
		expect(textBox.Text).to.equal("Hello")
		expect(text).to.equal("Hello")

		Roact.unmount(instance)
	end)

	it("should keep old multi-byte text when new text exceeds max length", function()
		local text = "罗布乐思"
		local element = Roact.createElement(UIBlox.Style.Provider, {
			style = appStyle,
		}, {
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
		expect(textBox.Text).to.equal("罗布乐思")
		expect(text).to.equal("罗布乐思")

		Roact.unmount(instance)
	end)
end
