return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Mouse = ContextServices.Mouse
	local Plugin = ContextServices.Plugin
	local Theme = ContextServices.Theme

	local StudioUI = require(Framework.StudioUI)
	local Dialog = StudioUI.Dialog
	local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

	local StudioTheme = require(Framework.Style.Themes.StudioTheme)

	local UI = require(Framework.UI)
	local Container = UI.Container
	local LinkText = UI.LinkText
	local Decoration = UI.Decoration

	local Util = require(Framework.Util)
	local FlagsList = Util.Flags.new({
		FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
	})

	local pluginItem = Plugin.new(plugin)
	local mouse = Mouse.new(plugin:GetMouse())

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
	local ExampleLinkText = Roact.PureComponent:extend("ExampleLinkText")

	function ExampleLinkText:init()
		self.state = {
			enabled = true,
		}

		self.close = function()
			self:setState({
				enabled = false,
			})
		end
	end

	function ExampleLinkText:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		return ContextServices.provide({pluginItem, mouse, theme}, {
			Main = Roact.createElement(Dialog, {
				Enabled = enabled,
				Title = "Link Text Example",
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
					}),

					LinkText = Roact.createElement(LinkText, {
						Text = "Click me, I'm a link!",
						OnClick = function()
							print("Clicked!")
						end,
					}),
				})
			})
		})
	end

	local element = Roact.createElement(ExampleLinkText)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
