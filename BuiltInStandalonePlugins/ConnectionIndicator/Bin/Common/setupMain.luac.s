PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"Plugin", "TeamCreateService"}]
        5 SETTABLEKS                       R0 R4 K1 ["Plugin"]
        7 SETTABLEKS                       R1 R4 K2 ["TeamCreateService"]
        9 CALL                             R2 2 1
       10 GETIMPORT                        R3 K6 [Instance.new]
       12 LOADK                            R4 K7 ["Frame"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K8 ["createRoot"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 MOVE                             R7 R2
       20 NAMECALL                         R5 R4 K9 ["render"]
       22 CALL                             R5 2 0
       23 GETTABLEKS                       R5 R0 K10 ["Unloading"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R4
       27 NAMECALL                         R5 R5 K11 ["Connect"]
       29 CALL                             R5 2 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["MainPlugin"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 RETURN                           R5 1
