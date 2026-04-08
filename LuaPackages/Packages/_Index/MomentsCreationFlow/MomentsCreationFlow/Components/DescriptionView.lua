local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Button = Foundation.Button
local ButtonVariant = Foundation.Enums.ButtonVariant
local InputSize = Foundation.Enums.InputSize
local Text = Foundation.Text
local View = Foundation.View

local DescriptionUpdated = require(MomentsCreationFlow.Actions.DescriptionUpdated)

local useCallback = React.useCallback
local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useDispatch = MomentsCommon.Hooks.useDispatch
local useSelector = MomentsCommon.Hooks.useSelector
local useState = React.useState
local useTokens = Foundation.Hooks.useTokens

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)

local Constants = require(MomentsCreationFlow.Constants)
local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)
local EventNames = require(MomentsCreationFlow.Analytics.EventNames)

local CHAR_LIMIT = 140

type Props = {
	layoutOrder: number?,
	onPublish: () -> (),
	onReturnToEditing: () -> (),
}

local DescriptionView = function(props: Props)
	local dispatch = useDispatch()
	local insets = useDeviceInsets()
	local tokens = useTokens()
	local creationFlowContext = React.useContext(CreationFlowContext)

	local description = useSelector(function(state)
		return state[Constants.RoduxKey].CreationFlow.description
	end)

	local inputText, setInputText = useState(description)

	local updateDescription = useCallback(function()
		dispatch(DescriptionUpdated(inputText))
		creationFlowContext.fireEvent(EventNames.EditingFlowDescriptionEdited)
	end, { inputText })

	local setCaption = useCallback(function(instance)
		local normalizedText = instance.Text:gsub("[\r\n]+", " ")
		local textLen = utf8.len(normalizedText)
		if textLen ~= nil and textLen >= CHAR_LIMIT then
			-- Find start of next-to-last character, cut off before that character. Avoid corrupting non-1-byte characters.
			local stringIndex = utf8.offset(normalizedText, CHAR_LIMIT + 1)
			local truncatedText = string.sub(normalizedText, 1, stringIndex - 1)
			setInputText(truncatedText)
			instance.Text = truncatedText
		else
			setInputText(normalizedText)
			instance.Text = normalizedText
		end
	end, {})

	return React.createElement(View, {
		LayoutOrder = props.layoutOrder,
		tag = "align-x-center auto-y size-full-0",
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, tokens.Padding.Large),
			PaddingBottom = UDim.new(0, math.max(insets.bottom, tokens.Padding.Large)),
			PaddingLeft = UDim.new(0, math.max(insets.left, tokens.Padding.XLarge)),
			PaddingRight = UDim.new(0, math.max(insets.right, tokens.Padding.XLarge)),
		}),

		SizeConstraint = React.createElement(View, {
			sizeConstraint = {
				MaxSize = Constants.BottomBarSizeConstraint,
			},
			tag = "align-x-center auto-y col gap-large size-full-0",
		}, {
			TextBoxContainer = React.createElement(View, {
				tag = "size-full-2100 bg-surface-100 padding-medium radius-medium",
			}, {
				TextBox = React.createElement("TextBox", {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					ClearTextOnFocus = false,
					ClipsDescendants = true,
					Font = Enum.Font.BuilderSans,
					MaxVisibleGraphemes = CHAR_LIMIT,
					MultiLine = false,
					PlaceholderColor3 = tokens.Color.Content.Muted.Color3,
					PlaceholderText = creationFlowContext.getLocalization(
						CreationFlowLocalization.PublishingDescription
					),
					ShowNativeInput = true,
					Text = inputText,
					TextColor3 = tokens.Color.ActionStandard.Foreground.Color3,
					TextSize = tokens.FontSize.FontSize_400,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					[React.Change.Text] = setCaption,
					[React.Event.FocusLost] = updateDescription,
				}),
			}),

			CTAs = React.createElement(View, {
				LayoutOrder = 2,
				tag = "align-x-center auto-y align-y-bottom anchor-bottom-center gap-small position-bottom-center row size-full-0",
			}, {
				PostButton = React.createElement(Button, {
					fillBehavior = Foundation.Enums.FillBehavior.Fill,
					LayoutOrder = 1,
					onActivated = props.onPublish,
					size = InputSize.Medium,
					text = creationFlowContext.getLocalization(CreationFlowLocalization.PublishingCtaPrimary),
					variant = ButtonVariant.Emphasis,
					width = UDim.new(0.5, 0),
				}),

				ReturnToEditingButton = React.createElement(Button, {
					fillBehavior = Foundation.Enums.FillBehavior.Fill,
					LayoutOrder = 2,
					text = creationFlowContext.getLocalization(CreationFlowLocalization.PublishingCtaSecondary),
					variant = ButtonVariant.Standard,
					width = UDim.new(0.5, 0),
					onActivated = props.onReturnToEditing,
					size = InputSize.Medium,
				}),
			}),

			Disclaimer = React.createElement(Text, {
				LayoutOrder = 3,
				tag = "auto-xy text-body-small content-neutral text-align-x-center text-align-y-top",
				Text = creationFlowContext.getLocalization(CreationFlowLocalization.CreationTooltip),
			}),
		}),
	})
end

return DescriptionView
