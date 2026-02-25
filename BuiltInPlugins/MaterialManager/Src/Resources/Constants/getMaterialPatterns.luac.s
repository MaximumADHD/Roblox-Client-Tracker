PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R3 K6 ["Types"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 0 2
       20 GETIMPORT                        R3 K10 [Enum.MaterialPattern.Regular]
       22 GETIMPORT                        R4 K12 [Enum.MaterialPattern.Organic]
       24 SETLIST                          R2 R3 2 [1]
       26 DUPCLOSURE                       R3 K13 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
