PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Observable"]
        3 GETTABLEKS                       R0 R0 K1 ["create"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["get"]
        8 CALL                             R1 0 1
        9 GETTABLEKS                       R1 R1 K3 ["getGameId"]
       11 CALL                             R1 0 -1
       12 CALL                             R0 -1 -1
       13 RETURN                           R0 -1

PROTO_1:
        0 LOADB                            R1 1
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R1 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useInitializedValue"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["definition"]
        9 GETTABLEKS                       R2 R2 K3 ["assetType"]
       11 JUMPIF                           R2 ; [+2]
       12 GETIMPORT                        R2 K7 [Enum.AssetType.Animation]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K8 ["createElement"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K9 ["Components"]
       20 GETTABLEKS                       R4 R4 K10 ["PropertyValue"]
       22 DUPTABLE                         R5 K15 [{"info", "updateValue", "specializedEditingUtils", "Size"}]
       23 DUPTABLE                         R6 K21 [{["type"] = "Content", ["value"], ["readonly"], ["extra"]}]
       24 GETTABLEKS                       R8 R0 K18 ["value"]
       26 ORK                              R7 R8 K22 [""]
       27 SETTABLEKS                       R7 R6 K18 ["value"]
       29 GETTABLEKS                       R8 R0 K23 ["interactable"]
       31 NOT                              R7 R8
       32 SETTABLEKS                       R7 R6 K19 ["readonly"]
       34 DUPTABLE                         R7 K25 [{["type"] = "content", ["assetType"]}]
       35 SETTABLEKS                       R2 R7 K3 ["assetType"]
       37 SETTABLEKS                       R7 R6 K20 ["extra"]
       39 SETTABLEKS                       R6 R5 K11 ["info"]
       41 GETTABLEKS                       R6 R0 K26 ["setValue"]
       43 SETTABLEKS                       R6 R5 K12 ["updateValue"]
       45 DUPTABLE                         R6 K28 [{"assetPicker"}]
       46 DUPTABLE                         R7 K31 [{"gameIdObservable", "shareAccessToAssetsAsync"}]
       47 SETTABLEKS                       R1 R7 K29 ["gameIdObservable"]
       49 DUPCLOSURE                       R8 K32 [PROTO_1]
       50 SETTABLEKS                       R8 R7 K30 ["shareAccessToAssetsAsync"]
       52 SETTABLEKS                       R7 R6 K27 ["assetPicker"]
       54 SETTABLEKS                       R6 R5 K13 ["specializedEditingUtils"]
       56 GETIMPORT                        R6 K35 [UDim2.fromScale]
       58 LOADN                            R7 1
       59 LOADN                            R8 1
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K14 ["Size"]
       63 CALL                             R3 2 -1
       64 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Properties"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Guest"]
       28 GETTABLEKS                       R6 R6 K11 ["Environment"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETIMPORT                        R7 K1 [script]
       35 GETTABLEKS                       R7 R7 K4 ["Parent"]
       37 GETTABLEKS                       R7 R7 K4 ["Parent"]
       39 GETTABLEKS                       R7 R7 K12 ["PropertyRowTypes"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K13 [PROTO_2]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 RETURN                           R7 1
