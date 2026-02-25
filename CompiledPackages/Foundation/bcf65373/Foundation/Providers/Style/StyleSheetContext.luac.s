PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 2
        6 JUMPIFNOTEQ                      R0 R2 ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 MOVE                             R1 R0
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Cryo"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Utility"]
       28 GETTABLEKS                       R6 R7 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R7 R5 K12 ["FoundationMigrateCryoToDash"]
       33 JUMPIFNOT                        R7 ; [+3]
       34 GETTABLEKS                       R6 R4 K13 ["None"]
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R6 R3 K13 ["None"]
       39 GETTABLEKS                       R7 R2 K14 ["createContext"]
       41 MOVE                             R8 R6
       42 CALL                             R7 1 1
       43 DUPCLOSURE                       R8 K15 [PROTO_0]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R6
       47 DUPTABLE                         R9 K18 [{"Provider", "useStyleSheet"}]
       48 GETTABLEKS                       R10 R7 K16 ["Provider"]
       50 SETTABLEKS                       R10 R9 K16 ["Provider"]
       52 SETTABLEKS                       R8 R9 K17 ["useStyleSheet"]
       54 RETURN                           R9 1
