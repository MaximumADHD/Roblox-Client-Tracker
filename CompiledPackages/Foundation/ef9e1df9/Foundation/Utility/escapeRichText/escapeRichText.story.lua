local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local escapeRichText = require(Foundation.Utility.escapeRichText)

local function SideBySideStory(props)
	local inputText = props.controls.inputText

	return React.createElement(View, {
		tag = "size-full-0 col gap-small",
	}, {
		React.createElement(Text, {
			tag = "size-full-0 auto-y text-align-x-left text-wrap",
			Text = `<b>Unescaped</b><br/>{inputText}`,
			RichText = true,
		}),
		React.createElement(Text, {
			tag = "size-full-0 auto-y text-align-x-left text-wrap",
			Text = `<b>Escaped</b><br/>{escapeRichText(inputText)}`,
			RichText = true,
		}),
	})
end

local extremeRichText = [[
<b><i><u><s><font color="#FF00FF" face="GothamBlack" size="48">🎮 ULTRA <stroke color="#00FFFF" joins="miter" thickness="3" transparency="0.5">NESTED</stroke> TEST 🎮</font></s></u></i></b>

<font color="rgb(255,128,0)" size="24">Testing <b>bold with <i>italic &amp; <u>underline + <s>strikethrough + <smallcaps>smallcaps</smallcaps></s></u></i></b></font>

<font family="rbxasset://fonts/families/SourceSansPro.json" size="18">Special chars: &lt; &gt; &amp; &quot; &apos;</font>

<br/><br/><br/>

<font color="#FF0000">R<font color="#FF3300">A<font color="#FF6600">I<font color="#FF9900">N<font color="#FFCC00">B<font color="#FFFF00">O<font color="#CCFF00">W</font></font></font></font></font></font></font>

<stroke color="#FF0000" joins="round" thickness="5"><stroke color="#00FF00" joins="bevel" thickness="3"><stroke color="#0000FF" joins="miter" thickness="1">TRIPLE STROKE</stroke></stroke></stroke>

<!-- This is a comment with special chars: &lt; &gt; &amp; "quotes" 'apostrophes' -->

<uppercase><b>SCREAMING <smallcaps>with SMALLCAPS</smallcaps> INSIDE</b></uppercase>

<uc><sc>BOTH SHORTHAND TAGS</sc></uc>

<font color="rgb(255,255,255)" face="GothamBlack" size="100" transparency="0.9" weight="Heavy">
  <stroke color="#000000" joins="miter" thickness="10" transparency="0.1" sizing="fixed">
    <b><i><u><s>
      KITCHEN SINK: &lt;tag&gt; "quotes" 'apostrophes' &amp; ampersands 🚀
    </s></u></i></b>
  </stroke>
</font>

<mark color="#009966" transparency="0">HIGHLIGHTED <b><i>NESTED</i></b> TEXT</mark>

<font size="1">tiny</font> vs <font size="100">MASSIVE</font><br/>
<stroke thickness="0.5">thin</stroke> vs <stroke thickness="20">THICK</stroke><br/>
<font transparency="0">opaque</font> vs <font transparency="0.95">nearly invisible</font>

<font weight="100">Thin</font> <font weight="200">ExtraLight</font> <font weight="300">Light</font> <font weight="400">Regular</font> <font weight="500">Medium</font> <font weight="600">SemiBold</font> <font weight="700">Bold</font> <font weight="800">ExtraBold</font> <font weight="900">Heavy</font>

<font weight="thin">thin</font> <font weight="HEAVY">heavy</font> <font weight="bold">bold</font>

<font color="#FF0000">Unicode: Ǩ̷͇̫̲̳̹̼͋̒͂͗̕ḻ̴̢̛̫̳̹̼͋̒͂͗͋A̷͇̫̲̳̹̼͋̒͂͗̕L̴̢̛̫̳̹̼͋̒͂͗͋G̷͇̫̲̳̹̼͋̒͂͗̕Ơ̴̢̫̳̹̼͋̒͂͗͋ 日本語 العربية 🔥</font>

<uppercase><smallcaps><b><i><u><s>
  <font color="#FF00FF" face="Michroma" size="72" transparency="0.5" weight="900">
    <stroke color="#00FFFF" joins="miter" thickness="8" transparency="0.2" sizing="scaled">
      <mark color="#FFFF00" transparency="0.7">
        &lt;ULTIMATE&gt; "TEST" &amp; 'CASE' with escapes: &lt;b&gt;&amp;lt;&lt;/b&gt;
      </mark>
    </stroke>
  </font>
</s></u></i></b></smallcaps></uppercase>

<stroke color="rgb(255,0,255)" th="5" tr="0.3" joins="round" sizing="fixed">Abbreviated params</stroke>

<!-- Nested comments work! <!-- inner --> outer -->

Escaping ampersands: <b>&amp;lt;</b> renders as &lt; and <b>&amp;amp;</b> renders as &amp;

<font face="Creepster">Creepster</font> <font face="DenkOne">DenkOne</font> <font face="Fondamento">Fondamento</font> <font face="GrenzeGotisch">GrenzeGotisch</font>

<font family="rbxasset://fonts/families/Creepster.json">Creepster via family</font>

Mix all sizing modes:<br/>
<stroke sizing="fixed" thickness="3">Fixed</stroke> <stroke sizing="scaled" thickness="3">Scaled</stroke>

<font color="#FF0000"><font color="#00FF00"><font color="#0000FF"><font color="#FFFF00"><font color="#FF00FF"><font color="#00FFFF"><font color="#FFFFFF">7 DEEP COLOR NEST</font></font></font></font></font></font></font>
]]

