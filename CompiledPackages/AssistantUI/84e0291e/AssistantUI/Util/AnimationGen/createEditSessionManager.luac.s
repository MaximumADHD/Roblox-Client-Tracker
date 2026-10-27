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
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["bumpRevision"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["teardownPlayer"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFEQKNIL                     R1 ; [+9]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["detachPlayer"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R2 R0
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K2 ["clearEditState"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+5]
        4 GETTABLEKS                       R4 R3 K0 ["editSessionId"]
        6 JUMPIFEQ                         R4 R1 ; [+25]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["teardownPlayer"]
       11 MOVE                             R5 R0
       12 CALL                             R4 1 0
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R4 R5 R0
       15 JUMPIFEQKNIL                     R4 ; [+9]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K2 ["detachPlayer"]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 0
       22 GETUPVAL                         R5 0
       23 LOADNIL                          R6
       24 SETTABLE                         R6 R5 R0
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K3 ["clearEditState"]
       28 MOVE                             R6 R0
       29 CALL                             R5 1 0
       30 LOADNIL                          R3
       31 JUMP                             ; [+5]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K1 ["teardownPlayer"]
       35 MOVE                             R5 R0
       36 CALL                             R4 1 0
       37 MOVE                             R4 R3
       38 JUMPIF                           R4 ; [+6]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K4 ["create"]
       42 MOVE                             R5 R1
       43 MOVE                             R6 R2
       44 CALL                             R4 2 1
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K5 ["attachPlayer"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 0
       50 GETUPVAL                         R5 0
       51 SETTABLE                         R4 R5 R0
       52 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["ownsOperation"]
        3 GETUPVAL                         R6 1
        4 GETTABLE                         R5 R6 R0
        5 MOVE                             R6 R2
        6 CALL                             R4 2 1
        7 JUMPIF                           R4 ; [+2]
        8 LOADB                            R4 0
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R0
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKNIL                  R4 ; [+3]
       15 LOADB                            R5 0
       16 RETURN                           R5 1
       17 GETIMPORT                        R5 K2 [pcall]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R3
       21 CALL                             R5 1 2
       22 JUMPIF                           R5 ; [+27]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K0 ["ownsOperation"]
       26 GETUPVAL                         R9 1
       27 GETTABLE                         R8 R9 R0
       28 MOVE                             R9 R2
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+19]
       31 GETUPVAL                         R7 3
       32 MOVE                             R8 R0
       33 MOVE                             R9 R4
       34 CALL                             R7 2 1
       35 JUMPIFNOT                        R7 ; [+14]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K3 ["reclaimSessionForOperation"]
       39 MOVE                             R8 R2
       40 CALL                             R7 1 0
       41 GETIMPORT                        R7 K2 [pcall]
       43 NEWCLOSURE                       R8 P1
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 CALL                             R7 1 0
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K4 ["releaseSnapshot"]
       53 MOVE                             R8 R4
       54 CALL                             R7 1 0
       55 JUMPIF                           R5 ; [+5]
       56 GETIMPORT                        R7 K6 [warn]
       58 LOADK                            R8 K7 ["[AnimationGen] Edit transition failed:"]
       59 MOVE                             R9 R6
       60 CALL                             R7 2 0
       61 RETURN                           R5 1

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOTEQKNIL                  R3 ; [+6]
        4 MOVE                             R4 R2
        5 DUPCLOSURE                       R5 K0 [PROTO_14]
        6 CALL                             R4 1 0
        7 LOADB                            R4 1
        8 RETURN                           R4 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["beginOperation"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKNIL                  R4 ; [+3]
       16 LOADB                            R5 0
       17 RETURN                           R5 1
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R4
       23 GETUPVAL                         R6 2
       24 MOVE                             R7 R0
       25 MOVE                             R8 R1
       26 MOVE                             R9 R4
       27 NEWCLOSURE                       R10 P2
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R4
       34 CALL                             R6 4 1
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K2 ["finishOperation"]
       38 MOVE                             R8 R4
       39 CALL                             R7 1 0
       40 RETURN                           R6 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["detachPlayer"]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-6]
       11 GETIMPORT                        R0 K3 [table.clear]
       13 GETUPVAL                         R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["sharedStates"]
        2 GETTABLEKS                       R2 R0 K1 ["editor"]
        4 GETTABLEKS                       R3 R0 K2 ["animator"]
        6 GETTABLEKS                       R4 R0 K3 ["editPreviewPlayer"]
        8 GETTABLEKS                       R5 R0 K4 ["poseSelection"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R7 R2 K5 ["destroySavedPoses"]
       13 CALL                             R6 1 1
       14 NEWTABLE                         R7 0 0
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R7
       18 NEWCLOSURE                       R9 P1
       19 CAPTURE                          VAL R7
       20 NEWCLOSURE                       R10 P2
       21 CAPTURE                          VAL R7
       22 CAPTURE                          VAL R6
       23 NEWCLOSURE                       R11 P3
       24 CAPTURE                          VAL R7
       25 CAPTURE                          VAL R2
       26 NEWCLOSURE                       R12 P4
       27 CAPTURE                          VAL R7
       28 NEWCLOSURE                       R13 P5
       29 CAPTURE                          VAL R7
       30 CAPTURE                          VAL R6
       31 NEWCLOSURE                       R14 P6
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R2
       36 NEWCLOSURE                       R15 P7
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R2
       41 NEWCLOSURE                       R16 P8
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R6
       45 NEWCLOSURE                       R17 P9
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 NEWCLOSURE                       R18 P10
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R6
       59 NEWCLOSURE                       R19 P11
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R17
       63 CAPTURE                          VAL R18
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R4
       66 NEWCLOSURE                       R20 P12
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R19
       70 NEWCLOSURE                       R21 P13
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 DUPTABLE                         R22 K17 [{"getSession", "isOwnedBy", "isOperationBlocked", "hasChanges", "getRevision", "recordMutation", "discardSession", "beginSession", "endSession", "runPoseTransition", "destroy"}]
       74 SETTABLEKS                       R8 R22 K6 ["getSession"]
       76 SETTABLEKS                       R9 R22 K7 ["isOwnedBy"]
       78 SETTABLEKS                       R10 R22 K8 ["isOperationBlocked"]
       80 SETTABLEKS                       R11 R22 K9 ["hasChanges"]
       82 SETTABLEKS                       R12 R22 K10 ["getRevision"]
       84 SETTABLEKS                       R13 R22 K11 ["recordMutation"]
       86 SETTABLEKS                       R14 R22 K12 ["discardSession"]
       88 SETTABLEKS                       R15 R22 K13 ["beginSession"]
       90 SETTABLEKS                       R16 R22 K14 ["endSession"]
       92 SETTABLEKS                       R20 R22 K15 ["runPoseTransition"]
       94 SETTABLEKS                       R21 R22 K16 ["destroy"]
       96 RETURN                           R22 1

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
       20 GETTABLEKS                       R3 R3 K10 ["State"]
       22 GETTABLEKS                       R3 R3 K11 ["AnimationPlayerState"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K9 ["AnimationGen"]
       31 GETTABLEKS                       R4 R4 K10 ["State"]
       33 GETTABLEKS                       R4 R4 K12 ["EditSessionTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K8 ["Util"]
       40 GETTABLEKS                       R5 R5 K9 ["AnimationGen"]
       42 GETTABLEKS                       R5 R5 K13 ["HostTypes"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K8 ["Util"]
       49 GETTABLEKS                       R6 R6 K9 ["AnimationGen"]
       51 GETTABLEKS                       R6 R6 K14 ["createEditPreviewPlayer"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K8 ["Util"]
       58 GETTABLEKS                       R7 R7 K9 ["AnimationGen"]
       60 GETTABLEKS                       R7 R7 K10 ["State"]
       62 GETTABLEKS                       R7 R7 K15 ["createEditSession"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K8 ["Util"]
       69 GETTABLEKS                       R8 R8 K9 ["AnimationGen"]
       71 GETTABLEKS                       R8 R8 K16 ["createHostAnimator"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K8 ["Util"]
       78 GETTABLEKS                       R9 R9 K9 ["AnimationGen"]
       80 GETTABLEKS                       R9 R9 K17 ["createHostEditor"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R10 R0 K8 ["Util"]
       87 GETTABLEKS                       R10 R10 K9 ["AnimationGen"]
       89 GETTABLEKS                       R10 R10 K18 ["createPoseSelection"]
       91 CALL                             R9 1 1
       92 DUPCLOSURE                       R10 K19 [PROTO_19]
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R2
       95 RETURN                           R10 1
