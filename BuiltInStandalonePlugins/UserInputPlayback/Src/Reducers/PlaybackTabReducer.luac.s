PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"currentRecordingDurationSec"}]
  GETTABLEKS R5 R1 K0 ["currentRecordingDurationSec"]
  SETTABLEKS R5 R4 K0 ["currentRecordingDurationSec"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"currentRecordingNumEvents"}]
  GETTABLEKS R5 R1 K0 ["currentRecordingNumEvents"]
  SETTABLEKS R5 R4 K0 ["currentRecordingNumEvents"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"currentRecordingResolution"}]
  GETTABLEKS R5 R1 K0 ["currentRecordingResolution"]
  SETTABLEKS R5 R4 K0 ["currentRecordingResolution"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"currentRecordingDeviceId"}]
  GETTABLEKS R5 R1 K0 ["currentRecordingDeviceId"]
  SETTABLEKS R5 R4 K0 ["currentRecordingDeviceId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"currentRecordingDeviceOrientation"}]
  GETTABLEKS R5 R1 K0 ["currentRecordingDeviceOrientation"]
  SETTABLEKS R5 R4 K0 ["currentRecordingDeviceOrientation"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"shouldSetEmulationDevice"}]
  GETTABLEKS R5 R1 K0 ["shouldSetEmulationDevice"]
  SETTABLEKS R5 R4 K0 ["shouldSetEmulationDevice"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Dictionary"]
  GETTABLEKS R3 R4 K9 ["join"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Actions"]
  GETTABLEKS R6 R7 K12 ["PlaybackTab"]
  GETTABLEKS R5 R6 K13 ["SetShouldSetEmulationDevice"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Actions"]
  GETTABLEKS R7 R8 K12 ["PlaybackTab"]
  GETTABLEKS R6 R7 K14 ["SetCurrentRecordingDurationSec"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Actions"]
  GETTABLEKS R8 R9 K12 ["PlaybackTab"]
  GETTABLEKS R7 R8 K15 ["SetCurrentRecordingNumEvents"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["Actions"]
  GETTABLEKS R9 R10 K12 ["PlaybackTab"]
  GETTABLEKS R8 R9 K16 ["SetCurrentRecordingResolution"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K11 ["Actions"]
  GETTABLEKS R10 R11 K12 ["PlaybackTab"]
  GETTABLEKS R9 R10 K17 ["SetCurrentRecordingDeviceId"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K11 ["Actions"]
  GETTABLEKS R11 R12 K12 ["PlaybackTab"]
  GETTABLEKS R10 R11 K18 ["SetCurrentRecordingDeviceOrientation"]
  CALL R9 1 1
  DUPTABLE R10 K28 [{"selectedRecordingIndex", "playbackFileNameOptions", "currentPlaybackRecordingDataValid", "currentRecordingDurationSec", "currentRecordingNumEvents", "currentRecordingResolution", "currentRecordingDeviceId", "currentRecordingDeviceOrientation", "shouldSetEmulationDevice"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K19 ["selectedRecordingIndex"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K20 ["playbackFileNameOptions"]
  LOADB R11 0
  SETTABLEKS R11 R10 K21 ["currentPlaybackRecordingDataValid"]
  LOADN R11 0
  SETTABLEKS R11 R10 K22 ["currentRecordingDurationSec"]
  LOADN R11 0
  SETTABLEKS R11 R10 K23 ["currentRecordingNumEvents"]
  GETIMPORT R11 K31 [Vector2.new]
  CALL R11 0 1
  SETTABLEKS R11 R10 K24 ["currentRecordingResolution"]
  LOADK R11 K32 ["Unknown"]
  SETTABLEKS R11 R10 K25 ["currentRecordingDeviceId"]
  LOADK R11 K32 ["Unknown"]
  SETTABLEKS R11 R10 K26 ["currentRecordingDeviceOrientation"]
  LOADB R11 1
  SETTABLEKS R11 R10 K27 ["shouldSetEmulationDevice"]
  GETTABLEKS R11 R1 K33 ["createReducer"]
  MOVE R12 R10
  DUPTABLE R13 K34 [{"SetCurrentRecordingDurationSec", "SetCurrentRecordingNumEvents", "SetCurrentRecordingResolution", "SetCurrentRecordingDeviceId", "SetCurrentRecordingDeviceOrientation", "SetShouldSetEmulationDevice"}]
  DUPCLOSURE R14 K35 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K14 ["SetCurrentRecordingDurationSec"]
  DUPCLOSURE R14 K36 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K15 ["SetCurrentRecordingNumEvents"]
  DUPCLOSURE R14 K37 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K16 ["SetCurrentRecordingResolution"]
  DUPCLOSURE R14 K38 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K17 ["SetCurrentRecordingDeviceId"]
  DUPCLOSURE R14 K39 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K18 ["SetCurrentRecordingDeviceOrientation"]
  DUPCLOSURE R14 K40 [PROTO_5]
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K13 ["SetShouldSetEmulationDevice"]
  CALL R11 2 -1
  RETURN R11 -1
