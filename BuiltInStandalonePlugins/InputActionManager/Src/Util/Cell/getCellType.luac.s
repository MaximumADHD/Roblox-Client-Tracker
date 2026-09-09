PROTO_0:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+16]
        3 GETIMPORT                        R4 K3 [Enum.InputActionType.Bool]
        5 JUMPIFNOTEQ                      R2 R4 ; [+23]
        7 JUMPIFNOTEQKS                    R1 K4 ["Touch"] ; [+21]
        9 JUMPIFEQKS                       R0 K5 ["keyCode"] ; [+4]
       11 JUMPIFNOT                        R3 ; [+4]
       12 JUMPIFNOTEQKS                    R0 K6 ["primaryModifier"] ; [+3]
       14 LOADK                            R4 K7 ["Instance"]
       15 RETURN                           R4 1
       16 LOADNIL                          R4
       17 RETURN                           R4 1
       18 JUMP                             ; [+10]
       19 JUMPIFNOTEQKS                    R0 K5 ["keyCode"] ; [+9]
       21 JUMPIFNOTEQKS                    R1 K4 ["Touch"] ; [+7]
       23 GETIMPORT                        R4 K3 [Enum.InputActionType.Bool]
       25 JUMPIFNOTEQ                      R2 R4 ; [+3]
       27 LOADK                            R4 K7 ["Instance"]
       28 RETURN                           R4 1
       29 GETIMPORT                        R4 K3 [Enum.InputActionType.Bool]
       31 JUMPIFEQ                         R2 R4 ; [+5]
       33 JUMPIFNOTEQKS                    R1 K4 ["Touch"] ; [+3]
       35 LOADK                            R4 K8 ["Dropdown"]
       36 RETURN                           R4 1
       37 JUMPIFNOTEQKS                    R0 K5 ["keyCode"] ; [+5]
       39 JUMPIFEQKS                       R1 K4 ["Touch"] ; [+3]
       41 LOADK                            R4 K8 ["Dropdown"]
       42 RETURN                           R4 1
       43 GETIMPORT                        R4 K11 [table.find]
       45 GETUPVAL                         R5 1
       46 MOVE                             R6 R0
       47 CALL                             R4 2 1
       48 JUMPIFNOT                        R4 ; [+4]
       49 JUMPIFEQKS                       R1 K4 ["Touch"] ; [+3]
       51 LOADK                            R4 K8 ["Dropdown"]
       52 RETURN                           R4 1
       53 JUMPIFNOT                        R3 ; [+21]
       54 GETUPVAL                         R4 2
       55 MOVE                             R5 R3
       56 CALL                             R4 1 1
       57 JUMPIFNOTEQKS                    R0 K6 ["primaryModifier"] ; [+4]
       59 JUMPIF                           R4 ; [+2]
       60 LOADNIL                          R5
       61 RETURN                           R5 1
       62 JUMPIFNOTEQKS                    R0 K12 ["secondaryModifier"] ; [+9]
       64 GETTABLEKS                       R5 R3 K6 ["primaryModifier"]
       66 GETIMPORT                        R6 K15 [Enum.KeyCode.None]
       68 JUMPIFNOTEQ                      R5 R6 ; [+3]
       70 LOADNIL                          R5
       71 RETURN                           R5 1
       72 JUMPIFNOT                        R4 ; [+2]
       73 LOADK                            R5 K8 ["Dropdown"]
       74 RETURN                           R5 1
       75 LOADNIL                          R4
       76 RETURN                           R4 1

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
       34 GETTABLEKS                       R4 R0 K6 ["Src"]
       36 GETTABLEKS                       R4 R4 K13 ["Flags"]
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R4 K14 ["getFFlagIAMUIModifier"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K15 [PROTO_0]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
