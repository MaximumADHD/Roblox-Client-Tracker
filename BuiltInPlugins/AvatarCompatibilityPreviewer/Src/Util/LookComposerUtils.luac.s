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
        2 JUMPIFNOT                        R2 ; [+75]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["Body"]
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K0 ["Body"]
       11 NAMECALL                         R2 R2 K1 ["JSONDecode"]
       13 CALL                             R2 2 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 DUPTABLE                         R3 K5 [{["id"] = 1, ["look"]}]
       17 DUPTABLE                         R4 K7 [{"items"}]
       18 NEWTABLE                         R5 0 0
       20 SETTABLEKS                       R5 R4 K6 ["items"]
       22 SETTABLEKS                       R4 R3 K4 ["look"]
       24 GETTABLEKS                       R4 R2 K8 ["assets"]
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETTABLEKS                       R10 R3 K4 ["look"]
       31 GETTABLEKS                       R10 R10 K6 ["items"]
       33 DUPTABLE                         R11 K14 [{["id"], ["name"], ["creator"], ["assetType"], ["priceInRobux"] = 30}]
       34 GETTABLEKS                       R12 R8 K2 ["id"]
       36 SETTABLEKS                       R12 R11 K2 ["id"]
       38 LOADK                            R13 K15 ["Test Item"]
       39 GETTABLEKS                       R15 R8 K2 ["id"]
       41 FASTCALL1                        TOSTRING R15 ; [+2]
       42 GETIMPORT                        R14 K17 [tostring]
       44 CALL                             R14 1 1
       45 CONCAT                           R12 R13 R14
       46 SETTABLEKS                       R12 R11 K9 ["name"]
       48 DUPTABLE                         R12 K23 [{["id"], ["name"] = "Test Creator", ["type"] = "User", ["hasVerifiedBadge"] = False}]
       49 GETUPVAL                         R13 3
       50 GETTABLEKS                       R13 R13 K24 ["getUserId"]
       52 CALL                             R13 0 1
       53 SETTABLEKS                       R13 R12 K2 ["id"]
       55 SETTABLEKS                       R12 R11 K10 ["creator"]
       57 GETTABLEKS                       R12 R8 K25 ["publishAssetType"]
       59 SETTABLEKS                       R12 R11 K11 ["assetType"]
       61 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       63 GETIMPORT                        R9 K28 [table.insert]
       65 CALL                             R9 2 0
       66 FORGLOOP                         R4 2 ; [-38]
       68 MOVE                             R4 R0
       69 DUPTABLE                         R5 K29 [{"Body"}]
       70 GETUPVAL                         R6 2
       71 MOVE                             R8 R3
       72 NAMECALL                         R6 R6 K30 ["JSONEncode"]
       74 CALL                             R6 2 1
       75 SETTABLEKS                       R6 R5 K0 ["Body"]
       77 CALL                             R4 1 0
       78 GETUPVAL                         R2 2
       79 GETUPVAL                         R4 1
       80 NAMECALL                         R2 R2 K31 ["RequestInternal"]
       82 CALL                             R2 2 1
       83 NEWCLOSURE                       R5 P0
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R1
       86 NAMECALL                         R3 R2 K32 ["Start"]
       88 CALL                             R3 2 -1
       89 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getLookPreviewNonBlockingErrorCodes"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R0 K1 ["errorDescription"]
        8 JUMPIFNOT                        R3 ; [+23]
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R0 K2 ["errorCode"]
       12 JUMPIFNOT                        R4 ; [+6]
       13 GETTABLEKS                       R5 R0 K2 ["errorCode"]
       15 GETTABLE                         R4 R2 R5
       16 JUMPIFNOTEQKB                    R4 TRUE ; [+2]
       18 LOADB                            R3 0
       19 DUPTABLE                         R6 K7 [{["message"], ["isBlocking"], ["isLocalized"] = True}]
       20 GETTABLEKS                       R7 R0 K1 ["errorDescription"]
       22 SETTABLEKS                       R7 R6 K3 ["message"]
       24 SETTABLEKS                       R3 R6 K4 ["isBlocking"]
       26 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       28 MOVE                             R5 R1
       29 GETIMPORT                        R4 K10 [table.insert]
       31 CALL                             R4 2 0
       32 GETTABLEKS                       R3 R0 K11 ["warnings"]
       34 JUMPIFNOT                        R3 ; [+27]
       35 GETTABLEKS                       R3 R0 K11 ["warnings"]
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 LOADB                            R8 1
       41 GETTABLEKS                       R10 R7 K2 ["errorCode"]
       43 GETTABLE                         R9 R2 R10
       44 JUMPIFNOTEQKB                    R9 TRUE ; [+2]
       46 LOADB                            R8 0
       47 DUPTABLE                         R11 K7 [{["message"], ["isBlocking"], ["isLocalized"] = True}]
       48 GETTABLEKS                       R12 R7 K1 ["errorDescription"]
       50 SETTABLEKS                       R12 R11 K3 ["message"]
       52 SETTABLEKS                       R8 R11 K4 ["isBlocking"]
       54 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       56 MOVE                             R10 R1
       57 GETIMPORT                        R9 K10 [table.insert]
       59 CALL                             R9 2 0
       60 FORGLOOP                         R3 2 ; [-21]
       62 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["look"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R2 R0 K0 ["look"]
        7 GETTABLEKS                       R2 R2 K1 ["items"]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R1 1
       11 NEWTABLE                         R2 0 0
       13 GETTABLEKS                       R3 R0 K0 ["look"]
       15 GETTABLEKS                       R3 R3 K1 ["items"]
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETUPVAL                         R8 0
       21 CALL                             R8 0 1
       22 JUMPIFNOT                        R8 ; [+61]
       23 GETTABLEKS                       R8 R7 K2 ["bundleType"]
       25 JUMPIFEQKNIL                     R8 ; [+58]
       27 DUPTABLE                         R8 K15 [{["itemRowType"] = "Bundle", ["id"], ["name"], ["creator"], ["creatorId"], ["creatorType"], ["creatorHasVerifiedBadge"], ["price"], ["rowState"] = "Selected", ["assetsInBundle"]}]
       28 GETTABLEKS                       R9 R7 K5 ["id"]
       30 SETTABLEKS                       R9 R8 K5 ["id"]
       32 GETTABLEKS                       R9 R7 K6 ["name"]
       34 SETTABLEKS                       R9 R8 K6 ["name"]
       36 GETTABLEKS                       R9 R7 K7 ["creator"]
       38 GETTABLEKS                       R9 R9 K6 ["name"]
       40 SETTABLEKS                       R9 R8 K7 ["creator"]
       42 GETTABLEKS                       R10 R7 K7 ["creator"]
       44 GETTABLEKS                       R10 R10 K5 ["id"]
       46 FASTCALL1                        TOSTRING R10 ; [+2]
       47 GETIMPORT                        R9 K17 [tostring]
       49 CALL                             R9 1 1
       50 SETTABLEKS                       R9 R8 K8 ["creatorId"]
       52 GETTABLEKS                       R9 R7 K7 ["creator"]
       54 GETTABLEKS                       R9 R9 K18 ["type"]
       56 SETTABLEKS                       R9 R8 K9 ["creatorType"]
       58 GETTABLEKS                       R9 R7 K7 ["creator"]
       60 GETTABLEKS                       R9 R9 K19 ["hasVerifiedBadge"]
       62 SETTABLEKS                       R9 R8 K10 ["creatorHasVerifiedBadge"]
       64 GETTABLEKS                       R10 R7 K21 ["priceInRobux"]
       66 ORK                              R9 R10 K20 [0]
       67 SETTABLEKS                       R9 R8 K11 ["price"]
       69 GETTABLEKS                       R9 R7 K14 ["assetsInBundle"]
       71 JUMPIF                           R9 ; [+2]
       72 NEWTABLE                         R9 0 0
       74 SETTABLEKS                       R9 R8 K14 ["assetsInBundle"]
       76 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       78 MOVE                             R10 R1
       79 MOVE                             R11 R8
       80 GETIMPORT                        R9 K24 [table.insert]
       82 CALL                             R9 2 0
       83 JUMP                             ; [+101]
       84 GETUPVAL                         R8 0
       85 CALL                             R8 0 1
       86 JUMPIFNOT                        R8 ; [+4]
       87 GETTABLEKS                       R8 R7 K25 ["itemType"]
       89 JUMPIFNOTEQKS                    R8 K26 ["Asset"] ; [+85]
       91 GETTABLEKS                       R8 R7 K27 ["assetType"]
       93 JUMPIFNOT                        R8 ; [+91]
       94 GETIMPORT                        R8 K30 [Enum.AssetType]
       96 GETTABLEKS                       R10 R7 K27 ["assetType"]
       98 NAMECALL                         R8 R8 K31 ["FromValue"]
      100 CALL                             R8 2 1
      101 JUMPIFNOT                        R8 ; [+83]
      102 DUPTABLE                         R9 K32 [{["itemRowType"] = "Asset", ["id"], ["name"], ["creator"], ["creatorId"], ["creatorType"], ["creatorHasVerifiedBadge"], ["price"], ["rowState"] = "Selected", ["assetType"]}]
      103 GETTABLEKS                       R10 R7 K5 ["id"]
      105 SETTABLEKS                       R10 R9 K5 ["id"]
      107 GETTABLEKS                       R10 R7 K6 ["name"]
      109 SETTABLEKS                       R10 R9 K6 ["name"]
      111 GETTABLEKS                       R10 R7 K7 ["creator"]
      113 GETTABLEKS                       R10 R10 K6 ["name"]
      115 SETTABLEKS                       R10 R9 K7 ["creator"]
      117 GETTABLEKS                       R11 R7 K7 ["creator"]
      119 GETTABLEKS                       R11 R11 K5 ["id"]
      121 FASTCALL1                        TOSTRING R11 ; [+2]
      122 GETIMPORT                        R10 K17 [tostring]
      124 CALL                             R10 1 1
      125 SETTABLEKS                       R10 R9 K8 ["creatorId"]
      127 GETTABLEKS                       R10 R7 K7 ["creator"]
      129 GETTABLEKS                       R10 R10 K18 ["type"]
      131 SETTABLEKS                       R10 R9 K9 ["creatorType"]
      133 GETTABLEKS                       R10 R7 K7 ["creator"]
      135 GETTABLEKS                       R10 R10 K19 ["hasVerifiedBadge"]
      137 SETTABLEKS                       R10 R9 K10 ["creatorHasVerifiedBadge"]
      139 GETTABLEKS                       R11 R7 K21 ["priceInRobux"]
      141 ORK                              R10 R11 K20 [0]
      142 SETTABLEKS                       R10 R9 K11 ["price"]
      144 SETTABLEKS                       R8 R9 K27 ["assetType"]
      146 GETIMPORT                        R10 K34 [Enum.AssetType.FaceMakeup]
      148 JUMPIFEQ                         R8 R10 ; [+9]
      150 GETIMPORT                        R10 K36 [Enum.AssetType.LipMakeup]
      152 JUMPIFEQ                         R8 R10 ; [+5]
      154 GETIMPORT                        R10 K38 [Enum.AssetType.EyeMakeup]
      156 JUMPIFNOTEQ                      R8 R10 ; [+10]
      158 LOADN                            R12 1
      159 FASTCALL3                        TABLE_INSERT R2 R12 R9
      161 MOVE                             R11 R2
      162 MOVE                             R13 R9
      163 GETIMPORT                        R10 K24 [table.insert]
      165 CALL                             R10 3 0
      166 JUMP                             ; [+18]
      167 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      169 MOVE                             R11 R1
      170 MOVE                             R12 R9
      171 GETIMPORT                        R10 K24 [table.insert]
      173 CALL                             R10 2 0
      174 JUMP                             ; [+10]
      175 GETIMPORT                        R8 K40 [error]
      177 LOADK                            R10 K41 ["Unknown item type in look preview response: %*"]
      178 GETTABLEKS                       R12 R7 K25 ["itemType"]
      180 NAMECALL                         R10 R10 K42 ["format"]
      182 CALL                             R10 2 1
      183 MOVE                             R9 R10
      184 CALL                             R8 1 0
      185 FORGLOOP                         R3 2 ; [-166]
      187 GETUPVAL                         R3 1
      188 GETTABLEKS                       R3 R3 K43 ["append"]
      190 MOVE                             R4 R1
      191 MOVE                             R5 R2
      192 CALL                             R3 2 1
      193 GETUPVAL                         R4 2
      194 CALL                             R4 0 1
      195 JUMPIFNOT                        R4 ; [+11]
      196 LENGTH                           R4 R3
      197 MOVE                             R5 R3
      198 LOADNIL                          R6
      199 LOADNIL                          R7
      200 FORGPREP                         R5
      201 SUB                              R11 R4 R8
      202 ADDK                             R10 R11 K44 [1]
      203 SETTABLEKS                       R10 R9 K45 ["layerOrder"]
      205 FORGLOOP                         R5 2 ; [-5]
      207 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["lookPreviewUrl"]
        3 CALL                             R2 0 1
        4 DUPTABLE                         R3 K5 [{["assets"], ["lookType"], ["validationType"] = "filterUnsupportedTypes"}]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K1 ["assets"]
        9 JUMPIFNOTEQKS                    R0 K6 ["MakeupLook"] ; [+3]
       11 LOADK                            R4 K7 ["Makeup"]
       12 JUMP                             ; [+1]
       13 LOADK                            R4 K8 ["Avatar"]
       14 SETTABLEKS                       R4 R3 K2 ["lookType"]
       16 MOVE                             R4 R1
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 GETTABLEKS                       R9 R8 K9 ["item"]
       22 GETTABLEKS                       R9 R9 K10 ["source"]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R10 R10 K11 ["SOURCE_MARKETPLACE"]
       27 JUMPIFNOTEQ                      R9 R10 ; [+41]
       29 GETTABLEKS                       R9 R8 K12 ["isHidden"]
       31 JUMPIFEQKB                       R9 TRUE ; [+37]
       33 GETUPVAL                         R9 2
       34 CALL                             R9 0 1
       35 JUMPIFNOT                        R9 ; [+6]
       36 GETTABLEKS                       R9 R8 K13 ["palette"]
       38 GETTABLEKS                       R9 R9 K14 ["PublishAssetType"]
       40 JUMPIFEQKNIL                     R9 ; [+28]
       42 GETTABLEKS                       R10 R3 K1 ["assets"]
       44 DUPTABLE                         R11 K17 [{"id", "publishAssetType"}]
       45 GETTABLEKS                       R12 R8 K9 ["item"]
       47 GETTABLEKS                       R12 R12 K18 ["marketplaceItem"]
       49 SETTABLEKS                       R12 R11 K15 ["id"]
       51 GETUPVAL                         R13 2
       52 CALL                             R13 0 1
       53 JUMPIFNOT                        R13 ; [+7]
       54 GETTABLEKS                       R12 R8 K13 ["palette"]
       56 GETTABLEKS                       R12 R12 K14 ["PublishAssetType"]
       58 GETTABLEKS                       R12 R12 K19 ["Value"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R12
       62 SETTABLEKS                       R12 R11 K16 ["publishAssetType"]
       64 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       66 GETIMPORT                        R9 K22 [table.insert]
       68 CALL                             R9 2 0
       69 FORGLOOP                         R4 2 ; [-50]
       71 DUPTABLE                         R4 K28 [{["Url"], ["Method"] = "POST", ["Body"], ["Headers"]}]
       72 SETTABLEKS                       R2 R4 K23 ["Url"]
       74 GETUPVAL                         R5 3
       75 MOVE                             R7 R3
       76 NAMECALL                         R5 R5 K29 ["JSONEncode"]
       78 CALL                             R5 2 1
       79 SETTABLEKS                       R5 R4 K26 ["Body"]
       81 NEWTABLE                         R5 1 0
       83 LOADK                            R6 K30 ["application/json"]
       84 SETTABLEKS                       R6 R5 K31 ["Content-Type"]
       86 SETTABLEKS                       R5 R4 K27 ["Headers"]
       88 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createLookPreviewRequestInfo"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["requestInternal"]
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
       21 JUMPIF                           R4 ; [+13]
       22 DUPTABLE                         R8 K7 [{"lookItems", "errorMessages"}]
       23 NEWTABLE                         R9 0 0
       25 SETTABLEKS                       R9 R8 K5 ["lookItems"]
       27 NEWTABLE                         R9 0 1
       29 DUPTABLE                         R10 K14 [{["message"] = "UnexpectedErrorLookPreview", ["isBlocking"] = True, ["isLocalized"] = False}]
       30 SETLIST                          R9 R10 1 [1]
       32 SETTABLEKS                       R9 R8 K6 ["errorMessages"]
       34 RETURN                           R8 1
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K15 ["parseLookApiResponseForErrorMessages"]
       38 MOVE                             R9 R7
       39 CALL                             R8 1 1
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K16 ["parseLookPreviewResponseForLookItems"]
       43 MOVE                             R10 R7
       44 CALL                             R9 1 1
       45 DUPTABLE                         R10 K7 [{"lookItems", "errorMessages"}]
       46 SETTABLEKS                       R9 R10 K5 ["lookItems"]
       48 SETTABLEKS                       R8 R10 K6 ["errorMessages"]
       50 RETURN                           R10 1

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
       12 DUPTABLE                         R7 K9 [{["assets"], ["lookType"], ["validationType"] = "default", ["groupId"]}]
       13 NEWTABLE                         R8 0 0
       15 SETTABLEKS                       R8 R7 K4 ["assets"]
       17 JUMPIFNOTEQKS                    R4 K10 ["MakeupLook"] ; [+3]
       19 LOADK                            R8 K11 ["Makeup"]
       20 JUMP                             ; [+1]
       21 LOADK                            R8 K12 ["Avatar"]
       22 SETTABLEKS                       R8 R7 K5 ["lookType"]
       24 JUMPIFNOTEQKS                    R5 K13 ["Group"] ; [+3]
       26 MOVE                             R8 R6
       27 JUMP                             ; [+1]
       28 LOADNIL                          R8
       29 SETTABLEKS                       R8 R7 K8 ["groupId"]
       31 MOVE                             R8 R1
       32 LOADNIL                          R9
       33 LOADNIL                          R10
       34 FORGPREP                         R8
       35 GETTABLEKS                       R13 R12 K14 ["itemRowType"]
       37 JUMPIFNOTEQKS                    R13 K15 ["Asset"] ; [+18]
       39 GETTABLEKS                       R13 R12 K16 ["rowState"]
       41 JUMPIFNOTEQKS                    R13 K17 ["Selected"] ; [+14]
       43 GETTABLEKS                       R14 R7 K4 ["assets"]
       45 DUPTABLE                         R15 K19 [{"id"}]
       46 GETTABLEKS                       R16 R12 K18 ["id"]
       48 SETTABLEKS                       R16 R15 K18 ["id"]
       50 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
       52 GETIMPORT                        R13 K22 [table.insert]
       54 CALL                             R13 2 0
       55 JUMP                             ; [+34]
       56 GETUPVAL                         R13 0
       57 CALL                             R13 0 1
       58 JUMPIFNOT                        R13 ; [+31]
       59 GETTABLEKS                       R13 R12 K14 ["itemRowType"]
       61 JUMPIFNOTEQKS                    R13 K23 ["Bundle"] ; [+28]
       63 GETTABLEKS                       R13 R12 K16 ["rowState"]
       65 JUMPIFNOTEQKS                    R13 K17 ["Selected"] ; [+24]
       67 GETTABLEKS                       R13 R12 K24 ["assetsInBundle"]
       69 LOADNIL                          R14
       70 LOADNIL                          R15
       71 FORGPREP                         R13
       72 GETTABLEKS                       R19 R7 K4 ["assets"]
       74 DUPTABLE                         R20 K26 [{"id", "bundleId"}]
       75 GETTABLEKS                       R21 R17 K18 ["id"]
       77 SETTABLEKS                       R21 R20 K18 ["id"]
       79 GETTABLEKS                       R21 R12 K18 ["id"]
       81 SETTABLEKS                       R21 R20 K25 ["bundleId"]
       83 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
       85 GETIMPORT                        R18 K22 [table.insert]
       87 CALL                             R18 2 0
       88 FORGLOOP                         R13 2 ; [-17]
       90 FORGLOOP                         R8 2 ; [-56]
       92 GETUPVAL                         R8 1
       93 GETTABLEKS                       R8 R8 K27 ["lookPreviewUrl"]
       95 CALL                             R8 0 1
       96 DUPTABLE                         R9 K33 [{["Url"], ["Method"] = "POST", ["Body"], ["Headers"]}]
       97 SETTABLEKS                       R8 R9 K28 ["Url"]
       99 GETUPVAL                         R10 2
      100 MOVE                             R12 R7
      101 NAMECALL                         R10 R10 K34 ["JSONEncode"]
      103 CALL                             R10 2 1
      104 SETTABLEKS                       R10 R9 K31 ["Body"]
      106 NEWTABLE                         R10 1 0
      108 LOADK                            R11 K35 ["application/json"]
      109 SETTABLEKS                       R11 R10 K36 ["Content-Type"]
      111 SETTABLEKS                       R10 R9 K32 ["Headers"]
      113 RETURN                           R9 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createLookValidationRequestInfo"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 CALL                             R5 5 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K1 ["requestInternal"]
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
       24 JUMPIF                           R7 ; [+9]
       25 DUPTABLE                         R11 K8 [{["success"] = False, ["errorMessages"]}]
       26 NEWTABLE                         R12 0 1
       28 DUPTABLE                         R13 K14 [{["message"] = "UnexpectedErrorLookValidation", ["isBlocking"] = True, ["isLocalized"] = False}]
       29 SETLIST                          R12 R13 1 [1]
       31 SETTABLEKS                       R12 R11 K7 ["errorMessages"]
       33 RETURN                           R11 1
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R11 R11 K15 ["parseLookApiResponseForErrorMessages"]
       37 MOVE                             R12 R10
       38 CALL                             R11 1 1
       39 DUPTABLE                         R12 K16 [{"success", "errorMessages"}]
       40 LENGTH                           R14 R11
       41 JUMPIFEQKN                       R14 K17 [0] ; [+2]
       43 LOADB                            R13 0 +1
       44 LOADB                            R13 1
       45 SETTABLEKS                       R13 R12 K5 ["success"]
       47 SETTABLEKS                       R11 R12 K7 ["errorMessages"]
       49 RETURN                           R12 1

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
       28 DUPTABLE                         R11 K18 [{["playerAvatarType"] = "R15", ["bodyColor3s"], ["scale"]}]
       29 DUPTABLE                         R12 K25 [{"headColor3", "leftArmColor3", "leftLegColor3", "rightArmColor3", "rightLegColor3", "torsoColor3"}]
       30 NAMECALL                         R13 R2 K26 ["ToHex"]
       32 CALL                             R13 1 1
       33 SETTABLEKS                       R13 R12 K19 ["headColor3"]
       35 NAMECALL                         R13 R2 K26 ["ToHex"]
       37 CALL                             R13 1 1
       38 SETTABLEKS                       R13 R12 K20 ["leftArmColor3"]
       40 NAMECALL                         R13 R2 K26 ["ToHex"]
       42 CALL                             R13 1 1
       43 SETTABLEKS                       R13 R12 K21 ["leftLegColor3"]
       45 NAMECALL                         R13 R2 K26 ["ToHex"]
       47 CALL                             R13 1 1
       48 SETTABLEKS                       R13 R12 K22 ["rightArmColor3"]
       50 NAMECALL                         R13 R2 K26 ["ToHex"]
       52 CALL                             R13 1 1
       53 SETTABLEKS                       R13 R12 K23 ["rightLegColor3"]
       55 NAMECALL                         R13 R2 K26 ["ToHex"]
       57 CALL                             R13 1 1
       58 SETTABLEKS                       R13 R12 K24 ["torsoColor3"]
       60 SETTABLEKS                       R12 R11 K16 ["bodyColor3s"]
       62 MOVE                             R12 R7
       63 JUMPIF                           R12 ; [+1]
       64 DUPTABLE                         R12 K34 [{["bodyType"] = 1, ["depth"] = 1, ["head"] = 1, ["height"] = 1, ["proportion"] = 1, ["width"] = 1}]
       65 SETTABLEKS                       R12 R11 K17 ["scale"]
       67 SETTABLEKS                       R11 R10 K8 ["avatarProperties"]
       69 JUMPIFNOTEQKS                    R8 K35 ["Group"] ; [+3]
       71 MOVE                             R11 R9
       72 JUMP                             ; [+1]
       73 LOADNIL                          R11
       74 SETTABLEKS                       R11 R10 K9 ["groupId"]
       76 LOADNIL                          R11
       77 GETUPVAL                         R12 0
       78 CALL                             R12 0 1
       79 JUMPIFNOT                        R12 ; [+26]
       80 NEWTABLE                         R12 0 0
       82 MOVE                             R13 R1
       83 LOADNIL                          R14
       84 LOADNIL                          R15
       85 FORGPREP                         R13
       86 GETTABLEKS                       R18 R17 K36 ["itemRowType"]
       88 JUMPIFEQKS                       R18 K37 ["BodyColor"] ; [+8]
       90 FASTCALL2                        TABLE_INSERT R12 R17 ; [+5]
       92 MOVE                             R19 R12
       93 MOVE                             R20 R17
       94 GETIMPORT                        R18 K40 [table.insert]
       96 CALL                             R18 2 0
       97 FORGLOOP                         R13 2 ; [-12]
       99 GETIMPORT                        R13 K42 [table.sort]
      101 MOVE                             R14 R12
      102 DUPCLOSURE                       R15 K43 [PROTO_14]
      103 CALL                             R13 2 0
      104 MOVE                             R11 R12
      105 JUMP                             ; [+6]
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R12 R12 K44 ["reverse"]
      109 MOVE                             R13 R1
      110 CALL                             R12 1 1
      111 MOVE                             R11 R12
      112 LOADN                            R12 1
      113 MOVE                             R13 R11
      114 LOADNIL                          R14
      115 LOADNIL                          R15
      116 FORGPREP                         R13
      117 GETTABLEKS                       R18 R17 K36 ["itemRowType"]
      119 JUMPIFNOTEQKS                    R18 K45 ["Asset"] ; [+24]
      121 GETTABLEKS                       R18 R17 K46 ["rowState"]
      123 JUMPIFNOTEQKS                    R18 K47 ["Selected"] ; [+20]
      125 GETTABLEKS                       R19 R10 K4 ["assets"]
      127 DUPTABLE                         R20 K50 [{"id", "meta"}]
      128 GETTABLEKS                       R21 R17 K48 ["id"]
      130 SETTABLEKS                       R21 R20 K48 ["id"]
      132 DUPTABLE                         R21 K54 [{["order"], ["puffiness"] = 1, ["version"] = 1}]
      133 SETTABLEKS                       R12 R21 K51 ["order"]
      135 SETTABLEKS                       R21 R20 K49 ["meta"]
      137 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      139 GETIMPORT                        R18 K40 [table.insert]
      141 CALL                             R18 2 0
      142 ADDK                             R12 R12 K28 [1]
      143 JUMP                             ; [+40]
      144 GETUPVAL                         R18 2
      145 CALL                             R18 0 1
      146 JUMPIFNOT                        R18 ; [+37]
      147 GETTABLEKS                       R18 R17 K36 ["itemRowType"]
      149 JUMPIFNOTEQKS                    R18 K55 ["Bundle"] ; [+34]
      151 GETTABLEKS                       R18 R17 K46 ["rowState"]
      153 JUMPIFNOTEQKS                    R18 K47 ["Selected"] ; [+30]
      155 GETTABLEKS                       R18 R17 K56 ["assetsInBundle"]
      157 LOADNIL                          R19
      158 LOADNIL                          R20
      159 FORGPREP                         R18
      160 GETTABLEKS                       R24 R10 K4 ["assets"]
      162 DUPTABLE                         R25 K58 [{"id", "bundleId", "meta"}]
      163 GETTABLEKS                       R26 R22 K48 ["id"]
      165 SETTABLEKS                       R26 R25 K48 ["id"]
      167 GETTABLEKS                       R26 R17 K48 ["id"]
      169 SETTABLEKS                       R26 R25 K57 ["bundleId"]
      171 DUPTABLE                         R26 K54 [{["order"], ["puffiness"] = 1, ["version"] = 1}]
      172 SETTABLEKS                       R12 R26 K51 ["order"]
      174 SETTABLEKS                       R26 R25 K49 ["meta"]
      176 FASTCALL2                        TABLE_INSERT R24 R25 ; [+3]
      178 GETIMPORT                        R23 K40 [table.insert]
      180 CALL                             R23 2 0
      181 ADDK                             R12 R12 K28 [1]
      182 FORGLOOP                         R18 2 ; [-23]
      184 FORGLOOP                         R13 2 ; [-68]
      186 GETUPVAL                         R13 3
      187 GETTABLEKS                       R13 R13 K59 ["lookCreateUrl"]
      189 CALL                             R13 0 1
      190 DUPTABLE                         R14 K65 [{["Url"], ["Method"] = "POST", ["Body"], ["Headers"]}]
      191 SETTABLEKS                       R13 R14 K60 ["Url"]
      193 GETUPVAL                         R15 4
      194 MOVE                             R17 R10
      195 NAMECALL                         R15 R15 K66 ["JSONEncode"]
      197 CALL                             R15 2 1
      198 SETTABLEKS                       R15 R14 K63 ["Body"]
      200 NEWTABLE                         R15 1 0
      202 LOADK                            R16 K67 ["application/json"]
      203 SETTABLEKS                       R16 R15 K68 ["Content-Type"]
      205 SETTABLEKS                       R15 R14 K64 ["Headers"]
      207 RETURN                           R14 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["createLookRequestInfo"]
        3 MOVE                             R9 R0
        4 MOVE                             R10 R1
        5 MOVE                             R11 R2
        6 MOVE                             R12 R3
        7 MOVE                             R13 R6
        8 MOVE                             R14 R4
        9 MOVE                             R15 R5
       10 MOVE                             R16 R7
       11 CALL                             R8 8 1
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K1 ["requestInternal"]
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
       27 JUMPIF                           R10 ; [+9]
       28 DUPTABLE                         R14 K10 [{["success"] = False, ["lookId"] = , ["errorMessages"]}]
       29 NEWTABLE                         R15 0 1
       31 DUPTABLE                         R16 K16 [{["message"] = "UnexpectedErrorLookCreation", ["isBlocking"] = True, ["isLocalized"] = False}]
       32 SETLIST                          R15 R16 1 [1]
       34 SETTABLEKS                       R15 R14 K9 ["errorMessages"]
       36 RETURN                           R14 1
       37 GETUPVAL                         R14 0
       38 GETTABLEKS                       R14 R14 K17 ["parseLookApiResponseForErrorMessages"]
       40 MOVE                             R15 R13
       41 CALL                             R14 1 1
       42 DUPTABLE                         R15 K18 [{"success", "lookId", "errorMessages"}]
       43 LENGTH                           R17 R14
       44 JUMPIFEQKN                       R17 K19 [0] ; [+2]
       46 LOADB                            R16 0 +1
       47 LOADB                            R16 1
       48 SETTABLEKS                       R16 R15 K5 ["success"]
       50 GETTABLEKS                       R16 R13 K20 ["id"]
       52 SETTABLEKS                       R16 R15 K7 ["lookId"]
       54 SETTABLEKS                       R14 R15 K9 ["errorMessages"]
       56 RETURN                           R15 1

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
       21 GETTABLEKS                       R4 R2 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K11 ["Src"]
       30 GETTABLEKS                       R5 R5 K13 ["Util"]
       32 GETTABLEKS                       R5 R5 K14 ["Constants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K15 ["Url"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R7 R2 K16 ["Packages"]
       48 GETTABLEKS                       R7 R7 K17 ["Promise"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R2 K16 ["Packages"]
       55 GETTABLEKS                       R8 R8 K18 ["Dash"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R2 K11 ["Src"]
       62 GETTABLEKS                       R9 R9 K19 ["Flags"]
       64 GETTABLEKS                       R9 R9 K20 ["getFStringAvatarPreviewerLookApiNonBlockingErrorCodes"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R10 R2 K11 ["Src"]
       71 GETTABLEKS                       R10 R10 K19 ["Flags"]
       73 GETTABLEKS                       R10 R10 K21 ["getFFlagDebugAvatarPreviewerLookApiNeverFails"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K10 [require]
       78 GETTABLEKS                       R11 R2 K11 ["Src"]
       80 GETTABLEKS                       R11 R11 K19 ["Flags"]
       82 GETTABLEKS                       R11 R11 K22 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K10 [require]
       87 GETTABLEKS                       R12 R2 K11 ["Src"]
       89 GETTABLEKS                       R12 R12 K19 ["Flags"]
       91 GETTABLEKS                       R12 R12 K23 ["getFFlagLookComposerExplicitLayerOrder"]
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
