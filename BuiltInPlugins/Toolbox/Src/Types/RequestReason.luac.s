PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["NextPage"]
        4 JUMPIFEQ                         R0 R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["UpdatePage"]
        9 JUMPIFEQ                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K8 [{"InitLoad", "ChangeTabs", "ChangeCategory", "ChangeSort", "ChangeGroup", "StartSearch", "NextPage", "UpdatePage"}]
        2 LOADN                            R1 1
        3 SETTABLEKS                       R1 R0 K0 ["InitLoad"]
        5 LOADN                            R1 2
        6 SETTABLEKS                       R1 R0 K1 ["ChangeTabs"]
        8 LOADN                            R1 3
        9 SETTABLEKS                       R1 R0 K2 ["ChangeCategory"]
       11 LOADN                            R1 4
       12 SETTABLEKS                       R1 R0 K3 ["ChangeSort"]
       14 LOADN                            R1 5
       15 SETTABLEKS                       R1 R0 K4 ["ChangeGroup"]
       17 LOADN                            R1 6
       18 SETTABLEKS                       R1 R0 K5 ["StartSearch"]
       20 LOADN                            R1 7
       21 SETTABLEKS                       R1 R0 K6 ["NextPage"]
       23 LOADN                            R1 8
       24 SETTABLEKS                       R1 R0 K7 ["UpdatePage"]
       26 DUPCLOSURE                       R1 K9 [PROTO_0]
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K10 ["IsUpdate"]
       30 RETURN                           R0 1
