PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 DUPTABLE                         R4 K10 [{"Destroy", "GetContextsAsync", "DEPRECATED_getIconAsync", "Request", "ResetSelection", "UpdateContext", "UpdateAction", "UpdateBinding", "DuplicateContext", "DuplicateAction"}]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 SETTABLEKS                       R5 R4 K0 ["Destroy"]
       13 GETTABLEKS                       R5 R3 K1 ["GetContextsAsync"]
       15 SETTABLEKS                       R5 R4 K1 ["GetContextsAsync"]
       17 GETTABLEKS                       R5 R2 K2 ["DEPRECATED_getIconAsync"]
       19 SETTABLEKS                       R5 R4 K2 ["DEPRECATED_getIconAsync"]
       21 GETTABLEKS                       R5 R3 K3 ["Request"]
       23 SETTABLEKS                       R5 R4 K3 ["Request"]
       25 GETTABLEKS                       R5 R2 K4 ["ResetSelection"]
       27 SETTABLEKS                       R5 R4 K4 ["ResetSelection"]
       29 GETTABLEKS                       R5 R3 K5 ["UpdateContext"]
       31 SETTABLEKS                       R5 R4 K5 ["UpdateContext"]
       33 GETTABLEKS                       R5 R3 K6 ["UpdateAction"]
       35 SETTABLEKS                       R5 R4 K6 ["UpdateAction"]
       37 GETTABLEKS                       R5 R3 K7 ["UpdateBinding"]
       39 SETTABLEKS                       R5 R4 K7 ["UpdateBinding"]
       41 GETTABLEKS                       R5 R3 K8 ["DuplicateContext"]
       43 SETTABLEKS                       R5 R4 K8 ["DuplicateContext"]
       45 GETTABLEKS                       R5 R3 K9 ["DuplicateAction"]
       47 SETTABLEKS                       R5 R4 K9 ["DuplicateAction"]
       49 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Guest"]
       13 GETTABLEKS                       R2 R2 K8 ["createStudioInterface"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Guest"]
       22 GETTABLEKS                       R3 R3 K9 ["createInputInterface"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Types"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K11 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 RETURN                           R4 1
