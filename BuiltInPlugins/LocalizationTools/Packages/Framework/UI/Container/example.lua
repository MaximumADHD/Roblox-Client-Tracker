return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Plugin = ContextServices.Plugin
	local Theme = ContextServices.Theme
	local Dialog = require(Framework.StudioUI).Dialog

	local UI = require(Framework.UI)
	local FrameworkStyles = UI.FrameworkStyles
	local Container = UI.Container
	local Decoration = UI.Decoration

	local FrameworkStyle = Framework.Style
	local ui = require(FrameworkStyle).ComponentSymbols
	local StudioTheme = require(FrameworkStyle.Themes.StudioTheme)
	local BaseTheme = require(FrameworkStyle.Themes.BaseTheme)

	local Util = require(Framework.Util)
	local Cryo = Util.Cryo
	local StyleTable = Util.StyleTable
	local Style = Util.Style
	local FlagsList = Util.Flags.new({
		FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
	})

	local pluginItem = Plugin.new(plugin)

	local theme
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		theme = StudioTheme.new()
		theme:extend({
			[ui.Box] = Cryo.Dictionary.join(BaseTheme[ui.Box], {
				Transparency = 0,
				BorderSize = 0,

				["&Black"] = {
					Color = Color3.new(0, 0, 0),
				},

				["&Red"] = {
					Color = Color3.new(0.3, 0, 0),
				},
			}),

			[ui.Image] = Cryo.Dictionary.join(BaseTheme[ui.Image], {
				["&WarningIcon"] = {
					Image = "rbxasset://textures/ui/ErrorIcon.png",
				},
			}),
		})
	else
		theme = Theme.new(function(theme, getColor)
			local box = StyleTable.new("Box", function()
				local Black = Style.new({
					Color = Color3.new(0, 0, 0),
					Transparency = 0,
					BorderSize = 0,
				})

				local Red = Style.extend(Black, {
					Color = Color3.new(0.3, 0, 0),
				})

				return {
					Black = Black,
					Red = Red,
				}
			end)

			local image = StyleTable.new("Image", function()
				local WarningIcon = Style.new({
					Image = "rbxasset://textures/ui/ErrorIcon.png",
				})

				return {
					WarningIcon = WarningIcon,
				}
			end)

			return {
				Framework = StyleTable.extend(FrameworkStyles.new(), {
					Box = box,
					Image = image,
				})
			}
		end)
	end

	-- Mount and display a dialog
	local ExampleContainer = Roact.PureComponent:extend("ExampleContainer")

	function ExampleContainer:init()
		self.state = {
			enabled = true,
		}

		self.close = function()
			self:setState({
				enabled = false,
			})
		end
	end

	function ExampleContainer:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		return ContextServices.provide({pluginItem, theme}, {
			Main = Roact.createElement(Dialog, {
				Enabled = enabled,
				Title = "Container Example",
				Size = Vector2.new(640, 480),
				Resizable = false,
				OnClose = self.close,
			}, {
				-- By default, a container fills its parent when given no size or position.
				Background = Roact.createElement(Container, {
					Margin = 10, -- Creates a 10-pixel padding around everything, background included
					Padding = 20, -- Creates a 20-pixel padding around its contents
					Background = Decoration.Box,
					BackgroundStyle = "Black",
				}, {
					-- This element is inset by 20 pixels due to the padding of the parent Container.
					RedElement = Roact.createElement(Container, {
						Size = UDim2.new(1, 0, 0, 100),
						Padding = {
							Right = 20, -- Pad the right side by 20 pixels
						},
						Background = Decoration.Box,
						BackgroundStyle = "Red",
					}, {
						-- Because of the right padding, this text appears 20px from
						-- the right side of the container.
						Image = Roact.createElement(Container, {
							Size = UDim2.fromOffset(80, 80),
							Position = UDim2.fromScale(1, 0.5),
							AnchorPoint = Vector2.new(1, 0.5),
							Background = Decoration.Image,
							BackgroundStyle = "WarningIcon",
						}),

						-- When a container has no Background, it is invisible.
						TextContainer = Roact.createElement(Container, {
							Padding = {
								Left = 40, -- Pad the left side by 40 pixels
							}
						}, {
							-- Because of the left padding, this text appears 40px from
							-- the left side of the container.
							Text = Roact.createElement("TextLabel", {
								BackgroundTransparency = 1,
								Size = UDim2.new(1, 0, 1, 0),
								TextXAlignment = Enum.TextXAlignment.Left,
								Text = "This is test text.",
								Font = Enum.Font.SourceSans,
								TextSize = 24,
								TextColor3 = Color3.new(1, 1, 1),
							}),
						})
					}),
				}),
			})
		})
	end

	local element = Roact.createElement(ExampleContainer)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
