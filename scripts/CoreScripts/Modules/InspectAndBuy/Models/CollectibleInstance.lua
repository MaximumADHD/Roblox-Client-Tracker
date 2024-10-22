export type CollectibleItemInstanceModel = {
	collectibleInstanceId: string?,
	collectibleItemId: string?,
	collectibleProductId: string?,
	serialNumber: number?,
	instanceState: string?,
	saleState: string?,
	price: number?,
}

local CollectibleInstance = {}

function CollectibleInstance.new()
	local self = {}

	return self
end

function CollectibleInstance.fromGetCollectibleItemInstances(data): CollectibleItemInstanceModel
	local collectibleInstance = {}

	collectibleInstance.collectibleInstanceId = data.collectibleInstanceId
	collectibleInstance.collectibleItemId = data.collectibleItemId
	collectibleInstance.collectibleProductId = data.collectibleProductId
	collectibleInstance.serialNumber = data.serialNumber
	collectibleInstance.instanceState = data.instanceState
	collectibleInstance.saleState = data.saleState
	collectibleInstance.price = data.price

	return collectibleInstance
end

return CollectibleInstance
