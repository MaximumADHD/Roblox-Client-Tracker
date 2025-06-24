PROTO_0:
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADK R8 K0 ["Category%*_%*"]
  MOVE R10 R5
  MOVE R11 R6
  NAMECALL R8 R8 K1 ["format"]
  CALL R8 3 1
  MOVE R7 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K7 [{"text", "isChecked", "LayoutOrder", "onActivated"}]
  SETTABLEKS R6 R10 K3 ["text"]
  LOADB R11 0
  SETTABLEKS R11 R10 K4 ["isChecked"]
  SETTABLEKS R5 R10 K5 ["LayoutOrder"]
  GETUPVAL R11 2
  SETTABLEKS R11 R10 K6 ["onActivated"]
  CALL R8 2 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-25]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Fragment"]
  LOADNIL R4
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["tutorialInfo"]
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R2 0
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 2
  NEWTABLE R5 16 0
  LOADB R6 1
  SETTABLEKS R6 R5 K3 ["Enabled"]
  LOADB R6 1
  SETTABLEKS R6 R5 K4 ["Modal"]
  LOADK R8 K5 ["Plugin"]
  LOADK R9 K6 ["TutorialAvailable"]
  NAMECALL R6 R2 K7 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K8 ["Title"]
  GETIMPORT R6 K11 [Vector2.new]
  LOADN R7 244
  LOADN R8 250
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Size"]
  GETIMPORT R6 K11 [Vector2.new]
  LOADN R7 244
  LOADN R8 250
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["MinSize"]
  LOADB R6 0
  SETTABLEKS R6 R5 K14 ["Resizable"]
  GETIMPORT R6 K18 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K16 ["ZIndexBehavior"]
  LOADB R6 1
  SETTABLEKS R6 R5 K19 ["CreateWidgetImmediately"]
  GETTABLEKS R6 R0 K20 ["onClose"]
  SETTABLEKS R6 R5 K21 ["OnClose"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K22 ["Change"]
  GETTABLEKS R6 R7 K3 ["Enabled"]
  GETTABLEKS R7 R0 K20 ["onClose"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K24 [{"Background"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K27 [{"ZIndex", "tag"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K25 ["ZIndex"]
  LOADK R10 K28 ["col align-y-center gap-small size-full padding-large bg-surface-200"]
  SETTABLEKS R10 R9 K26 ["tag"]
  DUPTABLE R10 K32 [{"Title", "Summary", "CategoryRow", "ButtonsRow"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K34 [{"Text", "tag"}]
  GETTABLEKS R14 R1 K35 ["title"]
  SETTABLEKS R14 R13 K33 ["Text"]
  LOADK R14 K36 ["text-heading-small text-align-x-left text-wrap size-full-0 auto-y"]
  SETTABLEKS R14 R13 K26 ["tag"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K8 ["Title"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K38 [{"LayoutOrder", "Text", "tag"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K37 ["LayoutOrder"]
  GETTABLEKS R14 R1 K39 ["summary"]
  SETTABLEKS R14 R13 K33 ["Text"]
  LOADK R14 K40 ["text-default text-wrap text-align-x-left auto-y size-full-500"]
  SETTABLEKS R14 R13 K26 ["tag"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K29 ["Summary"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K41 [{"LayoutOrder", "tag"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K37 ["LayoutOrder"]
  LOADK R14 K42 ["row gap-xsmall align-x-left auto-y size-full-0"]
  SETTABLEKS R14 R13 K26 ["tag"]
  DUPTABLE R14 K45 [{"Difficulty", "Categories"}]
  GETTABLEKS R16 R1 K46 ["difficulty"]
  JUMPIFEQKS R16 K47 [""] [+35]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K51 [{"text", "isChecked", "LayoutOrder", "onActivated"}]
  GETUPVAL R20 6
  GETTABLEKS R21 R1 K46 ["difficulty"]
  GETTABLE R19 R20 R21
  JUMPIFNOT R19 [+9]
  LOADK R20 K5 ["Plugin"]
  GETUPVAL R22 6
  GETTABLEKS R23 R1 K46 ["difficulty"]
  GETTABLE R21 R22 R23
  NAMECALL R18 R2 K7 ["getText"]
  CALL R18 3 1
  JUMP [+2]
  GETTABLEKS R18 R1 K46 ["difficulty"]
  SETTABLEKS R18 R17 K48 ["text"]
  LOADB R18 0
  SETTABLEKS R18 R17 K49 ["isChecked"]
  LOADN R18 255
  SETTABLEKS R18 R17 K37 ["LayoutOrder"]
  GETUPVAL R18 7
  SETTABLEKS R18 R17 K50 ["onActivated"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K43 ["Difficulty"]
  GETUPVAL R15 8
  GETTABLEKS R16 R1 K52 ["categories"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K44 ["Categories"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K30 ["CategoryRow"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K41 [{"LayoutOrder", "tag"}]
  LOADN R14 4
  SETTABLEKS R14 R13 K37 ["LayoutOrder"]
  LOADK R14 K53 ["auto-y size-full-0 row align-x-right align-y-bottom gap-medium"]
  SETTABLEKS R14 R13 K26 ["tag"]
  DUPTABLE R14 K56 [{"CloseButton", "OpenButton"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 9
  DUPTABLE R17 K58 [{"LayoutOrder", "text", "variant", "onActivated"}]
  LOADN R18 0
  SETTABLEKS R18 R17 K37 ["LayoutOrder"]
  LOADK R20 K5 ["Plugin"]
  LOADK R21 K59 ["Close"]
  NAMECALL R18 R2 K7 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K48 ["text"]
  GETUPVAL R21 10
  GETTABLEKS R20 R21 K60 ["Enums"]
  GETTABLEKS R19 R20 K61 ["ButtonVariant"]
  GETTABLEKS R18 R19 K62 ["Standard"]
  SETTABLEKS R18 R17 K57 ["variant"]
  GETTABLEKS R18 R0 K20 ["onClose"]
  SETTABLEKS R18 R17 K50 ["onActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K54 ["CloseButton"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 9
  DUPTABLE R17 K64 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K37 ["LayoutOrder"]
  LOADK R20 K5 ["Plugin"]
  LOADK R21 K65 ["OpenTutorial"]
  NAMECALL R18 R2 K7 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K48 ["text"]
  GETUPVAL R21 10
  GETTABLEKS R20 R21 K60 ["Enums"]
  GETTABLEKS R19 R20 K61 ["ButtonVariant"]
  GETTABLEKS R18 R19 K66 ["Emphasis"]
  SETTABLEKS R18 R17 K57 ["variant"]
  GETUPVAL R21 10
  GETTABLEKS R20 R21 K60 ["Enums"]
  GETTABLEKS R19 R20 K67 ["InputSize"]
  GETTABLEKS R18 R19 K68 ["Medium"]
  SETTABLEKS R18 R17 K63 ["size"]
  GETTABLEKS R18 R0 K69 ["onOpen"]
  SETTABLEKS R18 R17 K50 ["onActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K55 ["OpenButton"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K31 ["ButtonsRow"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K23 ["Background"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R8 R3 K14 ["UI"]
  GETTABLEKS R7 R8 K15 ["Dialog"]
  GETTABLEKS R8 R4 K16 ["Text"]
  GETTABLEKS R9 R4 K17 ["View"]
  GETTABLEKS R10 R4 K18 ["Chip"]
  GETTABLEKS R11 R4 K19 ["Button"]
  DUPCLOSURE R12 K20 [PROTO_0]
  DUPTABLE R13 K24 [{"Easy", "Intermediate", "Hard"}]
  LOADK R14 K25 ["Difficulty.Easy"]
  SETTABLEKS R14 R13 K21 ["Easy"]
  LOADK R14 K26 ["Difficulty.Intermediate"]
  SETTABLEKS R14 R13 K22 ["Intermediate"]
  LOADK R14 K27 ["Difficulty.Hard"]
  SETTABLEKS R14 R13 K23 ["Hard"]
  DUPCLOSURE R14 K28 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R12
  DUPCLOSURE R15 K29 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R4
  RETURN R15 1
