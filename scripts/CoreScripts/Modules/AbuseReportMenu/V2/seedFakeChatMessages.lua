local CorePackages = game:GetService("CorePackages")

local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)

-- Include to seed some sample chat messages. NOTE since these are fake, they
-- might differ from real world data.
-- Include via:

-- if game:DefineFastFlag("DebugAbuseReportSeedFakeMessages", false) then
-- 	require(script.Parent.seedFakeChatMessages)()
-- end

-- and enable the flag.

-- Toggle to switch between single-channel (flat) and multi-channel (tabbed) chat seeding.
-- When true, enables the channel tab bar and spreads messages across team channels.
-- Requires FFlagExpChatEnableChannelTabsUI to be on for tabs to render.
local USE_MULTI_CHANNEL = false

-- TODO: [future] delete this file once we're mostly ready to ship? (abech)

local FAKE_MESSAGES = {
	{
		PrefixText = '<font color="#b38bf5">test_user_ax7:</font>',
		Text = "lol you fell off the bridge again",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1001 },
	},
	{
		PrefixText = '<font color="#55ffab">test_user_brimstone42:</font>',
		Text = "stop following me around the map",
		TextChannel = { Name = "RBXWhisper:1001_1002" },
		TextSource = { UserId = 1002 },
	},
	{
		PrefixText = '<font color="#55ffab">test_user_brimstone42:</font>',
		Text = "you are the worst player on the server",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1002 },
	},
	{
		PrefixText = '<font color="#b38bf5">test_user_ax7:</font>',
		Text = "haha you cant even beat level one",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1001 },
	},
	{
		PrefixText = '<font color="#55ffab">test_user_brimstone42:</font>',
		Text = "nobody wants to play with you just leave",
		TextChannel = { Name = "RBXWhisper:1001_1002" },
		TextSource = { UserId = 1002 },
	},
	{
		PrefixText = '<font color="#619bff">test_user_c9:</font>',
		Text = "anyone want to trade gems?",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1003 },
	},
	{
		PrefixText = '<font color="#b38bf5">test_user_ax7:</font>',
		Text = "your outfit looks so silly",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1001 },
	},
	{
		PrefixText = '<font color="#619bff">test_user_c9:</font>',
		Text = "hey can you stop being mean to everyone",
		TextChannel = { Name = "RBXWhisper:1003_1001" },
		TextSource = { UserId = 1003 },
	},
	{
		PrefixText = '<font color="#55ffab">test_user_brimstone42:</font>',
		Text = "everyone ignore test_user_ax7 they keep being rude",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1002 },
	},
	{
		PrefixText = '<font color="#b38bf5">test_user_ax7:</font>',
		Text = "you are so slow at this game just give up",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1001 },
	},
	{
		PrefixText = '<font color="#b38bf5">test_user_ax7:</font>',
		Text = "why are you even playing this",
		TextChannel = { Name = "RBXWhisper:1001_1002" },
		TextSource = { UserId = 1001 },
	},
	{
		PrefixText = '<font color="#619bff">test_user_c9:</font>',
		Text = "this map is really fun though",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1003 },
	},
	{
		PrefixText = '<font color="#55ffab">test_user_brimstone42:</font>',
		Text = "good game everyone except the mean ones",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1002 },
	},
	{
		PrefixText = '<font color="#b38bf5">test_user_ax7:</font>',
		Text = "i'm reporting you for harassment",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1001 },
	},
	{
		PrefixText = '<font color="#55ffab">test_user_brimstone42:</font>',
		Text = "go ahead nobody cares",
		TextChannel = { Name = "RBXWhisper:1001_1002" },
		TextSource = { UserId = 1002 },
	},
	{
		PrefixText = '<font color="#619bff">test_user_c9:</font>',
		Text = "can we all just play nice please",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1003 },
	},
	{
		PrefixText = '<font color="#b38bf5">test_user_ax7:</font>',
		Text = "you're terrible at building",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1001 },
	},
	{
		PrefixText = '<font color="#55ffab">test_user_brimstone42:</font>',
		Text = "at least i don't spam chat",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1002 },
	},
	{
		PrefixText = '<font color="#619bff">test_user_c9:</font>',
		Text = "let's focus on the objective",
		TextChannel = { Name = "RBXGeneral" },
		TextSource = { UserId = 1003 },
	},
	{
		PrefixText = '<font color="#b38bf5">test_user_ax7:</font>',
		Text = "you're just jealous of my skills",
		TextChannel = { Name = "RBXWhisper:1001_1003" },
		TextSource = { UserId = 1001 },
	},
	{
		PrefixText = '<font color="#55ffab">test_user_brimstone42:</font>',
		Text = "thanks for the help earlier c9",
		TextChannel = { Name = "RBXWhisper:1002_1003" },
		TextSource = { UserId = 1002 },
	},
	{
		PrefixText = '<font color="#619bff">test_user_c9:</font>',
		Text = "no problem, happy to help",
		TextChannel = { Name = "RBXWhisper:1002_1003" },
		TextSource = { UserId = 1003 },
	},
}

