--!nonstrict
local FFlagServerCoreScriptSourceCode = game:DefineFastFlag("ServerCoreScriptSourceCode", false)

local ServerUtil = {}

function ServerUtil.getFFlagServerCoreScriptSourceCode()
    return FFlagServerCoreScriptSourceCode
end

if FFlagServerCoreScriptSourceCode then
    local InsertService = game:GetService("InsertService")
    local CoreGui = game:GetService("CoreGui")
    local Modules = CoreGui:WaitForChild("RobloxGui", math.huge).Modules

    local function getRelativePathArray(root, instance)
        local path = {}
        while instance ~= root do
            if instance == nil then
                return nil
            end
            table.insert(path, 1, instance.Name)
            instance = instance.Parent
        end
        return path
    end

    function ServerUtil.getSourceForServerScript(instance)
        if instance.Source ~= "" then
            return instance.Source
        end

        local byteCodeRoot = Modules
        local sourceCodeRoot = Modules.SourceCode

        local path = getRelativePathArray(byteCodeRoot, instance)
        if path == nil then
            error("Instance is not a descendant of the byte code root")
        end

        local sourceScript = sourceCodeRoot
        for i = 1, #path do
            sourceScript = sourceScript:FindFirstChild(path[i])
        end

        if sourceScript == nil then
            error("No source found for instance")
        end

        return sourceScript.Source
    end

    local function isByteCodeMode()
        return script.Source == ""
    end

    function ServerUtil.initSourceCodeFolder()
        if not isByteCodeMode() then
            return
        end

        local serverCoreScriptsRoot = InsertService:LoadLocalAsset("rbxasset://models/ServerCoreScripts.rbxm")
        local sourceCodeRoot = Instance.new("Folder")
        sourceCodeRoot.Name = "SourceCode"
        sourceCodeRoot.Parent = Modules

        local ServerSource = serverCoreScriptsRoot.Server
        local CommonSource = serverCoreScriptsRoot.Common
        ServerSource.Parent = sourceCodeRoot
        CommonSource.Parent = sourceCodeRoot
    end
end

return ServerUtil
