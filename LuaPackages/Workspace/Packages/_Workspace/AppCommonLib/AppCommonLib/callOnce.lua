local MemStorageService = game:GetService("MemStorageService")

-- MemStorage lifecycle is same to Roblox Process, it is an in-memory engine side singleton.
-- It get created when user enter Roblox, get destroyed when user close Roblox. So it is safe to
-- assume the callOnce function will at most execute once per process lifecycle.
return function(key: string, func: () -> ())
	if func == nil then
		return
	end
	if MemStorageService:HasItem(key) then
		return
	end
	MemStorageService:SetItem(key, "true")
	func()
end
