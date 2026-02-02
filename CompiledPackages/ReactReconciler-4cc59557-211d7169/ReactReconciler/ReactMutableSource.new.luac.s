PROTO_0:
  GETUPVAL R2 0
  FASTCALL2 TABLE_INSERT R2 R0 [+4]
  MOVE R3 R0
  GETIMPORT R1 K2 [table.insert]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [ipairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_INEXT R0
  GETUPVAL R5 1
  JUMPIFNOT R5 [+4]
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["_workInProgressVersionPrimary"]
  JUMP [+3]
  LOADNIL R5
  SETTABLEKS R5 R4 K3 ["_workInProgressVersionSecondary"]
  FORGLOOP R0 2 [inext] [-10]
  GETIMPORT R0 K6 [table.clear]
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
  JUMPIFNOTEQKNIL R4 [+10]
  NEWTABLE R4 0 2
  MOVE R5 R1
  MOVE R6 R3
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R0 K2 ["mutableSourceEagerHydrationData"]
  RETURN R0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K5 ["Shared"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K6 ["console"]
  NEWTABLE R2 8 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K5 ["Shared"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K7 ["ReactInternalTypes"]
  CALL R4 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K8 ["ReactFiberHostConfig"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K9 ["isPrimaryRenderer"]
  NEWTABLE R6 0 0
  LOADNIL R7
  GETIMPORT R9 K11 [_G]
  GETTABLEKS R8 R9 K12 ["__DEV__"]
  JUMPIFNOT R8 [+2]
  NEWTABLE R7 0 0
  DUPCLOSURE R8 K13 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R8 R2 K14 ["markSourceAsDirty"]
  DUPCLOSURE R8 K15 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R8 R2 K16 ["resetWorkInProgressVersions"]
  DUPCLOSURE R8 K17 [PROTO_2]
  CAPTURE VAL R5
  SETTABLEKS R8 R2 K18 ["getWorkInProgressVersion"]
  DUPCLOSURE R8 K19 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R8 R2 K20 ["setWorkInProgressVersion"]
  NEWCLOSURE R8 P4
  CAPTURE VAL R5
  CAPTURE REF R7
  CAPTURE VAL R1
  SETTABLEKS R8 R2 K21 ["warnAboutMultipleRenderersDEV"]
  DUPCLOSURE R8 K22 [PROTO_5]
  SETTABLEKS R8 R2 K23 ["registerMutableSourceForHydration"]
  CLOSEUPVALS R7
  RETURN R2 1
