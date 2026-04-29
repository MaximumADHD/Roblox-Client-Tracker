PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 LOADK                            R5 K2 ["Invalid assetId: "]
        6 MOVE                             R6 R0
        7 CONCAT                           R4 R5 R6
        8 FASTCALL2                        ASSERT R1 R4 ; [+4]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 0
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K5 ["LoadAssetAsync"]
       18 CALL                             R2 2 1
       19 NAMECALL                         R2 R2 K6 ["GetChildren"]
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 ["rbxassetid://%*"]
        2 MOVE                             R6 R0
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 2 1
        6 MOVE                             R3 R4
        7 NAMECALL                         R1 R1 K2 ["GetObjects"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 ["rbxassetid://%*"]
        2 MOVE                             R6 R0
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 2 1
        6 MOVE                             R3 R4
        7 NAMECALL                         R1 R1 K2 ["GetObjectsAsync"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["getStandardHandler"]
        6 DUPCLOSURE                       R1 K2 [PROTO_3]
        7 SETTABLEKS                       R1 R0 K3 ["getPluginHandler"]
        9 DUPCLOSURE                       R1 K4 [PROTO_5]
       10 SETTABLEKS                       R1 R0 K5 ["getRobloxScriptHandler"]
       12 RETURN                           R0 1
