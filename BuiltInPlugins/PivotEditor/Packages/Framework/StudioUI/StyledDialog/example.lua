return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)

	local StudioUI = require(Framework.StudioUI)
	local Dialog = StudioUI.Dialog
	local StyledDialog = StudioUI.StyledDialog
	local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

	local UI = require(Framework.UI)
	local Button = UI.Button
	local Container = UI.Container

	local TestHelpers = require(Framework.TestHelpers)

	local Util = require(Framework.Util)
	local FlagsList = Util.Flags.new({
		FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
	})

	local FrameworkStyle = Framework.Style
	local StudioTheme = require(FrameworkStyle.Themes.StudioTheme)

	local pluginItem = ContextServices.Plugin.new(plugin)
	local theme
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		theme = StudioTheme.new()
	else
		theme = ContextServices.Theme.new(function(theme, getColor)
			return {
				Framework = StudioFrameworkStyles.new(theme, getColor),
			}
		end)
	end

	local function renderInPopup(isEnabled, onCloseFunc, children)
		-- This example was too many layers deep.
		-- This logic might be reusable across multiple examples
		return TestHelpers.provideMockContext({ theme, pluginItem }, {
			Main = Roact.createElement(Dialog, {
				Enabled = isEnabled,
				Title = "Styled Dialog Example",
				Size = Vector2.new(500, 150),
				Resizable = false,
				OnClose = onCloseFunc,
			}, {
				Contents = Roact.createElement(Container, {
					Padding = 20,
				}, children)
			})
		})
	end

	-- Mount and display a dialog
	local ExampleContainer = Roact.PureComponent:extend("ExampleContainer")

	function ExampleContainer:init()
		self.state = {
			enabled = true,

			defaultEnabled = false,
			alertEnabled = false,
			acceptCancelEnabled = false,
		}

		self.close = function()
			self:setState({
				enabled = false,

				defaultEnabled = false,
				alertEnabled = false,
				acceptCancelEnabled = false,
			})
		end

		self.toggleDialog = function(dialogStyleKey, value)
			self:setState({
				[dialogStyleKey] = value,
			})
		end
	end

	function ExampleContainer:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		return renderInPopup(enabled, self.close, {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 10),
			}),

			DefaultButton = Roact.createElement(Button, {
				Size = UDim2.new(1, 0, 0, 30),
				LayoutOrder = 1,
				Style = "Round",
				Text = "Open Default Dialog",
				OnClick = function()
					self.toggleDialog("defaultEnabled", true)
				end,
			}, {
				Dialog = Roact.createElement(StyledDialog, {
					Enabled = self.state.defaultEnabled,
					Title = "Styled Dialog examples",
					MinContentSize = Vector2.new(400, 100),
					Buttons = {
						{ Key = "ok", Text = "OK" },
					},
					OnButtonPressed = function(key)
						print("Dialog button pressed : ", key)
						self.toggleDialog("defaultEnabled", false)
					end,
					OnClose = function()
						self.toggleDialog("defaultEnabled", false)
					end,
				}, {
					Contents = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1.0,
						TextSize = 50,
						Text = "Hello",
						TextColor3 = Color3.new(1, 1, 1),
						Size = UDim2.fromScale(1, 1),
						Position = UDim2.fromScale(0, 0),
					}),
				}),
			}),

			AlertButton = Roact.createElement(Button, {
				Size = UDim2.new(1, 0, 0, 30),
				LayoutOrder = 2,
				Style = "Round",
				Text = "Open Alert Dialog",
				OnClick = function()
					self.toggleDialog("alertEnabled", true)
				end,
			}, {
				Dialog = Roact.createElement(StyledDialog, {
					Style = "Alert",
					Enabled = self.state.alertEnabled,
					Title = "Styled Dialog examples",
					MinContentSize = Vector2.new(400, 100),
					Buttons = {
						{ Key = "ok", Text = "OK" },
					},
					OnButtonPressed = function(key)
						print("Dialog button pressed : ", key)
						self.toggleDialog("alertEnabled", false)
					end,
					OnClose = function()
						self.toggleDialog("alertEnabled", false)
					end,
				}, {
					Contents = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1.0,
						TextSize = 50,
						Text = "WARNING!",
						TextColor3 = Color3.new(1, 1, 1),
						Size = UDim2.fromScale(1, 1),
						Position = UDim2.fromScale(0, 0),
					}),
				}),
			}),

			AcceptCancelButton = Roact.createElement(Button, {
				Size = UDim2.new(1, 0, 0, 30),
				LayoutOrder = 3,
				Style = "Round",
				Text = "Open AcceptCancel Dialog",
				OnClick = function()
					self.toggleDialog("acceptCancelEnabled", true)
				end,
			}, {
				Dialog = Roact.createElement(StyledDialog, {
					Style = "AcceptCancel",
					Enabled = self.state.acceptCancelEnabled,
					Title = "Styled Dialog examples",
					MinContentSize = Vector2.new(400, 100),
					Buttons = {
						{ Key = "accept", Text = "Yeah OK" },
						{ Key = "cancel", Text = "Not OK" },
					},
					OnButtonPressed = function(key)
						print("Dialog button pressed : ", key)
						self.toggleDialog("acceptCancelEnabled", false)
					end,
					OnClose = function()
						self.toggleDialog("acceptCancelEnabled", false)
					end,
				}, {
					Contents = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1.0,
						TextSize = 50,
						Text = "Accept?",
						TextColor3 = Color3.new(1, 1, 1),
						Size = UDim2.fromScale(1, 1),
						Position = UDim2.fromScale(0, 0),
					}),
				}),
			}),	
		})
	end

	local element = Roact.createElement(ExampleContainer)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
