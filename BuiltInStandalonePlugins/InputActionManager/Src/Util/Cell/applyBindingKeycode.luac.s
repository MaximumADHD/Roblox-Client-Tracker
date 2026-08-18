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
       15 JUMP                             ; [+39]
       16 GETIMPORT                        R3 K6 [Enum.KeyCode.Unknown]
       18 JUMPIFNOTEQ                      R2 R3 ; [+3]
       20 LOADB                            R3 0
       21 RETURN                           R3 1
       22 DUPTABLE                         R3 K9 [{"name", "parentUuid"}]
       23 LOADK                            R5 K10 ["%*%*"]
       24 GETTABLEKS                       R7 R1 K11 ["action"]
       26 GETTABLEKS                       R7 R7 K7 ["name"]
       28 GETTABLEKS                       R8 R1 K12 ["schema"]
       30 NAMECALL                         R5 R5 K13 ["format"]
       32 CALL                             R5 3 1
       33 MOVE                             R4 R5
       34 SETTABLEKS                       R4 R3 K7 ["name"]
       36 GETTABLEKS                       R4 R1 K11 ["action"]
       38 GETTABLEKS                       R4 R4 K2 ["uuid"]
       40 SETTABLEKS                       R4 R3 K8 ["parentUuid"]
       42 GETTABLEKS                       R4 R1 K1 ["property"]
       44 SETTABLE                         R2 R3 R4
       45 MOVE                             R4 R0
       46 LOADNIL                          R5
       47 MOVE                             R6 R3
       48 CALL                             R4 2 0
       49 GETTABLEKS                       R4 R1 K14 ["onCreated"]
       51 JUMPIFNOT                        R4 ; [+3]
       52 GETTABLEKS                       R4 R1 K14 ["onCreated"]
       54 CALL                             R4 0 0
       55 LOADB                            R3 1
       56 RETURN                           R3 1

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
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
