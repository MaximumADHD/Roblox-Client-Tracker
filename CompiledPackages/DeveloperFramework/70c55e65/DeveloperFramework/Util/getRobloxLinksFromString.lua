--[[
	Separates "roblox.com" links from a given string.
	NOte that the subdomain must be in a given whitelist (or default DEFAULT_SUB_DOMAIN_WHITELIST whitelist).
	Returns a table of LinkifyItem (which has info of the separated strings and urls).
]]
export type LinkifyUrlInfo = {
	Link: string?,
	SubDomain: string,
	Slug: string?,
}

export type LinkifyItem = {
	IsLink: boolean,
	Text: string,
	UrlInfo: LinkifyUrlInfo?,
}

local DEFAULT_SUB_DOMAIN_WHITELIST = {
	create = "create",
	devforum = "devforum",
	talenthub = "talent",
	www = "www",
}

local VALID_SLUG_SPECIAL_CHARS = {
	"/",
	"?",
	"=",
	"_",
	"-",
	"~",
	"%",
	"+",
	"&",
}

local slugSpecialChars = table.concat(VALID_SLUG_SPECIAL_CHARS, "|%")

local LUA_PATTERN = "(h*t*p*s?:*/*%a*)(.?)(roblox.com)([/+%w|%" .. slugSpecialChars .. "]*)"

local function createPlainTextLinkifyItem(text: string)
	local result: LinkifyItem = {
		IsLink = false,
		Text = text,
	}
	return result
end

local function addToTableOrAppendTextToPreviousTextInTable(result: { LinkifyItem }, text: string)
	if #result > 0 then
		local prevItem = result[#result]
		if prevItem.IsLink then
			table.insert(result, createPlainTextLinkifyItem(text))
		else
			-- Append to the previous text
			result[#result].Text = prevItem.Text .. text
		end
	else
		table.insert(result, createPlainTextLinkifyItem(text))
	end
end

return function(text: string, subDomains: any?)
	local subDomainWhitelist = if subDomains then subDomains else DEFAULT_SUB_DOMAIN_WHITELIST
	local result: { LinkifyItem } = {}
	local firstIndex: number? = 1
	local lastIndex: number? = 1
	local modifiedText = text
	while firstIndex do
		local _, subdomainAndProtocol, _, _, slug
		firstIndex, lastIndex, subdomainAndProtocol, _, _, slug = modifiedText:find(LUA_PATTERN)

		if not firstIndex or not lastIndex then
			break
		end

		-- Add string before the found URL
		if firstIndex ~= 1 then
			local textToAdd = modifiedText:sub(1, firstIndex - 1)
			addToTableOrAppendTextToPreviousTextInTable(result, textToAdd)
		end

		local whiteListedSubDomain
		local protocol
		if subdomainAndProtocol and subdomainAndProtocol ~= "" then
			-- Check if subdomain has protocol in it and separate it if so (NOTE: this is a workaround for lua pattern limitations)
			local firstIndexOfProtocol, lastIndexOfProtocol, subdomain

			firstIndexOfProtocol, lastIndexOfProtocol, protocol, subdomain =
				subdomainAndProtocol:find("(https?://)(%a*)")

			if not firstIndexOfProtocol or not lastIndexOfProtocol then
				-- No protocol found, so the "subdomainAndProtocol" only has subdomain
				subdomain = subdomainAndProtocol
			end

			if subdomain == "" or not subdomain then
				whiteListedSubDomain = subDomainWhitelist.www
			else
				whiteListedSubDomain = subDomainWhitelist[string.lower(subdomain)]
			end
		else
			whiteListedSubDomain = subDomainWhitelist.www
		end

		local urlText = modifiedText:sub(firstIndex, lastIndex)
		local urlLink = if protocol then urlText else "https://" .. urlText

		if whiteListedSubDomain then
			local urlItem: LinkifyItem = {
				IsLink = true,
				Text = urlText,
				UrlInfo = {
					Link = urlLink,
					Slug = slug,
					SubDomain = whiteListedSubDomain,
				},
			}
			table.insert(result, urlItem)
		else
			-- Treat non-whilelisted subdomains as normal strings
			addToTableOrAppendTextToPreviousTextInTable(result, urlText)
		end

		local modifiedTextLength = string.len(modifiedText)
		if lastIndex == modifiedTextLength then
			modifiedText = ""
			break
		else
			modifiedText = modifiedText:sub((lastIndex or 0) + 1, modifiedTextLength)
		end
	end

	-- Add strings after all found URLs
	if string.len(modifiedText) > 0 then
		addToTableOrAppendTextToPreviousTextInTable(result, modifiedText)
	end
	return result
end
