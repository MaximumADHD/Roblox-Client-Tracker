--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

export type AsyncState<T> = {
	status: "loading",
} | {
	status: "ok",
	value: T,
} | {
	status: "error",
	problem: string,
}

local function useAsync<T>(callbackAsync: () -> T, dependencies: { unknown }): AsyncState<T>
	local asyncState: AsyncState<T>, setAsyncState = React.useState({
		status = "loading" :: "loading",
	} :: AsyncState<T>)

	React.useEffect(function()
		setAsyncState({
			status = "loading",
		})

		local thread = task.spawn(function()
			xpcall(function()
				setAsyncState({
					status = "ok",
					value = callbackAsync(),
				})
			end, function(problem)
				setAsyncState({
					status = "error",
					problem = problem,
				})
			end)
		end)

		return function()
			task.cancel(thread)
		end
	end, dependencies)

	return asyncState
end

return useAsync
