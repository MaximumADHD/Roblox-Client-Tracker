local function dump(floatCurve)
    local keys = floatCurve:GetKeys()
    for _, key in pairs(keys) do
        print("{", key.Time, key.Value, key.Interpolation.Name, key.LeftTangent, key.RightTangent, "}")
    end
end

return dump