return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local reducer = require(InGameMenu.reducer)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local TextEntryField = require(script.Parent.TextEntryField)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					TextEntryField = Roact.createElement(TextEntryField, {
						enabled = true,
						text = "Hello world!",
						textChanged = function()
							print("textChanged")
						end,
						maxTextLength = 30,
						autoFocusOnEnabled = false,

						PlaceholderText = "Enter text here",
						LayoutOrder = 2,
						Size = UDim2.new(0.5, 0, 0.5, 0),
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should call textChanged when the user enters text", function()
		local textChangedWasCalled = false

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
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
				}),
			}),
		})

		local folder = Instance.new("Folder")

		local instance = Roact.mount(element, folder)

		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
		textBox.Text = "Hello world!"
		Roact.unmount(instance)

		expect(textChangedWasCalled).to.equal(true)
	end)

	it("should trim the text when it exceeds max text", function()
		local textChangedTo = ""
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					TextEntryField = Roact.createElement(TextEntryField, {
						enabled = true,
						text = "",
						textChanged = function(newText)
							textChangedTo = newText
						end,
						maxTextLength = 5,
						autoFocusOnEnabled = false,

						PlaceholderText = "Enter text here",
						LayoutOrder = 2,
						Size = UDim2.new(0.5, 0, 0.5, 0),
					}),
				}),
			}),
		})

		local folder = Instance.new("Folder")

		local instance = Roact.mount(element, folder)

		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
		textBox.Text = "Hello world!"
		Roact.unmount(instance)

		expect(textChangedTo).to.equal("Hello")
	end)

	it("should trim multi-byte utf8 characters correctly when it exceeds max length limit", function()
		local textChangedTo = ""
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					TextEntryField = Roact.createElement(TextEntryField, {
						enabled = true,
						text = "",
						textChanged = function(newText)
							textChangedTo = newText
						end,
						maxTextLength = 4,
						autoFocusOnEnabled = false,

						PlaceholderText = "Enter text here",
						LayoutOrder = 2,
						Size = UDim2.new(0.5, 0, 0.5, 0),
					}),
				}),
			}),
		})

		local folder = Instance.new("Folder")

		local instance = Roact.mount(element, folder)

		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
		textBox.Text = "罗布乐思是世界最大的多人在线游戏"
		Roact.unmount(instance)

		expect(textChangedTo).to.equal("罗布乐思")
	end)
end