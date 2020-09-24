return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Plugin = ContextServices.Plugin
	local Theme = ContextServices.Theme
	local Mouse = ContextServices.Mouse

	local StudioUI = require(Framework.StudioUI)
	local Dialog = StudioUI.Dialog
	local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

	local UI = require(Framework.UI)
	local Button = UI.Button
	local Decoration = UI.Decoration
	local Container = UI.Container
	local HoverArea = UI.HoverArea

	local Util = require(Framework.Util)
	local Cryo = Util.Cryo
	local StyleTable = Util.StyleTable
	local Style = Util.Style
	local StyleModifier = Util.StyleModifier
	local FlagsList = Util.Flags.new({
		FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
	})

	local FrameworkStyle = Framework.Style
	local ui = require(FrameworkStyle).ComponentSymbols
	local StudioTheme = require(FrameworkStyle.Themes.StudioTheme)
	local BaseTheme = require(FrameworkStyle.Themes.BaseTheme)
	local StyleKey = require(FrameworkStyle.StyleKey)

	local pluginItem = Plugin.new(plugin)
	local mouse = Mouse.new(plugin:GetMouse())

	local theme
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		theme = StudioTheme.new()
		theme:extend({
			[ui.Button] = Cryo.Dictionary.join(BaseTheme[ui.Button], {
				["&Close"] = {
					Foreground = Decoration.Image,
					ForegroundStyle = {
						Image = "rbxasset://textures/ui/CloseButton.png",
					},
					[StyleModifier.Hover] = {
						ForegroundStyle = {
							Image = "rbxasset://textures/ui/CloseButton_dn.png",
						},
					},
				},
			}),

			[ui.Image] = Cryo.Dictionary.join(BaseTheme[ui.Image], {
				["&Settings"] = {
					Image = "rbxasset://textures/AnimationEditor/btn_manage.png",
					Color = StyleKey.MainText,
				},

				["&SettingsPrimary"] = {
					Color = StyleKey.DialogMainButtonText,
				},
			}),
		})
	else
		theme = Theme.new(function(theme, getColor)
			local studioStyles = StudioFrameworkStyles.new(theme, getColor)

			local button = StyleTable.new("Button", function()
				-- Defining a new button style that uses images
				local Close = Style.new({
					Foreground = Decoration.Image,
					ForegroundStyle = {
						Image = "rbxasset://textures/ui/CloseButton.png",
					},
					[StyleModifier.Hover] = {
						ForegroundStyle = {
							Image = "rbxasset://textures/ui/CloseButton_dn.png",
						},
					},
				})

				return {
					Close = Close,
				}
			end)

			local image = StyleTable.new("Image", function()
				local Settings = Style.extend(studioStyles.Image.Default, {
					Image = "rbxasset://textures/AnimationEditor/btn_manage.png",
					Color = theme:GetColor("MainText"),
				})

				local SettingsPrimary = Style.extend(Settings, {
					Color = theme:GetColor("DialogMainButtonText"),
				})

				return {
					Settings = Settings,
					SettingsPrimary = SettingsPrimary,
				}
			end)

			return {
				Framework = StyleTable.extend(studioStyles, {
					Button = button,
					Image = image,
				})
			}
		end)
	end

	-- Mount and display a dialog
	local ExampleButtons = Roact.PureComponent:extend("ExampleButtons")

	function ExampleButtons:init()
		self.state = {
			enabled = true,
		}

		self.close = function()
			self:setState({
				enabled = false,
			})
		end

		self.printClicked = function()
			print("Clicked!")
		end
	end

	function ExampleButtons:renderButton(style, index)
		return Roact.createElement(Button, {
			Text = style,
			Style = style,
			Size = UDim2.new(0, 100, 0, 35),
			LayoutOrder = index,
			OnClick = function()
			end,
		}, {
			HoverArea = Roact.createElement(HoverArea, {
				Cursor = "PointingHand",
			}),
		})
	end

	function ExampleButtons:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		return ContextServices.provide({pluginItem, theme, mouse}, {
			Main = Roact.createElement(Dialog, {
				Enabled = enabled,
				Title = "Button Example",
				Size = Vector2.new(320, 240),
				Resizable = false,
				OnClose = self.close,
			}, {
				Container = Roact.createElement(Container, {
					Padding = 20,
					Background = Decoration.Box,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
						Padding = UDim.new(0, 10),
					}),

					-- The default Studio button
					Round = Roact.createElement(Button, {
						Style = "Round",
						Text = "Cancel",
						Size = UDim2.fromOffset(120, 32),
						LayoutOrder = 2,
						OnClick = self.printClicked,
					}, {
						-- Adding a HoverArea as a child allows the cursor to change
						Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
					}),

					-- The default Studio primary button
					RoundPrimary = Roact.createElement(Button, {
						Style = "RoundPrimary",
						Text = "Save",
						Size = UDim2.fromOffset(120, 32),
						LayoutOrder = 3,
						OnClick = self.printClicked,
					}, {
						Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
					}),

					-- Buttons can be made of images only, with no text
					-- Using Decorations we can handle many use cases
					CloseButton = Roact.createElement(Button, {
						Style = "Close",
						Size = UDim2.fromOffset(22, 22),
						LayoutOrder = 1,
						OnClick = self.printClicked,
					}),

					-- If special appearance logic is needed, children will render
					-- above the button's background. Doing this, we can
					-- easily make many kinds of buttons with images inside.
					RoundPrimaryWithImage = Roact.createElement(Button, {
						Style = "Round",
						Size = UDim2.fromOffset(24, 24),
						LayoutOrder = 3,
						OnClick = self.printClicked,
					}, {
						Settings = Roact.createElement(Decoration.Image, {
							Style = "Settings",
						}),
					}),

					-- A more complicated button which looks like a Primary
					-- Studio button but has both an image and text inside.
					RoundWithImage = Roact.createElement(Button, {
						Style = "RoundPrimary",
						Size = UDim2.fromOffset(120, 32),
						LayoutOrder = 4,
						OnClick = self.printClicked,
					}, {
						Container = Roact.createElement(Container, {
							Padding = {
								Left = 10,
								Right = 5,
							},
						}, {
							Image = Roact.createElement(Container, {
								Size = UDim2.fromOffset(24, 24),
								Position = UDim2.fromScale(1, 0.5),
								AnchorPoint = Vector2.new(1, 0.5),
								Background = Decoration.Image,
								BackgroundStyle = "SettingsPrimary",
							}),

							Text = Roact.createElement("TextLabel", {
								Text = "Settings",
								BackgroundTransparency = 1,
								Size = UDim2.fromScale(1, 1),
								TextXAlignment = Enum.TextXAlignment.Left,
								Font = Enum.Font.SourceSans,
								TextSize = 18,
								TextColor3 = Color3.new(1, 1, 1),
							}),
						}),
					}),
				})
			})
		})
	end

	local element = Roact.createElement(ExampleButtons)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
