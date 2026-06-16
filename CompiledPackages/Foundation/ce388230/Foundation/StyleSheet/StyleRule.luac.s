PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+7]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["properties"]
        5 NAMECALL                         R1 R0 K1 ["SetProperties"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["properties"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["createElement"]
       15 LOADK                            R3 K3 ["StyleRule"]
       16 DUPTABLE                         R4 K7 [{"Priority", "Selector", "ref"}]
       17 GETTABLEKS                       R6 R0 K4 ["Priority"]
       19 ORK                              R5 R6 K8 [1]
       20 SETTABLEKS                       R5 R4 K4 ["Priority"]
       22 GETTABLEKS                       R5 R0 K5 ["Selector"]
       24 SETTABLEKS                       R5 R4 K5 ["Selector"]
       26 SETTABLEKS                       R1 R4 K6 ["ref"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

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
       14 DUPCLOSURE                       R3 K8 [PROTO_1]
       15 CAPTURE                          VAL R2
       16 GETTABLEKS                       R4 R2 K9 ["memo"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 -1
       20 RETURN                           R4 -1
