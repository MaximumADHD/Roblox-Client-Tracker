--[[
			// Alerts.lua

			// Global alert codes, each alert has an unique Id
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))

local Alerts =
{
	Default = { Title = Strings:LocalizedString("AlertOccurredTitle"), Msg = Strings:LocalizedString("DefaultAlertPhrase"), Id = 0 };

	UnlockedUGC = { Title = Strings:LocalizedString("UnlockedUGCTitle"), Msg = Strings:LocalizedString("UnlockedUGCPhrase"), Id = 101};

	LostConnection =
	{
		Controller = { Title = Strings:LocalizedString("ControllerLostConnectionTitle"), Msg = Strings:LocalizedString("ControllerLostConnectionPhrase"), Id = 201 };
		ActiveUser = { Title = Strings:LocalizedString("ActiveUserLostConnectionTitle"), Msg = Strings:LocalizedString("ActiveUserLostConnectionPhrase"), Id = 202 };
	};

	PlayMyPlaceMoreGames = { Title = Strings:LocalizedString('PlayMyPlaceMoreGamesTitle'), Msg = Strings:LocalizedString('PlayMyPlaceMoreGamesPhrase'), Id = 301 };

	CrossPlatformPlayWelcome = { Title = Strings:LocalizedString("CPPWelcomeTitle"), Msg = Strings:LocalizedString("CPPWelcomePhrase"), Id = 401};

	Reauthentication =
	{
		-- index mapped to int error code from c++, you must index into this with a string
		[0] = { Title = Strings:LocalizedString("AlertOccurredTitle"), Msg = Strings:LocalizedString("ReauthUnknownPhrase"), Id = 1001 };
		[1] = { Title = Strings:LocalizedString("ReauthSignedOutTitle"), Msg = Strings:LocalizedString("ReauthSignedOutPhrase"), Id = 1002 };
		[2] = { Title = Strings:LocalizedString("ReauthRemovedTitle"), Msg = Strings:LocalizedString("ReauthRemovedPhrase"), Id = 1003 };
		[3] = { Title = Strings:LocalizedString("ReauthSignedOutTitle"), Msg = Strings:LocalizedString("ReauthInvalidSessionPhrase"), Id = 1004 };
		[4] = { Title = Strings:LocalizedString("ReauthUnlinkTitle"), Msg = Strings:LocalizedString("ReauthUnlinkPhrase"), Id = 1005 };
		[5] = { Title = Strings:LocalizedString("ReauthRemovedTitle"), Msg = Strings:LocalizedString("ReauthRemovedPhrase"), Id = 1006 };
		[6] = { Title = Strings:LocalizedString("ReauthRemovedTitle"), Msg = Strings:LocalizedString("ReauthRemovedPhrase"), Id = 1007 };
		[7] = { Title = Strings:LocalizedString("ReauthRemovedTitle"), Msg = Strings:LocalizedString("ReauthRemovedPhrase"), Id = 1008 };
	};

	SignOut =
	{
		-- index mapped to int error code from c++, you must index into this with a string
		[0] = { Title = Strings:LocalizedString("AlertOccurredTitle"), Msg = Strings:LocalizedString("ReauthUnknownPhrase"), Id = 1001 };
		[1] = { Title = Strings:LocalizedString("ReauthSignedOutTitle"), Msg = Strings:LocalizedString("ReauthSignedOutPhrase"), Id = 1002 };
		[2] = { Title = Strings:LocalizedString("ReauthSignedOutTitle"), Msg = Strings:LocalizedString("ReauthInvalidSessionPhrase"), Id = 1003 };
		[3] = { Title = Strings:LocalizedString("ReauthUnlinkTitle"), Msg = Strings:LocalizedString("ReauthUnlinkPhrase"), Id = 1004 };
		[4] = { Title = Strings:LocalizedString("ReauthRemovedTitle"), Msg = Strings:LocalizedString("ReauthRemovedPhrase"), Id = 1005 };
		[5] = { Title = Strings:LocalizedString("ReauthRemovedTitle"), Msg = Strings:LocalizedString("ReauthRemovedPhrase"), Id = 1006 };
		[6] = nil;
	};


	PlatformLink = { Title = Strings:LocalizedString('PlatformLinkInfoTitle'), Msg = Strings:LocalizedString('PlatformLinkInfoMessage'), Id = 1201};
}

return Alerts
