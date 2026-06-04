MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Types"]
       11 CALL                             R0 1 1
       12 DUPTABLE                         R1 K17 [{"Class", "Context", "Function", "ForwardRef", "HostComponent", "Memo", "OtherOrUnknown", "Profiler", "Root", "Suspense", "SuspenseList"}]
       13 LOADN                            R2 1
       14 SETTABLEKS                       R2 R1 K6 ["Class"]
       16 LOADN                            R2 2
       17 SETTABLEKS                       R2 R1 K7 ["Context"]
       19 LOADN                            R2 5
       20 SETTABLEKS                       R2 R1 K8 ["Function"]
       22 LOADN                            R2 6
       23 SETTABLEKS                       R2 R1 K9 ["ForwardRef"]
       25 LOADN                            R2 7
       26 SETTABLEKS                       R2 R1 K10 ["HostComponent"]
       28 LOADN                            R2 8
       29 SETTABLEKS                       R2 R1 K11 ["Memo"]
       31 LOADN                            R2 9
       32 SETTABLEKS                       R2 R1 K12 ["OtherOrUnknown"]
       34 LOADN                            R2 10
       35 SETTABLEKS                       R2 R1 K13 ["Profiler"]
       37 LOADN                            R2 11
       38 SETTABLEKS                       R2 R1 K14 ["Root"]
       40 LOADN                            R2 12
       41 SETTABLEKS                       R2 R1 K15 ["Suspense"]
       43 LOADN                            R2 13
       44 SETTABLEKS                       R2 R1 K16 ["SuspenseList"]
       46 DUPTABLE                         R2 K19 [{"ElementType"}]
       47 SETTABLEKS                       R1 R2 K18 ["ElementType"]
       49 RETURN                           R2 1
