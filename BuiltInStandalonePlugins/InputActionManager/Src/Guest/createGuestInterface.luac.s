PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 DUPTABLE                         R3 K7 [{"Destroy", "getIconAsync", "Request", "GetContextsAsync", "UpdateContext", "UpdateAction", "UpdateBinding"}]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 SETTABLEKS                       R4 R3 K0 ["Destroy"]
       12 GETTABLEKS                       R4 R1 K1 ["getIconAsync"]
       14 SETTABLEKS                       R4 R3 K1 ["getIconAsync"]
       16 GETTABLEKS                       R4 R2 K2 ["Request"]
       18 SETTABLEKS                       R4 R3 K2 ["Request"]
       20 GETTABLEKS                       R4 R2 K3 ["GetContextsAsync"]
       22 SETTABLEKS                       R4 R3 K3 ["GetContextsAsync"]
       24 GETTABLEKS                       R4 R2 K4 ["UpdateContext"]
       26 SETTABLEKS                       R4 R3 K4 ["UpdateContext"]
       28 GETTABLEKS                       R4 R2 K5 ["UpdateAction"]
       30 SETTABLEKS                       R4 R3 K5 ["UpdateAction"]
       32 GETTABLEKS                       R4 R2 K6 ["UpdateBinding"]
       34 SETTABLEKS                       R4 R3 K6 ["UpdateBinding"]
       36 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Guest"]
       13 GETTABLEKS                       R2 R3 K8 ["createStudioInterface"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Guest"]
       22 GETTABLEKS                       R3 R4 K9 ["createInputActionSystem"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R5 K10 ["Types"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K11 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 RETURN                           R4 1
