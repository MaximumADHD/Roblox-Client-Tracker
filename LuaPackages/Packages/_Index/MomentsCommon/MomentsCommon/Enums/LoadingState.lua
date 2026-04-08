export type LoadingState = "Failed" | "Finished" | "Loading"

local LoadingState = {
	Failed = "Failed" :: "Failed",
	Finished = "Finished" :: "Finished",
	Loading = "Loading" :: "Loading",
}

return LoadingState
