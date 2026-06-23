PROTO_0:
        0 PREPVARARGS                      3
        1 GETTABLE                         R3 R0 R1
        2 JUMPIF                           R3 ; [+5]
        3 MOVE                             R4 R2
        4 GETVARARGS                       R5 -1
        5 CALL                             R4 -1 1
        6 MOVE                             R3 R4
        7 SETTABLE                         R3 R0 R1
        8 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 JUMPIFEQ                         R3 R2 ; [+10]
        5 GETIMPORT                        R3 K3 [table.clear]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K0 ["current"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R2 R3 K0 ["current"]
       14 GETGLOBAL                        R3 K4 ["getOrSet"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K0 ["current"]
       19 MOVE                             R5 R0
       20 MOVE                             R6 R1
       21 MOVE                             R7 R2
       22 CALL                             R3 4 -1
       23 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useRef"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["useRef"]
        9 LOADNIL                          R2
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["useCallback"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R4 0 0
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+5]
        7 GETIMPORT                        R4 K2 [error]
        9 LOADK                            R5 K3 ["VariantsContext hasn't been instantiated"]
       10 CALL                             R4 1 0
       11 MOVE                             R4 R3
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 CALL                             R4 3 -1
       16 RETURN                           R4 -1

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
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 SETGLOBAL                        R3 K9 ["getOrSet"]
       17 DUPCLOSURE                       R3 K10 [PROTO_2]
       18 CAPTURE                          VAL R2
       19 SETGLOBAL                        R3 K11 ["useVariantsState"]
       21 GETTABLEKS                       R3 R2 K12 ["createContext"]
       23 LOADNIL                          R4
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K13 [PROTO_3]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 SETGLOBAL                        R4 K14 ["useVariants"]
       30 DUPTABLE                         R4 K16 [{"useVariants", "useVariantsState", "Provider"}]
       31 GETGLOBAL                        R5 K14 ["useVariants"]
       33 SETTABLEKS                       R5 R4 K14 ["useVariants"]
       35 GETGLOBAL                        R5 K11 ["useVariantsState"]
       37 SETTABLEKS                       R5 R4 K11 ["useVariantsState"]
       39 GETTABLEKS                       R5 R3 K15 ["Provider"]
       41 SETTABLEKS                       R5 R4 K15 ["Provider"]
       43 RETURN                           R4 1
