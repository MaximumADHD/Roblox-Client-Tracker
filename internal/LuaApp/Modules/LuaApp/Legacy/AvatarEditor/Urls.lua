local domainUrl = game:GetService('ContentProvider').BaseUrl

for _, word in pairs({"/", "www.", "https:", "http:" }) do
	domainUrl = string.gsub(domainUrl, word, "")
end


return {
	domainUrl =
		domainUrl;

	api = "https://api."..domainUrl;

	avatarUrlPrefix =
		"https://avatar."
		..domainUrl;

	assetImageUrl =
		"https://www."
		..domainUrl
		.."/Thumbs/Asset.ashx?width=110&height=110&assetId=";

	assetImageUrl150 =
		"https://www."
		..domainUrl
		.."/Thumbs/Asset.ashx?width=150&height=150&assetId=";

	outfitImageUrlPrefix =
		"https://www."
		..domainUrl
		.."/outfit-thumbnail/image?userOutfitId=";

	catalogUrlBase =
		"https://www."..domainUrl.."/catalog/";
}
