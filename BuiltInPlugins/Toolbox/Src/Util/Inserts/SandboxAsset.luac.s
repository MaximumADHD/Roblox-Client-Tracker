PROTO_0:
  LOADB R1 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADK R9 K0 ["LuaSourceContainer"]
  NAMECALL R7 R6 K1 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  LOADB R1 1
  JUMP [+16]
  NAMECALL R7 R6 K2 ["GetDescendants"]
  CALL R7 1 3
  FORGPREP R7
  LOADK R14 K0 ["LuaSourceContainer"]
  NAMECALL R12 R11 K1 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+2]
  LOADB R1 1
  JUMP [+2]
  FORGLOOP R7 2 [-8]
  JUMPIF R1 [+2]
  FORGLOOP R2 2 [-22]
  JUMPIF R1 [+1]
  RETURN R0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADK R9 K3 ["Model"]
  NAMECALL R7 R6 K1 ["IsA"]
  CALL R7 2 1
  JUMPIF R7 [+10]
  LOADK R9 K4 ["Folder"]
  NAMECALL R7 R6 K1 ["IsA"]
  CALL R7 2 1
  JUMPIF R7 [+5]
  LOADK R9 K0 ["LuaSourceContainer"]
  NAMECALL R7 R6 K1 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+17]
  GETTABLEKS R8 R6 K5 ["Capabilities"]
  GETTABLEKS R7 R8 K6 ["Add"]
  GETTABLEKS R8 R6 K5 ["Capabilities"]
  GETUPVAL R10 0
  FASTCALL1 TABLE_UNPACK R10 [+2]
  GETIMPORT R9 K8 [unpack]
  CALL R9 1 -1
  CALL R7 -1 1
  SETTABLEKS R7 R6 K5 ["Capabilities"]
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["Sandboxed"]
  NAMECALL R7 R6 K10 ["GetChildren"]
  CALL R7 1 3
  FORGPREP R7
  NEWTABLE R12 0 1
  MOVE R13 R11
  SETLIST R12 R13 1 [1]
  LENGTH R13 R12
  LOADN R14 0
  JUMPIFNOTLT R14 R13 [+52]
  GETIMPORT R13 K13 [table.remove]
  MOVE R14 R12
  LOADN R15 1
  CALL R13 2 1
  LOADK R16 K3 ["Model"]
  NAMECALL R14 R13 K1 ["IsA"]
  CALL R14 2 1
  JUMPIF R14 [+10]
  LOADK R16 K4 ["Folder"]
  NAMECALL R14 R13 K1 ["IsA"]
  CALL R14 2 1
  JUMPIF R14 [+5]
  LOADK R16 K0 ["LuaSourceContainer"]
  NAMECALL R14 R13 K1 ["IsA"]
  CALL R14 2 1
  JUMPIFNOT R14 [+17]
  GETTABLEKS R15 R13 K5 ["Capabilities"]
  GETTABLEKS R14 R15 K6 ["Add"]
  GETTABLEKS R15 R13 K5 ["Capabilities"]
  GETUPVAL R17 0
  FASTCALL1 TABLE_UNPACK R17 [+2]
  GETIMPORT R16 K8 [unpack]
  CALL R16 1 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K5 ["Capabilities"]
  LOADB R14 1
  SETTABLEKS R14 R13 K9 ["Sandboxed"]
  NAMECALL R14 R13 K10 ["GetChildren"]
  CALL R14 1 3
  FORGPREP R14
  FASTCALL2 TABLE_INSERT R12 R18 [+5]
  MOVE R20 R12
  MOVE R21 R18
  GETIMPORT R19 K15 [table.insert]
  CALL R19 2 0
  FORGLOOP R14 2 [-8]
  JUMPBACK [-55]
  FORGLOOP R7 2 [-61]
  FORGLOOP R2 2 [-99]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 20
  GETIMPORT R1 K3 [Enum.SecurityCapability.Animation]
  GETIMPORT R2 K5 [Enum.SecurityCapability.UI]
  GETIMPORT R3 K7 [Enum.SecurityCapability.CSG]
  GETIMPORT R4 K9 [Enum.SecurityCapability.Chat]
  GETIMPORT R5 K11 [Enum.SecurityCapability.Audio]
  GETIMPORT R6 K13 [Enum.SecurityCapability.Basic]
  GETIMPORT R7 K15 [Enum.SecurityCapability.Input]
  GETIMPORT R8 K17 [Enum.SecurityCapability.Avatar]
  GETIMPORT R9 K19 [Enum.SecurityCapability.Network]
  GETIMPORT R10 K21 [Enum.SecurityCapability.Physics]
  GETIMPORT R11 K23 [Enum.SecurityCapability.Players]
  GETIMPORT R12 K25 [Enum.SecurityCapability.DataStore]
  GETIMPORT R13 K27 [Enum.SecurityCapability.Environment]
  GETIMPORT R14 K29 [Enum.SecurityCapability.LegacySound]
  GETIMPORT R15 K31 [Enum.SecurityCapability.RemoteEvent]
  GETIMPORT R16 K33 [Enum.SecurityCapability.CreateInstances]
  SETLIST R0 R1 16 [1]
  GETIMPORT R1 K35 [Enum.SecurityCapability.RunClientScript]
  GETIMPORT R2 K37 [Enum.SecurityCapability.RunServerScript]
  GETIMPORT R3 K39 [Enum.SecurityCapability.AccessOutsideWrite]
  GETIMPORT R4 K41 [Enum.SecurityCapability.ScriptGlobals]
  SETLIST R0 R1 4 [17]
  DUPCLOSURE R1 K42 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
