PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createSignal"]
        3 ORK                              R3 R0 K1 [""]
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["createSignal"]
        8 ORK                              R5 R1 K2 ["Loading"]
        9 CALL                             R4 1 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K0 ["createSignal"]
       13 LOADNIL                          R7
       14 CALL                             R6 1 2
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K0 ["createSignal"]
       18 LOADNIL                          R9
       19 CALL                             R8 1 2
       20 GETIMPORT                        R10 K5 [table.freeze]
       22 DUPTABLE                         R11 K14 [{"getMessage", "setMessage", "getStatus", "setStatus", "getProgress", "setProgress", "getDetails", "setDetails"}]
       23 SETTABLEKS                       R2 R11 K6 ["getMessage"]
       25 SETTABLEKS                       R3 R11 K7 ["setMessage"]
       27 SETTABLEKS                       R4 R11 K8 ["getStatus"]
       29 SETTABLEKS                       R5 R11 K9 ["setStatus"]
       31 SETTABLEKS                       R6 R11 K10 ["getProgress"]
       33 SETTABLEKS                       R7 R11 K11 ["setProgress"]
       35 SETTABLEKS                       R8 R11 K12 ["getDetails"]
       37 SETTABLEKS                       R9 R11 K13 ["setDetails"]
       39 CALL                             R10 1 -1
       40 RETURN                           R10 -1

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
