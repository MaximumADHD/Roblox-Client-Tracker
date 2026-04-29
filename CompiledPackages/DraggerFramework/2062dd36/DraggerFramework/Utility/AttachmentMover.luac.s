PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["_originalWorldCFrames"]
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K1 ["IsRunning"]
        7 CALL                             R2 1 1
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R0 K2 ["_partsToUnanchor"]
       12 GETIMPORT                        R3 K4 [ipairs]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 3
       16 FORGPREP_INEXT                   R3
       17 GETTABLEKS                       R8 R0 K0 ["_originalWorldCFrames"]
       19 GETTABLEKS                       R9 R7 K5 ["WorldCFrame"]
       21 SETTABLE                         R9 R8 R7
       22 JUMPIFNOT                        R2 ; [+13]
       23 LOADK                            R10 K6 ["BasePart"]
       24 NAMECALL                         R8 R7 K7 ["FindFirstAncestorWhichIsA"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+8]
       28 NAMECALL                         R9 R8 K8 ["IsGrounded"]
       30 CALL                             R9 1 1
       31 JUMPIF                           R9 ; [+4]
       32 GETTABLEKS                       R9 R0 K2 ["_partsToUnanchor"]
       34 LOADB                            R10 1
       35 SETTABLE                         R10 R9 R8
       36 FORGLOOP                         R3 2 [inext] ; [-20]
       38 GETIMPORT                        R3 K10 [pairs]
       40 GETTABLEKS                       R4 R0 K2 ["_partsToUnanchor"]
       42 CALL                             R3 1 3
       43 FORGPREP_NEXT                    R3
       44 LOADB                            R8 1
       45 SETTABLEKS                       R8 R6 K11 ["Anchored"]
       47 FORGLOOP                         R3 2 ; [-4]
       49 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETTABLEKS                       R3 R0 K2 ["_originalWorldCFrames"]
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 MUL                              R7 R1 R6
        7 SETTABLEKS                       R7 R5 K3 ["WorldCFrame"]
        9 FORGLOOP                         R2 2 ; [-4]
       11 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_originalWorldCFrames"]
        3 GETIMPORT                        R1 K2 [pairs]
        5 GETTABLEKS                       R2 R0 K3 ["_partsToUnanchor"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 LOADB                            R6 0
       10 SETTABLEKS                       R6 R4 K4 ["Anchored"]
       12 FORGLOOP                         R1 2 ; [-4]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K3 ["_partsToUnanchor"]
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 NEWTABLE                         R2 8 0
       15 SETTABLEKS                       R2 R2 K7 ["__index"]
       17 DUPCLOSURE                       R3 K8 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 SETTABLEKS                       R3 R2 K9 ["new"]
       21 DUPCLOSURE                       R3 K10 [PROTO_1]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R3 R2 K11 ["setDragged"]
       25 DUPCLOSURE                       R3 K12 [PROTO_2]
       26 SETTABLEKS                       R3 R2 K13 ["transformTo"]
       28 DUPCLOSURE                       R3 K14 [PROTO_3]
       29 SETTABLEKS                       R3 R2 K15 ["commit"]
       31 RETURN                           R2 1
