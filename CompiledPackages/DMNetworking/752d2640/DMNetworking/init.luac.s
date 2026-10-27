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
       19 GETTABLEKS                       R4 R0 K7 ["MockPlugin"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K3 [require]
       24 GETTABLEKS                       R5 R0 K8 ["NetworkingInterface"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K3 [require]
       29 GETTABLEKS                       R6 R0 K4 ["Implementations"]
       31 GETTABLEKS                       R6 R6 K9 ["StudioNetworking"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K3 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Types"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K3 [require]
       41 GETTABLEKS                       R8 R0 K4 ["Implementations"]
       43 GETTABLEKS                       R8 R8 K11 ["createEndToEndTestingImplementations"]
       45 CALL                             R7 1 1
       46 DUPTABLE                         R8 K14 [{"new", "Implementations", "MockPlugin", "ALL"}]
       47 GETTABLEKS                       R9 R4 K12 ["new"]
       49 SETTABLEKS                       R9 R8 K12 ["new"]
       51 DUPTABLE                         R9 K15 [{"CallbackNetworking", "GameNetworking", "StudioNetworking", "createEndToEndTestingImplementations"}]
       52 SETTABLEKS                       R1 R9 K5 ["CallbackNetworking"]
       54 SETTABLEKS                       R2 R9 K6 ["GameNetworking"]
       56 SETTABLEKS                       R5 R9 K9 ["StudioNetworking"]
       58 SETTABLEKS                       R7 R9 K11 ["createEndToEndTestingImplementations"]
       60 SETTABLEKS                       R9 R8 K4 ["Implementations"]
       62 SETTABLEKS                       R3 R8 K7 ["MockPlugin"]
       64 GETTABLEKS                       R9 R6 K13 ["ALL"]
       66 SETTABLEKS                       R9 R8 K13 ["ALL"]
       68 RETURN                           R8 1
