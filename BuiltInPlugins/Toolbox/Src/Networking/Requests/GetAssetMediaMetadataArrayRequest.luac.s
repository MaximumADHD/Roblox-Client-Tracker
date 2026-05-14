PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K1 ["JSONDecode"]
       10 CALL                             R2 2 1
       11 NEWTABLE                         R3 0 0
       13 GETIMPORT                        R4 K3 [ipairs]
       15 GETTABLEKS                       R5 R2 K4 ["data"]
       17 CALL                             R4 1 3
       18 FORGPREP_INEXT                   R4
       19 MOVE                             R10 R3
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R11 R11 K5 ["fromDevelop"]
       23 MOVE                             R12 R8
       24 CALL                             R11 1 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R9 K8 [table.insert]
       28 CALL                             R9 -1 0
       29 FORGLOOP                         R4 2 [inext] ; [-11]
       31 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Failed to get asset media metadata: "]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 CALL                             R3 1 -1
       14 NAMECALL                         R1 R1 K4 ["dispatch"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+11]
        2 LENGTH                           R1 R0
        3 LOADN                            R2 0
        4 JUMPIFNOTLT                      R2 R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K0 ["getDevelopAssetMetadata"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKNIL                     R0 ; [+12]
        2 LENGTH                           R1 R0
        3 LOADN                            R2 0
        4 JUMPIFNOTLT                      R2 R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 CALL                             R3 1 -1
       10 NAMECALL                         R1 R1 K0 ["dispatch"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_4:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 GETUPVAL                         R5 4
        8 GETUPVAL                         R6 5
        9 GETUPVAL                         R7 6
       10 LOADB                            R8 1
       11 LOADB                            R9 1
       12 CALL                             R5 4 -1
       13 NAMECALL                         R3 R0 K1 ["dispatch"]
       15 CALL                             R3 -1 1
       16 NEWCLOSURE                       R5 P2
       17 CAPTURE                          UPVAL U5
       18 NAMECALL                         R3 R3 K2 ["andThen"]
       20 CALL                             R3 2 1
       21 MOVE                             R5 R1
       22 MOVE                             R6 R2
       23 NAMECALL                         R3 R3 K2 ["andThen"]
       25 CALL                             R3 3 1
       26 NEWCLOSURE                       R5 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U7
       29 NAMECALL                         R3 R3 K2 ["andThen"]
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U5
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["DebugFlags"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["createAssetMediaMetadata"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K3 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Actions"]
       29 GETIMPORT                        R5 K6 [require]
       31 GETTABLEKS                       R6 R4 K10 ["NetworkError"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R4 K11 ["SetAssetMediaMetadataArray"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R0 K3 ["Src"]
       41 GETTABLEKS                       R7 R7 K12 ["Networking"]
       43 GETTABLEKS                       R7 R7 K13 ["Requests"]
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R7 K14 ["GetAssetMediaIdsRequest"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K16 [game]
       52 LOADK                            R11 K17 ["HttpService"]
       53 NAMECALL                         R9 R9 K18 ["GetService"]
       55 CALL                             R9 2 1
       56 DUPCLOSURE                       R10 K19 [PROTO_5]
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R6
       63 RETURN                           R10 1
