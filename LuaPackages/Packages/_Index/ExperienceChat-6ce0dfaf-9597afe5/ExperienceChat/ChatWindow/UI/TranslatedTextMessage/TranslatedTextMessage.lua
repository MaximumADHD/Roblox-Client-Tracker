local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local ProjectRoot = ExperienceChat.Parent

local React = require(ProjectRoot.React)
local RoactRodux = require(Packages.RoactRodux)
local ApolloClient = require(ProjectRoot.ApolloClient)
local gql = ApolloClient.gql
local useQuery = ApolloClient.useQuery

local Config = require(ExperienceChat.Config)
local context = require(ExperienceChat.context)

local EngineFeatureTextChatServiceIncludesColon = game:GetEngineFeature("TextChatServiceIncludesColon")
local isExperienceChatUserProfileApiEnabled = require(ExperienceChat.Flags.isExperienceChatUserProfileApiEnabled)

function appendVerifiedBadge(name: string): string
	if EngineFeatureTextChatServiceIncludesColon then
		return string.gsub(name, ":(%S-)$", Config.VERIFIED_EMOJI .. ":%1")
	end
	return name .. Config.VERIFIED_EMOJI
end

local getCombinedName = function(message)
	if context.apolloClient then
		local ref = useQuery(
			gql([[
			query UserProfiles($userIds: [String]!) {
				userProfiles(userIds: $userIds) {
					id
					names {
						combinedName
						username
						alias
						displayName
						contactName
					}
				}
			}
		]]),
			{
				errorPolicy = "all",
				variables = {
					userIds = { tostring(message.userId) },
				},
				client = context.apolloClient,
			}
		)
		return ref
	else
		return nil
	end
end

function trim(s)
	return s:match("^()%s*$") and "" or s:match("^%s*(.*%S)")
end

function getMessageText(useTranslation: boolean?, translation: string?, text: string?): string
	if translation == nil or translation == "" then
		return text or ""
	elseif useTranslation then
		return translation or ""
	end

	return text or ""
end

local TranslatedTextMessage = function(props)
	local localRenderedPrefixText, setLocalRenderedPrefixText = React.useState(nil :: string?)

	local shouldShowTranslationToggle = props.showTranslationButton and props.message.translation ~= nil
	local useTranslation = props.message.useTranslation
	local text = getMessageText(useTranslation, props.message.translation, props.message.text)
	local originalPrefixText = props.message.prefixText or ""
	local renderedPrefixText = localRenderedPrefixText or originalPrefixText
	local chatWindowSettings = props.chatWindowSettings
	local userProfile = if isExperienceChatUserProfileApiEnabled() and props.message.userId
		then getCombinedName(props.message)
		else nil
	local userProfileData = if userProfile then userProfile.data else nil

	React.useEffect(function()
		if userProfile and userProfile.data then
			local names = userProfile.data.userProfiles[1].names
			local formatText = string.gsub(renderedPrefixText, names.displayName, names.combinedName)
			setLocalRenderedPrefixText(formatText)
		end
	end, { props.message.userId, userProfileData })

	if props.isUserVerified then
		renderedPrefixText = appendVerifiedBadge(renderedPrefixText)
	end

	if EngineFeatureTextChatServiceIncludesColon then
		renderedPrefixText ..= " "
	else
		renderedPrefixText ..= ": "
	end

	local textSize: number = chatWindowSettings.TextSize
	local toggleButtonSize = textSize - 2

	local fullText = if shouldShowTranslationToggle
		then if string.len(originalPrefixText) == 0 then text else renderedPrefixText .. "   " .. text
		else if string.len(originalPrefixText) == 0 then text else renderedPrefixText .. text

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.XY,
		Size = UDim2.new(1, 0, 0, 0),
	}, {
		TextLabel = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			LayoutOrder = props.LayoutOrder,
		}, {
			TextMessage = React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				FontFace = chatWindowSettings.FontFace,
				RichText = true,
				Size = UDim2.new(1, 0, 0, 0),
				Text = fullText,
				TextColor3 = chatWindowSettings.TextColor3,
				TextSize = chatWindowSettings.TextSize,
				TextStrokeColor3 = chatWindowSettings.TextStrokeColor3,
				TextStrokeTransparency = props.textStrokeTransparency or 0.5,
				TextTransparency = props.textTransparency or 0,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			}, {
				TextMessageButton = if string.len(originalPrefixText) ~= 0
					then React.createElement("Frame", {
						BackgroundTransparency = 1,
						AutomaticSize = Enum.AutomaticSize.XY,
						Size = UDim2.new(1, 0, 0, 0),
					}, {
						Layout = React.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, 4),
						}),
						TextButton = React.createElement("TextButton", {
							AutomaticSize = Enum.AutomaticSize.XY,
							BackgroundTransparency = 1,
							FontFace = chatWindowSettings.FontFace,
							RichText = true,
							Size = UDim2.new(0, 0, 0, 0),
							Text = trim(renderedPrefixText),
							TextSize = chatWindowSettings.TextSize,
							TextStrokeTransparency = 1,
							TextTransparency = 1,
							TextWrapped = true,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = Enum.TextYAlignment.Top,
							LayoutOrder = 1,

							[React.Event.Activated] = function()
								props.onTextMessageLabelButtonActivated(props.message)
							end,
						}),
						TranslationButton = if shouldShowTranslationToggle
							then React.createElement("ImageButton", {
								Size = UDim2.new(0, toggleButtonSize, 0, toggleButtonSize),
								Image = "rbxasset://textures/translateIcon.png",
								HoverImage = "rbxasset://textures/translateIconDark.png",
								PressedImage = "rbxasset://textures/translateIconDark.png",
								-- Copy the transparency of the text for fadeout
								ImageTransparency = props.textTransparency or 0,
								LayoutOrder = 2,
								BackgroundTransparency = 1,
								[React.Event.Activated] = function()
									props.onToggle(not props.message.useTranslation, props.message.messageId)
								end,
							})
							else nil,
					})
					else nil,
			}),
		}),
	})
end

TranslatedTextMessage = RoactRodux.connect(function() end, function(dispatch)
	return {
		onToggle = function(useTranslation: boolean, messageId: string)
			dispatch({
				type = "ChatTranslationMessageToggled",
				useTranslation = useTranslation,
				messageId = messageId,
			})
		end,
	}
end)(TranslatedTextMessage)

return TranslatedTextMessage
