PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["contentId"]
        7 JUMPIFEQ                         R2 R0 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_2:
        0 SETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 SETTABLE                         R1 R2 R0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["contentId"]
        6 JUMPIFEQ                         R1 R0 ; [+2]
        8 RETURN                           R0 0
        9 LOADB                            R1 0
       10 GETUPVAL                         R2 0
       11 JUMPIFEQKNIL                     R2 ; [+8]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["contentId"]
       16 JUMPIFEQ                         R2 R0 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 LOADNIL                          R2
       21 SETUPVAL                         R2 0
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K1 ["setMeshSelectorActive"]
       25 LOADB                            R3 0
       26 MOVE                             R4 R0
       27 CALL                             R2 2 0
       28 GETUPVAL                         R3 2
       29 GETTABLE                         R2 R3 R0
       30 JUMPIF                           R2 ; [+1]
       31 GETUPVAL                         R2 3
       32 JUMPIFNOT                        R1 ; [+10]
       33 JUMPIFEQKNIL                     R2 ; [+9]
       35 GETTABLEKS                       R3 R2 K2 ["callbacks"]
       37 GETTABLEKS                       R3 R3 K3 ["poseDeselected"]
       39 DUPTABLE                         R4 K5 [{"toolUseId"}]
       40 SETTABLEKS                       R0 R4 K4 ["toolUseId"]
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setMeshSelectorActive"]
        3 LOADB                            R3 1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 0
        6 DUPTABLE                         R2 K3 [{"contentId", "time"}]
        7 SETTABLEKS                       R0 R2 K1 ["contentId"]
        9 SETTABLEKS                       R1 R2 K2 ["time"]
       11 SETUPVAL                         R2 1
       12 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R2 0
        1 GETUPVAL                         R3 0
        2 JUMPIFEQKNIL                     R3 ; [+8]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["contentId"]
        7 JUMPIFEQ                         R3 R0 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 CALL                             R3 1 0
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K0 ["contentId"]
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R1 R3 R2
        8 JUMPIF                           R1 ; [+1]
        9 GETUPVAL                         R1 2
       10 JUMPIFEQKNIL                     R1 ; [+24]
       12 GETTABLEKS                       R2 R0 K0 ["contentId"]
       14 LOADB                            R3 0
       15 GETUPVAL                         R4 0
       16 JUMPIFEQKNIL                     R4 ; [+8]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K0 ["contentId"]
       21 JUMPIFEQ                         R4 R2 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 GETUPVAL                         R4 3
       26 MOVE                             R5 R2
       27 CALL                             R4 1 0
       28 JUMPIF                           R3 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 4
       31 MOVE                             R5 R2
       32 MOVE                             R6 R1
       33 CALL                             R4 2 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R3 R0 K0 ["contentId"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+32]
        3 GETTABLEKS                       R3 R2 K0 ["contentId"]
        5 JUMPIFEQ                         R3 R0 ; [+28]
        7 GETTABLEKS                       R3 R2 K0 ["contentId"]
        9 GETTABLEKS                       R6 R2 K0 ["contentId"]
       11 GETUPVAL                         R7 1
       12 GETTABLE                         R5 R7 R6
       13 OR                               R4 R5 R1
       14 LOADB                            R5 0
       15 GETUPVAL                         R6 0
       16 JUMPIFEQKNIL                     R6 ; [+8]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K0 ["contentId"]
       21 JUMPIFEQ                         R6 R3 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 GETUPVAL                         R6 2
       26 MOVE                             R7 R3
       27 CALL                             R6 1 0
       28 JUMPIF                           R5 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R6 3
       31 MOVE                             R7 R3
       32 MOVE                             R8 R4
       33 CALL                             R6 2 0
       34 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 JUMPIFEQKNIL                     R1 ; [+17]
        4 LOADB                            R2 0
        5 GETTABLEKS                       R3 R1 K0 ["contentId"]
        7 JUMPIFNOTEQ                      R3 R0 ; [+12]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["findSavedPoseTime"]
       12 MOVE                             R4 R0
       13 GETTABLEKS                       R5 R1 K2 ["time"]
       15 CALL                             R3 2 1
       16 JUMPIFEQKNIL                     R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_11:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 NEWTABLE                         R3 0 0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R1
        6 NEWCLOSURE                       R5 P1
        7 CAPTURE                          REF R1
        8 NEWCLOSURE                       R6 P2
        9 CAPTURE                          REF R2
       10 CAPTURE                          VAL R3
       11 NEWCLOSURE                       R7 P3
       12 CAPTURE                          VAL R3
       13 NEWCLOSURE                       R8 P4
       14 CAPTURE                          VAL R3
       15 CAPTURE                          REF R2
       16 NEWCLOSURE                       R9 P5
       17 CAPTURE                          REF R1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          REF R2
       21 NEWCLOSURE                       R10 P6
       22 CAPTURE                          VAL R0
       23 CAPTURE                          REF R1
       24 NEWCLOSURE                       R11 P7
       25 CAPTURE                          REF R1
       26 CAPTURE                          VAL R9
       27 CAPTURE                          UPVAL U0
       28 NEWCLOSURE                       R12 P8
       29 CAPTURE                          REF R1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          REF R2
       32 CAPTURE                          VAL R9
       33 CAPTURE                          UPVAL U0
       34 NEWCLOSURE                       R13 P9
       35 CAPTURE                          REF R1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R9
       38 CAPTURE                          UPVAL U0
       39 NEWCLOSURE                       R14 P10
       40 CAPTURE                          REF R1
       41 CAPTURE                          VAL R0
       42 NEWCLOSURE                       R15 P11
       43 CAPTURE                          REF R1
       44 CAPTURE                          REF R2
       45 CAPTURE                          VAL R3
       46 DUPTABLE                         R16 K12 [{"getActivePose", "isPosing", "rememberContext", "getContext", "getContextOrLatest", "activate", "deactivate", "leave", "onDeselected", "leaveOtherPose", "shouldExitOnRestore", "destroy"}]
       47 SETTABLEKS                       R4 R16 K0 ["getActivePose"]
       49 SETTABLEKS                       R5 R16 K1 ["isPosing"]
       51 SETTABLEKS                       R6 R16 K2 ["rememberContext"]
       53 SETTABLEKS                       R7 R16 K3 ["getContext"]
       55 SETTABLEKS                       R8 R16 K4 ["getContextOrLatest"]
       57 SETTABLEKS                       R10 R16 K5 ["activate"]
       59 SETTABLEKS                       R9 R16 K6 ["deactivate"]
       61 SETTABLEKS                       R11 R16 K7 ["leave"]
       63 SETTABLEKS                       R12 R16 K8 ["onDeselected"]
       65 SETTABLEKS                       R13 R16 K9 ["leaveOtherPose"]
       67 SETTABLEKS                       R14 R16 K10 ["shouldExitOnRestore"]
       69 SETTABLEKS                       R15 R16 K11 ["destroy"]
       71 CLOSEUPVALS                      R1
       72 RETURN                           R16 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["AnimationGen"]
       25 GETTABLEKS                       R4 R4 K11 ["createHostEditor"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Util"]
       32 GETTABLEKS                       R5 R5 K10 ["AnimationGen"]
       34 GETTABLEKS                       R5 R5 K12 ["notifyGuestEditStateChanged"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_12]
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
