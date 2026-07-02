export type AltTextErrorType = {
	ThumbnailId: string,
	ErrorMessage: string,
}

export type DeleteThumbnailType = {
	thumbnailId: string,
}

export type DragType = {
	index: number,
	thumbnailId: string,
}

export type PreviewThumbnailType = {
	index: number,
	thumbnailId: string,
	videoHash: string?,
	image: string?,
}

return nil
