PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onSectionClicked"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["index"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"tag", "testId", "LayoutOrder", "onActivated"}]
  LOADK R5 K7 ["size-full-0 auto-y padding-xsmall bg-surface-100"]
  SETTABLEKS R5 R4 K2 ["tag"]
  LOADK R6 K8 ["--knowledge-tutorials-SectionButton_%*"]
  GETTABLEKS R8 R0 K9 ["index"]
  NAMECALL R6 R6 K10 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K3 ["testId"]
  GETTABLEKS R5 R0 K9 ["index"]
  SETTABLEKS R5 R4 K4 ["LayoutOrder"]
  SETTABLEKS R1 R4 K5 ["onActivated"]
  DUPTABLE R5 K12 [{"Background"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K13 [{"tag"}]
  LOADK R10 K14 ["row gap-medium padding-small align-x-left align-y-center size-full radius-small bg-surface-100"]
  GETTABLEKS R12 R0 K15 ["isSelected"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K16 [" stroke-thick stroke-default"]
  JUMP [+1]
  LOADK R11 K17 [""]
  CONCAT R9 R10 R11
  SETTABLEKS R9 R8 K2 ["tag"]
  DUPTABLE R9 K20 [{"Number", "Title"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K22 [{"tag", "Text", "LayoutOrder"}]
  LOADK R13 K23 ["text-body-medium size-800-800 text-align-x-center radius-circle bg-action-standard content-action-standard"]
  SETTABLEKS R13 R12 K2 ["tag"]
  GETTABLEKS R15 R0 K9 ["index"]
  ADDK R14 R15 K24 [1]
  FASTCALL1 TOSTRING R14 [+2]
  GETIMPORT R13 K26 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K21 ["Text"]
  LOADN R13 0
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["Number"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K22 [{"tag", "Text", "LayoutOrder"}]
  LOADK R13 K27 ["text-body-medium auto-xy text-align-x-left text-wrap content-action-standard"]
  SETTABLEKS R13 R12 K2 ["tag"]
  GETTABLEKS R13 R0 K28 ["title"]
  SETTABLEKS R13 R12 K21 ["Text"]
  LOADN R13 1
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["Title"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K11 ["Background"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["visible"]
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["tutorialData"]
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R2 0
  NAMECALL R2 R2 K2 ["use"]
  CALL R2 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Hooks"]
  GETTABLEKS R3 R4 K4 ["useTokens"]
  CALL R3 0 1
  NEWTABLE R4 0 0
  GETTABLEKS R8 R1 K5 ["home"]
  GETTABLEKS R7 R8 K6 ["ast"]
  GETTABLEKS R6 R7 K7 ["children"]
  LENGTH R5 R6
  LOADN R6 1
  JUMPIFNOTLT R6 R5 [+31]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K13 [{"title", "index", "isSelected", "onSectionClicked"}]
  LOADK R10 K14 ["Plugin"]
  LOADK R11 K15 ["Home"]
  NAMECALL R8 R2 K16 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["title"]
  LOADN R8 0
  SETTABLEKS R8 R7 K10 ["index"]
  GETTABLEKS R9 R0 K17 ["currentSectionIndex"]
  JUMPIFEQKN R9 K18 [0] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K11 ["isSelected"]
  GETTABLEKS R8 R0 K12 ["onSectionClicked"]
  SETTABLEKS R8 R7 K12 ["onSectionClicked"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K15 ["Home"]
  GETTABLEKS R5 R1 K19 ["sections"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  LOADK R11 K20 ["Section_%*"]
  MOVE R13 R8
  NAMECALL R11 R11 K21 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K13 [{"title", "index", "isSelected", "onSectionClicked"}]
  GETTABLEKS R14 R9 K9 ["title"]
  JUMPIF R14 [+8]
  LOADK R16 K14 ["Plugin"]
  LOADK R17 K22 ["SectionInfo"]
  DUPTABLE R18 K23 [{"index"}]
  SETTABLEKS R8 R18 K10 ["index"]
  NAMECALL R14 R2 K16 ["getText"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K9 ["title"]
  SETTABLEKS R8 R13 K10 ["index"]
  GETTABLEKS R15 R0 K17 ["currentSectionIndex"]
  JUMPIFEQ R15 R8 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  SETTABLEKS R14 R13 K11 ["isSelected"]
  GETTABLEKS R14 R0 K12 ["onSectionClicked"]
  SETTABLEKS R14 R13 K12 ["onSectionClicked"]
  CALL R11 2 1
  SETTABLE R11 R4 R10
  FORGLOOP R5 2 [-41]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K25 [{"tag"}]
  LOADK R8 K26 ["col align-x-center gap-medium size-full bg-surface-100"]
  SETTABLEKS R8 R7 K24 ["tag"]
  DUPTABLE R8 K29 [{"Title", "ScrollView"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K32 [{"LayoutOrder", "Text", "tag"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K30 ["LayoutOrder"]
  LOADK R14 K14 ["Plugin"]
  LOADK R15 K33 ["TableOfContents"]
  NAMECALL R12 R2 K16 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K31 ["Text"]
  LOADK R12 K34 ["text-title-medium text-align-x-left size-full-0 text-wrap auto-y"]
  SETTABLEKS R12 R11 K24 ["tag"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K27 ["Title"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K37 [{"LayoutOrder", "tag", "scroll", "layout"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K30 ["LayoutOrder"]
  LOADK R12 K38 ["size-full-0 fill"]
  SETTABLEKS R12 R11 K24 ["tag"]
  DUPTABLE R12 K42 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
  GETIMPORT R13 K46 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K39 ["AutomaticCanvasSize"]
  GETIMPORT R13 K47 [Enum.ScrollingDirection.Y]
  SETTABLEKS R13 R12 K40 ["ScrollingDirection"]
  GETIMPORT R13 K50 [UDim2.new]
  CALL R13 0 1
  SETTABLEKS R13 R12 K41 ["CanvasSize"]
  SETTABLEKS R12 R11 K35 ["scroll"]
  DUPTABLE R12 K56 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R13 K57 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K51 ["SortOrder"]
  GETIMPORT R13 K59 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K52 ["FillDirection"]
  GETIMPORT R13 K61 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K53 ["HorizontalAlignment"]
  GETIMPORT R13 K63 [Enum.VerticalAlignment.Top]
  SETTABLEKS R13 R12 K54 ["VerticalAlignment"]
  GETIMPORT R13 K65 [UDim.new]
  LOADN R14 0
  GETTABLEKS R16 R3 K66 ["Gap"]
  GETTABLEKS R15 R16 K67 ["Small"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K55 ["Padding"]
  SETTABLEKS R12 R11 K36 ["layout"]
  MOVE R12 R4
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["ScrollView"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Foundation"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["Localization"]
  GETTABLEKS R7 R4 K14 ["View"]
  GETTABLEKS R8 R4 K15 ["ScrollView"]
  GETTABLEKS R9 R4 K16 ["Text"]
  DUPCLOSURE R10 K17 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R9
  DUPCLOSURE R11 K18 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  RETURN R11 1
