MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Signals"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R3 K3 [script]
       14 GETTABLEKS                       R2 R3 K6 ["SignalsExperimental"]
       16 CALL                             R1 1 1
       17 DUPTABLE                         R2 K12 [{"createSignal", "createComputed", "createEffect", "onDisposed", "createRoot"}]
       18 GETTABLEKS                       R3 R0 K7 ["createSignal"]
       20 SETTABLEKS                       R3 R2 K7 ["createSignal"]
       22 GETTABLEKS                       R3 R0 K8 ["createComputed"]
       24 SETTABLEKS                       R3 R2 K8 ["createComputed"]
       26 GETTABLEKS                       R3 R1 K9 ["createEffect"]
       28 SETTABLEKS                       R3 R2 K9 ["createEffect"]
       30 GETTABLEKS                       R3 R1 K10 ["onDisposed"]
       32 SETTABLEKS                       R3 R2 K10 ["onDisposed"]
       34 GETTABLEKS                       R3 R1 K11 ["createRoot"]
       36 SETTABLEKS                       R3 R2 K11 ["createRoot"]
       38 RETURN                           R2 1
