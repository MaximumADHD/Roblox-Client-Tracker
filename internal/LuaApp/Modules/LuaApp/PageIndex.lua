local Modules = game:GetService("CoreGui").RobloxGui.Modules
local AppPage = require(Modules.LuaApp.AppPage)
local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)

local PageIndexPortrait = {
	[AppPage.Home] = 1,
	[AppPage.Games] = 2,
	[AppPage.AvatarEditor] = 3,
	[AppPage.Chat] = 4,
	[AppPage.More] = 5,
}

local PageIndexLandscape = {
	[AppPage.Home] = 1,
	[AppPage.Games] = 2,
	[AppPage.Catalog] = 3,
	[AppPage.AvatarEditor] = 4,
	[AppPage.Friends] = 5,
	[AppPage.Chat] = 6,
	[AppPage.More] = 7,
}

local GetPageTypeByIndexPortrait = {}
for pageType, pageTypeIndex in pairs(PageIndexPortrait) do
	GetPageTypeByIndexPortrait[pageTypeIndex] = pageType
end

local GetPageTypeByIndexLandscape = {}
for pageType, pageTypeIndex in pairs(PageIndexLandscape) do
	GetPageTypeByIndexLandscape[pageTypeIndex] = pageType
end

local function GetIndexByPageType(pageType, deviceOrientation)
	if deviceOrientation == DeviceOrientationMode.Portrait then
		return PageIndexPortrait[pageType]
	elseif deviceOrientation == DeviceOrientationMode.Landscape then
		return PageIndexLandscape[pageType]
	end
	return nil
end

local function GetPageTypeByIndex(pageIndex, deviceOrientation)
	if deviceOrientation == DeviceOrientationMode.Portrait then
		return GetPageTypeByIndexPortrait[pageIndex]
	elseif deviceOrientation == DeviceOrientationMode.Landscape then
		return GetPageTypeByIndexLandscape[pageIndex]
	end
	return nil
end

local function GetTotalPages(deviceOrientation)
	if deviceOrientation == DeviceOrientationMode.Portrait then
		return #GetPageTypeByIndexPortrait
	elseif deviceOrientation == DeviceOrientationMode.Landscape then
		return #GetPageTypeByIndexLandscape
	end
	return 0
end

return {
	GetIndexByPageType = GetIndexByPageType,
	GetPageTypeByIndex = GetPageTypeByIndex,
	GetTotalPages = GetTotalPages,
}