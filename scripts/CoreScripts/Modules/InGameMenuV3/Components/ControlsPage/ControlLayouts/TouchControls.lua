--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local InGameMenu = script.Parent.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local ControlLayoutContainer = require(script.Parent.Parent.ControlLayoutContainer)

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local TEXT_BOX_HEIGHT = 19
local HEADER_HEIGHT = 44
local INNER_FRAME_SIZE = UDim2.fromOffset(500, 350)
local INNER_FRAME_PADDING_BOTTOM_DEFAULT = 24

local Images = {
	unequip_item = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/unequip_item.png",
		width = 22,
		height = 74
	},
	backpack_slots = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/backpack_slots.png",
		width = 47,
		height = 13,
	},
	controls_phone_landscape = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/controls_phone_landscape.png",
		width = 338,
		height = 169,
	},
	controls_phone_portrait = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/controls_phone_portrait.png",
		width = 179,
		height = 329,
	},
	d_pad = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/d-pad.png",
		width = 24,
		height = 24
	},
	jump_button = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/jump_button.png",
		width = 24,
		height = 24
	},
	move_area_landscape = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/move_area_landscape.png",
		width = 103,
		height = 80,
	},
	move_area_portrait = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/move_area_portrait.png",
		width = 135,
		height = 106,
	},
	touch_action_jump = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/touch_action_jump.png",
		width = 55,
		height = 71,
	},
	touch_action_move_1 = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/touch_action_move_1.png",
		width = 65,
		height = 71,
	},
	touch_action_move_2 = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/touch_action_move_2.png",
		width = 22,
		height = 33,
	},
	touch_action_rotate_camera = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/touch_action_rotate_camera.png",
		width = 126,
		height = 23,
	},
	touch_action_zoom = {
		img = "rbxasset://textures/ui/InGameMenu/TouchControls/touch_action_zoom.png",
		width = 32,
		height = 88,
	},
}

function controlsLabel(style, labelText, textYAlignment)
	return Roact.createElement(StyledTextLabel, {
		text = labelText,
		size = UDim2.new(1, 0, 1, 0),
		fontStyle = style.Font.Footer,
		colorStyle = style.Theme.TextEmphasis,
		textXAlignment = Enum.TextXAlignment.Center,
		textYAlignment = textYAlignment or Enum.TextYAlignment.Center,
		fluidSizing = true,
		richText = false,
		lineHeight = 1,
	})
end

function controlsImage(name, props)
	props = props or {}
	local asset = Images[name]
	return Roact.createElement("ImageLabel", {
		AnchorPoint = props.AnchorPoint,
		Position = props.Position,
		BackgroundTransparency = 1,
		Image = asset.img,
		Size = UDim2.fromOffset(asset.width, asset.height),
		ImageRectSize = props.ImageRectSize,
		ImageRectOffset = props.ImageRectOffset,
		ZIndex = props.ZIndex or 5,
	})
end

function zoomInOut(style, labels)
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(200, Images.touch_action_zoom.height + TEXT_BOX_HEIGHT),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 0.34, 0),
	}, {
		ActionImage = controlsImage("touch_action_zoom", {
			AnchorPoint = Vector2.new(0.5, 1),
			Position = UDim2.new(0.5, 0, 1, 0),
		}),
		ActionLabel = controlsLabel(style, labels.zoom or "[Zoom In/Out]", Enum.TextYAlignment.Top),
	})
end

function equipItem(style, labels)
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(200, Images.unequip_item.height + TEXT_BOX_HEIGHT),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.5, 0, 0.59, 0),
	}, {
		Tray = controlsImage("backpack_slots", {
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, -(Images.backpack_slots.height / 2)),
			ZIndex = 4,
		}),
		ActionImage = controlsImage("unequip_item", {
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 2, 0, 0),
		}),
		ActionLabel = controlsLabel(style, labels.equip or "[Equip]", Enum.TextYAlignment.Bottom),
	})
end

function jump(style, labels)
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(200, Images.touch_action_jump.height + TEXT_BOX_HEIGHT),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.84, 0, 0.58, 0),
	}, {
		ActionImage = controlsImage("touch_action_jump", {
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, -19, 0, 0),
		}),
		JumpBtn = controlsImage("jump_button", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, -45, 0, 1),
			ZIndex = 4,
		}),
		ActionLabel = controlsLabel(style, labels.jump or "[Jump]", Enum.TextYAlignment.Bottom),
	})
end

function thumbstickMove(style, labels)
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(200, Images.touch_action_move_1.height + TEXT_BOX_HEIGHT),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.15, 0, 0.58, 0),
	}, {
		ActionImage = controlsImage("touch_action_move_1", {
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 19, 0, 0),
		}),
		ActionLabel = controlsLabel(style, labels.move or "[Move]", Enum.TextYAlignment.Bottom),
	})
end

