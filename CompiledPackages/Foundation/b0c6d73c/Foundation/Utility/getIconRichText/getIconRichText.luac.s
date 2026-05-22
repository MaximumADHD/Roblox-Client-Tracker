PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+3]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Regular"]
        5 GETUPVAL                         R4 1
        6 GETTABLE                         R3 R4 R2
        7 LOADK                            R5 K1 ["<font family=\"%*\" weight=\"%*\">%*</font>"]
        8 GETTABLEKS                       R7 R3 K2 ["Family"]
       10 GETTABLEKS                       R8 R3 K3 ["Weight"]
       12 GETTABLEKS                       R8 R8 K4 ["Value"]
       14 MOVE                             R9 R0
       15 NAMECALL                         R5 R5 K5 ["format"]
       17 CALL                             R5 4 1
       18 MOVE                             R4 R5
       19 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["Font"]
       16 GETTABLEKS                       R4 R2 K9 ["IconVariant"]
       18 DUPCLOSURE                       R5 K10 [PROTO_0]
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R3
       21 RETURN                           R5 1
