-- form data module --
----------------------

local Main = script.Parent.Parent
local Lib = Main.lib
local Src = Main.src
---------------------------------

local httpservice = game:GetService("HttpService")

local MIME = require(Lib.mimetypes)
local b64 = require(Lib.b64)

--

local function randomString(l)
	local s = ""

	for _ = 1, l do
		s = s .. string.char(math.random(97, 122))
	end

	return s
end

-- File object

local File = {}
File.__index = File
function File.new(...)
	-- File.new(content)
	-- File.new(name, content)
	-- File.new(name, content, content_type)

	local self = setmetatable({}, File)

	self.__IsFile = true

	self.name = "unknown"
	self.content = ""
	self.content_type = nil

	local args = { ... }
	if #args == 1 then
		-- File(content)

		self.content = args[1]
	elseif #args >= 2 then
		-- File(name, content[, content_type])

		self.name = args[1]
		self.content = args[2]
		self.content_type = args[3]
	end

	-- no content-type provided: guess
	if not self.content_type then
		local ext = self.name:split(".")
		ext = ext[#ext]

		self.content_type = MIME[ext:lower()] or "text/plain"
	end

	if type(self.content) ~= "string" then
		error(("[http] Invalid file content for file %s"):format(self.name))
	end

	return self
end

function File:__tostring()
	return ("File('%s', '%s')"):format(self.name, self.content_type)
end

-- FormData object

local FormData = {}
FormData.__index = FormData
function FormData.new(fields)
	local self = setmetatable({}, FormData)
	self.__FormData = true

	fields = fields or {}

	self.boundary = "--FormBoundary-" .. randomString(28)
	self.content_type = "application/x-www-form-urlencoded"

	self.fields = {}
	for k, v in pairs(fields) do
		self:AddField(k, v)
	end

	return self
end

function FormData:AddField(name, value)
	-- set content-type to multipart if file is provided
	if value.__IsFile then
		self.content_type = 'multipart/form-data; boundary="' .. self.boundary .. '"'
	end

	table.insert(self.fields, {
		Name = name,
		Value = value,
	})
end

function FormData:build()
	-- return request payload data for these form values

	local content = ""

	if self.content_type == "application/x-www-form-urlencoded" then
		for _, field in ipairs(self.fields) do
			if field.Value.__IsFile then
				error("[http] URL encoded forms cannot contain any files")
			end

			if field.Name:find("=") or field.Name:find("&") then
				error("[http] Form field names must not contain '=' or '&'")
			end

			-- handle lists
			if type(field.Value) == "table" then
				for _, val in ipairs(field.Value) do
					if #content > 0 then
						content = content .. "&"
					end

					content = content .. field.Name .. "=" .. httpservice:UrlEncode(val)
				end
			else
				if #content > 0 then
					content = content .. "&"
				end

				content = content .. field.Name .. "=" .. httpservice:UrlEncode(field.Value)
			end
		end
	else
		for _, field in pairs(self.fields) do
			content = content .. "--" .. self.boundary .. "\r\n"

			local val = field.Value

			content = content .. ('Content-Disposition: form-data; name="%s"'):format(field.Name)

			-- handle files
			if field.Value.__IsFile then
				val = field.Value.content

				content = content .. ('; filename="%s"'):format(field.Value.name)
				content = content .. "\r\nContent-Type: " .. field.Value.content_type

				-- encode non-text files
				if field.Value.content_type:sub(1, 5) ~= "text/" then
					val = b64.encode(val)
					content = content .. "\r\nContent-Transfer-Encoding: base64"
				end
			end

			content = content .. "\r\n\r\n" .. val .. "\r\n"
		end
		content = content .. "--" .. self.boundary .. "--"
	end

	return content
end

---------------
return {
	["FormData"] = FormData,
	["File"] = File,
}
