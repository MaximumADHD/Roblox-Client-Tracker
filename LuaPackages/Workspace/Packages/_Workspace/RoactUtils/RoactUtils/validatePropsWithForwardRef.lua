local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local function validateWithRefForwarding(props)
    props["forwardRef"] = props[Roact.Ref]
    props[Roact.Ref] = nil
    return props
end

return validateWithRefForwarding
