PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["ResetCameraButton"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["useContext"]
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["Context"]
  JUMP [+1]
  GETUPVAL R3 4
  CALL R2 1 1
  GETIMPORT R3 K6 [UDim.new]
  LOADN R4 0
  GETTABLEKS R5 R1 K7 ["Spacing"]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["createElement"]
  GETUPVAL R5 5
  DUPTABLE R6 K15 [{"AnchorPoint", "LayoutOrder", "OnClick", "Style", "Size", "ZIndex"}]
  GETIMPORT R7 K17 [Vector2.new]
  LOADN R8 1
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["AnchorPoint"]
  GETTABLEKS R7 R0 K10 ["LayoutOrder"]
  SETTABLEKS R7 R6 K10 ["LayoutOrder"]
  GETTABLEKS R7 R2 K18 ["resetCamera"]
  SETTABLEKS R7 R6 K11 ["OnClick"]
  LOADK R7 K19 ["Round"]
  SETTABLEKS R7 R6 K12 ["Style"]
  GETUPVAL R8 6
  CALL R8 0 1
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R1 K13 ["Size"]
  JUMP [+10]
  GETTABLEKS R8 R1 K13 ["Size"]
  GETIMPORT R9 K22 [UDim2.fromOffset]
  GETTABLEKS R10 R1 K7 ["Spacing"]
  GETTABLEKS R11 R1 K7 ["Spacing"]
  CALL R9 2 1
  ADD R7 R8 R9
  SETTABLEKS R7 R6 K13 ["Size"]
  LOADN R7 2
  SETTABLEKS R7 R6 K14 ["ZIndex"]
  DUPTABLE R7 K25 [{"Spacing", "Icon", "Tooltip"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K26 ["UIPadding"]
  DUPTABLE R10 K31 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R3 R10 K27 ["PaddingLeft"]
  SETTABLEKS R3 R10 K28 ["PaddingRight"]
  SETTABLEKS R3 R10 K29 ["PaddingTop"]
  SETTABLEKS R3 R10 K30 ["PaddingBottom"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Spacing"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 7
  DUPTABLE R10 K33 [{"Image"}]
  GETTABLEKS R11 R1 K32 ["Image"]
  SETTABLEKS R11 R10 K32 ["Image"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K23 ["Icon"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K35 [{"Text"}]
  LOADK R11 K36 ["Reset Camera"]
  SETTABLEKS R11 R10 K34 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K24 ["Tooltip"]
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
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["AvatarScreenContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["DEPRECATED_AvatarScreenContext"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K14 ["Flags"]
  GETTABLEKS R6 R7 K15 ["getFFlagAvatarPreviewerSkinToneAlphaDetection"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K14 ["Flags"]
  GETTABLEKS R7 R8 K16 ["getFFlagAvatarPreviewerBetterUI"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K17 ["UI"]
  GETTABLEKS R8 R7 K18 ["Button"]
  GETTABLEKS R9 R7 K19 ["Image"]
  GETTABLEKS R10 R7 K20 ["Tooltip"]
  GETTABLEKS R12 R1 K21 ["ContextServices"]
  GETTABLEKS R11 R12 K22 ["Stylizer"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K23 ["Resources"]
  GETTABLEKS R13 R14 K24 ["Theme"]
  CALL R12 1 1
  DUPCLOSURE R13 K25 [PROTO_0]
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R10
  RETURN R13 1
