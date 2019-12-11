-- all connection errors
return {
	[Enum.ConnectionError.DisconnectErrors] = {
		Enum.ConnectionError.DisconnectBadhash,
		Enum.ConnectionError.DisconnectBlockedIP,
		Enum.ConnectionError.DisconnectBySecurityPolicy,
		Enum.ConnectionError.DisconnectCloudEditKick,
		Enum.ConnectionError.DisconnectConnectionLost,
		Enum.ConnectionError.DisconnectDevMaintenance,
		Enum.ConnectionError.DisconnectDuplicatePlayer,
		Enum.ConnectionError.DisconnectDuplicateTicket,
		Enum.ConnectionError.DisconnectEvicted,
		Enum.ConnectionError.DisconnectHashTimeout,
		Enum.ConnectionError.DisconnectIdle,
		Enum.ConnectionError.DisconnectIllegalTeleport,
		-- Enum.ConnectionError.DisconnectLuaKick, -- Dev specified string
		Enum.ConnectionError.DisconnectNewSecurityKeyMismatch,
		Enum.ConnectionError.DisconnectOnRemoteSysStats,
		Enum.ConnectionError.DisconnectPlayerless,
		Enum.ConnectionError.DisconnectProtocolMismatch,
		Enum.ConnectionError.DisconnectRaknetErrors,
		Enum.ConnectionError.DisconnectReceivePacketError,
		Enum.ConnectionError.DisconnectReceivePacketStreamError,
		Enum.ConnectionError.DisconnectRejoin,
		Enum.ConnectionError.DisconnectRobloxMaintenance,
		Enum.ConnectionError.DisconnectSecurityKeyMismatch,
		Enum.ConnectionError.DisconnectSendPacketError,
		Enum.ConnectionError.DisconnectTimeout,
		Enum.ConnectionError.DisconnectWrongVersion
	},
	[Enum.ConnectionError.PlacelaunchErrors] = {
		Enum.ConnectionError.PlacelaunchCustomMessage,
		Enum.ConnectionError.PlacelaunchDisabled,
		Enum.ConnectionError.PlacelaunchError,
		Enum.ConnectionError.PlacelaunchFlooded,
		Enum.ConnectionError.PlacelaunchGameEnded,
		Enum.ConnectionError.PlacelaunchGameFull,
		Enum.ConnectionError.PlacelaunchHashException,
		Enum.ConnectionError.PlacelaunchHashExpired,
		Enum.ConnectionError.PlacelaunchHttpError,
		Enum.ConnectionError.PlacelaunchOtherError,
		Enum.ConnectionError.PlacelaunchPartyCannotFit,
		Enum.ConnectionError.PlacelaunchRestricted,
		Enum.ConnectionError.PlacelaunchUnauthorized,
		Enum.ConnectionError.PlacelaunchUserLeft	
	},
	[Enum.ConnectionError.TeleportErrors] = {
		Enum.ConnectionError.TeleportFailure,
		Enum.ConnectionError.TeleportFlooded,
		Enum.ConnectionError.TeleportGameEnded,
		Enum.ConnectionError.TeleportGameFull,
		Enum.ConnectionError.TeleportGameNotFound,
		Enum.ConnectionError.TeleportIsTeleporting,
		Enum.ConnectionError.TeleportUnauthorized	
	}
}