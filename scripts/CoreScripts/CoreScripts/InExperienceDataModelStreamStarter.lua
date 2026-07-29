local CorePackages = game:GetService("CorePackages")

local ok, DataModelStreaming = pcall(function()
	return require(CorePackages.Workspace.Packages.DataModelStreaming)
end)

if not ok or type(DataModelStreaming) ~= "table" then
	return
end

local initDataModelStreamWsClient = DataModelStreaming.initDataModelStreamWsClient
if type(initDataModelStreamWsClient) ~= "function" then
	return
end

initDataModelStreamWsClient("experience")
