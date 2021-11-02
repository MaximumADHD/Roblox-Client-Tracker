-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/pretty-format/src/__tests__/AsymmetricMatcher.test.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

return function()
	local Workspace = script.Parent.Parent
	local Modules = Workspace.Parent

	local PrettyFormat = require(Workspace)
	local prettyFormat = PrettyFormat.prettyFormat
	local AsymmetricMatcher = PrettyFormat.plugins.AsymmetricMatcher

	local jestExpect = require(Modules.Expect)

	-- deviation: don't need fnNameFor

	beforeEach(function()
		options = {plugins = {AsymmetricMatcher}}
	end)

	-- deviation: modified to use our implementation of Any
	for _, type_ in ipairs(
		{
			'number',
			'string',
			'function',
			'table',
		}
	) do
		it(string.format('supports any(%s)', type_), function()
			local result = prettyFormat(jestExpect.any(type_), options)
			expect(result).to.equal(string.format('Any<%s>', type_))
		end)

		it(string.format('supports nested any(%s)', type_), function()
			local result = prettyFormat(
				{
					test = {
						nested = jestExpect.any(type_)
					}
				},
				options
			)
			expect(result).to.equal(
				string.format(
					'Table {\n  "test": Table {\n    "nested": Any<%s>,\n  },\n}',
					type_
				)
			)
		end)
	end

	it('anything()', function()
		local result = prettyFormat(jestExpect.anything(), options)
		expect(result).to.equal('Anything')
	end)

	it('arrayContaining()', function()
		local result = prettyFormat(jestExpect.arrayContaining({1, 2}), options)
		expect(result).to.equal(
			'ArrayContaining [\n' ..
			'  1,\n' ..
			'  2,\n' ..
			']'
		)
	end)

	it('arrayNotContaining()', function()
		local result = prettyFormat(jestExpect.never.arrayContaining({1, 2}), options)
		expect(result).to.equal(
			'ArrayNotContaining [\n' ..
			'  1,\n' ..
			'  2,\n' ..
			']'
		)
	end)

	it('objectContaining()', function()
		local result = prettyFormat(jestExpect.objectContaining({a = 'test'}), options)
		expect(result).to.equal(
			'ObjectContaining {\n' ..
			'  "a": "test",\n' ..
			'}'
		)
	end)

	it('objectNotContaining()', function()
		local result = prettyFormat(
			jestExpect.never.objectContaining({a = 'test'}),
			options
		)
		expect(result).to.equal(
			'ObjectNotContaining {\n' ..
			'  "a": "test",\n' ..
			'}'
		)
	end)

	it('stringContaining(string)', function()
		local result = prettyFormat(jestExpect.stringContaining('jest'), options)
		expect(result).to.equal('StringContaining "jest"')
	end)

	-- deviation: custom test for stringContaining to test Lua patterns
	it('stringContaining(string with magic characters)', function()
		local result = prettyFormat(jestExpect.stringContaining('jest*'), options)
		expect(result).to.equal('StringContaining "jest*"')
	end)

	it('never.stringContaining(string)', function()
		local result = prettyFormat(jestExpect.never.stringContaining('jest'), options)
		expect(result).to.equal('StringNotContaining "jest"')
	end)

	-- deviation: we use Lua string patterns instead of regex
	it('stringMatching(string)', function()
		local result = prettyFormat(jestExpect.stringMatching('jest'), options)
		expect(result).to.equal('StringMatching "jest"')
	end)

	-- deviation: modified to remove alternations
	it('stringMatching(pattern)', function()
		local result = prettyFormat(jestExpect.stringMatching('(jest).*'), options)
		expect(result).to.equal('StringMatching "(jest).*"')
	end)

	-- deviation: omitted, escapeRegex doesn't do anything since we don't have regex

	it('stringNotMatching(string)', function()
		local result = prettyFormat(jestExpect.never.stringMatching('jest'), options)
		expect(result).to.equal('StringNotMatching "jest"')
	end)

	it('supports multiple nested asymmetric matchers', function()
		local result = prettyFormat(
			{
				test = {
					nested = jestExpect.objectContaining({
						a = jestExpect.arrayContaining({1}),
						b = jestExpect.anything(),
						c = jestExpect.any('string'),
						d = jestExpect.stringContaining('jest'),
						e = jestExpect.stringMatching('jest'),
						f = jestExpect.objectContaining({test = 'case'}),
					}),
				},
			},
			options
		)
		expect(result).to.equal(
			'Table {\n' ..
			'  "test": Table {\n' ..
			'    "nested": ObjectContaining {\n' ..
			'      "a": ArrayContaining [\n' ..
			'        1,\n' ..
			'      ],\n' ..
			'      "b": Anything,\n' ..
			'      "c": Any<string>,\n' ..
			'      "d": StringContaining "jest",\n' ..
			'      "e": StringMatching "jest",\n' ..
			'      "f": ObjectContaining {\n' ..
			'        "test": "case",\n' ..
			'      },\n' ..
			'    },\n' ..
			'  },\n' ..
			'}'
		)
	end)

	-- deviation: our prettyFormat collapses Object{} and Array[] into just Table{}
	describe('indent option', function()
		local val = {
			nested = jestExpect.objectContaining({
				a = jestExpect.arrayContaining({1}),
				b = jestExpect.anything(),
				c = jestExpect.any('string'),
				d = jestExpect.stringContaining('jest'),
				e = jestExpect.stringMatching('jest'),
				f = jestExpect.objectContaining({
					composite = {'exact', 'match'},
					primitive = 'string',
				}),
			}),
		}
		local result = 'Table {\n' ..
			'  "nested": ObjectContaining {\n' ..
			'    "a": ArrayContaining [\n' ..
			'      1,\n' ..
			'    ],\n' ..
			'    "b": Anything,\n' ..
			'    "c": Any<string>,\n' ..
			'    "d": StringContaining "jest",\n' ..
			'    "e": StringMatching "jest",\n' ..
			'    "f": ObjectContaining {\n' ..
			'      "composite": Table {\n' ..
			'        "exact",\n' ..
			'        "match",\n' ..
			'      },\n' ..
			'      "primitive": "string",\n' ..
			'    },\n' ..
			'  },\n' ..
			'}'

		it('default implicit: 2 spaces', function()
			expect(prettyFormat(val, options)).to.equal(result)
		end)
		it('default explicit: 2 spaces', function()
			options.indent = 2
			expect(prettyFormat(val, options)).to.equal(result)
		end)

		-- // Tests assume that no strings in val contain multiple adjacent spaces!
		it('non-default: 0 spaces', function()
			options.indent = 0
			expect(prettyFormat(val, options)).to.equal(result:gsub('  ', ''))
		end)
		it('non-default: 4 spaces', function()
			options.indent = 4
			expect(prettyFormat(val, options)).to.equal(result:gsub('  ', '    '))
		end)
	end)

	describe('maxDepth option', function()
		it('matchers as leaf nodes', function()
			options.maxDepth = 2;
			local val = {
				-- // ++depth === 1
				nested = {
					-- // ++depth === 2
					jestExpect.arrayContaining(
						-- // ++depth === 3
						{1}
					),
					jestExpect.objectContaining({
						-- // ++depth === 3
						composite = {'exact', 'match'},
						primitive = 'string',
					}),
					jestExpect.stringContaining('jest'),
					jestExpect.stringMatching('jest'),
					jestExpect.any('string'),
					jestExpect.anything(),
				},
			}
			local result = prettyFormat(val, options);
			expect(result).to.equal(
				'Table {\n' ..
				'  "nested": Table {\n' ..
				'    [ArrayContaining],\n' ..
				'    [ObjectContaining],\n' ..
				'    StringContaining "jest",\n' ..
				'    StringMatching "jest",\n' ..
				'    Any<string>,\n' ..
				'    Anything,\n' ..
				'  },\n' ..
				'}'
			)
		end)
		it('matchers as internal nodes', function()
			options.maxDepth = 2
			local val = {
				-- // ++depth === 1
				jestExpect.arrayContaining({
					-- // ++depth === 2
					'printed',
					{
						-- // ++depth === 3
						properties = 'not printed',
					},
				}),
				jestExpect.objectContaining({
					-- // ++depth === 2
					array = {
						-- // ++depth === 3
						'items',
						'not',
						'printed',
					},
					primitive = 'printed',
				}),
			}
			local result = prettyFormat(val, options)
			expect(result).to.equal(
				'Table {\n' ..
				'  ArrayContaining [\n' ..
				'    "printed",\n' ..
				'    [Table],\n' ..
				'  ],\n' ..
				'  ObjectContaining {\n' ..
				'    "array": [Table],\n' ..
				'    "primitive": "printed",\n' ..
				'  },\n' ..
				'}'
			)
		end)
	end)

	it('min option', function()
		options.min = true
		local result = prettyFormat(
			{
			  test = {
				nested = jestExpect.objectContaining({
				  a = jestExpect.arrayContaining({1}),
				  b = jestExpect.anything(),
				  c = jestExpect.any('string'),
				  d = jestExpect.stringContaining('jest'),
				  e = jestExpect.stringMatching('jest'),
				  f = jestExpect.objectContaining({test = 'case'}),
				}),
			  },
			},
			options
		)
		expect(result).to.equal(
			'{' ..
				'"test": {' ..
					'"nested": ObjectContaining {' ..
						'"a": ArrayContaining [1], ' ..
						'"b": Anything, '..
						'"c": Any<string>, ' ..
						'"d": StringContaining "jest", ' ..
						'"e": StringMatching "jest", ' ..
						'"f": ObjectContaining {"test": "case"}' ..
					'}' ..
				'}' ..
			'}'
		)
	end)
end