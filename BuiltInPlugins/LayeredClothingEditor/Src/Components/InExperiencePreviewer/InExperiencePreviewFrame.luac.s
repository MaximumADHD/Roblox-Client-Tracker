PROTO_0:
  DUPTABLE R1 K1 [{"index"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["index"]
  SETTABLEKS R1 R0 K2 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"index"}]
  GETUPVAL R3 1
  NAMECALL R3 R3 K2 ["getCurrentPreviewAvatarIndex"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["index"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PreviewContext"]
  NAMECALL R3 R2 K2 ["getPreviewModelChangedSignal"]
  CALL R3 1 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K4 ["modelSelectionChangedHandle"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["index"]
  GETTABLEKS R4 R1 K3 ["PreviewContext"]
  GETTABLEKS R5 R1 K4 ["Stylizer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  LOADK R7 K6 ["ScreenGui"]
  DUPTABLE R8 K8 [{"ZIndexBehavior"}]
  GETIMPORT R9 K11 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K7 ["ZIndexBehavior"]
  DUPTABLE R9 K13 [{"AvatarSelection"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K20 [{"PreviewAvatars", "SelectedIndex", "Size", "Position", "AnchorPoint", "Capacity"}]
  NAMECALL R13 R4 K21 ["getAvatars"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K14 ["PreviewAvatars"]
  SETTABLEKS R3 R12 K15 ["SelectedIndex"]
  GETTABLEKS R13 R5 K16 ["Size"]
  SETTABLEKS R13 R12 K16 ["Size"]
  GETIMPORT R13 K24 [UDim2.fromScale]
  LOADK R14 K25 [0.5]
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["Position"]
  GETIMPORT R13 K28 [Vector2.new]
  LOADK R14 K25 [0.5]
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["AnchorPoint"]
  LOADN R13 3
  SETTABLEKS R13 R12 K19 ["Capacity"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["AvatarSelection"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["modelSelectionChangedHandle"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["modelSelectionChangedHandle"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["modelSelectionChangedHandle"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["AvatarToolsShared"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K9 ["Components"]
  GETTABLEKS R5 R4 K10 ["PreviewAvatarWheel"]
  GETTABLEKS R6 R2 K11 ["Contexts"]
  GETTABLEKS R7 R6 K12 ["PreviewContext"]
  GETTABLEKS R8 R3 K13 ["ContextServices"]
  GETTABLEKS R9 R8 K14 ["withContext"]
  GETTABLEKS R10 R1 K15 ["PureComponent"]
  LOADK R12 K16 ["InExperiencePreviewerFrame"]
  NAMECALL R10 R10 K17 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K18 [PROTO_0]
  SETTABLEKS R11 R10 K19 ["init"]
  DUPCLOSURE R11 K20 [PROTO_2]
  SETTABLEKS R11 R10 K21 ["didMount"]
  DUPCLOSURE R11 K22 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K23 ["render"]
  DUPCLOSURE R11 K24 [PROTO_4]
  SETTABLEKS R11 R10 K25 ["willUnmount"]
  MOVE R11 R9
  DUPTABLE R12 K27 [{"Stylizer", "PreviewContext"}]
  GETTABLEKS R13 R8 K26 ["Stylizer"]
  SETTABLEKS R13 R12 K26 ["Stylizer"]
  SETTABLEKS R7 R12 K12 ["PreviewContext"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
