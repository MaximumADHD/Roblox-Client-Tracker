PROTO_0:
  JUMPIF R5 [+5]
  GETIMPORT R6 K2 [Instance.new]
  LOADK R7 K3 ["Wire"]
  CALL R6 1 1
  MOVE R5 R6
  SETTABLEKS R1 R5 K4 ["Name"]
  SETTABLEKS R4 R5 K5 ["Parent"]
  SETTABLEKS R2 R5 K6 ["SourceInstance"]
  SETTABLEKS R3 R5 K7 ["TargetInstance"]
  RETURN R5 1

PROTO_1:
  JUMPIF R1 [+1]
  RETURN R0 0
  NAMECALL R2 R1 K0 ["Destroy"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  FASTCALL2K ASSERT R1 K0 [+5]
  MOVE R3 R1
  LOADK R4 K0 ["Invalid videoInput"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K3 ["trackerNode"]
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADK R4 K4 ["VideoToTracker"]
  MOVE R5 R1
  GETTABLEKS R6 R0 K3 ["trackerNode"]
  MOVE R7 R1
  GETTABLEKS R8 R0 K5 ["videoWire"]
  NAMECALL R2 R0 K6 ["_connectNodes"]
  CALL R2 6 1
  SETTABLEKS R2 R0 K5 ["videoWire"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["videoWire"]
  NAMECALL R1 R0 K1 ["_disconnectNodes"]
  CALL R1 2 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["videoWire"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["trackerNode"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["videoDeviceInput"]
  JUMPIF R1 [+22]
  GETIMPORT R1 K4 [Instance.new]
  LOADK R2 K5 ["VideoDeviceInput"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["videoDeviceInput"]
  GETTABLEKS R1 R0 K1 ["videoDeviceInput"]
  GETTABLEKS R2 R0 K0 ["trackerNode"]
  SETTABLEKS R2 R1 K6 ["Parent"]
  GETTABLEKS R1 R0 K1 ["videoDeviceInput"]
  GETIMPORT R4 K8 [Enum]
  GETTABLEKS R3 R4 K9 ["VideoDeviceCaptureQuality"]
  GETTABLEKS R2 R3 K10 ["Low"]
  SETTABLEKS R2 R1 K11 ["CaptureQuality"]
  RETURN R0 0

PROTO_5:
  JUMPIFNOT R1 [+14]
  NAMECALL R2 R0 K0 ["_createCameraForVideoInput"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K1 ["videoDeviceInput"]
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["Active"]
  GETTABLEKS R4 R0 K1 ["videoDeviceInput"]
  NAMECALL R2 R0 K3 ["connectVideoInput"]
  CALL R2 2 0
  RETURN R0 0
  NAMECALL R2 R0 K4 ["disconnectVideoInput"]
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["trackerNode"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K0 ["trackerNode"]
  RETURN R1 1
  GETIMPORT R1 K3 [Instance.new]
  LOADK R2 K4 ["RTAnimationTracker"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["trackerNode"]
  GETTABLEKS R1 R0 K0 ["trackerNode"]
  GETTABLEKS R2 R0 K5 ["root"]
  SETTABLEKS R2 R1 K6 ["Parent"]
  GETTABLEKS R1 R0 K0 ["trackerNode"]
  RETURN R1 1

PROTO_7:
  FASTCALL2K ASSERT R1 K0 [+5]
  MOVE R3 R1
  LOADK R4 K0 ["Invalid outputNode"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R0 K3 ["trackerNode"]
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["Must have local tracker to connect to!"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["TrackerToOutput"]
  GETTABLEKS R5 R0 K3 ["trackerNode"]
  MOVE R6 R1
  MOVE R7 R1
  LOADNIL R8
  NAMECALL R2 R0 K6 ["_connectNodes"]
  CALL R2 6 -1
  RETURN R2 -1

PROTO_8:
  GETTABLEKS R2 R0 K0 ["trackerNode"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["trackerNode"]
  SETTABLEKS R1 R2 K1 ["Active"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["trackerNode"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K0 ["trackerNode"]
  GETTABLEKS R1 R2 K1 ["Active"]
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_10:
  FASTCALL2K ASSERT R1 K0 [+5]
  MOVE R6 R1
  LOADK R7 K0 ["Invalid animator"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  GETIMPORT R5 K5 [Instance.new]
  LOADK R6 K6 ["TrackerStreamAnimation"]
  CALL R5 1 1
  SETTABLEKS R5 R0 K7 ["streamAnimation"]
  GETTABLEKS R5 R0 K7 ["streamAnimation"]
  GETTABLEKS R6 R0 K8 ["root"]
  SETTABLEKS R6 R5 K9 ["Parent"]
  SETTABLEKS R1 R0 K10 ["animator"]
  GETIMPORT R5 K12 [game]
  LOADK R7 K13 ["UseNewLoadStreamAnimationAPI"]
  NAMECALL R5 R5 K14 ["GetEngineFeature"]
  CALL R5 2 1
  JUMPIFNOT R5 [+13]
  GETTABLEKS R5 R0 K10 ["animator"]
  GETTABLEKS R7 R0 K7 ["streamAnimation"]
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  NAMECALL R5 R5 K15 ["LoadStreamAnimationV2"]
  CALL R5 5 1
  SETTABLEKS R5 R0 K16 ["animationTrack"]
  JUMP [+9]
  GETTABLEKS R5 R0 K10 ["animator"]
  GETTABLEKS R7 R0 K7 ["streamAnimation"]
  NAMECALL R5 R5 K17 ["LoadStreamAnimation"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K16 ["animationTrack"]
  GETTABLEKS R5 R0 K16 ["animationTrack"]
  JUMPIF R5 [+3]
  LOADNIL R5
  LOADNIL R6
  RETURN R5 2
  GETTABLEKS R5 R0 K7 ["streamAnimation"]
  GETTABLEKS R6 R0 K16 ["animationTrack"]
  RETURN R5 2

PROTO_11:
  NAMECALL R1 R0 K0 ["disconnectVideoInput"]
  CALL R1 1 0
  GETTABLEKS R3 R0 K1 ["videoWire"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["videoWire expected to be nil"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K5 ["animationTrack"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K5 ["animationTrack"]
  LOADN R3 0
  NAMECALL R1 R1 K6 ["Stop"]
  CALL R1 2 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["animationTrack"]
  GETTABLEKS R1 R0 K7 ["streamAnimation"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K7 ["streamAnimation"]
  NAMECALL R1 R1 K8 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["streamAnimation"]
  GETTABLEKS R1 R0 K9 ["videoDeviceInput"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K9 ["videoDeviceInput"]
  NAMECALL R1 R1 K8 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K10 ["trackerNode"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K10 ["trackerNode"]
  LOADB R2 0
  SETTABLEKS R2 R1 K11 ["Active"]
  GETTABLEKS R1 R0 K10 ["trackerNode"]
  NAMECALL R1 R1 K8 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K10 ["trackerNode"]
  RETURN R0 0

PROTO_12:
  NEWTABLE R3 8 0
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K1 [setmetatable]
  CALL R2 2 1
  SETTABLEKS R0 R2 K2 ["id"]
  SETTABLEKS R1 R2 K3 ["root"]
  GETTABLEKS R4 R2 K3 ["root"]
  FASTCALL2K ASSERT R4 K4 [+4]
  LOADK R5 K4 ["No root instance!"]
  GETIMPORT R3 K6 [assert]
  CALL R3 2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K7 ["trackerNode"]
  LOADNIL R3
  SETTABLEKS R3 R2 K8 ["streamAnimation"]
  LOADNIL R3
  SETTABLEKS R3 R2 K9 ["animator"]
  LOADNIL R3
  SETTABLEKS R3 R2 K10 ["animationTrack"]
  LOADNIL R3
  SETTABLEKS R3 R2 K11 ["videoWire"]
  LOADNIL R3
  SETTABLEKS R3 R2 K12 ["videoDeviceInput"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  SETTABLEKS R1 R0 K2 ["_connectNodes"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["_disconnectNodes"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["connectVideoInput"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["disconnectVideoInput"]
  DUPCLOSURE R1 K9 [PROTO_4]
  SETTABLEKS R1 R0 K10 ["_createCameraForVideoInput"]
  DUPCLOSURE R1 K11 [PROTO_5]
  SETTABLEKS R1 R0 K12 ["setCameraEnabled"]
  DUPCLOSURE R1 K13 [PROTO_6]
  SETTABLEKS R1 R0 K14 ["createLocalTracker"]
  DUPCLOSURE R1 K15 [PROTO_7]
  SETTABLEKS R1 R0 K16 ["connectToLocalTrackerOutput"]
  DUPCLOSURE R1 K17 [PROTO_8]
  SETTABLEKS R1 R0 K18 ["setTracking"]
  DUPCLOSURE R1 K19 [PROTO_9]
  SETTABLEKS R1 R0 K20 ["getTracking"]
  DUPCLOSURE R1 K21 [PROTO_10]
  SETTABLEKS R1 R0 K22 ["createStreamAnimationAndTrack"]
  DUPCLOSURE R1 K23 [PROTO_11]
  SETTABLEKS R1 R0 K24 ["teardown"]
  DUPCLOSURE R1 K25 [PROTO_12]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K26 ["new"]
  RETURN R0 1
