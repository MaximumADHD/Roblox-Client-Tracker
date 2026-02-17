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
  GETUPVAL R8 4
  DUPTABLE R9 K12 [{"LayoutOrder", "AutomaticSize"}]
  NAMECALL R10 R2 K13 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K10 ["LayoutOrder"]
  GETIMPORT R10 K16 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K11 ["AutomaticSize"]
  DUPTABLE R10 K18 [{"ThumbnailContent"}]
  GETTABLEKS R11 R0 K19 ["lookPreview"]
  SETTABLEKS R11 R10 K17 ["ThumbnailContent"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["Thumbnail"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K21 [{"Text", "tag", "LayoutOrder"}]
  LOADK R12 K22 ["LookComposerDialog"]
  LOADK R13 K23 ["CreateLookSuccessTitle"]
  NAMECALL R10 R1 K24 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K20 ["Text"]
  LOADK R10 K25 ["text-heading-small auto-xy content-default text-center"]
  SETTABLEKS R10 R9 K3 ["tag"]
  NAMECALL R10 R2 K13 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K10 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["Title"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K21 [{"Text", "tag", "LayoutOrder"}]
  LOADK R12 K22 ["LookComposerDialog"]
  LOADK R13 K26 ["CreateLookSuccessSubtitle"]
  NAMECALL R10 R1 K24 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K20 ["Text"]
  LOADK R10 K27 ["text-body-medium auto-xy content-muted text-center"]
  SETTABLEKS R10 R9 K3 ["tag"]
  NAMECALL R10 R2 K13 ["getNextOrder"]
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
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R9 1
