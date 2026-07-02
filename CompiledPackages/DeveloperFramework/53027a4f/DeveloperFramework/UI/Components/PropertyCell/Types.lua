local TextInput = require(script.Parent.Parent.TextInput)

export type ImageProps = {
	Image: string,
	ImageRectOffset: Vector2?,
	ImageRectSize: Vector2?,
	Size: UDim2?,
}

export type ActionItem = {
	Id: string,
	Icon: string?,
	Label: string?,
	Tooltip: string?,
}

export type ActionSchema = {
	Type: "Actions",
	Items: ActionItem,
}

export type BreadcrumbSchema = {
	Type: "Breadcrumb",
	Delimiters: { string }?,
	Editing: boolean?,
	GetImageProps: ((text: string) -> ImageProps)?,
}

export type CheckboxSchema = {
	Type: "Checkbox",
	Label: string?,
}

export type EmptySchema = {
	Type: "Empty",
}

export type SliderSchema = {
	Type: "Slider",
	Min: number,
	Max: number,
	ShowInput: boolean?,
	InputPrecision: number?,
	SnapIncrement: number?,
}

export type SelectItem = {
	Id: string,
	Label: string,
}

export type SelectSchema = {
	Type: "Select",
	Items: { SelectItem },
	ItemHeight: number?,
}

export type SingleSelectButtonSchema = {
	Type: "SingleSelectButton",
	Items: { SelectItem },
}

export type NumberSchema = {
	Type: "Number",
	PlaceholderText: string?,
}

export type TextSchema = {
	Type: "Text",
	ItemHeight: number?,
	PlaceholderText: string?,
}

export type VectorSchema<T> = {
	Type: "Vector",
	Components: { string },
	Precision: number?,
	GetValue: (components: { number }) -> T,
	GetComponents: (value: T) -> { number },
}

export type PropertySchema =
	ActionSchema
	| BreadcrumbSchema
	| CheckboxSchema
	| EmptySchema
	| NumberSchema
	| SelectSchema
	| SingleSelectButtonSchema
	| SliderSchema
	| TextSchema
	| VectorSchema<any>

export type CustomSchema = {
	Type: string,
}

export type PropertyCellProps = {
	Disabled: boolean?,
	AnchorPoint: Vector2?,
	AutomaticSize: Enum.AutomaticSize?,
	CustomValidation: boolean?,
	ErrorMessage: string?,
	GetAutocompleteItems: ((string) -> { TextInput.AutocompleteItem }?)?,
	HasError: boolean?,
	Height: number?,
	LayoutOrder: number?,
	MinimumHeight: number?,
	OnChanged: (any) -> (),
	OnPressed: ((any) -> ())?,
	OnDoubleClick: ((any) -> ())?,
	OnRenderItem: ((any) -> any?)?,
	OnRightClick: ((any) -> ())?,
	PlaceholderText: string?,
	Position: UDim2?,
	Renderers: { [string]: (props: CustomSchema) -> any },
	Schema: PropertySchema,
	Size: UDim2?,
	Tooltip: string?,
	Value: any,
}

return {}
