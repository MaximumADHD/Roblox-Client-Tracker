-- upstream: https://github.com/facebook/jest/blob/v27.2.5/packages/jest-diff/src/types.ts

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
	patchColor: DiffOptionsColor?
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
	contextLines: number,
	emptyFirstOrLastLinePlaceholder: string,
	expand: boolean,
	includeChangeCounts: boolean,
	omitAnnotationLines: boolean,
	patchColor: DiffOptionsColor
}

return {}