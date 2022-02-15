local requestReasons = {
	InitLoad = 1,
	ChangeTabs = 2,
	ChangeCategory = 3,
	ChangeSort = 4,
	ChangeGroup = 5,
	StartSearch = 6,
	NextPage = 7,
	UpdatePage = 8,
}

function requestReasons.IsUpdate(reason)
	return reason == requestReasons.NextPage or reason == requestReasons.UpdatePage
end

return requestReasons
