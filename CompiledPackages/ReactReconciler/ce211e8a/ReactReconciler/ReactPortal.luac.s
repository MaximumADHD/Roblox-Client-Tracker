PROTO_0:
        0 JUMPIFEQKNIL                     R3 ; [+7]
        2 FASTCALL1                        TOSTRING R3 ; [+3]
        3 MOVE                             R5 R3
        4 GETIMPORT                        R4 K1 [tostring]
        6 CALL                             R4 1 1
        7 MOVE                             R3 R4
        8 NEWTABLE                         R4 8 0
       10 GETUPVAL                         R5 0
       11 SETTABLEKS                       R5 R4 K2 ["$$typeof"]
       13 SETTABLEKS                       R3 R4 K3 ["key"]
       15 SETTABLEKS                       R0 R4 K4 ["children"]
       17 SETTABLEKS                       R1 R4 K5 ["containerInfo"]
       19 SETTABLEKS                       R2 R4 K6 ["implementation"]
       21 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R3 K4 [require]
        9 GETTABLEKS                       R4 R0 K5 ["Shared"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R2 R3 K6 ["ReactSymbols"]
       14 GETTABLEKS                       R1 R2 K7 ["REACT_PORTAL_TYPE"]
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Shared"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K8 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 DUPTABLE                         R4 K10 [{"createPortal"}]
       24 SETTABLEKS                       R3 R4 K9 ["createPortal"]
       26 RETURN                           R4 1
