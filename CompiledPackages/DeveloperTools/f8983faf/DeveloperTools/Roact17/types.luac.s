MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Types"]
       11 CALL                             R0 1 1
       12 DUPTABLE                         R1 K28 [{["Class"] = 1, ["Context"] = 2, ["Function"] = 5, ["ForwardRef"] = 6, ["HostComponent"] = 7, ["Memo"] = 8, ["OtherOrUnknown"] = 9, ["Profiler"] = 10, ["Root"] = 11, ["Suspense"] = 12, ["SuspenseList"] = 13}]
       13 DUPTABLE                         R2 K30 [{"ElementType"}]
       14 SETTABLEKS                       R1 R2 K29 ["ElementType"]
       16 RETURN                           R2 1
