PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  NAMECALL R2 R1 K1 ["getLocale"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETIMPORT R4 K5 [DateTime.fromIsoDate]
  GETTABLEKS R5 R0 K6 ["ReviewDateTime"]
  CALL R4 1 1
  MOVE R5 R4
  JUMPIFNOT R5 [+5]
  LOADK R7 K7 ["lll"]
  MOVE R8 R2
  NAMECALL R5 R4 K8 ["FormatLocalTime"]
  CALL R5 3 1
  GETIMPORT R6 K10 [print]
  MOVE R7 R5
  CALL R6 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["createElement"]
  LOADK R7 K12 ["Frame"]
  NEWTABLE R8 2 0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K13 ["Tag"]
  LOADK R10 K14 ["Component-ReviewedNote X-FitY"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R0 K15 ["LayoutOrder"]
  SETTABLEKS R9 R8 K15 ["LayoutOrder"]
  DUPTABLE R9 K18 [{"ReviewedDateTime", "ModeratorNote"}]
  MOVE R10 R5
  JUMPIFNOT R10 [+27]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K11 ["createElement"]
  LOADK R11 K19 ["TextLabel"]
  NEWTABLE R12 4 0
  LOADK R15 K20 ["ReviewedNote"]
  LOADK R16 K21 ["ReviewedDateTime1"]
  DUPTABLE R17 K23 [{"dateTime"}]
  SETTABLEKS R5 R17 K22 ["dateTime"]
  NAMECALL R13 R1 K24 ["getText"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K25 ["Text"]
  NAMECALL R13 R3 K26 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K15 ["LayoutOrder"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K13 ["Tag"]
  LOADK R14 K27 ["X-FitY"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["ReviewedDateTime"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K11 ["createElement"]
  LOADK R11 K19 ["TextLabel"]
  NEWTABLE R12 4 0
  LOADK R15 K20 ["ReviewedNote"]
  LOADK R16 K28 ["ModeratorNote1"]
  DUPTABLE R17 K30 [{"note"}]
  GETTABLEKS R18 R0 K17 ["ModeratorNote"]
  SETTABLEKS R18 R17 K29 ["note"]
  NAMECALL R13 R1 K24 ["getText"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K25 ["Text"]
  NAMECALL R13 R3 K26 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K15 ["LayoutOrder"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K13 ["Tag"]
  LOADK R14 K27 ["X-FitY"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["ModeratorNote"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModerationDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["Util"]
  GETTABLEKS R7 R2 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["LayoutOrderIterator"]
  DUPCLOSURE R7 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R1
  RETURN R7 1
