-- A map of property names to statuses associated with them
StatusPropertyMap = {
    Dimensions = {"MeshScaleWarning"},
    FileDimensions = {"MeshScaleWarning"},
    PolygonCount = {"MeshSizeWarning"},
}

local function convertToSet(table)
    local set = {}
    for _, object in pairs(table) do
        set[object] = true
    end
    return set
end

for index, table in pairs(StatusPropertyMap) do
    StatusPropertyMap[index] = convertToSet(table)
end

return StatusPropertyMap
