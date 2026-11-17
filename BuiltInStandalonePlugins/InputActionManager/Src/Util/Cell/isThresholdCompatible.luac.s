PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 GETIMPORT                        R3 K4 [Enum.InputActionType.Bool]
        4 JUMPIFEQ                         R2 R3 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K5 ["keyCode"]
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R1 K5 ["keyCode"]
       14 GETTABLE                         R2 R3 R4
       15 GETTABLEKS                       R3 R1 K6 ["primaryModifier"]
       17 JUMPIFNOT                        R3 ; [+4]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R5 R1 K6 ["primaryModifier"]
       21 GETTABLE                         R3 R4 R5
       22 GETTABLEKS                       R4 R1 K7 ["secondaryModifier"]
       24 JUMPIFNOT                        R4 ; [+4]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R6 R1 K7 ["secondaryModifier"]
       28 GETTABLE                         R4 R5 R6
       29 MOVE                             R5 R2
       30 JUMPIF                           R5 ; [+3]
       31 MOVE                             R5 R3
       32 JUMPIF                           R5 ; [+1]
       33 MOVE                             R5 R4
       34 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 GETIMPORT                        R3 K11 [Enum.KeyCode.Thumbstick1Up]
       18 LOADB                            R4 1
       19 SETTABLE                         R4 R2 R3
       20 GETIMPORT                        R3 K13 [Enum.KeyCode.Thumbstick1Down]
       22 LOADB                            R4 1
       23 SETTABLE                         R4 R2 R3
       24 GETIMPORT                        R3 K15 [Enum.KeyCode.Thumbstick1Left]
       26 LOADB                            R4 1
       27 SETTABLE                         R4 R2 R3
       28 GETIMPORT                        R3 K17 [Enum.KeyCode.Thumbstick1Right]
       30 LOADB                            R4 1
       31 SETTABLE                         R4 R2 R3
       32 GETIMPORT                        R3 K19 [Enum.KeyCode.Thumbstick2Up]
       34 LOADB                            R4 1
       35 SETTABLE                         R4 R2 R3
       36 GETIMPORT                        R3 K21 [Enum.KeyCode.Thumbstick2Down]
       38 LOADB                            R4 1
       39 SETTABLE                         R4 R2 R3
       40 GETIMPORT                        R3 K23 [Enum.KeyCode.Thumbstick2Left]
       42 LOADB                            R4 1
       43 SETTABLE                         R4 R2 R3
       44 GETIMPORT                        R3 K25 [Enum.KeyCode.Thumbstick2Right]
       46 LOADB                            R4 1
       47 SETTABLE                         R4 R2 R3
       48 GETIMPORT                        R3 K27 [Enum.KeyCode.ButtonUp]
       50 LOADB                            R4 1
       51 SETTABLE                         R4 R2 R3
       52 GETIMPORT                        R3 K29 [Enum.KeyCode.ButtonDown]
       54 LOADB                            R4 1
       55 SETTABLE                         R4 R2 R3
       56 GETIMPORT                        R3 K31 [Enum.KeyCode.ButtonLeft]
       58 LOADB                            R4 1
       59 SETTABLE                         R4 R2 R3
       60 GETIMPORT                        R3 K33 [Enum.KeyCode.ButtonRight]
       62 LOADB                            R4 1
       63 SETTABLE                         R4 R2 R3
       64 GETIMPORT                        R3 K35 [Enum.KeyCode.ButtonL2]
       66 LOADB                            R4 1
       67 SETTABLE                         R4 R2 R3
       68 GETIMPORT                        R3 K37 [Enum.KeyCode.ButtonR2]
       70 LOADB                            R4 1
       71 SETTABLE                         R4 R2 R3
       72 DUPCLOSURE                       R3 K38 [PROTO_0]
       73 CAPTURE                          VAL R2
       74 RETURN                           R3 1
