PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+23]
        3 JUMPIFNOTEQKS                    R2 K0 ["Touch"] ; [+32]
        5 JUMPIFNOTEQKS                    R1 K1 ["keyCode"] ; [+9]
        7 GETTABLEKS                       R3 R0 K2 ["uiButton"]
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETTABLEKS                       R3 R0 K2 ["uiButton"]
       12 GETTABLEKS                       R3 R3 K3 ["uuid"]
       14 RETURN                           R3 1
       15 JUMPIFNOTEQKS                    R1 K4 ["primaryModifier"] ; [+20]
       17 GETTABLEKS                       R3 R0 K5 ["uiModifier"]
       19 JUMPIFNOT                        R3 ; [+16]
       20 GETTABLEKS                       R3 R0 K5 ["uiModifier"]
       22 GETTABLEKS                       R3 R3 K3 ["uuid"]
       24 RETURN                           R3 1
       25 JUMP                             ; [+10]
       26 JUMPIFNOTEQKS                    R2 K0 ["Touch"] ; [+9]
       28 GETTABLEKS                       R3 R0 K2 ["uiButton"]
       30 JUMPIFNOT                        R3 ; [+5]
       31 GETTABLEKS                       R3 R0 K2 ["uiButton"]
       33 GETTABLEKS                       R3 R3 K3 ["uuid"]
       35 RETURN                           R3 1
       36 GETTABLE                         R3 R0 R1
       37 JUMPIFNOT                        R3 ; [+4]
       38 GETIMPORT                        R4 K9 [Enum.KeyCode.Unknown]
       40 JUMPIFNOTEQ                      R3 R4 ; [+3]
       42 LOADNIL                          R4
       43 RETURN                           R4 1
       44 RETURN                           R3 1

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
       14 GETTABLEKS                       R2 R0 K6 ["Src"]
       16 GETTABLEKS                       R2 R2 K8 ["Flags"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K9 ["getFFlagIAMUIModifier"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 RETURN                           R4 1
