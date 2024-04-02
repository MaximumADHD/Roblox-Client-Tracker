PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_stamp"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_stamp"]
  NAMECALL R0 R0 K1 ["commit"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["getPayload"]
  CALL R0 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["BuildSettings"]
  GETTABLE R2 R0 R3
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["TerrainType"]
  GETTABLE R1 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["_tools"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["BuildSettings"]
  GETTABLE R5 R0 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["TerrainType"]
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K2 ["getPayload"]
  CALL R2 1 1
  GETUPVAL R3 0
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K6 ["createStamp"]
  CALL R3 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 0 0
  SETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R3 1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  NAMECALL R8 R7 K2 ["new"]
  CALL R8 1 1
  MOVE R11 R1
  MOVE R12 R2
  NAMECALL R9 R8 K0 ["init"]
  CALL R9 3 0
  GETTABLEKS R9 R0 K1 ["_tools"]
  SETTABLE R8 R9 R6
  GETTABLEKS R10 R0 K1 ["_tools"]
  GETTABLE R9 R10 R6
  NEWTABLE R10 1 0
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["BuildSettings"]
  NEWTABLE R12 1 0
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K4 ["Commit"]
  DUPTABLE R14 K8 [{"Hidden", "Label", "Schema"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K5 ["Hidden"]
  LOADK R15 K9 [""]
  SETTABLEKS R15 R14 K6 ["Label"]
  DUPTABLE R15 K11 [{"OnClick"}]
  NEWCLOSURE R16 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R16 R15 K10 ["OnClick"]
  SETTABLEKS R15 R14 K7 ["Schema"]
  SETTABLE R14 R12 R13
  SETTABLE R12 R10 R11
  SETTABLEKS R10 R9 K12 ["_overrides"]
  FORGLOOP R3 2 [-45]
  RETURN R0 0

PROTO_2:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R1 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["TerrainType"]
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["form"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnGizmoChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K1 ["_tools"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["BuildSettings"]
  GETTABLE R6 R2 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["TerrainType"]
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  MOVE R5 R1
  NAMECALL R3 R3 K4 ["saveForm"]
  CALL R3 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["BuildSettings"]
  GETTABLE R4 R1 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["TerrainType"]
  GETTABLE R3 R4 R5
  GETTABLEKS R5 R0 K1 ["_tools"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["BuildSettings"]
  GETTABLE R7 R2 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["TerrainType"]
  GETTABLE R6 R7 R8
  GETTABLE R4 R5 R6
  NAMECALL R4 R4 K0 ["getPayload"]
  CALL R4 1 1
  JUMPIFNOT R3 [+46]
  GETTABLEKS R5 R0 K5 ["_onFormChangedForwarder"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R0 K5 ["_onFormChangedForwarder"]
  NAMECALL R5 R5 K6 ["Disconnect"]
  CALL R5 1 0
  GETTABLEKS R5 R0 K7 ["_onGizmoChangedForwarder"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R0 K7 ["_onGizmoChangedForwarder"]
  NAMECALL R5 R5 K6 ["Disconnect"]
  CALL R5 1 0
  GETTABLEKS R7 R0 K1 ["_tools"]
  GETTABLE R6 R7 R3
  GETTABLEKS R5 R6 K8 ["OnFormChanged"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  NAMECALL R5 R5 K9 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K5 ["_onFormChangedForwarder"]
  GETTABLEKS R7 R0 K1 ["_tools"]
  GETTABLE R6 R7 R3
  GETTABLEKS R5 R6 K10 ["OnGizmoChanged"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  NAMECALL R5 R5 K9 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K7 ["_onGizmoChangedForwarder"]
  MOVE R7 R3
  MOVE R8 R4
  NAMECALL R5 R0 K11 ["createStamp"]
  CALL R5 3 0
  RETURN R0 0
  GETTABLEKS R5 R0 K12 ["_stamp"]
  JUMPIFNOT R5 [+8]
  GETTABLEKS R5 R0 K12 ["_stamp"]
  MOVE R7 R4
  MOVE R8 R1
  NAMECALL R5 R5 K13 ["update"]
  CALL R5 3 0
  RETURN R0 0
  GETIMPORT R5 K15 [warn]
  LOADK R6 K16 ["stamp not created!"]
  CALL R5 1 0
  RETURN R0 0

PROTO_6:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R1 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["TerrainType"]
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["gizmos"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_7:
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K1 ["_tools"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["BuildSettings"]
  GETTABLE R6 R2 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["TerrainType"]
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  MOVE R5 R1
  NAMECALL R3 R3 K4 ["saveGizmos"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K5 ["_stamp"]
  JUMPIFNOT R3 [+21]
  GETTABLEKS R4 R0 K1 ["_tools"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["BuildSettings"]
  GETTABLE R6 R2 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["TerrainType"]
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  NAMECALL R3 R3 K0 ["getPayload"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K5 ["_stamp"]
  MOVE R6 R3
  MOVE R7 R1
  NAMECALL R4 R4 K6 ["update"]
  CALL R4 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnGizmoChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R1 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["TerrainType"]
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["activate"]
  CALL R2 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["TerrainType"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+44]
  GETTABLEKS R5 R0 K1 ["_tools"]
  GETTABLE R4 R5 R2
  GETTABLEKS R3 R4 K5 ["OnFormChanged"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K7 ["_onFormChangedForwarder"]
  GETTABLEKS R5 R0 K1 ["_tools"]
  GETTABLE R4 R5 R2
  GETTABLEKS R3 R4 K8 ["OnGizmoChanged"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K9 ["_onGizmoChangedForwarder"]
  GETTABLEKS R4 R0 K1 ["_tools"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["BuildSettings"]
  GETTABLE R6 R1 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["TerrainType"]
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  NAMECALL R3 R3 K0 ["getPayload"]
  CALL R3 1 1
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R0 K10 ["createStamp"]
  CALL R4 3 0
  RETURN R0 0
  GETTABLEKS R3 R0 K11 ["_stamp"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R3 R0 K11 ["_stamp"]
  NAMECALL R3 R3 K12 ["destroy"]
  CALL R3 1 0
  LOADNIL R3
  SETTABLEKS R3 R0 K11 ["_stamp"]
  RETURN R0 0

PROTO_11:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R1 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["TerrainType"]
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["deactivate"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K5 ["_onFormChangedForwarder"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K5 ["_onFormChangedForwarder"]
  NAMECALL R2 R2 K6 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K7 ["_onGizmoChangedForwarder"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K7 ["_onGizmoChangedForwarder"]
  NAMECALL R2 R2 K6 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K8 ["_stamp"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K8 ["_stamp"]
  NAMECALL R2 R2 K9 ["destroy"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K8 ["_stamp"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R0 K0 ["_stamp"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K0 ["_stamp"]
  NAMECALL R3 R3 K1 ["destroy"]
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  MOVE R5 R1
  NAMECALL R3 R3 K2 ["new"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K0 ["_stamp"]
  GETTABLEKS R3 R0 K0 ["_stamp"]
  MOVE R5 R2
  GETTABLEKS R6 R0 K3 ["_services"]
  NAMECALL R3 R3 K4 ["init"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K0 ["_stamp"]
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["update"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Tools"]
  GETTABLEKS R2 R3 K8 ["BaseTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagTerrainEditorRemoveSchema"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Schemas"]
  GETTABLEKS R5 R6 K12 ["Settings"]
  GETTABLEKS R4 R5 K13 ["Build"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K14 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K15 ["BuildSettings"]
  GETTABLEKS R6 R4 K16 ["Category"]
  GETTABLEKS R7 R4 K17 ["Gizmo"]
  GETTABLEKS R8 R4 K18 ["Tab"]
  GETTABLEKS R9 R4 K19 ["TerrainType"]
  GETTABLEKS R10 R4 K20 ["Tool"]
  NEWTABLE R11 8 0
  GETTABLEKS R12 R9 K21 ["Arctic"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K21 ["Arctic"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R9 K22 ["Crater"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K22 ["Crater"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R9 K23 ["Desert"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K23 ["Desert"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R9 K24 ["Lake"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K24 ["Lake"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R9 K25 ["Mesa"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K25 ["Mesa"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R9 K26 ["Mountain"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K26 ["Mountain"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R9 K27 ["Plain"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K27 ["Plain"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R9 K28 ["Volcano"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K28 ["Volcano"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  NEWTABLE R12 8 0
  GETTABLEKS R13 R9 K21 ["Arctic"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K29 ["Stamps"]
  GETTABLEKS R15 R16 K30 ["ArcticStamp"]
  CALL R14 1 1
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R9 K22 ["Crater"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K29 ["Stamps"]
  GETTABLEKS R15 R16 K31 ["CraterStamp"]
  CALL R14 1 1
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R9 K23 ["Desert"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K29 ["Stamps"]
  GETTABLEKS R15 R16 K32 ["DesertStamp"]
  CALL R14 1 1
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R9 K24 ["Lake"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K29 ["Stamps"]
  GETTABLEKS R15 R16 K33 ["LakeStamp"]
  CALL R14 1 1
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R9 K25 ["Mesa"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K29 ["Stamps"]
  GETTABLEKS R15 R16 K34 ["MesaStamp"]
  CALL R14 1 1
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R9 K26 ["Mountain"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K29 ["Stamps"]
  GETTABLEKS R15 R16 K35 ["MountainStamp"]
  CALL R14 1 1
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R9 K27 ["Plain"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K29 ["Stamps"]
  GETTABLEKS R15 R16 K36 ["PlainStamp"]
  CALL R14 1 1
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R9 K28 ["Volcano"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K29 ["Stamps"]
  GETTABLEKS R15 R16 K37 ["VolcanoStamp"]
  CALL R14 1 1
  SETTABLE R14 R12 R13
  NEWTABLE R13 0 1
  DUPTABLE R14 K41 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K38 ["Defaults"]
  GETTABLEKS R15 R6 K15 ["BuildSettings"]
  SETTABLEKS R15 R14 K39 ["Id"]
  MOVE R16 R2
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  LOADNIL R15
  JUMP [+1]
  MOVE R15 R3
  SETTABLEKS R15 R14 K40 ["Schema"]
  SETLIST R13 R14 1 [1]
  NEWTABLE R14 0 1
  DUPTABLE R15 K42 [{"Id", "Schema"}]
  GETTABLEKS R16 R7 K43 ["Region"]
  SETTABLEKS R16 R15 K39 ["Id"]
  DUPTABLE R16 K47 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R17 R7 K43 ["Region"]
  SETTABLEKS R17 R16 K44 ["Type"]
  LOADB R17 0
  SETTABLEKS R17 R16 K45 ["Wireframe"]
  LOADB R17 0
  SETTABLEKS R17 R16 K46 ["Rotation"]
  SETTABLEKS R16 R15 K40 ["Schema"]
  SETLIST R14 R15 1 [1]
  GETTABLEKS R17 R10 K13 ["Build"]
  GETTABLEKS R18 R8 K48 ["Create"]
  MOVE R19 R13
  MOVE R20 R14
  NAMECALL R15 R1 K49 ["new"]
  CALL R15 5 1
  DUPCLOSURE R16 K50 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K51 ["init"]
  DUPCLOSURE R16 K52 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K53 ["form"]
  DUPCLOSURE R16 K54 [PROTO_5]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K55 ["saveForm"]
  DUPCLOSURE R16 K56 [PROTO_6]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K57 ["gizmos"]
  DUPCLOSURE R16 K58 [PROTO_7]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K59 ["saveGizmos"]
  DUPCLOSURE R16 K60 [PROTO_10]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K61 ["activate"]
  DUPCLOSURE R16 K62 [PROTO_11]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K63 ["deactivate"]
  DUPCLOSURE R16 K64 [PROTO_12]
  CAPTURE VAL R12
  SETTABLEKS R16 R15 K65 ["createStamp"]
  RETURN R15 1
