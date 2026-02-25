PROTO_0:
        0 NAMECALL                         R5 R0 K0 ["getState"]
        2 CALL                             R5 1 1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R8 R5 K1 ["AnimationConversion"]
        6 GETTABLEKS                       R7 R8 K2 ["animations"]
        8 CALL                             R6 1 1
        9 LOADN                            R7 0
       10 MOVE                             R8 R1
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 FORGPREP                         R8
       14 GETTABLE                         R13 R6 R11
       15 JUMPIFNOT                        R13 ; [+10]
       16 GETTABLE                         R13 R6 R11
       17 SETTABLEKS                       R2 R13 K3 ["status"]
       19 GETTABLE                         R13 R6 R11
       20 SETTABLEKS                       R4 R13 K4 ["errCode"]
       22 GETTABLE                         R13 R6 R11
       23 SETTABLEKS                       R3 R13 K5 ["converted"]
       25 ADDK                             R7 R7 K6 [1]
       26 FORGLOOP                         R8 2 ; [-13]
       28 JUMPIFNOTEQKN                    R7 K6 [1] ; [+16]
       30 GETUPVAL                         R10 1
       31 GETIMPORT                        R11 K8 [next]
       33 MOVE                             R12 R1
       34 CALL                             R11 1 1
       35 GETIMPORT                        R13 K8 [next]
       37 MOVE                             R14 R1
       38 CALL                             R13 1 1
       39 GETTABLE                         R12 R6 R13
       40 CALL                             R10 2 -1
       41 NAMECALL                         R8 R0 K9 ["dispatch"]
       43 CALL                             R8 -1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R10 2
       46 MOVE                             R11 R6
       47 CALL                             R10 1 -1
       48 NAMECALL                         R8 R0 K9 ["dispatch"]
       50 CALL                             R8 -1 0
       51 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetProductInfo"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 LOADK                            R5 K0 ["Animation"]
        5 LOADN                            R6 0
        6 GETUPVAL                         R7 4
        7 GETUPVAL                         R8 5
        8 LOADK                            R9 K1 [""]
        9 LOADK                            R10 K2 ["model/x-rbxm"]
       10 LOADN                            R11 0
       11 NAMECALL                         R0 R0 K3 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
       13 CALL                             R0 11 -1
       14 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEKS                       R5 R1 K0 ["id"]
        2 GETIMPORT                        R6 K2 [pcall]
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R5
        7 CALL                             R6 1 2
        8 JUMPIF                           R6 ; [+12]
        9 GETUPVAL                         R8 1
       10 MOVE                             R9 R3
       11 NEWTABLE                         R10 1 0
       13 LOADB                            R11 1
       14 SETTABLE                         R11 R10 R5
       15 GETUPVAL                         R12 2
       16 GETTABLEKS                       R11 R12 K3 ["FailedToGetProductInfo"]
       18 CALL                             R8 3 0
       19 LOADB                            R8 0
       20 RETURN                           R8 1
       21 GETTABLEKS                       R9 R7 K4 ["Name"]
       23 LOADK                            R10 K5 [" R15"]
       24 CONCAT                           R8 R9 R10
       25 GETTABLEKS                       R9 R7 K6 ["Description"]
       27 LOADNIL                          R10
       28 GETTABLEKS                       R12 R7 K7 ["Creator"]
       30 GETTABLEKS                       R11 R12 K8 ["CreatorType"]
       32 GETIMPORT                        R13 K11 [Enum.CreatorType.Group]
       34 GETTABLEKS                       R12 R13 K4 ["Name"]
       36 JUMPIFNOTEQ                      R11 R12 ; [+5]
       38 GETTABLEKS                       R11 R7 K7 ["Creator"]
       40 GETTABLEKS                       R10 R11 K12 ["CreatorTargetId"]
       42 NEWTABLE                         R11 0 0
       44 FASTCALL2                        TABLE_INSERT R11 R0 ; [+5]
       46 MOVE                             R13 R11
       47 MOVE                             R14 R0
       48 GETIMPORT                        R12 K15 [table.insert]
       50 CALL                             R12 2 0
       51 GETIMPORT                        R12 K2 [pcall]
       53 NEWCLOSURE                       R13 P1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R11
       56 CALL                             R12 1 2
       57 JUMPIF                           R12 ; [+12]
       58 GETUPVAL                         R14 1
       59 MOVE                             R15 R3
       60 NEWTABLE                         R16 1 0
       62 LOADB                            R17 1
       63 SETTABLE                         R17 R16 R5
       64 GETUPVAL                         R18 2
       65 GETTABLEKS                       R17 R18 K16 ["FailedSerialization"]
       67 CALL                             R14 3 0
       68 LOADB                            R14 0
       69 RETURN                           R14 1
       70 JUMPIFNOT                        R10 ; [+3]
       71 GETIMPORT                        R14 K18 [Enum.AssetCreatorType.Group]
       73 JUMP                             ; [+2]
       74 GETIMPORT                        R14 K20 [Enum.AssetCreatorType.User]
       76 JUMPIFNOT                        R10 ; [+2]
       77 MOVE                             R15 R10
       78 JUMP                             ; [+4]
       79 GETUPVAL                         R15 4
       80 NAMECALL                         R15 R15 K21 ["GetUserId"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K2 [pcall]
       85 NEWCLOSURE                       R17 P2
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 CALL                             R16 1 2
       93 JUMPIF                           R16 ; [+14]
       94 GETUPVAL                         R18 1
       95 MOVE                             R19 R3
       96 NEWTABLE                         R20 1 0
       98 LOADB                            R21 1
       99 SETTABLE                         R21 R20 R5
      100 GETUPVAL                         R22 2
      101 GETTABLEKS                       R21 R22 K22 ["FailedWithError"]
      103 LOADNIL                          R22
      104 MOVE                             R23 R17
      105 CALL                             R18 5 0
      106 LOADB                            R18 0
      107 RETURN                           R18 1
      108 GETTABLEKS                       R18 R17 K23 ["AssetId"]
      110 GETUPVAL                         R20 6
      111 GETTABLEKS                       R19 R20 K24 ["addCacheEntry"]
      113 MOVE                             R20 R5
      114 MOVE                             R21 R18
      115 CALL                             R19 2 0
      116 GETUPVAL                         R20 7
      117 GETTABLEKS                       R19 R20 K25 ["setTargetAssetId"]
      119 FASTCALL1                        TONUMBER R5 ; [+3]
      120 MOVE                             R21 R5
      121 GETIMPORT                        R20 K27 [tonumber]
      123 CALL                             R20 1 1
      124 FASTCALL1                        TONUMBER R18 ; [+3]
      125 MOVE                             R22 R18
      126 GETIMPORT                        R21 K27 [tonumber]
      128 CALL                             R21 1 1
      129 CALL                             R19 2 0
      130 GETUPVAL                         R19 1
      131 MOVE                             R20 R3
      132 NEWTABLE                         R21 1 0
      134 LOADB                            R22 1
      135 SETTABLE                         R22 R21 R5
      136 LOADNIL                          R22
      137 MOVE                             R23 R18
      138 CALL                             R19 4 0
      139 GETUPVAL                         R21 8
      140 MOVE                             R22 R5
      141 GETUPVAL                         R24 6
      142 GETTABLEKS                       R23 R24 K28 ["getAnimationId"]
      144 MOVE                             R24 R18
      145 CALL                             R23 1 1
      146 MOVE                             R24 R2
      147 CALL                             R21 3 -1
      148 NAMECALL                         R19 R3 K29 ["dispatch"]
      150 CALL                             R19 -1 0
      151 LOADB                            R19 1
      152 RETURN                           R19 1

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 NEWTABLE                         R3 0 0
        7 GETTABLEKS                       R7 R1 K1 ["AnimationConversion"]
        9 GETTABLEKS                       R4 R7 K2 ["selection"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R9 R10 K3 ["getAnimationAssetInfo"]
       17 MOVE                             R10 R7
       18 CALL                             R9 1 1
       19 GETUPVAL                         R13 1
       20 GETTABLEKS                       R12 R13 K4 ["RobloxAsset"]
       22 NAMECALL                         R10 R9 K5 ["IsA"]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+8]
       26 GETTABLEKS                       R13 R1 K1 ["AnimationConversion"]
       28 GETTABLEKS                       R12 R13 K6 ["animations"]
       30 GETTABLE                         R11 R12 R7
       31 GETTABLEKS                       R10 R11 K7 ["converted"]
       33 JUMPIFNOT                        R10 ; [+8]
       34 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       36 MOVE                             R11 R3
       37 MOVE                             R12 R9
       38 GETIMPORT                        R10 K10 [table.insert]
       40 CALL                             R10 2 0
       41 JUMP                             ; [+24]
       42 GETTABLEKS                       R13 R1 K1 ["AnimationConversion"]
       44 GETTABLEKS                       R12 R13 K6 ["animations"]
       46 GETTABLE                         R11 R12 R7
       47 GETTABLEKS                       R10 R11 K11 ["status"]
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R11 R12 K12 ["Uploading"]
       52 JUMPIFEQ                         R10 R11 ; [+13]
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R11 R12 K13 ["Done"]
       57 JUMPIFEQ                         R10 R11 ; [+8]
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R11 R12 K14 ["getConvertedKeyframeSequence"]
       62 MOVE                             R12 R9
       63 CALL                             R11 1 1
       64 JUMPIFNOT                        R11 ; [+1]
       65 SETTABLE                         R9 R2 R7
       66 FORGLOOP                         R4 1 ; [-53]
       68 GETUPVAL                         R4 3
       69 MOVE                             R5 R0
       70 MOVE                             R6 R2
       71 GETUPVAL                         R8 2
       72 GETTABLEKS                       R7 R8 K12 ["Uploading"]
       74 CALL                             R4 3 0
       75 MOVE                             R4 R2
       76 LOADNIL                          R5
       77 LOADNIL                          R6
       78 FORGPREP                         R4
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R9 R10 K14 ["getConvertedKeyframeSequence"]
       82 MOVE                             R10 R8
       83 CALL                             R9 1 1
       84 GETUPVAL                         R10 4
       85 NAMECALL                         R11 R9 K15 ["Clone"]
       87 CALL                             R11 1 1
       88 MOVE                             R12 R8
       89 GETUPVAL                         R13 5
       90 MOVE                             R14 R0
       91 GETUPVAL                         R15 6
       92 CALL                             R10 5 1
       93 JUMPIFNOT                        R10 ; [+7]
       94 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       96 MOVE                             R12 R3
       97 MOVE                             R13 R8
       98 GETIMPORT                        R11 K10 [table.insert]
      100 CALL                             R11 2 0
      101 FORGLOOP                         R4 2 ; [-23]
      103 GETUPVAL                         R6 7
      104 MOVE                             R7 R3
      105 GETUPVAL                         R8 5
      106 GETUPVAL                         R9 6
      107 CALL                             R6 3 -1
      108 NAMECALL                         R4 R0 K16 ["dispatch"]
      110 CALL                             R4 -1 0
      111 GETUPVAL                         R4 6
      112 LOADK                            R6 K17 ["onAnimationsConverted"]
      113 NAMECALL                         R4 R4 K18 ["getHandler"]
      115 CALL                             R4 2 1
      116 GETTABLEKS                       R6 R1 K1 ["AnimationConversion"]
      118 GETTABLEKS                       R5 R6 K6 ["animations"]
      120 GETTABLEKS                       R7 R1 K1 ["AnimationConversion"]
      122 GETTABLEKS                       R6 R7 K2 ["selection"]
      124 CALL                             R4 2 0
      125 RETURN                           R0 0

PROTO_6:
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
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["deepCopy"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R6 K11 ["Actions"]
       24 GETTABLEKS                       R4 R5 K12 ["SetAnimations"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R7 K11 ["Actions"]
       33 GETTABLEKS                       R5 R6 K13 ["SetAnimation"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R6 R0 K10 ["Src"]
       38 GETTABLEKS                       R5 R6 K14 ["Thunks"]
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R5 K15 ["UpdateScriptSuggestion"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R5 K16 ["ReplaceAnimation"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R10 R0 K10 ["Src"]
       52 GETTABLEKS                       R9 R10 K8 ["Util"]
       54 GETTABLEKS                       R8 R9 K17 ["AnimationConversion"]
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R8 K18 ["serializeInstances"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R8 K19 ["AnimationConversionManager"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R8 K20 ["constants"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R12 R11 K21 ["AssetType"]
       73 GETTABLEKS                       R13 R11 K22 ["AnimationStatus"]
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R17 R0 K10 ["Src"]
       79 GETTABLEKS                       R16 R17 K8 ["Util"]
       81 GETTABLEKS                       R15 R16 K23 ["SaveInterface"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K25 [game]
       86 LOADK                            R17 K26 ["MarketplaceService"]
       87 NAMECALL                         R15 R15 K27 ["GetService"]
       89 CALL                             R15 2 1
       90 GETIMPORT                        R16 K25 [game]
       92 LOADK                            R18 K28 ["PublishService"]
       93 NAMECALL                         R16 R16 K27 ["GetService"]
       95 CALL                             R16 2 1
       96 GETIMPORT                        R17 K25 [game]
       98 LOADK                            R19 K29 ["StudioService"]
       99 NAMECALL                         R17 R17 K27 ["GetService"]
      101 CALL                             R17 2 1
      102 DUPCLOSURE                       R18 K30 [PROTO_0]
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R3
      106 DUPCLOSURE                       R19 K31 [PROTO_4]
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R18
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R6
      116 DUPCLOSURE                       R20 K32 [PROTO_6]
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R7
      123 RETURN                           R20 1
