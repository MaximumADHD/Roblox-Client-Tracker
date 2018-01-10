local domainUrl = game:GetService('ContentProvider').BaseUrl

local this = {}
local defaultShirtIds
local defaultPantIds

if string.find(domainUrl, "sitetest2") then
	defaultShirtIds = {92632399}
	defaultPantIds = {92650676}
else
	-- These sync up with chat username color order. The last clothing is a teal
	-- color instead of a tan color like the usernames.
	-- Username color list: "Bright red", "Bright blue", "Earth green", "Bright violet",
	-- "Bright orange", "Bright yellow", "Light reddish violet", "Brick yellow"
	defaultShirtIds = {855776103, 855760101, 855766176, 855777286, 855768342, 855779323, 855773575, 855778084}
	defaultPantIds =  {855783877, 855780360, 855781078, 855782781, 855781508, 855785499, 855782253, 855784936}
end

function this.getDefaultClothesCount( ... )
	return #defaultShirtIds
end

function this.getDefaultShirtIds()
	return defaultShirtIds
end

function this.getDefaultPantIds()
	return defaultPantIds
end

return this
