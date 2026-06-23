PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K0 ["GetImageForKeyCode"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+17]
       13 JUMPIFEQKS                       R2 K1 [""] ; [+16]
       15 DUPTABLE                         R3 K5 [{"keyVisualType", "size", "key"}]
       16 LOADK                            R4 K6 ["Image"]
       17 SETTABLEKS                       R4 R3 K2 ["keyVisualType"]
       19 GETIMPORT                        R4 K9 [UDim2.fromScale]
       21 LOADK                            R5 K10 [0.7]
       22 LOADK                            R6 K10 [0.7]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K3 ["size"]
       26 SETTABLEKS                       R2 R3 K4 ["key"]
       28 MOVE                             R1 R3
       29 RETURN                           R1 1
       30 GETUPVAL                         R3 1
       31 MOVE                             R5 R0
       32 NAMECALL                         R3 R3 K11 ["GetStringForKeyCode"]
       34 CALL                             R3 2 1
       35 MOVE                             R2 R3
       36 DUPTABLE                         R3 K5 [{"keyVisualType", "size", "key"}]
       37 LOADK                            R4 K12 ["String"]
       38 SETTABLEKS                       R4 R3 K2 ["keyVisualType"]
       40 GETIMPORT                        R4 K9 [UDim2.fromScale]
       42 LOADK                            R5 K13 [0.8]
       43 LOADK                            R6 K13 [0.8]
       44 CALL                             R4 2 1
       45 SETTABLEKS                       R4 R3 K3 ["size"]
       47 ORK                              R4 R2 K1 [""]
       48 SETTABLEKS                       R4 R3 K4 ["key"]
       50 MOVE                             R1 R3
       51 GETUPVAL                         R3 0
       52 SETTABLE                         R1 R3 R0
       53 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Wrappers"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K8 ["Services"]
       16 GETTABLEKS                       R1 R1 K9 ["UserInputService"]
       18 NEWTABLE                         R2 0 0
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
