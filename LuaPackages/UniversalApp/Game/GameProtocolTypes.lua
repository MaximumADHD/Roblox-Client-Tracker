local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.UniversalApp.MessageBusTypes)

export type LaunchParams = {
	placeId: string | number | nil,
	userId: string | number | nil,
}

export type GameProtocol = {
	GAME_LAUNCH_DESCRIPTOR: Types.MessageDescriptor,

	launchGame: (GameProtocol, LaunchParams) -> (),

	subscriber: Types.Subscriber,
}

return nil
