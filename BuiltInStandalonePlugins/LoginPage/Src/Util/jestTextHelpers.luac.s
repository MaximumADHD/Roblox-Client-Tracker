PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["TextLabel"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIF                           R7 ; [+5]
        9 LOADK                            R9 K3 ["TextButton"]
       10 NAMECALL                         R7 R6 K2 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+11]
       14 GETTABLEKS                       R7 R6 K4 ["Text"]
       16 GETIMPORT                        R8 K7 [string.find]
       18 MOVE                             R9 R7
       19 MOVE                             R10 R1
       20 LOADN                            R11 1
       21 LOADB                            R12 1
       22 CALL                             R8 4 1
       23 JUMPIFNOT                        R8 ; [+1]
       24 RETURN                           R6 1
       25 FORGLOOP                         R2 2 ; [-22]
       27 LOADNIL                          R2
       28 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"findDescendantWithText"}]
        3 SETTABLEKS                       R0 R1 K1 ["findDescendantWithText"]
        5 RETURN                           R1 1
