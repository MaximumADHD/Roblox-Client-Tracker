PROTO_0:
  GETUPVAL R2 0
  FASTCALL2 TABLE_INSERT R2 R0 [+4]
  MOVE R3 R0
  GETIMPORT R1 K2 [table.insert]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETUPVAL R5 1
  JUMPIFNOT R5 [+4]
  LOADNIL R5
  SETTABLEKS R5 R4 K0 ["_workInProgressVersionPrimary"]
  JUMP [+3]
  LOADNIL R5
  SETTABLEKS R5 R4 K1 ["_workInProgressVersionSecondary"]
  FORGLOOP R0 2 [-10]
  GETIMPORT R0 K4 [table.clear]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K0 ["_workInProgressVersionPrimary"]
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["_workInProgressVersionSecondary"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+3]
  SETTABLEKS R1 R0 K0 ["_workInProgressVersionPrimary"]
  JUMP [+2]
  SETTABLEKS R1 R0 K1 ["_workInProgressVersionSecondary"]
  GETUPVAL R3 1
  FASTCALL2 TABLE_INSERT R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K4 [table.insert]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R2 K1 [_G]
  GETTABLEKS R1 R2 K2 ["__DEV__"]
  JUMPIFNOT R1 [+39]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+19]
  GETTABLEKS R1 R0 K3 ["_currentPrimaryRenderer"]
  JUMPIFNOTEQKNIL R1 [+5]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K3 ["_currentPrimaryRenderer"]
  RETURN R0 0
  GETTABLEKS R1 R0 K3 ["_currentPrimaryRenderer"]
  GETUPVAL R2 1
  JUMPIFEQ R1 R2 [+25]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["error"]
  LOADK R2 K5 ["Detected multiple renderers concurrently rendering the same mutable source. This is currently unsupported."]
  CALL R1 1 0
  RETURN R0 0
  GETTABLEKS R1 R0 K6 ["_currentSecondaryRenderer"]
  JUMPIFNOTEQKNIL R1 [+5]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K6 ["_currentSecondaryRenderer"]
  RETURN R0 0
  GETTABLEKS R1 R0 K6 ["_currentSecondaryRenderer"]
  GETUPVAL R2 1
  JUMPIFEQ R1 R2 [+6]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["error"]
  LOADK R2 K5 ["Detected multiple renderers concurrently rendering the same mutable source. This is currently unsupported."]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R1 K0 ["_getVersion"]
  MOVE R3 R2
  GETTABLEKS R4 R1 K1 ["_source"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K2 ["mutableSourceEagerHydrationData"]
  JUMPIFNOTEQKNIL R4 [+9]
  NEWTABLE R4 0 2
  MOVE R5 R1
  MOVE R6 R3
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R0 K2 ["mutableSourceEagerHydrationData"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["shared"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R0 R1 K7 ["console"]
  NEWTABLE R1 8 0
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K5 ["shared"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K8 ["ReactInternalTypes"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  LOADK R8 K9 ["ReactFiberHostConfig"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R4 R5 K10 ["isPrimaryRenderer"]
  NEWTABLE R5 0 0
  LOADNIL R6
  GETIMPORT R8 K12 [_G]
  GETTABLEKS R7 R8 K13 ["__DEV__"]
  JUMPIFNOT R7 [+2]
  NEWTABLE R6 0 0
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R7 R1 K15 ["markSourceAsDirty"]
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R7 R1 K17 ["resetWorkInProgressVersions"]
  DUPCLOSURE R7 K18 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R7 R1 K19 ["getWorkInProgressVersion"]
  DUPCLOSURE R7 K20 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R7 R1 K21 ["setWorkInProgressVersion"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R4
  CAPTURE REF R6
  CAPTURE VAL R0
  SETTABLEKS R7 R1 K22 ["warnAboutMultipleRenderersDEV"]
  DUPCLOSURE R7 K23 [PROTO_5]
  SETTABLEKS R7 R1 K24 ["registerMutableSourceForHydration"]
  CLOSEUPVALS R6
  RETURN R1 1
