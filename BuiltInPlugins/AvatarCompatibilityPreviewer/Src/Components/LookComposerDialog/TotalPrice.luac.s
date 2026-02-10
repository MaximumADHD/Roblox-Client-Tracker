PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 2
  CALL R2 0 1
  GETTABLEKS R5 R2 K1 ["Color"]
  GETTABLEKS R4 R5 K2 ["Content"]
  GETTABLEKS R3 R4 K3 ["Default"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K7 [{"tag", "LayoutOrder"}]
  LOADK R7 K8 ["col gap-small size-full-0 auto-y"]
  SETTABLEKS R7 R6 K5 ["tag"]
  GETTABLEKS R7 R0 K6 ["LayoutOrder"]
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K11 [{"Title", "PriceRow"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K13 [{"Text", "tag", "LayoutOrder"}]
  LOADK R13 K14 ["LookComposerDialog"]
  LOADK R14 K15 ["TotalPrice"]
  NAMECALL R11 R1 K16 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K12 ["Text"]
  LOADK R11 K17 ["text-label-medium auto-xy content-default"]
  SETTABLEKS R11 R10 K5 ["tag"]
  LOADN R11 1
  SETTABLEKS R11 R10 K6 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Title"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K7 [{"tag", "LayoutOrder"}]
  LOADK R11 K18 ["row gap-small align-y-center auto-xy"]
  SETTABLEKS R11 R10 K5 ["tag"]
  LOADN R11 2
  SETTABLEKS R11 R10 K6 ["LayoutOrder"]
  DUPTABLE R11 K21 [{"RobuxIcon", "PriceText"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K25 [{"Image", "Size", "imageStyle", "LayoutOrder"}]
  LOADK R15 K26 ["rbxasset://textures/ui/common/robux_small.png"]
  SETTABLEKS R15 R14 K22 ["Image"]
  GETIMPORT R15 K29 [UDim2.fromOffset]
  LOADN R16 16
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["Size"]
  SETTABLEKS R3 R14 K24 ["imageStyle"]
  LOADN R15 1
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["RobuxIcon"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K13 [{"Text", "tag", "LayoutOrder"}]
  GETTABLEKS R16 R0 K30 ["price"]
  FASTCALL1 TOSTRING R16 [+2]
  GETIMPORT R15 K32 [tostring]
  CALL R15 1 1
  SETTABLEKS R15 R14 K12 ["Text"]
  LOADK R15 K33 ["text-body-medium auto-xy content-default"]
  SETTABLEKS R15 R14 K5 ["tag"]
  LOADN R15 2
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["PriceText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["PriceRow"]
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
  GETTABLEKS R5 R2 K11 ["Image"]
  GETTABLEKS R7 R2 K12 ["Hooks"]
  GETTABLEKS R6 R7 K13 ["useTokens"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K14 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K15 ["ContextServices"]
  GETTABLEKS R8 R9 K16 ["Localization"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K17 ["Src"]
  GETTABLEKS R11 R12 K18 ["Flags"]
  GETTABLEKS R10 R11 K19 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R10 1
