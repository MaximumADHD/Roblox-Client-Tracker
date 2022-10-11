-- Sessions

local Main = script.Parent.Parent
local Lib = Main.lib
local Src = Main.src
---------------------------------

local Request = require(Src.request)
local CookieJar = require(Src.cookies)
local RateLimiter = require(Src.ratelimit)
local Util = require(Src.util)

-- util

local function randomString(l)
	local s = ""

	for _ = 1, l do
		s = s .. string.char(math.random(97, 122))
	end

	return s
end

-- Session class
local Session = {}
Session.__index = Session
function Session.new(base_url)
	-- Creates new Session object

	local self = setmetatable({}, Session)

	self.headers = {}
	self.cookies = CookieJar.new()

	self.base_url = base_url or ""

	self._ratelimit = nil
	self.ignore_ratelimit = false

	self.before_request = nil
	self.after_request = nil

	self.no_stats = false

	self.log = true

	-----------
	return self
end

function Session:set_ratelimit(rate, window)
	if not rate then
		self:disable_ratelimit()
	end

	window = window or 60

	-- delete original ratelimiter
	if self._ratelimit then
		RateLimiter.ratelimit[self._ratelimit.id] = nil
	end

	-- sets new session ratelimiter
	local rl_id = "http.session-" .. randomString(12)

	self._ratelimit = RateLimiter.get(rl_id, rate, window)
end

function Session:disable_ratelimit()
	-- disables session rate limit

	if self._ratelimit then
		RateLimiter.ratelimit[self._ratelimit.id] = nil
		self._ratelimit = nil
	end
end

function Session:set_headers(headers)
	-- headers: (dictionary) additional headers to set

	for k, v in pairs(headers) do
		self.headers[k] = v
	end

	return self
end

function Session:Request(method, url, opts)
	-- prepares request based on Session's default values, such as headers
	-- session defaults will NOT overwrite values set per-request

	opts = opts or {}

	-- add prefix if not absolute url
	if not (url:sub(1, 7) == "http://" or url:sub(1, 8) == "https://") then
		url = self.base_url .. url
	end

	local will_log = self.log
	if opts.log ~= nil then
		will_log = opts.log
	end

	-- prepare request based on session defaults
	local request = Request.new(method, url, {
		headers = self.headers,
		query = opts.query,
		data = opts.data,
		log = will_log,
		cookies = opts.cookies or self.cookies,
		ignore_ratelimit = opts.ignore_ratelimit or self.ignore_ratelimit,
		no_stats = self.no_stats or false,
	})

	if self._ratelimit then
		table.insert(request._ratelimits, self._ratelimit) -- make request follow session ratelimit
	end

	request:set_headers(opts.headers or {})

	request._callback = function(resp)
		for _, cookie in ipairs(resp.cookies.cookies) do
			table.insert(self.cookies.cookies, cookie)
		end
	end

	return request
end

function Session:request(method, url, opts)
	-- quick method to send http requests
	--  method: (str) HTTP Method
	--     url: (str) Fully qualified URL
	-- options (dictionary):
	-- headers: (dictionary) Headers to send with request
	--   query: (dictionary) Query string parameters
	--    data: (str OR dictionary) Data to send in POST or PATCH request
	--     log: (bool) Whether to log the request
	-- cookies: (CookieJar OR dict) Cookies to use in request

	opts = opts or {}

	local req = self:Request(method, url, opts)
	return req:send()
end
Session.send = Util.deprecate(Session.request, "0.5", "Session:send")

function Session:promise_request(method, url, opts)
	-- same as session:send but returns a Promise

	opts = opts or {}

	local req = self:Request(method, url, opts)
	return req:send(true)
end
Session.promise_send = Util.deprecate(Session.promise_request, "0.5", "Session:promise_send")

-- create quick functions for each http method
for _, method in pairs({ "GET", "POST", "HEAD", "OPTIONS", "PUT", "DELETE", "PATCH" }) do
	Session[method:lower()] = function(self, url, opts)
		return self:send(method, url, opts)
	end

	Session["promise_" .. method:lower()] = function(self, url, opts)
		return self:promise_send(method, url, opts)
	end
end

--------------
return Session
