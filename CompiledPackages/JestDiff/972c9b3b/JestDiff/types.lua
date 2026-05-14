-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-diff/src/types.ts
--[[*
	* Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
	*
	* This source code is licensed under the MIT license found in the
	* LICENSE file in the root directory of this source tree.
]]

-- ROBLOX TODO: fix PrettyFormat types imports
type CompareKeys = ((a: string, b: string) -> number) | nil

export type DiffOptionsColor = (string) -> string

export type DiffOptions = {
	aAnnotation: string?,
	aColor: DiffOptionsColor?,
	aIndicator: string?,
	bAnnotation: string?,
	bColor: DiffOptionsColor?,
	bIndicator: string?,
	changeColor: DiffOptionsColor?,
	changeLineTrailingSpaceColor: DiffOptionsColor?,
	commonColor: DiffOptionsColor?,
	commonIndicator: string?,
	commonLineTrailingSpaceColor: DiffOptionsColor?,
	contextLines: number?,
	emptyFirstOrLastLinePlaceholder: string?,
	expand: boolean?,
	includeChangeCounts: boolean?,
	omitAnnotationLines: boolean?,
	patchColor: DiffOptionsColor?,
	compareKeys: CompareKeys?,
}

export type DiffOptionsNormalized = {
	aAnnotation: string,
	aColor: DiffOptionsColor,
	aIndicator: string,
	bAnnotation: string,
	bColor: DiffOptionsColor,
	bIndicator: string,
	changeColor: DiffOptionsColor,
	changeLineTrailingSpaceColor: DiffOptionsColor,
	commonColor: DiffOptionsColor,
	commonIndicator: string,
	commonLineTrailingSpaceColor: DiffOptionsColor,
	compareKeys: CompareKeys,
	contextLines: number,
	emptyFirstOrLastLinePlaceholder: string,
	expand: boolean,
	includeChangeCounts: boolean,
	omitAnnotationLines: boolean,
	patchColor: DiffOptionsColor,
}

return {}
