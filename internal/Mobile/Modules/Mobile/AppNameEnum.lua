local AppNames = {
	"AvatarEditor",
	"Chat",
	"ShareGameToChat",
}

local AppNameEnum = {}
for i = 1, #AppNames do
	AppNameEnum[AppNames[i]] = AppNames[i]
end

setmetatable(AppNameEnum, {
	__index = function(self, key)
		error(("Invalid AppNameEnum %q"):format(tostring(key)))
	end
})

return AppNameEnum