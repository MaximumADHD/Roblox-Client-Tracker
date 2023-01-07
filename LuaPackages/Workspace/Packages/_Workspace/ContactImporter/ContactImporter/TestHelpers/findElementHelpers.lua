local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local jestExpect = devDependencies.jestExpect
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local TextKeys = require(ContactImporter.Common.TextKeys)

local findElement = function(toCheck: { [string]: any })
	return function(parent, config: { assertElementExists: boolean })
		local element = RhodiumHelpers.findFirstElement(parent, toCheck)
		if config.assertElementExists then
			jestExpect(element).never.toBeNil()
			return element
		else
			jestExpect(element).toBeNil()
			return nil
		end
	end
end

local checkEmptyList = findElement({ Name = "emptyList" })
local checkLoadingList = findElement({ Name = "glimmer1" })
local checkFailedList = findElement({ Name = "errorModal" })
local checkInviteButton = findElement({ Text = TextKeys.INVITE_BUTTON_TEXT })
local checkCloseButton = findElement({ Text = TextKeys.CLOSE_MODAL })
local checkGoToAddFriends = findElement({ Text = TextKeys.GO_TO_ADD_FRIENDS })

return {
	findElement = findElement,
	checkEmptyList = checkEmptyList,
	checkLoadingList = checkLoadingList,
	checkFailedList = checkFailedList,
	checkCloseButton = checkCloseButton,
	checkGoToAddFriends = checkGoToAddFriends,
	checkInviteButton = checkInviteButton,
}
