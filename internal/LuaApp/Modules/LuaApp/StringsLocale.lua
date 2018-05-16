
local GeneratedStrings = require(script.Parent.GeneratedStrings)

local StringsLocale = {}

StringsLocale.Keys = {
	BY = "BY",
	RECOMMENDED_GAMES = "RECOMMENDED_GAMES",
	PLAYING = "PLAYING",
	VISITS = "VISITS",
	CREATED = "CREATED",
	UPDATED = "UPDATED",
	MAX_PLAYERS = "MAX_PLAYERS",
	GENRE = "GENRE",
	ALLOWED_GEAR = "ALLOWED_GEAR",
	REPORT_ABUSE = "REPORT_ABUSE",
	COPYLOCKED = "COPYLOCKED",
	DETAILS = "DETAILS",
	VIP_SERVERS = "VIP_SERVERS",
	GAME_BADGES = "GAME_BADGES",
	PASSES_FOR_THIS_GAME = "PASSES_FOR_THIS_GAME",
	GEAR_FOR_THIS_GAME = "GEAR_FOR_THIS_GAME",
	PLAYERS = "PLAYERS",
	CLANS = "CLANS",
	SERVERS_MY_FRIENDS_ARE_IN = "SERVERS_MY_FRIENDS_ARE_IN",
	OTHER_SERVERS = "OTHER_SERVERS",
	ABOUT = "ABOUT",
	STORE = "STORE",
	LEADERBOARDS = "LEADERBOARDS",
	SERVERS = "SERVERS",
	SEARCH = "SEARCH",
	TURN_ON_CHAT = "TURN_ON_CHAT",
	PRIVACY_SETTINGS = "PRIVACY_SETTINGS",
	CANCEL = "CANCEL",
	CONFIRM = "CONFIRM",
	SEARCH_GAMES = "SEARCH_GAMES",
	SEARCH_FOR_FRIENDS = "SEARCH_FOR_FRIENDS",
	SEARCH_FOR_FRIENDS_AND_CHAT = "SEARCH_FOR_FRIENDS_AND_CHAT",
	NO_RESULTS_FOUND = "NO_RESULTS_FOUND",
	SEE_MORE_FRIENDS = "SEE_MORE_FRIENDS",
	SEE_LESS_FRIENDS = "SEE_LESS_FRIENDS",
	NO_NETWORK_CONNECTION = "NO_NETWORK_CONNECTION",
	SHARE_GAME_TO_CHAT = "SHARE_GAME_TO_CHAT",
	MAKE_FRIENDS_TO_CHAT = "MAKE_FRIENDS_TO_CHAT",
	THIS_MESSAGE_WAS_MODERATED = "THIS_MESSAGE_WAS_MODERATED",
	FILTERED_FOR_RECEIVERS = "FILTERED_FOR_RECEIVERS",
	CHAT_GROUP_NAME = "CHAT_GROUP_NAME",
	NOTIFICATIONS = "NOTIFICATIONS",
	ADD_FRIENDS = "ADD_FRIENDS",
	LEAVE_GROUP = "LEAVE_GROUP",
	LEAVE_GROUP_MESSAGE = "LEAVE_GROUP_MESSAGE",
	STAY = "STAY",
	LEAVE = "LEAVE",
	REMOVE_USER = "REMOVE_USER",
	REMOVE_USER_CONFIRMATION_MESSAGE = "REMOVE_USER_CONFIRMATION_MESSAGE",
	REMOVE = "REMOVE",
	NOT_SET = "NOT_SET",
	CHAT = "CHAT",
	CHAT_DETAILS = "CHAT_DETAILS",
	NEW_CHAT_GROUP = "NEW_CHAT_GROUP",
	CHAT_INPUT_PLACEHOLDER = "CHAT_INPUT_PLACEHOLDER",
	OPTION = "OPTION",
	VIEW_PROFILE = "VIEW_PROFILE",
	REPORT_USER = "REPORT_USER",
	REMOVE_FROM_GROUP = "REMOVE_FROM_GROUP",
	GENERAL = "GENERAL",
	MEMBERS = "MEMBERS",
	FAILED_TO_RENAME_TITLE = "FAILED_TO_RENAME_TITLE",
	FAILED_TO_RENAME_MESSAGE = "FAILED_TO_RENAME_MESSAGE",
	GROUP_NAME_MODERATED = "GROUP_NAME_MODERATED",
	FAILED_TO_LEAVE_GROUP = "FAILED_TO_LEAVE_GROUP",
	FAILED_TO_LEAVE_GROUP_MESSAGE = "FAILED_TO_LEAVE_GROUP_MESSAGE",
	FAILED_TO_REMOVE_USER = "FAILED_TO_REMOVE_USER",
	FAILED_TO_REMOVE_USER_MESSAGE = "FAILED_TO_REMOVE_USER_MESSAGE",
	TOO_MANY_PEOPLE = "TOO_MANY_PEOPLE",
	REMOVED_FROM_CONVERSATION = "REMOVED_FROM_CONVERSATION",
	NAME_THIS_CHAT_GROUP = "NAME_THIS_CHAT_GROUP",
	SAVE = "SAVE",
	SAVE_NEW_GROUP = "SAVE_NEW_GROUP",
	SAVE_ADDED_FRIENDS = "SAVE_ADDED_FRIENDS",
	SEND = "SEND",
	SENT = "SENT",
	OFFLINE = "OFFLINE",
	ONLINE = "ONLINE",
	BY_BUILDER = "BY_BUILDER",
	VIEW_ASSET_DETAILS = "VIEW_ASSET_DETAILS",
	PLAY_GAME = "PLAY_GAME",
	MY_FEED = "MY_FEED",
	FRIENDS_COUNT = "FRIENDS_COUNT",
	SEE_ALL = "SEE_ALL",
	GAMES = "GAMES",
	HOME = "HOME",
	CATALOG = "CATALOG",
	AVATAR = "AVATAR",
	FRIENDS = "FRIENDS",
	MORE = "MORE",
	CURRENT_PLAYERS = "CURRENT_PLAYERS",
}

