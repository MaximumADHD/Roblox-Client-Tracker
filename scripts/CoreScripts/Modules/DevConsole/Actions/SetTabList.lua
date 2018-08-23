local Action = require(script.Parent.Parent.Action)

return Action("SetTabList", function(tabList, initIndex)
	return {
		tabList = tabList,
		initIndex = initIndex,
	}
end)