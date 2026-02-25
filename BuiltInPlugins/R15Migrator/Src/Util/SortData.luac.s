PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Alphabetical"]
        5 LOADK                            R5 K1 ["Summary"]
        6 LOADK                            R6 K0 ["Alphabetical"]
        7 NAMECALL                         R3 R0 K2 ["getText"]
        9 CALL                             R3 3 1
       10 SETTABLE                         R3 R1 R2
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["Status"]
       14 LOADK                            R5 K4 ["StatusTable"]
       15 LOADK                            R6 K3 ["Status"]
       16 NAMECALL                         R3 R0 K2 ["getText"]
       18 CALL                             R3 3 1
       19 SETTABLE                         R3 R1 R2
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADN                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["Alphabetical"]
        6 LOADN                            R1 2
        7 SETTABLEKS                       R1 R0 K1 ["Status"]
        9 DUPCLOSURE                       R1 K2 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K3 ["getOrderedSortData"]
       13 RETURN                           R0 1
