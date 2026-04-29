MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R3 R0 K4 ["Implementations"]
        7 GETTABLEKS                       R2 R3 K5 ["CallbackNetworking"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K3 [require]
       12 GETTABLEKS                       R4 R0 K4 ["Implementations"]
       14 GETTABLEKS                       R3 R4 K6 ["GameNetworking"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K3 [require]
       19 GETTABLEKS                       R4 R0 K7 ["NetworkingInterface"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K3 [require]
       24 GETTABLEKS                       R6 R0 K4 ["Implementations"]
       26 GETTABLEKS                       R5 R6 K8 ["StudioNetworking"]
       28 CALL                             R4 1 1
       29 DUPTABLE                         R5 K10 [{"new", "Implementations"}]
       30 GETTABLEKS                       R6 R3 K9 ["new"]
       32 SETTABLEKS                       R6 R5 K9 ["new"]
       34 DUPTABLE                         R6 K11 [{"CallbackNetworking", "GameNetworking", "StudioNetworking"}]
       35 SETTABLEKS                       R1 R6 K5 ["CallbackNetworking"]
       37 SETTABLEKS                       R2 R6 K6 ["GameNetworking"]
       39 SETTABLEKS                       R4 R6 K8 ["StudioNetworking"]
       41 SETTABLEKS                       R6 R5 K4 ["Implementations"]
       43 RETURN                           R5 1
