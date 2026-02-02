PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["isSelected"]
  JUMPIFNOT R3 [+2]
  LOADK R2 K2 ["content-default"]
  JUMP [+1]
  LOADK R2 K3 ["content-muted"]
  GETTABLEKS R4 R0 K1 ["isSelected"]
  JUMPIFNOT R4 [+2]
  LOADK R3 K4 ["stroke-system-contrast"]
  JUMP [+1]
  LOADK R3 K5 ["stroke-muted"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K9 [{"tag", "LayoutOrder"}]
  LOADK R7 K10 ["row gap-small align-y-center auto-xy"]
  SETTABLEKS R7 R6 K7 ["tag"]
  GETTABLEKS R7 R0 K8 ["LayoutOrder"]
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  DUPTABLE R7 K13 [{"Circle", "Label"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K15 [{"tag", "Size", "LayoutOrder"}]
  LOADK R12 K16 ["radius-circle align-x-center align-y-center bg-surface-200 %*"]
  MOVE R14 R3
  NAMECALL R12 R12 K17 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K7 ["tag"]
  GETIMPORT R11 K20 [UDim2.fromOffset]
  LOADN R12 24
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  DUPTABLE R11 K22 [{"Number"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K6 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K24 [{"Text", "tag"}]
  GETTABLEKS R16 R0 K25 ["stageNumber"]
  FASTCALL1 TOSTRING R16 [+2]
  GETIMPORT R15 K27 [tostring]
  CALL R15 1 1
  SETTABLEKS R15 R14 K23 ["Text"]
  LOADK R16 K28 ["text-label-medium %*"]
  MOVE R18 R2
  NAMECALL R16 R16 K17 ["format"]
  CALL R16 2 1
  MOVE R15 R16
  SETTABLEKS R15 R14 K7 ["tag"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["Number"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["Circle"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K29 [{"Text", "tag", "LayoutOrder"}]
  LOADK R13 K30 ["LookComposerDialog"]
  GETTABLEKS R14 R0 K31 ["labelKey"]
  NAMECALL R11 R1 K32 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["Text"]
  LOADK R12 K33 ["text-label-medium auto-xy %*"]
  MOVE R14 R2
  NAMECALL R12 R12 K17 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K7 ["tag"]
  LOADN R11 2
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["Label"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K5 [{"tag", "LayoutOrder"}]
  LOADK R5 K6 ["col size-full-0 auto-y gap-medium"]
  SETTABLEKS R5 R4 K3 ["tag"]
  GETTABLEKS R5 R0 K4 ["LayoutOrder"]
  SETTABLEKS R5 R4 K4 ["LayoutOrder"]
  DUPTABLE R5 K9 [{"StagesRow", "DividerContainer"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K5 [{"tag", "LayoutOrder"}]
  LOADK R9 K10 ["row align-y-center size-full-0 auto-y"]
  SETTABLEKS R9 R8 K3 ["tag"]
  LOADN R9 1
  SETTABLEKS R9 R8 K4 ["LayoutOrder"]
  DUPTABLE R9 K13 [{"LeftHalf", "RightHalf"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K15 [{"tag", "Size", "LayoutOrder"}]
  LOADK R13 K16 ["row align-x-left align-y-center auto-y"]
  SETTABLEKS R13 R12 K3 ["tag"]
  GETIMPORT R13 K19 [UDim2.fromScale]
  LOADK R14 K20 [0.5]
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  DUPTABLE R13 K22 [{"ConfirmItemsStage"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K2 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K26 [{"stageNumber", "labelKey", "isSelected", "LayoutOrder"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K23 ["stageNumber"]
  LOADK R17 K27 ["ConfirmItems"]
  SETTABLEKS R17 R16 K24 ["labelKey"]
  GETTABLEKS R18 R1 K28 ["dialogStage"]
  JUMPIFEQKS R18 K27 ["ConfirmItems"] [+2]
  LOADB R17 0 +1
  LOADB R17 1
  SETTABLEKS R17 R16 K25 ["isSelected"]
  LOADN R17 1
  SETTABLEKS R17 R16 K4 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["ConfirmItemsStage"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K11 ["LeftHalf"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K15 [{"tag", "Size", "LayoutOrder"}]
  LOADK R13 K16 ["row align-x-left align-y-center auto-y"]
  SETTABLEKS R13 R12 K3 ["tag"]
  GETIMPORT R13 K19 [UDim2.fromScale]
  LOADK R14 K20 [0.5]
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["Size"]
  LOADN R13 2
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  DUPTABLE R13 K30 [{"EditInfoStage"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K2 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K26 [{"stageNumber", "labelKey", "isSelected", "LayoutOrder"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K23 ["stageNumber"]
  LOADK R17 K31 ["EditInfo"]
  SETTABLEKS R17 R16 K24 ["labelKey"]
  GETTABLEKS R18 R1 K28 ["dialogStage"]
  JUMPIFEQKS R18 K31 ["EditInfo"] [+2]
  LOADB R17 0 +1
  LOADB R17 1
  SETTABLEKS R17 R16 K25 ["isSelected"]
  LOADN R17 1
  SETTABLEKS R17 R16 K4 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K29 ["EditInfoStage"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K12 ["RightHalf"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["StagesRow"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K32 [{"Size", "LayoutOrder"}]
  GETIMPORT R9 K34 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  CALL R9 4 1
  SETTABLEKS R9 R8 K14 ["Size"]
  LOADN R9 2
  SETTABLEKS R9 R8 K4 ["LayoutOrder"]
  DUPTABLE R9 K37 [{"LeftDivider", "RightDivider"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K40 [{"tag", "Size", "Position", "BackgroundTransparency"}]
  GETTABLEKS R14 R1 K28 ["dialogStage"]
  JUMPIFNOTEQKS R14 K27 ["ConfirmItems"] [+3]
  LOADK R13 K41 ["bg-system-contrast"]
  JUMP [+1]
  LOADK R13 K42 ["bg-surface-300"]
  SETTABLEKS R13 R12 K3 ["tag"]
  GETIMPORT R13 K34 [UDim2.new]
  LOADK R14 K20 [0.5]
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K14 ["Size"]
  GETIMPORT R13 K19 [UDim2.fromScale]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K38 ["Position"]
  LOADN R13 0
  SETTABLEKS R13 R12 K39 ["BackgroundTransparency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K35 ["LeftDivider"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K40 [{"tag", "Size", "Position", "BackgroundTransparency"}]
  GETTABLEKS R14 R1 K28 ["dialogStage"]
  JUMPIFNOTEQKS R14 K31 ["EditInfo"] [+3]
  LOADK R13 K41 ["bg-system-contrast"]
  JUMP [+1]
  LOADK R13 K42 ["bg-surface-300"]
  SETTABLEKS R13 R12 K3 ["tag"]
  GETIMPORT R13 K34 [UDim2.new]
  LOADK R14 K20 [0.5]
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K14 ["Size"]
  GETIMPORT R13 K19 [UDim2.fromScale]
  LOADK R14 K20 [0.5]
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K38 ["Position"]
  LOADN R13 0
  SETTABLEKS R13 R12 K39 ["BackgroundTransparency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K36 ["RightDivider"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K8 ["DividerContainer"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["LookContext"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K17 ["Flags"]
  GETTABLEKS R9 R10 K18 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R8 1 1
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R9
  RETURN R10 1
