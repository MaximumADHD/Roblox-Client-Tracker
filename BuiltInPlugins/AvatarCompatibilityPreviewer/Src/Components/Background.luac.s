PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["Background"]
  NAMECALL R0 R0 K1 ["use"]
  CALL R0 2 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["createElement"]
  LOADK R2 K3 ["ImageLabel"]
  DUPTABLE R3 K8 [{"BackgroundTransparency", "Image", "Size", "ZIndex"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["BackgroundTransparency"]
  GETTABLEKS R4 R0 K5 ["Image"]
  SETTABLEKS R4 R3 K5 ["Image"]
  GETIMPORT R4 K11 [UDim2.fromScale]
  LOADN R5 1
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K6 ["Size"]
  LOADN R4 255
  SETTABLEKS R4 R3 K7 ["ZIndex"]
  CALL R1 2 -1
  RETURN R1 -1

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
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K12 ["ContextServices"]
  GETTABLEKS R4 R5 K13 ["Stylizer"]
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R5 1
