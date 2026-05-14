PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      1
        1 DUPTABLE                         R1 K1 [{"AssetId"}]
        2 LOADK                            R2 K2 ["123"]
        3 SETTABLEKS                       R2 R1 K0 ["AssetId"]
        5 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R2 R0
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R6 1
        3 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
        4 GETIMPORT                        R5 K1 [unpack]
        6 CALL                             R5 1 -1
        7 NAMECALL                         R3 R3 K2 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync_Impl"]
        9 CALL                             R3 -1 -1
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["new"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Util"]
       18 GETTABLEKS                       R1 R1 K8 ["Promise"]
       20 NEWTABLE                         R2 4 0
       22 SETTABLEKS                       R2 R2 K9 ["__index"]
       24 DUPCLOSURE                       R3 K10 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R2 K11 ["new"]
       28 DUPCLOSURE                       R3 K12 [PROTO_1]
       29 SETTABLEKS                       R3 R2 K13 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync_Impl"]
       31 DUPCLOSURE                       R3 K14 [PROTO_3]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R3 R2 K15 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
       35 RETURN                           R2 1
