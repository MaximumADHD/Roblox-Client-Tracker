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
       31 GETTABLEKS                       R6 R0 K4 ["Implementations"]
       33 GETTABLEKS                       R6 R6 K9 ["createEndToEndTestingImplementations"]
       35 CALL                             R5 1 1
       36 DUPTABLE                         R6 K11 [{"new", "Implementations"}]
       37 GETTABLEKS                       R7 R3 K10 ["new"]
       39 SETTABLEKS                       R7 R6 K10 ["new"]
       41 DUPTABLE                         R7 K12 [{"CallbackNetworking", "GameNetworking", "StudioNetworking", "createEndToEndTestingImplementations"}]
       42 SETTABLEKS                       R1 R7 K5 ["CallbackNetworking"]
       44 SETTABLEKS                       R2 R7 K6 ["GameNetworking"]
       46 SETTABLEKS                       R4 R7 K8 ["StudioNetworking"]
       48 SETTABLEKS                       R5 R7 K9 ["createEndToEndTestingImplementations"]
       50 SETTABLEKS                       R7 R6 K4 ["Implementations"]
       52 RETURN                           R6 1
