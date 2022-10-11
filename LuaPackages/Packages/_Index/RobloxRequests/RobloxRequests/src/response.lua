local Main = script.Parent.Parent
local Lib = Main.lib
local Src = Main.src
-----------------------------------------------------

local CaseInsensitive = require(Lib.nocasetable)
local html = require(Lib.html)

local json = require(Src.json)
local CookieJar = require(Src.cookies)

-----------------------------------------------------

local html_types = { "text/html", "application/xhtml+xml" }

-- Response Object

local Response = {}
Response.__index = Response
function Response.new(req, resp, rt)
	-- creates response object from original request and roblox http response

	local self = setmetatable({}, Response)

	self.request = req -- original request object

	self.response_time = rt
	self.timestamp = self.request.timestamp

	-- request meta data
	self.url = req.url
	self.method = req.method

	-- response data
	self.code = resp.StatusCode -- deprecated
	self.status_code = resp.StatusCode

	self.success = resp.Success -- deprecated
	self.ok = self.status_code >= 200 and self.status_code < 300

	self.message = resp.StatusMessage
	self.headers = CaseInsensitive(resp.Headers)

	self.content = resp.Body -- deprecated
	self.text = resp.Body

	self.headers["content-type"] = self.headers["content-type"] or "text/plain"

	self.from_cache = false

	-- additional metadata for quick access
	local type_encoding = self.headers["content-type"]:split(";")
	self.content_type = type_encoding[1]:lower()
	self.encoding = (type_encoding[2] and type_encoding[2]:split("=")[2]) or "" -- or "utf-8"

	self.content_length = #self.text

	-- cookies
	self.cookies = CookieJar.new()

	if self.headers["set-cookie"] then
		self.cookies:SetCookie(self.headers["set-cookie"])
	end

	return self
end

function Response:expand() end

function Response:__tostring()
	return self.text
end

function Response:json()
	-- convert json respose content to table

	local succ, data = pcall(function()
		return json.dec(self.text)
	end)

	if not succ then
		error(("[http] Failed to convert response content to JSON:\n%s"):format(self.text))
	end

	return data
end

function Response:html(ignore_content_type)
	if ignore_content_type or table.find(html_types, self.content_type) then
		return html.parse(self.text, 100000, tostring(self.url))
	else
		error("[http] Response is not specified as HTML.")
	end
end

function Response:xml(ignore_content_type)
	if ignore_content_type or self.content_type:find("+xml") or self.content_type:find("/xml") then
		return html.parse(self.text, 100000)
	else
		error("[http] Response is not specified as XML.")
	end
end

---------------

return Response
