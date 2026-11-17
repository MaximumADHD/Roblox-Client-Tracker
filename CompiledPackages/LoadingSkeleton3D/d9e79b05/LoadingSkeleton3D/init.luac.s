MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Box"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["Types"]
       14 CALL                             R1 1 1
       15 DUPTABLE                         R2 K12 [{"attachToInstance", "attachToRegion", "setStatus", "setLabelVisible", "destroy", "destroyAll"}]
       16 GETTABLEKS                       R3 R0 K6 ["attachToInstance"]
       18 SETTABLEKS                       R3 R2 K6 ["attachToInstance"]
       20 GETTABLEKS                       R3 R0 K7 ["attachToRegion"]
       22 SETTABLEKS                       R3 R2 K7 ["attachToRegion"]
       24 GETTABLEKS                       R3 R0 K8 ["setStatus"]
       26 SETTABLEKS                       R3 R2 K8 ["setStatus"]
       28 GETTABLEKS                       R3 R0 K9 ["setLabelVisible"]
       30 SETTABLEKS                       R3 R2 K9 ["setLabelVisible"]
       32 GETTABLEKS                       R3 R0 K10 ["destroy"]
       34 SETTABLEKS                       R3 R2 K10 ["destroy"]
       36 GETTABLEKS                       R3 R0 K11 ["destroyAll"]
       38 SETTABLEKS                       R3 R2 K11 ["destroyAll"]
       40 RETURN                           R2 1
