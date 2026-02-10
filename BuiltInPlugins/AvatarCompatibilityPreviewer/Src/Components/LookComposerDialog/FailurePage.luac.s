PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["LookComposerDialog is not enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K3 ["use"]
  CALL R1 1 1
  GETUPVAL R2 2
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["new"]
  CALL R3 0 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K5 ["createElement"]
  GETUPVAL R5 5
  DUPTABLE R6 K7 [{"tag"}]
  LOADK R7 K8 ["col align-x-center align-y-center size-full gap-medium padding-large"]
  SETTABLEKS R7 R6 K6 ["tag"]
  DUPTABLE R7 K12 [{"WarningIcon", "Title", "Subtitle"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K15 [{"tag", "Size", "LayoutOrder"}]
  LOADK R11 K16 ["col align-x-center align-y-center"]
  SETTABLEKS R11 R10 K6 ["tag"]
  GETIMPORT R11 K19 [UDim2.fromOffset]
  LOADN R12 150
  LOADN R13 150
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["Size"]
  NAMECALL R11 R3 K20 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  DUPTABLE R11 K22 [{"Icon"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K25 [{"name", "size"}]
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K26 ["Enums"]
  GETTABLEKS R16 R17 K27 ["IconName"]
  GETTABLEKS R15 R16 K28 ["TriangleExclamation"]
  SETTABLEKS R15 R14 K23 ["name"]
  GETTABLEKS R16 R2 K13 ["Size"]
  GETTABLEKS R15 R16 K29 ["Size_1500"]
  SETTABLEKS R15 R14 K24 ["size"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["Icon"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["WarningIcon"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K31 [{"Text", "tag", "LayoutOrder"}]
  LOADK R13 K32 ["LookComposerDialog"]
  LOADK R14 K33 ["CreateLookFailedTitle"]
  NAMECALL R11 R1 K34 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K30 ["Text"]
  LOADK R11 K35 ["text-heading-small auto-xy content-default text-center"]
  SETTABLEKS R11 R10 K6 ["tag"]
  NAMECALL R11 R3 K20 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Title"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K31 [{"Text", "tag", "LayoutOrder"}]
  LOADK R11 K36 ["Error string here"]
  SETTABLEKS R11 R10 K30 ["Text"]
  LOADK R11 K37 ["text-body-medium auto-xy content-muted text-center"]
  SETTABLEKS R11 R10 K6 ["tag"]
  NAMECALL R11 R3 K20 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["Subtitle"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["View"]
  GETTABLEKS R4 R2 K10 ["Text"]
  GETTABLEKS R5 R2 K11 ["Icon"]
  GETTABLEKS R7 R2 K12 ["Hooks"]
  GETTABLEKS R6 R7 K13 ["useTokens"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K14 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K15 ["ContextServices"]
  GETTABLEKS R8 R9 K16 ["Localization"]
  GETTABLEKS R10 R7 K17 ["Util"]
  GETTABLEKS R9 R10 K18 ["LayoutOrderIterator"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K19 ["Src"]
  GETTABLEKS R12 R13 K20 ["Flags"]
  GETTABLEKS R11 R12 K21 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R10 1 1
  DUPCLOSURE R11 K22 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R11 1
