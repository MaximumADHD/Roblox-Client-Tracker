MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["Implementations"]
        7 GETTABLEKS                       R2 R2 K5 ["CallbackNetworking"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K3 [require]
       12 GETTABLEKS                       R3 R0 K4 ["Implementations"]
       14 GETTABLEKS                       R3 R3 K6 ["GameNetworking"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K3 [require]
       19 GETTABLEKS                       R4 R0 K7 ["NetworkingInterface"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K3 [require]
       24 GETTABLEKS                       R5 R0 K4 ["Implementations"]
       26 GETTABLEKS                       R5 R5 K8 ["StudioNetworking"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K3 [require]
       31 GETTABLEKS                       R6 R0 K9 ["Types"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K3 [require]
       36 GETTABLEKS                       R7 R0 K4 ["Implementations"]
       38 GETTABLEKS                       R7 R7 K10 ["createEndToEndTestingImplementations"]
       40 CALL                             R6 1 1
       41 DUPTABLE                         R7 K13 [{"new", "Implementations", "ALL"}]
       42 GETTABLEKS                       R8 R3 K11 ["new"]
       44 SETTABLEKS                       R8 R7 K11 ["new"]
       46 DUPTABLE                         R8 K14 [{"CallbackNetworking", "GameNetworking", "StudioNetworking", "createEndToEndTestingImplementations"}]
       47 SETTABLEKS                       R1 R8 K5 ["CallbackNetworking"]
       49 SETTABLEKS                       R2 R8 K6 ["GameNetworking"]
       51 SETTABLEKS                       R4 R8 K8 ["StudioNetworking"]
       53 SETTABLEKS                       R6 R8 K10 ["createEndToEndTestingImplementations"]
       55 SETTABLEKS                       R8 R7 K4 ["Implementations"]
       57 GETTABLEKS                       R8 R5 K12 ["ALL"]
       59 SETTABLEKS                       R8 R7 K12 ["ALL"]
       61 RETURN                           R7 1
