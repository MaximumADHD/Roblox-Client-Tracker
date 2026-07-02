PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K2 [tostring]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K3 ["true"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R3 0
       11 FASTCALL1                        TONUMBER R3 ; [+2]
       12 GETIMPORT                        R2 K5 [tonumber]
       14 CALL                             R2 1 1
       15 SETUPVAL                         R2 0
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R4 2
       18 MOVE                             R5 R1
       19 GETUPVAL                         R6 0
       20 CALL                             R4 2 -1
       21 NAMECALL                         R2 R2 K6 ["dispatch"]
       23 CALL                             R2 -1 0
       24 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Could not get asset ownership"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["purchase"]
        5 GETTABLEKS                       R3 R3 K2 ["cachedOwnedAssets"]
        7 GETUPVAL                         R5 0
        8 FASTCALL1                        TOSTRING R5 ; [+2]
        9 GETIMPORT                        R4 K4 [tostring]
       11 CALL                             R4 1 1
       12 GETTABLE                         R2 R3 R4
       13 JUMPIFEQKNIL                     R2 ; [+14]
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R2
       17 GETUPVAL                         R7 0
       18 CALL                             R5 2 -1
       19 NAMECALL                         R3 R0 K5 ["dispatch"]
       21 CALL                             R3 -1 0
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["resolve"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 -1
       27 RETURN                           R3 -1
       28 GETUPVAL                         R3 3
       29 CALL                             R3 0 1
       30 GETUPVAL                         R5 0
       31 FASTCALL1                        TYPEOF R5 ; [+2]
       32 GETIMPORT                        R4 K8 [typeof]
       34 CALL                             R4 1 1
       35 JUMPIFNOTEQKS                    R4 K9 ["string"] ; [+8]
       37 GETUPVAL                         R6 0
       38 FASTCALL1                        TONUMBER R6 ; [+2]
       39 GETIMPORT                        R5 K12 [tonumber]
       41 CALL                             R5 1 1
       42 ORK                              R4 R5 K10 [0]
       43 SETUPVAL                         R4 0
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R4 R4 K13 ["Inventory"]
       47 GETTABLEKS                       R4 R4 K14 ["V1"]
       49 GETTABLEKS                       R4 R4 K15 ["Users"]
       51 GETTABLEKS                       R4 R4 K16 ["Items"]
       53 GETTABLEKS                       R4 R4 K17 ["isOwned"]
       55 MOVE                             R5 R3
       56 GETIMPORT                        R6 K21 [Enum.AvatarItemType.Asset]
       58 GETUPVAL                         R7 0
       59 CALL                             R4 3 1
       60 NAMECALL                         R4 R4 K22 ["makeRequest"]
       62 CALL                             R4 1 1
       63 NEWCLOSURE                       R6 P0
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U1
       67 NEWCLOSURE                       R7 P1
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U6
       71 NAMECALL                         R4 R4 K23 ["andThen"]
       73 CALL                             R4 3 1
       74 RETURN                           R4 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          REF R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CLOSEUPVALS                      R1
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["getUserId"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K9 ["Actions"]
       35 GETTABLEKS                       R4 R4 K10 ["NetworkError"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K9 ["Actions"]
       44 GETTABLEKS                       R5 R5 K11 ["SetOwnsAsset"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R5 R0 K12 ["Packages"]
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R5 K13 ["Framework"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R7 R6 K14 ["RobloxAPI"]
       56 GETTABLEKS                       R8 R6 K15 ["Http"]
       58 GETTABLEKS                       R8 R8 K16 ["Networking"]
       60 GETTABLEKS                       R9 R6 K6 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["Promise"]
       64 GETTABLEKS                       R10 R7 K18 ["new"]
       66 DUPTABLE                         R11 K20 [{"networking"}]
       67 GETTABLEKS                       R12 R8 K18 ["new"]
       69 DUPTABLE                         R13 K24 [{["isInternal"] = True, ["loggingLevel"]}]
       70 GETTABLEKS                       R15 R1 K25 ["shouldDebugUrls"]
       72 CALL                             R15 0 1
       73 JUMPIFNOT                        R15 ; [+2]
       74 LOADN                            R14 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R14
       77 SETTABLEKS                       R14 R13 K23 ["loggingLevel"]
       79 CALL                             R12 1 1
       80 SETTABLEKS                       R12 R11 K19 ["networking"]
       82 CALL                             R10 1 1
       83 DUPCLOSURE                       R11 K26 [PROTO_3]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R3
       90 RETURN                           R11 1
