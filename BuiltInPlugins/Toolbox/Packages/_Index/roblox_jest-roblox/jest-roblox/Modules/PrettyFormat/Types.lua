-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/pretty-format/src/types.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

export type Colors = {
	comment: { close: string, open: string },
	content: { close: string, open: string },
	prop: { close: string, open: string },
	tag: { close: string, open: string },
	value: { close: string, open: string }
};
type Indent = (string) -> string;
export type Refs = { [number]: any };
type Print = (any) -> string;

export type Theme = {
	comment: string,
	content: string,
	prop: string,
	tag: string,
	value: string,
};

type ThemeReceived = {
	comment: string | nil,
	content: string | nil,
	prop: string | nil,
	tag: string | nil,
	value: string | nil,
};

export type Options = {
	callToJSON: boolean,
	escapeRegex: boolean,
	escapeString: boolean,
	highlight: boolean,
	indent: number,
	maxDepth: number,
	min: boolean,
	plugins: Plugins,
	printFunctionName: boolean,
	theme: Theme,
};

export type OptionsReceived = {
	callToJSON: boolean | nil,
	escapeRegex: boolean | nil,
	escapeString: boolean | nil,
	highlight: boolean | nil,
	indent: number | nil,
	maxDepth: number | nil,
	min: boolean | nil,
	plugins: Plugins | nil,
	printFunctionName: boolean | nil,
	theme: ThemeReceived | nil,
};

export type Config = {
	callToJSON: boolean,
	colors: Colors,
	escapeRegex: boolean,
	escapeString: boolean,
	indent: string,
	maxDepth: number,
	min: boolean,
	plugins: Plugins,
	printFunctionName: boolean,
	spacingInner: string,
	spacingOuter: string,
};

export type Printer = (
	any,
	Config,
	string,
	number,
	Refs,
	boolean | nil
) -> string;

type Test = (any) -> boolean;

export type NewPlugin = {
	serialize: (
		any,
		Config,
		string,
		number,
		Refs,
		Printer
	) -> string,
	test: Test,
};

type PluginOptions = {
	edgeSpacing: string,
	min: boolean,
	spacing: string,
};

export type OldPlugin = {
	print: (
		any,
		Print,
		Indent,
		PluginOptions,
		Colors
	) -> string,
	test: Test,
};

export type Plugin = NewPlugin | OldPlugin;

export type Plugins = { [number]: Plugin };

return {}