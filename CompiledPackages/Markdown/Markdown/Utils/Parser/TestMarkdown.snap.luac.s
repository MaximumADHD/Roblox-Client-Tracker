MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"children", "name", "offset"}]
  NEWTABLE R1 0 21
  DUPTABLE R2 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R3 K8 [{"depth"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K7 ["depth"]
  SETTABLEKS R3 R2 K4 ["attributes"]
  NEWTABLE R3 0 3
  DUPTABLE R4 K10 [{"name", "offset", "text"}]
  LOADK R5 K11 ["TEXT"]
  SETTABLEKS R5 R4 K1 ["name"]
  LOADN R5 2
  SETTABLEKS R5 R4 K2 ["offset"]
  LOADK R5 K12 ["Heading with "]
  SETTABLEKS R5 R4 K9 ["text"]
  DUPTABLE R5 K13 [{"attributes", "children", "name", "offset"}]
  DUPTABLE R6 K15 [{"style"}]
  LOADK R7 K16 ["ITALIC"]
  SETTABLEKS R7 R6 K14 ["style"]
  SETTABLEKS R6 R5 K4 ["attributes"]
  NEWTABLE R6 0 1
  DUPTABLE R7 K10 [{"name", "offset", "text"}]
  LOADK R8 K11 ["TEXT"]
  SETTABLEKS R8 R7 K1 ["name"]
  LOADN R8 17
  SETTABLEKS R8 R7 K2 ["offset"]
  LOADK R8 K17 ["italic"]
  SETTABLEKS R8 R7 K9 ["text"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K0 ["children"]
  LOADK R6 K18 ["STYLED_TEXT"]
  SETTABLEKS R6 R5 K1 ["name"]
  LOADN R6 16
  SETTABLEKS R6 R5 K2 ["offset"]
  DUPTABLE R6 K10 [{"name", "offset", "text"}]
  LOADK R7 K11 ["TEXT"]
  SETTABLEKS R7 R6 K1 ["name"]
  LOADN R7 24
  SETTABLEKS R7 R6 K2 ["offset"]
  LOADK R7 K19 [" text"]
  SETTABLEKS R7 R6 K9 ["text"]
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K0 ["children"]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["isBlock"]
  LOADK R3 K20 ["HEADING"]
  SETTABLEKS R3 R2 K1 ["name"]
  LOADN R3 0
  SETTABLEKS R3 R2 K2 ["offset"]
  DUPTABLE R3 K3 [{"children", "name", "offset"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K10 [{"name", "offset", "text"}]
  LOADK R6 K11 ["TEXT"]
  SETTABLEKS R6 R5 K1 ["name"]
  LOADN R6 30
  SETTABLEKS R6 R5 K2 ["offset"]
  LOADK R6 K21 ["# Not a heading."]
  SETTABLEKS R6 R5 K9 ["text"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K0 ["children"]
  LOADK R4 K22 ["PARAGRAPH"]
  SETTABLEKS R4 R3 K1 ["name"]
  LOADN R4 30
  SETTABLEKS R4 R3 K2 ["offset"]
  DUPTABLE R4 K3 [{"children", "name", "offset"}]
  NEWTABLE R5 0 9
  DUPTABLE R6 K10 [{"name", "offset", "text"}]
  LOADK R7 K11 ["TEXT"]
  SETTABLEKS R7 R6 K1 ["name"]
  LOADN R7 49
  SETTABLEKS R7 R6 K2 ["offset"]
  LOADK R7 K23 ["Some paragraph text with some "]
  SETTABLEKS R7 R6 K9 ["text"]
  DUPTABLE R7 K13 [{"attributes", "children", "name", "offset"}]
  DUPTABLE R8 K15 [{"style"}]
  LOADK R9 K24 ["BOLD"]
  SETTABLEKS R9 R8 K14 ["style"]
  SETTABLEKS R8 R7 K4 ["attributes"]
  NEWTABLE R8 0 1
  DUPTABLE R9 K10 [{"name", "offset", "text"}]
  LOADK R10 K11 ["TEXT"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 81
  SETTABLEKS R10 R9 K2 ["offset"]
  LOADK R10 K25 ["bold"]
  SETTABLEKS R10 R9 K9 ["text"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K0 ["children"]
  LOADK R8 K18 ["STYLED_TEXT"]
  SETTABLEKS R8 R7 K1 ["name"]
  LOADN R8 80
  SETTABLEKS R8 R7 K2 ["offset"]
  DUPTABLE R8 K10 [{"name", "offset", "text"}]
  LOADK R9 K11 ["TEXT"]
  SETTABLEKS R9 R8 K1 ["name"]
  LOADN R9 86
  SETTABLEKS R9 R8 K2 ["offset"]
  LOADK R9 K26 [", "]
  SETTABLEKS R9 R8 K9 ["text"]
  DUPTABLE R9 K13 [{"attributes", "children", "name", "offset"}]
  DUPTABLE R10 K15 [{"style"}]
  LOADK R11 K16 ["ITALIC"]
  SETTABLEKS R11 R10 K14 ["style"]
  SETTABLEKS R10 R9 K4 ["attributes"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K10 [{"name", "offset", "text"}]
  LOADK R12 K11 ["TEXT"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 89
  SETTABLEKS R12 R11 K2 ["offset"]
  LOADK R12 K17 ["italic"]
  SETTABLEKS R12 R11 K9 ["text"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K0 ["children"]
  LOADK R10 K18 ["STYLED_TEXT"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 88
  SETTABLEKS R10 R9 K2 ["offset"]
  DUPTABLE R10 K10 [{"name", "offset", "text"}]
  LOADK R11 K11 ["TEXT"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 96
  SETTABLEKS R11 R10 K2 ["offset"]
  LOADK R11 K26 [", "]
  SETTABLEKS R11 R10 K9 ["text"]
  DUPTABLE R11 K13 [{"attributes", "children", "name", "offset"}]
  DUPTABLE R12 K15 [{"style"}]
  LOADK R13 K27 ["STRIKE"]
  SETTABLEKS R13 R12 K14 ["style"]
  SETTABLEKS R12 R11 K4 ["attributes"]
  NEWTABLE R12 0 1
  DUPTABLE R13 K10 [{"name", "offset", "text"}]
  LOADK R14 K11 ["TEXT"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 99
  SETTABLEKS R14 R13 K2 ["offset"]
  LOADK R14 K28 ["strike"]
  SETTABLEKS R14 R13 K9 ["text"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K0 ["children"]
  LOADK R12 K18 ["STYLED_TEXT"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 98
  SETTABLEKS R12 R11 K2 ["offset"]
  DUPTABLE R12 K10 [{"name", "offset", "text"}]
  LOADK R13 K11 ["TEXT"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 106
  SETTABLEKS R13 R12 K2 ["offset"]
  LOADK R13 K29 [" text, and a "]
  SETTABLEKS R13 R12 K9 ["text"]
  DUPTABLE R13 K10 [{"name", "offset", "text"}]
  LOADK R14 K30 ["INLINE_CODE"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 119
  SETTABLEKS R14 R13 K2 ["offset"]
  LOADK R14 K31 ["code *snippet_"]
  SETTABLEKS R14 R13 K9 ["text"]
  DUPTABLE R14 K10 [{"name", "offset", "text"}]
  LOADK R15 K11 ["TEXT"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 135
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K32 [".
Some basic content in the same paragraph."]
  SETTABLEKS R15 R14 K9 ["text"]
  SETLIST R5 R6 9 [1]
  SETTABLEKS R5 R4 K0 ["children"]
  LOADK R5 K22 ["PARAGRAPH"]
  SETTABLEKS R5 R4 K1 ["name"]
  LOADN R5 49
  SETTABLEKS R5 R4 K2 ["offset"]
  DUPTABLE R5 K3 [{"children", "name", "offset"}]
  NEWTABLE R6 0 1
  DUPTABLE R7 K10 [{"name", "offset", "text"}]
  LOADK R8 K11 ["TEXT"]
  SETTABLEKS R8 R7 K1 ["name"]
  LOADN R8 179
  SETTABLEKS R8 R7 K2 ["offset"]
  LOADK R8 K33 ["Some basic content in a separate paragraph."]
  SETTABLEKS R8 R7 K9 ["text"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K0 ["children"]
  LOADK R6 K22 ["PARAGRAPH"]
  SETTABLEKS R6 R5 K1 ["name"]
  LOADN R6 179
  SETTABLEKS R6 R5 K2 ["offset"]
  DUPTABLE R6 K3 [{"children", "name", "offset"}]
  NEWTABLE R7 0 3
  DUPTABLE R8 K34 [{"children", "isBlock", "name", "offset"}]
  NEWTABLE R9 0 2
  DUPTABLE R10 K3 [{"children", "name", "offset"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K10 [{"name", "offset", "text"}]
  LOADK R13 K11 ["TEXT"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 226
  SETTABLEKS R13 R12 K2 ["offset"]
  LOADK R13 K35 ["Heading A"]
  SETTABLEKS R13 R12 K9 ["text"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K0 ["children"]
  LOADK R11 K36 ["TABLE_CELL"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 226
  SETTABLEKS R11 R10 K2 ["offset"]
  DUPTABLE R11 K3 [{"children", "name", "offset"}]
  NEWTABLE R12 0 1
  DUPTABLE R13 K10 [{"name", "offset", "text"}]
  LOADK R14 K11 ["TEXT"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 238
  SETTABLEKS R14 R13 K2 ["offset"]
  LOADK R14 K37 ["Heading B"]
  SETTABLEKS R14 R13 K9 ["text"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K0 ["children"]
  LOADK R12 K36 ["TABLE_CELL"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 238
  SETTABLEKS R12 R11 K2 ["offset"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K0 ["children"]
  LOADB R9 1
  SETTABLEKS R9 R8 K5 ["isBlock"]
  LOADK R9 K38 ["TABLE_HEADER"]
  SETTABLEKS R9 R8 K1 ["name"]
  LOADN R9 224
  SETTABLEKS R9 R8 K2 ["offset"]
  DUPTABLE R9 K34 [{"children", "isBlock", "name", "offset"}]
  NEWTABLE R10 0 2
  DUPTABLE R11 K3 [{"children", "name", "offset"}]
  NEWTABLE R12 0 1
  DUPTABLE R13 K10 [{"name", "offset", "text"}]
  LOADK R14 K11 ["TEXT"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 10
  SETTABLEKS R14 R13 K2 ["offset"]
  LOADK R14 K39 ["Content A"]
  SETTABLEKS R14 R13 K9 ["text"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K0 ["children"]
  LOADK R12 K36 ["TABLE_CELL"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 10
  SETTABLEKS R12 R11 K2 ["offset"]
  DUPTABLE R12 K3 [{"children", "name", "offset"}]
  NEWTABLE R13 0 3
  DUPTABLE R14 K10 [{"name", "offset", "text"}]
  LOADK R15 K11 ["TEXT"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 22
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K40 ["Content B "]
  SETTABLEKS R15 R14 K9 ["text"]
  DUPTABLE R15 K41 [{"name", "offset"}]
  LOADK R16 K42 ["BREAK"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 33
  SETTABLEKS R16 R15 K2 ["offset"]
  DUPTABLE R16 K10 [{"name", "offset", "text"}]
  LOADK R17 K11 ["TEXT"]
  SETTABLEKS R17 R16 K1 ["name"]
  LOADN R17 37
  SETTABLEKS R17 R16 K2 ["offset"]
  LOADK R17 K43 [" with a newline"]
  SETTABLEKS R17 R16 K9 ["text"]
  SETLIST R13 R14 3 [1]
  SETTABLEKS R13 R12 K0 ["children"]
  LOADK R13 K36 ["TABLE_CELL"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 22
  SETTABLEKS R13 R12 K2 ["offset"]
  SETLIST R10 R11 2 [1]
  SETTABLEKS R10 R9 K0 ["children"]
  LOADB R10 1
  SETTABLEKS R10 R9 K5 ["isBlock"]
  LOADK R10 K44 ["TABLE_ROW"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 8
  SETTABLEKS R10 R9 K2 ["offset"]
  DUPTABLE R10 K34 [{"children", "isBlock", "name", "offset"}]
  NEWTABLE R11 0 2
  DUPTABLE R12 K3 [{"children", "name", "offset"}]
  NEWTABLE R13 0 1
  DUPTABLE R14 K10 [{"name", "offset", "text"}]
  LOADK R15 K11 ["TEXT"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 56
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K45 ["Content C"]
  SETTABLEKS R15 R14 K9 ["text"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K0 ["children"]
  LOADK R13 K36 ["TABLE_CELL"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 56
  SETTABLEKS R13 R12 K2 ["offset"]
  DUPTABLE R13 K3 [{"children", "name", "offset"}]
  NEWTABLE R14 0 1
  DUPTABLE R15 K10 [{"name", "offset", "text"}]
  LOADK R16 K11 ["TEXT"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 68
  SETTABLEKS R16 R15 K2 ["offset"]
  LOADK R16 K46 ["-"]
  SETTABLEKS R16 R15 K9 ["text"]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K0 ["children"]
  LOADK R14 K36 ["TABLE_CELL"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 68
  SETTABLEKS R14 R13 K2 ["offset"]
  SETLIST R11 R12 2 [1]
  SETTABLEKS R11 R10 K0 ["children"]
  LOADB R11 1
  SETTABLEKS R11 R10 K5 ["isBlock"]
  LOADK R11 K44 ["TABLE_ROW"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 54
  SETTABLEKS R11 R10 K2 ["offset"]
  SETLIST R7 R8 3 [1]
  SETTABLEKS R7 R6 K0 ["children"]
  LOADK R7 K47 ["TABLE"]
  SETTABLEKS R7 R6 K1 ["name"]
  LOADN R7 224
  SETTABLEKS R7 R6 K2 ["offset"]
  DUPTABLE R7 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R8 K8 [{"depth"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K7 ["depth"]
  SETTABLEKS R8 R7 K4 ["attributes"]
  NEWTABLE R8 0 1
  DUPTABLE R9 K10 [{"name", "offset", "text"}]
  LOADK R10 K11 ["TEXT"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 76
  SETTABLEKS R10 R9 K2 ["offset"]
  LOADK R10 K48 ["Code block"]
  SETTABLEKS R10 R9 K9 ["text"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K0 ["children"]
  LOADB R8 1
  SETTABLEKS R8 R7 K5 ["isBlock"]
  LOADK R8 K20 ["HEADING"]
  SETTABLEKS R8 R7 K1 ["name"]
  LOADN R8 73
  SETTABLEKS R8 R7 K2 ["offset"]
  DUPTABLE R8 K49 [{"attributes", "name", "offset", "text"}]
  DUPTABLE R9 K51 [{"language"}]
  LOADK R10 K52 ["lua"]
  SETTABLEKS R10 R9 K50 ["language"]
  SETTABLEKS R9 R8 K4 ["attributes"]
  LOADK R9 K53 ["CODE_BLOCK"]
  SETTABLEKS R9 R8 K1 ["name"]
  LOADN R9 88
  SETTABLEKS R9 R8 K2 ["offset"]
  LOADK R9 K54 ["-- factorial function
function fact(n)
  if n == 0 then
    -- comment
    return 1
  else
    return n * fact(n-1)
  end
end

local foo = {}
for i=1, 10 do
  foo.bar = i
end

print(\"enter a number:\")
a = io.read(\"*number\")
print(fact(a))"]
  SETTABLEKS R9 R8 K9 ["text"]
  DUPTABLE R9 K55 [{"isBlock", "name", "offset"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K5 ["isBlock"]
  LOADK R10 K56 ["DIVIDER"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 83
  SETTABLEKS R10 R9 K2 ["offset"]
  DUPTABLE R10 K3 [{"children", "name", "offset"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K10 [{"name", "offset", "text"}]
  LOADK R13 K11 ["TEXT"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 88
  SETTABLEKS R13 R12 K2 ["offset"]
  LOADK R13 K57 ["Non-lua code block:"]
  SETTABLEKS R13 R12 K9 ["text"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K0 ["children"]
  LOADK R11 K22 ["PARAGRAPH"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 88
  SETTABLEKS R11 R10 K2 ["offset"]
  DUPTABLE R11 K49 [{"attributes", "name", "offset", "text"}]
  DUPTABLE R12 K51 [{"language"}]
  LOADK R13 K58 ["ruby"]
  SETTABLEKS R13 R12 K50 ["language"]
  SETTABLEKS R12 R11 K4 ["attributes"]
  LOADK R12 K53 ["CODE_BLOCK"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 109
  SETTABLEKS R12 R11 K2 ["offset"]
  LOADK R12 K59 ["class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end"]
  SETTABLEKS R12 R11 K9 ["text"]
  DUPTABLE R12 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R13 K8 [{"depth"}]
  LOADN R14 3
  SETTABLEKS R14 R13 K7 ["depth"]
  SETTABLEKS R13 R12 K4 ["attributes"]
  NEWTABLE R13 0 2
  DUPTABLE R14 K10 [{"name", "offset", "text"}]
  LOADK R15 K11 ["TEXT"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 191
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K60 ["Really sub-heading with a "]
  SETTABLEKS R15 R14 K9 ["text"]
  DUPTABLE R15 K62 [{"name", "offset", "text", "url"}]
  LOADK R16 K63 ["LINK"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 218
  SETTABLEKS R16 R15 K2 ["offset"]
  LOADK R16 K64 ["link"]
  SETTABLEKS R16 R15 K9 ["text"]
  LOADK R16 K65 ["http://example.com"]
  SETTABLEKS R16 R15 K61 ["url"]
  SETLIST R13 R14 2 [1]
  SETTABLEKS R13 R12 K0 ["children"]
  LOADB R13 1
  SETTABLEKS R13 R12 K5 ["isBlock"]
  LOADK R13 K20 ["HEADING"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 187
  SETTABLEKS R13 R12 K2 ["offset"]
  DUPTABLE R13 K13 [{"attributes", "children", "name", "offset"}]
  DUPTABLE R14 K8 [{"depth"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K7 ["depth"]
  SETTABLEKS R14 R13 K4 ["attributes"]
  NEWTABLE R14 0 4
  DUPTABLE R15 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R16 K67 [{"depth", "prefix"}]
  LOADN R17 0
  SETTABLEKS R17 R16 K7 ["depth"]
  LOADK R17 K68 ["1"]
  SETTABLEKS R17 R16 K66 ["prefix"]
  SETTABLEKS R16 R15 K4 ["attributes"]
  NEWTABLE R16 0 1
  DUPTABLE R17 K10 [{"name", "offset", "text"}]
  LOADK R18 K11 ["TEXT"]
  SETTABLEKS R18 R17 K1 ["name"]
  LOADN R18 248
  SETTABLEKS R18 R17 K2 ["offset"]
  LOADK R18 K69 ["Number list one"]
  SETTABLEKS R18 R17 K9 ["text"]
  SETLIST R16 R17 1 [1]
  SETTABLEKS R16 R15 K0 ["children"]
  LOADB R16 1
  SETTABLEKS R16 R15 K5 ["isBlock"]
  LOADK R16 K70 ["LIST_ITEM"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 245
  SETTABLEKS R16 R15 K2 ["offset"]
  DUPTABLE R16 K13 [{"attributes", "children", "name", "offset"}]
  DUPTABLE R17 K8 [{"depth"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K7 ["depth"]
  SETTABLEKS R17 R16 K4 ["attributes"]
  NEWTABLE R17 0 2
  DUPTABLE R18 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R19 K67 [{"depth", "prefix"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K7 ["depth"]
  LOADK R20 K71 ["a"]
  SETTABLEKS R20 R19 K66 ["prefix"]
  SETTABLEKS R19 R18 K4 ["attributes"]
  NEWTABLE R19 0 2
  DUPTABLE R20 K10 [{"name", "offset", "text"}]
  LOADK R21 K11 ["TEXT"]
  SETTABLEKS R21 R20 K1 ["name"]
  LOADN R21 13
  SETTABLEKS R21 R20 K2 ["offset"]
  LOADK R21 K72 ["Sub-list one with a "]
  SETTABLEKS R21 R20 K9 ["text"]
  DUPTABLE R21 K62 [{"name", "offset", "text", "url"}]
  LOADK R22 K63 ["LINK"]
  SETTABLEKS R22 R21 K1 ["name"]
  LOADN R22 34
  SETTABLEKS R22 R21 K2 ["offset"]
  LOADK R22 K64 ["link"]
  SETTABLEKS R22 R21 K9 ["text"]
  LOADK R22 K65 ["http://example.com"]
  SETTABLEKS R22 R21 K61 ["url"]
  SETLIST R19 R20 2 [1]
  SETTABLEKS R19 R18 K0 ["children"]
  LOADB R19 1
  SETTABLEKS R19 R18 K5 ["isBlock"]
  LOADK R19 K70 ["LIST_ITEM"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 8
  SETTABLEKS R19 R18 K2 ["offset"]
  DUPTABLE R19 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R20 K67 [{"depth", "prefix"}]
  LOADN R21 2
  SETTABLEKS R21 R20 K7 ["depth"]
  LOADK R21 K73 ["b"]
  SETTABLEKS R21 R20 K66 ["prefix"]
  SETTABLEKS R20 R19 K4 ["attributes"]
  NEWTABLE R20 0 2
  DUPTABLE R21 K10 [{"name", "offset", "text"}]
  LOADK R22 K11 ["TEXT"]
  SETTABLEKS R22 R21 K1 ["name"]
  LOADN R22 65
  SETTABLEKS R22 R21 K2 ["offset"]
  LOADK R22 K74 ["Sub-list "]
  SETTABLEKS R22 R21 K9 ["text"]
  DUPTABLE R22 K13 [{"attributes", "children", "name", "offset"}]
  DUPTABLE R23 K15 [{"style"}]
  LOADK R24 K24 ["BOLD"]
  SETTABLEKS R24 R23 K14 ["style"]
  SETTABLEKS R23 R22 K4 ["attributes"]
  NEWTABLE R23 0 1
  DUPTABLE R24 K10 [{"name", "offset", "text"}]
  LOADK R25 K11 ["TEXT"]
  SETTABLEKS R25 R24 K1 ["name"]
  LOADN R25 76
  SETTABLEKS R25 R24 K2 ["offset"]
  LOADK R25 K75 ["two"]
  SETTABLEKS R25 R24 K9 ["text"]
  SETLIST R23 R24 1 [1]
  SETTABLEKS R23 R22 K0 ["children"]
  LOADK R23 K18 ["STYLED_TEXT"]
  SETTABLEKS R23 R22 K1 ["name"]
  LOADN R23 75
  SETTABLEKS R23 R22 K2 ["offset"]
  SETLIST R20 R21 2 [1]
  SETTABLEKS R20 R19 K0 ["children"]
  LOADB R20 1
  SETTABLEKS R20 R19 K5 ["isBlock"]
  LOADK R20 K70 ["LIST_ITEM"]
  SETTABLEKS R20 R19 K1 ["name"]
  LOADN R20 60
  SETTABLEKS R20 R19 K2 ["offset"]
  SETLIST R17 R18 2 [1]
  SETTABLEKS R17 R16 K0 ["children"]
  LOADK R17 K76 ["LIST"]
  SETTABLEKS R17 R16 K1 ["name"]
  LOADN R17 8
  SETTABLEKS R17 R16 K2 ["offset"]
  DUPTABLE R17 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R18 K67 [{"depth", "prefix"}]
  LOADN R19 0
  SETTABLEKS R19 R18 K7 ["depth"]
  LOADK R19 K77 ["2"]
  SETTABLEKS R19 R18 K66 ["prefix"]
  SETTABLEKS R18 R17 K4 ["attributes"]
  NEWTABLE R18 0 1
  DUPTABLE R19 K10 [{"name", "offset", "text"}]
  LOADK R20 K11 ["TEXT"]
  SETTABLEKS R20 R19 K1 ["name"]
  LOADN R20 83
  SETTABLEKS R20 R19 K2 ["offset"]
  LOADK R20 K78 ["Number list two"]
  SETTABLEKS R20 R19 K9 ["text"]
  SETLIST R18 R19 1 [1]
  SETTABLEKS R18 R17 K0 ["children"]
  LOADB R18 1
  SETTABLEKS R18 R17 K5 ["isBlock"]
  LOADK R18 K70 ["LIST_ITEM"]
  SETTABLEKS R18 R17 K1 ["name"]
  LOADN R18 80
  SETTABLEKS R18 R17 K2 ["offset"]
  DUPTABLE R18 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R19 K67 [{"depth", "prefix"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K7 ["depth"]
  LOADK R20 K79 ["3"]
  SETTABLEKS R20 R19 K66 ["prefix"]
  SETTABLEKS R19 R18 K4 ["attributes"]
  NEWTABLE R19 0 1
  DUPTABLE R20 K10 [{"name", "offset", "text"}]
  LOADK R21 K11 ["TEXT"]
  SETTABLEKS R21 R20 K1 ["name"]
  LOADN R21 102
  SETTABLEKS R21 R20 K2 ["offset"]
  LOADK R21 K80 ["Number list three"]
  SETTABLEKS R21 R20 K9 ["text"]
  SETLIST R19 R20 1 [1]
  SETTABLEKS R19 R18 K0 ["children"]
  LOADB R19 1
  SETTABLEKS R19 R18 K5 ["isBlock"]
  LOADK R19 K70 ["LIST_ITEM"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 99
  SETTABLEKS R19 R18 K2 ["offset"]
  SETLIST R14 R15 4 [1]
  SETTABLEKS R14 R13 K0 ["children"]
  LOADK R14 K76 ["LIST"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 245
  SETTABLEKS R14 R13 K2 ["offset"]
  DUPTABLE R14 K55 [{"isBlock", "name", "offset"}]
  LOADB R15 1
  SETTABLEKS R15 R14 K5 ["isBlock"]
  LOADK R15 K81 ["DIVIDER_2"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 121
  SETTABLEKS R15 R14 K2 ["offset"]
  DUPTABLE R15 K13 [{"attributes", "children", "name", "offset"}]
  DUPTABLE R16 K8 [{"depth"}]
  LOADN R17 0
  SETTABLEKS R17 R16 K7 ["depth"]
  SETTABLEKS R16 R15 K4 ["attributes"]
  NEWTABLE R16 0 2
  DUPTABLE R17 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R18 K67 [{"depth", "prefix"}]
  LOADN R19 0
  SETTABLEKS R19 R18 K7 ["depth"]
  LOADK R19 K46 ["-"]
  SETTABLEKS R19 R18 K66 ["prefix"]
  SETTABLEKS R18 R17 K4 ["attributes"]
  NEWTABLE R18 0 1
  DUPTABLE R19 K10 [{"name", "offset", "text"}]
  LOADK R20 K11 ["TEXT"]
  SETTABLEKS R20 R19 K1 ["name"]
  LOADN R20 128
  SETTABLEKS R20 R19 K2 ["offset"]
  LOADK R20 K82 ["Bullet one"]
  SETTABLEKS R20 R19 K9 ["text"]
  SETLIST R18 R19 1 [1]
  SETTABLEKS R18 R17 K0 ["children"]
  LOADB R18 1
  SETTABLEKS R18 R17 K5 ["isBlock"]
  LOADK R18 K70 ["LIST_ITEM"]
  SETTABLEKS R18 R17 K1 ["name"]
  LOADN R18 126
  SETTABLEKS R18 R17 K2 ["offset"]
  DUPTABLE R18 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R19 K67 [{"depth", "prefix"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K7 ["depth"]
  LOADK R20 K83 ["*"]
  SETTABLEKS R20 R19 K66 ["prefix"]
  SETTABLEKS R19 R18 K4 ["attributes"]
  NEWTABLE R19 0 4
  DUPTABLE R20 K10 [{"name", "offset", "text"}]
  LOADK R21 K11 ["TEXT"]
  SETTABLEKS R21 R20 K1 ["name"]
  LOADN R21 141
  SETTABLEKS R21 R20 K2 ["offset"]
  LOADK R21 K84 ["Bullet two with an "]
  SETTABLEKS R21 R20 K9 ["text"]
  DUPTABLE R21 K10 [{"name", "offset", "text"}]
  LOADK R22 K85 ["ACTION"]
  SETTABLEKS R22 R21 K1 ["name"]
  LOADN R22 161
  SETTABLEKS R22 R21 K2 ["offset"]
  LOADK R22 K86 ["[[action]]"]
  SETTABLEKS R22 R21 K9 ["text"]
  DUPTABLE R22 K10 [{"name", "offset", "text"}]
  LOADK R23 K11 ["TEXT"]
  SETTABLEKS R23 R22 K1 ["name"]
  LOADN R23 171
  SETTABLEKS R23 R22 K2 ["offset"]
  LOADK R23 K87 [" and a "]
  SETTABLEKS R23 R22 K9 ["text"]
  DUPTABLE R23 K62 [{"name", "offset", "text", "url"}]
  LOADK R24 K63 ["LINK"]
  SETTABLEKS R24 R23 K1 ["name"]
  LOADN R24 178
  SETTABLEKS R24 R23 K2 ["offset"]
  LOADK R24 K64 ["link"]
  SETTABLEKS R24 R23 K9 ["text"]
  LOADK R24 K65 ["http://example.com"]
  SETTABLEKS R24 R23 K61 ["url"]
  SETLIST R19 R20 4 [1]
  SETTABLEKS R19 R18 K0 ["children"]
  LOADB R19 1
  SETTABLEKS R19 R18 K5 ["isBlock"]
  LOADK R19 K70 ["LIST_ITEM"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 139
  SETTABLEKS R19 R18 K2 ["offset"]
  SETLIST R16 R17 2 [1]
  SETTABLEKS R16 R15 K0 ["children"]
  LOADK R16 K76 ["LIST"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 126
  SETTABLEKS R16 R15 K2 ["offset"]
  DUPTABLE R16 K3 [{"children", "name", "offset"}]
  NEWTABLE R17 0 1
  DUPTABLE R18 K10 [{"name", "offset", "text"}]
  LOADK R19 K11 ["TEXT"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 205
  SETTABLEKS R19 R18 K2 ["offset"]
  LOADK R19 K88 ["Some"]
  SETTABLEKS R19 R18 K9 ["text"]
  SETLIST R17 R18 1 [1]
  SETTABLEKS R17 R16 K0 ["children"]
  LOADK R17 K22 ["PARAGRAPH"]
  SETTABLEKS R17 R16 K1 ["name"]
  LOADN R17 205
  SETTABLEKS R17 R16 K2 ["offset"]
  DUPTABLE R17 K34 [{"children", "isBlock", "name", "offset"}]
  NEWTABLE R18 0 1
  DUPTABLE R19 K10 [{"name", "offset", "text"}]
  LOADK R20 K11 ["TEXT"]
  SETTABLEKS R20 R19 K1 ["name"]
  LOADN R20 212
  SETTABLEKS R20 R19 K2 ["offset"]
  LOADK R20 K89 ["quoted text"]
  SETTABLEKS R20 R19 K9 ["text"]
  SETLIST R18 R19 1 [1]
  SETTABLEKS R18 R17 K0 ["children"]
  LOADB R18 1
  SETTABLEKS R18 R17 K5 ["isBlock"]
  LOADK R18 K90 ["QUOTE"]
  SETTABLEKS R18 R17 K1 ["name"]
  LOADN R18 210
  SETTABLEKS R18 R17 K2 ["offset"]
  SETLIST R1 R2 16 [1]
  DUPTABLE R2 K3 [{"children", "name", "offset"}]
  NEWTABLE R3 0 1
  DUPTABLE R4 K10 [{"name", "offset", "text"}]
  LOADK R5 K11 ["TEXT"]
  SETTABLEKS R5 R4 K1 ["name"]
  LOADN R5 225
  SETTABLEKS R5 R4 K2 ["offset"]
  LOADK R5 K91 ["Some "]
  SETTABLEKS R5 R4 K9 ["text"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K0 ["children"]
  LOADK R3 K22 ["PARAGRAPH"]
  SETTABLEKS R3 R2 K1 ["name"]
  LOADN R3 225
  SETTABLEKS R3 R2 K2 ["offset"]
  DUPTABLE R3 K92 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R4 K15 [{"style"}]
  LOADK R5 K93 ["color: #fff"]
  SETTABLEKS R5 R4 K14 ["style"]
  SETTABLEKS R4 R3 K4 ["attributes"]
  NEWTABLE R4 0 2
  DUPTABLE R5 K3 [{"children", "name", "offset"}]
  NEWTABLE R6 0 1
  DUPTABLE R7 K10 [{"name", "offset", "text"}]
  LOADK R8 K11 ["TEXT"]
  SETTABLEKS R8 R7 K1 ["name"]
  LOADN R8 0
  SETTABLEKS R8 R7 K2 ["offset"]
  LOADK R8 K94 ["custom tag with a "]
  SETTABLEKS R8 R7 K9 ["text"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K0 ["children"]
  LOADK R6 K22 ["PARAGRAPH"]
  SETTABLEKS R6 R5 K1 ["name"]
  LOADN R6 0
  SETTABLEKS R6 R5 K2 ["offset"]
  DUPTABLE R6 K95 [{"children", "name", "offset", "text"}]
  NEWTABLE R7 0 1
  DUPTABLE R8 K3 [{"children", "name", "offset"}]
  NEWTABLE R9 0 1
  DUPTABLE R10 K10 [{"name", "offset", "text"}]
  LOADK R11 K11 ["TEXT"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 24
  SETTABLEKS R11 R10 K2 ["offset"]
  LOADK R11 K96 ["span inside"]
  SETTABLEKS R11 R10 K9 ["text"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K0 ["children"]
  LOADK R9 K22 ["PARAGRAPH"]
  SETTABLEKS R9 R8 K1 ["name"]
  LOADN R9 24
  SETTABLEKS R9 R8 K2 ["offset"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K0 ["children"]
  LOADK R7 K97 ["TAG"]
  SETTABLEKS R7 R6 K1 ["name"]
  LOADN R7 18
  SETTABLEKS R7 R6 K2 ["offset"]
  LOADK R7 K98 ["span"]
  SETTABLEKS R7 R6 K9 ["text"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K0 ["children"]
  LOADK R4 K97 ["TAG"]
  SETTABLEKS R4 R3 K1 ["name"]
  LOADN R4 231
  SETTABLEKS R4 R3 K2 ["offset"]
  LOADK R4 K99 ["div"]
  SETTABLEKS R4 R3 K9 ["text"]
  DUPTABLE R4 K3 [{"children", "name", "offset"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K10 [{"name", "offset", "text"}]
  LOADK R7 K11 ["TEXT"]
  SETTABLEKS R7 R6 K1 ["name"]
  LOADN R7 48
  SETTABLEKS R7 R6 K2 ["offset"]
  LOADK R7 K100 ["."]
  SETTABLEKS R7 R6 K9 ["text"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K0 ["children"]
  LOADK R5 K22 ["PARAGRAPH"]
  SETTABLEKS R5 R4 K1 ["name"]
  LOADN R5 48
  SETTABLEKS R5 R4 K2 ["offset"]
  DUPTABLE R5 K95 [{"children", "name", "offset", "text"}]
  NEWTABLE R6 0 3
  DUPTABLE R7 K3 [{"children", "name", "offset"}]
  NEWTABLE R8 0 1
  DUPTABLE R9 K95 [{"children", "name", "offset", "text"}]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K0 ["children"]
  LOADK R10 K11 ["TEXT"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 56
  SETTABLEKS R10 R9 K2 ["offset"]
  LOADK R10 K101 ["Multiline"]
  SETTABLEKS R10 R9 K9 ["text"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K0 ["children"]
  LOADK R8 K22 ["PARAGRAPH"]
  SETTABLEKS R8 R7 K1 ["name"]
  LOADN R8 56
  SETTABLEKS R8 R7 K2 ["offset"]
  DUPTABLE R8 K102 [{"children", "attributes", "name", "offset", "text"}]
  NEWTABLE R9 0 1
  DUPTABLE R10 K3 [{"children", "name", "offset"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K10 [{"name", "offset", "text"}]
  LOADK R13 K11 ["TEXT"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 71
  SETTABLEKS R13 R12 K2 ["offset"]
  LOADK R13 K103 ["bold text"]
  SETTABLEKS R13 R12 K9 ["text"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K0 ["children"]
  LOADK R11 K22 ["PARAGRAPH"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 71
  SETTABLEKS R11 R10 K2 ["offset"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K0 ["children"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K4 ["attributes"]
  LOADK R9 K97 ["TAG"]
  SETTABLEKS R9 R8 K1 ["name"]
  LOADN R9 68
  SETTABLEKS R9 R8 K2 ["offset"]
  LOADK R9 K73 ["b"]
  SETTABLEKS R9 R8 K9 ["text"]
  DUPTABLE R9 K13 [{"attributes", "children", "name", "offset"}]
  DUPTABLE R10 K8 [{"depth"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K7 ["depth"]
  SETTABLEKS R10 R9 K4 ["attributes"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K6 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R12 K67 [{"depth", "prefix"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K7 ["depth"]
  LOADK R13 K83 ["*"]
  SETTABLEKS R13 R12 K66 ["prefix"]
  SETTABLEKS R12 R11 K4 ["attributes"]
  NEWTABLE R12 0 3
  DUPTABLE R13 K95 [{"children", "name", "offset", "text"}]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K0 ["children"]
  LOADK R14 K11 ["TEXT"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 87
  SETTABLEKS R14 R13 K2 ["offset"]
  LOADK R14 K104 ["A list element with "]
  SETTABLEKS R14 R13 K9 ["text"]
  DUPTABLE R14 K102 [{"children", "attributes", "name", "offset", "text"}]
  NEWTABLE R15 0 1
  DUPTABLE R16 K3 [{"children", "name", "offset"}]
  NEWTABLE R17 0 1
  DUPTABLE R18 K95 [{"children", "name", "offset", "text"}]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K0 ["children"]
  LOADK R19 K11 ["TEXT"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 114
  SETTABLEKS R19 R18 K2 ["offset"]
  LOADK R19 K105 ["a tag"]
  SETTABLEKS R19 R18 K9 ["text"]
  SETLIST R17 R18 1 [1]
  SETTABLEKS R17 R16 K0 ["children"]
  LOADK R17 K22 ["PARAGRAPH"]
  SETTABLEKS R17 R16 K1 ["name"]
  LOADN R17 114
  SETTABLEKS R17 R16 K2 ["offset"]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K0 ["children"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K4 ["attributes"]
  LOADK R15 K97 ["TAG"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 108
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K98 ["span"]
  SETTABLEKS R15 R14 K9 ["text"]
  DUPTABLE R15 K95 [{"children", "name", "offset", "text"}]
  NEWTABLE R16 0 0
  SETTABLEKS R16 R15 K0 ["children"]
  LOADK R16 K11 ["TEXT"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 126
  SETTABLEKS R16 R15 K2 ["offset"]
  LOADK R16 K100 ["."]
  SETTABLEKS R16 R15 K9 ["text"]
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K0 ["children"]
  LOADB R12 1
  SETTABLEKS R12 R11 K5 ["isBlock"]
  LOADK R12 K70 ["LIST_ITEM"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 85
  SETTABLEKS R12 R11 K2 ["offset"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K0 ["children"]
  LOADK R10 K76 ["LIST"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 85
  SETTABLEKS R10 R9 K2 ["offset"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K0 ["children"]
  LOADK R6 K97 ["TAG"]
  SETTABLEKS R6 R5 K1 ["name"]
  LOADN R6 51
  SETTABLEKS R6 R5 K2 ["offset"]
  LOADK R6 K99 ["div"]
  SETTABLEKS R6 R5 K9 ["text"]
  DUPTABLE R6 K106 [{"name", "offset", "children"}]
  LOADK R18 K22 ["PARAGRAPH"]
  SETTABLEKS R18 R6 K1 ["name"]
  LOADN R18 135
  SETTABLEKS R18 R6 K2 ["offset"]
  NEWTABLE R18 0 2
  DUPTABLE R19 K10 [{"name", "offset", "text"}]
  LOADK R20 K11 ["TEXT"]
  SETTABLEKS R20 R19 K1 ["name"]
  LOADN R20 135
  SETTABLEKS R20 R19 K2 ["offset"]
  LOADK R20 K107 ["An "]
  SETTABLEKS R20 R19 K9 ["text"]
  DUPTABLE R20 K108 [{"children", "name", "offset", "text", "url"}]
  NEWTABLE R21 0 0
  SETTABLEKS R21 R20 K0 ["children"]
  LOADK R21 K109 ["IMAGE"]
  SETTABLEKS R21 R20 K1 ["name"]
  LOADN R21 139
  SETTABLEKS R21 R20 K2 ["offset"]
  LOADK R21 K110 ["Image"]
  SETTABLEKS R21 R20 K9 ["text"]
  LOADK R21 K111 ["rbxassetid://123456"]
  SETTABLEKS R21 R20 K61 ["url"]
  SETLIST R18 R19 2 [1]
  SETTABLEKS R18 R6 K0 ["children"]
  SETLIST R1 R2 5 [17]
  SETTABLEKS R1 R0 K0 ["children"]
  LOADK R1 K112 ["ROOT"]
  SETTABLEKS R1 R0 K1 ["name"]
  LOADN R1 1
  SETTABLEKS R1 R0 K2 ["offset"]
  DUPTABLE R1 K115 [{"markdown", "ast"}]
  LOADK R2 K116 ["# Heading with _italic_ text

\# Not a heading.

Some paragraph text with some *bold*, _italic_, ~strike~ text, and a `code *snippet_`.
Some basic content in the same paragraph.

Some basic content in a separate paragraph.

| Heading A | Heading B |
| --- | --- |
| Content A | Content B <br> with a newline |
| Content C | - |

## Code block

```lua
-- factorial function
function fact(n)
  if n == 0 then
    -- comment
    return 1
  else
    return n * fact(n-1)
  end
end

local foo = {}
for i=1, 10 do
  foo.bar = i
end

print(\"enter a number:\")
a = io.read(\"*number\")
print(fact(a))
```

---

Non-lua code block:

```ruby
class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end
```

### Really sub-heading with a [link](http://example.com)

1. Number list one
  a. Sub-list one with a [link](http://example.com)
  b. Sub-list *two*
2. Number list two
3. Number list three

===

- Bullet one
* Bullet two with an [[action]] and a [link](http://example.com)

Some
> quoted text

Some <div style=\"color: #fff\">custom tag with a <span>span inside</span></div>.

<div>
  Multiline

  <b>bold text</b>

  * A list element with <span>a tag</span>.
</div>

An ![Image](rbxassetid://123456)

"]
  SETTABLEKS R2 R1 K113 ["markdown"]
  SETTABLEKS R0 R1 K114 ["ast"]
  RETURN R1 1
