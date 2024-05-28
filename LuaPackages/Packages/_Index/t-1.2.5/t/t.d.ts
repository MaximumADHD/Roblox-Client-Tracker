/** checks to see if `value` is a T */
type check<T> = (value: unknown) => value is T;

interface t {
	// lua types
	/** checks to see if `value` is an any */
	any: check<any>;
	/** checks to see if `value` is a boolean */
	boolean: check<boolean>;
	/** checks to see if `value` is a thread */
	thread: check<thread>;
	/** checks to see if `value` is a Function */
	callback: check<Function>;
	/** checks to see if `value` is undefined */
	none: check<undefined>;
	/** checks to see if `value` is a number, will _not_ match NaN */
	number: check<number>;
	/** checks to see if `value` is NaN */
	nan: check<number>;
	/** checks to see if `value` is a string */
	string: check<string>;
	/** checks to see if `value` is an object */
	table: check<object>;
	/** checks to see if `value` is a userdata */
	userdata: check<object>;

	// roblox types
	/** checks to see if `value` is an Axes */
	Axes: check<Axes>;
	/** checks to see if `value` is a BrickColor */
	BrickColor: check<BrickColor>;
	/** checks to see if `value` is a CFrame */
	CFrame: check<CFrame>;
	/** checks to see if `value` is a Color3 */
	Color3: check<Color3>;
	/** checks to see if `value` is a ColorSequence */
	ColorSequence: check<ColorSequence>;
	/** checks to see if `value` is a ColorSequenceKeypoint */
	ColorSequenceKeypoint: check<ColorSequenceKeypoint>;
	/** checks to see if `value` is a DockWidgetPluginGuiInfo */
	DockWidgetPluginGuiInfo: check<DockWidgetPluginGuiInfo>;
	/** checks to see if `value` is a Faces */
	Faces: check<Faces>;
	/** checks to see if `value` is an Instance */
	Instance: check<Instance>;
	/** checks to see if `value` is a NumberRange */
	NumberRange: check<NumberRange>;
	/** checks to see if `value` is a NumberSequence */
	NumberSequence: check<NumberSequence>;
	/** checks to see if `value` is a NumberSequenceKeypoint */
	NumberSequenceKeypoint: check<NumberSequenceKeypoint>;
	/** checks to see if `value` is a PathWaypoint */
	PathWaypoint: check<PathWaypoint>;
	/** checks to see if `value` is a PhysicalProperties */
	PhysicalProperties: check<PhysicalProperties>;
	/** checks to see if `value` is a Random */
	Random: check<Random>;
	/** checks to see if `value` is a Ray */
	Ray: check<Ray>;
	/** checks to see if `value` is a Rect */
	Rect: check<Rect>;
	/** checks to see if `value` is a Region3 */
	Region3: check<Region3>;
	/** checks to see if `value` is a Region3int16 */
	Region3int16: check<Region3int16>;
	/** checks to see if `value` is a TweenInfo */
	TweenInfo: check<TweenInfo>;
	/** checks to see if `value` is a UDim */
	UDim: check<UDim>;
	/** checks to see if `value` is a UDim2 */
	UDim2: check<UDim2>;
	/** checks to see if `value` is a Vector2 */
	Vector2: check<Vector2>;
	/** checks to see if `value` is a Vector3 */
	Vector3: check<Vector3>;
	/** checks to see if `value` is a Vector3int16 */
	Vector3int16: check<Vector3int16>;
	/** checks to see if `value` is a RBXScriptSignal */
	RBXScriptSignal: check<RBXScriptSignal>;
	/** checks to see if `value` is a RBXScriptConnection */
	RBXScriptConnection: check<RBXScriptConnection>;

	/**
	 * checks to see if `value == literalValue`
	 */
	literal<T extends string | number | boolean | undefined>(this: void, literalValue: T): check<T>;
	literal<T extends Array<any>>(
		this: void,
		...args: T
	): T extends [infer A]
		? (value: unknown) => value is A
		: T extends [infer A, infer B]
		? check<A | B>
		: T extends [infer A, infer B, infer C]
		? check<A | B | C>
		: T extends [infer A, infer B, infer C, infer D]
		? check<A | B | C | D>
		: T extends [infer A, infer B, infer C, infer D, infer E]
		? check<A | B | C | D | E>
		: T extends [infer A, infer B, infer C, infer D, infer E, infer F]
		? check<A | B | C | D | E | F>
		: never;
	literal<T>(this: void, literalValue: T): (value: unknown) => value is T;

	/** Returns a t.union of each key in the table as a t.literal */
	keyOf: <T>(valueTable: T) => check<keyof T>;

	/** Returns a t.union of each value in the table as a t.literal */
	valueOf: <T>(valueTable: T) => T extends { [P in keyof T]: infer U } ? check<U> : never;

