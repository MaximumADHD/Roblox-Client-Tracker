PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Pressed"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 LOADK                            R1 K1 ["Press"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["SelectedPressed"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+3]
       12 LOADK                            R1 K1 ["Press"]
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["Hover"]
       17 JUMPIFNOTEQ                      R0 R1 ; [+3]
       19 LOADK                            R1 K3 ["Hover"]
       20 RETURN                           R1 1
       21 LOADK                            R1 K4 ["Idle"]
       22 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Default"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["Color"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["Inverse"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K2 ["Inverse"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K3 ["Light"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K4 ["LightMode"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K5 ["Dark"]
       30 JUMPIFNOTEQ                      R0 R1 ; [+5]
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K6 ["DarkMode"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K1 ["Color"]
       39 RETURN                           R1 1

PROTO_2:
        0 GETGLOBAL                        R3 K0 ["stateLayerModeToTokenNamespace"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["FoundationBindableStateLayer"]
        5 JUMPIFNOT                        R5 ; [+2]
        6 MOVE                             R4 R1
        7 JUMP                             ; [+4]
        8 MOVE                             R4 R1
        9 JUMPIFNOT                        R4 ; [+2]
       10 GETTABLEKS                       R4 R1 K2 ["mode"]
       12 CALL                             R3 1 1
       13 GETGLOBAL                        R4 K3 ["guiStateToStateLayer"]
       15 MOVE                             R5 R2
       16 CALL                             R4 1 1
       17 GETTABLE                         R6 R0 R3
       18 GETTABLEKS                       R6 R6 K4 ["State"]
       20 GETTABLE                         R5 R6 R4
       21 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Providers"]
       11 GETTABLEKS                       R2 R2 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["Tokens"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Enums"]
       27 GETTABLEKS                       R4 R4 K12 ["ColorMode"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Enums"]
       34 GETTABLEKS                       R5 R5 K13 ["StateLayerMode"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Enums"]
       41 GETTABLEKS                       R6 R6 K14 ["ControlState"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Utility"]
       48 GETTABLEKS                       R7 R7 K16 ["Flags"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K17 [PROTO_0]
       52 CAPTURE                          VAL R5
       53 SETGLOBAL                        R7 K18 ["guiStateToStateLayer"]
       55 DUPCLOSURE                       R7 K19 [PROTO_1]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 SETGLOBAL                        R7 K20 ["stateLayerModeToTokenNamespace"]
       60 DUPCLOSURE                       R7 K21 [PROTO_2]
       61 CAPTURE                          VAL R6
       62 RETURN                           R7 1
