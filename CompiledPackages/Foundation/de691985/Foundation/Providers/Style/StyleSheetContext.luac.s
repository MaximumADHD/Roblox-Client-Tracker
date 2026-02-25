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
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["None"]
       21 GETTABLEKS                       R5 R3 K10 ["createContext"]
       23 MOVE                             R6 R4
       24 CALL                             R5 1 1
       25 DUPCLOSURE                       R6 K11 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R4
       29 DUPTABLE                         R7 K14 [{"Provider", "useStyleSheet"}]
       30 GETTABLEKS                       R8 R5 K12 ["Provider"]
       32 SETTABLEKS                       R8 R7 K12 ["Provider"]
       34 SETTABLEKS                       R6 R7 K13 ["useStyleSheet"]
       36 RETURN                           R7 1
