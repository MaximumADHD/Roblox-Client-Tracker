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
        9 GETTABLEKS                       R4 R2 K3 ["options"]
       11 JUMPIFNOT                        R4 ; [+5]
       12 GETTABLEKS                       R3 R2 K3 ["options"]
       14 GETTABLEKS                       R3 R3 K4 ["assetType"]
       16 JUMPIF                           R3 ; [+2]
       17 GETIMPORT                        R3 K8 [Enum.AssetType.Animation]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K9 ["createElement"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["PropertyValue"]
       27 DUPTABLE                         R6 K16 [{"info", "updateValue", "specializedEditingUtils", "Size"}]
       28 DUPTABLE                         R7 K22 [{["type"] = "Content", ["value"], ["readonly"], ["extra"]}]
       29 GETTABLEKS                       R8 R0 K19 ["value"]
       31 JUMPIF                           R8 ; [+4]
       32 GETTABLEKS                       R8 R2 K23 ["initialValue"]
       34 JUMPIF                           R8 ; [+1]
       35 LOADK                            R8 K24 [""]
       36 SETTABLEKS                       R8 R7 K19 ["value"]
       38 GETTABLEKS                       R9 R0 K26 ["isDisabled"]
       40 ORK                              R8 R9 K25 [False]
       41 SETTABLEKS                       R8 R7 K20 ["readonly"]
       43 DUPTABLE                         R8 K28 [{["type"] = "content", ["assetType"]}]
       44 SETTABLEKS                       R3 R8 K4 ["assetType"]
       46 SETTABLEKS                       R8 R7 K21 ["extra"]
       48 SETTABLEKS                       R7 R6 K12 ["info"]
       50 GETTABLEKS                       R7 R0 K29 ["onChange"]
       52 SETTABLEKS                       R7 R6 K13 ["updateValue"]
       54 DUPTABLE                         R7 K31 [{"assetPicker"}]
       55 DUPTABLE                         R8 K34 [{"gameIdObservable", "shareAccessToAssetsAsync"}]
       56 SETTABLEKS                       R1 R8 K32 ["gameIdObservable"]
       58 DUPCLOSURE                       R9 K35 [PROTO_1]
       59 SETTABLEKS                       R9 R8 K33 ["shareAccessToAssetsAsync"]
       61 SETTABLEKS                       R8 R7 K30 ["assetPicker"]
       63 SETTABLEKS                       R7 R6 K14 ["specializedEditingUtils"]
       65 GETIMPORT                        R7 K38 [UDim2.fromScale]
       67 LOADN                            R8 1
       68 LOADN                            R9 1
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K15 ["Size"]
       72 CALL                             R4 2 -1
       73 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R1 K5 [{"type", "label", "prop", "initialValue", "options"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K6 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K7 ["Content"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K3 ["initialValue"]
       18 SETTABLEKS                       R2 R1 K3 ["initialValue"]
       20 GETTABLEKS                       R2 R0 K4 ["options"]
       22 SETTABLEKS                       R2 R1 K4 ["options"]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Guest"]
       13 GETTABLEKS                       R3 R3 K8 ["Environment"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Properties"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K10 ["PropertyRowTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K11 ["React"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K12 ["ReactUtils"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K13 [PROTO_2]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 DUPCLOSURE                       R8 K14 [PROTO_3]
       46 CAPTURE                          VAL R4
       47 DUPTABLE                         R9 K17 [{"ContentPropertyRow", "createRowDefinition"}]
       48 SETTABLEKS                       R7 R9 K15 ["ContentPropertyRow"]
       50 SETTABLEKS                       R8 R9 K16 ["createRowDefinition"]
       52 RETURN                           R9 1
