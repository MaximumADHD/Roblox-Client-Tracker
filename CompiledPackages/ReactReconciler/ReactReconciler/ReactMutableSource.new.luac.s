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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["__DEV__"]
  JUMPIFNOT R1 [+39]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+19]
  GETTABLEKS R1 R0 K1 ["_currentPrimaryRenderer"]
  JUMPIFNOTEQKNIL R1 [+5]
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K1 ["_currentPrimaryRenderer"]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_currentPrimaryRenderer"]
  GETUPVAL R2 2
  JUMPIFEQ R1 R2 [+25]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K2 ["error"]
  LOADK R2 K3 ["Detected multiple renderers concurrently rendering the same mutable source. This is currently unsupported."]
  CALL R1 1 0
  RETURN R0 0
  GETTABLEKS R1 R0 K4 ["_currentSecondaryRenderer"]
  JUMPIFNOTEQKNIL R1 [+5]
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K4 ["_currentSecondaryRenderer"]
  RETURN R0 0
  GETTABLEKS R1 R0 K4 ["_currentSecondaryRenderer"]
  GETUPVAL R2 2
  JUMPIFEQ R1 R2 [+6]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K2 ["error"]
  LOADK R2 K3 ["Detected multiple renderers concurrently rendering the same mutable source. This is currently unsupported."]
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
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["ReactGlobals"]
  CALL R1 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K6 ["Shared"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["console"]
  NEWTABLE R3 8 0
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R0 K6 ["Shared"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K8 ["ReactInternalTypes"]
  CALL R5 1 1
  GETIMPORT R7 K4 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K2 ["Parent"]
  GETTABLEKS R8 R9 K9 ["ReactFiberHostConfig"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K10 ["isPrimaryRenderer"]
  NEWTABLE R7 0 0
  LOADNIL R8
  GETTABLEKS R9 R1 K11 ["__DEV__"]
  JUMPIFNOT R9 [+2]
  NEWTABLE R8 0 0
  DUPCLOSURE R9 K12 [PROTO_0]
  CAPTURE VAL R7
  SETTABLEKS R9 R3 K13 ["markSourceAsDirty"]
  DUPCLOSURE R9 K14 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R9 R3 K15 ["resetWorkInProgressVersions"]
  DUPCLOSURE R9 K16 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R9 R3 K17 ["getWorkInProgressVersion"]
  DUPCLOSURE R9 K18 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R9 R3 K19 ["setWorkInProgressVersion"]
  NEWCLOSURE R9 P4
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE REF R8
  CAPTURE VAL R2
  SETTABLEKS R9 R3 K20 ["warnAboutMultipleRenderersDEV"]
  DUPCLOSURE R9 K21 [PROTO_5]
  SETTABLEKS R9 R3 K22 ["registerMutableSourceForHydration"]
  CLOSEUPVALS R8
  RETURN R3 1
