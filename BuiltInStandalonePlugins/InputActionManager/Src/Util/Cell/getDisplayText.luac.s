PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Instance"] ; [+5]
        2 JUMPIFNOT                        R3 ; [+3]
        3 JUMPIFEQKS                       R3 K1 [""] ; [+2]
        5 RETURN                           R3 1
        6 JUMPIFNOTEQKS                    R0 K2 ["Dropdown"] ; [+20]
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETTABLE                         R4 R1 R2
       10 JUMPIFNOT                        R4 ; [+16]
       11 GETIMPORT                        R5 K6 [Enum.KeyCode.Unknown]
       13 JUMPIFEQ                         R4 R5 ; [+13]
       15 GETUPVAL                         R5 0
       16 CALL                             R5 0 1
       17 JUMPIFNOT                        R5 ; [+6]
       18 GETUPVAL                         R6 1
       19 GETTABLE                         R5 R6 R4
       20 JUMPIF                           R5 ; [+2]
       21 GETTABLEKS                       R5 R4 K7 ["Name"]
       23 RETURN                           R5 1
       24 GETTABLEKS                       R5 R4 K7 ["Name"]
       26 RETURN                           R5 1
       27 LOADK                            R4 K8 ["None"]
       28 RETURN                           R4 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 GETTABLEKS                       R3 R3 K10 ["KeycodeStrings"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R0 K6 ["Src"]
       27 GETTABLEKS                       R3 R3 K11 ["Flags"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R3 K12 ["getFFlagIAMDropdownStabilityImprovements"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K13 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
