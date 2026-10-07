-- Fetches offers on game join, decoupled from the shop. Flag-gated require in
-- Chrome/Integrations/init.lua; runs only for the task.spawn side effect.
local CorePackages = game:GetService("CorePackages")

-- task.spawn (like ShopEntrypoint's) keeps a yielding/erroring helper from stalling
-- Unibar creation; the require is inside it and per-symbol so the offers UI graph
-- stays off the join path.
task.spawn(function()
	local prefetchOffersOnGameJoin =
		require(CorePackages.Workspace.Packages.InExperienceOffers.prefetchOffersOnGameJoin)
	prefetchOffersOnGameJoin()
end)

return true
