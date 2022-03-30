local Selection = game:GetService("Selection")
local PublishService = game:GetService("PublishService")

return function(plugin)
	local toExport = Selection:Get()
	if not toExport then
		return
	end

	for _, item in ipairs(toExport) do
		PublishService:PublishDescendantAssets(item)

		Selection:Set({item})
		plugin:PromptSaveSelection(item.Name)
	end
end
