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
  DUPTABLE R4 K5 [{"tag", "LayoutOrder", "onActivated"}]
  LOADK R5 K6 ["size-full-0 auto-y padding-xsmall bg-surface-100"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETTABLEKS R5 R0 K7 ["index"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  SETTABLEKS R1 R4 K4 ["onActivated"]
  DUPTABLE R5 K9 [{"Background"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K10 [{"tag"}]
  LOADK R10 K11 ["row gap-medium padding-small align-x-left align-y-center size-full radius-small bg-surface-100"]
  GETTABLEKS R12 R0 K12 ["isSelected"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K13 [" stroke-thick stroke-default"]
  JUMP [+1]
  LOADK R11 K14 [""]
  CONCAT R9 R10 R11
  SETTABLEKS R9 R8 K2 ["tag"]
  DUPTABLE R9 K17 [{"Number", "Title"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K19 [{"tag", "Text", "LayoutOrder"}]
  LOADK R13 K20 ["text-body-medium size-800-800 text-align-x-center radius-circle bg-action-standard content-action-standard"]
  SETTABLEKS R13 R12 K2 ["tag"]
  GETTABLEKS R15 R0 K7 ["index"]
  ADDK R14 R15 K21 [1]
  FASTCALL1 TOSTRING R14 [+2]
  GETIMPORT R13 K23 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K18 ["Text"]
  LOADN R13 0
  SETTABLEKS R13 R12 K3 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["Number"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K19 [{"tag", "Text", "LayoutOrder"}]
  LOADK R13 K24 ["text-body-medium auto-xy text-align-x-left text-wrap content-action-standard"]
  SETTABLEKS R13 R12 K2 ["tag"]
  GETTABLEKS R13 R0 K25 ["title"]
  SETTABLEKS R13 R12 K18 ["Text"]
  LOADN R13 1
  SETTABLEKS R13 R12 K3 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["Title"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K8 ["Background"]
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
  NEWTABLE R3 0 0
  GETTABLEKS R7 R1 K3 ["home"]
  GETTABLEKS R6 R7 K4 ["ast"]
  GETTABLEKS R5 R6 K5 ["children"]
  LENGTH R4 R5
  LOADN R5 1
  JUMPIFNOTLT R5 R4 [+31]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K11 [{"title", "index", "isSelected", "onSectionClicked"}]
  LOADK R9 K12 ["Plugin"]
  LOADK R10 K13 ["Home"]
  NAMECALL R7 R2 K14 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["title"]
  LOADN R7 0
  SETTABLEKS R7 R6 K8 ["index"]
  GETTABLEKS R8 R0 K15 ["currentSectionIndex"]
  JUMPIFEQKN R8 K16 [0] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["isSelected"]
  GETTABLEKS R7 R0 K10 ["onSectionClicked"]
  SETTABLEKS R7 R6 K10 ["onSectionClicked"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K13 ["Home"]
  GETTABLEKS R4 R1 K17 ["sections"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  LOADK R10 K18 ["Section_%*"]
  MOVE R12 R7
  NAMECALL R10 R10 K19 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K11 [{"title", "index", "isSelected", "onSectionClicked"}]
  GETTABLEKS R13 R8 K7 ["title"]
  JUMPIF R13 [+8]
  LOADK R15 K12 ["Plugin"]
  LOADK R16 K20 ["SectionInfo"]
  DUPTABLE R17 K21 [{"index"}]
  SETTABLEKS R7 R17 K8 ["index"]
  NAMECALL R13 R2 K14 ["getText"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K7 ["title"]
  SETTABLEKS R7 R12 K8 ["index"]
  GETTABLEKS R14 R0 K15 ["currentSectionIndex"]
  JUMPIFEQ R14 R7 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K9 ["isSelected"]
  GETTABLEKS R13 R0 K10 ["onSectionClicked"]
  SETTABLEKS R13 R12 K10 ["onSectionClicked"]
  CALL R10 2 1
  SETTABLE R10 R3 R9
  FORGLOOP R4 2 [-41]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K23 [{"tag"}]
  LOADK R7 K24 ["col align-x-center gap-medium size-full bg-surface-100"]
  SETTABLEKS R7 R6 K22 ["tag"]
  DUPTABLE R7 K27 [{"Title", "ScrollView"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K30 [{"Text", "LayoutOrder", "tag"}]
  LOADK R13 K12 ["Plugin"]
  LOADK R14 K31 ["TableOfContents"]
  NAMECALL R11 R2 K14 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K28 ["Text"]
  LOADN R11 0
  SETTABLEKS R11 R10 K29 ["LayoutOrder"]
  LOADK R11 K32 ["text-title-medium text-align-x-left size-full-0 text-wrap auto-y"]
  SETTABLEKS R11 R10 K22 ["tag"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K25 ["Title"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K34 [{"tag", "scroll", "LayoutOrder"}]
  LOADK R11 K35 ["col gap-small size-full-0 fill"]
  SETTABLEKS R11 R10 K22 ["tag"]
  DUPTABLE R11 K39 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
  GETIMPORT R12 K43 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K36 ["AutomaticCanvasSize"]
  GETIMPORT R12 K44 [Enum.ScrollingDirection.Y]
  SETTABLEKS R12 R11 K37 ["ScrollingDirection"]
  GETIMPORT R12 K47 [UDim2.new]
  CALL R12 0 1
  SETTABLEKS R12 R11 K38 ["CanvasSize"]
  SETTABLEKS R11 R10 K33 ["scroll"]
  LOADN R11 1
  SETTABLEKS R11 R10 K29 ["LayoutOrder"]
  MOVE R11 R3
  CALL R8 3 1
  SETTABLEKS R8 R7 K26 ["ScrollView"]
  CALL R4 3 -1
  RETURN R4 -1

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
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  RETURN R11 1
