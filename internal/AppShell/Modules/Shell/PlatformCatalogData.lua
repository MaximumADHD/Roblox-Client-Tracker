local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local PlatformCatalogData = {}

local function getStudioDummyData()
	return {{ReducedName = 'Default Short Title', Description = 'Default Description', DisplayListPrice = '$199.99', IsPartOfAnyBundle = false, DisplayPrice = '$0.80', ProductId = '210d1d69-5189-40f4-a59b-ecfb4f849847', Name = '22,500 Robux', TitleId = 0, IsBundle = false}, {ReducedName = 'Default Short Title', Description = 'Default Description', DisplayListPrice = '$3.00', IsPartOfAnyBundle = false, DisplayPrice = '$3.00', ProductId = '70c2075d-5e2f-4ffd-8de5-8a6d2f5e65ad', Name = '400 Robux', TitleId = 0, IsBundle = false}, {ReducedName = 'Default Short Title', Description = 'Default Description', DisplayListPrice = '$2.20', IsPartOfAnyBundle = false, DisplayPrice = '$2.20', ProductId = '878c642b-cb27-4d5e-a150-a408ea40c41c', Name = '240 Robux', TitleId = 0, IsBundle = false}}
end

function PlatformCatalogData:GetCatalogInfoAsync()
	if UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
		return getStudioDummyData(),
				true,
				''
	end

	local numRetries = 5
	local catalogInfo, success, errormsg;
	for i = 1, numRetries do
		success, errormsg = pcall(function()
			catalogInfo = PlatformService:BeginGetCatalogInfo()
		end)
		if success and catalogInfo then
			return catalogInfo, success, errormsg
		end
		wait(10)
	end

	return catalogInfo, success, errormsg
end

function PlatformCatalogData:ParseMoneyValue(productInfo)
	local price = productInfo and tonumber(productInfo.Price) or 0.99
	return price
end

function PlatformCatalogData:ParseRobuxValue(productInfo)
	local rawText = productInfo and productInfo.Name
	local noJunk = string.gsub(rawText, ",", "")
	noJunk = noJunk and string.match(noJunk, "[0-9]+") or nil
	return noJunk and tonumber(noJunk) or 1000
end

function PlatformCatalogData:CalculateRobuxRatio(productInfo)
	local robuxValue = self:ParseRobuxValue(productInfo)
	local moneyValue = self:ParseMoneyValue(productInfo)
	if moneyValue == 0 or robuxValue == 0 then
		return 0
	end
	return robuxValue / moneyValue
end

return PlatformCatalogData
