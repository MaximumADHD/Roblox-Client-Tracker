MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 LOADK                            R3 K5 ["EventBus"]
        8 NAMECALL                         R1 R1 K6 ["WaitForChild"]
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 1
       12 GETTABLEKS                       R1 R0 K7 ["new"]
       14 CALL                             R1 0 1
       15 NEWTABLE                         R2 0 0
       17 SETTABLEKS                       R2 R1 K8 ["data"]
       19 RETURN                           R1 1
