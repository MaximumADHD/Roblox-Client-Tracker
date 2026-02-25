PROTO_0:
        0 LOADK                            R0 K0 ["UsageGraphSentinel"]
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R0 R3
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [newproxy]
        3 LOADB                            R1 1
        4 CALL                             R0 1 1
        5 FASTCALL1                        GETMETATABLE R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K3 [getmetatable]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K4 [PROTO_0]
       11 SETTABLEKS                       R2 R1 K5 ["__tostring"]
       13 DUPCLOSURE                       R1 K6 [PROTO_1]
       14 CAPTURE                          VAL R0
       15 DUPTABLE                         R2 K9 [{"UsageGraphKey", "getUsageGraph"}]
       16 SETTABLEKS                       R0 R2 K7 ["UsageGraphKey"]
       18 SETTABLEKS                       R1 R2 K8 ["getUsageGraph"]
       20 RETURN                           R2 1
