local MS = game:GetService("MessagingService")
local DS = game:GetService("DataStoreService")
local RS = game:GetService("RunService")

local json = require(script.Parent.json)
----------------------------------------------

local STUDIO = RS:IsStudio()

local function dlog(...)
	print("[http]", ...)
end

local Cache = {}
-- Cache.__index = Cache

Cache.settings = {}
Cache.max_size = math.huge

Cache.data = {}

function Cache.update_settings(urls, settings)
	urls = type(urls) == "table" and urls or { urls }

	local _concat = {}
	local i = 0
	while i < #urls do
		i += 1

		local url = urls[i]

		if url:sub(1, 7) == "http://" then
			urls[i] = url:sub(8)
			url = urls[i]
		elseif url:sub(1, 8) == "https://" then
			urls[i] = url:sub(9)
			url = urls[i]
		end

		if url:sub(1, 2) == "*." then
			table.insert(urls, url:sub(3))
		end

		if not url:find("/") then
			table.insert(urls, url .. "/")
			table.insert(urls, url .. "/*")
		end
	end

	for _, url in ipairs(urls) do
		Cache.settings[url] = settings

		if settings.cache_locally == false and not settings.cache_globally then
			Cache.settings[url] = nil
		end
	end
end

function Cache.cache_locally(urls, opts)
	opts = opts or {}
	opts.cache_globally = false

	Cache.update_settings(urls, opts)
end

function Cache.cache_globally(urls, opts)
	opts = opts or {}
	opts.cache_globally = true

	Cache.update_settings(urls, opts)
end

-- "paric.xyz/" would cache http://paric.xyz/ only
-- "paric.xyz/*" would cache all subdirectories
-- "*.paric.xyz" would cache all subdomains INCLUDING paric.xyz

function Cache.should_cache(url)
	url = url:split("?")[1]

	for key, _ in pairs(Cache.settings) do
		local pattern = ".*://" .. key:gsub("%*", ".*")

		if url:match(pattern) then
			return key
		end
	end

	return false
end

function Cache.is_cached(url, req_id)
	-- check local server cache first

	local setting_key = Cache.should_cache(url)
	local settings = Cache.settings[setting_key]

	if not setting_key then
		return false
	end

	if Cache.data[req_id] ~= nil then
		if settings.expires then
			if tick() - Cache.data[req_id].timestamp > settings.expires then
				return false
			end
		end

		return true
	end

	if Cache.settings[setting_key].cache_globally then
		if Cache.global_cache_index[req_id] then
			return true
		else
			return false
		end
	else
		return false
	end
end

-- handle global cache indexing

Cache.global_cache_index = {}
local global_cache_queue = {}

local global_cache_enabled, ds_cache = pcall(function()
	return DS:GetDataStore("HttpRequestsCache")
end)

if global_cache_enabled then
	local succ, global_cache_index = pcall(function()
		return ds_cache:GetAsync("index") or {}
	end) -- dynamically updating index using messagingservice
	if succ then
		Cache.global_cache_index = global_cache_index

		Cache.global_cache_update_interval = 20 -- update global cache 3 times / min by default

		coroutine.wrap(function()
			while wait(Cache.global_cache_update_interval) do
				pcall(function()
					local i = 0
					for k, v in pairs(global_cache_queue) do
						ds_cache:SetAsync(k, v)
						i += 1
					end

					if i > 0 then
						dlog(("pushing %s requests to global cache index"):format(i))
					end

					local index_list = {}

					ds_cache:UpdateAsync("index", function(idx)
						idx = idx or {}
						for k, _ in pairs(global_cache_queue) do
							table.insert(index_list, k)

							idx[k] = true
							Cache.global_cache_index[k] = true
						end

						return idx
					end)

					if not STUDIO then
						MS:PublishAsync("RequestsCacheIndex", json.enc(index_list))
					end

					global_cache_queue = {}
				end)
			end
		end)()

		if not STUDIO then
			MS:SubscribeAsync("RequestsCacheIndex", function(msg)
				local append = json.dec(msg.Data)

				-- dlog("new cache index message. length", #append)

				for _, v in ipairs(append) do
					Cache.global_cache_index[v] = true
				end
			end)
		end
	end
end

-- cache methods

function Cache.get_expire(url)
	local setting_key = Cache.should_cache(url)

	return Cache.settings[setting_key].expires or math.huge
end

function Cache.get_cached(url, req_id)
	local setting_key = Cache.should_cache(url)

	local server_cached = Cache.data[req_id]
	if server_cached then
		return server_cached, "local"
	end

	-- cloud cache
	if global_cache_enabled and Cache.settings[setting_key].cache_globally then
		dlog("accessing datastore cache for", req_id)

		return ds_cache:GetAsync(req_id), "global"
	end
end

function Cache.update_cache(url, req_id, data)
	print(("[http] %s added to cache"):format(url))

	data.timestamp = tick()

	Cache.data[req_id] = data

	local setting_key = Cache.should_cache(url)

	-- cloud cache
	if global_cache_enabled and Cache.settings[setting_key].cache_globally then
		dlog("queued", req_id)
		global_cache_queue[req_id] = data
		return
	end
end

return Cache
