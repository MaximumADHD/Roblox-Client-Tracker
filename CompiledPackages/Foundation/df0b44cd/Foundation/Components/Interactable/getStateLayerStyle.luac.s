PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Pressed"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 LOADK                            R1 K1 ["Press"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["SelectedPressed"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+3]
       12 LOADK                            R1 K1 ["Press"]
       13 RETURN                           R1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["Hover"]
       17 JUMPIFNOTEQ                      R0 R1 ; [+3]
       19 LOADK                            R1 K3 ["Hover"]
       20 RETURN                           R1 1
       21 LOADK                            R1 K4 ["Idle"]
       22 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Default"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["Color"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["Inverse"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K2 ["Inverse"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K3 ["Light"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K4 ["LightMode"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R1 R2 K5 ["Dark"]
       30 JUMPIFNOTEQ                      R0 R1 ; [+5]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R1 R2 K6 ["DarkMode"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R1 R2 K1 ["Color"]
       39 RETURN                           R1 1

PROTO_2:
        0 GETGLOBAL                        R3 K0 ["stateLayerModeToTokenNamespace"]
        2 MOVE                             R4 R1
        3 JUMPIFNOT                        R4 ; [+2]
        4 GETTABLEKS                       R4 R1 K1 ["mode"]
        6 CALL                             R3 1 1
        7 GETGLOBAL                        R4 K2 ["guiStateToStateLayer"]
        9 MOVE                             R5 R2
       10 CALL                             R4 1 1
       11 GETTABLE                         R7 R0 R3
       12 GETTABLEKS                       R6 R7 K3 ["State"]
       14 GETTABLE                         R5 R6 R4
       15 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Providers"]
       11 GETTABLEKS                       R3 R4 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["Tokens"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Components"]
       20 GETTABLEKS                       R3 R4 K10 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Enums"]
       27 GETTABLEKS                       R4 R5 K12 ["ColorMode"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Enums"]
       34 GETTABLEKS                       R5 R6 K13 ["StateLayerMode"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K11 ["Enums"]
       41 GETTABLEKS                       R6 R7 K14 ["ControlState"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_0]
       45 CAPTURE                          VAL R5
       46 SETGLOBAL                        R6 K16 ["guiStateToStateLayer"]
       48 DUPCLOSURE                       R6 K17 [PROTO_1]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 SETGLOBAL                        R6 K18 ["stateLayerModeToTokenNamespace"]
       53 DUPCLOSURE                       R6 K19 [PROTO_2]
       54 RETURN                           R6 1
