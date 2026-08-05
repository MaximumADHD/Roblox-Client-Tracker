PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R2 R0 K0 ["_originalWorldCFrames"]
        6 SETTABLEKS                       R3 R0 K1 ["_partsToUnanchor"]
        8 GETUPVAL                         R4 0
        9 NAMECALL                         R4 R4 K2 ["IsRunning"]
       11 CALL                             R4 1 1
       12 GETIMPORT                        R5 K4 [ipairs]
       14 MOVE                             R6 R1
       15 CALL                             R5 1 3
       16 FORGPREP_INEXT                   R5
       17 GETTABLEKS                       R10 R9 K5 ["WorldCFrame"]
       19 SETTABLE                         R10 R2 R9
       20 JUMPIFNOT                        R4 ; [+11]
       21 LOADK                            R12 K6 ["BasePart"]
       22 NAMECALL                         R10 R9 K7 ["FindFirstAncestorWhichIsA"]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+6]
       26 NAMECALL                         R11 R10 K8 ["IsGrounded"]
       28 CALL                             R11 1 1
       29 JUMPIF                           R11 ; [+2]
       30 LOADB                            R11 1
       31 SETTABLE                         R11 R3 R10
       32 FORGLOOP                         R5 2 [inext] ; [-16]
       34 GETIMPORT                        R5 K10 [pairs]
       36 MOVE                             R6 R3
       37 CALL                             R5 1 3
       38 FORGPREP_NEXT                    R5
       39 LOADB                            R10 1
       40 SETTABLEKS                       R10 R8 K11 ["Anchored"]
       42 FORGLOOP                         R5 2 ; [-4]
       44 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_originalWorldCFrames"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["AttachmentMover:transformTo called before setDragged"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETIMPORT                        R2 K5 [pairs]
       10 GETTABLEKS                       R3 R0 K0 ["_originalWorldCFrames"]
       12 CALL                             R2 1 3
       13 FORGPREP_NEXT                    R2
       14 MUL                              R7 R1 R6
       15 SETTABLEKS                       R7 R5 K6 ["WorldCFrame"]
       17 FORGLOOP                         R2 2 ; [-4]
       19 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_originalWorldCFrames"]
        3 GETTABLEKS                       R2 R0 K1 ["_partsToUnanchor"]
        5 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        7 LOADK                            R3 K2 ["AttachmentMover:commit called before setDragged"]
        8 GETIMPORT                        R1 K4 [assert]
       10 CALL                             R1 2 0
       11 GETIMPORT                        R1 K6 [pairs]
       13 GETTABLEKS                       R2 R0 K1 ["_partsToUnanchor"]
       15 CALL                             R1 1 3
       16 FORGPREP_NEXT                    R1
       17 LOADB                            R6 0
       18 SETTABLEKS                       R6 R4 K7 ["Anchored"]
       20 FORGLOOP                         R1 2 ; [-4]
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K1 ["_partsToUnanchor"]
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 SETTABLEKS                       R1 R1 K4 ["__index"]
       11 DUPCLOSURE                       R2 K5 [PROTO_0]
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R2 R1 K6 ["new"]
       15 DUPCLOSURE                       R2 K7 [PROTO_1]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R1 K8 ["setDragged"]
       19 DUPCLOSURE                       R2 K9 [PROTO_2]
       20 SETTABLEKS                       R2 R1 K10 ["transformTo"]
       22 DUPCLOSURE                       R2 K11 [PROTO_3]
       23 SETTABLEKS                       R2 R1 K12 ["commit"]
       25 RETURN                           R1 1
