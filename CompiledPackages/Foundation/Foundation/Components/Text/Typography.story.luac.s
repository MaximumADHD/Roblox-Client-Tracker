PROTO_0:
  GETTABLEKS R2 R0 K0 ["controls"]
  GETTABLEKS R1 R2 K1 ["typography"]
  GETUPVAL R2 0
  CALL R2 0 1
  GETTABLEKS R4 R2 K2 ["Typography"]
  GETTABLE R3 R4 R1
  GETTABLEKS R5 R3 K3 ["FontSize"]
  GETUPVAL R6 1
  DIV R4 R5 R6
  GETTABLEKS R6 R3 K4 ["LineHeight"]
  GETUPVAL R7 1
  MUL R5 R6 R7
  MUL R6 R4 R5
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K8 [{"tag", "layout"}]
  LOADK R10 K9 ["auto-y size-full-0 col"]
  SETTABLEKS R10 R9 K6 ["tag"]
  DUPTABLE R10 K12 [{"FillDirection", "Padding"}]
  GETIMPORT R11 K15 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K10 ["FillDirection"]
  GETIMPORT R11 K18 [UDim.new]
  LOADN R12 0
  GETTABLEKS R14 R2 K19 ["Margin"]
  GETTABLEKS R13 R14 K20 ["Medium"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K11 ["Padding"]
  SETTABLEKS R10 R9 K7 ["layout"]
  DUPTABLE R10 K24 [{"Metadata", "Inline", "MultiLine"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K26 [{"LayoutOrder", "tag"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K25 ["LayoutOrder"]
  LOADK R14 K27 ["flex-between row auto-y size-full-0"]
  SETTABLEKS R14 R13 K6 ["tag"]
  DUPTABLE R14 K30 [{"Title", "Size"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K32 [{"Text", "tag"}]
  LOADK R19 K33 ["Typography.%*"]
  MOVE R21 R1
  NAMECALL R19 R19 K34 ["format"]
  CALL R19 2 1
  MOVE R18 R19
  SETTABLEKS R18 R17 K31 ["Text"]
  LOADK R18 K35 ["content-default text-label-large auto-xy"]
  SETTABLEKS R18 R17 K6 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K28 ["Title"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K32 [{"Text", "tag"}]
  GETIMPORT R18 K37 [string.format]
  LOADK R19 K38 ["%dpx / %.1f (%dpx)"]
  FASTCALL1 MATH_ROUND R4 [+3]
  MOVE R21 R4
  GETIMPORT R20 K41 [math.round]
  CALL R20 1 1
  MOVE R21 R5
  FASTCALL1 MATH_ROUND R6 [+3]
  MOVE R23 R6
  GETIMPORT R22 K41 [math.round]
  CALL R22 1 1
  CALL R18 4 1
  SETTABLEKS R18 R17 K31 ["Text"]
  LOADK R18 K35 ["content-default text-label-large auto-xy"]
  SETTABLEKS R18 R17 K6 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K29 ["Size"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K21 ["Metadata"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K26 [{"LayoutOrder", "tag"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K25 ["LayoutOrder"]
  LOADK R14 K42 ["col gap-small size-full-0 auto-y"]
  SETTABLEKS R14 R13 K6 ["tag"]
  DUPTABLE R14 K44 [{"Title", "Paragraph"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K32 [{"Text", "tag"}]
  LOADK R18 K22 ["Inline"]
  SETTABLEKS R18 R17 K31 ["Text"]
  LOADK R18 K45 ["content-emphasis text-caption-large auto-xy"]
  SETTABLEKS R18 R17 K6 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K28 ["Title"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K47 [{"Text", "fontStyle", "tag"}]
  GETTABLEKS R19 R0 K0 ["controls"]
  GETTABLEKS R18 R19 K48 ["inline"]
  SETTABLEKS R18 R17 K31 ["Text"]
  SETTABLEKS R3 R17 K46 ["fontStyle"]
  LOADK R18 K49 ["content-emphasis text-truncate-end auto-xy text-align-x-left"]
  SETTABLEKS R18 R17 K6 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K43 ["Paragraph"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["Inline"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K26 [{"LayoutOrder", "tag"}]
  LOADN R14 3
  SETTABLEKS R14 R13 K25 ["LayoutOrder"]
  LOADK R14 K42 ["col gap-small size-full-0 auto-y"]
  SETTABLEKS R14 R13 K6 ["tag"]
  DUPTABLE R14 K44 [{"Title", "Paragraph"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K32 [{"Text", "tag"}]
  LOADK R18 K50 ["Multi-line"]
  SETTABLEKS R18 R17 K31 ["Text"]
  LOADK R18 K45 ["content-emphasis text-caption-large auto-xy"]
  SETTABLEKS R18 R17 K6 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K28 ["Title"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K47 [{"Text", "fontStyle", "tag"}]
  GETTABLEKS R19 R0 K0 ["controls"]
  GETTABLEKS R18 R19 K51 ["multiline"]
  SETTABLEKS R18 R17 K31 ["Text"]
  SETTABLEKS R3 R17 K46 ["fontStyle"]
  LOADK R18 K52 ["content-emphasis auto-xy text-wrap text-align-x-left"]
  SETTABLEKS R18 R17 K6 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K43 ["Paragraph"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["MultiLine"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["Text"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K13 ["ControlState"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R0 K14 ["Providers"]
  GETTABLEKS R9 R10 K15 ["Style"]
  GETTABLEKS R8 R9 K16 ["useTokens"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R1 K17 ["RbxDesignFoundations"]
  CALL R8 1 1
  GETTABLEKS R10 R8 K18 ["Tokens"]
  GETTABLEKS R9 R10 K19 ["Dark"]
  LOADN R10 1
  CALL R9 1 1
  GETTABLEKS R10 R9 K20 ["Typography"]
  GETTABLEKS R13 R9 K21 ["Config"]
  GETTABLEKS R12 R13 K11 ["Text"]
  GETTABLEKS R11 R12 K22 ["NominalScale"]
  DUPCLOSURE R12 K23 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPTABLE R13 K27 [{"summary", "stories", "controls"}]
  LOADK R14 K11 ["Text"]
  SETTABLEKS R14 R13 K24 ["summary"]
  NEWTABLE R14 0 1
  DUPTABLE R15 K30 [{"name", "story"}]
  LOADK R16 K20 ["Typography"]
  SETTABLEKS R16 R15 K28 ["name"]
  SETTABLEKS R12 R15 K29 ["story"]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K25 ["stories"]
  DUPTABLE R14 K34 [{"inline", "multiline", "typography"}]
  LOADK R15 K35 ["Let's prioritize the low-hanging fruit old boys club, performance review. Big data. let's unpack that later, but if you want to motivate these clowns, try less carrot and more stick."]
  SETTABLEKS R15 R14 K31 ["inline"]
  LOADK R15 K36 ["Innovation is hot right now we need more paper, or please use “solutionise” instead of solution ideas! Imagineer diversify KPIs. Put it on the parking lot we need to socialize the comms with the wider stakeholder community throughput. Let's circle back to that a tentative event rundown is attached for your reference, including other happenings on the day you are most welcome to join us beforehand for a light lunch we would also like to invite you to other activities on the day, including the interim and closing panel discussions on the intersection of businesses and social innovation. In this space make sure to include in your wheelhouse helicopter view. This proposal is a win-win situation which will cause a stellar paradigm shift, and produce a multi-fold increase in deliverables, conversational content; but let's not try to boil the ocean."]
  SETTABLEKS R15 R14 K32 ["multiline"]
  GETTABLEKS R15 R3 K37 ["keys"]
  MOVE R16 R10
  CALL R15 1 1
  SETTABLEKS R15 R14 K33 ["typography"]
  SETTABLEKS R14 R13 K26 ["controls"]
  RETURN R13 1
