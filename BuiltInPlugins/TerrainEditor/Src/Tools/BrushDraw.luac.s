PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["OnGizmoChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+23]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["Set"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["BrushSettings"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["_pluginController"]
  NEWTABLE R3 1 0
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["PlaneTransform"]
  GETIMPORT R5 K6 [CFrame.Angles]
  LOADK R6 K7 [1.5707963267949]
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLE R5 R3 R4
  CALL R0 3 0
  JUMP [+25]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["Set"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["BrushSettings"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K8 ["Storage"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["_pluginController"]
  NEWTABLE R4 1 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K3 ["PlaneTransform"]
  GETIMPORT R6 K6 [CFrame.Angles]
  LOADK R7 K7 [1.5707963267949]
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  SETTABLE R6 R4 R5
  CALL R0 4 0
  GETIMPORT R0 K11 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U3
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["ManualPlaneLock"]
  DUPTABLE R7 K4 [{"Schema"}]
  DUPTABLE R8 K6 [{"OnReset"}]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  SETTABLEKS R9 R8 K5 ["OnReset"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K7 ["_overrides"]
  LOADN R3 0
  SETTABLEKS R3 R0 K8 ["_brushTime"]
  LOADN R3 0
  SETTABLEKS R3 R0 K9 ["_brushUsages"]
  RETURN R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
  GETUPVAL R2 0
  LOADK R3 K0 ["Draw"]
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

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getPayload"]
  CALL R0 1 1
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["BrushSettings"]
  GETTABLE R2 R0 R3
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["ManualPlaneLock"]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+4]
  GETUPVAL R1 0
  NAMECALL R1 R1 K3 ["startOperation"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  JUMPIFNOT R0 [+52]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K1 ["isRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+45]
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K2 ["_brushUsages"]
  ADDK R1 R1 K3 [1]
  SETTABLEKS R1 R0 K2 ["_brushUsages"]
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_operation"]
  NAMECALL R2 R2 K4 ["getCurrentTimeTaken"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_operation"]
  NAMECALL R3 R3 K5 ["getStepsTaken"]
  CALL R3 1 1
  DIV R1 R2 R3
  SETTABLEKS R1 R0 K6 ["_brushTime"]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+14]
  GETUPVAL R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["_brushStatistic"]
  ORK R2 R3 K7 [0]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_operation"]
  NAMECALL R3 R3 K9 ["getTimeStatistic"]
  CALL R3 1 1
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K8 ["_brushStatistic"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K10 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
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
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_mouseDownConnection"]
  GETTABLEKS R2 R1 K6 ["Button1Up"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["_mouseUpConnection"]
  GETTABLEKS R2 R0 K8 ["_analytics"]
  LOADK R4 K9 ["Activated"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K10 ["Draw"]
  NAMECALL R2 R2 K11 ["report"]
  CALL R2 3 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_mouseDownConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_mouseUpConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_operation"]
  JUMPIFNOT R1 [+43]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K4 ["isRunning"]
  CALL R1 1 1
  JUMPIFNOT R1 [+37]
  GETTABLEKS R1 R0 K5 ["_brushUsages"]
  ADDK R1 R1 K6 [1]
  SETTABLEKS R1 R0 K5 ["_brushUsages"]
  GETTABLEKS R2 R0 K3 ["_operation"]
  NAMECALL R2 R2 K7 ["getCurrentTimeTaken"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K3 ["_operation"]
  NAMECALL R3 R3 K8 ["getStepsTaken"]
  CALL R3 1 1
  DIV R1 R2 R3
  SETTABLEKS R1 R0 K9 ["_brushTime"]
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+11]
  GETTABLEKS R3 R0 K11 ["_brushStatistic"]
  ORK R2 R3 K10 [0]
  GETTABLEKS R3 R0 K3 ["_operation"]
  NAMECALL R3 R3 K12 ["getTimeStatistic"]
  CALL R3 1 1
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K11 ["_brushStatistic"]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K13 ["destroy"]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K14 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["_brushTime"]
  JUMPIFNOT R2 [+71]
  GETTABLEKS R2 R0 K1 ["_brushTime"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+67]
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K3 ["BrushProperties"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["getBrushPayload"]
  MOVE R6 R1
  GETTABLEKS R7 R0 K1 ["_brushTime"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["Draw"]
  CALL R5 3 -1
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K7 ["MaterialProperties"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["getMaterialPayload"]
  MOVE R6 R1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["Draw"]
  CALL R5 2 -1
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K9 ["Usage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Draw"]
  GETTABLEKS R6 R0 K10 ["_brushUsages"]
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 4 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+22]
  GETTABLEKS R2 R0 K11 ["_brushStatistic"]
  JUMPIFNOT R2 [+19]
  GETTABLEKS R2 R0 K10 ["_brushUsages"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+15]
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K12 ["Performance"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Draw"]
  GETTABLEKS R7 R0 K11 ["_brushStatistic"]
  GETTABLEKS R8 R0 K10 ["_brushUsages"]
  DIV R6 R7 R8
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 4 0
  LOADN R2 0
  SETTABLEKS R2 R0 K10 ["_brushUsages"]
  LOADN R2 0
  SETTABLEKS R2 R0 K1 ["_brushTime"]
  LOADN R2 0
  SETTABLEKS R2 R0 K11 ["_brushStatistic"]
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
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Flags"]
  GETTABLEKS R4 R5 K12 ["getFFlagTerrainEditorRemoveSchema"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagTerrainEditorPlaneLockFix"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Flags"]
  GETTABLEKS R6 R7 K14 ["getFFlagTerrainEditorTimeStatistic"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K15 ["Schemas"]
  GETTABLEKS R8 R9 K16 ["Settings"]
  GETTABLEKS R7 R8 K17 ["Brush"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K15 ["Schemas"]
  GETTABLEKS R9 R10 K16 ["Settings"]
  GETTABLEKS R8 R9 K18 ["Material"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K19 ["Util"]
  GETTABLEKS R10 R11 K20 ["Operations"]
  GETTABLEKS R9 R10 K21 ["DrawOperation"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K22 ["Types"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K23 ["BrushMode"]
  GETTABLEKS R11 R9 K24 ["BrushSettings"]
  GETTABLEKS R12 R9 K25 ["BrushShape"]
  GETTABLEKS R13 R9 K26 ["Category"]
  GETTABLEKS R14 R9 K27 ["Gizmo"]
  GETTABLEKS R15 R9 K28 ["MaterialSettings"]
  GETTABLEKS R16 R9 K29 ["PivotPosition"]
  GETTABLEKS R17 R9 K30 ["Snapping"]
  GETTABLEKS R18 R9 K31 ["Tab"]
  GETTABLEKS R19 R9 K32 ["Tool"]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K10 ["Src"]
  GETTABLEKS R22 R23 K19 ["Util"]
  GETTABLEKS R21 R22 K33 ["AnalyticsHelper"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K10 ["Src"]
  GETTABLEKS R23 R24 K19 ["Util"]
  GETTABLEKS R22 R23 K34 ["SettingsHelper"]
  CALL R21 1 1
  NEWTABLE R22 0 2
  DUPTABLE R23 K38 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R24 16 0
  GETTABLEKS R25 R11 K23 ["BrushMode"]
  GETTABLEKS R26 R10 K39 ["Add"]
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R11 K25 ["BrushShape"]
  GETTABLEKS R26 R12 K40 ["Sphere"]
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R11 K41 ["BrushSize"]
  DUPTABLE R26 K45 [{"Height", "Locked", "Size"}]
  LOADN R27 6
  SETTABLEKS R27 R26 K42 ["Height"]
  LOADB R27 1
  SETTABLEKS R27 R26 K43 ["Locked"]
  LOADN R27 6
  SETTABLEKS R27 R26 K44 ["Size"]
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R11 K29 ["PivotPosition"]
  GETTABLEKS R26 R16 K46 ["Center"]
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R11 K30 ["Snapping"]
  GETTABLEKS R26 R17 K47 ["Off"]
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R11 K48 ["State"]
  DUPTABLE R26 K50 [{"Position"}]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  FASTCALL VECTOR [+2]
  GETIMPORT R27 K53 [Vector3.new]
  CALL R27 3 1
  SETTABLEKS R27 R26 K49 ["Position"]
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R11 K54 ["IgnoreWater"]
  LOADB R26 0
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R11 K55 ["IgnoreParts"]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R11 K56 ["TemporarySmooth"]
  LOADB R26 0
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R11 K57 ["WaterAutofill"]
  LOADB R26 0
  SETTABLE R26 R24 R25
  SETTABLEKS R24 R23 K35 ["Defaults"]
  GETTABLEKS R24 R13 K24 ["BrushSettings"]
  SETTABLEKS R24 R23 K36 ["Id"]
  MOVE R25 R3
  CALL R25 0 1
  JUMPIFNOT R25 [+2]
  LOADNIL R24
  JUMP [+1]
  MOVE R24 R6
  SETTABLEKS R24 R23 K37 ["Schema"]
  DUPTABLE R24 K38 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R25 2 0
  GETTABLEKS R26 R15 K58 ["AutoMaterial"]
  LOADB R27 0
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R15 K59 ["SourceMaterial"]
  GETIMPORT R27 K62 [Enum.Material.Grass]
  SETTABLE R27 R25 R26
  SETTABLEKS R25 R24 K35 ["Defaults"]
  GETTABLEKS R25 R13 K28 ["MaterialSettings"]
  SETTABLEKS R25 R24 K36 ["Id"]
  MOVE R26 R3
  CALL R26 0 1
  JUMPIFNOT R26 [+2]
  LOADNIL R25
  JUMP [+1]
  MOVE R25 R7
  SETTABLEKS R25 R24 K37 ["Schema"]
  SETLIST R22 R23 2 [1]
  NEWTABLE R23 0 2
  DUPTABLE R24 K63 [{"Id", "Schema"}]
  GETTABLEKS R25 R14 K64 ["Plane"]
  SETTABLEKS R25 R24 K36 ["Id"]
  DUPTABLE R25 K66 [{"Type"}]
  GETTABLEKS R26 R14 K64 ["Plane"]
  SETTABLEKS R26 R25 K65 ["Type"]
  SETTABLEKS R25 R24 K37 ["Schema"]
  DUPTABLE R25 K63 [{"Id", "Schema"}]
  GETTABLEKS R26 R14 K17 ["Brush"]
  SETTABLEKS R26 R25 K36 ["Id"]
  DUPTABLE R26 K66 [{"Type"}]
  GETTABLEKS R27 R14 K17 ["Brush"]
  SETTABLEKS R27 R26 K65 ["Type"]
  SETTABLEKS R26 R25 K37 ["Schema"]
  SETLIST R23 R24 2 [1]
  GETTABLEKS R26 R19 K67 ["Draw"]
  GETTABLEKS R27 R18 K68 ["Edit"]
  MOVE R28 R22
  MOVE R29 R23
  NAMECALL R24 R2 K52 ["new"]
  CALL R24 5 1
  DUPCLOSURE R25 K69 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  SETTABLEKS R25 R24 K70 ["init"]
  DUPCLOSURE R25 K71 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R25 R24 K72 ["saveForm"]
  DUPCLOSURE R25 K73 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R25 R24 K74 ["saveGizmos"]
  DUPCLOSURE R25 K75 [PROTO_5]
  CAPTURE VAL R8
  CAPTURE VAL R1
  SETTABLEKS R25 R24 K76 ["startOperation"]
  DUPCLOSURE R25 K77 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R19
  SETTABLEKS R25 R24 K78 ["activate"]
  DUPCLOSURE R25 K79 [PROTO_9]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R25 R24 K80 ["deactivate"]
  DUPCLOSURE R25 K81 [PROTO_10]
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R5
  SETTABLEKS R25 R24 K82 ["reportAnalytics"]
  RETURN R24 1
