PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["checkFlagEnabledForAllowHrd"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K1 ["CFrame"]
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K1 ["CFrame"]
       10 GETTABLEKS                       R2 R0 K2 ["Parent"]
       12 JUMPIFNOT                        R2 ; [+11]
       13 LOADK                            R5 K3 ["Attachment"]
       14 NAMECALL                         R3 R2 K4 ["IsA"]
       16 CALL                             R3 2 1
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETTABLEKS                       R3 R2 K1 ["CFrame"]
       20 MUL                              R1 R3 R1
       21 GETTABLEKS                       R2 R2 K2 ["Parent"]
       23 JUMPBACK                         ; [-12]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["R15plusUtils"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
