PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 4
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K5 ["col align-x-center align-y-center size-full gap-medium padding-large"]
  SETTABLEKS R6 R5 K3 ["tag"]
  DUPTABLE R6 K9 [{"Thumbnail", "Title", "Subtitle"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K11 [{"LayoutOrder"}]
  NAMECALL R10 R2 K12 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K10 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["Thumbnail"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K14 [{"Text", "tag", "LayoutOrder"}]
  LOADK R12 K15 ["LookComposerDialog"]
  LOADK R13 K16 ["CreateLookSuccessTitle"]
  NAMECALL R10 R1 K17 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K13 ["Text"]
  LOADK R10 K18 ["text-heading-small auto-xy content-default text-center"]
  SETTABLEKS R10 R9 K3 ["tag"]
  NAMECALL R10 R2 K12 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K10 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["Title"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K14 [{"Text", "tag", "LayoutOrder"}]
  LOADK R12 K15 ["LookComposerDialog"]
  LOADK R13 K19 ["CreateLookSuccessSubtitle"]
  NAMECALL R10 R1 K17 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K13 ["Text"]
  LOADK R10 K20 ["text-body-medium auto-xy content-muted text-center"]
  SETTABLEKS R10 R9 K3 ["tag"]
  NAMECALL R10 R2 K12 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K10 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["Subtitle"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K12 ["ContextServices"]
  GETTABLEKS R6 R7 K13 ["Localization"]
  GETTABLEKS R8 R5 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["LayoutOrderIterator"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K16 ["Src"]
  GETTABLEKS R10 R11 K17 ["Flags"]
  GETTABLEKS R9 R10 K18 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K19 ["Parent"]
  GETTABLEKS R10 R11 K20 ["LookPreview"]
  CALL R9 1 1
  DUPCLOSURE R10 K21 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  RETURN R10 1
