PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+90]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["Body"]
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K0 ["Body"]
       11 NAMECALL                         R2 R2 K1 ["JSONDecode"]
       13 CALL                             R2 2 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 DUPTABLE                         R3 K4 [{"id", "look"}]
       17 LOADN                            R4 1
       18 SETTABLEKS                       R4 R3 K2 ["id"]
       20 DUPTABLE                         R4 K6 [{"items"}]
       21 NEWTABLE                         R5 0 0
       23 SETTABLEKS                       R5 R4 K5 ["items"]
       25 SETTABLEKS                       R4 R3 K3 ["look"]
       27 GETTABLEKS                       R4 R2 K7 ["assets"]
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 FORGPREP                         R4
       32 GETTABLEKS                       R11 R3 K3 ["look"]
       34 GETTABLEKS                       R10 R11 K5 ["items"]
       36 DUPTABLE                         R11 K12 [{"id", "name", "creator", "assetType", "priceInRobux"}]
       37 GETTABLEKS                       R12 R8 K2 ["id"]
       39 SETTABLEKS                       R12 R11 K2 ["id"]
       41 LOADK                            R13 K13 ["Test Item"]
       42 GETTABLEKS                       R15 R8 K2 ["id"]
       44 FASTCALL1                        TOSTRING R15 ; [+2]
       45 GETIMPORT                        R14 K15 [tostring]
       47 CALL                             R14 1 1
       48 CONCAT                           R12 R13 R14
       49 SETTABLEKS                       R12 R11 K8 ["name"]
       51 DUPTABLE                         R12 K18 [{"id", "name", "type", "hasVerifiedBadge"}]
       52 GETUPVAL                         R14 3
       53 GETTABLEKS                       R13 R14 K19 ["getUserId"]
       55 CALL                             R13 0 1
       56 SETTABLEKS                       R13 R12 K2 ["id"]
       58 LOADK                            R13 K20 ["Test Creator"]
       59 SETTABLEKS                       R13 R12 K8 ["name"]
       61 LOADK                            R13 K21 ["User"]
       62 SETTABLEKS                       R13 R12 K16 ["type"]
       64 LOADB                            R13 0
       65 SETTABLEKS                       R13 R12 K17 ["hasVerifiedBadge"]
       67 SETTABLEKS                       R12 R11 K9 ["creator"]
       69 GETTABLEKS                       R12 R8 K22 ["publishAssetType"]
       71 SETTABLEKS                       R12 R11 K10 ["assetType"]
       73 LOADN                            R12 30
       74 SETTABLEKS                       R12 R11 K11 ["priceInRobux"]
       76 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       78 GETIMPORT                        R9 K25 [table.insert]
       80 CALL                             R9 2 0
       81 FORGLOOP                         R4 2 ; [-50]
       83 MOVE                             R4 R0
       84 DUPTABLE                         R5 K26 [{"Body"}]
       85 GETUPVAL                         R6 2
       86 MOVE                             R8 R3
       87 NAMECALL                         R6 R6 K27 ["JSONEncode"]
       89 CALL                             R6 2 1
       90 SETTABLEKS                       R6 R5 K0 ["Body"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 2
       94 GETUPVAL                         R4 1
       95 NAMECALL                         R2 R2 K28 ["RequestInternal"]
       97 CALL                             R2 2 1
       98 NEWCLOSURE                       R5 P0
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R1
      101 NAMECALL                         R3 R2 K29 ["Start"]
      103 CALL                             R3 2 -1
      104 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R0 K2 [string.split]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 LOADK                            R2 K3 [","]
        5 CALL                             R0 2 1
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 FASTCALL1                        TYPEOF R6 ; [+3]
       13 MOVE                             R8 R6
       14 GETIMPORT                        R7 K5 [typeof]
       16 CALL                             R7 1 1
       17 JUMPIFNOTEQKS                    R7 K6 ["number"] ; [+3]
       19 LOADB                            R7 1
       20 SETTABLE                         R7 R1 R6
       21 FORGLOOP                         R2 2 ; [-10]
       23 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["getLookPreviewNonBlockingErrorCodes"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R0 K1 ["errorDescription"]
        8 JUMPIFNOT                        R3 ; [+26]
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R0 K2 ["errorCode"]
       12 JUMPIFNOT                        R4 ; [+6]
       13 GETTABLEKS                       R5 R0 K2 ["errorCode"]
       15 GETTABLE                         R4 R2 R5
       16 JUMPIFNOTEQKB                    R4 TRUE ; [+2]
       18 LOADB                            R3 0
       19 DUPTABLE                         R6 K6 [{"message", "isBlocking", "isLocalized"}]
       20 GETTABLEKS                       R7 R0 K1 ["errorDescription"]
       22 SETTABLEKS                       R7 R6 K3 ["message"]
       24 SETTABLEKS                       R3 R6 K4 ["isBlocking"]
       26 LOADB                            R7 1
       27 SETTABLEKS                       R7 R6 K5 ["isLocalized"]
       29 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       31 MOVE                             R5 R1
       32 GETIMPORT                        R4 K9 [table.insert]
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R3 R0 K10 ["warnings"]
       37 JUMPIFNOT                        R3 ; [+30]
       38 GETTABLEKS                       R3 R0 K10 ["warnings"]
       40 LOADNIL                          R4
       41 LOADNIL                          R5
       42 FORGPREP                         R3
       43 LOADB                            R8 1
       44 GETTABLEKS                       R10 R7 K2 ["errorCode"]
       46 GETTABLE                         R9 R2 R10
       47 JUMPIFNOTEQKB                    R9 TRUE ; [+2]
       49 LOADB                            R8 0
       50 DUPTABLE                         R11 K6 [{"message", "isBlocking", "isLocalized"}]
       51 GETTABLEKS                       R12 R7 K1 ["errorDescription"]
       53 SETTABLEKS                       R12 R11 K3 ["message"]
       55 SETTABLEKS                       R8 R11 K4 ["isBlocking"]
       57 LOADB                            R12 1
       58 SETTABLEKS                       R12 R11 K5 ["isLocalized"]
       60 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       62 MOVE                             R10 R1
       63 GETIMPORT                        R9 K9 [table.insert]
       65 CALL                             R9 2 0
       66 FORGLOOP                         R3 2 ; [-24]
       68 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["look"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R3 R0 K0 ["look"]
        7 GETTABLEKS                       R2 R3 K1 ["items"]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R1 1
       11 NEWTABLE                         R2 0 0
       13 GETTABLEKS                       R6 R0 K0 ["look"]
       15 GETTABLEKS                       R3 R6 K1 ["items"]
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETUPVAL                         R8 0
       21 CALL                             R8 0 1
       22 JUMPIFNOT                        R8 ; [+67]
       23 GETTABLEKS                       R8 R7 K2 ["bundleType"]
       25 JUMPIFEQKNIL                     R8 ; [+64]
       27 DUPTABLE                         R8 K13 [{"itemRowType", "id", "name", "creator", "creatorId", "creatorType", "creatorHasVerifiedBadge", "price", "rowState", "assetsInBundle"}]
       28 LOADK                            R9 K14 ["Bundle"]
       29 SETTABLEKS                       R9 R8 K3 ["itemRowType"]
       31 GETTABLEKS                       R9 R7 K4 ["id"]
       33 SETTABLEKS                       R9 R8 K4 ["id"]
       35 GETTABLEKS                       R9 R7 K5 ["name"]
       37 SETTABLEKS                       R9 R8 K5 ["name"]
       39 GETTABLEKS                       R10 R7 K6 ["creator"]
       41 GETTABLEKS                       R9 R10 K5 ["name"]
       43 SETTABLEKS                       R9 R8 K6 ["creator"]
       45 GETTABLEKS                       R11 R7 K6 ["creator"]
       47 GETTABLEKS                       R10 R11 K4 ["id"]
       49 FASTCALL1                        TOSTRING R10 ; [+2]
       50 GETIMPORT                        R9 K16 [tostring]
       52 CALL                             R9 1 1
       53 SETTABLEKS                       R9 R8 K7 ["creatorId"]
       55 GETTABLEKS                       R10 R7 K6 ["creator"]
       57 GETTABLEKS                       R9 R10 K17 ["type"]
       59 SETTABLEKS                       R9 R8 K8 ["creatorType"]
       61 GETTABLEKS                       R10 R7 K6 ["creator"]
       63 GETTABLEKS                       R9 R10 K18 ["hasVerifiedBadge"]
       65 SETTABLEKS                       R9 R8 K9 ["creatorHasVerifiedBadge"]
       67 GETTABLEKS                       R10 R7 K20 ["priceInRobux"]
       69 ORK                              R9 R10 K19 [0]
       70 SETTABLEKS                       R9 R8 K10 ["price"]
       72 LOADK                            R9 K21 ["Selected"]
       73 SETTABLEKS                       R9 R8 K11 ["rowState"]
       75 GETTABLEKS                       R9 R7 K12 ["assetsInBundle"]
       77 JUMPIF                           R9 ; [+2]
       78 NEWTABLE                         R9 0 0
       80 SETTABLEKS                       R9 R8 K12 ["assetsInBundle"]
       82 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       84 MOVE                             R10 R1
       85 MOVE                             R11 R8
       86 GETIMPORT                        R9 K24 [table.insert]
       88 CALL                             R9 2 0
       89 JUMP                             ; [+107]
       90 GETUPVAL                         R8 0
       91 CALL                             R8 0 1
       92 JUMPIFNOT                        R8 ; [+4]
       93 GETTABLEKS                       R8 R7 K25 ["itemType"]
       95 JUMPIFNOTEQKS                    R8 K26 ["Asset"] ; [+91]
       97 GETTABLEKS                       R8 R7 K27 ["assetType"]
       99 JUMPIFNOT                        R8 ; [+97]
      100 GETIMPORT                        R8 K30 [Enum.AssetType]
      102 GETTABLEKS                       R10 R7 K27 ["assetType"]
      104 NAMECALL                         R8 R8 K31 ["FromValue"]
      106 CALL                             R8 2 1
      107 JUMPIFNOT                        R8 ; [+89]
      108 DUPTABLE                         R9 K32 [{"itemRowType", "id", "name", "creator", "creatorId", "creatorType", "creatorHasVerifiedBadge", "price", "rowState", "assetType"}]
      109 LOADK                            R10 K26 ["Asset"]
      110 SETTABLEKS                       R10 R9 K3 ["itemRowType"]
      112 GETTABLEKS                       R10 R7 K4 ["id"]
      114 SETTABLEKS                       R10 R9 K4 ["id"]
      116 GETTABLEKS                       R10 R7 K5 ["name"]
      118 SETTABLEKS                       R10 R9 K5 ["name"]
      120 GETTABLEKS                       R11 R7 K6 ["creator"]
      122 GETTABLEKS                       R10 R11 K5 ["name"]
      124 SETTABLEKS                       R10 R9 K6 ["creator"]
      126 GETTABLEKS                       R12 R7 K6 ["creator"]
      128 GETTABLEKS                       R11 R12 K4 ["id"]
      130 FASTCALL1                        TOSTRING R11 ; [+2]
      131 GETIMPORT                        R10 K16 [tostring]
      133 CALL                             R10 1 1
      134 SETTABLEKS                       R10 R9 K7 ["creatorId"]
      136 GETTABLEKS                       R11 R7 K6 ["creator"]
      138 GETTABLEKS                       R10 R11 K17 ["type"]
      140 SETTABLEKS                       R10 R9 K8 ["creatorType"]
      142 GETTABLEKS                       R11 R7 K6 ["creator"]
      144 GETTABLEKS                       R10 R11 K18 ["hasVerifiedBadge"]
      146 SETTABLEKS                       R10 R9 K9 ["creatorHasVerifiedBadge"]
      148 GETTABLEKS                       R11 R7 K20 ["priceInRobux"]
      150 ORK                              R10 R11 K19 [0]
      151 SETTABLEKS                       R10 R9 K10 ["price"]
      153 LOADK                            R10 K21 ["Selected"]
      154 SETTABLEKS                       R10 R9 K11 ["rowState"]
      156 SETTABLEKS                       R8 R9 K27 ["assetType"]
      158 GETIMPORT                        R10 K34 [Enum.AssetType.FaceMakeup]
      160 JUMPIFEQ                         R8 R10 ; [+9]
      162 GETIMPORT                        R10 K36 [Enum.AssetType.LipMakeup]
      164 JUMPIFEQ                         R8 R10 ; [+5]
      166 GETIMPORT                        R10 K38 [Enum.AssetType.EyeMakeup]
      168 JUMPIFNOTEQ                      R8 R10 ; [+10]
      170 LOADN                            R12 1
      171 FASTCALL3                        TABLE_INSERT R2 R12 R9
      173 MOVE                             R11 R2
      174 MOVE                             R13 R9
      175 GETIMPORT                        R10 K24 [table.insert]
      177 CALL                             R10 3 0
      178 JUMP                             ; [+18]
      179 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      181 MOVE                             R11 R1
      182 MOVE                             R12 R9
      183 GETIMPORT                        R10 K24 [table.insert]
      185 CALL                             R10 2 0
      186 JUMP                             ; [+10]
      187 GETIMPORT                        R8 K40 [error]
      189 LOADK                            R10 K41 ["Unknown item type in look preview response: %*"]
      190 GETTABLEKS                       R12 R7 K25 ["itemType"]
      192 NAMECALL                         R10 R10 K42 ["format"]
      194 CALL                             R10 2 1
      195 MOVE                             R9 R10
      196 CALL                             R8 1 0
      197 FORGLOOP                         R3 2 ; [-178]
      199 GETUPVAL                         R4 1
      200 GETTABLEKS                       R3 R4 K43 ["append"]
      202 MOVE                             R4 R1
      203 MOVE                             R5 R2
      204 CALL                             R3 2 1
      205 GETUPVAL                         R4 2
      206 CALL                             R4 0 1
      207 JUMPIFNOT                        R4 ; [+11]
      208 LENGTH                           R4 R3
      209 MOVE                             R5 R3
      210 LOADNIL                          R6
      211 LOADNIL                          R7
      212 FORGPREP                         R5
      213 SUB                              R11 R4 R8
      214 ADDK                             R10 R11 K44 [1]
      215 SETTABLEKS                       R10 R9 K45 ["layerOrder"]
      217 FORGLOOP                         R5 2 ; [-5]
      219 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["lookPreviewUrl"]
        3 CALL                             R2 0 1
        4 DUPTABLE                         R3 K4 [{"assets", "lookType", "validationType"}]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K1 ["assets"]
        9 JUMPIFNOTEQKS                    R0 K5 ["MakeupLook"] ; [+3]
       11 LOADK                            R4 K6 ["Makeup"]
       12 JUMP                             ; [+1]
       13 LOADK                            R4 K7 ["Avatar"]
       14 SETTABLEKS                       R4 R3 K2 ["lookType"]
       16 LOADK                            R4 K8 ["filterUnsupportedTypes"]
       17 SETTABLEKS                       R4 R3 K3 ["validationType"]
       19 MOVE                             R4 R1
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETTABLEKS                       R10 R8 K9 ["item"]
       25 GETTABLEKS                       R9 R10 K10 ["source"]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R10 R11 K11 ["SOURCE_MARKETPLACE"]
       30 JUMPIFNOTEQ                      R9 R10 ; [+41]
       32 GETTABLEKS                       R9 R8 K12 ["isHidden"]
       34 JUMPIFEQKB                       R9 TRUE ; [+37]
       36 GETUPVAL                         R9 2
       37 CALL                             R9 0 1
       38 JUMPIFNOT                        R9 ; [+6]
       39 GETTABLEKS                       R10 R8 K13 ["palette"]
       41 GETTABLEKS                       R9 R10 K14 ["PublishAssetType"]
       43 JUMPIFEQKNIL                     R9 ; [+28]
       45 GETTABLEKS                       R10 R3 K1 ["assets"]
       47 DUPTABLE                         R11 K17 [{"id", "publishAssetType"}]
       48 GETTABLEKS                       R13 R8 K9 ["item"]
       50 GETTABLEKS                       R12 R13 K18 ["marketplaceItem"]
       52 SETTABLEKS                       R12 R11 K15 ["id"]
       54 GETUPVAL                         R13 2
       55 CALL                             R13 0 1
       56 JUMPIFNOT                        R13 ; [+7]
       57 GETTABLEKS                       R14 R8 K13 ["palette"]
       59 GETTABLEKS                       R13 R14 K14 ["PublishAssetType"]
       61 GETTABLEKS                       R12 R13 K19 ["Value"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R12
       65 SETTABLEKS                       R12 R11 K16 ["publishAssetType"]
       67 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       69 GETIMPORT                        R9 K22 [table.insert]
       71 CALL                             R9 2 0
       72 FORGLOOP                         R4 2 ; [-50]
       74 DUPTABLE                         R4 K27 [{"Url", "Method", "Body", "Headers"}]
       75 SETTABLEKS                       R2 R4 K23 ["Url"]
       77 LOADK                            R5 K28 ["POST"]
       78 SETTABLEKS                       R5 R4 K24 ["Method"]
       80 GETUPVAL                         R5 3
       81 MOVE                             R7 R3
       82 NAMECALL                         R5 R5 K29 ["JSONEncode"]
       84 CALL                             R5 2 1
       85 SETTABLEKS                       R5 R4 K25 ["Body"]
       87 NEWTABLE                         R5 1 0
       89 LOADK                            R6 K30 ["application/json"]
       90 SETTABLEKS                       R6 R5 K31 ["Content-Type"]
       92 SETTABLEKS                       R5 R4 K26 ["Headers"]
       94 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createLookPreviewRequestInfo"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["requestInternal"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 NAMECALL                         R4 R3 K2 ["await"]
       13 CALL                             R4 1 2
       14 GETIMPORT                        R6 K4 [pcall]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R5
       19 CALL                             R6 1 2
       20 JUMPIFNOT                        R6 ; [+1]
       21 JUMPIF                           R4 ; [+22]
       22 DUPTABLE                         R8 K7 [{"lookItems", "errorMessages"}]
       23 NEWTABLE                         R9 0 0
       25 SETTABLEKS                       R9 R8 K5 ["lookItems"]
       27 NEWTABLE                         R9 0 1
       29 DUPTABLE                         R10 K11 [{"message", "isBlocking", "isLocalized"}]
       30 LOADK                            R11 K12 ["UnexpectedErrorLookPreview"]
       31 SETTABLEKS                       R11 R10 K8 ["message"]
       33 LOADB                            R11 1
       34 SETTABLEKS                       R11 R10 K9 ["isBlocking"]
       36 LOADB                            R11 0
       37 SETTABLEKS                       R11 R10 K10 ["isLocalized"]
       39 SETLIST                          R9 R10 1 [1]
       41 SETTABLEKS                       R9 R8 K6 ["errorMessages"]
       43 RETURN                           R8 1
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R8 R9 K13 ["parseLookApiResponseForErrorMessages"]
       47 MOVE                             R9 R7
       48 CALL                             R8 1 1
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R9 R10 K14 ["parseLookPreviewResponseForLookItems"]
       52 MOVE                             R10 R7
       53 CALL                             R9 1 1
       54 DUPTABLE                         R10 K7 [{"lookItems", "errorMessages"}]
       55 SETTABLEKS                       R9 R10 K5 ["lookItems"]
       57 SETTABLEKS                       R8 R10 K6 ["errorMessages"]
       59 RETURN                           R10 1

PROTO_11:
        0 GETIMPORT                        R6 K2 [string.split]
        2 MOVE                             R7 R3
        3 LOADK                            R8 K3 ["_"]
        4 CALL                             R6 2 1
        5 GETTABLEN                        R5 R6 1
        6 GETIMPORT                        R7 K2 [string.split]
        8 MOVE                             R8 R3
        9 LOADK                            R9 K3 ["_"]
       10 CALL                             R7 2 1
       11 GETTABLEN                        R6 R7 2
       12 DUPTABLE                         R7 K8 [{"assets", "lookType", "validationType", "groupId"}]
       13 NEWTABLE                         R8 0 0
       15 SETTABLEKS                       R8 R7 K4 ["assets"]
       17 JUMPIFNOTEQKS                    R4 K9 ["MakeupLook"] ; [+3]
       19 LOADK                            R8 K10 ["Makeup"]
       20 JUMP                             ; [+1]
       21 LOADK                            R8 K11 ["Avatar"]
       22 SETTABLEKS                       R8 R7 K5 ["lookType"]
       24 LOADK                            R8 K12 ["default"]
       25 SETTABLEKS                       R8 R7 K6 ["validationType"]
       27 JUMPIFNOTEQKS                    R5 K13 ["Group"] ; [+3]
       29 MOVE                             R8 R6
       30 JUMP                             ; [+1]
       31 LOADNIL                          R8
       32 SETTABLEKS                       R8 R7 K7 ["groupId"]
       34 MOVE                             R8 R1
       35 LOADNIL                          R9
       36 LOADNIL                          R10
       37 FORGPREP                         R8
       38 GETTABLEKS                       R13 R12 K14 ["itemRowType"]
       40 JUMPIFNOTEQKS                    R13 K15 ["Asset"] ; [+18]
       42 GETTABLEKS                       R13 R12 K16 ["rowState"]
       44 JUMPIFNOTEQKS                    R13 K17 ["Selected"] ; [+14]
       46 GETTABLEKS                       R14 R7 K4 ["assets"]
       48 DUPTABLE                         R15 K19 [{"id"}]
       49 GETTABLEKS                       R16 R12 K18 ["id"]
       51 SETTABLEKS                       R16 R15 K18 ["id"]
       53 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
       55 GETIMPORT                        R13 K22 [table.insert]
       57 CALL                             R13 2 0
       58 JUMP                             ; [+34]
       59 GETUPVAL                         R13 0
       60 CALL                             R13 0 1
       61 JUMPIFNOT                        R13 ; [+31]
       62 GETTABLEKS                       R13 R12 K14 ["itemRowType"]
       64 JUMPIFNOTEQKS                    R13 K23 ["Bundle"] ; [+28]
       66 GETTABLEKS                       R13 R12 K16 ["rowState"]
       68 JUMPIFNOTEQKS                    R13 K17 ["Selected"] ; [+24]
       70 GETTABLEKS                       R13 R12 K24 ["assetsInBundle"]
       72 LOADNIL                          R14
       73 LOADNIL                          R15
       74 FORGPREP                         R13
       75 GETTABLEKS                       R19 R7 K4 ["assets"]
       77 DUPTABLE                         R20 K26 [{"id", "bundleId"}]
       78 GETTABLEKS                       R21 R17 K18 ["id"]
       80 SETTABLEKS                       R21 R20 K18 ["id"]
       82 GETTABLEKS                       R21 R12 K18 ["id"]
       84 SETTABLEKS                       R21 R20 K25 ["bundleId"]
       86 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
       88 GETIMPORT                        R18 K22 [table.insert]
       90 CALL                             R18 2 0
       91 FORGLOOP                         R13 2 ; [-17]
       93 FORGLOOP                         R8 2 ; [-56]
       95 GETUPVAL                         R9 1
       96 GETTABLEKS                       R8 R9 K27 ["lookPreviewUrl"]
       98 CALL                             R8 0 1
       99 DUPTABLE                         R9 K32 [{"Url", "Method", "Body", "Headers"}]
      100 SETTABLEKS                       R8 R9 K28 ["Url"]
      102 LOADK                            R10 K33 ["POST"]
      103 SETTABLEKS                       R10 R9 K29 ["Method"]
      105 GETUPVAL                         R10 2
      106 MOVE                             R12 R7
      107 NAMECALL                         R10 R10 K34 ["JSONEncode"]
      109 CALL                             R10 2 1
      110 SETTABLEKS                       R10 R9 K30 ["Body"]
      112 NEWTABLE                         R10 1 0
      114 LOADK                            R11 K35 ["application/json"]
      115 SETTABLEKS                       R11 R10 K36 ["Content-Type"]
      117 SETTABLEKS                       R10 R9 K31 ["Headers"]
      119 RETURN                           R9 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["createLookValidationRequestInfo"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 CALL                             R5 5 1
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K1 ["requestInternal"]
       12 MOVE                             R7 R5
       13 CALL                             R6 1 1
       14 NAMECALL                         R7 R6 K2 ["await"]
       16 CALL                             R7 1 2
       17 GETIMPORT                        R9 K4 [pcall]
       19 NEWCLOSURE                       R10 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R8
       22 CALL                             R9 1 2
       23 JUMPIFNOT                        R9 ; [+1]
       24 JUMPIF                           R7 ; [+21]
       25 DUPTABLE                         R11 K7 [{"success", "errorMessages"}]
       26 LOADB                            R12 0
       27 SETTABLEKS                       R12 R11 K5 ["success"]
       29 NEWTABLE                         R12 0 1
       31 DUPTABLE                         R13 K11 [{"message", "isBlocking", "isLocalized"}]
       32 LOADK                            R14 K12 ["UnexpectedErrorLookValidation"]
       33 SETTABLEKS                       R14 R13 K8 ["message"]
       35 LOADB                            R14 1
       36 SETTABLEKS                       R14 R13 K9 ["isBlocking"]
       38 LOADB                            R14 0
       39 SETTABLEKS                       R14 R13 K10 ["isLocalized"]
       41 SETLIST                          R12 R13 1 [1]
       43 SETTABLEKS                       R12 R11 K6 ["errorMessages"]
       45 RETURN                           R11 1
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R11 R12 K13 ["parseLookApiResponseForErrorMessages"]
       49 MOVE                             R12 R10
       50 CALL                             R11 1 1
       51 DUPTABLE                         R12 K7 [{"success", "errorMessages"}]
       52 LENGTH                           R14 R11
       53 JUMPIFEQKN                       R14 K14 [0] ; [+2]
       55 LOADB                            R13 0 +1
       56 LOADB                            R13 1
       57 SETTABLEKS                       R13 R12 K5 ["success"]
       59 SETTABLEKS                       R11 R12 K6 ["errorMessages"]
       61 RETURN                           R12 1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["layerOrder"]
        2 GETTABLEKS                       R4 R1 K0 ["layerOrder"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_15:
        0 GETIMPORT                        R9 K2 [string.split]
        2 MOVE                             R10 R3
        3 LOADK                            R11 K3 ["_"]
        4 CALL                             R9 2 1
        5 GETTABLEN                        R8 R9 1
        6 GETIMPORT                        R10 K2 [string.split]
        8 MOVE                             R11 R3
        9 LOADK                            R12 K3 ["_"]
       10 CALL                             R10 2 1
       11 GETTABLEN                        R9 R10 2
       12 DUPTABLE                         R10 K10 [{"assets", "lookType", "name", "description", "avatarProperties", "groupId"}]
       13 NEWTABLE                         R11 0 0
       15 SETTABLEKS                       R11 R10 K4 ["assets"]
       17 JUMPIFNOTEQKS                    R4 K11 ["MakeupLook"] ; [+3]
       19 LOADK                            R11 K12 ["Makeup"]
       20 JUMP                             ; [+1]
       21 LOADK                            R11 K13 ["Avatar"]
       22 SETTABLEKS                       R11 R10 K5 ["lookType"]
       24 SETTABLEKS                       R5 R10 K6 ["name"]
       26 SETTABLEKS                       R6 R10 K7 ["description"]
       28 DUPTABLE                         R11 K17 [{"playerAvatarType", "bodyColor3s", "scale"}]
       29 LOADK                            R12 K18 ["R15"]
       30 SETTABLEKS                       R12 R11 K14 ["playerAvatarType"]
       32 DUPTABLE                         R12 K25 [{"headColor3", "leftArmColor3", "leftLegColor3", "rightArmColor3", "rightLegColor3", "torsoColor3"}]
       33 NAMECALL                         R13 R2 K26 ["ToHex"]
       35 CALL                             R13 1 1
       36 SETTABLEKS                       R13 R12 K19 ["headColor3"]
       38 NAMECALL                         R13 R2 K26 ["ToHex"]
       40 CALL                             R13 1 1
       41 SETTABLEKS                       R13 R12 K20 ["leftArmColor3"]
       43 NAMECALL                         R13 R2 K26 ["ToHex"]
       45 CALL                             R13 1 1
       46 SETTABLEKS                       R13 R12 K21 ["leftLegColor3"]
       48 NAMECALL                         R13 R2 K26 ["ToHex"]
       50 CALL                             R13 1 1
       51 SETTABLEKS                       R13 R12 K22 ["rightArmColor3"]
       53 NAMECALL                         R13 R2 K26 ["ToHex"]
       55 CALL                             R13 1 1
       56 SETTABLEKS                       R13 R12 K23 ["rightLegColor3"]
       58 NAMECALL                         R13 R2 K26 ["ToHex"]
       60 CALL                             R13 1 1
       61 SETTABLEKS                       R13 R12 K24 ["torsoColor3"]
       63 SETTABLEKS                       R12 R11 K15 ["bodyColor3s"]
       65 MOVE                             R12 R7
       66 JUMPIF                           R12 ; [+19]
       67 DUPTABLE                         R12 K33 [{"bodyType", "depth", "head", "height", "proportion", "width"}]
       68 LOADN                            R13 1
       69 SETTABLEKS                       R13 R12 K27 ["bodyType"]
       71 LOADN                            R13 1
       72 SETTABLEKS                       R13 R12 K28 ["depth"]
       74 LOADN                            R13 1
       75 SETTABLEKS                       R13 R12 K29 ["head"]
       77 LOADN                            R13 1
       78 SETTABLEKS                       R13 R12 K30 ["height"]
       80 LOADN                            R13 1
       81 SETTABLEKS                       R13 R12 K31 ["proportion"]
       83 LOADN                            R13 1
       84 SETTABLEKS                       R13 R12 K32 ["width"]
       86 SETTABLEKS                       R12 R11 K16 ["scale"]
       88 SETTABLEKS                       R11 R10 K8 ["avatarProperties"]
       90 JUMPIFNOTEQKS                    R8 K34 ["Group"] ; [+3]
       92 MOVE                             R11 R9
       93 JUMP                             ; [+1]
       94 LOADNIL                          R11
       95 SETTABLEKS                       R11 R10 K9 ["groupId"]
       97 LOADNIL                          R11
       98 GETUPVAL                         R12 0
       99 CALL                             R12 0 1
      100 JUMPIFNOT                        R12 ; [+26]
      101 NEWTABLE                         R12 0 0
      103 MOVE                             R13 R1
      104 LOADNIL                          R14
      105 LOADNIL                          R15
      106 FORGPREP                         R13
      107 GETTABLEKS                       R18 R17 K35 ["itemRowType"]
      109 JUMPIFEQKS                       R18 K36 ["BodyColor"] ; [+8]
      111 FASTCALL2                        TABLE_INSERT R12 R17 ; [+5]
      113 MOVE                             R19 R12
      114 MOVE                             R20 R17
      115 GETIMPORT                        R18 K39 [table.insert]
      117 CALL                             R18 2 0
      118 FORGLOOP                         R13 2 ; [-12]
      120 GETIMPORT                        R13 K41 [table.sort]
      122 MOVE                             R14 R12
      123 DUPCLOSURE                       R15 K42 [PROTO_14]
      124 CALL                             R13 2 0
      125 MOVE                             R11 R12
      126 JUMP                             ; [+6]
      127 GETUPVAL                         R13 1
      128 GETTABLEKS                       R12 R13 K43 ["reverse"]
      130 MOVE                             R13 R1
      131 CALL                             R12 1 1
      132 MOVE                             R11 R12
      133 LOADN                            R12 1
      134 MOVE                             R13 R11
      135 LOADNIL                          R14
      136 LOADNIL                          R15
      137 FORGPREP                         R13
      138 GETTABLEKS                       R18 R17 K35 ["itemRowType"]
      140 JUMPIFNOTEQKS                    R18 K44 ["Asset"] ; [+30]
      142 GETTABLEKS                       R18 R17 K45 ["rowState"]
      144 JUMPIFNOTEQKS                    R18 K46 ["Selected"] ; [+26]
      146 GETTABLEKS                       R19 R10 K4 ["assets"]
      148 DUPTABLE                         R20 K49 [{"id", "meta"}]
      149 GETTABLEKS                       R21 R17 K47 ["id"]
      151 SETTABLEKS                       R21 R20 K47 ["id"]
      153 DUPTABLE                         R21 K53 [{"order", "puffiness", "version"}]
      154 SETTABLEKS                       R12 R21 K50 ["order"]
      156 LOADN                            R22 1
      157 SETTABLEKS                       R22 R21 K51 ["puffiness"]
      159 LOADN                            R22 1
      160 SETTABLEKS                       R22 R21 K52 ["version"]
      162 SETTABLEKS                       R21 R20 K48 ["meta"]
      164 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      166 GETIMPORT                        R18 K39 [table.insert]
      168 CALL                             R18 2 0
      169 ADDK                             R12 R12 K54 [1]
      170 JUMP                             ; [+46]
      171 GETUPVAL                         R18 2
      172 CALL                             R18 0 1
      173 JUMPIFNOT                        R18 ; [+43]
      174 GETTABLEKS                       R18 R17 K35 ["itemRowType"]
      176 JUMPIFNOTEQKS                    R18 K55 ["Bundle"] ; [+40]
      178 GETTABLEKS                       R18 R17 K45 ["rowState"]
      180 JUMPIFNOTEQKS                    R18 K46 ["Selected"] ; [+36]
      182 GETTABLEKS                       R18 R17 K56 ["assetsInBundle"]
      184 LOADNIL                          R19
      185 LOADNIL                          R20
      186 FORGPREP                         R18
      187 GETTABLEKS                       R24 R10 K4 ["assets"]
      189 DUPTABLE                         R25 K58 [{"id", "bundleId", "meta"}]
      190 GETTABLEKS                       R26 R22 K47 ["id"]
      192 SETTABLEKS                       R26 R25 K47 ["id"]
      194 GETTABLEKS                       R26 R17 K47 ["id"]
      196 SETTABLEKS                       R26 R25 K57 ["bundleId"]
      198 DUPTABLE                         R26 K53 [{"order", "puffiness", "version"}]
      199 SETTABLEKS                       R12 R26 K50 ["order"]
      201 LOADN                            R27 1
      202 SETTABLEKS                       R27 R26 K51 ["puffiness"]
      204 LOADN                            R27 1
      205 SETTABLEKS                       R27 R26 K52 ["version"]
      207 SETTABLEKS                       R26 R25 K48 ["meta"]
      209 FASTCALL2                        TABLE_INSERT R24 R25 ; [+3]
      211 GETIMPORT                        R23 K39 [table.insert]
      213 CALL                             R23 2 0
      214 ADDK                             R12 R12 K54 [1]
      215 FORGLOOP                         R18 2 ; [-29]
      217 FORGLOOP                         R13 2 ; [-80]
      219 GETUPVAL                         R14 3
      220 GETTABLEKS                       R13 R14 K59 ["lookCreateUrl"]
      222 CALL                             R13 0 1
      223 DUPTABLE                         R14 K64 [{"Url", "Method", "Body", "Headers"}]
      224 SETTABLEKS                       R13 R14 K60 ["Url"]
      226 LOADK                            R15 K65 ["POST"]
      227 SETTABLEKS                       R15 R14 K61 ["Method"]
      229 GETUPVAL                         R15 4
      230 MOVE                             R17 R10
      231 NAMECALL                         R15 R15 K66 ["JSONEncode"]
      233 CALL                             R15 2 1
      234 SETTABLEKS                       R15 R14 K62 ["Body"]
      236 NEWTABLE                         R15 1 0
      238 LOADK                            R16 K67 ["application/json"]
      239 SETTABLEKS                       R16 R15 K68 ["Content-Type"]
      241 SETTABLEKS                       R15 R14 K63 ["Headers"]
      243 RETURN                           R14 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R8 R9 K0 ["createLookRequestInfo"]
        3 MOVE                             R9 R0
        4 MOVE                             R10 R1
        5 MOVE                             R11 R2
        6 MOVE                             R12 R3
        7 MOVE                             R13 R6
        8 MOVE                             R14 R4
        9 MOVE                             R15 R5
       10 MOVE                             R16 R7
       11 CALL                             R8 8 1
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R9 R10 K1 ["requestInternal"]
       15 MOVE                             R10 R8
       16 CALL                             R9 1 1
       17 NAMECALL                         R10 R9 K2 ["await"]
       19 CALL                             R10 1 2
       20 GETIMPORT                        R12 K4 [pcall]
       22 NEWCLOSURE                       R13 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R11
       25 CALL                             R12 1 2
       26 JUMPIFNOT                        R12 ; [+1]
       27 JUMPIF                           R10 ; [+24]
       28 DUPTABLE                         R14 K8 [{"success", "lookId", "errorMessages"}]
       29 LOADB                            R15 0
       30 SETTABLEKS                       R15 R14 K5 ["success"]
       32 LOADNIL                          R15
       33 SETTABLEKS                       R15 R14 K6 ["lookId"]
       35 NEWTABLE                         R15 0 1
       37 DUPTABLE                         R16 K12 [{"message", "isBlocking", "isLocalized"}]
       38 LOADK                            R17 K13 ["UnexpectedErrorLookCreation"]
       39 SETTABLEKS                       R17 R16 K9 ["message"]
       41 LOADB                            R17 1
       42 SETTABLEKS                       R17 R16 K10 ["isBlocking"]
       44 LOADB                            R17 0
       45 SETTABLEKS                       R17 R16 K11 ["isLocalized"]
       47 SETLIST                          R15 R16 1 [1]
       49 SETTABLEKS                       R15 R14 K7 ["errorMessages"]
       51 RETURN                           R14 1
       52 GETUPVAL                         R15 0
       53 GETTABLEKS                       R14 R15 K14 ["parseLookApiResponseForErrorMessages"]
       55 MOVE                             R15 R13
       56 CALL                             R14 1 1
       57 DUPTABLE                         R15 K8 [{"success", "lookId", "errorMessages"}]
       58 LENGTH                           R17 R14
       59 JUMPIFEQKN                       R17 K15 [0] ; [+2]
       61 LOADB                            R16 0 +1
       62 LOADB                            R16 1
       63 SETTABLEKS                       R16 R15 K5 ["success"]
       65 GETTABLEKS                       R16 R13 K16 ["id"]
       67 SETTABLEKS                       R16 R15 K6 ["lookId"]
       69 SETTABLEKS                       R14 R15 K7 ["errorMessages"]
       71 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AvatarCompatibilityPreviewer"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Src"]
       23 GETTABLEKS                       R4 R5 K12 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R7 R2 K11 ["Src"]
       30 GETTABLEKS                       R6 R7 K13 ["Util"]
       32 GETTABLEKS                       R5 R6 K14 ["Constants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R8 R2 K11 ["Src"]
       39 GETTABLEKS                       R7 R8 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K15 ["Url"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R8 R2 K16 ["Packages"]
       48 GETTABLEKS                       R7 R8 K17 ["Promise"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R9 R2 K16 ["Packages"]
       55 GETTABLEKS                       R8 R9 K18 ["Dash"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R11 R2 K11 ["Src"]
       62 GETTABLEKS                       R10 R11 K19 ["Flags"]
       64 GETTABLEKS                       R9 R10 K20 ["getFStringAvatarPreviewerLookApiNonBlockingErrorCodes"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R12 R2 K11 ["Src"]
       71 GETTABLEKS                       R11 R12 K19 ["Flags"]
       73 GETTABLEKS                       R10 R11 K21 ["getFFlagDebugAvatarPreviewerLookApiNeverFails"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K10 [require]
       78 GETTABLEKS                       R13 R2 K11 ["Src"]
       80 GETTABLEKS                       R12 R13 K19 ["Flags"]
       82 GETTABLEKS                       R11 R12 K22 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K10 [require]
       87 GETTABLEKS                       R14 R2 K11 ["Src"]
       89 GETTABLEKS                       R13 R14 K19 ["Flags"]
       91 GETTABLEKS                       R12 R13 K23 ["getFFlagLookComposerExplicitLayerOrder"]
       93 CALL                             R11 1 1
       94 NEWTABLE                         R12 16 0
       96 DUPCLOSURE                       R13 K24 [PROTO_1]
       97 CAPTURE                          VAL R1
       98 SETTABLEKS                       R13 R12 K25 ["getUserId"]
      100 DUPCLOSURE                       R13 K26 [PROTO_4]
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R12
      105 SETTABLEKS                       R13 R12 K27 ["requestInternal"]
      107 DUPCLOSURE                       R13 K28 [PROTO_5]
      108 CAPTURE                          VAL R8
      109 SETTABLEKS                       R13 R12 K29 ["getLookPreviewNonBlockingErrorCodes"]
      111 DUPCLOSURE                       R13 K30 [PROTO_6]
      112 CAPTURE                          VAL R12
      113 SETTABLEKS                       R13 R12 K31 ["parseLookApiResponseForErrorMessages"]
      115 DUPCLOSURE                       R13 K32 [PROTO_7]
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R11
      119 SETTABLEKS                       R13 R12 K33 ["parseLookPreviewResponseForLookItems"]
      121 DUPCLOSURE                       R13 K34 [PROTO_8]
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R13 R12 K35 ["createLookPreviewRequestInfo"]
      128 DUPCLOSURE                       R13 K36 [PROTO_10]
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R13 R12 K37 ["lookPreviewAsync"]
      133 DUPCLOSURE                       R13 K38 [PROTO_11]
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R0
      137 SETTABLEKS                       R13 R12 K39 ["createLookValidationRequestInfo"]
      139 DUPCLOSURE                       R13 K40 [PROTO_13]
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R0
      142 SETTABLEKS                       R13 R12 K41 ["validateLookAsync"]
      144 DUPCLOSURE                       R13 K42 [PROTO_15]
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R13 R12 K43 ["createLookRequestInfo"]
      152 DUPCLOSURE                       R13 K44 [PROTO_17]
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R0
      155 SETTABLEKS                       R13 R12 K45 ["createLookAsync"]
      157 RETURN                           R12 1
