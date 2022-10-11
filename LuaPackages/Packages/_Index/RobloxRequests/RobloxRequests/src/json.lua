-- json shortcuts

local httpservice = game:GetService("HttpService")

local function enc(t)
	return httpservice:JSONEncode(t)
end

local function dec(s)
	return httpservice:JSONDecode(s)
end

return { ["enc"] = enc, ["dec"] = dec }
