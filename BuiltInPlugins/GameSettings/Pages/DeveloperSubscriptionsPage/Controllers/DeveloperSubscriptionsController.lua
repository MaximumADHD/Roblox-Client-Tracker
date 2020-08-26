local DeveloperSubscriptionsController = {}

DeveloperSubscriptionsController.__index = DeveloperSubscriptionsController

function DeveloperSubscriptionsController.new(networking)
    local self = {}

    self.__networking = networking

    return setmetatable(self, DeveloperSubscriptionsController)
end

function DeveloperSubscriptionsController:devSubsV1GET(gameId, params)
    local networking = self.__networking
    return networking:get("apis", "/developer-subscriptions/v1/universes/" .. gameId .. "/plans", {
        Params = params
    })
end

function DeveloperSubscriptionsController:moderationV1GET(name, description)
    local networking = self.__networking
    return networking:get("apis", "/developer-subscriptions/v1/universes/plans/check-name-and-description", {
        Params = {
			name = name,
			description = description,
        },
        CachePolicy = Enum.HttpCachePolicy.None,
    })
end

function DeveloperSubscriptionsController:uploadImagePOST(image)
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

function DeveloperSubscriptionsController:devSubsCreateV1POST(gameId, name, description, price, imageId)
    local networking = self.__networking
    return networking:post("apis", "/developer-subscriptions/v1/universes/" .. gameId .. "/plans", {
        Body = {
            imageAssetId = imageId,
			name = name,
			description = description,
			priceInRobux = price,
        },
        CachePolicy = Enum.HttpCachePolicy.None,
    })
end

function DeveloperSubscriptionsController:devSubsDiscontinueV1PATCH(devSubId)
    local networking = self.__networking
    return networking:patch("apis", "/developer-subscriptions/v1/universes/plans/"..devSubId, {
        Body = {
            status = "Closed",
        },
        CachePolicy = Enum.HttpCachePolicy.None,
    })
end

function DeveloperSubscriptionsController:devSubsChangeV1PATCH(id, currName, currDesc, currImage, newName, newDesc, newImage)
    local networking = self.__networking
    if newImage == nil then
        newImage = string.match(currImage, "%d+")
    end
    local body = {
        imageAssetId = newImage,
        name = newName or currName,
        description = newDesc or (currDesc or ""),
    }
    return networking:patch("apis", "/developer-subscriptions/v1/universes/plans/"..id, {
        Body = body,
        CachePolicy = Enum.HttpCachePolicy.None,
    })
end

function DeveloperSubscriptionsController:getDevSubs(gameId, open, cursor)
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
            Description = data.description,
            Price = data.priceInRobux,
            Active = (data.status == "Open"),
            Subscribers = 0,
        }
        developerSubscriptions[subscription.Key] = subscription
    end

    local pageCursor = body.nextPageCursor
    if pageCursor == nil then
        pageCursor = ""
    end

    return developerSubscriptions, pageCursor
end

function DeveloperSubscriptionsController:createDevSub(gameId, new)
    local response = self:uploadImagePOST(new.Image):await()
    local imageId = response.responseBody
    self:devSubsCreateV1POST(gameId, new.Name, new.Description, new.Price, imageId):await()
end

function DeveloperSubscriptionsController:changeDevSub(curr, new)
    if new.Image then
        local response = self:uploadImagePOST(new.Image):await()
        local newImageId = response.responseBody
        self:devSubsChangeV1PATCH(curr.Id, curr.Name, curr.Description, curr.Image, new.Name, new.Description, newImageId):await()
    else
        self:devSubsChangeV1PATCH(curr.Id, curr.Name, curr.Description, curr.Image, new.Name, new.Description):await()
    end
end

function DeveloperSubscriptionsController:discontinueDevSub(devSub)
    self:devSubsDiscontinueV1PATCH(devSub.Id):await()
end

function DeveloperSubscriptionsController:getFilteredDevSub(devSub)
	if devSub.Name == nil or devSub.Name == "" then
		return true, nil, nil
	end

	local response = self:moderationV1GET(devSub.Name, devSub.Description):await()
	local body = response.responseBody
	local isAcceptable = body.isAcceptable
	local filteredName = body.filteredName
	if filteredName == "" then
		filteredName = nil
	end

	local filteredDescription = body.filteredDescription
	if filteredDescription == "" then
		filteredDescription = nil
	end

	return isAcceptable, filteredName, filteredDescription
end

return DeveloperSubscriptionsController