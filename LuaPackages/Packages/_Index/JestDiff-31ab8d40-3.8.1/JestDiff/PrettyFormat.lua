--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
-- ROBLOX NOTE: no upstream
-- ROBLOX TODO: fix PrettyFormat types imports

type CompareKeys = ((a: string, b: string) -> number) | nil

type Plugin = any

export type Plugins = { [number]: Plugin }

type ThemeReceived = {
	comment: string?,
	content: string?,
	prop: string?,
	tag: string?,
	value: string?,
}

export type PrettyFormatOptions = {
	callToJSON: boolean?,
	compareKeys: CompareKeys,
	escapeRegex: boolean?,
	escapeString: boolean?,
	highlight: boolean?,
	indent: number?,
	maxDepth: number?,
	min: boolean?,
	plugins: Plugins?,
	printBasicPrototype: boolean?,
	printInstanceDefaults: boolean?,
	printFunctionName: boolean?,
	theme: ThemeReceived?,
}

export type OptionsReceived = PrettyFormatOptions

return {}
