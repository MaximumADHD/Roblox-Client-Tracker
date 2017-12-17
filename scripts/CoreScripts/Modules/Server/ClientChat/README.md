## Documentation
### ChatWindow
This is the main client side chat object.

### Methods
	AddChannel(string channelName)
	RemoveChannel(string channelName)
	ChatChannel GetChannel(string channelName)
 	ChatChannel GetCurrentChannel()
	SwitchCurrentChannel(string channelName)

	bool GetVisible()
	SetVisible(bool visible)

	EnableResizable()
	DisableResizable()

	FadeOutBackground(float duration)
	FadeInBackground(float duration)
	FadeOutText(float duration)
	FadeInText(float duration)

### Properties
	ChatBar ChatBar
	ChannelsBar ChannelsBar
	MessageLogDisplay MessageLogDisplay

### ChatChannel
A client side chat channel object to manage the chat.

### Methods
	AddMessageToChannel(table messageData)
	RemoveLastMessageFromChannel()
	ClearMessageLog()

### MessageLogDisplay
This object handles displaying the messages of the current channel.

### Methods
	AddMessage(table messageData)
	RemoveLastMessage()
	ReorderAllMessages()
	Clear()

	bool IsScrolledDown()

	FadeOutBackground(float duration)
	FadeInBackground(float duration)
	FadeOutText(float duration)
	FadeInText(float duration)

### ChatBar
The chat bar object handles text entry.

### Methods
	TextBox GetTextBox()
	TextButton GetMessageModeTextButton

	bool IsFocused()
	CaptureFocus()
	ReleaseFocus(bool submitted)

	ResetText()
	SetText(text)

	bool GetEnabled()
	SetEnabled(bool enabled)

	SetTextLabelText(string text)
	SetTextBoxText(string text)
	string GetTextBoxText()

	ResetSize()
	SetTextSize(int textSize)
	SetChannelTarget(string channelName)

	FadeOutBackground(float duration)
	FadeInBackground(float duration)
	FadeOutText(float duration)
	FadeInText(float duration)
