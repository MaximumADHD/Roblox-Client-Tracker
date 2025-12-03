PROTO_0:
  GETTABLEKS R1 R0 K0 ["Stylizer"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"tag"}]
  LOADK R5 K4 ["size-full row gap-medium align-y-center flex-x-between"]
  SETTABLEKS R5 R4 K2 ["tag"]
  DUPTABLE R5 K8 [{"Padding", "Spacer", "CopyLinkButton"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K9 ["UIPadding"]
  DUPTABLE R8 K13 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
  GETTABLEKS R10 R1 K14 ["header"]
  GETTABLEKS R9 R10 K15 ["paddingTop"]
  SETTABLEKS R9 R8 K10 ["PaddingTop"]
  GETTABLEKS R10 R1 K14 ["header"]
  GETTABLEKS R9 R10 K16 ["paddingLeft"]
  SETTABLEKS R9 R8 K11 ["PaddingLeft"]
  GETTABLEKS R10 R1 K14 ["header"]
  GETTABLEKS R9 R10 K17 ["paddingRight"]
  SETTABLEKS R9 R8 K12 ["PaddingRight"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["Padding"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K19 [{"LayoutOrder"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K18 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Spacer"]
  GETUPVAL R6 2
  JUMPIFNOT R6 [+16]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K20 ["Dictionary"]
  GETTABLEKS R8 R9 K21 ["join"]
  DUPTABLE R9 K19 [{"LayoutOrder"}]
  LOADN R10 3
  SETTABLEKS R10 R9 K18 ["LayoutOrder"]
  MOVE R10 R0
  CALL R8 2 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K7 ["CopyLinkButton"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Collab8864_ShowCopyLinkButton"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Components"]
  GETTABLEKS R3 R4 K11 ["CopyLinkButton"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K12 ["Packages"]
  GETTABLEKS R4 R5 K13 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K12 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Foundation"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K15 ["View"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K12 ["Packages"]
  GETTABLEKS R7 R8 K16 ["Cryo"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R1 K9 ["Src"]
  GETTABLEKS R8 R9 K17 ["Types"]
  CALL R7 1 1
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R8 1
