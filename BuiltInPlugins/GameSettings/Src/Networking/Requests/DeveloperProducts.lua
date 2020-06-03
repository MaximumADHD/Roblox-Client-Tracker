--[[
	Request for managing Developer Products in a universe
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)
local FileUtils = require(Plugin.Src.Util.FileUtils)

local CREATE_DEV_PRODUCT_URL = "v1/universes/%d/developerproducts"
local UPDATE_DEV_PRODUCT_URL = "v1/universes/%d/developerproducts/%d/update"
local DEV_PRODUCT_REQUEST_TYPE = "develop"

local GET_DEV_PRODUCT_URL = "developerproducts/list/?universeId=%d&page=%s"
local GET_DEV_PRODUCT_REQUEST_TYPE = "api"

local CREATE_DEV_PRODUCT_ICON_URL = "v1/assets/upload"
local CREATE_DEV_PRODUCT_ICON_REQUEST_TYPE = "publish"

local DevProducts = {}

function DevProducts.Get(gameId)
    local resultDevProducts = {}
    local pageNumber = 1

    local function request(gameId, pageNumber)
        local requestInfo = {
            Url = Http.BuildRobloxUrl(GET_DEV_PRODUCT_REQUEST_TYPE, GET_DEV_PRODUCT_URL, gameId, pageNumber),
            Method = "GET",
        }

        return Http.Request(requestInfo):
        andThen(function(response)
            local body = HttpService:JSONDecode(response)

            if not body then
                return Promise.reject()
            end

            local devProducts = body.DeveloperProducts

            for _,product in ipairs(devProducts) do
                local iconAssetId = product.IconImageAssetId
                if iconAssetId then
                    iconAssetId = "rbxassetid://"..iconAssetId
                end

                resultDevProducts[product.ProductId] = {
                    id = product.ProductId,
                    name = product.Name,
                    description = product.Description,
                    iconImageAssetId = iconAssetId,
                    price = product.PriceInRobux,
                }
            end

            if body.FinalPage then
                return {
                    developerProducts = resultDevProducts
                }
            else
                pageNumber = pageNumber + 1
                return request(gameId, pageNumber)
            end
        end):
        catch(function(err)
            warn("Game Settings: Could not fetch Developer Products")
            Analytics.onLoadError("DevProductsGet")
            return Promise.reject()
        end)
    end

    return request(gameId, pageNumber)
end

local function UploadIcon(newIcon)
    local url = Http.BuildRobloxUrl(CREATE_DEV_PRODUCT_ICON_REQUEST_TYPE, CREATE_DEV_PRODUCT_ICON_URL)
    local requestInfo = FileUtils.CreatePostV1AssetsUpload(newIcon, url)

    requestInfo.CachePolicy = nil

    return Http.Request(requestInfo):andThen(function(response)
        local result = HttpService:JSONDecode(response)

        local details = result.AssetDetails

        if not details.assetId then
            return
        end

        Promise.resolve(details.assetId)
    end):
    catch(function(err)
        warn("Game Settings: Could not upload image for Developer Product.")
    end)
end

function DevProducts.Create(gameId, params)
    local iconAssetId = params.iconImageAssetId
    -- if params.iconImageAssetId then
    --     Promise.resolve(UploadIcon(params.iconImageAssetId)):andThen(function(assetId)
    --         iconAssetId = assetId
    --     end):catch(function(err)
    --     end)
    -- end

    local requestInfo = {
        Url = Http.BuildRobloxUrl(DEV_PRODUCT_REQUEST_TYPE, CREATE_DEV_PRODUCT_URL, gameId),
        Method = "POST",
        Params = {
            name = params.name,
            description = params.description,
            priceInRobux = params.price,
            iconImageAssetId = iconAssetId,
        }
    }

    return Http.Request(requestInfo):
    andThen(function(response)
        local body = HttpService:JSONDecode(response)

        if not body then
            return Promise.reject()
        end

        local resultDevProduct = {
            [body.id] = {
                name = body.name,
                description = body.Description,
                iconImageAssetId = body.iconImageAssetId,
                price = params.price
            }
        }

        return resultDevProduct
    end)
    :catch(function(err)
		warn("Game Settings: Could not create Developer Product.")
		Analytics.onSaveError("DevProductCreatePost")
		return Promise.reject()
	end)
end

function DevProducts.Update(gameId, productId, params)
    local paramIcon = params.iconImageAssetId
    -- local iconAssetId
    -- local needAssetId = type(paramIcon) == "userdata" or
    --     type(paramIcon) == "string" and not string.find(params.iconImageAssetId, "rbxassetid://")

    -- if paramIcon and needAssetId then
    --     Promise.resolve(UploadIcon(params.iconImageAssetId)):andThen(function(assetId)
    --         iconAssetId = string.gsub(assetId, "rbxassetid://", "")
    --     end):await()
    -- end

    local requestInfo = {
        Url = Http.BuildRobloxUrl(DEV_PRODUCT_REQUEST_TYPE, UPDATE_DEV_PRODUCT_URL, gameId,  productId),
        Method = "POST",
        Body = HttpService:JSONEncode({
            Name = params.name,
            Description = params.description,
            -- IconImageAssetId = iconAssetId,
            IconImageAssetId = paramIcon,
            PriceInRobux = params.price,
        }),
    }

    return Http.Request(requestInfo):
    andThen(function(response)
        local body = HttpService:JSONDecode(response)

        if not body then
            return Promise.reject()
        end

        return {}
    end)
    :catch(function(err)
		warn("Game Settings: Could not update Developer Product with id: ", productId)
		Analytics.onSaveError("DevProductUpdatePost")
		return Promise.reject()
	end)
end

return DevProducts