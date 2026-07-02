PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["keyCode"] ; [+9]
        2 JUMPIFNOTEQKS                    R1 K1 ["Touch"] ; [+7]
        4 GETIMPORT                        R4 K5 [Enum.InputActionType.Bool]
        6 JUMPIFNOTEQ                      R2 R4 ; [+3]
        8 LOADK                            R4 K6 ["Instance"]
        9 RETURN                           R4 1
       10 GETIMPORT                        R4 K5 [Enum.InputActionType.Bool]
       12 JUMPIFEQ                         R2 R4 ; [+5]
       14 JUMPIFNOTEQKS                    R1 K1 ["Touch"] ; [+3]
       16 LOADK                            R4 K7 ["Dropdown"]
       17 RETURN                           R4 1
       18 JUMPIFNOTEQKS                    R0 K0 ["keyCode"] ; [+5]
       20 JUMPIFEQKS                       R1 K1 ["Touch"] ; [+3]
       22 LOADK                            R4 K7 ["Dropdown"]
       23 RETURN                           R4 1
       24 GETIMPORT                        R4 K10 [table.find]
       26 GETUPVAL                         R5 0
       27 MOVE                             R6 R0
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+4]
       30 JUMPIFEQKS                       R1 K1 ["Touch"] ; [+3]
       32 LOADK                            R4 K7 ["Dropdown"]
       33 RETURN                           R4 1
       34 JUMPIFNOT                        R3 ; [+21]
       35 GETUPVAL                         R4 1
       36 MOVE                             R5 R3
       37 CALL                             R4 1 1
       38 JUMPIFNOTEQKS                    R0 K11 ["primaryModifier"] ; [+4]
       40 JUMPIF                           R4 ; [+2]
       41 LOADNIL                          R5
       42 RETURN                           R5 1
       43 JUMPIFNOTEQKS                    R0 K12 ["secondaryModifier"] ; [+9]
       45 GETTABLEKS                       R5 R3 K11 ["primaryModifier"]
       47 GETIMPORT                        R6 K15 [Enum.KeyCode.Unknown]
       49 JUMPIFNOTEQ                      R5 R6 ; [+3]
       51 LOADNIL                          R5
       52 RETURN                           R5 1
       53 JUMPIFNOT                        R4 ; [+2]
       54 LOADK                            R5 K7 ["Dropdown"]
       55 RETURN                           R5 1
       56 LOADNIL                          R4
       57 RETURN                           R4 1

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
