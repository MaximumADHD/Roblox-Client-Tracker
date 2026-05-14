PROTO_0:
        0 GETIMPORT                        R0 K3 [Enum.IXPLoadingStatus.Initialized]
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K4 [{"GetUserLayerLoadingStatus", "GetUserLayerVariables", "OnUserLayerLoadingStatusChanged"}]
        4 DUPCLOSURE                       R3 K5 [PROTO_0]
        5 SETTABLEKS                       R3 R2 K1 ["GetUserLayerLoadingStatus"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R2 K2 ["GetUserLayerVariables"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K0 ["new"]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R2 K3 ["OnUserLayerLoadingStatusChanged"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"IXPService"}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+6]
        3 GETIMPORT                        R2 K3 [game]
        5 LOADK                            R4 K0 ["IXPService"]
        6 NAMECALL                         R2 R2 K4 ["GetService"]
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R1 K0 ["IXPService"]
       11 GETUPVAL                         R4 0
       12 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K6 [setmetatable]
       17 CALL                             R2 2 0
       18 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["IXPService"]
        2 GETTABLEKS                       R1 R1 K1 ["OnUserLayerLoadingStatusChanged"]
        4 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["IXPService"]
        2 NAMECALL                         R2 R2 K1 ["GetUserLayerLoadingStatus"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K5 [Enum.IXPLoadingStatus.Initialized]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["IXPService"]
        2 NAMECALL                         R1 R1 K1 ["GetUserLayerLoadingStatus"]
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 GETIMPORT                        R3 K5 [Enum.IXPLoadingStatus.Initialized]
        8 JUMPIFEQ                         R1 R3 ; [+7]
       10 GETIMPORT                        R3 K7 [Enum.IXPLoadingStatus.Pending]
       12 JUMPIFNOTEQ                      R1 R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["isReady"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+3]
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["Dictionary"]
       10 GETTABLEKS                       R1 R1 K2 ["join"]
       12 GETTABLEKS                       R2 R0 K3 ["IXPService"]
       14 LOADK                            R4 K4 ["CreatorMarketplace"]
       15 NAMECALL                         R2 R2 K5 ["GetUserLayerVariables"]
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R3 R0 K3 ["IXPService"]
       20 LOADK                            R5 K6 ["StudioMarketplace"]
       21 NAMECALL                         R3 R3 K5 ["GetUserLayerVariables"]
       23 CALL                             R3 2 1
       24 GETTABLEKS                       R4 R0 K3 ["IXPService"]
       26 LOADK                            R6 K7 ["Studio.Toolbox.Usage"]
       27 NAMECALL                         R4 R4 K5 ["GetUserLayerVariables"]
       29 CALL                             R4 2 1
       30 GETTABLEKS                       R5 R0 K3 ["IXPService"]
       32 LOADK                            R7 K8 ["CreatorContent.Music.Studio"]
       33 NAMECALL                         R5 R5 K5 ["GetUserLayerVariables"]
       35 CALL                             R5 2 1
       36 GETTABLEKS                       R6 R0 K3 ["IXPService"]
       38 LOADK                            R8 K9 ["Studio.Toolbox.AssetQuality.Exposure"]
       39 NAMECALL                         R6 R6 K5 ["GetUserLayerVariables"]
       41 CALL                             R6 2 -1
       42 CALL                             R1 -1 -1
       43 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["IXPService"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["LogUserLayerExposure"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R2 R0 K0 ["isReady"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETIMPORT                        R2 K2 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       18 GETTABLEKS                       R3 R3 K8 ["ContextItem"]
       20 GETTABLEKS                       R4 R2 K9 ["Util"]
       22 GETTABLEKS                       R4 R4 K10 ["Signal"]
       24 GETIMPORT                        R5 K5 [require]
       26 GETTABLEKS                       R6 R1 K11 ["Dash"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R1 K12 ["Cryo"]
       33 CALL                             R6 1 1
       34 LOADK                            R9 K13 ["IXPContext"]
       35 NAMECALL                         R7 R3 K14 ["extend"]
       37 CALL                             R7 2 1
       38 DUPCLOSURE                       R8 K15 [PROTO_2]
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R8 R7 K16 ["createMock"]
       43 DUPCLOSURE                       R8 K17 [PROTO_3]
       44 CAPTURE                          VAL R7
       45 SETTABLEKS                       R8 R7 K18 ["new"]
       47 DUPCLOSURE                       R8 K19 [PROTO_4]
       48 SETTABLEKS                       R8 R7 K20 ["getSignal"]
       50 DUPCLOSURE                       R8 K21 [PROTO_5]
       51 SETTABLEKS                       R8 R7 K22 ["isReady"]
       53 DUPCLOSURE                       R8 K23 [PROTO_6]
       54 SETTABLEKS                       R8 R7 K24 ["isError"]
       56 DUPCLOSURE                       R8 K25 [PROTO_7]
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R8 R7 K26 ["getVariables"]
       60 DUPCLOSURE                       R8 K27 [PROTO_9]
       61 SETTABLEKS                       R8 R7 K28 ["logUserLayerExposure"]
       63 RETURN                           R7 1
