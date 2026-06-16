PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R1 K1 ["inputText"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K4 [{"tag"}]
        9 LOADK                            R5 K5 ["size-full-0 col gap-small"]
       10 SETTABLEKS                       R5 R4 K3 ["tag"]
       12 NEWTABLE                         R5 0 2
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K2 ["createElement"]
       17 GETUPVAL                         R7 2
       18 DUPTABLE                         R8 K8 [{"tag", "Text", "RichText"}]
       19 LOADK                            R9 K9 ["size-full-0 auto-y text-align-x-left text-wrap"]
       20 SETTABLEKS                       R9 R8 K3 ["tag"]
       22 LOADK                            R10 K10 ["<b>Unescaped</b><br/>%*"]
       23 MOVE                             R12 R1
       24 NAMECALL                         R10 R10 K11 ["format"]
       26 CALL                             R10 2 1
       27 MOVE                             R9 R10
       28 SETTABLEKS                       R9 R8 K6 ["Text"]
       30 LOADB                            R9 1
       31 SETTABLEKS                       R9 R8 K7 ["RichText"]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K2 ["createElement"]
       37 GETUPVAL                         R8 2
       38 DUPTABLE                         R9 K8 [{"tag", "Text", "RichText"}]
       39 LOADK                            R10 K9 ["size-full-0 auto-y text-align-x-left text-wrap"]
       40 SETTABLEKS                       R10 R9 K3 ["tag"]
       42 LOADK                            R11 K12 ["<b>Escaped</b><br/>%*"]
       43 GETUPVAL                         R13 3
       44 MOVE                             R14 R1
       45 CALL                             R13 1 1
       46 NAMECALL                         R11 R11 K11 ["format"]
       48 CALL                             R11 2 1
       49 MOVE                             R10 R11
       50 SETTABLEKS                       R10 R9 K6 ["Text"]
       52 LOADB                            R10 1
       53 SETTABLEKS                       R10 R9 K7 ["RichText"]
       55 CALL                             R7 2 -1
       56 SETLIST                          R5 R6 -1 [1]
       58 CALL                             R2 3 -1
       59 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"tag", "Text"}]
        5 LOADK                            R4 K4 ["size-full-0 auto-y text-align-x-left text-wrap"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 LOADK                            R5 K5 ["Raw input: %*"]
        9 GETTABLEKS                       R7 R0 K6 ["controls"]
       11 GETTABLEKS                       R7 R7 K7 ["inputText"]
       13 NAMECALL                         R5 R5 K8 ["format"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 SETTABLEKS                       R4 R3 K2 ["Text"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"controls"}]
        2 DUPTABLE                         R2 K3 [{"inputText"}]
        3 LOADK                            R3 K4 ["<b><i><u><s><font color=\"#FF00FF\" face=\"GothamBlack\" size=\"48\">🎮 ULTRA <stroke color=\"#00FFFF\" joins=\"miter\" thickness=\"3\" transparency=\"0.5\">NESTED</stroke> TEST 🎮</font></s></u></i></b>\n\n<font color=\"rgb(255,128,0)\" size=\"24\">Testing <b>bold with <i>italic &amp; <u>underline + <s>strikethrough + <smallcaps>smallcaps</smallcaps></s></u></i></b></font>\n\n<font family=\"rbxasset://fonts/families/SourceSansPro.json\" size=\"18\">Special chars: &lt; &gt; &amp; &quot; &apos;</font>\n\n<br/><br/><br/>\n\n<font color=\"#FF0000\">R<font color=\"#FF3300\">A<font color=\"#FF6600\">I<font color=\"#FF9900\">N<font color=\"#FFCC00\">B<font color=\"#FFFF00\">O<font color=\"#CCFF00\">W</font></font></font></font></font></font></font>\n\n<stroke color=\"#FF0000\" joins=\"round\" thickness=\"5\"><stroke color=\"#00FF00\" joins=\"bevel\" thickness=\"3\"><stroke color=\"#0000FF\" joins=\"miter\" thickness=\"1\">TRIPLE STROKE</stroke></stroke></stroke>\n\n<!-- This is a comment with special chars: &lt; &gt; &amp; \"quotes\" 'apostrophes' -->\n\n<uppercase><b>SCREAMING <smallcaps>with SMALLCAPS</smallcaps> INSIDE</b></uppercase>\n\n<uc><sc>BOTH SHORTHAND TAGS</sc></uc>\n\n<font color=\"rgb(255,255,255)\" face=\"GothamBlack\" size=\"100\" transparency=\"0.9\" weight=\"Heavy\">\n  <stroke color=\"#000000\" joins=\"miter\" thickness=\"10\" transparency=\"0.1\" sizing=\"fixed\">\n    <b><i><u><s>\n      KITCHEN SINK: &lt;tag&gt; \"quotes\" 'apostrophes' &amp; ampersands 🚀\n    </s></u></i></b>\n  </stroke>\n</font>\n\n<mark color=\"#009966\" transparency=\"0\">HIGHLIGHTED <b><i>NESTED</i></b> TEXT</mark>\n\n<font size=\"1\">tiny</font> vs <font size=\"100\">MASSIVE</font><br/>\n<stroke thickness=\"0.5\">thin</stroke> vs <stroke thickness=\"20\">THICK</stroke><br/>\n<font transparency=\"0\">opaque</font> vs <font transparency=\"0.95\">nearly invisible</font>\n\n<font weight=\"100\">Thin</font> <font weight=\"200\">ExtraLight</font> <font weight=\"300\">Light</font> <font weight=\"400\">Regular</font> <font weight=\"500\">Medium</font> <font weight=\"600\">SemiBold</font> <font weight=\"700\">Bold</font> <font weight=\"800\">ExtraBold</font> <font weight=\"900\">Heavy</font>\n\n<font weight=\"thin\">thin</font> <font weight=\"HEAVY\">heavy</font> <font weight=\"bold\">bold</font>\n\n<font color=\"#FF0000\">Unicode: Ǩ̷͇̫̲̳̹̼͋̒͂͗̕ḻ̴̢̛̫̳̹̼͋̒͂͗͋A̷͇̫̲̳̹̼͋̒͂͗̕L̴̢̛̫̳̹̼͋̒͂͗͋G̷͇̫̲̳̹̼͋̒͂͗̕Ơ̴̢̫̳̹̼͋̒͂͗͋ 日本語 العربية 🔥</font>\n\n<uppercase><smallcaps><b><i><u><s>\n  <font color=\"#FF00FF\" face=\"Michroma\" size=\"72\" transparency=\"0.5\" weight=\"900\">\n    <stroke color=\"#00FFFF\" joins=\"miter\" thickness=\"8\" transparency=\"0.2\" sizing=\"scaled\">\n      <mark color=\"#FFFF00\" transparency=\"0.7\">\n        &lt;ULTIMATE&gt; \"TEST\" &amp; 'CASE' with escapes: &lt;b&gt;&amp;lt;&lt;/b&gt;\n      </mark>\n    </stroke>\n  </font>\n</s></u></i></b></smallcaps></uppercase>\n\n<stroke color=\"rgb(255,0,255)\" th=\"5\" tr=\"0.3\" joins=\"round\" sizing=\"fixed\">Abbreviated params</stroke>\n\n<!-- Nested comments work! <!-- inner --> outer -->\n\nEscaping ampersands: <b>&amp;lt;</b> renders as &lt; and <b>&amp;amp;</b> renders as &amp;\n\n<font face=\"Creepster\">Creepster</font> <font face=\"DenkOne\">DenkOne</font> <font face=\"Fondamento\">Fondamento</font> <font face=\"GrenzeGotisch\">GrenzeGotisch</font>\n\n<font family=\"rbxasset://fonts/families/Creepster.json\">Creepster via family</font>\n\nMix all sizing modes:<br/>\n<stroke sizing=\"fixed\" thickness=\"3\">Fixed</stroke> <stroke sizing=\"scaled\" thickness=\"3\">Scaled</stroke>\n\n<font color=\"#FF0000\"><font color=\"#00FF00\"><font color=\"#0000FF\"><font color=\"#FFFF00\"><font color=\"#FF00FF\"><font color=\"#00FFFF\"><font color=\"#FFFFFF\">7 DEEP COLOR NEST</font></font></font></font></font></font></font>\n"]
        4 SETTABLEKS                       R3 R2 K2 ["inputText"]
        6 SETTABLEKS                       R2 R1 K0 ["controls"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"controls"}]
        2 DUPTABLE                         R2 K3 [{"inputText"}]
        3 LOADK                            R3 K4 ["<b><i><u>This looks fine but...</b></i></u>\n\n<font color=\"orange\">Named colors don't work!</font>\n\n<font size=\"40px\">Units aren't allowed</font>\n\n<font color=\"#FFF\">Short hex codes fail</font>\n\n<font color=\"rgba(255,0,0,0.5)\">RGBA not supported, only RGB!</font>\n\n<font face=\"Arial\">System fonts won't work</font>\n\n<font family=\"Michroma\">Must use rbxasset:// path!</font>\n\n<stroke color=\"#FF0000\" width=\"3\">It's thickness, not width!</stroke>\n\n<stroke color=\"#FF0000\" thickness=\"3px\">No units on thickness!</stroke>\n\n<stroke color=\"#FF0000\" thickness=\"3\" opacity=\"0.5\">It's transparency, not opacity!</stroke>\n\n<stroke color=\"#FF0000\" thickness=\"3\" join=\"miter\">It's joins, not join!</stroke>\n\n<a href=\"https://roblox.com\">Links aren't supported!</a>\n\n<span>Span tags don't exist!</span>\n\n<div>Div tags don't exist!</div>\n\n<font style=\"color: red;\">No style attribute!</font>\n\n<strong>Use b, not strong!</strong>\n\n<em>Use i, not em!</em>\n\n<del>Use s, not del!</del>\n\n<h1>Headers don't exist!</h1>\n\n<p>Paragraphs don't exist!</p>\n\n<mark>Mark needs color attribute!</mark>\n\n<font weight=\"100px\">Weight can't have units!</font>\n\n<font weight=\"normal\">Must be specific names or numbers!</font>\n\n<uppercase>CaSe DoEsN't MaTtEr</UpperCase>\n\n<br>Self-closing needs /</br>\n\n<FONT COLOR=\"#FF0000\">Tags are case-sensitive!</FONT>\n\n<font color='#FF0000'>Single quotes don't work!</font>\n\n<b><i>Improperly nested</b></i>\n\n<stroke thickness=3>Unquoted attributes fail!</stroke>\n\n<!-- Unclosed comment...\n\n<font transparency=\"100\">Transparency is 0-1, not 0-100!</font>\n\n<font size=\"-5\">Negative size won't work!</font>\n\n<font color=\"#GGGGGG\">Invalid hex characters!</font>\n\n<font color=\"rgb(256,0,0)\">RGB values can't exceed 255!</font>\n\n<font color=\"rgb(255, 0, 0)\">Spaces in RGB break it!</font>\n\n<stroke joins=\"smooth\">Invalid join type!</stroke>\n\n<font weight=\"1000\">Weight can't exceed 900!</font>\n\n<font weight=\"50\">Weight must be multiples of 100!</font>\n\n<smallcaps>looks fine</SmallCaps>\n\n<b><i><u><s><font color=\"#FF0000\">Nested too deep without closing properly</font>\n\n&amp;lt;&amp;gt; Double escaping breaks rendering!\n\n<font color=\"\">Empty attribute!</font>\n\n<stroke>No attributes at all!</stroke>\n\n<mark transparency=\"2\">Transparency over 1!</mark>\n\n<font face=\"\">Empty face name!</font>\n\nText with <b>bold <i>and italic</b> crossed boundaries</i>\n\n<uc><SC>Mixed case shorthand</SC></uc>\n"]
        4 SETTABLEKS                       R3 R2 K2 ["inputText"]
        6 SETTABLEKS                       R2 R1 K0 ["controls"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Text"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["escapeRichText"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K13 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 DUPTABLE                         R7 K17 [{"summary", "stories", "controls"}]
       41 LOADK                            R8 K18 ["Utility for escaping special characters in rich text"]
       42 SETTABLEKS                       R8 R7 K14 ["summary"]
       44 NEWTABLE                         R8 0 4
       46 DUPTABLE                         R9 K21 [{"name", "story"}]
       47 LOADK                            R10 K22 ["Side by side comparison"]
       48 SETTABLEKS                       R10 R9 K19 ["name"]
       50 SETTABLEKS                       R6 R9 K20 ["story"]
       52 DUPTABLE                         R10 K21 [{"name", "story"}]
       53 LOADK                            R11 K23 ["Raw input"]
       54 SETTABLEKS                       R11 R10 K19 ["name"]
       56 DUPCLOSURE                       R11 K24 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 SETTABLEKS                       R11 R10 K20 ["story"]
       61 DUPTABLE                         R11 K21 [{"name", "story"}]
       62 LOADK                            R12 K25 ["Extreme case"]
       63 SETTABLEKS                       R12 R11 K19 ["name"]
       65 DUPCLOSURE                       R12 K26 [PROTO_2]
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R12 R11 K20 ["story"]
       69 DUPTABLE                         R12 K21 [{"name", "story"}]
       70 LOADK                            R13 K27 ["Completely invalid rich text that looks right"]
       71 SETTABLEKS                       R13 R12 K19 ["name"]
       73 DUPCLOSURE                       R13 K28 [PROTO_3]
       74 CAPTURE                          VAL R6
       75 SETTABLEKS                       R13 R12 K20 ["story"]
       77 SETLIST                          R8 R9 4 [1]
       79 SETTABLEKS                       R8 R7 K15 ["stories"]
       81 DUPTABLE                         R8 K30 [{"inputText"}]
       82 LOADK                            R9 K31 ["<font color=\"#ff0000\">Red text</font> & \"quoted\" and also <b>bold</b> and <i>italic</i> and <u>underlined</u> and <s>strikethrough</s> and <uppercase>uppercase</uppercase> and <smallcaps>smallcaps</smallcaps>"]
       83 SETTABLEKS                       R9 R8 K29 ["inputText"]
       85 SETTABLEKS                       R8 R7 K16 ["controls"]
       87 RETURN                           R7 1
