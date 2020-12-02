local DevSubsController = {}

DevSubsController.__index = DevSubsController

function DevSubsController.new(networking)
    local self = {}

    self.__networking = networking

    return setmetatable(self, DevSubsController)
end

function DevSubsController:devSubsV1GET(gameId, params)
    local networking = self.__networking
    return networking:get("apis", "/developer-subscriptions/v1/universes/" .. gameId .. "/plans", {
        Params = params
    })
end

function DevSubsController:moderationV1GET(name)
    local networking = self.__networking
    return networking:get("apis", "/developer-subscriptions/v1/universes/plans/check-name-and-description", {
        Params = {
            name = name,
        },
        CachePolicy = Enum.HttpCachePolicy.None,
    })
end

function DevSubsController:uploadImagePOST(image)
    local networking = self.__networking
    return networking:post("www", "/ide/publish/UploadNewImage", {
        Params = {
            name = "DevSubImage",
            description = "None",
        },
        Body = image:GetBinaryContents(),
        CachePolicy = Enum.HttpCachePolicy.None,
        Headers = {
            ["Content-Type"] = "multipart/form-data; boundary=EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E",
        },
    })
end

function DevSubsController:devSubsCreateV1POST(gameId, name, prepaid, price, imageId)
    local networking = self.__networking
    return networking:post("apis", "/developer-subscriptions/v1/universes/" .. gameId .. "/plans", {
        Body = {
            imageAssetId = imageId,
            name = name,
            prepaidOptions = prepaid,
            priceInRobux = price,
        },
        CachePolicy = Enum.HttpCachePolicy.None,
    })
end

function DevSubsController:devSubsDiscontinueV1PATCH(devSubId)
    local networking = self.__networking
    return networking:patch("apis", "/developer-subscriptions/v1/universes/plans/"..devSubId, {
        Body = {
            status = "Closed",
        },
        CachePolicy = Enum.HttpCachePolicy.None,
    })
end

function DevSubsController:devSubsChangeV1PATCH(id, currName, currPrepaid, currImage, newName, newPrepaid, newImage)
    local networking = self.__networking
    if newImage == nil then
        newImage = string.match(currImage, "%d+")
    end
    local body = {
        imageAssetId = newImage,
        name = newName or currName,
        prepaidOptions = newPrepaid or currPrepaid,
    }
    return networking:patch("apis", "/developer-subscriptions/v1/universes/plans/"..id, {
        Body = body,
        CachePolicy = Enum.HttpCachePolicy.None,
    })
end

function DevSubsController:getDevSubs(gameId, open, cursor)
    local developerSubscriptions = {}

    local params = {
        status = open and "Open" or "Closed",
        sortOrder = "Asc",
        cursor = cursor,
    }
    local response = self:devSubsV1GET(gameId, params):await()
    local body = response.responseBody
    for _, data in pairs(body.data) do
        local subscription = {
            IsNew = false,
            Key = tostring(data.id),
            Id = data.id,
            Image = "rbxassetid://"..data.imageAssetId,
            Name = data.name,
            Price = data.priceInRobux,
            CreationDate = data.created,
            Active = (data.status == "Open"),
            -- Subscribers = data.subscriberCount,
            -- PendingEarning = data.pendingRobux,
            -- Prepaid = data.prepaidOptions[0],
            Subscribers = 999,
            PendingEarning = 9999,
            Prepaid = 6,
        }
        developerSubscriptions[subscription.Key] = subscription
    end

    local pageCursor = body.nextPageCursor
    if pageCursor == nil then
        pageCursor = ""
    end

    return developerSubscriptions, pageCursor
end

function DevSubsController:createDevSub(gameId, new)
    local response = self:uploadImagePOST(new.Image):await()
    local imageId = response.responseBody
    self:devSubsCreateV1POST(gameId, new.Name, new.Prepaid, new.Price, imageId):await()
end

function DevSubsController:changeDevSub(curr, new)
    if new.Image then
        local response = self:uploadImagePOST(new.Image):await()
        local newImageId = response.responseBody
        self:devSubsChangeV1PATCH(curr.Id, curr.Name, curr.Prepaid, curr.Image, new.Name, new.Prepaid, newImageId):await()
    else
        self:devSubsChangeV1PATCH(curr.Id, curr.Name, curr.Prepaid, curr.Image, new.Name, new.Prepaid):await()
    end
end

function DevSubsController:discontinueDevSub(devSub)
    self:devSubsDiscontinueV1PATCH(devSub.Id):await()
end

function DevSubsController:getFilteredDevSub(devSub)
    if devSub.Name == nil or devSub.Name == "" then
        return true, nil, nil
    end

    local response = self:moderationV1GET(devSub.Name):await()
    local body = response.responseBody
    local isAcceptable = body.isAcceptable
    local filteredName = body.filteredName
    if filteredName == "" then
        filteredName = nil
    end

    return isAcceptable, filteredName
end

return DevSubsController
