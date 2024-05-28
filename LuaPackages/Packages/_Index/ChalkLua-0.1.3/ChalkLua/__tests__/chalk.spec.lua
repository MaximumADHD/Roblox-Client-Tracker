return function()
	local chalk = require(script.Parent.Parent)

	local function ansi16(code)
		return string.format(
			'%c[%dm',
			27,
			code
		)
	end

	local function ansi256(code)
		return string.format(
			'%c[%d;5;%dm',
			27,
			38,
			code
		)
	end

	local function bgAnsi256(code)
		return string.format(
			'%c[%d;5;%dm',
			27,
			48,
			code
		)
	end

	it("don't add any styling when called as the base function", function()
		expect(chalk('foo')).to.equal('foo')
	end)

	it("calls tostring on input", function()
		expect(chalk(123)).to.equal('123')
	end)

	it("styles string", function()
		expect(chalk.underline('foo')).to.equal(
			string.format('%sfoo%s', ansi16(4), ansi16(24))
		)
		expect(chalk.red('foo')).to.equal(
			string.format('%sfoo%s', ansi16(31), ansi16(39))
		)
		expect(chalk.bgRed('foo')).to.equal(
			string.format('%sfoo%s', ansi16(41), ansi16(49))
		)
	end)

	it("supports applying multiple styles at once", function()
		expect(chalk.red(chalk.bgGreen(chalk.underline('foo')))).to.equal(
			string.format(
				'%s%s%sfoo%s%s%s',
				ansi16(31), ansi16(42), ansi16(4),
				ansi16(24), ansi16(49), ansi16(39)
			)
		)
		expect(chalk.underline(chalk.red(chalk.bgGreen('foo')))).to.equal(
			string.format(
				'%s%s%sfoo%s%s%s',
				ansi16(4), ansi16(31), ansi16(42),
				ansi16(49), ansi16(39), ansi16(24)
			)
		)
	end)

	it("supports nesting styles of different types", function()
		expect(chalk.red('r' .. chalk.bold('b') .. 'r')).to.equal(
			string.format(
				'%sr%sb%sr%s',
				ansi16(31), ansi16(1),
				ansi16(22), ansi16(39)
			)
		)
	end)

	it("reset all styles with .reset()", function()
		expect(chalk.reset(chalk.red(chalk.bgGreen(chalk.underline('foo'))))).to.equal(
			string.format(
				'%s%s%s%sfoo%s%s%s%s',
				ansi16(0), ansi16(31), ansi16(42), ansi16(4),
				ansi16(24), ansi16(49), ansi16(39), ansi16(0)
			)
		)
	end)

	it("supports composing multiple styles", function()
		local redBold = chalk.red..chalk.bold
		expect(redBold('foo')).to.equal(
			string.format(
				'%s%sfoo%s%s',
				ansi16(31), ansi16(1),
				ansi16(22), ansi16(39)
			)
		)
	end)

	describe("aliases for gray", function()
		local gray = chalk.gray('foo')
		local bgGray = chalk.bgGray('foo')

		it("grey", function()
			expect(chalk.grey('foo')).to.equal(gray)
		end)

		it("blackBright", function()
			expect(chalk.blackBright('foo')).to.equal(gray)
		end)

		it("bgGrey", function()
			expect(chalk.bgGrey('foo')).to.equal(bgGray)
		end)

		it("bgBlackBright", function()
			expect(chalk.bgBlackBright('foo')).to.equal(bgGray)
		end)
	end)

	it("don't output escape codes if the input is empty", function()
		expect(chalk.red()).to.equal('')
		expect(chalk.red('')).to.equal('')
		expect(chalk.red(chalk.blue(chalk.black()))).to.equal('')
		expect(chalk.red(chalk.blue(chalk.black('')))).to.equal('')
	end)

	it("don't output escape codes if level is 0", function()
		chalk.level = 0
		expect(chalk.red('red')).to.equal('red')
		chalk.level = 2
	end)

	it("should work across line breaks", function()
		expect(chalk.red("hello\nworld")).to.equal(
			string.format('%shello\nworld%s', ansi16(31), ansi16(39))
		)
	end)

	describe(".ansi()", function()
		it(".ansi()", function()
			expect(chalk.ansi(31)('foo')).to.equal(chalk.red('foo'))
		end)

		it(".bgAnsi()", function()
			expect(chalk.bgAnsi(41)('foo')).to.equal(chalk.bgRed('foo'))
		end)

		it(".ansi() doesn't output escape codes for invalid inputs", function()
			expect(chalk.ansi(999)('foo')).to.equal('foo')
		end)

		it(".bgAnsi() doesn't output escape codes for invalid inputs", function()
			expect(chalk.bgAnsi(999)('foo')).to.equal('foo')
		end)
	end)

	describe(".ansi256()", function()
		it(".ansi256()", function()
			expect(chalk.ansi256(196)('foo')).to.equal(
				string.format('%sfoo%s', ansi256(196), ansi16(39))
			)
		end)

		it(".bgAnsi256()", function()
			expect(chalk.bgAnsi256(196)('foo')).to.equal(
				string.format('%sfoo%s', bgAnsi256(196), ansi16(49))
			)
		end)

		it(".ansi256() doesn't output escape codes for invalid inputs", function()
			expect(chalk.ansi256(999)('foo')).to.equal('foo')
		end)

		it(".bgAnsi256() doesn't output escape codes for invalid inputs", function()
			expect(chalk.bgAnsi256(999)('foo')).to.equal('foo')
		end)
	end)

	describe(".rgb()", function()
		it(".rgb()", function()
			expect(chalk.rgb(255, 0, 0)('foo')).to.equal(
				string.format(
					'%sfoo%s',
					ansi256(196), ansi16(39)
				)
			)
		end)

		it(".bgRgb()", function()
			expect(chalk.bgRgb(255, 0, 0)('foo')).to.equal(
				string.format(
					'%sfoo%s',
					bgAnsi256(196), ansi16(49)
				)
			)
		end)

		it("composes with modifiers", function()
			local redBold = chalk.rgb(255, 0, 0)..chalk.bold
			expect(redBold('foo')).to.equal(
				string.format(
					'%s%sfoo%s%s',
					ansi256(196), ansi16(1),
					ansi16(22), ansi16(39)
				)
			)
		end)

		it("clamps to 16", function()
			expect(chalk.rgb(0, 0, 0)('foo')).to.equal(
				string.format(
					'%sfoo%s',
					ansi256(16), ansi16(39)
				)
			)
		end)

		it("clamps to 231", function()
			expect(chalk.rgb(255, 255, 255)('foo')).to.equal(
				string.format(
					'%sfoo%s',
					ansi256(231), ansi16(39)
				)
			)
		end)

		it(".rgb() doesn't output escape codes for invalid inputs", function()
			expect(chalk.rgb(false)('foo')).to.equal('foo')
			expect(chalk.rgb(999, 999, 999)('foo')).to.equal('foo')
		end)

		it(".bgRgb() doesn't output escape codes for invalid inputs", function()
			expect(chalk.bgRgb(false)('foo')).to.equal('foo')
			expect(chalk.bgRgb(999, 999, 999)('foo')).to.equal('foo')
		end)
	end)

	describe(".hex()", function()
		it(".hex()", function()
			expect(chalk.hex('#ff0000')('foo')).to.equal(
				string.format(
					'%sfoo%s',
					ansi256(196), ansi16(39)
				)
			)
		end)

		it(".bgHex()", function()
			expect(chalk.bgHex('#ff0000')('foo')).to.equal(
				string.format(
					'%sfoo%s',
					bgAnsi256(196), ansi16(49)
				)
			)
		end)

		it("composes with modifiers", function()
			local redBold = chalk.hex('#ff0000')..chalk.bold
			expect(redBold('foo')).to.equal(
				string.format(
					'%s%sfoo%s%s',
					ansi256(196), ansi16(1),
					ansi16(22), ansi16(39)
				)
			)
		end)

		it("clamps to 16", function()
			expect(chalk.hex('#000000')('foo')).to.equal(
				string.format(
					'%sfoo%s',
					ansi256(16), ansi16(39)
				)
			)
		end)

		it("clamps to 231", function()
			expect(chalk.hex('#FFFFFF')('foo')).to.equal(
				string.format(
					'%sfoo%s',
					ansi256(231), ansi16(39)
				)
			)
		end)

		it(".hex() doesn't output escape codes for invalid inputs", function()
			expect(chalk.hex(false)('foo')).to.equal('foo')
			expect(chalk.hex('#XXX')('foo')).to.equal('foo')
			expect(chalk.hex('#FFFFFFF')('foo')).to.equal('foo')
		end)

		it(".bgHex() doesn't output escape codes for invalid inputs", function()
			expect(chalk.bgHex(false)('foo')).to.equal('foo')
			expect(chalk.bgHex('#XXX')('foo')).to.equal('foo')
			expect(chalk.bgHex('#FFFFFFF')('foo')).to.equal('foo')
		end)
	end)
end