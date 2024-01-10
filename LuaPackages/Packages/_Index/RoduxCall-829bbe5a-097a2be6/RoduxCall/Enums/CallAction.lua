local Packages = script.Parent.Parent.Parent
local enumerate = require(Packages.enumerate) :: any

return enumerate(script.Name, {
	Accept = "Accept",
	AcceptSuccess = "AcceptSucces",
	Cancel = "Cancel",
	ConnectionConfirm = "ConnectionConfirm",
	Decline = "Decline",
	Fail = "Fail",
	Finish = "Finish",
	Init = "Init",
	InitSucess = "InitSuccess",
	Miss = "Miss",
	Receive = "Receive",
	Reject = "Reject",
	Suppress = "Suppress",
})
