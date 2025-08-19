PROTO_0:
  GETTABLEKS R1 R0 K0 ["Localization"]
  GETTABLEKS R2 R0 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K5 ["size-full row gap-medium align-y-center flex-x-between"]
  SETTABLEKS R6 R5 K3 ["tag"]
  DUPTABLE R6 K10 [{"Padding", "CollaborationTitle", "Spacer", "CopyLinkButton"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K11 ["UIPadding"]
  DUPTABLE R9 K15 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
  GETTABLEKS R11 R2 K16 ["header"]
  GETTABLEKS R10 R11 K17 ["paddingTop"]
  SETTABLEKS R10 R9 K12 ["PaddingTop"]
  GETTABLEKS R11 R2 K16 ["header"]
  GETTABLEKS R10 R11 K18 ["paddingLeft"]
  SETTABLEKS R10 R9 K13 ["PaddingLeft"]
  GETTABLEKS R11 R2 K16 ["header"]
  GETTABLEKS R10 R11 K19 ["paddingRight"]
  SETTABLEKS R10 R9 K14 ["PaddingRight"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["Padding"]
  GETUPVAL R7 2
  JUMPIFNOT R7 [+19]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K22 [{"LayoutOrder", "tag", "Text"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  LOADK R10 K23 ["auto-xy text-heading-large"]
  SETTABLEKS R10 R9 K3 ["tag"]
  LOADK R12 K24 ["Title"]
  LOADK R13 K25 ["Collaboration"]
  NAMECALL R10 R1 K26 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["Text"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["CollaborationTitle"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K27 [{"LayoutOrder"}]
  LOADN R10 2
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["Spacer"]
  GETUPVAL R7 4
  JUMPIFNOT R7 [+16]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 5
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K28 ["Dictionary"]
  GETTABLEKS R9 R10 K29 ["join"]
  DUPTABLE R10 K27 [{"LayoutOrder"}]
  LOADN R11 3
  SETTABLEKS R11 R10 K20 ["LayoutOrder"]
  MOVE R11 R0
  CALL R9 2 -1
  CALL R7 -1 1
  SETTABLEKS R7 R6 K9 ["CopyLinkButton"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Collab8864_ShowCopyLinkButton"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R2 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Components"]
  GETTABLEKS R4 R5 K12 ["CopyLinkButton"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K13 ["Packages"]
  GETTABLEKS R5 R6 K14 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R2 K13 ["Packages"]
  GETTABLEKS R6 R7 K15 ["Foundation"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K16 ["View"]
  GETTABLEKS R7 R5 K17 ["Text"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R2 K13 ["Packages"]
  GETTABLEKS R9 R10 K18 ["Cryo"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R2 K10 ["Src"]
  GETTABLEKS R10 R11 K19 ["Types"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R8
  RETURN R10 1
