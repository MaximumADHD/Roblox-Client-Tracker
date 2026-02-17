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
  GETTABLEKS R4 R0 K1 ["isSelected"]
  JUMPIFNOT R4 [+2]
  LOADK R3 K2 ["content-default"]
  JUMP [+1]
  LOADK R3 K3 ["content-muted"]
  GETTABLEKS R4 R0 K1 ["isSelected"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R0 K4 ["isCompleted"]
  NOT R4 R5
  GETTABLEKS R6 R0 K4 ["isCompleted"]
  JUMPIFNOT R6 [+33]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K9 [{"name", "size", "style"}]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K10 ["Check"]
  SETTABLEKS R8 R7 K6 ["name"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K11 ["Medium"]
  SETTABLEKS R8 R7 K7 ["size"]
  DUPTABLE R8 K14 [{"Color3", "Transparency"}]
  GETTABLEKS R12 R2 K15 ["Color"]
  GETTABLEKS R11 R12 K16 ["Surface"]
  GETTABLEKS R10 R11 K17 ["Surface_0"]
  GETTABLEKS R9 R10 K12 ["Color3"]
  SETTABLEKS R9 R8 K12 ["Color3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K13 ["Transparency"]
  SETTABLEKS R8 R7 K8 ["style"]
  CALL R5 2 1
  JUMP [+22]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 7
  DUPTABLE R7 K20 [{"Text", "tag"}]
  GETTABLEKS R9 R0 K21 ["stageNumber"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K23 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K18 ["Text"]
  LOADK R9 K24 ["text-label-medium %*"]
  MOVE R11 R3
  NAMECALL R9 R9 K25 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  SETTABLEKS R8 R7 K19 ["tag"]
  CALL R5 2 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 8
  DUPTABLE R8 K27 [{"tag", "LayoutOrder"}]
  LOADK R9 K28 ["row gap-small align-y-center auto-xy"]
  SETTABLEKS R9 R8 K19 ["tag"]
  GETTABLEKS R9 R0 K26 ["LayoutOrder"]
  SETTABLEKS R9 R8 K26 ["LayoutOrder"]
  DUPTABLE R9 K31 [{"Circle", "Label"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 8
  DUPTABLE R12 K33 [{"tag", "Size", "LayoutOrder"}]
  NEWTABLE R13 8 0
  LOADB R14 1
  SETTABLEKS R14 R13 K34 ["radius-circle align-x-center align-y-center"]
  GETTABLEKS R14 R0 K4 ["isCompleted"]
  SETTABLEKS R14 R13 K35 ["bg-system-contrast"]
  GETTABLEKS R15 R0 K4 ["isCompleted"]
  NOT R14 R15
  SETTABLEKS R14 R13 K36 ["bg-surface-200"]
  SETTABLEKS R4 R13 K37 ["stroke-system-contrast"]
  NOT R14 R4
  SETTABLEKS R14 R13 K38 ["stroke-muted"]
  SETTABLEKS R13 R12 K19 ["tag"]
  GETIMPORT R13 K41 [UDim2.fromOffset]
  LOADN R14 24
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K32 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K26 ["LayoutOrder"]
  DUPTABLE R13 K43 [{"Content"}]
  SETTABLEKS R5 R13 K42 ["Content"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K29 ["Circle"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K44 [{"Text", "tag", "LayoutOrder"}]
  LOADK R15 K45 ["LookComposerDialog"]
  GETTABLEKS R16 R0 K46 ["labelKey"]
  NAMECALL R13 R1 K47 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K18 ["Text"]
  LOADK R14 K48 ["text-label-medium auto-xy %*"]
  MOVE R16 R3
  NAMECALL R14 R14 K25 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLEKS R13 R12 K19 ["tag"]
  LOADN R13 2
  SETTABLEKS R13 R12 K26 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K30 ["Label"]
  CALL R6 3 -1
  RETURN R6 -1

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
  DUPTABLE R16 K27 [{"stageNumber", "labelKey", "isSelected", "isCompleted", "LayoutOrder"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K23 ["stageNumber"]
  LOADK R17 K28 ["ConfirmItems"]
  SETTABLEKS R17 R16 K24 ["labelKey"]
  GETTABLEKS R18 R1 K29 ["dialogStage"]
  JUMPIFEQKS R18 K28 ["ConfirmItems"] [+2]
  LOADB R17 0 +1
  LOADB R17 1
  SETTABLEKS R17 R16 K25 ["isSelected"]
  GETTABLEKS R18 R1 K29 ["dialogStage"]
  JUMPIFEQKS R18 K30 ["EditInfo"] [+2]
  LOADB R17 0 +1
  LOADB R17 1
  SETTABLEKS R17 R16 K26 ["isCompleted"]
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
  DUPTABLE R13 K32 [{"EditInfoStage"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K2 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K33 [{"stageNumber", "labelKey", "isSelected", "LayoutOrder"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K23 ["stageNumber"]
  LOADK R17 K30 ["EditInfo"]
  SETTABLEKS R17 R16 K24 ["labelKey"]
  GETTABLEKS R18 R1 K29 ["dialogStage"]
  JUMPIFEQKS R18 K30 ["EditInfo"] [+2]
  LOADB R17 0 +1
  LOADB R17 1
  SETTABLEKS R17 R16 K25 ["isSelected"]
  LOADN R17 1
  SETTABLEKS R17 R16 K4 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K31 ["EditInfoStage"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K12 ["RightHalf"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["StagesRow"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K34 [{"Size", "LayoutOrder"}]
  GETIMPORT R9 K36 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  CALL R9 4 1
  SETTABLEKS R9 R8 K14 ["Size"]
  LOADN R9 2
  SETTABLEKS R9 R8 K4 ["LayoutOrder"]
  DUPTABLE R9 K39 [{"LeftDivider", "RightDivider"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K42 [{"tag", "Size", "Position", "BackgroundTransparency"}]
  GETTABLEKS R14 R1 K29 ["dialogStage"]
  JUMPIFNOTEQKS R14 K28 ["ConfirmItems"] [+3]
  LOADK R13 K43 ["bg-system-contrast"]
  JUMP [+1]
  LOADK R13 K44 ["bg-surface-300"]
  SETTABLEKS R13 R12 K3 ["tag"]
  GETIMPORT R13 K36 [UDim2.new]
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
  SETTABLEKS R13 R12 K40 ["Position"]
  LOADN R13 0
  SETTABLEKS R13 R12 K41 ["BackgroundTransparency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K37 ["LeftDivider"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K42 [{"tag", "Size", "Position", "BackgroundTransparency"}]
  GETTABLEKS R14 R1 K29 ["dialogStage"]
  JUMPIFNOTEQKS R14 K30 ["EditInfo"] [+3]
  LOADK R13 K43 ["bg-system-contrast"]
  JUMP [+1]
  LOADK R13 K44 ["bg-surface-300"]
  SETTABLEKS R13 R12 K3 ["tag"]
  GETIMPORT R13 K36 [UDim2.new]
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
  SETTABLEKS R13 R12 K40 ["Position"]
  LOADN R13 0
  SETTABLEKS R13 R12 K41 ["BackgroundTransparency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K38 ["RightDivider"]
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
  GETTABLEKS R5 R2 K11 ["Icon"]
  GETTABLEKS R7 R2 K12 ["Enums"]
  GETTABLEKS R6 R7 K13 ["IconName"]
  GETTABLEKS R8 R2 K12 ["Enums"]
  GETTABLEKS R7 R8 K14 ["IconSize"]
  GETTABLEKS R9 R2 K15 ["Hooks"]
  GETTABLEKS R8 R9 K16 ["useTokens"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K6 ["Packages"]
  GETTABLEKS R10 R11 K17 ["Framework"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K18 ["ContextServices"]
  GETTABLEKS R10 R11 K19 ["Localization"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K20 ["Src"]
  GETTABLEKS R13 R14 K21 ["Components"]
  GETTABLEKS R12 R13 K22 ["LookContext"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K20 ["Src"]
  GETTABLEKS R14 R15 K23 ["Flags"]
  GETTABLEKS R13 R14 K24 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R12 1 1
  DUPCLOSURE R13 K25 [PROTO_0]
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R3
  DUPCLOSURE R14 K26 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R13
  RETURN R14 1
