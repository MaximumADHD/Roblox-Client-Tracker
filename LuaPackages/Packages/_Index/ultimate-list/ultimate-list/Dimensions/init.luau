local Dimensions = {}

export type Dimensions<T> =
	{
		type: "getter",
		callback: (value: T, index: number) -> UDimRect,
	}
	| {
		type: "consistentSize",
		size: number,
	}
	| {
		type: "consistentUDim2",
		udim2: UDim2,
	}
	| {
		type: "spaced",
		spacing: number,
		inner: Dimensions<T>,
	}

export type UDimRect = {
	size: UDim2,
	position: UDim2,
}

function Dimensions.getter<T>(callback: (value: T, index: number) -> UDimRect): Dimensions<T>
	return {
		type = "getter",
		callback = callback,
	}
end

function Dimensions.consistentSize<T>(size: number): Dimensions<T>
	return {
		type = "consistentSize",
		size = size,
	}
end

function Dimensions.consistentUDim2<T>(udim2: UDim2): Dimensions<T>
	return {
		type = "consistentUDim2",
		udim2 = udim2,
	}
end

function Dimensions.withSpacing<T>(inner: Dimensions<T>, spacing: number): Dimensions<T>
	assert(
		inner.type ~= "getter",
		"withSpacing does not support getter. Instead, include your padding as part of your returned position."
	)

	if inner.type == "spaced" then
		return Dimensions.withSpacing(inner.inner, spacing)
	end

	return {
		type = "spaced",
		spacing = spacing,
		inner = inner,
	}
end

return Dimensions
