--[[
			// Errors.lua

			// Global error codes, each error has an unique code
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))

local Errors =
{
	Default = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("DefaultErrorPhrase"), Code = 0 };

	GameJoin =
	{
		-- index mapped to error code returned from c++
		[-1] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("DefaultJoinFailPhrase"), Code = 112 };
		[1] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("AlreadyRunningPhrase"), Code = 101 };
		[2] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("WebServerConnectFailPhrase"), Code = 102 };
		[3] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("AccessDeniedByWeb"), Code = 103 };
		[4] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("InstanceNotFound"), Code = 104 };
		[5] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("GameFullPhrase"), Code = 105 };
		[6] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("FollowUserFailed"), Code = 106 };
		[7] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("InvalidPrivilegeMultiplayerSessionPhrase"), Code = 107 };
		[8] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("InvalidPrivilegeUGCPhrase"), Code = 108 };

		-- following are new codes that 102 has been split into. This is to help drill down what is causing the recent 102 spike
		-- 109 - out of retries
		[9] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("AccessDeniedByWeb"), Code = 109 };
		-- 110 Exception in requestPlaceInfo (http exception or json parsing error)
		[10] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("AccessDeniedByWeb"), Code = 110 };
		-- 111 http exception when calling join script
		[11] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("AccessDeniedByWeb"), Code = 111 };

		--Split 107 into 3 new error codes
		--113 User's setting blocks Multiplayer Session
		[12] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("MPSRestrictedPhrase"), Code = 113 };
		--114 Get banned from Multiplayer Session
		[13] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("MPSBannedPhrase"), Code = 114 };
		--115 Don't have Xbox Live Gold
		[14] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("MPSPurchaseRequiredPhrase"), Code = 115 };

		--Split 108 into 2 new error codes
		--116 User's setting blocks UGC
		[15] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("UGCRestrictedPhrase"), Code = 116 };
		--117 Get banned from UGC
		[16] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("UGCBannedPhrase"), Code = 117 };

		--118 If crash happens when we check privilege
		[17] = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("PrivilegeCheckFailPhrase"), Code = 118 };

		Default = { Title = Strings:LocalizedString("UnableToJoinTitle"), Msg = Strings:LocalizedString("DefaultJoinFailPhrase"), Code = 112 };
	};

	Vote =
	{
		FloodCheckThresholdMet = { Title = Strings:LocalizedString("CannotVoteTitle"), Msg = Strings:LocalizedString("VoteFloodPhrase"), Code = 201 };
		PlayGame = { Title = Strings:LocalizedString("CannotVoteTitle"), Msg = Strings:LocalizedString("VotePlayGamePhrase"), Code = 202 };
	};

	Favorite =
	{
		Failed = { Title = Strings:LocalizedString("CannotFavoriteTitle"), Msg = Strings:LocalizedString("DefaultErrorPhrase"), Code = 301 };
		FloodCheck = { Title = Strings:LocalizedString("CannotFavoriteTitle"), Msg = Strings:LocalizedString("FavoriteFloodPhrase"), Code = 302 };
	};

	Test =
	{
		CannotJoinGame = { Title = "An Error Occured", Msg = "Cannot join games from studio.", Code = 401 };
		StillInDev = { Title = "An Error Occured", Msg = "This feature is still in development.", Code = 402 };
		FeatureNotAvailableInStudio = { Title =  "An Error Occured", Msg = "This feature is not available in Roblox Studio.", Code = 403 };
	};

	PackageEquip =
	{
		Default = { Title = Strings:LocalizedString("UnableToEquipTitle"), Msg = Strings:LocalizedString("UnableToEquipPhrase"), Code = 501 };
	};

	OutfitEquip =
	{
		Default = { Title = Strings:LocalizedString("UnableToWearOufitTitle"), Msg = Strings:LocalizedString("UnableToWearOufitPhrase"), Code = 601 };
	};

	PackagePurchase =
	{
		{ Title = Strings:LocalizedString("UnableToDoPurchaseTitle"), Msg = Strings:LocalizedString("UnableToDoPurchasePhrase"), Code = 701 };
	};

	RobuxPurchase =
	{
		{ Title = Strings:LocalizedString("UnableToDoRobuxPurchaseTitle"), Msg = Strings:LocalizedString("UnableToDoRobuxPurchasePhrase"), Code = 801 };
	};

	Authentication =
	{
		-- index mapped to int error code from c++
		[-1] = { Title = Strings:LocalizedString("AuthenticationErrorTitle"), Msg = Strings:LocalizedString("AuthErrorPhrase"), Code = 901 };
		-- ["0"]; This is success
		[1] = { Title = Strings:LocalizedString("AuthenticationErrorTitle"), Msg = Strings:LocalizedString("AuthInProgressPhrase"), Code = 902 };
		[2] = { Title = Strings:LocalizedString("AuthenticationErrorTitle"), Msg = Strings:LocalizedString("AuthAccountUnlinkedPhrase"), Code = 903 };
		[3] = { Title = Strings:LocalizedString("AuthenticationErrorTitle"), Msg = Strings:LocalizedString("AuthMissingGamePadPhrase"), Code = 904 };
		[4] = { Title = Strings:LocalizedString("AuthenticationErrorTitle"), Msg = Strings:LocalizedString("AuthNoUserDetectedPhrase"), Code = 905 };
		[5] = { Title = Strings:LocalizedString("AuthenticationErrorTitle"), Msg = Strings:LocalizedString("AuthHttpErrorDetected"), Code = 906 };
		[6] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkSignUpDisabled"), Code = 907 };
		[7] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkFlooded"), Code = 908 };
		[8] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkLeaseLocked"), Code = 909 };
		[9] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkAccountLinkingDisabled"), Code = 910 };
		[10] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkInvalidRobloxUser"), Code = 911 };
		[11] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkRobloxUserAlreadyLinked"), Code = 912 };
		[12] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkXboxUserAlreadyLinked"), Code = 913 };
		[13] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkIllegalChildAccountLinking"), Code = 914 };
		[14] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkInvalidPassword"), Code = 915 };
		[15] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkUsernamePasswordNotSet"), Code = 916 };
		[16] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkUsernameAlreadyTaken"), Code = 917 };
		[17] = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("LinkInvalidCredentials"), Code = 918 };
		[18] = { Title = Strings:LocalizedString("AuthenticationErrorTitle"), Msg = Strings:LocalizedString("UserIsGuestAccount"), Code = 919 };
	};

	RegisterActiveUser =
	{
		[-1] = { Title = Strings:LocalizedString("AuthenticationErrorTitle"), Msg = Strings:LocalizedString("AuthErrorPhrase"), Code = 1301 };
		-- ["0"]; This is success
		[1] = { Title = Strings:LocalizedString("AuthenticationErrorTitle"), Msg = Strings:LocalizedString("AuthNoUserDetectedPhrase"), Code = 1302 };
	};

	SignIn =
	{
		InvalidUsername = { Title = Strings:LocalizedString("InvalidUsernameTitle"), Msg = Strings:LocalizedString("InvalidUsernamePhrase"), Code = 1101 };
		InvalidPassword = { Title = Strings:LocalizedString("InvalidPasswordTitle"), Msg = Strings:LocalizedString("InvalidPasswordPhrase"), Code = 1102 };
		NoUsernameOrPasswordEntered = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("NoUsernameOrPasswordEnteredPhrase"), Code = 1107 };
		["ConnectionFailed"] = { Title = Strings:LocalizedString("AuthenticationErrorTitle"), Msg = Strings:LocalizedString("WebServerConnectFailPhrase"), Code = 1108 };
	};

	PlatformError =
	{
		PopupPartyUI = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("PopupPartyUIErrorPhrase"), Code = 1201 };
	};

	CPPSettingError =
	{
		SetCPPSettingError = { Title = Strings:LocalizedString("ErrorOccurredTitle"), Msg = Strings:LocalizedString("SetCPPSettingErrorPhrase"), Code = 1401 };
	};
}

return Errors
