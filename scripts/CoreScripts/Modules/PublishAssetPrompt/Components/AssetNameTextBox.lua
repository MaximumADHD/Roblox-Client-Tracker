--[[
	A text input field used in the Upload Asset prompt that allows the user to enter an asset name.
	Validates the text input as the user types, and displays "Invalid Name" below if special characters are used.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Focusable = RoactGamepad.Focusable

local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local TEXTBOX_HEIGHT = 30
local TEXTBOX_PADDING = 6

local MAX_NAME_LENGTH = 50 -- Source of truth is AssetConfigConstants in game-engine
local BUTTON_STOKE = Images["component_assets/circle_17_stroke_1"]
local BACKGROUND_9S_CENTER = Rect.new(8, 8, 8, 8)
local WARNING_TEXT_SIZE = 12

local AssetNameTextBox = Roact.PureComponent:extend("AssetNameTextBox")
local FFlagRemoveNameRegex = game:DefineFastFlag("RemoveNameRegex", false)

AssetNameTextBox.validateProps = t.strictInterface({
	Size = t.optional(t.UDim2),
	Position = t.optional(t.UDim2),
	onAssetNameUpdated = t.callback, -- function(newName, isNameValid)
	nameTextBoxRef = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	assetType = t.optional(t.enum(Enum.AssetType)),
	defaultName = t.optional(t.string),
})

local function isNameTooLong(str: string, maxLength: number)
	local utf8Length: number? = utf8.len(utf8.nfcnormalize(str))
	if utf8Length == nil then
		return true
	else
		return utf8Length > maxLength
	end
end

function AssetNameTextBox:init()
	self:setState({
		assetName = self.props.defaultName or "",
		lastValidName = "",
		isNameValid = true,
	})

	self.wasInitiallyFocused = false

	self.tryFocusTextBox = function()
		if self.wasInitiallyFocused then
			return
		end

		local textbox = self.props.nameTextBoxRef:getValue()
		if textbox and textbox:IsDescendantOf(game) then
			textbox:CaptureFocus()
			self.wasInitiallyFocused = true
		end
	end

	self.onTextChanged = function(rbx)
		local assetName = rbx.Text

		if isNameTooLong(assetName, MAX_NAME_LENGTH) then
			local byteOffset = utf8.offset(assetName, MAX_NAME_LENGTH + 1) - 1
			assetName = string.sub(assetName, 1, byteOffset)
			rbx.Text = assetName
		end

		local isNameValid = self:checkIsNameValid(assetName)

		local lastValidName = self.state.lastValidName
		if isNameValid then
			lastValidName = rbx.Text
		end

		self:setState({
			lastValidName = lastValidName,
			isNameValid = isNameValid,
			assetName = assetName,
		})

		self.props.onAssetNameUpdated(assetName, isNameValid)
	end
end

function AssetNameTextBox:checkIsNameValid(assetName)
	if not FFlagRemoveNameRegex then
		--Name can only be made of alphanumeric, spaces, apostraphes, underscores
		if not string.match(assetName, "[0-9a-zA-Z_'%s]+$") then
			return false
		end

		-- no leading spaces
		if string.sub(assetName, 1, 1) == " " then
			return false
		end
	end
	--no names of only spaces
	if string.match(assetName, "^%s*$") then
		return false
	end

	return true
end

function AssetNameTextBox:renderWithProviders(stylePalette, getSelectionCursor)
	local font = stylePalette.Font
	local theme = stylePalette.Theme

	local isNameValid = self.state.isNameValid
	local showWarningText = not isNameValid

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = self.props.Size,
		Position = self.props.Position,
	}, {
		TextboxContainer = Roact.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Image = BUTTON_STOKE,
			ImageColor3 = theme.UIDefault.Color,
			ImageTransparency = theme.UIDefault.Transparency,
			LayoutOrder = 1,
			ScaleType = Enum.ScaleType.Slice,
			Size = UDim2.new(1, 0, 0, TEXTBOX_HEIGHT),
			SliceCenter = BACKGROUND_9S_CENTER,
		}, {
			Textbox = Roact.createElement(Focusable.TextBox, {
				Text = self.state.assetName,
				BackgroundTransparency = 1,
				ClearTextOnFocus = false,
				Font = font.CaptionBody.Font,
				TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
				PlaceholderColor3 = theme.PlaceHolder.Color,
				PlaceholderText = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.AssetNamePlaceholder"),
				Position = UDim2.fromOffset(TEXTBOX_PADDING, 0),
				Size = UDim2.new(1, -TEXTBOX_PADDING * 2, 1, 0),
				TextColor3 = theme.TextDefault.Color,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				OverlayNativeInput = true,
				[Roact.Change.Text] = self.onTextChanged,
				SelectionImageObject = getSelectionCursor(CursorKind.InputFields),
				NextSelectionDown = self.props.NextSelectionDown,

				[Roact.Ref] = self.props.nameTextBoxRef,
				[Roact.Event.AncestryChanged] = self.tryFocusTextBox,
			}),
		}),
		WarningText = showWarningText and Roact.createElement("TextLabel", {
			Position = UDim2.new(0, 0, 1, 0),

			BackgroundTransparency = 1,
			Text = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.InvalidName"),
			LayoutOrder = 2,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			Size = UDim2.new(1, 0, 0, 20),
			TextColor3 = theme.Alert.Color,
			TextWrapped = true,
			Font = font.Body.Font,
			TextSize = WARNING_TEXT_SIZE,
		}),
	})
end

function AssetNameTextBox:render()
	return withStyle(function(stylePalette)
		return withSelectionCursorProvider(function(getSelectionCursor)
			return self:renderWithProviders(stylePalette, getSelectionCursor)
		end)
	end)
end

function AssetNameTextBox:didMount()
	self.tryFocusTextBox()
end

local function mapStateToProps(state)
	return {
		assetType = state.promptRequest.promptInfo.assetType,
	}
end

return RoactRodux.connect(mapStateToProps)(AssetNameTextBox)
