PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["TransformSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["SourceMaterial"]
  DUPTABLE R7 K4 [{"Schema"}]
  DUPTABLE R8 K6 [{"AllowAir"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K5 ["AllowAir"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["TargetMaterial"]
  DUPTABLE R7 K4 [{"Schema"}]
  DUPTABLE R8 K6 [{"AllowAir"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K5 ["AllowAir"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K8 ["_overrides"]
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
  LOADK R3 K0 ["Paint"]
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
  GETTABLEKS R7 R8 K11 ["Schemas"]
  GETTABLEKS R6 R7 K12 ["Settings"]
  GETTABLEKS R5 R6 K14 ["Material"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["Operations"]
  GETTABLEKS R6 R7 K17 ["PaintOperation"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K18 ["Types"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K19 ["BrushSettings"]
  GETTABLEKS R8 R6 K20 ["BrushShape"]
  GETTABLEKS R9 R6 K21 ["Category"]
  GETTABLEKS R10 R6 K22 ["Gizmo"]
  GETTABLEKS R11 R6 K23 ["MaterialMode"]
  GETTABLEKS R12 R6 K24 ["MaterialSettings"]
  GETTABLEKS R13 R6 K25 ["PivotPosition"]
  GETTABLEKS R14 R6 K26 ["Snapping"]
  GETTABLEKS R15 R6 K27 ["Tab"]
  GETTABLEKS R16 R6 K28 ["Tool"]
  NEWTABLE R17 0 2
  DUPTABLE R18 K32 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R19 8 0
  GETTABLEKS R20 R7 K20 ["BrushShape"]
  GETTABLEKS R21 R8 K33 ["Sphere"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K34 ["BrushSize"]
  DUPTABLE R21 K38 [{"Height", "Locked", "Size"}]
  LOADN R22 6
  SETTABLEKS R22 R21 K35 ["Height"]
  LOADB R22 1
  SETTABLEKS R22 R21 K36 ["Locked"]
  LOADN R22 6
  SETTABLEKS R22 R21 K37 ["Size"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K25 ["PivotPosition"]
  GETTABLEKS R21 R13 K39 ["Center"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K26 ["Snapping"]
  GETTABLEKS R21 R14 K40 ["Off"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K41 ["State"]
  DUPTABLE R21 K43 [{"Position"}]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K46 [Vector3.new]
  CALL R22 3 1
  SETTABLEKS R22 R21 K42 ["Position"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K47 ["IgnoreWater"]
  LOADB R21 0
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K48 ["IgnoreParts"]
  LOADB R21 1
  SETTABLE R21 R19 R20
  SETTABLEKS R19 R18 K29 ["Defaults"]
  GETTABLEKS R19 R9 K19 ["BrushSettings"]
  SETTABLEKS R19 R18 K30 ["Id"]
  SETTABLEKS R3 R18 K31 ["Schema"]
  DUPTABLE R19 K32 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R20 4 0
  GETTABLEKS R21 R12 K23 ["MaterialMode"]
  GETTABLEKS R22 R11 K49 ["Paint"]
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R12 K50 ["SourceMaterial"]
  GETIMPORT R22 K53 [Enum.Material.Grass]
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R12 K54 ["TargetMaterial"]
  GETIMPORT R22 K53 [Enum.Material.Grass]
  SETTABLE R22 R20 R21
  SETTABLEKS R20 R19 K29 ["Defaults"]
  GETTABLEKS R20 R9 K24 ["MaterialSettings"]
  SETTABLEKS R20 R19 K30 ["Id"]
  SETTABLEKS R4 R19 K31 ["Schema"]
  SETLIST R17 R18 2 [1]
  NEWTABLE R18 0 2
  DUPTABLE R19 K55 [{"Id", "Schema"}]
  GETTABLEKS R20 R10 K13 ["Brush"]
  SETTABLEKS R20 R19 K30 ["Id"]
  DUPTABLE R20 K57 [{"Type"}]
  GETTABLEKS R21 R10 K13 ["Brush"]
  SETTABLEKS R21 R20 K56 ["Type"]
  SETTABLEKS R20 R19 K31 ["Schema"]
  DUPTABLE R20 K55 [{"Id", "Schema"}]
  GETTABLEKS R21 R10 K58 ["Plane"]
  SETTABLEKS R21 R20 K30 ["Id"]
  DUPTABLE R21 K57 [{"Type"}]
  GETTABLEKS R22 R10 K58 ["Plane"]
  SETTABLEKS R22 R21 K56 ["Type"]
  SETTABLEKS R21 R20 K31 ["Schema"]
  SETLIST R18 R19 2 [1]
  GETTABLEKS R21 R16 K49 ["Paint"]
  GETTABLEKS R22 R15 K59 ["Edit"]
  MOVE R23 R17
  MOVE R24 R18
  NAMECALL R19 R2 K45 ["new"]
  CALL R19 5 1
  DUPCLOSURE R20 K60 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R12
  SETTABLEKS R20 R19 K61 ["init"]
  DUPCLOSURE R20 K62 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K63 ["saveForm"]
  DUPCLOSURE R20 K64 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K65 ["saveGizmos"]
  DUPCLOSURE R20 K66 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K67 ["startOperation"]
  DUPCLOSURE R20 K68 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K69 ["activate"]
  DUPCLOSURE R20 K70 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K71 ["deactivate"]
  RETURN R19 1
