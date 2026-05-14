PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Type"]
        2 NEWTABLE                         R3 0 0
        4 LOADNIL                          R4
        5 GETTABLEKS                       R5 R1 K1 ["Components"]
        7 JUMPIFNOT                        R5 ; [+48]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K2 ["COMPONENT_TRACK_TYPES"]
       11 GETTABLE                         R5 R6 R2
       12 JUMPIFNOT                        R5 ; [+43]
       13 NEWTABLE                         R4 0 0
       15 GETUPVAL                         R6 1
       16 CALL                             R6 0 1
       17 JUMPIFNOT                        R6 ; [+6]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K3 ["getSortedComponents"]
       21 MOVE                             R6 R1
       22 CALL                             R5 1 1
       23 JUMP                             ; [+8]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K2 ["COMPONENT_TRACK_TYPES"]
       27 GETTABLEKS                       R7 R1 K0 ["Type"]
       29 GETTABLE                         R5 R6 R7
       30 GETTABLEKS                       R5 R5 K4 ["_Order"]
       32 GETIMPORT                        R6 K6 [pairs]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 3
       36 FORGPREP_NEXT                    R6
       37 NEWTABLE                         R11 0 0
       39 SETTABLE                         R11 R4 R10
       40 GETUPVAL                         R11 3
       41 GETTABLEKS                       R11 R11 K7 ["Dictionary"]
       43 GETTABLEKS                       R11 R11 K8 ["join"]
       45 MOVE                             R12 R3
       46 GETUPVAL                         R13 4
       47 GETTABLE                         R14 R4 R10
       48 GETTABLEKS                       R16 R1 K1 ["Components"]
       50 GETTABLE                         R15 R16 R10
       51 CALL                             R13 2 -1
       52 CALL                             R11 -1 1
       53 MOVE                             R3 R11
       54 FORGLOOP                         R6 2 ; [-18]
       56 GETTABLEKS                       R5 R1 K9 ["Data"]
       58 JUMPIFNOT                        R5 ; [+10]
       59 GETIMPORT                        R5 K6 [pairs]
       61 GETTABLEKS                       R6 R1 K9 ["Data"]
       63 CALL                             R5 1 3
       64 FORGPREP_NEXT                    R5
       65 LOADB                            R10 1
       66 SETTABLE                         R10 R3 R8
       67 FORGLOOP                         R5 2 ; [-3]
       69 SETTABLEKS                       R3 R0 K10 ["Selection"]
       71 SETTABLEKS                       R4 R0 K1 ["Components"]
       73 RETURN                           R3 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R3 0 0
        9 GETIMPORT                        R4 K3 [pairs]
       11 GETTABLEKS                       R5 R2 K4 ["Instances"]
       13 CALL                             R4 1 3
       14 FORGPREP_NEXT                    R4
       15 NEWTABLE                         R9 0 0
       17 SETTABLE                         R9 R3 R7
       18 GETIMPORT                        R9 K3 [pairs]
       20 GETTABLEKS                       R10 R8 K5 ["Tracks"]
       22 CALL                             R9 1 3
       23 FORGPREP_NEXT                    R9
       24 GETTABLE                         R14 R3 R7
       25 NEWTABLE                         R15 0 0
       27 SETTABLE                         R15 R14 R12
       28 DUPCLOSURE                       R14 K6 [PROTO_0]
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R14
       34 GETTABLE                         R16 R3 R7
       35 GETTABLE                         R15 R16 R12
       36 MOVE                             R16 R14
       37 MOVE                             R17 R15
       38 MOVE                             R18 R13
       39 CALL                             R16 2 0
       40 FORGLOOP                         R9 2 ; [-17]
       42 FORGLOOP                         R4 2 ; [-28]
       44 GETUPVAL                         R6 4
       45 MOVE                             R7 R3
       46 CALL                             R6 1 -1
       47 NAMECALL                         R4 R0 K7 ["dispatch"]
       49 CALL                             R4 -1 0
       50 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Actions"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["SetSelectedKeyframes"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K12 ["Constants"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K13 ["SelectionUtils"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R4 K14 ["TrackUtils"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R0 K8 ["Src"]
       46 GETTABLEKS                       R9 R9 K15 ["Types"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K16 ["LuaFlags"]
       53 GETTABLEKS                       R10 R10 K17 ["GetFFlagControlRig"]
       55 CALL                             R9 1 1
       56 DUPCLOSURE                       R10 K18 [PROTO_2]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 RETURN                           R10 1
