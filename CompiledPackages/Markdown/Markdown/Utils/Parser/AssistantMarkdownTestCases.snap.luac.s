MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 2
  DUPTABLE R1 K3 [{"name", "markdown", "ast"}]
  LOADK R2 K4 ["incomplete code block"]
  SETTABLEKS R2 R1 K0 ["name"]
  LOADK R2 K5 ["# Assistant Response

Here's some code that I am in middle of writing:

```lua
-- factorial function
function fact(n)
  if n == 0 then
    -- comment
    return 1
  else
    return n * fact(n-1)"]
  SETTABLEKS R2 R1 K1 ["markdown"]
  DUPTABLE R2 K9 [{"name", "index", "offset", "children"}]
  LOADK R3 K10 ["ROOT"]
  SETTABLEKS R3 R2 K0 ["name"]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["index"]
  LOADN R3 1
  SETTABLEKS R3 R2 K7 ["offset"]
  NEWTABLE R3 0 3
  DUPTABLE R4 K13 [{"index", "isBlock", "name", "offset", "attributes", "children"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K6 ["index"]
  LOADB R5 1
  SETTABLEKS R5 R4 K11 ["isBlock"]
  LOADK R5 K14 ["HEADING"]
  SETTABLEKS R5 R4 K0 ["name"]
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["offset"]
  DUPTABLE R5 K16 [{"depth"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K15 ["depth"]
  SETTABLEKS R5 R4 K12 ["attributes"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K18 [{"children", "index", "name", "offset", "text"}]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K8 ["children"]
  LOADN R7 1
  SETTABLEKS R7 R6 K6 ["index"]
  LOADK R7 K19 ["TEXT"]
  SETTABLEKS R7 R6 K0 ["name"]
  LOADN R7 2
  SETTABLEKS R7 R6 K7 ["offset"]
  LOADK R7 K20 ["Assistant Response"]
  SETTABLEKS R7 R6 K17 ["text"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K8 ["children"]
  DUPTABLE R5 K21 [{"index", "name", "offset", "children"}]
  LOADN R6 2
  SETTABLEKS R6 R5 K6 ["index"]
  LOADK R6 K22 ["PARAGRAPH"]
  SETTABLEKS R6 R5 K0 ["name"]
  LOADN R6 22
  SETTABLEKS R6 R5 K7 ["offset"]
  NEWTABLE R6 0 1
  DUPTABLE R7 K18 [{"children", "index", "name", "offset", "text"}]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K8 ["children"]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["index"]
  LOADK R8 K19 ["TEXT"]
  SETTABLEKS R8 R7 K0 ["name"]
  LOADN R8 22
  SETTABLEKS R8 R7 K7 ["offset"]
  LOADK R8 K23 ["Here's some code that I am in middle of writing:"]
  SETTABLEKS R8 R7 K17 ["text"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K8 ["children"]
  DUPTABLE R6 K24 [{"index", "name", "offset", "attributes", "children", "text"}]
  LOADN R7 3
  SETTABLEKS R7 R6 K6 ["index"]
  LOADK R7 K25 ["CODE_BLOCK"]
  SETTABLEKS R7 R6 K0 ["name"]
  LOADN R7 72
  SETTABLEKS R7 R6 K7 ["offset"]
  DUPTABLE R7 K27 [{"language"}]
  LOADK R8 K28 ["lua"]
  SETTABLEKS R8 R7 K26 ["language"]
  SETTABLEKS R7 R6 K12 ["attributes"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K8 ["children"]
  LOADK R7 K29 ["-- factorial function
function fact(n)
  if n == 0 then
    -- comment
    return 1
  else
    return n * fact(n-1)"]
  SETTABLEKS R7 R6 K17 ["text"]
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K8 ["children"]
  SETTABLEKS R2 R1 K2 ["ast"]
  DUPTABLE R2 K3 [{"name", "markdown", "ast"}]
  LOADK R3 K30 ["incomplete inline code"]
  SETTABLEKS R3 R2 K0 ["name"]
  LOADK R3 K31 ["Here's some `inline code that doesn't have an end"]
  SETTABLEKS R3 R2 K1 ["markdown"]
  DUPTABLE R3 K9 [{"name", "index", "offset", "children"}]
  LOADK R4 K10 ["ROOT"]
  SETTABLEKS R4 R3 K0 ["name"]
  LOADN R4 1
  SETTABLEKS R4 R3 K6 ["index"]
  LOADN R4 1
  SETTABLEKS R4 R3 K7 ["offset"]
  NEWTABLE R4 0 1
  DUPTABLE R5 K32 [{"index", "offset", "name", "children"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K6 ["index"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["offset"]
  LOADK R6 K22 ["PARAGRAPH"]
  SETTABLEKS R6 R5 K0 ["name"]
  NEWTABLE R6 0 2
  DUPTABLE R7 K18 [{"children", "index", "name", "offset", "text"}]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K8 ["children"]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["index"]
  LOADK R8 K19 ["TEXT"]
  SETTABLEKS R8 R7 K0 ["name"]
  LOADN R8 0
  SETTABLEKS R8 R7 K7 ["offset"]
  LOADK R8 K33 ["Here's some "]
  SETTABLEKS R8 R7 K17 ["text"]
  DUPTABLE R8 K18 [{"children", "index", "name", "offset", "text"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K8 ["children"]
  LOADN R9 2
  SETTABLEKS R9 R8 K6 ["index"]
  LOADK R9 K34 ["INLINE_CODE"]
  SETTABLEKS R9 R8 K0 ["name"]
  LOADN R9 13
  SETTABLEKS R9 R8 K7 ["offset"]
  LOADK R9 K35 ["inline code that doesn't have an end"]
  SETTABLEKS R9 R8 K17 ["text"]
  SETLIST R6 R7 2 [1]
  SETTABLEKS R6 R5 K8 ["children"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K8 ["children"]
  SETTABLEKS R3 R2 K2 ["ast"]
  SETLIST R0 R1 2 [1]
  RETURN R0 1