local completelyInvalidRichText = [[
<b><i><u>This looks fine but...</b></i></u>

<font color="orange">Named colors don't work!</font>

<font size="40px">Units aren't allowed</font>

<font color="#FFF">Short hex codes fail</font>

<font color="rgba(255,0,0,0.5)">RGBA not supported, only RGB!</font>

<font face="Arial">System fonts won't work</font>

<font family="Michroma">Must use rbxasset:// path!</font>

<stroke color="#FF0000" width="3">It's thickness, not width!</stroke>

<stroke color="#FF0000" thickness="3px">No units on thickness!</stroke>

<stroke color="#FF0000" thickness="3" opacity="0.5">It's transparency, not opacity!</stroke>

<stroke color="#FF0000" thickness="3" join="miter">It's joins, not join!</stroke>

<a href="https://roblox.com">Links aren't supported!</a>

<span>Span tags don't exist!</span>

<div>Div tags don't exist!</div>

<font style="color: red;">No style attribute!</font>

<strong>Use b, not strong!</strong>

<em>Use i, not em!</em>

<del>Use s, not del!</del>

<h1>Headers don't exist!</h1>

<p>Paragraphs don't exist!</p>

<mark>Mark needs color attribute!</mark>

<font weight="100px">Weight can't have units!</font>

<font weight="normal">Must be specific names or numbers!</font>

<uppercase>CaSe DoEsN't MaTtEr</UpperCase>

<br>Self-closing needs /</br>

<FONT COLOR="#FF0000">Tags are case-sensitive!</FONT>

<font color='#FF0000'>Single quotes don't work!</font>

<b><i>Improperly nested</b></i>

<stroke thickness=3>Unquoted attributes fail!</stroke>

<!-- Unclosed comment...

<font transparency="100">Transparency is 0-1, not 0-100!</font>

<font size="-5">Negative size won't work!</font>

<font color="#GGGGGG">Invalid hex characters!</font>

<font color="rgb(256,0,0)">RGB values can't exceed 255!</font>

<font color="rgb(255, 0, 0)">Spaces in RGB break it!</font>

<stroke joins="smooth">Invalid join type!</stroke>

<font weight="1000">Weight can't exceed 900!</font>

<font weight="50">Weight must be multiples of 100!</font>

<smallcaps>looks fine</SmallCaps>

<b><i><u><s><font color="#FF0000">Nested too deep without closing properly</font>

&amp;lt;&amp;gt; Double escaping breaks rendering!

<font color="">Empty attribute!</font>

<stroke>No attributes at all!</stroke>

<mark transparency="2">Transparency over 1!</mark>

<font face="">Empty face name!</font>

Text with <b>bold <i>and italic</b> crossed boundaries</i>

<uc><SC>Mixed case shorthand</SC></uc>
]]

return {
	summary = "Utility for escaping special characters in rich text",
	stories = {
		{
			name = "Side by side comparison",
			story = SideBySideStory :: unknown,
		},
		{
			name = "Raw input",
			story = function(props)
				return React.createElement(Text, {
					tag = "size-full-0 auto-y text-align-x-left text-wrap",
					Text = `Raw input: {props.controls.inputText}`,
				})
			end,
		},
		{
			name = "Extreme case",
			story = function()
				return SideBySideStory({
					controls = {
						inputText = extremeRichText,
					},
				})
			end,
		},
		{
			name = "Completely invalid rich text that looks right",
			story = function()
				return SideBySideStory({
					controls = {
						inputText = completelyInvalidRichText,
					},
				})
			end,
		},
	},
	controls = {
		inputText = '<font color="#ff0000">Red text</font> & "quoted" and also <b>bold</b> and <i>italic</i> and <u>underlined</u> and <s>strikethrough</s> and <uppercase>uppercase</uppercase> and <smallcaps>smallcaps</smallcaps>',
	},
}
