export type AssetThumbnailTileProps = {
	AssetIds: {[number]: any},
	DefaultThumbnail: string,
	OnThumbnailClick: (string, boolean) -> (),
	LayoutOrder: number,
	SelectedTiles: {[any]: boolean},
	AssetsInfo: {[any]: any},
}

return nil