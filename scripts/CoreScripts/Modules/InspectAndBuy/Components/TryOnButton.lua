local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local InspectAndBuyFolder = script.Parent.Parent
local Colors = require(InspectAndBuyFolder.Colors)
local Constants = require(InspectAndBuyFolder.Constants)
local SetTryingOnInfo = require(InspectAndBuyFolder.Actions.SetTryingOnInfo)
local TryOnItem = require(InspectAndBuyFolder.Thunks.TryOnItem)
local getSelectionImageObjectRounded = require(InspectAndBuyFolder.getSelectionImageObjectRounded)

local TryOnShorcutKeycode = require(script.Parent.Common.ControllerShortcutKeycodes).TryOn

local TRY_ON_KEY = "InGame.InspectMenu.Action.TryOn"
local TAKE_OFF_KEY = "InGame.InspectMenu.Action.TakeOff"
local TEXT_SIZE = 16

local TryOnButton = Roact.PureComponent:extend("TryOnButton")

function TryOnButton:init()
	self.selectedImage = getSelectionImageObjectRounded()

	ContextActionService:BindCoreAction("TryOnGamepadShortcut", function(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End then
			self:activateButton()
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end, false, TryOnShorcutKeycode)
end

function TryOnButton:activateButton()
	if not self.props.showTryOn then
		return
	end

	local assetInfo = self.props.assetInfo
	local tryOnItem = self.props.tryOnItem
	local takeOffItem = self.props.takeOffItem
	local tryingOn = self.props.tryingOnInfo.tryingOn
	local partOfBundleAndOffsale = self.props.partOfBundleAndOffsale
	local bundleId = self.props.bundleId

	-- disable the try on button if wanting to try on a layered clothing asset on R6
	local layeredClothingOnR6 = assetInfo
		and self.props.localPlayerModel
		and Constants.LayeredAssetTypes[assetInfo.assetTypeId] ~= nil
		and self.props.localPlayerModel.Humanoid.RigType == Enum.HumanoidRigType.R6

	if not layeredClothingOnR6 then
		if tryingOn then
			takeOffItem()
		else
			tryOnItem(true, assetInfo.assetId, assetInfo.assetTypeId, partOfBundleAndOffsale, bundleId)
		end
	end
end

function TryOnButton:willUnmount()
	ContextActionService:UnbindCoreAction("TryOnGamepadShortcut")
end

function TryOnButton:render()
	local tryingOn = self.props.tryingOnInfo.tryingOn
	local showTryOn = self.props.showTryOn
	local locale = self.props.locale
	local assetInfo = self.props.assetInfo
	local tryOnButtonRef = self.props.tryOnButtonRef
	local sizeXAdjustment = -32
	local tryOnTextKey

	if tryingOn then
		tryOnTextKey = TAKE_OFF_KEY
	else
		tryOnTextKey = TRY_ON_KEY
	end

	-- disable the try on button if wanting to try on a layered clothing asset on R6
	local layeredClothingOnR6 = assetInfo
		and self.props.localPlayerModel
		and Constants.LayeredAssetTypes[assetInfo.assetTypeId] ~= nil
		and self.props.localPlayerModel.Humanoid.RigType == Enum.HumanoidRigType.R6

	return Roact.createElement("ImageLabel", {
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundTransparency = 1,
		Size = UDim2.new(0.5, sizeXAdjustment, 0, 44),
		Visible = showTryOn,
		LayoutOrder = 2,
		Image = "rbxasset://textures/ui/InspectMenu/Button_outline.png",
		ImageTransparency = layeredClothingOnR6 and 0.5 or 0,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(5, 5, 120, 20),
	}, {
		SelectionGainedImage = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = false,
			Image = "rbxasset://textures/ui/InspectMenu/Button_white.png",
			ImageColor3 = Colors.Pumice,
		}),
		TryOnTextKey = Roact.createElement("TextButton", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Text = RobloxTranslator:FormatByKeyForLocale(tryOnTextKey, locale),
			Font = AppFonts.default:getDefault(),
			TextSize = TEXT_SIZE,
			TextColor3 = Colors.White,
			TextTransparency = layeredClothingOnR6 and 0.5 or 0,
			SelectionImageObject = self.selectedImage,
			ZIndex = 2,
			[Roact.Event.SelectionGained] = function(rbx)
				rbx.Parent.SelectionGainedImage.Visible = true
				rbx.TextColor3 = Colors.Carbon
			end,
			[Roact.Event.SelectionLost] = function(rbx)
				rbx.Parent.SelectionGainedImage.Visible = false
				rbx.TextColor3 = Colors.White
			end,
			[Roact.Ref] = tryOnButtonRef,
			[Roact.Event.Activated] = function()
				self:activateButton()
			end,
		}),
	})
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local assetId = state.detailsInformation.assetId

	return {
		locale = state.locale,
		view = state.view,
		assetInfo = state.assets[assetId],
		bundleInfo = state.bundles,
		tryingOnInfo = state.tryingOnInfo,
	}
end, function(dispatch)
	return {
		tryOnItem = function(tryingOn, assetId, assetTypeId, partOfBundleAndOffsale, bundleId)
			dispatch(TryOnItem(tryingOn, assetId, assetTypeId, partOfBundleAndOffsale, bundleId))
		end,
		takeOffItem = function()
			dispatch(SetTryingOnInfo(false, nil, nil))
		end,
	}
end)(TryOnButton)
