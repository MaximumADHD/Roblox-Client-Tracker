-- Written by Kyler Mulherin, Copyright Roblox 2015

local listeners = {}
--listeners is a table that holds arrays of listener objects
--Ex - listeners["login"] = { Listener , Listener, Listener }

local function createListener(idString, callbackFunction)
	local Listener = {  id = idString , callback = callbackFunction };
	return Listener;
end

--Initialize all the functions for the EventHub
local EventHub = {}
do
	function EventHub:addEventListener(eventString, objectIDString, callbackFunction)
		if (listeners[eventString] == nil) then
			listeners[eventString] = {}
		end

		table.insert(listeners[eventString], createListener(objectIDString, callbackFunction))
	end
	function EventHub:removeEventListener(eventString, objectIDString)
		if (listeners[eventString] == nil) then return end

		--iterate through the listeners for an event string, remove all of the listeners with the provided objectIDString
		for key, value in ipairs(listeners[eventString]) do
			local listener = value
			if (listener ~= nil) then
				if (listener.id == objectIDString) then
					table.remove(listeners[eventString], key)
				end
			end
		end
	end
	function EventHub:removeCallbackFromEvent(eventString, objectIDString, callbackFunction)
		--NOTE- Will not work with anonymous functions
		if (listeners[eventString] == nil) then return end

		--iterate through the listeners for an event string, remove the one with the provided objectIDString and callback function
		for key, value in ipairs(listeners[eventString]) do
			local listener = value
			if (listener ~= nil) then
				if (listener.id == objectIDString) and (listener.callback == callbackFunction) then
					table.remove(listeners[eventString], key)
					break
				end
			end
		end
	end
	function EventHub:dispatchEvent(eventString, ...)
		if (listeners[eventString] == nil) then
			return
		end

		--loop through all the listeners and call the callback function
		for key, value in ipairs(listeners[eventString]) do
			value.callback(...)
		end
	end


	--A comprehensive list of notification strings to read from
	EventHub.Notifications = {
		AuthenticationSuccess = "rbxNotificationAuthenticationSuccess";
		GameJoin = "rbxNotificationGameJoin";
		OpenGames = "rbxNotificationOpenGames";
		OpenGameDetail = "rbxNotificationOpenGameDetail";
		OpenGameGenre = "rbxNotificationOpenGameGenre";
		OpenBadgeScreen = "rbxNotificationOpenBadgeScreen";
		UnlinkAccountConfirmation = "rbxNotificationUnlinkAccountConfirmation";
		OpenSettingsScreen = "rbxNotificationOpenSettingsScreen";
		OpenAvatarEditorScreen = "rbxNotificationOpenAvatarEditorScreen";
		OpenAccountSettingsScreen = "rbxNotificationOpenAccountSettingsScreen";
		NavigateToEquippedAvatar = "rbxNotificationNavigateToEquippedAvatar";
		NavigateToRobuxScreen = "rbxNotificationNavigateToRobuxScreen";
		RobuxCatalogPurchaseInitiated = "rbxRobuxCatalogPurchaseInitiated";
		DonnedDifferentPackage = "rbxDonnedDifferentPackage";
		VotedOnPlace = "rbxVotedOnPlace";
		AvatarEquipBegin = "rbxAvatarEquipBegin";
		DonnedDifferentOutfit = "rbxDonnedDifferentOutfit";
		AvatarEquipSuccess = "rbxAvatarEquipSuccess";
		AvatarPurchaseBegin = "rbxAvatarPurchaseBegin";
		AvatarPurchaseSuccess = "rbxAvatarPurchaseSuccess";
		FavoriteToggle = "rbxFavoriteToggle";
		PlayedGamesChanged = "rbxPlayedGamesChanged";
		UnlockedUGC = "rbxNotificationUnlockedUGC";

		--Add for avatar editor equip/update
		CharacterEquipped = "CharacterEquipped";
		CharacterUpdated = "CharacterUpdated";
	};
end


return EventHub
