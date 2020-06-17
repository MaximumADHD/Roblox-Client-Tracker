--[[
    Internal utility file used to get files from UI/StudioUI folders using a Fractal pattern.

    Parameter "folderPath" is expected to be an array of file instances.
]]

return function(folderPath)
    local folderDataLookup = {}

    for _, folder in pairs(folderPath) do
        if folder ~= script then
            folderDataLookup[folder.Name] = {
                name = folder.Name,
                renderExample = folder:FindFirstChild("renderExample"),
                example = folder:FindFirstChild("example"),
                style = folder:FindFirstChild("style"),
                test = folder:FindFirstChild("test.spec"),
            }
        end
    end

    return folderDataLookup
end