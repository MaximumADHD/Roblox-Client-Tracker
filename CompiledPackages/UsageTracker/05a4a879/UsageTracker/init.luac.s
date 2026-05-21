MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"isReactComponent", "trackMemberAccess", "getFileInfo", "getUsageGraph"}]
        2 GETIMPORT                        R1 K6 [require]
        4 GETIMPORT                        R2 K8 [script]
        6 GETTABLEKS                       R2 R2 K0 ["isReactComponent"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["isReactComponent"]
       11 GETIMPORT                        R1 K6 [require]
       13 GETIMPORT                        R2 K8 [script]
       15 GETTABLEKS                       R2 R2 K1 ["trackMemberAccess"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["trackMemberAccess"]
       20 GETIMPORT                        R1 K6 [require]
       22 GETIMPORT                        R2 K8 [script]
       24 GETTABLEKS                       R2 R2 K2 ["getFileInfo"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["getFileInfo"]
       29 GETIMPORT                        R1 K6 [require]
       31 GETIMPORT                        R2 K8 [script]
       33 GETTABLEKS                       R2 R2 K9 ["UsageGraph"]
       35 CALL                             R1 1 1
       36 GETTABLEKS                       R1 R1 K3 ["getUsageGraph"]
       38 SETTABLEKS                       R1 R0 K3 ["getUsageGraph"]
       40 RETURN                           R0 1
