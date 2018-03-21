-- Written by Kyler Mulherin, Copyright Roblox 2015

local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))

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


return EventHub;


-- [[ TESTING STUFF - include somewhere the EventHub has been initialized ]]--
--[[
	-- TEST #1 -- removing entire listeners from events
	Utility.DebugLog('\nAdding Event Listeners...');
	EventHub:addEventListener( "test0", "testID1", function (data) Utility.DebugLog('Test 1 Received test0 : ' .. data) end);
	EventHub:addEventListener( "test0", "testID2", function (data) Utility.DebugLog('Test 2 Received test0 : ' .. data) end);
	EventHub:addEventListener( "test0", "testID3", function (data) Utility.DebugLog('Test 3 Received test0 : ' .. data) end);
	EventHub:addEventListener( "test0", "testID4", function (data) Utility.DebugLog('Test 4 Received test0 : ' .. data) end);

	Utility.DebugLog('\nDispatching Events...');
	EventHub:dispatchEvent("test0", "var");
	--SHOULD SEE ALL 4 LISTENERS REPORT

	Utility.DebugLog('\nDispatching Events...');
	EventHub:dispatchEvent("test0", "var2");

	Utility.DebugLog('\nRemoving TestID2 and 3s Listeners...');
	EventHub:removeEventListener("test0", "testID2");
	EventHub:removeEventListener("test0", "testID3");

	Utility.DebugLog('\nDispatching Events...');
	EventHub:dispatchEvent("test0", "var3");
	--SHOULD ONLY SEE testID1 AND testID4 REPORT






	-- TEST #2  -- selective removal of listeners
	Utility.DebugLog('\nAdding Generic Function Event Listeners...');
	local function test1(data) Utility.DebugLog('Generic function 1. Received test1 : ' .. data) end;
	local function test2(data) Utility.DebugLog('Generic function 2. Received test1 : ' .. data) end;
	local testFunc1 = test1;
	local testFunc2 = test2;

	EventHub:addEventListener( "test1", "testID1", testFunc1);
	EventHub:addEventListener( "test1", "testID1", testFunc2);
	EventHub:addEventListener( "test1", "testID2", testFunc1);

	Utility.DebugLog('\nDispatching Events...');
	EventHub:dispatchEvent("test1", "foo");
	--SHOULD SEE 3 REPORTS

	Utility.DebugLog('\nRemoving Generic Function 1 Callback of testID1');
	EventHub:removeCallbackFromEvent("test1", "testID1", testFunc1);

	Utility.DebugLog('\nDispatching Events...');
	EventHub:dispatchEvent("test1", "foo3");
	--SHOULD SEE THAT testID1 NO LONGER REPORTS FROM GENERIC FUNCTION 1


]]--
