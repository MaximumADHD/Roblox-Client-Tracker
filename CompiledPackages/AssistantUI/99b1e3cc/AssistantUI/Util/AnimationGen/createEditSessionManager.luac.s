PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADB                            R3 0
        3 JUMPIFEQKNIL                     R2 ; [+7]
        5 GETTABLEKS                       R4 R2 K0 ["editSessionId"]
        7 JUMPIFEQ                         R4 R1 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 LOADB                            R2 0
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["canBeginOperation"]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 1
       10 NOT                              R2 R3
       11 RETURN                           R2 1

PROTO_3:
        0 LOADB                            R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R0
        3 JUMPIFEQKNIL                     R2 ; [+6]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["hasEditedKeyframes"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["revision"]
        6 RETURN                           R2 1
        7 LOADN                            R2 0
        8 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+14]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["bumpRevision"]
        7 MOVE                             R5 R3
        8 CALL                             R4 1 0
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["recordMutation"]
       12 GETTABLEKS                       R5 R3 K2 ["editSessionId"]
       14 MOVE                             R6 R1
       15 MOVE                             R7 R2
       16 CALL                             R4 3 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["getPlaybackId"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 JUMPIFEQKNIL                     R2 ; [+4]
        9 GETUPVAL                         R4 2
       10 GETTABLE                         R3 R4 R2
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 JUMPIFEQKNIL                     R1 ; [+5]
       15 JUMPIFEQKNIL                     R3 ; [+3]
       17 JUMPIFNOTEQKNIL                  R2 ; [+3]
       19 LOADNIL                          R4
       20 RETURN                           R4 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K1 ["captureSnapshot"]
       24 MOVE                             R5 R1
       25 MOVE                             R6 R3
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R7 R7 K2 ["captureSavedPoses"]
       29 MOVE                             R8 R0
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R8 R8 K3 ["getCurrentTime"]
       34 MOVE                             R9 R2
       35 CALL                             R8 1 -1
       36 CALL                             R4 -1 -1
       37 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["getPlaybackId"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 JUMPIFEQKNIL                     R3 ; [+4]
        9 GETUPVAL                         R5 2
       10 GETTABLE                         R4 R5 R3
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 JUMPIFEQKNIL                     R2 ; [+14]
       15 GETTABLEKS                       R5 R2 K1 ["editSessionId"]
       17 GETTABLEKS                       R6 R1 K1 ["editSessionId"]
       19 JUMPIFNOTEQ                      R5 R6 ; [+8]
       21 GETTABLEKS                       R5 R2 K2 ["playerActive"]
       23 JUMPIFNOT                        R5 ; [+4]
       24 JUMPIFEQKNIL                     R3 ; [+3]
       26 JUMPIFNOTEQKNIL                  R4 ; [+3]
       28 LOADB                            R5 0
       29 RETURN                           R5 1
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K3 ["restore"]
       33 GETTABLEKS                       R6 R1 K4 ["player"]
       35 GETTABLEKS                       R7 R4 K5 ["rig"]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K6 ["replace"]
       41 GETUPVAL                         R7 2
       42 MOVE                             R8 R3
       43 MOVE                             R9 R5
       44 CALL                             R6 3 0
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R6 R6 K7 ["restoreSavedPoses"]
       48 MOVE                             R7 R0
       49 GETTABLEKS                       R8 R1 K8 ["poses"]
       51 CALL                             R6 2 0
       52 GETUPVAL                         R6 5
       53 GETTABLEKS                       R6 R6 K9 ["markRestoredFromSnapshot"]
       55 MOVE                             R7 R2
       56 MOVE                             R8 R1
       57 CALL                             R6 2 0
       58 LOADB                            R6 1
       59 RETURN                           R6 1

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R1 ; [+8]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFEQKNIL                     R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 2
        4 JUMPIFNOTEQ                      R0 R1 ; [+11]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["revision"]
        9 GETUPVAL                         R1 3
       10 JUMPIFNOTEQ                      R0 R1 ; [+5]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K1 ["playerActive"]
       15 JUMPIF                           R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 4
       18 GETTABLEKS                       R0 R0 K2 ["getContext"]
       20 GETUPVAL                         R1 1
       21 CALL                             R0 1 1
       22 JUMPIFEQKNIL                     R0 ; [+22]
       24 GETIMPORT                        R1 K4 [pcall]
       26 GETUPVAL                         R2 5
       27 GETTABLEKS                       R2 R2 K5 ["reloadPlayer"]
       29 GETUPVAL                         R3 1
       30 GETUPVAL                         R4 6
       31 GETTABLEKS                       R4 R4 K6 ["currentTime"]
       33 MOVE                             R5 R0
       34 CALL                             R1 4 2
       35 JUMPIF                           R1 ; [+5]
       36 GETIMPORT                        R3 K8 [warn]
       38 LOADK                            R4 K9 ["[AnimationGen] Could not reload restored edit:"]
       39 MOVE                             R5 R2
       40 CALL                             R3 2 0
       41 GETUPVAL                         R3 7
       42 GETUPVAL                         R4 1
       43 MOVE                             R5 R0
       44 CALL                             R3 2 0
       45 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R2 K0 ["revision"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U3
       17 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["rig"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getPlaybackId"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+6]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["refreshPreview"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K2 ["shouldExitOnRestore"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K3 ["deactivate"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["teardownPlayer"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R3 R0
        7 JUMPIFEQKNIL                     R2 ; [+16]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["endSession"]
       12 GETTABLEKS                       R4 R2 K2 ["editSessionId"]
       14 MOVE                             R5 R1
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K3 ["detachPlayer"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 1
       22 LOADNIL                          R4
       23 SETTABLE                         R4 R3 R0
       24 GETUPVAL                         R3 4
       25 JUMPIFEQKNIL                     R3 ; [+6]
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K4 ["discardHistory"]
       30 MOVE                             R4 R0
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 5
       33 GETTABLEKS                       R3 R3 K5 ["clearEditState"]
       35 MOVE                             R4 R0
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIFEQKNIL                     R4 ; [+5]
        4 GETTABLEKS                       R5 R4 K0 ["editSessionId"]
        6 JUMPIFEQ                         R5 R1 ; [+41]
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R0
       10 LOADK                            R7 K1 ["replaced"]
       11 CALL                             R5 2 0
       12 LOADNIL                          R4
       13 GETUPVAL                         R6 2
       14 GETTABLE                         R5 R6 R0
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K2 ["beginSession"]
       18 MOVE                             R7 R1
       19 DUPTABLE                         R8 K6 [{"eventLogger", "generationMode", "sourceJobId"}]
       20 GETTABLEKS                       R9 R3 K7 ["environment"]
       22 GETTABLEKS                       R9 R9 K8 ["EventLogger"]
       24 SETTABLEKS                       R9 R8 K3 ["eventLogger"]
       26 JUMPIFEQKNIL                     R5 ; [+10]
       28 GETTABLEKS                       R10 R5 K9 ["isUpscale"]
       30 JUMPIFNOT                        R10 ; [+6]
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R9 R9 K10 ["GenerationModes"]
       34 GETTABLEKS                       R9 R9 K11 ["EditUpscale"]
       36 JUMP                             ; [+5]
       37 GETUPVAL                         R9 4
       38 GETTABLEKS                       R9 R9 K10 ["GenerationModes"]
       40 GETTABLEKS                       R9 R9 K12 ["EditNew"]
       42 SETTABLEKS                       R9 R8 K4 ["generationMode"]
       44 SETTABLEKS                       R2 R8 K5 ["sourceJobId"]
       46 CALL                             R6 2 0
       47 JUMP                             ; [+5]
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K13 ["teardownPlayer"]
       51 MOVE                             R6 R0
       52 CALL                             R5 1 0
       53 MOVE                             R5 R4
       54 JUMPIF                           R5 ; [+6]
       55 GETUPVAL                         R5 6
       56 GETTABLEKS                       R5 R5 K14 ["create"]
       58 MOVE                             R6 R1
       59 MOVE                             R7 R2
       60 CALL                             R5 2 1
       61 GETUPVAL                         R6 6
       62 GETTABLEKS                       R6 R6 K15 ["attachPlayer"]
       64 MOVE                             R7 R5
       65 CALL                             R6 1 0
       66 GETUPVAL                         R6 0
       67 SETTABLE                         R5 R6 R0
       68 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["teardownPlayer"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["detachPlayer"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+10]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["runEdit"]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 4
       13 CALL                             R0 4 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 3
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldExitOnRestore"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["deactivate"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K2 ["reloadPlayer"]
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K3 ["currentTime"]
       18 GETUPVAL                         R3 4
       19 CALL                             R0 3 0
       20 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["ownsOperation"]
        3 GETUPVAL                         R7 1
        4 GETTABLE                         R6 R7 R0
        5 MOVE                             R7 R2
        6 CALL                             R5 2 1
        7 JUMPIF                           R5 ; [+2]
        8 LOADB                            R5 0
        9 RETURN                           R5 1
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R0
       12 CALL                             R5 1 1
       13 JUMPIFNOTEQKNIL                  R5 ; [+3]
       15 LOADB                            R6 0
       16 RETURN                           R6 1
       17 GETIMPORT                        R6 K2 [pcall]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R5
       25 CALL                             R6 1 2
       26 JUMPIF                           R6 ; [+27]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K0 ["ownsOperation"]
       30 GETUPVAL                         R10 1
       31 GETTABLE                         R9 R10 R0
       32 MOVE                             R10 R2
       33 CALL                             R8 2 1
       34 JUMPIFNOT                        R8 ; [+19]
       35 GETUPVAL                         R8 4
       36 MOVE                             R9 R0
       37 MOVE                             R10 R5
       38 CALL                             R8 2 1
       39 JUMPIFNOT                        R8 ; [+14]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K3 ["reclaimSessionForOperation"]
       43 MOVE                             R9 R2
       44 CALL                             R8 1 0
       45 GETIMPORT                        R8 K2 [pcall]
       47 NEWCLOSURE                       R9 P1
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 CALL                             R8 1 0
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K4 ["releaseSnapshot"]
       57 MOVE                             R9 R5
       58 CALL                             R8 1 0
       59 JUMPIF                           R6 ; [+5]
       60 GETIMPORT                        R8 K6 [warn]
       62 LOADK                            R9 K7 ["[AnimationGen] Edit transition failed:"]
       63 MOVE                             R10 R7
       64 CALL                             R8 2 0
       65 RETURN                           R6 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+4]
        3 MOVE                             R3 R2
        4 CALL                             R3 0 -1
        5 RETURN                           R3 -1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["runEdit"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_20]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ownsOperation"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R3 3
        7 CALL                             R1 2 1
        8 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       10 LOADK                            R2 K1 ["Pose session changed while loading"]
       11 GETIMPORT                        R0 K3 [assert]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["ownsOperation"]
        6 GETUPVAL                         R3 3
        7 GETUPVAL                         R4 4
        8 GETTABLE                         R2 R3 R4
        9 GETUPVAL                         R3 5
       10 CALL                             R1 2 1
       11 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       13 LOADK                            R2 K1 ["Pose session changed while loading"]
       14 GETIMPORT                        R0 K3 [assert]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIFNOTEQKNIL                  R4 ; [+26]
        4 JUMPIFEQKNIL                     R3 ; [+19]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R2
        8 GETUPVAL                         R6 1
        9 JUMPIFNOTEQKNIL                  R6 ; [+6]
       11 MOVE                             R7 R2
       12 DUPCLOSURE                       R8 K0 [PROTO_20]
       13 CALL                             R7 1 0
       14 LOADNIL                          R6
       15 JUMP                             ; [+11]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K1 ["runEdit"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R3
       21 MOVE                             R9 R5
       22 CALL                             R6 3 1
       23 JUMP                             ; [+3]
       24 MOVE                             R5 R2
       25 DUPCLOSURE                       R6 K2 [PROTO_22]
       26 CALL                             R5 1 0
       27 LOADB                            R5 1
       28 RETURN                           R5 1
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K3 ["beginOperation"]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKNIL                  R5 ; [+3]
       36 LOADB                            R6 0
       37 RETURN                           R6 1
       38 NEWCLOSURE                       R6 P3
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R5
       43 GETUPVAL                         R7 3
       44 MOVE                             R8 R0
       45 MOVE                             R9 R1
       46 MOVE                             R10 R5
       47 NEWCLOSURE                       R11 P4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R5
       54 MOVE                             R12 R3
       55 CALL                             R7 5 1
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R8 R8 K4 ["finishOperation"]
       59 MOVE                             R9 R5
       60 CALL                             R8 1 0
       61 RETURN                           R7 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["destroy"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 1
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 FORGPREP                         R0
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K1 ["detachPlayer"]
       14 MOVE                             R6 R4
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-6]
       18 GETIMPORT                        R0 K4 [table.clear]
       20 GETUPVAL                         R1 1
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K0 ["destroy"]
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["sharedStates"]
        2 GETTABLEKS                       R2 R0 K1 ["editor"]
        4 GETTABLEKS                       R3 R0 K2 ["animator"]
        6 GETTABLEKS                       R4 R0 K3 ["editPreviewPlayer"]
        8 GETTABLEKS                       R5 R0 K4 ["poseSelection"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R7 R2 K5 ["destroySavedPoses"]
       13 CALL                             R6 1 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K6 ["createEditSessionTracker"]
       17 CALL                             R7 0 1
       18 NEWTABLE                         R8 0 0
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R8
       22 NEWCLOSURE                       R10 P1
       23 CAPTURE                          VAL R8
       24 NEWCLOSURE                       R11 P2
       25 CAPTURE                          VAL R8
       26 CAPTURE                          VAL R6
       27 NEWCLOSURE                       R12 P3
       28 CAPTURE                          VAL R8
       29 CAPTURE                          VAL R2
       30 NEWCLOSURE                       R13 P4
       31 CAPTURE                          VAL R8
       32 NEWCLOSURE                       R14 P5
       33 CAPTURE                          VAL R8
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R7
       36 NEWCLOSURE                       R15 P6
       37 CAPTURE                          VAL R8
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 NEWCLOSURE                       R16 P7
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 GETUPVAL                         R18 3
       51 GETTABLEKS                       R18 R18 K7 ["FFlagAssistantAnimationGenUndoRedo"]
       53 JUMPIFNOT                        R18 ; [+42]
       54 GETUPVAL                         R17 4
       55 DUPTABLE                         R18 K11 [{"sessions", "editor", "getRig", "onRestored"}]
       56 DUPTABLE                         R19 K17 [{"capture", "retain", "release", "restore", "prepareReload"}]
       57 SETTABLEKS                       R15 R19 K12 ["capture"]
       59 GETTABLEKS                       R20 R6 K18 ["retainSnapshot"]
       61 SETTABLEKS                       R20 R19 K13 ["retain"]
       63 GETTABLEKS                       R20 R6 K19 ["releaseSnapshot"]
       65 SETTABLEKS                       R20 R19 K14 ["release"]
       67 NEWCLOSURE                       R20 P8
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R16
       70 SETTABLEKS                       R20 R19 K15 ["restore"]
       72 NEWCLOSURE                       R20 P9
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 CAPTURE                          UPVAL U5
       77 SETTABLEKS                       R20 R19 K16 ["prepareReload"]
       79 SETTABLEKS                       R19 R18 K8 ["sessions"]
       81 GETTABLEKS                       R19 R2 K20 ["undoParticipant"]
       83 SETTABLEKS                       R19 R18 K1 ["editor"]
       85 NEWCLOSURE                       R19 P10
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R19 R18 K9 ["getRig"]
       89 NEWCLOSURE                       R19 P11
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 SETTABLEKS                       R19 R18 K10 ["onRestored"]
       94 CALL                             R17 1 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R17
       97 NEWCLOSURE                       R18 P12
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R2
      104 NEWCLOSURE                       R19 P13
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R7
      109 CAPTURE                          UPVAL U6
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R6
      112 NEWCLOSURE                       R20 P14
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R6
      116 NEWCLOSURE                       R21 P15
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R4
      124 NEWCLOSURE                       R22 P16
      125 CAPTURE                          VAL R17
      126 NEWCLOSURE                       R23 P17
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R21
      131 NEWCLOSURE                       R24 P18
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 DUPTABLE                         R25 K33 [{"getSession", "isOwnedBy", "isOperationBlocked", "hasChanges", "getRevision", "recordMutation", "discardSession", "beginSession", "endSession", "runPoseTransition", "runUndoableEdit", "destroy"}]
      137 SETTABLEKS                       R9 R25 K21 ["getSession"]
      139 SETTABLEKS                       R10 R25 K22 ["isOwnedBy"]
      141 SETTABLEKS                       R11 R25 K23 ["isOperationBlocked"]
      143 SETTABLEKS                       R12 R25 K24 ["hasChanges"]
      145 SETTABLEKS                       R13 R25 K25 ["getRevision"]
      147 SETTABLEKS                       R14 R25 K26 ["recordMutation"]
      149 SETTABLEKS                       R18 R25 K27 ["discardSession"]
      151 SETTABLEKS                       R19 R25 K28 ["beginSession"]
      153 SETTABLEKS                       R20 R25 K29 ["endSession"]
      155 SETTABLEKS                       R23 R25 K30 ["runPoseTransition"]
      157 SETTABLEKS                       R22 R25 K31 ["runUndoableEdit"]
      159 SETTABLEKS                       R24 R25 K32 ["destroy"]
      161 RETURN                           R25 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Remotes"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGenRemotes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["AnimationGen"]
       20 GETTABLEKS                       R3 R3 K10 ["AnimationGenTelemetry"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Util"]
       27 GETTABLEKS                       R4 R4 K9 ["AnimationGen"]
       29 GETTABLEKS                       R4 R4 K11 ["AnimationGenTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Util"]
       36 GETTABLEKS                       R5 R5 K9 ["AnimationGen"]
       38 GETTABLEKS                       R5 R5 K12 ["State"]
       40 GETTABLEKS                       R5 R5 K13 ["AnimationPlayerState"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Util"]
       47 GETTABLEKS                       R6 R6 K9 ["AnimationGen"]
       49 GETTABLEKS                       R6 R6 K12 ["State"]
       51 GETTABLEKS                       R6 R6 K14 ["EditSessionTypes"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K15 ["Flags"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Util"]
       63 GETTABLEKS                       R8 R8 K9 ["AnimationGen"]
       65 GETTABLEKS                       R8 R8 K16 ["HostTypes"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K17 ["Types"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K8 ["Util"]
       77 GETTABLEKS                       R10 R10 K9 ["AnimationGen"]
       79 GETTABLEKS                       R10 R10 K18 ["createAnimationGenUndo"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K8 ["Util"]
       86 GETTABLEKS                       R11 R11 K9 ["AnimationGen"]
       88 GETTABLEKS                       R11 R11 K19 ["createEditPreviewPlayer"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K8 ["Util"]
       95 GETTABLEKS                       R12 R12 K9 ["AnimationGen"]
       97 GETTABLEKS                       R12 R12 K12 ["State"]
       99 GETTABLEKS                       R12 R12 K20 ["createEditSession"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K8 ["Util"]
      106 GETTABLEKS                       R13 R13 K9 ["AnimationGen"]
      108 GETTABLEKS                       R13 R13 K21 ["createHostAnimator"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K8 ["Util"]
      115 GETTABLEKS                       R14 R14 K9 ["AnimationGen"]
      117 GETTABLEKS                       R14 R14 K22 ["createHostEditor"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K8 ["Util"]
      124 GETTABLEKS                       R15 R15 K9 ["AnimationGen"]
      126 GETTABLEKS                       R15 R15 K23 ["createPoseSelection"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K5 [require]
      131 GETTABLEKS                       R16 R0 K8 ["Util"]
      133 GETTABLEKS                       R16 R16 K9 ["AnimationGen"]
      135 GETTABLEKS                       R16 R16 K24 ["notifyGuestEditStateChanged"]
      137 CALL                             R15 1 1
      138 DUPCLOSURE                       R16 K25 [PROTO_27]
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R3
      146 RETURN                           R16 1
