PROTO_0:
  GETIMPORT R1 K3 [Enum.NormalId.Top]
  JUMPIFEQ R0 R1 [+5]
  GETIMPORT R1 K5 [Enum.NormalId.Bottom]
  JUMPIFNOTEQ R0 R1 [+9]
  DUPTABLE R1 K6 [{"Top", "Bottom"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["Top"]
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["Bottom"]
  RETURN R1 1
  GETIMPORT R1 K8 [Enum.NormalId.Right]
  JUMPIFEQ R0 R1 [+5]
  GETIMPORT R1 K10 [Enum.NormalId.Left]
  JUMPIFNOTEQ R0 R1 [+9]
  DUPTABLE R1 K11 [{"Right", "Left"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K7 ["Right"]
  LOADB R2 1
  SETTABLEKS R2 R1 K9 ["Left"]
  RETURN R1 1
  DUPTABLE R1 K14 [{"Front", "Back"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K12 ["Front"]
  LOADB R2 1
  SETTABLEKS R2 R1 K13 ["Back"]
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  MOVE R8 R1
  GETUPVAL R9 1
  MOVE R10 R6
  CALL R9 1 1
  CALL R7 2 0
  FORGLOOP R2 2 [-7]
  RETURN R1 1

PROTO_2:
  NAMECALL R2 R1 K0 ["IsAvatar"]
  CALL R2 1 1
  JUMPIF R2 [+5]
  DUPTABLE R2 K2 [{"R15"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["R15"]
  RETURN R2 1
  NEWTABLE R2 0 0
  RETURN R2 1

PROTO_3:
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  JUMPIFNOT R3 [+6]
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1
  LOADNIL R3
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Dash"]
  GETTABLEKS R3 R2 K9 ["assign"]
  DUPCLOSURE R4 K10 [PROTO_0]
  DUPCLOSURE R5 K11 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  DUPCLOSURE R6 K12 [PROTO_2]
  DUPTABLE R7 K16 [{"WorldForward", "WorldUp", "RigType"}]
  SETTABLEKS R5 R7 K13 ["WorldForward"]
  SETTABLEKS R5 R7 K14 ["WorldUp"]
  SETTABLEKS R6 R7 K15 ["RigType"]
  DUPCLOSURE R8 K17 [PROTO_3]
  CAPTURE VAL R7
  RETURN R8 1
