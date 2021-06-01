return {
	DEPRECATED = {
		CallbackInputBoxWithIcon = require(script.CallbackInputBoxWithIcon),
	},
	CallbackInputBox = require(script.CallbackInputBox),
	AvatarCircle = require(script.AvatarCircle),
	PlainText = require(script.PlainText),
	ChatBubbleContainer = require(script.ChatBubbleContainer),
	Cells = require(script.Cells),
	Masks = require(script.Masks),
	FilteredScrollingList = require(script.FilteredScrollingList),
	SortedList = require(script.SortedList),
	ResponseIndicator = require(script.ResponseIndicator),
	InputBoxWithCharacterCounter = require(script.InputBoxWithCharacterCounter),
	AlertViewBuilder = require(script.AlertViewBuilder.AlertViewBuilder),

	AlertViews = {
		Warning = require(script.AlertViews.WarningAlertView),
		TextInput = require(script.AlertViews.InputAlertView),
		Info = require(script.AlertViews.InfoAlertView),
	},

	TestStyle = require(script.Style.TestStyle),
}
