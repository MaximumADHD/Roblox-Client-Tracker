PROTO_0:
  GETTABLEKS R2 R0 K0 ["controls"]
  GETTABLEKS R1 R2 K1 ["inputText"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"tag"}]
  LOADK R5 K5 ["size-full-0 col gap-small"]
  SETTABLEKS R5 R4 K3 ["tag"]
  NEWTABLE R5 0 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K8 [{"tag", "Text", "RichText"}]
  LOADK R9 K9 ["size-full-0 auto-y text-align-x-left text-wrap"]
  SETTABLEKS R9 R8 K3 ["tag"]
  LOADK R10 K10 ["<b>Unescaped</b><br/>%*"]
  MOVE R12 R1
  NAMECALL R10 R10 K11 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  SETTABLEKS R9 R8 K6 ["Text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K7 ["RichText"]
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K8 [{"tag", "Text", "RichText"}]
  LOADK R10 K9 ["size-full-0 auto-y text-align-x-left text-wrap"]
  SETTABLEKS R10 R9 K3 ["tag"]
  LOADK R11 K12 ["<b>Escaped</b><br/>%*"]
  GETUPVAL R13 3
  MOVE R14 R1
  CALL R13 1 1
  NAMECALL R11 R11 K11 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K6 ["Text"]
  LOADB R10 1
  SETTABLEKS R10 R9 K7 ["RichText"]
  CALL R7 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"tag", "Text"}]
  LOADK R4 K4 ["size-full-0 auto-y text-align-x-left text-wrap"]
  SETTABLEKS R4 R3 K1 ["tag"]
  LOADK R5 K5 ["Raw input: %*"]
  GETTABLEKS R8 R0 K6 ["controls"]
  GETTABLEKS R7 R8 K7 ["inputText"]
  NAMECALL R5 R5 K8 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  SETTABLEKS R4 R3 K2 ["Text"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R1 K1 [{"controls"}]
  DUPTABLE R2 K3 [{"inputText"}]
  LOADK R3 K4 ["<b><i><u><s><font color=\"#FF00FF\" face=\"GothamBlack\" size=\"48\">🎮 ULTRA <stroke color=\"#00FFFF\" joins=\"miter\" thickness=\"3\" transparency=\"0.5\">NESTED</stroke> TEST 🎮</font></s></u></i></b>

<font color=\"rgb(255,128,0)\" size=\"24\">Testing <b>bold with <i>italic &amp; <u>underline + <s>strikethrough + <smallcaps>smallcaps</smallcaps></s></u></i></b></font>

<font family=\"rbxasset://fonts/families/SourceSansPro.json\" size=\"18\">Special chars: &lt; &gt; &amp; &quot; &apos;</font>

<br/><br/><br/>

<font color=\"#FF0000\">R<font color=\"#FF3300\">A<font color=\"#FF6600\">I<font color=\"#FF9900\">N<font color=\"#FFCC00\">B<font color=\"#FFFF00\">O<font color=\"#CCFF00\">W</font></font></font></font></font></font></font>

<stroke color=\"#FF0000\" joins=\"round\" thickness=\"5\"><stroke color=\"#00FF00\" joins=\"bevel\" thickness=\"3\"><stroke color=\"#0000FF\" joins=\"miter\" thickness=\"1\">TRIPLE STROKE</stroke></stroke></stroke>

<!-- This is a comment with special chars: &lt; &gt; &amp; \"quotes\" 'apostrophes' -->

<uppercase><b>SCREAMING <smallcaps>with SMALLCAPS</smallcaps> INSIDE</b></uppercase>

<uc><sc>BOTH SHORTHAND TAGS</sc></uc>

<font color=\"rgb(255,255,255)\" face=\"GothamBlack\" size=\"100\" transparency=\"0.9\" weight=\"Heavy\">
  <stroke color=\"#000000\" joins=\"miter\" thickness=\"10\" transparency=\"0.1\" sizing=\"fixed\">
    <b><i><u><s>
      KITCHEN SINK: &lt;tag&gt; \"quotes\" 'apostrophes' &amp; ampersands 🚀
    </s></u></i></b>
  </stroke>
</font>

<mark color=\"#009966\" transparency=\"0\">HIGHLIGHTED <b><i>NESTED</i></b> TEXT</mark>

<font size=\"1\">tiny</font> vs <font size=\"100\">MASSIVE</font><br/>
<stroke thickness=\"0.5\">thin</stroke> vs <stroke thickness=\"20\">THICK</stroke><br/>
<font transparency=\"0\">opaque</font> vs <font transparency=\"0.95\">nearly invisible</font>

<font weight=\"100\">Thin</font> <font weight=\"200\">ExtraLight</font> <font weight=\"300\">Light</font> <font weight=\"400\">Regular</font> <font weight=\"500\">Medium</font> <font weight=\"600\">SemiBold</font> <font weight=\"700\">Bold</font> <font weight=\"800\">ExtraBold</font> <font weight=\"900\">Heavy</font>

<font weight=\"thin\">thin</font> <font weight=\"HEAVY\">heavy</font> <font weight=\"bold\">bold</font>

<font color=\"#FF0000\">Unicode: Ǩ̷͇̫̲̳̹̼͋̒͂͗̕ḻ̴̢̛̫̳̹̼͋̒͂͗͋A̷͇̫̲̳̹̼͋̒͂͗̕L̴̢̛̫̳̹̼͋̒͂͗͋G̷͇̫̲̳̹̼͋̒͂͗̕Ơ̴̢̫̳̹̼͋̒͂͗͋ 日本語 العربية 🔥</font>

<uppercase><smallcaps><b><i><u><s>
  <font color=\"#FF00FF\" face=\"Michroma\" size=\"72\" transparency=\"0.5\" weight=\"900\">
    <stroke color=\"#00FFFF\" joins=\"miter\" thickness=\"8\" transparency=\"0.2\" sizing=\"scaled\">
      <mark color=\"#FFFF00\" transparency=\"0.7\">
        &lt;ULTIMATE&gt; \"TEST\" &amp; 'CASE' with escapes: &lt;b&gt;&amp;lt;&lt;/b&gt;
      </mark>
    </stroke>
  </font>
</s></u></i></b></smallcaps></uppercase>

<stroke color=\"rgb(255,0,255)\" th=\"5\" tr=\"0.3\" joins=\"round\" sizing=\"fixed\">Abbreviated params</stroke>

<!-- Nested comments work! <!-- inner --> outer -->

Escaping ampersands: <b>&amp;lt;</b> renders as &lt; and <b>&amp;amp;</b> renders as &amp;

<font face=\"Creepster\">Creepster</font> <font face=\"DenkOne\">DenkOne</font> <font face=\"Fondamento\">Fondamento</font> <font face=\"GrenzeGotisch\">GrenzeGotisch</font>

<font family=\"rbxasset://fonts/families/Creepster.json\">Creepster via family</font>

Mix all sizing modes:<br/>
<stroke sizing=\"fixed\" thickness=\"3\">Fixed</stroke> <stroke sizing=\"scaled\" thickness=\"3\">Scaled</stroke>

<font color=\"#FF0000\"><font color=\"#00FF00\"><font color=\"#0000FF\"><font color=\"#FFFF00\"><font color=\"#FF00FF\"><font color=\"#00FFFF\"><font color=\"#FFFFFF\">7 DEEP COLOR NEST</font></font></font></font></font></font></font>
"]
  SETTABLEKS R3 R2 K2 ["inputText"]
  SETTABLEKS R2 R1 K0 ["controls"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R1 K1 [{"controls"}]
  DUPTABLE R2 K3 [{"inputText"}]
  LOADK R3 K4 ["<b><i><u>This looks fine but...</b></i></u>

<font color=\"orange\">Named colors don't work!</font>

<font size=\"40px\">Units aren't allowed</font>

<font color=\"#FFF\">Short hex codes fail</font>

<font color=\"rgba(255,0,0,0.5)\">RGBA not supported, only RGB!</font>

<font face=\"Arial\">System fonts won't work</font>

<font family=\"Michroma\">Must use rbxasset:// path!</font>

<stroke color=\"#FF0000\" width=\"3\">It's thickness, not width!</stroke>

<stroke color=\"#FF0000\" thickness=\"3px\">No units on thickness!</stroke>

<stroke color=\"#FF0000\" thickness=\"3\" opacity=\"0.5\">It's transparency, not opacity!</stroke>

<stroke color=\"#FF0000\" thickness=\"3\" join=\"miter\">It's joins, not join!</stroke>

<a href=\"https://roblox.com\">Links aren't supported!</a>

<span>Span tags don't exist!</span>

<div>Div tags don't exist!</div>

<font style=\"color: red;\">No style attribute!</font>

<strong>Use b, not strong!</strong>

<em>Use i, not em!</em>

<del>Use s, not del!</del>

<h1>Headers don't exist!</h1>

<p>Paragraphs don't exist!</p>

<mark>Mark needs color attribute!</mark>

<font weight=\"100px\">Weight can't have units!</font>

<font weight=\"normal\">Must be specific names or numbers!</font>

<uppercase>CaSe DoEsN't MaTtEr</UpperCase>

<br>Self-closing needs /</br>

<FONT COLOR=\"#FF0000\">Tags are case-sensitive!</FONT>

<font color='#FF0000'>Single quotes don't work!</font>

<b><i>Improperly nested</b></i>

<stroke thickness=3>Unquoted attributes fail!</stroke>

<!-- Unclosed comment...

<font transparency=\"100\">Transparency is 0-1, not 0-100!</font>

<font size=\"-5\">Negative size won't work!</font>

<font color=\"#GGGGGG\">Invalid hex characters!</font>

<font color=\"rgb(256,0,0)\">RGB values can't exceed 255!</font>

<font color=\"rgb(255, 0, 0)\">Spaces in RGB break it!</font>

<stroke joins=\"smooth\">Invalid join type!</stroke>

<font weight=\"1000\">Weight can't exceed 900!</font>

<font weight=\"50\">Weight must be multiples of 100!</font>

<smallcaps>looks fine</SmallCaps>

<b><i><u><s><font color=\"#FF0000\">Nested too deep without closing properly</font>

&amp;lt;&amp;gt; Double escaping breaks rendering!

<font color=\"\">Empty attribute!</font>

<stroke>No attributes at all!</stroke>

<mark transparency=\"2\">Transparency over 1!</mark>

<font face=\"\">Empty face name!</font>

Text with <b>bold <i>and italic</b> crossed boundaries</i>

<uc><SC>Mixed case shorthand</SC></uc>
"]
  SETTABLEKS R3 R2 K2 ["inputText"]
  SETTABLEKS R2 R1 K0 ["controls"]
  CALL R0 1 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["View"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Text"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Utility"]
  GETTABLEKS R6 R7 K12 ["escapeRichText"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPTABLE R7 K17 [{"summary", "stories", "controls"}]
  LOADK R8 K18 ["Utility for escaping special characters in rich text"]
  SETTABLEKS R8 R7 K14 ["summary"]
  NEWTABLE R8 0 4
  DUPTABLE R9 K21 [{"name", "story"}]
  LOADK R10 K22 ["Side by side comparison"]
  SETTABLEKS R10 R9 K19 ["name"]
  SETTABLEKS R6 R9 K20 ["story"]
  DUPTABLE R10 K21 [{"name", "story"}]
  LOADK R11 K23 ["Raw input"]
  SETTABLEKS R11 R10 K19 ["name"]
  DUPCLOSURE R11 K24 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K20 ["story"]
  DUPTABLE R11 K21 [{"name", "story"}]
  LOADK R12 K25 ["Extreme case"]
  SETTABLEKS R12 R11 K19 ["name"]
  DUPCLOSURE R12 K26 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R12 R11 K20 ["story"]
  DUPTABLE R12 K21 [{"name", "story"}]
  LOADK R13 K27 ["Completely invalid rich text that looks right"]
  SETTABLEKS R13 R12 K19 ["name"]
  DUPCLOSURE R13 K28 [PROTO_3]
  CAPTURE VAL R6
  SETTABLEKS R13 R12 K20 ["story"]
  SETLIST R8 R9 4 [1]
  SETTABLEKS R8 R7 K15 ["stories"]
  DUPTABLE R8 K30 [{"inputText"}]
  LOADK R9 K31 ["<font color=\"#ff0000\">Red text</font> & \"quoted\" and also <b>bold</b> and <i>italic</i> and <u>underlined</u> and <s>strikethrough</s> and <uppercase>uppercase</uppercase> and <smallcaps>smallcaps</smallcaps>"]
  SETTABLEKS R9 R8 K29 ["inputText"]
  SETTABLEKS R8 R7 K16 ["controls"]
  RETURN R7 1
