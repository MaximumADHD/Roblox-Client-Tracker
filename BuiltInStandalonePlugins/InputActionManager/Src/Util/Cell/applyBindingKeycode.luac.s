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
       15 JUMP                             ; [+42]
       16 GETUPVAL                         R3 0
       17 CALL                             R3 0 1
       18 JUMPIFNOT                        R3 ; [+6]
       19 GETIMPORT                        R3 K6 [Enum.KeyCode.Unknown]
       21 JUMPIFNOTEQ                      R2 R3 ; [+3]
       23 LOADB                            R3 0
       24 RETURN                           R3 1
       25 DUPTABLE                         R3 K9 [{"name", "parentUuid"}]
       26 LOADK                            R5 K10 ["%*%*"]
       27 GETTABLEKS                       R7 R1 K11 ["action"]
       29 GETTABLEKS                       R7 R7 K7 ["name"]
       31 GETTABLEKS                       R8 R1 K12 ["schema"]
       33 NAMECALL                         R5 R5 K13 ["format"]
       35 CALL                             R5 3 1
       36 MOVE                             R4 R5
       37 SETTABLEKS                       R4 R3 K7 ["name"]
       39 GETTABLEKS                       R4 R1 K11 ["action"]
       41 GETTABLEKS                       R4 R4 K2 ["uuid"]
       43 SETTABLEKS                       R4 R3 K8 ["parentUuid"]
       45 GETTABLEKS                       R4 R1 K1 ["property"]
       47 SETTABLE                         R2 R3 R4
       48 MOVE                             R4 R0
       49 LOADNIL                          R5
       50 MOVE                             R6 R3
       51 CALL                             R4 2 0
       52 GETTABLEKS                       R4 R1 K14 ["onCreated"]
       54 JUMPIFNOT                        R4 ; [+3]
       55 GETTABLEKS                       R4 R1 K14 ["onCreated"]
       57 CALL                             R4 0 0
       58 LOADB                            R3 1
       59 RETURN                           R3 1

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
