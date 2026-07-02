PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["binding"]
        2 JUMPIFNOT                        R3 ; [+13]
        3 NEWTABLE                         R3 0 0
        5 GETTABLEKS                       R4 R1 K1 ["property"]
        7 SETTABLE                         R2 R3 R4
        8 MOVE                             R4 R0
        9 GETTABLEKS                       R5 R1 K0 ["binding"]
       11 GETTABLEKS                       R5 R5 K2 ["uuid"]
       13 MOVE                             R6 R3
       14 CALL                             R4 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 CALL                             R3 0 1
       18 JUMPIFNOT                        R3 ; [+5]
       19 GETIMPORT                        R3 K6 [Enum.KeyCode.Unknown]
       21 JUMPIFNOTEQ                      R2 R3 ; [+2]
       23 RETURN                           R0 0
       24 DUPTABLE                         R3 K9 [{"name", "parentUuid"}]
       25 LOADK                            R5 K10 ["%*%*"]
       26 GETTABLEKS                       R7 R1 K11 ["action"]
       28 GETTABLEKS                       R7 R7 K7 ["name"]
       30 GETTABLEKS                       R8 R1 K12 ["schema"]
       32 NAMECALL                         R5 R5 K13 ["format"]
       34 CALL                             R5 3 1
       35 MOVE                             R4 R5
       36 SETTABLEKS                       R4 R3 K7 ["name"]
       38 GETTABLEKS                       R4 R1 K11 ["action"]
       40 GETTABLEKS                       R4 R4 K2 ["uuid"]
       42 SETTABLEKS                       R4 R3 K8 ["parentUuid"]
       44 GETTABLEKS                       R4 R1 K1 ["property"]
       46 SETTABLE                         R2 R3 R4
       47 MOVE                             R4 R0
       48 LOADNIL                          R5
       49 MOVE                             R6 R3
       50 CALL                             R4 2 0
       51 GETTABLEKS                       R4 R1 K14 ["onCreated"]
       53 JUMPIFNOT                        R4 ; [+3]
       54 GETTABLEKS                       R4 R1 K14 ["onCreated"]
       56 CALL                             R4 0 0
       57 RETURN                           R0 0

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
       20 GETTABLEKS                       R4 R2 K9 ["getFFlagIAMDropdownStabilityImprovements"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 RETURN                           R4 1
