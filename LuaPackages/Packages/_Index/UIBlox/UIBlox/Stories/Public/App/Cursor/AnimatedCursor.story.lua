local RunService = game:GetService("RunService")

local Stories = script.Parent.Parent.Parent.Parent
local Packages = Stories.Parent.Parent
local UIBlox = Packages.UIBlox
local Roact = require(Packages.Roact)
local Gamepad = require(Packages.RoactGamepad)

local withStyle = require(UIBlox.Core.Style.withStyle)
local LargePill = require(UIBlox.App.Pill.LargePill)
local SmallPill = require(UIBlox.App.Pill.SmallPill)
local withSelectionCursorProvider = require(UIBlox.App.SelectionImage.withSelectionCursorProvider)
local CursorKind = require(UIBlox.App.SelectionImage.CursorKind)
local SystemSlider = require(UIBlox.App.Slider.SystemSlider)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local Checkbox = require(UIBlox.App.InputButton.Checkbox)

local UIBloxConfig = require(Stories.UIBloxStorybookConfig)

local FocusContainer = require(Packages.StoryComponents.FocusContainer)
local InputManager = require(Packages.StoryComponents.InputManager)

local PADDING = 10

local AnimatedCursorStory = Roact.PureComponent:extend("AnimatedCursorStory")

function AnimatedCursorStory:init()
	self.gamepadRefs = Gamepad.createRefCache()
end

