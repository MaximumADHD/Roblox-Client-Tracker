PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["selection"]
  GETUPVAL R2 1
  NAMECALL R0 R0 K1 ["Set"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["selection"]
  NEWTABLE R2 0 1
  GETUPVAL R3 1
  SETLIST R2 R3 1 [1]
  NAMECALL R0 R0 K1 ["Set"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETIMPORT R2 K9 [Enum.UserInputState.Cancel]
  SETTABLEKS R2 R0 K7 ["UserInputState"]
  NEWTABLE R2 0 1
  DUPTABLE R3 K12 [{"Text", "OnItemClicked"}]
  GETUPVAL R4 3
  LOADK R6 K13 ["BodyPointsTool"]
  LOADK R7 K14 ["SelectAll"]
  NAMECALL R4 R4 K15 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K10 ["Text"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K11 ["OnItemClicked"]
  SETLIST R2 R3 1 [1]
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R10 K12 [{"Text", "OnItemClicked"}]
  SETTABLEKS R7 R10 K10 ["Text"]
  NEWCLOSURE R11 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K11 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K18 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-15]
  GETUPVAL R3 4
  GETUPVAL R4 5
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  NAMECALL R2 R2 K1 ["get"]
  CALL R2 1 1
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["InputBegan"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  NEWTABLE R6 0 0
  CALL R3 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UserInputService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R9 R1 K13 ["Src"]
  GETTABLEKS R8 R9 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["EditingTools"]
  GETTABLEKS R6 R7 K16 ["BodyPointsTool"]
  GETTABLEKS R5 R6 K17 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K13 ["Src"]
  GETTABLEKS R7 R8 K18 ["Util"]
  GETTABLEKS R6 R7 K19 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R11 R1 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K15 ["EditingTools"]
  GETTABLEKS R8 R9 K16 ["BodyPointsTool"]
  GETTABLEKS R7 R8 K20 ["getHoveringPair"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K13 ["Src"]
  GETTABLEKS R9 R10 K21 ["Hooks"]
  GETTABLEKS R8 R9 K22 ["useEventConnection"]
  CALL R7 1 1
  GETTABLEKS R9 R2 K23 ["UI"]
  GETTABLEKS R8 R9 K24 ["showContextMenu"]
  GETTABLEKS R10 R2 K25 ["ContextServices"]
  GETTABLEKS R9 R10 K26 ["Localization"]
  GETTABLEKS R11 R2 K25 ["ContextServices"]
  GETTABLEKS R10 R11 K27 ["Plugin"]
  DUPCLOSURE R11 K28 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R8
  RETURN R11 1
