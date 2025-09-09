PROTO_0:
  LOADK R3 K0 ["Connections"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+6]
  GETIMPORT R2 K4 [table.freeze]
  NEWTABLE R3 0 0
  CALL R2 1 -1
  RETURN R2 -1
  NEWTABLE R2 0 0
  NAMECALL R3 R1 K5 ["GetChildren"]
  CALL R3 1 3
  FORGPREP R3
  LOADK R10 K6 ["ObjectValue"]
  NAMECALL R8 R7 K7 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+16]
  GETTABLEKS R8 R7 K8 ["Value"]
  JUMPIFNOT R8 [+13]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["observeLayerPayloadFromInstance"]
  MOVE R10 R8
  CALL R9 1 1
  JUMPIFNOT R9 [+7]
  FASTCALL2 TABLE_INSERT R2 R9 [+5]
  MOVE R11 R2
  MOVE R12 R9
  GETIMPORT R10 K11 [table.insert]
  CALL R10 2 0
  FORGLOOP R3 2 [-22]
  GETIMPORT R3 K4 [table.freeze]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

PROTO_1:
  LOADK R3 K0 ["StringValue"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["Value"]
  RETURN R1 1
  GETTABLEKS R1 R0 K3 ["ClassName"]
  RETURN R1 1

PROTO_2:
  GETIMPORT R1 K2 [table.freeze]
  DUPTABLE R2 K17 [{"animationMask", "animationPose", "children", "className", "hrpCFrame", "id", "index", "linkData", "lod", "name", "props", "state", "watches", "weight"}]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["animationMask"]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["animationPose"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K18 ["observeChildrenFromSignals"]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["children"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K19 ["temporaryObserveClassName"]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["className"]
  LOADNIL R3
  SETTABLEKS R3 R2 K7 ["hrpCFrame"]
  GETTABLEKS R3 R0 K20 ["Name"]
  SETTABLEKS R3 R2 K8 ["id"]
  LOADNIL R3
  SETTABLEKS R3 R2 K9 ["index"]
  LOADNIL R3
  SETTABLEKS R3 R2 K10 ["linkData"]
  LOADNIL R3
  SETTABLEKS R3 R2 K11 ["lod"]
  GETTABLEKS R3 R0 K20 ["Name"]
  SETTABLEKS R3 R2 K12 ["name"]
  LOADNIL R3
  SETTABLEKS R3 R2 K13 ["props"]
  LOADNIL R3
  SETTABLEKS R3 R2 K14 ["state"]
  LOADNIL R3
  SETTABLEKS R3 R2 K15 ["watches"]
  LOADN R3 1
  SETTABLEKS R3 R2 K16 ["weight"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  LOADK R3 K0 ["Graph"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+6]
  GETIMPORT R2 K4 [table.freeze]
  NEWTABLE R3 0 0
  CALL R2 1 -1
  RETURN R2 -1
  LOADK R4 K5 ["Out"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+6]
  GETIMPORT R3 K4 [table.freeze]
  NEWTABLE R4 0 0
  CALL R3 1 -1
  RETURN R3 -1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["observeChildrenFromSignals"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

PROTO_4:
  GETIMPORT R1 K2 [table.freeze]
  DUPTABLE R2 K11 [{"animationMask", "animationPose", "children", "hrpCFrame", "id", "lod", "name", "timestamp"}]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["animationMask"]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["animationPose"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K12 ["observePayloadChildrenFromSignals"]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["children"]
  LOADNIL R3
  SETTABLEKS R3 R2 K6 ["hrpCFrame"]
  GETTABLEKS R3 R0 K13 ["Name"]
  SETTABLEKS R3 R2 K7 ["id"]
  LOADNIL R3
  SETTABLEKS R3 R2 K8 ["lod"]
  GETTABLEKS R3 R0 K13 ["Name"]
  SETTABLEKS R3 R2 K9 ["name"]
  GETIMPORT R3 K16 [os.clock]
  CALL R3 0 1
  SETTABLEKS R3 R2 K10 ["timestamp"]
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 8 0
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K9 ["observeChildrenFromSignals"]
  DUPCLOSURE R3 K10 [PROTO_1]
  SETTABLEKS R3 R2 K11 ["temporaryObserveClassName"]
  DUPCLOSURE R3 K12 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K13 ["observeLayerPayloadFromInstance"]
  DUPCLOSURE R3 K14 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K15 ["observePayloadChildrenFromSignals"]
  DUPCLOSURE R3 K16 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K17 ["observePayloadFromInstance"]
  RETURN R2 1
