PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  NOT R1 R2
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["DEPRECATED_registerPluginStyles should not be used when FFlagPreviewToolbar is enabled"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETIMPORT R0 K5 [Instance.new]
  LOADK R1 K6 ["StyleSheet"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["registerPluginStyles should only be used when FFlagPreviewToolbar is enabled"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETIMPORT R0 K5 [Instance.new]
  LOADK R1 K6 ["StyleSheet"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K1 ["DEPRECATED_registerPluginStyles"]
  GETUPVAL R0 0
  DUPCLOSURE R1 K2 [PROTO_1]
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K3 ["registerPluginStyles"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Interfaces"]
  GETTABLEKS R2 R3 K9 ["RegisterPluginStylesInterface"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K10 ["Flags"]
  GETTABLEKS R3 R4 K11 ["getFFlagPreviewToolbar"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
