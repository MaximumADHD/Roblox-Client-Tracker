PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["PlaneLock"]
  DUPTABLE R7 K4 [{"Hidden"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K3 ["Hidden"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["ManualPlaneLock"]
  DUPTABLE R7 K4 [{"Hidden"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K3 ["Hidden"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K6 ["_overrides"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveForm"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_operation"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K1 ["_operation"]
  NAMECALL R4 R0 K2 ["getPayload"]
  CALL R4 1 -1
  NAMECALL R2 R2 K3 ["updatePayload"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveGizmos"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_operation"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K1 ["_operation"]
  NAMECALL R4 R0 K2 ["getPayload"]
  CALL R4 1 -1
  NAMECALL R2 R2 K3 ["updatePayload"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  LOADK R3 K0 ["Flatten"]
  GETTABLEKS R4 R0 K1 ["_services"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K2 ["_operation"]
  GETTABLEKS R2 R0 K2 ["_operation"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["join"]
  DUPTABLE R5 K5 [{"Payload"}]
  NAMECALL R6 R0 K6 ["getPayload"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K4 ["Payload"]
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K7 ["start"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K1 ["isRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K2 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_shortcutController"]
  NAMECALL R1 R1 K2 ["getMouse"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_shortcutController"]
  GETTABLEKS R2 R3 K3 ["MouseDownAction"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_mouseDownConnection"]
  GETTABLEKS R2 R1 K6 ["Button1Up"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["_mouseUpConnection"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_mouseDownConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_mouseUpConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K4 ["_operation"]
  JUMPIFNOT R1 [+11]
  GETTABLEKS R1 R0 K4 ["_operation"]
  NAMECALL R1 R1 K5 ["isRunning"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K4 ["_operation"]
  NAMECALL R1 R1 K6 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["BaseTool"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Schemas"]
  GETTABLEKS R5 R6 K12 ["Settings"]
  GETTABLEKS R4 R5 K13 ["Brush"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K14 ["Util"]
  GETTABLEKS R6 R7 K15 ["Operations"]
  GETTABLEKS R5 R6 K16 ["FlattenOperation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K17 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K18 ["BrushSettings"]
  GETTABLEKS R7 R5 K19 ["BrushShape"]
  GETTABLEKS R8 R5 K20 ["Category"]
  GETTABLEKS R9 R5 K21 ["FlattenMode"]
  GETTABLEKS R10 R5 K22 ["FlattenPlane"]
  GETTABLEKS R11 R5 K23 ["Gizmo"]
  GETTABLEKS R12 R5 K24 ["PivotPosition"]
  GETTABLEKS R13 R5 K25 ["Snapping"]
  GETTABLEKS R14 R5 K26 ["Tab"]
  GETTABLEKS R15 R5 K27 ["Tool"]
  NEWTABLE R16 0 1
  DUPTABLE R17 K31 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R18 16 0
  GETTABLEKS R19 R6 K19 ["BrushShape"]
  GETTABLEKS R20 R7 K32 ["Sphere"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K33 ["BrushSize"]
  DUPTABLE R20 K37 [{"Height", "Locked", "Size"}]
  LOADN R21 6
  SETTABLEKS R21 R20 K34 ["Height"]
  LOADB R21 1
  SETTABLEKS R21 R20 K35 ["Locked"]
  LOADN R21 6
  SETTABLEKS R21 R20 K36 ["Size"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K38 ["Strength"]
  LOADN R20 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K39 ["FixedYPlane"]
  LOADN R20 0
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K21 ["FlattenMode"]
  GETTABLEKS R20 R9 K40 ["Both"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K22 ["FlattenPlane"]
  GETTABLEKS R20 R10 K41 ["Auto"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K24 ["PivotPosition"]
  GETTABLEKS R20 R12 K42 ["Center"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K25 ["Snapping"]
  GETTABLEKS R20 R13 K43 ["Off"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K44 ["State"]
  DUPTABLE R20 K46 [{"Position"}]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  FASTCALL VECTOR [+2]
  GETIMPORT R21 K49 [Vector3.new]
  CALL R21 3 1
  SETTABLEKS R21 R20 K45 ["Position"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K50 ["IgnoreWater"]
  LOADB R20 0
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K51 ["IgnoreParts"]
  LOADB R20 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K52 ["PullTerrain"]
  LOADB R20 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K53 ["WaterAutofill"]
  LOADB R20 0
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K28 ["Defaults"]
  GETTABLEKS R18 R8 K18 ["BrushSettings"]
  SETTABLEKS R18 R17 K29 ["Id"]
  SETTABLEKS R3 R17 K30 ["Schema"]
  SETLIST R16 R17 1 [1]
  NEWTABLE R17 0 2
  DUPTABLE R18 K54 [{"Id", "Schema"}]
  GETTABLEKS R19 R11 K55 ["Plane"]
  SETTABLEKS R19 R18 K29 ["Id"]
  DUPTABLE R19 K57 [{"Type"}]
  GETTABLEKS R20 R11 K55 ["Plane"]
  SETTABLEKS R20 R19 K56 ["Type"]
  SETTABLEKS R19 R18 K30 ["Schema"]
  DUPTABLE R19 K54 [{"Id", "Schema"}]
  GETTABLEKS R20 R11 K13 ["Brush"]
  SETTABLEKS R20 R19 K29 ["Id"]
  DUPTABLE R20 K57 [{"Type"}]
  GETTABLEKS R21 R11 K13 ["Brush"]
  SETTABLEKS R21 R20 K56 ["Type"]
  SETTABLEKS R20 R19 K30 ["Schema"]
  SETLIST R17 R18 2 [1]
  GETTABLEKS R20 R15 K58 ["Flatten"]
  GETTABLEKS R21 R14 K59 ["Edit"]
  MOVE R22 R16
  MOVE R23 R17
  NAMECALL R18 R2 K48 ["new"]
  CALL R18 5 1
  DUPCLOSURE R19 K60 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R19 R18 K61 ["init"]
  DUPCLOSURE R19 K62 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K63 ["saveForm"]
  DUPCLOSURE R19 K64 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K65 ["saveGizmos"]
  DUPCLOSURE R19 K66 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K67 ["startOperation"]
  DUPCLOSURE R19 K68 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K69 ["activate"]
  DUPCLOSURE R19 K70 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K71 ["deactivate"]
  RETURN R18 1