local MULTI_CHANNEL_MESSAGES = {
	{
		PrefixText = '<font color="#b38bf5">test_user_ax7:</font>',
		Text = "red team is way better than yours",
		TextChannel = { Name = "RBXTeamBright red" },
		TextSource = { UserId = 1001 },
	},
	{
		PrefixText = '<font color="#55ffab">test_user_brimstone42:</font>',
		Text = "blue team lets stick together",
		TextChannel = { Name = "RBXTeamBright blue" },
		TextSource = { UserId = 1002 },
	},
	{
		PrefixText = '<font color="#619bff">test_user_c9:</font>',
		Text = "heading to the east tower now",
		TextChannel = { Name = "RBXTeamBright red" },
		TextSource = { UserId = 1003 },
	},
	{
		PrefixText = '<font color="#b38bf5">test_user_ax7:</font>',
		Text = "the other team is so bad at this",
		TextChannel = { Name = "RBXTeamBright red" },
		TextSource = { UserId = 1001 },
	},
	{
		PrefixText = '<font color="#55ffab">test_user_brimstone42:</font>',
		Text = "we need help at the bridge",
		TextChannel = { Name = "RBXTeamBright blue" },
		TextSource = { UserId = 1002 },
	},
}

local MAX_RETRIES = 10
local RETRY_INTERVAL = 1

local function dispatchFakeMessages(store)
	store:dispatch({
		type = "ChatPrivacySettingsReceived",
		canUserChat = true,
	})

	local messages = FAKE_MESSAGES
	if USE_MULTI_CHANNEL then
		messages = table.clone(FAKE_MESSAGES)
		for _, msg in ipairs(MULTI_CHANNEL_MESSAGES) do
			table.insert(messages, msg)
		end
	end

	if USE_MULTI_CHANNEL then
		store:dispatch({ type = "ChannelTabsConfigurationEnabled", enabled = true, canUserChat = true })

		local registeredChannels = {}
		for _, template in ipairs(messages) do
			local name = template.TextChannel.Name
			if not registeredChannels[name] then
				registeredChannels[name] = true
				local channel = Instance.new("TextChannel")
				channel.Name = name
				store:dispatch({ type = "TextChannelCreated", textChannel = channel, canUserChat = true })
				store:dispatch({ type = "LocalTextChannelParticipantAdded", textChannel = channel, canUserChat = true })
			end
		end
	end

	for i, template in ipairs(messages) do
		store:dispatch({
			type = "IncomingMessageReceived",
			textChatMessage = {
				PrefixText = template.PrefixText,
				Text = template.Text,
				TextChannel = template.TextChannel,
				TextSource = template.TextSource,
				MessageId = "fake-seed-" .. tostring(i),
				Status = Enum.TextChatMessageStatus.Success,
				Timestamp = DateTime.now(),
			},
			isSenderLocalPlayer = false,
			canUserChat = true,
		})
	end
end

local function seedFakeChatMessages()
	task.spawn(function()
		for _ = 1, MAX_RETRIES do
			local store = ExpChatShared.context.store
			if store then
				dispatchFakeMessages(store)
				return
			end
			task.wait(RETRY_INTERVAL)
		end
		warn("[seedFakeChatMessages] ExpChatShared.context.store never became available after " .. MAX_RETRIES .. "s")
	end)
end

return seedFakeChatMessages
