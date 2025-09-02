PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["should be using DEPRECATED_registerPluginStyles when FFlagPreviewToolbar is disabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  FASTCALL2K ASSERT R0 K3 [+5]
  MOVE R2 R0
  LOADK R3 K3 ["Plugin must be provided to non-testing registerPluginStyles"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Styling"]
  GETTABLEKS R1 R2 K5 ["registerPluginStyles"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Interfaces"]
  GETTABLEKS R3 R4 K11 ["InterfaceTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K12 ["Flags"]
  GETTABLEKS R4 R5 K13 ["getFFlagPreviewToolbar"]
  CALL R3 1 1
  DUPTABLE R4 K16 [{"DEPRECATED_registerPluginStyles", "registerPluginStyles"}]
  GETTABLEKS R6 R1 K17 ["Styling"]
  GETTABLEKS R5 R6 K15 ["registerPluginStyles"]
  SETTABLEKS R5 R4 K14 ["DEPRECATED_registerPluginStyles"]
  DUPCLOSURE R5 K18 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K15 ["registerPluginStyles"]
  RETURN R4 1
