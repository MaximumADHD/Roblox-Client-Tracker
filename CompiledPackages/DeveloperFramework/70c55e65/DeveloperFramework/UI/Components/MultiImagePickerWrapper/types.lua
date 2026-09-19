export type Order = { string }

export type BaseThumbnail = {
	altText: string?,
	approved: boolean,
	id: number,
}

export type TempThumbnail = {
	asset: any,
	tempId: number,
}

export type ImageThumbnail = {
	imageId: number,
}

export type VideoThumbnail = {
	videoHash: string,
	videoTitle: string,
}

export type Thumbnail = TempThumbnail | (BaseThumbnail & (ImageThumbnail | VideoThumbnail))

export type Thumbnails = {
	[string]: Thumbnail,
}

export type ThumbnailUpdateInfo = {
	ThumbnailAltTextsToUpdate: { [string]: string },
	ThumbnailFilesToAdd: { any },
	ThumbnailIdsToRemove: { number? },
	ThumbnailOrderToChange: Order,
}

return nil
