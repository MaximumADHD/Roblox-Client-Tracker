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
        1 DUPTABLE                         R0 K16 [{[1] = 1, ["ChangeTabs"] = 2, ["ChangeCategory"] = 3, ["ChangeSort"] = 4, ["ChangeGroup"] = 5, ["StartSearch"] = 6, ["NextPage"] = 7, ["UpdatePage"] = 8}]
        2 DUPCLOSURE                       R1 K17 [PROTO_0]
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R1 R0 K18 ["IsUpdate"]
        6 RETURN                           R0 1
