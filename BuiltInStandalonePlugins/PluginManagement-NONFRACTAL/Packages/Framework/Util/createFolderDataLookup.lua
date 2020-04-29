return function(folderPath)
    local folderDataLookup = {}

    for _, data in pairs(folderPath) do
        if data ~= script then
            folderDataLookup[data.Name] = {
                name = data.Name,
                renderExample = data:FindFirstChild("renderExample"),
                example = data:FindFirstChild("example"),
                style = data:FindFirstChild("style"),
                test = data:FindFirstChild("test.spec"),
            }
        end
    end

    return folderDataLookup
end