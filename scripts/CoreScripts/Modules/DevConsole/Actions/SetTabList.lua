local Action = require(script.Parent.Parent.Action)

return Action("SetTabList", function(tabList, initIndex, isDeveloperView)
	return {
		tabList = tabList,
		initIndex = initIndex,
		isDeveloperView = isDeveloperView,
	}
end)