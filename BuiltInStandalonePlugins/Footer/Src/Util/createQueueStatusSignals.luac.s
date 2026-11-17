PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["createSignal"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["createSignal"]
       13 LOADN                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createSignal"]
       18 LOADB                            R7 0
       19 CALL                             R6 1 2
       20 GETIMPORT                        R8 K3 [table.freeze]
       22 DUPTABLE                         R9 K12 [{"getCompleted", "setCompleted", "getTotal", "setTotal", "getErrors", "setErrors", "getIsPanelOpen", "setIsPanelOpen"}]
       23 SETTABLEKS                       R0 R9 K4 ["getCompleted"]
       25 SETTABLEKS                       R1 R9 K5 ["setCompleted"]
       27 SETTABLEKS                       R2 R9 K6 ["getTotal"]
       29 SETTABLEKS                       R3 R9 K7 ["setTotal"]
       31 SETTABLEKS                       R4 R9 K8 ["getErrors"]
       33 SETTABLEKS                       R5 R9 K9 ["setErrors"]
       35 SETTABLEKS                       R6 R9 K10 ["getIsPanelOpen"]
       37 SETTABLEKS                       R7 R9 K11 ["setIsPanelOpen"]
       39 CALL                             R8 1 -1
       40 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
