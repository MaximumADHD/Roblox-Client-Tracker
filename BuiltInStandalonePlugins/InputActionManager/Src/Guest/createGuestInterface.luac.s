PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 MOVE                             R6 R2
        7 CALL                             R4 2 1
        8 DUPTABLE                         R5 K10 [{"Destroy", "GetContextsAsync", "DEPRECATED_getIconAsync", "Request", "ResetSelection", "UpdateContext", "UpdateAction", "UpdateBinding", "DuplicateContext", "DuplicateAction"}]
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R4
       12 SETTABLEKS                       R6 R5 K0 ["Destroy"]
       14 GETTABLEKS                       R6 R4 K1 ["GetContextsAsync"]
       16 SETTABLEKS                       R6 R5 K1 ["GetContextsAsync"]
       18 GETTABLEKS                       R6 R3 K2 ["DEPRECATED_getIconAsync"]
       20 SETTABLEKS                       R6 R5 K2 ["DEPRECATED_getIconAsync"]
       22 GETTABLEKS                       R6 R4 K3 ["Request"]
       24 SETTABLEKS                       R6 R5 K3 ["Request"]
       26 GETTABLEKS                       R6 R3 K4 ["ResetSelection"]
       28 SETTABLEKS                       R6 R5 K4 ["ResetSelection"]
       30 GETTABLEKS                       R6 R4 K5 ["UpdateContext"]
       32 SETTABLEKS                       R6 R5 K5 ["UpdateContext"]
       34 GETTABLEKS                       R6 R4 K6 ["UpdateAction"]
       36 SETTABLEKS                       R6 R5 K6 ["UpdateAction"]
       38 GETTABLEKS                       R6 R4 K7 ["UpdateBinding"]
       40 SETTABLEKS                       R6 R5 K7 ["UpdateBinding"]
       42 GETTABLEKS                       R6 R4 K8 ["DuplicateContext"]
       44 SETTABLEKS                       R6 R5 K8 ["DuplicateContext"]
       46 GETTABLEKS                       R6 R4 K9 ["DuplicateAction"]
       48 SETTABLEKS                       R6 R5 K9 ["DuplicateAction"]
       50 RETURN                           R5 1

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