	/** checks to see if `value` is an integer */
	integer: (value: unknown) => value is number;
	/** checks to see if `value` is a number and is more than or equal to `min` */
	numberMin: (min: number) => (value: unknown) => value is number;
	/** checks to see if `value` is a number and is less than or equal to `max` */
	numberMax: (max: number) => (value: unknown) => value is number;
	/** checks to see if `value` is a number and is more than `min` */
	numberMinExclusive: (min: number) => (value: unknown) => value is number;
	/** checks to see if `value` is a number and is less than `max` */
	numberMaxExclusive: (max: number) => (value: unknown) => value is number;
	/** checks to see if `value` is a number and is more than 0 */
	numberPositive: (value: unknown) => value is number;
	/** checks to see if `value` is a number and is less than 0 */
	numberNegative: (value: unknown) => value is number;
	/** checks to see if `value` is a number and `min <= value <= max` */
	numberConstrained: (min: number, max: number) => (value: unknown) => value is number;
	/** checks to see if `value` is a number and `min < value < max` */
	numberConstrainedExclusive: (min: number, max: number) => (value: unknown) => value is number;
	/** checks `t.string` and determines if value matches the pattern via `string.match(value, pattern)` */
	match: (pattern: string) => check<string>;
	/** checks to see if `value` is either nil or passes `check` */
	optional: <T>(check: (value: unknown) => value is T) => check<T | undefined>;
	/** checks to see if `value` is a table and if its keys match against `check */
	keys: <T>(check: (value: unknown) => value is T) => check<Map<T, unknown>>;
	/** checks to see if `value` is a table and if its values match against `check` */
	values: <T>(check: (value: unknown) => value is T) => check<Map<unknown, T>>;
	/** checks to see if `value` is a table and all of its keys match against `keyCheck` and all of its values match against `valueCheck` */
	map: <K, V>(
		keyCheck: (value: unknown) => value is K,
		valueCheck: (value: unknown) => value is V
	) => check<Map<K, V>>;
	/** checks to see if `value` is an array and all of its keys are sequential integers and all of its values match `check` */
	array: <T>(check: (value: unknown) => value is T) => check<Array<T>>;

	/** checks to see if `value` matches any given check */
	union: <T extends Array<any>>(
		...args: T
	) => T extends [check<infer A>]
		? (value: unknown) => value is A
		: T extends [check<infer A>, check<infer B>]
		? check<A | B>
		: T extends [check<infer A>, check<infer B>, check<infer C>]
		? check<A | B | C>
		: T extends [check<infer A>, check<infer B>, check<infer C>, check<infer D>]
		? check<A | B | C | D>
		: T extends [check<infer A>, check<infer B>, check<infer C>, check<infer D>, check<infer E>]
		? check<A | B | C | D | E>
		: T extends [check<infer A>, check<infer B>, check<infer C>, check<infer D>, check<infer E>, check<infer F>]
		? check<A | B | C | D | E | F>
		: never;

	/** checks to see if `value` matches all given checks */
	intersection: <T extends Array<any>>(
		...args: T
	) => T extends [check<infer A>]
		? (value: unknown) => value is A
		: T extends [check<infer A>, check<infer B>]
		? check<A & B>
		: T extends [check<infer A>, check<infer B>, check<infer C>]
		? check<A & B & C>
		: T extends [check<infer A>, check<infer B>, check<infer C>, check<infer D>]
		? check<A & B & C & D>
		: T extends [check<infer A>, check<infer B>, check<infer C>, check<infer D>, check<infer E>]
		? check<A & B & C & D & E>
		: T extends [check<infer A>, check<infer B>, check<infer C>, check<infer D>, check<infer E>, check<infer F>]
		? check<A & B & C & D & E & F>
		: never;

	/** checks to see if `value` matches a given interface definition */
	interface: <T extends { [index: string]: (value: unknown) => value is any }>(
		checkTable: T
	) => check<{ [P in keyof T]: t.static<T[P]> }>;

	/** checks to see if `value` matches a given interface definition with no extra members */
	strictInterface: <T extends { [index: string]: (value: unknown) => value is any }>(
		checkTable: T
	) => check<{ [P in keyof T]: t.static<T[P]> }>;

	instanceOf<S extends keyof Instances>(this: void, className: S): check<Instances[S]>;
	instanceOf<S extends keyof Instances, T extends { [index: string]: (value: unknown) => value is any }>(
		this: void,
		className: S,
		checkTable: T
	): check<Instances[S] & { [P in keyof T]: t.static<T[P]> }>;

	instanceIsA<S extends keyof Instances>(this: void, className: S): check<Instances[S]>;
	instanceIsA<S extends keyof Instances, T extends { [index: string]: (value: unknown) => value is any }>(
		this: void,
		className: S,
		checkTable: T
	): check<Instances[S] & { [P in keyof T]: t.static<T[P]> }>;

	children: <T extends { [index: string]: (value: unknown) => value is any }>(
		checkTable: T
	) => check<Instance & { [P in keyof T]: t.static<T[P]> }>;
}

declare namespace t {
	/** creates a static type from a t-defined type */
	export type static<T> = T extends check<infer U> ? U : never;
}

declare const t: t;
export = t;
