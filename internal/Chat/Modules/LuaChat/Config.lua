return {
	Debug = false, -- Do not submit with this enabled!

	--[[
		Set HttpDelay to a list with two values, like {50, 3000} to set minimum
		and maximum bounds on artificial HTTP connection jitter.

		Set to false to disable this feature, which should be the default.
	]]
	HttpDelay = false,

	SimulatePlatform = Enum.Platform.IOS,
}