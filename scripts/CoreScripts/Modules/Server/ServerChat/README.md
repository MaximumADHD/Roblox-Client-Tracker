## Documentation
### ChatService
This is the main singleton object that runs the server sided chat service. It manages both ChatChannels and Speakers.

#### Methods
	ChatChannel AddChannel(string channelName, bool autoJoin)
	void RemoveChannel(string channelName)
	ChatChannel GetChannel(string channelName)

	Speaker AddSpeaker(string speakerName)
	void RemoveSpeaker(string speakerName)
	Speaker GetSpeaker(string speakerName)

	string[] GetChannelList()
	string[] GetAutoJoinChannelList()

	void RegisterFilterMessageFunction(string functionId, function func, int priority)
	bool FilterMessageFunctionExists(string functionId)
	void UnregisterFilterMessageFunction(string functionId)

	void RegisterProcessCommandsFunction(string functionId, function func, int priority)
	bool ProcessCommandsFunctionExists(string functionId)
	void UnregisterProcessCommandsFunction(string functionId)


#### Events
	ChannelAdded(string channelName)
	ChannelRemoved(string channelName)
	SpeakerAdded(string speakerName)
	SpeakerRemoved(string speakerName)


### ChatChannel
A ChatChannel is an object that stores data about a single channel that Speakers can chat in. The ChatChannel manages a list of Speakers currently in the channel for relaying messages between them, and also comes with some access permission properties.

#### Properties
	string Name (read-only)
	string WelcomeMessage

	bool Joinable
	bool Leavable
	bool AutoJoin
	bool Private

#### Methods
	void RegisterFilterMessageFunction(string functionId, function func, int priority)
	bool FilterMessageFunctionExists(string functionId)
	void UnregisterFilterMessageFunction(string functionId)

	void RegisterProcessCommandsFunction(string functionId, function func, int priority)
	bool ProcessCommandsFunctionExists(string functionId)
	void UnregisterProcessCommandsFunction(string functionId)

	void KickSpeaker(string speakerName, string reason)
	void MuteSpeaker(string speakerName, string reason, int length)
	void UnmuteSpeaker(string speakerName)
	bool IsSpeakerMuted(string speakerName)

	string[] GetSpeakerList()

	void SendSystemMessage(string message)

	MessageObject[] GetHistoryLogForSpeaker(Speaker speaker)

	void RegisterGetWelcomeMessageFunction(function func)
	void UnRegisterGetWelcomeMessageFunction()
	string GetWelcomeMessageForSpeaker(Speaker speaker)

#### Events
	MessagePosted(table messageObj)
	SpeakerJoined(string speakerName)
	SpeakerLeft(string speakerName)
	SpeakerMuted(string speakerName, string reason, int length)
	SpeakerUnmuted(string speakerName)

### Speaker
A Speaker object is a representation of one entity that can speak in a ChatChannel. A Speaker can be a Player, or it can be a chat bot that is run and managed by code.

#### Properties
	string Name (read-only)

#### Methods
	void SayMessage(string message, string channelName)

	void JoinChannel(string channelName)
	void LeaveChannel(string channelName)

	string[] GetChannelList()
	bool IsInChannel(string channelName)

	void SendMessage(string fromSpeaker, string channel, string message)
	void SendSystemMessage(string message, string channel)

	Player GetPlayer() (returns nil for non-player speakers)

	void SetExtraData(string key, Variant data)
	Variant GetExtraData(string key)

#### Events
	SaidMessage(table messageObject, string channelName)
	ReceivedMessage(table messageObject, string channelName)
	ReceivedSystemMessage(table messageObject, string channelName)
	ChannelJoined(string channelName, string channelWelcomeMessage)
	ChannelLeft(string channelName)
	Muted(string channelName, string reason, int length)
	Unmuted(string channelName)
	ExtraDataUpdated(string key, Variant value)
	MainChannelSet(string channelName)

___

#### Message Object format
```
{
    int ID
    string FromSpeaker
		int SpeakerUserId
    string OriginalChannel
    bool IsFiltered
		int MessageLength
    string Message
		string MessageType
    int Time
    table ExtraData {
        Color3 ChatColor
        Color3 NameColor
        Enum.Font Font
        int TextSize
        table Tags
    }
}
```
	Note: Message will not exist on the client if IsFiltered is False
	SpeakerUserId will be 0 if the speaker is not a player.
