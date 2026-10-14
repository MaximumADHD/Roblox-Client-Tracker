MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["combined"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 8 0
       12 GETTABLEKS                       R2 R0 K6 ["ROOT_DESCRIBE_BLOCK_NAME"]
       14 SETTABLEKS                       R2 R1 K6 ["ROOT_DESCRIBE_BLOCK_NAME"]
       16 GETTABLEKS                       R2 R0 K7 ["resetState"]
       18 SETTABLEKS                       R2 R1 K7 ["resetState"]
       20 GETTABLEKS                       R2 R0 K8 ["getState"]
       22 SETTABLEKS                       R2 R1 K8 ["getState"]
       24 GETTABLEKS                       R2 R0 K9 ["setState"]
       26 SETTABLEKS                       R2 R1 K9 ["setState"]
       28 GETTABLEKS                       R2 R0 K10 ["dispatch"]
       30 SETTABLEKS                       R2 R1 K10 ["dispatch"]
       32 GETTABLEKS                       R2 R0 K11 ["dispatchSync"]
       34 SETTABLEKS                       R2 R1 K11 ["dispatchSync"]
       36 GETTABLEKS                       R2 R0 K12 ["addEventHandler"]
       38 SETTABLEKS                       R2 R1 K12 ["addEventHandler"]
       40 RETURN                           R1 1