StringsLocale.Languages = {
	EN_US = "en-us",
	AR = "ar",
	ZH_CN = "zh-CN",
	ZH_TW = "zh-TW",
	CS = "cs",
	DA = "da",
	NL = "nl",
	EN_GB = "en-GB",
	FI = "fi",
	FR_CA = "fr-CA",
	ES = "es",
	ES_XL = "es-XL",
	SV = "sv",
	TH = "th",
	TR = "tr",
	VI = "vi"
}

StringsLocale.DefaultLanguage = StringsLocale.Languages.EN_US

StringsLocale.Content = {
	{

		key = StringsLocale.Keys.BY,
		values = {
			[StringsLocale.Languages.EN_US] = "By",
		},
		comment = "The preposition after the game title to introduce the game creator.",
	},
	{

		key = StringsLocale.Keys.RECOMMENDED_GAMES,
		values = {
			[StringsLocale.Languages.EN_US] = "Recommended Games",
		},
		comment = "Recommended Games section header for the About Tab on the game details page.",
	},
	{

		key = StringsLocale.Keys.COPYLOCKED,
		values = {
			[StringsLocale.Languages.EN_US] = "This place is copylocked",
		},
		comment = "Notification that a game is locked.",
	},
	{

		key = StringsLocale.Keys.REPORT_ABUSE,
		values = {
			[StringsLocale.Languages.EN_US] = "Report Abuse",
		},
		comment = "Clickable text to report a game details page for bad content.",
	},
	{

		key = StringsLocale.Keys.PLAYING,
		values = {
			[StringsLocale.Languages.EN_US] = "Playing",
		},
		comment = "Label for the number of players playing a game.",
	},
	{

		key = StringsLocale.Keys.CURRENT_PLAYERS,
		values = {
			[StringsLocale.Languages.EN_US] = "{NUMBER_OF_CURRENT_PLAYERS} Playing",
		},
		comment = "Label for the number of players that are currently playing a game.",
	},
	{

		key = StringsLocale.Keys.VISITS,
		values = {
			[StringsLocale.Languages.EN_US] = "Visits",
		},
		comment = "Label for the number of visits a game has.",
	},
	{

		key = StringsLocale.Keys.CREATED,
		values = {
			[StringsLocale.Languages.EN_US] = "Created",
		},
		comment = "Label for the creation date of a game.",
	},
	{

		key = StringsLocale.Keys.UPDATED,
		values = {
			[StringsLocale.Languages.EN_US] = "Updated",
		},
		comment = "Label for the date of the last update to a game.",
	},
	{

		key = StringsLocale.Keys.MAX_PLAYERS,
		values = {
			[StringsLocale.Languages.EN_US] = "Max Players",
		},
		comment = "Label for the maximum number of players in a game.",
	},
	{

		key = StringsLocale.Keys.GENRE,
		values = {
			[StringsLocale.Languages.EN_US] = "Genre",
		},
		comment = "Label for the game genre.",
	},
	{

		key = StringsLocale.Keys.ALLOWED_GEAR,
		values = {
			[StringsLocale.Languages.EN_US] = "Allowed Gear",
		},
		comment = "Label for the allowed gear for a game.",
	},
	{

		key = StringsLocale.Keys.OTHER_SERVERS,
		values = {
			[StringsLocale.Languages.EN_US] = "Other Servers",
		},
		comment = "The other servers section header in the servers tab on the game details page.",
	},
	{

		key = StringsLocale.Keys.SERVERS_MY_FRIENDS_ARE_IN,
		values = {
			[StringsLocale.Languages.EN_US] = "Servers my friends are in",
		},
		comment = "The servers my friends are in section in the servers tab on the game details page.",
	},
	{

		key = StringsLocale.Keys.CLANS,
		values = {
			[StringsLocale.Languages.EN_US] = "Clans",
		},
		comment = "The group leaderboard header in the leaderboards tab on the game details page.",
	},
	{

		key = StringsLocale.Keys.PLAYERS,
		values = {
			[StringsLocale.Languages.EN_US] = "Players",
		},
		comment = "The players section header in the leaderboards tab on the game details page.",
	},
	{

		key = StringsLocale.Keys.GEAR_FOR_THIS_GAME,
		values = {
			[StringsLocale.Languages.EN_US] = "Gear for this game",
		},
		comment = "The gear section header in the store tab on the game details page.",
	},
	{

		key = StringsLocale.Keys.PASSES_FOR_THIS_GAME,
		values = {
			[StringsLocale.Languages.EN_US] = "Passes for this game",
		},
		comment = "The passes section header in the store tab on the game details page.",
	},
	{

		key = StringsLocale.Keys.GAME_BADGES,
		values = {
			[StringsLocale.Languages.EN_US] = "Game Badges",
		},
		comment = "The game badges section header on the game details page.",
	},
	{

		key = StringsLocale.Keys.VIP_SERVERS,
		values = {
			[StringsLocale.Languages.EN_US] = "VIP Servers",
		},
		comment = "The VIP servers section header in the about and servers tabs on the game details page.",
	},
	{

		key = StringsLocale.Keys.DETAILS,
		values = {
			[StringsLocale.Languages.EN_US] = "Details",
		},
		comment = "The game details section header on the game details page.",
	},
	{

		key = StringsLocale.Keys.ABOUT,
		values = {
			[StringsLocale.Languages.EN_US] = "About",
		},
		comment = "The About tab's text on the game details page.",
	},
	{

		key = StringsLocale.Keys.STORE,
		values = {
			[StringsLocale.Languages.EN_US] = "Store",
		},
		comment = "The Store tab's text on the game details page.",
	},
	{

		key = StringsLocale.Keys.LEADERBOARDS,
		values = {
			[StringsLocale.Languages.EN_US] = "Leaderboards",
		},
		comment = "The Leaderboards tab's text on the game details page.",
	},
	{

		key = StringsLocale.Keys.SERVERS,
		values = {
			[StringsLocale.Languages.EN_US] = "Servers",
		},
		comment = "The Servers tab's text on the game details page.",
	},
	{

		key = StringsLocale.Keys.SEARCH,
		values = {
			[StringsLocale.Languages.EN_US] = "Search",
		},
		comment = "Placeholder text for most search input text boxes. Explains the functionality of the text box.",
	},
	{

		key = StringsLocale.Keys.TURN_ON_CHAT,
		values = {
			[StringsLocale.Languages.EN_US] = "To chat with friends, turn on chat in your Privacy Settings.",
		},
		comment = "Explains how to enable chat.",
	},
	{

		key = StringsLocale.Keys.PRIVACY_SETTINGS,
		values = {
			[StringsLocale.Languages.EN_US] = "Privacy Settings",
		},
		comment = "Label for button that opens the user's privacy settings.",
	},
	{

		key = StringsLocale.Keys.CANCEL,
		values = {
			[StringsLocale.Languages.EN_US] = "Cancel",
		},
		comment = "Used for buttons that cancel an action.",
	},
	{

		key = StringsLocale.Keys.CONFIRM,
		values = {
			[StringsLocale.Languages.EN_US] = "Okay",
		},
		comment = "Used for buttons that confirm an action or dismiss an informational pop-up.",
	},
	{

		key = StringsLocale.Keys.SEARCH_GAMES,
		values = {
			[StringsLocale.Languages.EN_US] = "Search games",
		},
		comment = "Placeholder text when searching for games.",
	},
	{

		key = StringsLocale.Keys.SEARCH_FOR_FRIENDS,
		values = {
			[StringsLocale.Languages.EN_US] = "Search for Friends",
		},
		comment = "Placeholder text when searching for friends.",
	},
	{

		key = StringsLocale.Keys.SEARCH_FOR_FRIENDS_AND_CHAT,
		values = {
			[StringsLocale.Languages.EN_US] = "Search for friends and chat groups",
		},
		comment = "Placeholder text when searching for friends and chat groups.",
	},
	{

		key = StringsLocale.Keys.NO_RESULTS_FOUND,
		values = {
			[StringsLocale.Languages.EN_US] = "No results found",
		},
		comment = "When searching and not finding any results.",
	},
	{

		key = StringsLocale.Keys.SEE_MORE_FRIENDS,
		values = {
			[StringsLocale.Languages.EN_US] = "See More ({NUMBER_OF_FRIENDS})",
		},
		comment = "Labels a button that expands a list of friends. NUMBER_OF_FRIENDS"
			.." is the number of additional friends that will be shown.",
	},
	{

		key = StringsLocale.Keys.SEE_LESS_FRIENDS,
		values = {
			[StringsLocale.Languages.EN_US] = "See Less",
		},
		comment = "Labels a button that expands a list of friends. "
			.."NUMBER_OF_FRIENDS is the number of additional friends that will be shown.",
	},
	{

		key = StringsLocale.Keys.NO_NETWORK_CONNECTION,
		values = {
			[StringsLocale.Languages.EN_US] = "Connecting...",
		},
		comment = "Informs the user that there is no network connection and"
			.." data (conversations, etc.) can not be sent or received.",
	},
	{

		key = StringsLocale.Keys.SHARE_GAME_TO_CHAT,
		values = {
			[StringsLocale.Languages.EN_US] = "Share game to chat",
		},
		comment = "Title for share game to chat feature.",
	},
	{

		key = StringsLocale.Keys.MAKE_FRIENDS_TO_CHAT,
		values = {
			[StringsLocale.Languages.EN_US] = "Make friends in games to start chatting and playing together.",
		},
		comment = "Unless a user has friends, they won't be able to chat with anyone. This message informs players"
			.." they need friends to chat and suggests playing games as a way to find friends.",
	},
	{

		key = StringsLocale.Keys.THIS_MESSAGE_WAS_MODERATED,
		values = {
			[StringsLocale.Languages.EN_US] = "This message was moderated and not sent.",
		},
		comment = "Shown to the user if a message is fully moderated"
			.." and not sent to the other users in a conversation.",
	},
	{

		key = StringsLocale.Keys.FILTERED_FOR_RECEIVERS,
		values = {
			[StringsLocale.Languages.EN_US] = "Not everyone in this chat can see your message.",
		},
		comment = "Shown to the user if a message is not shown to the minor people in a group chat.",
	},
	{

		key = StringsLocale.Keys.CHAT_GROUP_NAME,
		values = {
			[StringsLocale.Languages.EN_US] = "Chat Group Name",
		},
		comment = "Label for the name of a conversation",
	},
	{

		key = StringsLocale.Keys.NOTIFICATIONS,
		values = {
			[StringsLocale.Languages.EN_US] = "Notifications",
		},
		comment = "Label for button that allows you to change settings for which notifications you get.",
	},
	{

		key = StringsLocale.Keys.ADD_FRIENDS,
		values = {
			[StringsLocale.Languages.EN_US] = "Add Friends",
		},
		comment = "Labels a button that allows you to add friends to a conversation.",
	},
	{

		key = StringsLocale.Keys.LEAVE_GROUP,
		values = {
			[StringsLocale.Languages.EN_US] = "Leave Group",
		},
		comment = "Labels action that allows a user to remove themself from a conversation.",
	},
	{

		key = StringsLocale.Keys.REMOVE_USER,
		values = {
			[StringsLocale.Languages.EN_US] = "Remove User",
		},
		comment = "Labels an action which removes another user (not the local user) from a conversation.",
	},
	{

		key = StringsLocale.Keys.REMOVE,
		values = {
			[StringsLocale.Languages.EN_US] = "Remove",
		},
		comment = "Labels the confirmation button for removing a user from a conversation."
	},
	{

		key = StringsLocale.Keys.LEAVE_GROUP_MESSAGE,
		values = {
			[StringsLocale.Languages.EN_US] = "You won't be able to keep chatting with this group.",
		},
		comment = "Message explaining that if they leave a chat group they"
			.." will no longer be able to participate in chat.",
	},
	{

		key = StringsLocale.Keys.STAY,
		values = {
			[StringsLocale.Languages.EN_US] = "Stay",
		},
		comment = "Cancels the leave group action.",
	},
	{

		key = StringsLocale.Keys.LEAVE,
		values = {
			[StringsLocale.Languages.EN_US] = "Leave",
		},
		comment = "Confirms the leave group action.",
	},
	{

		key = StringsLocale.Keys.NOT_SET,
		values = {
			[StringsLocale.Languages.EN_US] = "Not Set",
		},
		comment = "Informs the user the title of a group conversation has not been set.",
	},
	{

		key = StringsLocale.Keys.CHAT,
		values = {
			[StringsLocale.Languages.EN_US] = "Chat",
		},
		comment = "Title of screen that shows list of conversations, which"
			.." is the first screen that appears when chat is open.",
	},
	{

		key = StringsLocale.Keys.CHAT_DETAILS,
		values = {
			[StringsLocale.Languages.EN_US] = "Chat Details",
		},
		comment = "Title of screen that informs the user of a conversation's"
			.." participants and title and allows them to edit these."
	},
	{

		key = StringsLocale.Keys.NEW_CHAT_GROUP,
		values = {
			[StringsLocale.Languages.EN_US] = "New Chat Group",
		},
		comment = "Title of screen where user can create a new chat group.",
	},
	{

		key = StringsLocale.Keys.CHAT_INPUT_PLACEHOLDER,
		values = {
			[StringsLocale.Languages.EN_US] = "Say something",
		},
		comment = "Text shown in chat input bar before user types anything.",
	},
	{

		key = StringsLocale.Keys.OPTION,
		values = {
			[StringsLocale.Languages.EN_US] = "Option",
		},
		comment = "Title of pop-up that shows list of user actions.",
	},
	{

		key = StringsLocale.Keys.VIEW_PROFILE,
		values = {
			[StringsLocale.Languages.EN_US] = "View Profile",
		},
		comment = "Label for button that allows user to view another user's profile.",
	},
	{

		key = StringsLocale.Keys.REPORT_USER,
		values = {
			[StringsLocale.Languages.EN_US] = "Report User",
		},
		comment = "Label for button that allows user to report another user for inappropriate behavior.",
	},
	{

		key = StringsLocale.Keys.REMOVE_FROM_GROUP,
		values = {
			[StringsLocale.Languages.EN_US] = "Remove from Group",
		},
		comment = "Label for button that allows a user to remove another user from a group conversation.",
	},
	{

		key = StringsLocale.Keys.GENERAL,
		values = {
			[StringsLocale.Languages.EN_US] = "General",
		},
		comment = "Labels section of group details screen with general information like group name.",
	},
	{

		key = StringsLocale.Keys.MEMBERS,
		values = {
			[StringsLocale.Languages.EN_US] = "Members",
		},
		comment = "Labels section of group details screen that lists participants.",
	},
	{

		key = StringsLocale.Keys.FAILED_TO_RENAME_TITLE,
		values = {
			[StringsLocale.Languages.EN_US] = "Failed to Rename Conversation",
		},
		comment = "Informs the user that a conversation could not be renamed.",
	},
	{

		key = StringsLocale.Keys.FAILED_TO_RENAME_MESSAGE,
		values = {
			[StringsLocale.Languages.EN_US] = "The conversation {EXISTING_NAME} could not be renamed to {NEW_NAME}.",
		},
		comment = "Informs the user that a conversation could not be renamed.",
	},
	{

		key = StringsLocale.Keys.GROUP_NAME_MODERATED,
		values = {
			[StringsLocale.Languages.EN_US] = "The chat group name you entered was moderated",
		},
		comment = "Informs the user that the name they tried to give a group was deemed inappropriate and moderated.",
	},
	{

		key = StringsLocale.Keys.FAILED_TO_LEAVE_GROUP,
		values = {
			[StringsLocale.Languages.EN_US] = "Failed to Leave Group",
		},
		comment = "Title of message when a user tries to leave a group and the http request fails.",
	},
	{

		key = StringsLocale.Keys.FAILED_TO_LEAVE_GROUP_MESSAGE,
		values = {
			[StringsLocale.Languages.EN_US] = "You could not be removed from the conversation {CONVERSATION_TITLE}.",
		},
		comment = "Message when a user tries to leave a group and the http request fails.",
	},
	{

		key = StringsLocale.Keys.FAILED_TO_REMOVE_USER,
		values = {
			[StringsLocale.Languages.EN_US] = "Failed to Remove User",
		},
		comment = "Title of message when a user tries to remove another user from a group and the http request fails.",
	},
	{

		key = StringsLocale.Keys.FAILED_TO_REMOVE_USER_MESSAGE,
		values = {
			[StringsLocale.Languages.EN_US] =
				"The user {USERNAME} could not be removed from the conversation {CONVERSATION_TITLE}.",
		},
		comment = "Title of message when a user tries to remove another user from a group and the http request fails.",
	},
	{

		key = StringsLocale.Keys.TOO_MANY_PEOPLE,
		values = {
			[StringsLocale.Languages.EN_US] = "You can only have up to {MAX_GROUP_SIZE} players in a chat group.",
		},
		comment = "Informs the user that they can't add any more friends to a conversation.",
	},
	{

		key = StringsLocale.Keys.REMOVED_FROM_CONVERSATION,
		values = {
			[StringsLocale.Languages.EN_US] = "You have been removed from the group.",
		},
		comment = "Informs the user that they have been removed from a conversation.",
	},
	{

		key = StringsLocale.Keys.NAME_THIS_CHAT_GROUP,
		values = {
			[StringsLocale.Languages.EN_US] = "Name this chat group",
		},
		comment = "Placeholder text for input field that allows user to name a new chat group",
	},
	{

		key = StringsLocale.Keys.SAVE_NEW_GROUP,
		values = {
			[StringsLocale.Languages.EN_US] = "Create",
		},
		comment = "Labels button that saves a new chat group.",
	},
	{

		key = StringsLocale.Keys.SAVE_ADDED_FRIENDS,
		values = {
			[StringsLocale.Languages.EN_US] = "Add",
		},
		comment = "Labels button that saves changes to chat group when adding new friends.",
	},
	{

		key = StringsLocale.Keys.SEND,
		values = {
			[StringsLocale.Languages.EN_US] = "Send",
		},
		comment = "A Send label that is used to send messages",
	},
	{

		key = StringsLocale.Keys.SENT,
		values = {
			[StringsLocale.Languages.EN_US] = "Sent",
		},
		comment = "A Sent label that is used after a message is sent.",
	},
	{

		key = StringsLocale.Keys.SAVE,
		values = {
			[StringsLocale.Languages.EN_US] = "Save",
		},
		comment = "Labels button that confirms and saves a change",
	},
	{

		key = StringsLocale.Keys.REMOVE_USER_CONFIRMATION_MESSAGE,
		values = {
			[StringsLocale.Languages.EN_US] = "Are you sure you want to remove {USERNAME} from this chat group?",
		},
		comment = "Message asking user for confirmation before removing another user from a group conversation",
	},
	{

		key = StringsLocale.Keys.OFFLINE,
		values = {
			[StringsLocale.Languages.EN_US] = "Offline",
		},
		comment = "Informs the local user that another user is not signed onto the platform",
	},
	{

		key = StringsLocale.Keys.ONLINE,
		values = {
			[StringsLocale.Languages.EN_US] = "Online",
		},
		comment = "Informs the local user that another user is signed onto the platform",
	},
	{

		key = StringsLocale.Keys.BY_BUILDER,
		values = {
			[StringsLocale.Languages.EN_US] = "By {USERNAME}",
		},
		comment = "Informs that a game is made by a certain builder.",
	},

	{

		key = StringsLocale.Keys.VIEW_ASSET_DETAILS,
		values = {
			[StringsLocale.Languages.EN_US] = "View Details",
		},
		comment = "Labels a button that will show the user more information on an asset.",
	},

	{

		key = StringsLocale.Keys.PLAY_GAME,
		values = {
			[StringsLocale.Languages.EN_US] = "Play",
		},
		comment = "Labels a button that will send the player into a game.",
	},
	{
		key = StringsLocale.Keys.MY_FEED,
		values = {
			[StringsLocale.Languages.EN_US] = "View My Feed",
		},
		comment = "Header on the section of the home page that shows the user's feed",
	},
	{
		key = StringsLocale.Keys.FRIENDS_COUNT,
		values = {
			[StringsLocale.Languages.EN_US] = "Friends ({COUNT})",
		},
		comment = "Header on the section of the home page that shows the user's friends",
	},
	{
		key = StringsLocale.Keys.SEE_ALL,
		values = {
			[StringsLocale.Languages.EN_US] = "See All",
		},
		comment = "Button that goes on carousels of throughout the UI, which allows the user to go to a separate"
			.." page which displays the entire list of things that would go in the carousel",
	},
	{
		key = StringsLocale.Keys.HOME,
		values = {
			[StringsLocale.Languages.EN_US] = "Home",
		},
		comment = "Title text for application's home page",
	},
	{
		key = StringsLocale.Keys.GAMES,
		values = {
			[StringsLocale.Languages.EN_US] = "Games",
		},
		comment = "Title text for page that contains a list of games",
	},
	{
		key = StringsLocale.Keys.CATALOG,
		values = {
			[StringsLocale.Languages.EN_US] = "Catalog",
		},
		comment = "Title text for page that contains catalog",
	},
	{
		key = StringsLocale.Keys.AVATAR,
		values = {
			[StringsLocale.Languages.EN_US] = "Avatar",
		},
		comment = "Title text for page that contains avatar editor",
	},
	{
		key = StringsLocale.Keys.FRIENDS,
		values = {
			[StringsLocale.Languages.EN_US] = "Friends",
		},
		comment = "Title text for page that contains friends info",
	},
	{
		key = StringsLocale.Keys.MORE,
		values = {
			[StringsLocale.Languages.EN_US] = "More",
		},
		comment = "Title text for page that contains a list of other pages",
	},
}

-- We need to place the generated strings into our key string files
for _, stringData in pairs(StringsLocale.Content) do
	local generatedStringData = GeneratedStrings[stringData.key]
	if generatedStringData then
		for language, translation in pairs(generatedStringData) do
			stringData.values[language] = translation
		end
	end
end

return StringsLocale