return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Plugin = ContextServices.Plugin
	local Theme = ContextServices.Theme

	local StudioUI = require(Framework.StudioUI)
	local Dialog = StudioUI.Dialog
	local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

	local UI = require(Framework.UI)
	local Container = UI.Container
	local FakeLoadingBar = UI.FakeLoadingBar
	local Decoration = UI.Decoration
	local Button = UI.Button

	local StudioTheme = require(Framework.Style.Themes.StudioTheme)

	local Util = require(Framework.Util)
	local FlagsList = Util.Flags.new({
		FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
	})

	local pluginItem = Plugin.new(plugin)

	local theme
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		theme = StudioTheme.new()
	else
		theme = Theme.new(function(theme, getColor)
			local studioStyles = StudioFrameworkStyles.new(theme, getColor)
			return {
				Framework = studioStyles,
			}
		end)
	end

	-- Mount and display a dialog
	local ExampleLoadingBar = Roact.PureComponent:extend("ExampleLoadingBar")

	function ExampleLoadingBar:init()
		self.state = {
			enabled = true,
			completed = false,
			progress = 0,
		}

		self.close = function()
			self:setState({
				enabled = false,
			})
		end

		self.finishLoading = function()
			self:setState({
				completed = true,
			})
		end

		self.setProgress = function(progress)
			self:setState({
				progress = progress,
			})
		end
	end

	function ExampleLoadingBar:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		local completed = self.state.completed
		local progress = self.state.progress

		local progressText = ("%i%%"):format(progress * 100)

		local textColor
		if (not FlagsList:get("FFlagRefactorDevFrameworkTheme")) then
			textColor = theme:get("Framework").Button.Default.TextColor
		end

		return ContextServices.provide({pluginItem, theme}, {
			Main = Roact.createElement(Dialog, {
				Enabled = enabled,
				Title = "Loading Bar Example",
				Size = Vector2.new(320, 240),
				Resizable = false,
				OnClose = self.close,
			}, {
				Container = Roact.createElement(Container, {
					Margin = 10,
					Padding = 10,
					Background = Decoration.RoundBox,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						Padding = UDim.new(0, 15),
					}),

					-- Loads to full in 5 seconds
					FakeLoadingBar = Roact.createElement(FakeLoadingBar, {
						LayoutOrder = 1,
						Size = UDim2.fromOffset(125, 8),
						LoadingTime = 5,
						OnProgressChanged = self.setProgress,
					}),

					-- Sets text to the loading progress of the bar above
					LoadingText = Roact.createElement("TextLabel", {
						LayoutOrder = 2,
						Size = UDim2.fromOffset(120, 16),
						BackgroundTransparency = 1,
						Text = progressText,
						TextColor3 = textColor,
						Font = Enum.Font.SourceSans,
						TextSize = 16,
					}),

					-- Loads to 75% in 2 seconds, then finishes when button is clicked
					FakeLoadingBar2 = Roact.createElement(FakeLoadingBar, {
						LayoutOrder = 3,
						Size = UDim2.fromOffset(125, 8),
						LoadingTime = 2,
						HoldValue = 0.75,
						Completed = completed,
					}),

					Button = Roact.createElement(Button, {
						LayoutOrder = 4,
						Style = "Round",
						Text = "Complete",
						Size = UDim2.fromOffset(120, 32),
						OnClick = self.finishLoading,
					}),
				})
			})
		})
	end

	local element = Roact.createElement(ExampleLoadingBar)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