function useItem(style, labels)
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(200, Images.touch_action_move_2.height + TEXT_BOX_HEIGHT),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.64, 0, 0.42, 0),
	}, {
		ActionImage = controlsImage("touch_action_move_2", {
			AnchorPoint = Vector2.new(0.5, 1),
			Position = UDim2.new(0.5, 0, 1, 0),
			ImageRectSize = Vector2.new(-Images.touch_action_move_2.width, Images.touch_action_move_2.height),
			ImageRectOffset = Vector2.new(Images.touch_action_move_2.width, 0),
		}),
		ActionLabel = controlsLabel(style, labels.useItem or "[Use Item]", Enum.TextYAlignment.Top),
	})
end

function tapMove(style, labels)
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(200, Images.touch_action_move_2.height + TEXT_BOX_HEIGHT),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.36, 0, 0.42, 0),
	}, {
		ActionImage = controlsImage("touch_action_move_2", {
			AnchorPoint = Vector2.new(0.5, 1),
			Position = UDim2.new(0.5, 0, 1, 0),
		}),
		ActionLabel = controlsLabel(style, labels.move or "[Move]", Enum.TextYAlignment.Top),
	})
end

function rotateCamera(style, labels)
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(200, Images.touch_action_rotate_camera.height + TEXT_BOX_HEIGHT),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.93, 0, 0.32, 0),
	}, {
		ActionImage = controlsImage("touch_action_rotate_camera", {
			AnchorPoint = Vector2.new(0.5, 1),
			Position = UDim2.new(0.5, -45, 1, 0),
		}),
		ActionLabel = controlsLabel(style, labels.camera or "[Rotate Camera]", Enum.TextYAlignment.Top),
	})
end

function moveArea(style, labels)
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(Images.move_area_landscape.width, Images.move_area_landscape.height),
		BackgroundTransparency = 1,
		Position = UDim2.new(0.205, 0, 0.411, 0),
	}, {
		MoveAreaPanel = controlsImage("move_area_landscape", {
			Position = UDim2.new(0, 0, 0, 0),
		}),
		DPad = controlsImage("d_pad", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0, 22, 1, -20),
			ZIndex = 3,
		}),
	})
end

function isInnerFrameScrollable(screenSize)
	local innerFrameBottom = HEADER_HEIGHT + INNER_FRAME_SIZE.Y.Offset + INNER_FRAME_PADDING_BOTTOM_DEFAULT
	return innerFrameBottom > screenSize.Y
end

local function TouchControls(props)

	local movementMode = GameSettings.TouchMovementMode
	local showMoveArea = false
	local showTapTouch = false
	local showThumbstickMove = true
	local titleText = "CoreScripts.InGameMenu.Controls.ClassicThumbstick"

	if movementMode == Enum.TouchMovementMode.DynamicThumbstick or movementMode == Enum.TouchMovementMode.Default then
		showMoveArea = true
		titleText = "CoreScripts.InGameMenu.Controls.DynamicThumbstick"
	elseif movementMode == Enum.TouchMovementMode.ClickToMove then
		showTapTouch = true
		showThumbstickMove = false
		titleText = "CoreScripts.InGameMenu.Controls.TapToMove"
	end

	return withStyle(function(style)
		return withLocalization({
			equip = "CoreScripts.InGameMenu.Controls.EquipUnequipTools",
			jump = "CoreScripts.InGameMenu.Controls.Jump",
			move = "CoreScripts.InGameMenu.Controls.MoveGamepad",
			useItem = "CoreScripts.InGameMenu.Controls.UseTool",
			camera = "CoreScripts.InGameMenu.Controls.RotateCameraGamepad",
			zoom = "CoreScripts.InGameMenu.Controls.ZoomInOutCamera",
		})(function(localizedLabels)
			return Roact.createElement(ControlLayoutContainer, {
				titleText = titleText,
				headerHeight = HEADER_HEIGHT,
				headerContentYCenter = 22,
			}, {
				Roact.createElement("ScrollingFrame", {
					Size = UDim2.new(1, 0, 1, 0),
					CanvasSize = UDim2.new(1, 0, 1.33, 0),
					BackgroundTransparency = 1,
					ScrollingEnabled = isInnerFrameScrollable(props.screenSize),
					ScrollingDirection = Enum.ScrollingDirection.Y,
				}, {
					InnerFrame = Roact.createElement("Frame", {
						Size = INNER_FRAME_SIZE,
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(0.5, 0),
						Position = UDim2.new(0.5, 0, 0.0, 0),
					}, {
						Phone = controlsImage("controls_phone_landscape", {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.48, 0),
							ZIndex = 2,
						}),
						ZoomInOut = zoomInOut(style, localizedLabels),
						EquipItem = equipItem(style, localizedLabels),
						Jump = jump(style, localizedLabels),
						ThumbstickMove = showThumbstickMove and thumbstickMove(style, localizedLabels) or nil,
						UseItem = useItem(style, localizedLabels),
						TapMove = showTapTouch and tapMove(style, localizedLabels) or nil,
						RotateCamera = rotateCamera(style, localizedLabels),
						MoveArea = showMoveArea and moveArea(style, localizedLabels) or nil,
					}),
				}),
			})
		end)
	end)
end

return TouchControls
