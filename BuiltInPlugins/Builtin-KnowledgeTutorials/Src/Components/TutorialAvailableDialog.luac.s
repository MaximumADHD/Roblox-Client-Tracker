PROTO_0:
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
  DUPTABLE R10 K6 [{"text", "variant", "LayoutOrder"}]
  SETTABLEKS R6 R10 K3 ["text"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["Enums"]
  GETTABLEKS R12 R13 K8 ["BadgeVariant"]
  GETTABLEKS R11 R12 K9 ["Neutral"]
  SETTABLEKS R11 R10 K4 ["variant"]
  SETTABLEKS R5 R10 K5 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-28]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["Fragment"]
  LOADNIL R4
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
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
  DUPTABLE R5 K5 [{"ZIndex", "tag"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K3 ["ZIndex"]
  LOADK R6 K6 ["col align-y-center gap-small size-full padding-large bg-surface-200"]
  SETTABLEKS R6 R5 K4 ["tag"]
  DUPTABLE R6 K11 [{"Title", "Summary", "CategoryRow", "ButtonsRow"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K14 [{"LayoutOrder", "Text", "tag"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K12 ["LayoutOrder"]
  GETTABLEKS R10 R1 K15 ["title"]
  SETTABLEKS R10 R9 K13 ["Text"]
  LOADK R10 K16 ["text-heading-small text-align-x-left text-wrap size-full-0 auto-y"]
  SETTABLEKS R10 R9 K4 ["tag"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["Title"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K14 [{"LayoutOrder", "Text", "tag"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K12 ["LayoutOrder"]
  GETTABLEKS R10 R1 K17 ["summary"]
  SETTABLEKS R10 R9 K13 ["Text"]
  LOADK R10 K18 ["text-default text-wrap text-align-x-left auto-y size-full-500"]
  SETTABLEKS R10 R9 K4 ["tag"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["Summary"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K19 [{"LayoutOrder", "tag"}]
  LOADN R10 2
  SETTABLEKS R10 R9 K12 ["LayoutOrder"]
  LOADK R10 K20 ["row gap-xsmall align-x-left auto-y size-full-0"]
  SETTABLEKS R10 R9 K4 ["tag"]
  DUPTABLE R10 K23 [{"Difficulty", "Categories"}]
  GETTABLEKS R12 R1 K24 ["difficulty"]
  JUMPIFEQKS R12 K25 [""] [+38]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K28 [{"text", "variant", "LayoutOrder"}]
  GETUPVAL R16 5
  GETTABLEKS R17 R1 K24 ["difficulty"]
  GETTABLE R15 R16 R17
  JUMPIFNOT R15 [+9]
  LOADK R16 K29 ["Plugin"]
  GETUPVAL R18 5
  GETTABLEKS R19 R1 K24 ["difficulty"]
  GETTABLE R17 R18 R19
  NAMECALL R14 R2 K30 ["getText"]
  CALL R14 3 1
  JUMP [+2]
  GETTABLEKS R14 R1 K24 ["difficulty"]
  SETTABLEKS R14 R13 K26 ["text"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K31 ["Enums"]
  GETTABLEKS R15 R16 K32 ["BadgeVariant"]
  GETTABLEKS R14 R15 K33 ["Neutral"]
  SETTABLEKS R14 R13 K27 ["variant"]
  LOADN R14 255
  SETTABLEKS R14 R13 K12 ["LayoutOrder"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K21 ["Difficulty"]
  GETUPVAL R11 7
  GETTABLEKS R12 R1 K34 ["categories"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K22 ["Categories"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["CategoryRow"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K19 [{"LayoutOrder", "tag"}]
  LOADN R10 4
  SETTABLEKS R10 R9 K12 ["LayoutOrder"]
  LOADK R10 K35 ["auto-y size-full-0 row align-x-right align-y-bottom gap-medium"]
  SETTABLEKS R10 R9 K4 ["tag"]
  DUPTABLE R10 K38 [{"CloseButton", "StartButton"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 8
  DUPTABLE R13 K40 [{"LayoutOrder", "text", "variant", "onActivated"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K12 ["LayoutOrder"]
  LOADK R16 K29 ["Plugin"]
  LOADK R17 K41 ["Close"]
  NAMECALL R14 R2 K30 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K26 ["text"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K31 ["Enums"]
  GETTABLEKS R15 R16 K42 ["ButtonVariant"]
  GETTABLEKS R14 R15 K43 ["Standard"]
  SETTABLEKS R14 R13 K27 ["variant"]
  GETTABLEKS R14 R0 K44 ["onClose"]
  SETTABLEKS R14 R13 K39 ["onActivated"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K36 ["CloseButton"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 8
  DUPTABLE R13 K46 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K12 ["LayoutOrder"]
  LOADK R16 K29 ["Plugin"]
  LOADK R17 K47 ["OpenTutorial"]
  NAMECALL R14 R2 K30 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K26 ["text"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K31 ["Enums"]
  GETTABLEKS R15 R16 K42 ["ButtonVariant"]
  GETTABLEKS R14 R15 K48 ["Emphasis"]
  SETTABLEKS R14 R13 K27 ["variant"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K31 ["Enums"]
  GETTABLEKS R15 R16 K49 ["InputSize"]
  GETTABLEKS R14 R15 K50 ["Medium"]
  SETTABLEKS R14 R13 K45 ["size"]
  GETTABLEKS R14 R0 K51 ["onStart"]
  SETTABLEKS R14 R13 K39 ["onActivated"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K37 ["StartButton"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K10 ["ButtonsRow"]
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
  GETTABLEKS R7 R4 K14 ["Text"]
  GETTABLEKS R8 R4 K15 ["View"]
  GETTABLEKS R9 R4 K16 ["Badge"]
  GETTABLEKS R10 R4 K17 ["Button"]
  DUPTABLE R11 K21 [{"Easy", "Intermediate", "Hard"}]
  LOADK R12 K22 ["Difficulty.Easy"]
  SETTABLEKS R12 R11 K18 ["Easy"]
  LOADK R12 K23 ["Difficulty.Intermediate"]
  SETTABLEKS R12 R11 K19 ["Intermediate"]
  LOADK R12 K24 ["Difficulty.Hard"]
  SETTABLEKS R12 R11 K20 ["Hard"]
  DUPCLOSURE R12 K25 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R4
  DUPCLOSURE R13 K26 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R10
  RETURN R13 1
