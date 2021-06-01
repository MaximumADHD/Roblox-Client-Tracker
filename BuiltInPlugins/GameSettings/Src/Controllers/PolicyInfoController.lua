local PolicyInfoController = {}
PolicyInfoController.__index = PolicyInfoController

function PolicyInfoController.new(networking)
    local self = {}

    self.__networking = networking

    return setmetatable(self, PolicyInfoController)
end

function PolicyInfoController:appAgreementsResolutionV1GET()
    local networking = self.__networking

    return networking:get("apis", "/user-agreements/v1/agreements-resolution/App")
end

function PolicyInfoController:getPlayerAcceptances()
    local response = self:appAgreementsResolutionV1GET():await()

    return next(response.responseBody) == nil
end

return PolicyInfoController