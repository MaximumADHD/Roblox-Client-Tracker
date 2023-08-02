return function(analytics, version)
	local formattedVersion = string.gsub(version or "0", "%p", { ["."] = "_" })
	analytics.reportCounter(string.format("ExpChatV%sCount", formattedVersion))
end
