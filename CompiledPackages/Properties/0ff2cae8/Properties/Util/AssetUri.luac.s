PROTO_0:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 13
        2 JUMPIFLT                         R1 R2 ; [+11]
        4 LOADN                            R3 1
        5 LOADN                            R4 13
        6 FASTCALL3                        STRING_SUB R0 R3 R4
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K2 [string.sub]
       11 CALL                             R1 3 1
       12 JUMPIFEQKS                       R1 K3 ["rbxassetid://"] ; [+3]
       14 LOADNIL                          R1
       15 RETURN                           R1 1
       16 FASTCALL2K                       STRING_SUB R0 K4 ; [+5]
       18 MOVE                             R2 R0
       19 LOADK                            R3 K4 [14]
       20 GETIMPORT                        R1 K2 [string.sub]
       22 CALL                             R1 2 1
       23 FASTCALL1                        TONUMBER R1 ; [+3]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K6 [tonumber]
       27 CALL                             R2 1 1
       28 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R0 K0 ["rbxassetid://"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R2 K0 ["rbxassetid://%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 0
        1 LENGTH                           R2 R0
        2 LOADN                            R3 13
        3 JUMPIFNOTLE                      R3 R2 ; [+13]
        5 LOADN                            R4 1
        6 LOADN                            R5 13
        7 FASTCALL3                        STRING_SUB R0 R4 R5
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K2 [string.sub]
       12 CALL                             R2 3 1
       13 JUMPIFEQKS                       R2 K3 ["rbxassetid://"] ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["assetIdFromUri"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["assetUriPrefix"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["assetUriFromId"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["hasAssetUriPrefix"]
       15 RETURN                           R0 1
