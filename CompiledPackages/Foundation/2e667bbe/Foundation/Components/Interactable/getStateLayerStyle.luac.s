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
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 LOADK                            R1 K1 ["Color"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["Inverse"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+3]
       12 LOADK                            R1 K2 ["Inverse"]
       13 RETURN                           R1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["Light"]
       17 JUMPIFNOTEQ                      R0 R1 ; [+3]
       19 LOADK                            R1 K4 ["LightMode"]
       20 RETURN                           R1 1
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K5 ["Dark"]
       24 JUMPIFNOTEQ                      R0 R1 ; [+3]
       26 LOADK                            R1 K6 ["DarkMode"]
       27 RETURN                           R1 1
       28 LOADK                            R1 K1 ["Color"]
       29 RETURN                           R1 1

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
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R5 K9 ["Style"]
       20 GETTABLEKS                       R3 R4 K10 ["Tokens"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Enums"]
       27 GETTABLEKS                       R4 R5 K12 ["StateLayerMode"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Enums"]
       34 GETTABLEKS                       R5 R6 K13 ["ControlState"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K14 [PROTO_0]
       38 CAPTURE                          VAL R4
       39 SETGLOBAL                        R5 K15 ["guiStateToStateLayer"]
       41 DUPCLOSURE                       R5 K16 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 SETGLOBAL                        R5 K17 ["stateLayerModeToTokenNamespace"]
       45 DUPCLOSURE                       R5 K18 [PROTO_2]
       46 RETURN                           R5 1