function AnimatedCursorStory:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font

		return withSelectionCursorProvider(function(getSelectionCursor)
			return Roact.createElement(Gamepad.Focusable.Frame or "Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, PADDING),
				}),
				InputManager = Gamepad.withFocusController(function(focusController)
					return Roact.createElement(InputManager, {
						focusController = focusController,
					})
				end),

				-- A component for each type of cursor
				-- RoundedRectNoInset
				TestFrameNoInset = Roact.createElement(Gamepad.Focusable["Frame"], {
					Size = UDim2.new(0, 100, 0, 100),
					LayoutOrder = 1,
					NextSelectionUp = self.gamepadRefs[13],
					[Roact.Ref] = self.gamepadRefs[1],
					NextSelectionDown = self.gamepadRefs[2],
					SelectionImageObject = getSelectionCursor(CursorKind.RoundedRectNoInset),
				}, {
					Text = Roact.createElement(GenericTextLabel, {
						Text = "RoundedRectNoInset",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontStyle = font.Title,
						colorStyle = theme.TextEmphasis,
					}),
				}),
				-- RoundedRect
				TestFrame = Roact.createElement(Gamepad.Focusable["Frame"], {
					Size = UDim2.new(0, 100, 0, 100),
					LayoutOrder = 2,
					NextSelectionUp = self.gamepadRefs[1],
					[Roact.Ref] = self.gamepadRefs[2],
					NextSelectionDown = self.gamepadRefs[3],
					SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),
				}, {
					Text = Roact.createElement(GenericTextLabel, {
						Text = "RoundedRect",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontStyle = font.Title,
						colorStyle = theme.TextEmphasis,
					}),
				}),
				-- InputFields
				Textbox = Roact.createElement(Gamepad.Focusable["Frame"], {
					Size = UDim2.new(0, 200, 0, 30),
					LayoutOrder = 3,
					NextSelectionUp = self.gamepadRefs[2],
					[Roact.Ref] = self.gamepadRefs[3],
					NextSelectionDown = self.gamepadRefs[4],
					SelectionImageObject = getSelectionCursor(CursorKind.InputFields),
				}, {
					Text = Roact.createElement(GenericTextLabel, {
						Text = "InputFields",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontStyle = font.Title,
						colorStyle = theme.TextEmphasis,
					}),
				}),
				-- SelectedKnob
				SystemSlider = Roact.createElement(SystemSlider, {
					min = 0,
					max = 100,
					stepInterval = 1,
					value = 5,
					width = UDim.new(0, 200),
					onValueChanged = function(newValue) end,
					layoutOrder = 4,
					NextSelectionUp = self.gamepadRefs[3],
					[Roact.Ref] = self.gamepadRefs[4],
					NextSelectionDown = self.gamepadRefs[5],
				}),
				-- BulletUp
				BulletUp = Roact.createElement(Gamepad.Focusable["Frame"], {
					Size = UDim2.new(0, 100, 0, 100),
					LayoutOrder = 5,
					NextSelectionUp = self.gamepadRefs[4],
					[Roact.Ref] = self.gamepadRefs[5],
					NextSelectionDown = self.gamepadRefs[6],
					SelectionImageObject = getSelectionCursor(CursorKind.BulletUp),
				}, {
					Text = Roact.createElement(GenericTextLabel, {
						Text = "BulletUp",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontStyle = font.Title,
						colorStyle = theme.TextEmphasis,
					}),
				}),
				-- BulletDown
				BulletDown = Roact.createElement(Gamepad.Focusable["Frame"], {
					Size = UDim2.new(0, 100, 0, 100),
					LayoutOrder = 6,
					NextSelectionUp = self.gamepadRefs[5],
					[Roact.Ref] = self.gamepadRefs[6],
					NextSelectionDown = self.gamepadRefs[7],
					SelectionImageObject = getSelectionCursor(CursorKind.BulletDown),
				}, {
					Text = Roact.createElement(GenericTextLabel, {
						Text = "BulletDown",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontStyle = font.Title,
						colorStyle = theme.TextEmphasis,
					}),
				}),
				-- SelectionCell
				SelectionCell = Roact.createElement(Gamepad.Focusable["Frame"], {
					Size = UDim2.new(0, 100, 0, 100),
					LayoutOrder = 7,
					NextSelectionUp = self.gamepadRefs[6],
					[Roact.Ref] = self.gamepadRefs[7],
					NextSelectionDown = self.gamepadRefs[8],
					SelectionImageObject = getSelectionCursor(CursorKind.SelectionCell),
				}, {
					Text = Roact.createElement(GenericTextLabel, {
						Text = "SelectionCell",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontStyle = font.Title,
						colorStyle = theme.TextEmphasis,
					}),
				}),
				-- SkinToneCircle
				SkinToneCircle = Roact.createElement(Gamepad.Focusable["Frame"], {
					Size = UDim2.new(0, 100, 0, 100),
					LayoutOrder = 8,
					NextSelectionUp = self.gamepadRefs[7],
					[Roact.Ref] = self.gamepadRefs[8],
					NextSelectionDown = self.gamepadRefs[9],
					SelectionImageObject = getSelectionCursor(CursorKind.SkinToneCircle),
				}, {
					Text = Roact.createElement(GenericTextLabel, {
						Text = "SkinToneCircle",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontStyle = font.Title,
						colorStyle = theme.TextEmphasis,
					}),
				}),
				-- Square
				Square = Roact.createElement(Gamepad.Focusable["Frame"], {
					Size = UDim2.new(0, 100, 0, 100),
					LayoutOrder = 9,
					NextSelectionUp = self.gamepadRefs[8],
					[Roact.Ref] = self.gamepadRefs[9],
					NextSelectionDown = self.gamepadRefs[10],
					SelectionImageObject = getSelectionCursor(CursorKind.Square),
				}, {
					Text = Roact.createElement(GenericTextLabel, {
						Text = "Square",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontStyle = font.Title,
						colorStyle = theme.TextEmphasis,
					}),
				}),
				-- Toggle
				Toggle = Roact.createElement(Gamepad.Focusable["Frame"], {
					Size = UDim2.new(0, 100, 0, 100),
					LayoutOrder = 10,
					NextSelectionUp = self.gamepadRefs[9],
					[Roact.Ref] = self.gamepadRefs[10],
					NextSelectionDown = self.gamepadRefs[11],
					SelectionImageObject = getSelectionCursor(CursorKind.Toggle),
				}, {
					Text = Roact.createElement(GenericTextLabel, {
						Text = "Toggle",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontStyle = font.Title,
						colorStyle = theme.TextEmphasis,
					}),
				}),
				-- LargePill
				LargePillContainer = Roact.createElement("Frame", {
					Size = UDim2.fromOffset(500, 100),
					BackgroundTransparency = 1,
					LayoutOrder = 11,
				}, {
					LargePill = Roact.createElement(Gamepad.Focusable[LargePill], {
						text = "Large Pill",
						onActivated = function() end,
						NextSelectionUp = self.gamepadRefs[10],
						[Roact.Ref] = self.gamepadRefs[11],
						NextSelectionDown = self.gamepadRefs[12],
					}),
				}),
				--SmallPill
				SmallPillContainer = Roact.createElement("Frame", {
					Size = UDim2.fromOffset(500, 100),
					BackgroundTransparency = 1,
					LayoutOrder = 12,
				}, {
					SmallPill = Roact.createElement(Gamepad.Focusable[SmallPill], {
						text = "Small Pill",
						onActivated = function() end,
						NextSelectionUp = self.gamepadRefs[11],
						[Roact.Ref] = self.gamepadRefs[12],
						NextSelectionDown = self.gamepadRefs[13],
					}),
				}),
				--Checkbox
				CheckboxContainer = UIBloxConfig.useUpdatedCheckbox and Roact.createElement("Frame", {
					Size = UDim2.fromOffset(100, 100),
					BackgroundTransparency = 1,
					LayoutOrder = 13,
				}, {
					Checkbox = Roact.createElement(Gamepad.Focusable[Checkbox], {
						text = "Checkbox",
						onActivated = function() end,
						NextSelectionUp = self.gamepadRefs[12],
						[Roact.Ref] = self.gamepadRefs[13],
						NextSelectionDown = self.gamepadRefs[1],
					}),
				}) or nil,
			})
		end)
	end)
end

local GamepadContainer = Roact.PureComponent:extend("GamepadContainer")

function GamepadContainer:init()
	self.refs = Gamepad.createRefCache()
end

function GamepadContainer:render()
	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		CanvasSize = UDim2.new(1, 0, 0, 1500),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		StoryItem = Roact.createElement(AnimatedCursorStory, {
			backgroundTheme = "BackgroundDefault",
		}),
	})
end

if RunService:IsRunning() then
	return Roact.createElement(FocusContainer, {}, {
		GamepadContainer = Roact.createElement(GamepadContainer),
	})
else
	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		CanvasSize = UDim2.new(1, 0, 0, 1300),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		Frame = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 400),
			BorderSizePixel = 0,
			LayoutOrder = 1,
			BackgroundTransparency = 1,
		}, {
			StoryItem = Roact.createElement(AnimatedCursorStory, {
				backgroundTheme = "BackgroundDefault",
			}),
		}),
	})
end
