PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+9]
        7 GETUPVAL                         R1 0
        8 GETIMPORT                        R2 K5 [string.format]
       10 LOADK                            R3 K6 ["%.3f"]
       11 MOVE                             R4 R0
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R2 R0
       17 GETIMPORT                        R1 K1 [typeof]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKS                    R1 K7 ["Vector2"] ; [+12]
       22 GETUPVAL                         R1 0
       23 GETIMPORT                        R2 K5 [string.format]
       25 LOADK                            R3 K8 ["%.3f, %.3f"]
       26 GETTABLEKS                       R4 R0 K9 ["X"]
       28 GETTABLEKS                       R5 R0 K10 ["Y"]
       30 CALL                             R2 3 -1
       31 CALL                             R1 -1 0
       32 RETURN                           R0 0
       33 FASTCALL1                        TYPEOF R0 ; [+3]
       34 MOVE                             R2 R0
       35 GETIMPORT                        R1 K1 [typeof]
       37 CALL                             R1 1 1
       38 JUMPIFNOTEQKS                    R1 K11 ["Vector3"] ; [+14]
       40 GETUPVAL                         R1 0
       41 GETIMPORT                        R2 K5 [string.format]
       43 LOADK                            R3 K12 ["%.3f, %.3f, %.3f"]
       44 GETTABLEKS                       R4 R0 K9 ["X"]
       46 GETTABLEKS                       R5 R0 K10 ["Y"]
       48 GETTABLEKS                       R6 R0 K13 ["Z"]
       50 CALL                             R2 4 -1
       51 CALL                             R1 -1 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R1 0
       54 FASTCALL1                        TOSTRING R0 ; [+3]
       55 MOVE                             R3 R0
       56 GETIMPORT                        R2 K15 [tostring]
       58 CALL                             R2 1 1
       59 CALL                             R1 1 0
       60 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["datamodelType"]
        3 GETIMPORT                        R1 K4 [Enum.StudioDataModelType.PlayClient]
        5 JUMPIFNOTEQ                      R0 R1 ; [+4]
        7 GETUPVAL                         R0 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+5]
       10 GETUPVAL                         R0 2
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 3
       15 GETTABLEKS                       R0 R0 K5 ["subscribeStateChange"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K6 ["uuid"]
       20 GETUPVAL                         R2 4
       21 CALL                             R0 2 1
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K7 ["type"]
       25 GETIMPORT                        R2 K10 [Enum.InputActionType.Bool]
       27 JUMPIFNOTEQ                      R1 R2 ; [+5]
       29 GETUPVAL                         R1 4
       30 LOADB                            R2 0
       31 CALL                             R1 1 0
       32 RETURN                           R0 1
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K7 ["type"]
       36 GETIMPORT                        R2 K12 [Enum.InputActionType.Direction1D]
       38 JUMPIFNOTEQ                      R1 R2 ; [+5]
       40 GETUPVAL                         R1 4
       41 LOADN                            R2 0
       42 CALL                             R1 1 0
       43 RETURN                           R0 1
       44 GETUPVAL                         R1 1
       45 GETTABLEKS                       R1 R1 K7 ["type"]
       47 GETIMPORT                        R2 K14 [Enum.InputActionType.Direction2D]
       49 JUMPIFNOTEQ                      R1 R2 ; [+7]
       51 GETUPVAL                         R1 4
       52 GETIMPORT                        R2 K17 [Vector2.new]
       54 CALL                             R2 0 -1
       55 CALL                             R1 -1 0
       56 RETURN                           R0 1
       57 GETUPVAL                         R1 1
       58 GETTABLEKS                       R1 R1 K7 ["type"]
       60 GETIMPORT                        R2 K19 [Enum.InputActionType.Direction3D]
       62 JUMPIFNOTEQ                      R1 R2 ; [+8]
       64 GETUPVAL                         R1 4
       65 FASTCALL                         VECTOR ; [+2]
       66 GETIMPORT                        R2 K21 [Vector3.new]
       68 CALL                             R2 0 1
       69 CALL                             R1 1 0
       70 RETURN                           R0 1
       71 GETUPVAL                         R1 5
       72 CALL                             R1 0 1
       73 JUMPIFNOT                        R1 ; [+12]
       74 GETUPVAL                         R1 1
       75 GETTABLEKS                       R1 R1 K7 ["type"]
       77 GETIMPORT                        R2 K23 [Enum.InputActionType.ViewportPosition]
       79 JUMPIFNOTEQ                      R1 R2 ; [+6]
       81 GETUPVAL                         R1 4
       82 GETIMPORT                        R2 K17 [Vector2.new]
       84 CALL                             R2 0 -1
       85 CALL                             R1 -1 0
       86 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useState"]
       17 LOADNIL                          R4
       18 CALL                             R3 1 2
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R7 0 0
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R5
       36 CAPTURE                          UPVAL U3
       37 NEWTABLE                         R8 0 4
       39 MOVE                             R9 R0
       40 MOVE                             R10 R1
       41 MOVE                             R11 R2
       42 MOVE                             R12 R5
       43 SETLIST                          R8 R9 4 [1]
       45 CALL                             R6 2 0
       46 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["DatamodelConfiguration"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K12 ["InputConfiguration"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R0 K8 ["Src"]
       41 GETTABLEKS                       R5 R5 K13 ["Flags"]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R5 K14 ["getFFlagIAMViewportPositionType"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K15 [PROTO_2]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 RETURN                           R7 1
