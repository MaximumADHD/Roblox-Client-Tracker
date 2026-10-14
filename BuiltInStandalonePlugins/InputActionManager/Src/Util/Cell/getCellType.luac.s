PROTO_0:
        0 GETIMPORT                        R4 K3 [Enum.InputActionType.Bool]
        2 JUMPIFNOTEQ                      R2 R4 ; [+12]
        4 JUMPIFNOTEQKS                    R1 K4 ["Touch"] ; [+10]
        6 JUMPIFEQKS                       R0 K5 ["keyCode"] ; [+4]
        8 JUMPIFNOT                        R3 ; [+4]
        9 JUMPIFNOTEQKS                    R0 K6 ["primaryModifier"] ; [+3]
       11 LOADK                            R4 K7 ["Instance"]
       12 RETURN                           R4 1
       13 LOADNIL                          R4
       14 RETURN                           R4 1
       15 GETIMPORT                        R4 K3 [Enum.InputActionType.Bool]
       17 JUMPIFEQ                         R2 R4 ; [+5]
       19 JUMPIFNOTEQKS                    R1 K4 ["Touch"] ; [+3]
       21 LOADK                            R4 K8 ["Dropdown"]
       22 RETURN                           R4 1
       23 JUMPIFNOTEQKS                    R0 K5 ["keyCode"] ; [+5]
       25 JUMPIFEQKS                       R1 K4 ["Touch"] ; [+3]
       27 LOADK                            R4 K8 ["Dropdown"]
       28 RETURN                           R4 1
       29 GETIMPORT                        R4 K11 [table.find]
       31 GETUPVAL                         R5 0
       32 MOVE                             R6 R0
       33 CALL                             R4 2 1
       34 JUMPIFNOT                        R4 ; [+4]
       35 JUMPIFEQKS                       R1 K4 ["Touch"] ; [+3]
       37 LOADK                            R4 K8 ["Dropdown"]
       38 RETURN                           R4 1
       39 JUMPIFNOT                        R3 ; [+21]
       40 GETUPVAL                         R4 1
       41 MOVE                             R5 R3
       42 CALL                             R4 1 1
       43 JUMPIFNOTEQKS                    R0 K6 ["primaryModifier"] ; [+4]
       45 JUMPIF                           R4 ; [+2]
       46 LOADNIL                          R5
       47 RETURN                           R5 1
       48 JUMPIFNOTEQKS                    R0 K12 ["secondaryModifier"] ; [+9]
       50 GETTABLEKS                       R5 R3 K6 ["primaryModifier"]
       52 GETIMPORT                        R6 K15 [Enum.KeyCode.None]
       54 JUMPIFNOTEQ                      R5 R6 ; [+3]
       56 LOADNIL                          R5
       57 RETURN                           R5 1
       58 JUMPIFNOT                        R4 ; [+2]
       59 LOADK                            R5 K8 ["Dropdown"]
       60 RETURN                           R5 1
       61 LOADNIL                          R4
       62 RETURN                           R4 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["isValidBinding"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Constants"]
       31 GETTABLEKS                       R4 R4 K12 ["CompositeProperties"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K13 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 RETURN                           R4 1
