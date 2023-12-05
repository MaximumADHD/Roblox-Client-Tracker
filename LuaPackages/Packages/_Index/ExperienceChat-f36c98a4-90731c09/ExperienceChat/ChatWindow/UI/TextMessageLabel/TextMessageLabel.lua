local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent

local React = require(ProjectRoot.React)
local ApolloClient = require(ProjectRoot.ApolloClient)
local gql = ApolloClient.gql
local useQuery = ApolloClient.useQuery

local Config = require(ExperienceChat.Config)
local context = require(ExperienceChat.context)
local isExperienceChatUserProfileApiEnabled = require(ExperienceChat.Flags.isExperienceChatUserProfileApiEnabled)

local EngineFeatureTextChatServiceIncludesColon = game:GetEngineFeature("TextChatServiceIncludesColon")

local Flags = ExperienceChat.Flags
local getFFlagFixDoubleSpacesAfterPrefixText = require(Flags.getFFlagFixDoubleSpacesAfterPrefixText)

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

local getPrefixText = function(renderedPrefixText, isUserVerified)
	if getFFlagFixDoubleSpacesAfterPrefixText() then
		if isUserVerified then
			renderedPrefixText = appendVerifiedBadge(renderedPrefixText)
		end
		return renderedPrefixText .. " "
	else
		return renderedPrefixText
	end
end

local TextMessageLabel = function(props)
	local localRenderedPrefixText, setLocalRenderedPrefixText = React.useState(nil :: string?)
	local text = props.message.text or ""
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

	if not getFFlagFixDoubleSpacesAfterPrefixText() then
		if props.isUserVerified then
			renderedPrefixText = appendVerifiedBadge(renderedPrefixText)
		end

		if EngineFeatureTextChatServiceIncludesColon then
			renderedPrefixText ..= " "
		else
			renderedPrefixText ..= ": "
		end
	end

	return React.createElement("TextLabel", {
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
		FontFace = chatWindowSettings.FontFace,
		RichText = true,
		Size = UDim2.new(1, 0, 0, 0),
		Text = if string.len(originalPrefixText) == 0
			then text
			else getPrefixText(renderedPrefixText, props.isUserVerified) .. text,
		TextColor3 = chatWindowSettings.TextColor3,
		TextSize = chatWindowSettings.TextSize,
		TextStrokeColor3 = chatWindowSettings.TextStrokeColor3,
		TextStrokeTransparency = props.textStrokeTransparency or 0.5,
		TextTransparency = props.textTransparency or 0,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		LayoutOrder = props.LayoutOrder,
	}, {
		TextMessageButton = if string.len(originalPrefixText) ~= 0
			then React.createElement("TextButton", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				FontFace = chatWindowSettings.FontFace,
				RichText = true,
				Size = UDim2.new(0, 0, 0, 0),
				Text = renderedPrefixText,
				TextSize = Config.ChatWindowTextSize,
				TextStrokeTransparency = 1,
				TextTransparency = 1,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,

				[React.Event.Activated] = function()
					props.onTextMessageLabelButtonActivated(props.message)
				end,
			})
			else nil,
	})
end

return TextMessageLabel
