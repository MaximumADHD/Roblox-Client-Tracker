PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["None"]
        8 JUMPIFNOTEQ                      R0 R2 ; [+3]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 MOVE                             R1 R0
       13 RETURN                           R1 1

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
       19 GETTABLEKS                       R4 R2 K9 ["createContext"]
       21 GETTABLEKS                       R5 R3 K10 ["None"]
       23 CALL                             R4 1 1
       24 DUPCLOSURE                       R5 K11 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R3
       28 DUPTABLE                         R6 K14 [{"Provider", "useStyleSheet"}]
       29 GETTABLEKS                       R7 R4 K12 ["Provider"]
       31 SETTABLEKS                       R7 R6 K12 ["Provider"]
       33 SETTABLEKS                       R5 R6 K13 ["useStyleSheet"]
       35 RETURN                           R6 1
