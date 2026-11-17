PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["plugin"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R0 K2 ["bridge"]
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R0 K3 ["targetDataModel"]
       12 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["targetDataModel"]
        2 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["bridge"]
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETTABLEKS                       R1 R0 K0 ["bridge"]
        5 GETTABLEKS                       R1 R1 K1 ["getLiveDataModels"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETTABLEKS                       R1 R0 K0 ["bridge"]
       10 NAMECALL                         R1 R1 K1 ["getLiveDataModels"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 NEWTABLE                         R1 0 0
       16 RETURN                           R1 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["bridge"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R2 R0 K0 ["bridge"]
        5 GETTABLEKS                       R2 R2 K1 ["onLiveDataModelsChanged"]
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETTABLEKS                       R2 R0 K0 ["bridge"]
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K1 ["onLiveDataModelsChanged"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1
       15 DUPCLOSURE                       R2 K2 [PROTO_4]
       16 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["bridge"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["bridge"]
        5 GETTABLEKS                       R1 R1 K1 ["DiscoverDataModels"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K0 ["bridge"]
       10 NAMECALL                         R1 R1 K1 ["DiscoverDataModels"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFFlagSceneAnalysisMdiDataModelPicker"]
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+3]
        5 GETTABLEKS                       R3 R0 K1 ["targetDataModel"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R3
        9 GETTABLEKS                       R4 R0 K2 ["bridge"]
       11 MOVE                             R6 R1
       12 MOVE                             R7 R2
       13 LOADNIL                          R8
       14 MOVE                             R9 R3
       15 NAMECALL                         R4 R4 K3 ["CallMethodAsync"]
       17 CALL                             R4 5 1
       18 FASTCALL1                        TYPE R4 ; [+3]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K5 [type]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+13]
       25 GETTABLEKS                       R5 R4 K7 ["Name"]
       27 JUMPIF                           R5 ; [+6]
       28 GETTABLEKS                       R5 R4 K8 ["name"]
       30 JUMPIF                           R5 ; [+3]
       31 GETTABLEKS                       R5 R4 K9 ["Id"]
       33 JUMPIFNOT                        R5 ; [+3]
       34 GETUPVAL                         R5 1
       35 MOVE                             R6 R4
       36 CALL                             R5 1 0
       37 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["RpcCallClient"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["injectStableIds"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Bin"]
       29 GETTABLEKS                       R4 R4 K11 ["Common"]
       31 GETTABLEKS                       R4 R4 K12 ["defineLuaFlags"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 16 0
       36 LOADNIL                          R5
       37 SETTABLEKS                       R5 R4 K13 ["bridge"]
       39 LOADNIL                          R5
       40 SETTABLEKS                       R5 R4 K14 ["targetDataModel"]
       42 DUPCLOSURE                       R5 K15 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R5 R4 K16 ["connect"]
       46 DUPCLOSURE                       R5 K17 [PROTO_1]
       47 SETTABLEKS                       R5 R4 K18 ["disconnect"]
       49 DUPCLOSURE                       R5 K19 [PROTO_2]
       50 SETTABLEKS                       R5 R4 K20 ["setTargetDataModel"]
       52 DUPCLOSURE                       R5 K21 [PROTO_3]
       53 SETTABLEKS                       R5 R4 K22 ["getAvailableDataModels"]
       55 DUPCLOSURE                       R5 K23 [PROTO_5]
       56 SETTABLEKS                       R5 R4 K24 ["onAvailableDataModelsChanged"]
       58 DUPCLOSURE                       R5 K25 [PROTO_6]
       59 SETTABLEKS                       R5 R4 K26 ["refreshDataModels"]
       61 DUPCLOSURE                       R5 K27 [PROTO_7]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R5 R4 K28 ["CallAssetPluginAsync"]
       66 RETURN                           R4 1
