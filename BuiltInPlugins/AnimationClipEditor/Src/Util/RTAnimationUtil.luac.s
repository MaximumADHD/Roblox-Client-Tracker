PROTO_0:
        0 JUMPIF                           R5 ; [+5]
        1 GETIMPORT                        R6 K2 [Instance.new]
        3 LOADK                            R7 K3 ["Wire"]
        4 CALL                             R6 1 1
        5 MOVE                             R5 R6
        6 SETTABLEKS                       R1 R5 K4 ["Name"]
        8 SETTABLEKS                       R4 R5 K5 ["Parent"]
       10 SETTABLEKS                       R2 R5 K6 ["SourceInstance"]
       12 SETTABLEKS                       R3 R5 K7 ["TargetInstance"]
       14 RETURN                           R5 1

PROTO_1:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 NAMECALL                         R2 R1 K0 ["Destroy"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K0 ["Invalid videoInput"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETTABLEKS                       R2 R0 K3 ["trackerNode"]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 LOADK                            R4 K4 ["VideoToTracker"]
       12 MOVE                             R5 R1
       13 GETTABLEKS                       R6 R0 K3 ["trackerNode"]
       15 MOVE                             R7 R1
       16 GETTABLEKS                       R8 R0 K5 ["videoWire"]
       18 NAMECALL                         R2 R0 K6 ["_connectNodes"]
       20 CALL                             R2 6 1
       21 SETTABLEKS                       R2 R0 K5 ["videoWire"]
       23 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["videoWire"]
        2 NAMECALL                         R1 R0 K1 ["_disconnectNodes"]
        4 CALL                             R1 2 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["videoWire"]
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["trackerNode"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["videoDeviceInput"]
        6 JUMPIF                           R1 ; [+22]
        7 GETIMPORT                        R1 K4 [Instance.new]
        9 LOADK                            R2 K5 ["VideoDeviceInput"]
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K1 ["videoDeviceInput"]
       13 GETTABLEKS                       R1 R0 K1 ["videoDeviceInput"]
       15 GETTABLEKS                       R2 R0 K0 ["trackerNode"]
       17 SETTABLEKS                       R2 R1 K6 ["Parent"]
       19 GETTABLEKS                       R1 R0 K1 ["videoDeviceInput"]
       21 GETIMPORT                        R4 K8 [Enum]
       23 GETTABLEKS                       R3 R4 K9 ["VideoDeviceCaptureQuality"]
       25 GETTABLEKS                       R2 R3 K10 ["Low"]
       27 SETTABLEKS                       R2 R1 K11 ["CaptureQuality"]
       29 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+14]
        1 NAMECALL                         R2 R0 K0 ["_createCameraForVideoInput"]
        3 CALL                             R2 1 0
        4 GETTABLEKS                       R2 R0 K1 ["videoDeviceInput"]
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["Active"]
        9 GETTABLEKS                       R4 R0 K1 ["videoDeviceInput"]
       11 NAMECALL                         R2 R0 K3 ["connectVideoInput"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0
       15 NAMECALL                         R2 R0 K4 ["disconnectVideoInput"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["trackerNode"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["trackerNode"]
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K3 [Instance.new]
        8 LOADK                            R2 K4 ["RTAnimationTracker"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K0 ["trackerNode"]
       12 GETTABLEKS                       R1 R0 K0 ["trackerNode"]
       14 GETTABLEKS                       R2 R0 K5 ["root"]
       16 SETTABLEKS                       R2 R1 K6 ["Parent"]
       18 GETTABLEKS                       R1 R0 K0 ["trackerNode"]
       20 RETURN                           R1 1

PROTO_7:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K0 ["Invalid outputNode"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETTABLEKS                       R3 R0 K3 ["trackerNode"]
        9 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       11 LOADK                            R4 K4 ["Must have local tracker to connect to!"]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 2 0
       15 LOADK                            R4 K5 ["TrackerToOutput"]
       16 GETTABLEKS                       R5 R0 K3 ["trackerNode"]
       18 MOVE                             R6 R1
       19 MOVE                             R7 R1
       20 LOADNIL                          R8
       21 NAMECALL                         R2 R0 K6 ["_connectNodes"]
       23 CALL                             R2 6 -1
       24 RETURN                           R2 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["trackerNode"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K0 ["trackerNode"]
        6 SETTABLEKS                       R1 R2 K1 ["Active"]
        8 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["trackerNode"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["trackerNode"]
        5 GETTABLEKS                       R1 R2 K1 ["Active"]
        7 RETURN                           R1 1
        8 LOADB                            R1 0
        9 RETURN                           R1 1

PROTO_10:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R6 R1
        3 LOADK                            R7 K0 ["Invalid animator"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETIMPORT                        R5 K5 [Instance.new]
        9 LOADK                            R6 K6 ["TrackerStreamAnimation"]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R0 K7 ["streamAnimation"]
       13 GETTABLEKS                       R5 R0 K7 ["streamAnimation"]
       15 GETTABLEKS                       R6 R0 K8 ["root"]
       17 SETTABLEKS                       R6 R5 K9 ["Parent"]
       19 SETTABLEKS                       R1 R0 K10 ["animator"]
       21 GETIMPORT                        R5 K12 [game]
       23 LOADK                            R7 K13 ["UseNewLoadStreamAnimationAPI"]
       24 NAMECALL                         R5 R5 K14 ["GetEngineFeature"]
       26 CALL                             R5 2 1
       27 JUMPIFNOT                        R5 ; [+13]
       28 GETTABLEKS                       R5 R0 K10 ["animator"]
       30 GETTABLEKS                       R7 R0 K7 ["streamAnimation"]
       32 MOVE                             R8 R2
       33 MOVE                             R9 R3
       34 MOVE                             R10 R4
       35 NAMECALL                         R5 R5 K15 ["LoadStreamAnimationV2"]
       37 CALL                             R5 5 1
       38 SETTABLEKS                       R5 R0 K16 ["animationTrack"]
       40 JUMP                             ; [+9]
       41 GETTABLEKS                       R5 R0 K10 ["animator"]
       43 GETTABLEKS                       R7 R0 K7 ["streamAnimation"]
       45 NAMECALL                         R5 R5 K17 ["LoadStreamAnimation"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R0 K16 ["animationTrack"]
       50 GETTABLEKS                       R5 R0 K16 ["animationTrack"]
       52 JUMPIF                           R5 ; [+3]
       53 LOADNIL                          R5
       54 LOADNIL                          R6
       55 RETURN                           R5 2
       56 GETTABLEKS                       R5 R0 K7 ["streamAnimation"]
       58 GETTABLEKS                       R6 R0 K16 ["animationTrack"]
       60 RETURN                           R5 2

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["disconnectVideoInput"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R3 R0 K1 ["videoWire"]
        5 JUMPIFEQKNIL                     R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       11 LOADK                            R3 K2 ["videoWire expected to be nil"]
       12 GETIMPORT                        R1 K4 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K5 ["animationTrack"]
       17 JUMPIFNOT                        R1 ; [+9]
       18 GETTABLEKS                       R1 R0 K5 ["animationTrack"]
       20 LOADN                            R3 0
       21 NAMECALL                         R1 R1 K6 ["Stop"]
       23 CALL                             R1 2 0
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K5 ["animationTrack"]
       27 GETTABLEKS                       R1 R0 K7 ["streamAnimation"]
       29 JUMPIFNOT                        R1 ; [+8]
       30 GETTABLEKS                       R1 R0 K7 ["streamAnimation"]
       32 NAMECALL                         R1 R1 K8 ["Destroy"]
       34 CALL                             R1 1 0
       35 LOADNIL                          R1
       36 SETTABLEKS                       R1 R0 K7 ["streamAnimation"]
       38 GETTABLEKS                       R1 R0 K9 ["videoDeviceInput"]
       40 JUMPIFNOT                        R1 ; [+5]
       41 GETTABLEKS                       R1 R0 K9 ["videoDeviceInput"]
       43 NAMECALL                         R1 R1 K8 ["Destroy"]
       45 CALL                             R1 1 0
       46 GETTABLEKS                       R1 R0 K10 ["trackerNode"]
       48 JUMPIFNOT                        R1 ; [+13]
       49 GETTABLEKS                       R1 R0 K10 ["trackerNode"]
       51 LOADB                            R2 0
       52 SETTABLEKS                       R2 R1 K11 ["Active"]
       54 GETTABLEKS                       R1 R0 K10 ["trackerNode"]
       56 NAMECALL                         R1 R1 K8 ["Destroy"]
       58 CALL                             R1 1 0
       59 LOADNIL                          R1
       60 SETTABLEKS                       R1 R0 K10 ["trackerNode"]
       62 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["id"]
       10 SETTABLEKS                       R1 R2 K3 ["root"]
       12 GETTABLEKS                       R4 R2 K3 ["root"]
       14 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       16 LOADK                            R5 K4 ["No root instance!"]
       17 GETIMPORT                        R3 K6 [assert]
       19 CALL                             R3 2 0
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K7 ["trackerNode"]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K8 ["streamAnimation"]
       26 LOADNIL                          R3
       27 SETTABLEKS                       R3 R2 K9 ["animator"]
       29 LOADNIL                          R3
       30 SETTABLEKS                       R3 R2 K10 ["animationTrack"]
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K11 ["videoWire"]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K12 ["videoDeviceInput"]
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 SETTABLEKS                       R1 R0 K2 ["_connectNodes"]
        8 DUPCLOSURE                       R1 K3 [PROTO_1]
        9 SETTABLEKS                       R1 R0 K4 ["_disconnectNodes"]
       11 DUPCLOSURE                       R1 K5 [PROTO_2]
       12 SETTABLEKS                       R1 R0 K6 ["connectVideoInput"]
       14 DUPCLOSURE                       R1 K7 [PROTO_3]
       15 SETTABLEKS                       R1 R0 K8 ["disconnectVideoInput"]
       17 DUPCLOSURE                       R1 K9 [PROTO_4]
       18 SETTABLEKS                       R1 R0 K10 ["_createCameraForVideoInput"]
       20 DUPCLOSURE                       R1 K11 [PROTO_5]
       21 SETTABLEKS                       R1 R0 K12 ["setCameraEnabled"]
       23 DUPCLOSURE                       R1 K13 [PROTO_6]
       24 SETTABLEKS                       R1 R0 K14 ["createLocalTracker"]
       26 DUPCLOSURE                       R1 K15 [PROTO_7]
       27 SETTABLEKS                       R1 R0 K16 ["connectToLocalTrackerOutput"]
       29 DUPCLOSURE                       R1 K17 [PROTO_8]
       30 SETTABLEKS                       R1 R0 K18 ["setTracking"]
       32 DUPCLOSURE                       R1 K19 [PROTO_9]
       33 SETTABLEKS                       R1 R0 K20 ["getTracking"]
       35 DUPCLOSURE                       R1 K21 [PROTO_10]
       36 SETTABLEKS                       R1 R0 K22 ["createStreamAnimationAndTrack"]
       38 DUPCLOSURE                       R1 K23 [PROTO_11]
       39 SETTABLEKS                       R1 R0 K24 ["teardown"]
       41 DUPCLOSURE                       R1 K25 [PROTO_12]
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K26 ["new"]
       45 RETURN                           R0 1
