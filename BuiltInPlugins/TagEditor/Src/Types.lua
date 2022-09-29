export type Tag = {
	Name: string,
	Icon: string,
	Visible: boolean,
	DrawType: string,
	Color: Color3,
	AlwaysOnTop: boolean,
	Group: string?,
	HasSome: boolean?,
	HasAll: boolean?,
}

export type Array<T> = { [number]: T }

export type Table<T, V> = { [T]: V }

return nil
