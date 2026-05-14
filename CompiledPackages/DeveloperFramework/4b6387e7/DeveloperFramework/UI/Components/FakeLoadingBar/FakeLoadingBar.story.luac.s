MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["FakeLoadingBar"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["createElement"]
       27 MOVE                             R4 R2
       28 DUPTABLE                         R5 K13 [{"LoadingTime", "Size"}]
       29 LOADN                            R6 5
       30 SETTABLEKS                       R6 R5 K11 ["LoadingTime"]
       32 GETIMPORT                        R6 K16 [UDim2.fromOffset]
       34 LOADN                            R7 120
       35 LOADN                            R8 8
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K12 ["Size"]
       39 CALL                             R3 2 -1
       40 RETURN                           R3 -1
