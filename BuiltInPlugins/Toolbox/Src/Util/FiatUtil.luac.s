PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["([^,]+),?"]
        2 NAMECALL                         R0 R0 K1 ["gmatch"]
        4 CALL                             R0 2 3
        5 FORGPREP                         R0
        6 GETIMPORT                        R6 K4 [Enum.AssetType]
        8 GETTABLE                         R5 R6 R3
        9 GETUPVAL                         R6 1
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+8]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R6 R7 K5 ["MONETIZABLE_ASSET_TYPES"]
       15 GETTABLEKS                       R7 R5 K6 ["Name"]
       17 LOADB                            R8 1
       18 SETTABLE                         R8 R6 R7
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R6 R7 K7 ["ENABLED_ASSET_TYPES"]
       23 GETTABLEKS                       R7 R5 K6 ["Name"]
       25 LOADB                            R8 1
       26 SETTABLE                         R8 R6 R7
       27 FORGLOOP                         R0 1 ; [-22]
       29 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+11]
        2 GETTABLEKS                       R1 R0 K0 ["quantity"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R3 R0 K0 ["quantity"]
        7 GETTABLEKS                       R2 R3 K1 ["significand"]
        9 JUMPIFEQKN                       R2 K2 [0] ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["quantity"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R0 K0 ["quantity"]
        7 GETTABLEKS                       R2 R3 K1 ["significand"]
        9 LOADN                            R4 10
       10 GETTABLEKS                       R6 R0 K0 ["quantity"]
       12 GETTABLEKS                       R5 R6 K2 ["exponent"]
       14 POW                              R3 R4 R5
       15 MUL                              R1 R2 R3
       16 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["USD"] ; [+3]
        2 LOADK                            R1 K1 ["$"]
        3 RETURN                           R1 1
        4 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isFree"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+9]
        6 JUMPIFNOT                        R1 ; [+6]
        7 LOADK                            R4 K1 ["General"]
        8 LOADK                            R5 K2 ["Free"]
        9 NAMECALL                         R2 R1 K3 ["getText"]
       11 CALL                             R2 3 1
       12 RETURN                           R2 1
       13 LOADK                            R2 K2 ["Free"]
       14 RETURN                           R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K4 ["stringFromCurrencyCode"]
       18 GETTABLEKS                       R3 R0 K5 ["currencyCode"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R5 R0 K6 ["quantity"]
       23 GETTABLEKS                       R4 R5 K7 ["significand"]
       25 LOADN                            R6 10
       26 GETTABLEKS                       R8 R0 K6 ["quantity"]
       28 GETTABLEKS                       R7 R8 K8 ["exponent"]
       30 POW                              R5 R6 R7
       31 MUL                              R3 R4 R5
       32 GETIMPORT                        R4 K11 [string.format]
       34 LOADK                            R5 K12 ["%s%.2f"]
       35 MOVE                             R6 R2
       36 MOVE                             R7 R3
       37 CALL                             R4 3 -1
       38 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+14]
        3 GETIMPORT                        R2 K1 [warn]
        5 LOADK                            R3 K2 ["No product type for asset type %s"]
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R6 R0
        8 GETIMPORT                        R5 K4 [tostring]
       10 CALL                             R5 1 1
       11 NAMECALL                         R3 R3 K5 ["format"]
       13 CALL                             R3 2 -1
       14 CALL                             R2 -1 0
       15 LOADK                            R2 K6 ["PRODUCT_TYPE_INVALID"]
       16 RETURN                           R2 1
       17 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R0 K3 [{"basePrice", "published", "purchasable"}]
        1 DUPTABLE                         R1 K6 [{"currencyCode", "quantity"}]
        2 LOADK                            R2 K7 ["USD"]
        3 SETTABLEKS                       R2 R1 K4 ["currencyCode"]
        5 DUPTABLE                         R2 K10 [{"significand", "exponent"}]
        6 LOADN                            R3 0
        7 SETTABLEKS                       R3 R2 K8 ["significand"]
        9 LOADN                            R3 0
       10 SETTABLEKS                       R3 R2 K9 ["exponent"]
       12 SETTABLEKS                       R2 R1 K5 ["quantity"]
       14 SETTABLEKS                       R1 R0 K0 ["basePrice"]
       16 LOADB                            R1 0
       17 SETTABLEKS                       R1 R0 K1 ["published"]
       19 LOADB                            R1 0
       20 SETTABLEKS                       R1 R0 K2 ["purchasable"]
       22 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R2 K6 [{"audioAssetId", "decalAssetId", "meshPartAssetId", "modelAssetId", "pluginAssetId", "videoAssetId"}]
        1 GETIMPORT                        R4 K10 [Enum.AssetType.Audio]
        3 JUMPIFNOTEQ                      R1 R4 ; [+7]
        5 FASTCALL1                        TOSTRING R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K12 [tostring]
        9 CALL                             R3 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R2 K0 ["audioAssetId"]
       14 GETIMPORT                        R4 K14 [Enum.AssetType.Decal]
       16 JUMPIFNOTEQ                      R1 R4 ; [+7]
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R4 R0
       20 GETIMPORT                        R3 K12 [tostring]
       22 CALL                             R3 1 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K1 ["decalAssetId"]
       27 GETIMPORT                        R4 K16 [Enum.AssetType.MeshPart]
       29 JUMPIFNOTEQ                      R1 R4 ; [+7]
       31 FASTCALL1                        TOSTRING R0 ; [+3]
       32 MOVE                             R4 R0
       33 GETIMPORT                        R3 K12 [tostring]
       35 CALL                             R3 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R3
       38 SETTABLEKS                       R3 R2 K2 ["meshPartAssetId"]
       40 GETIMPORT                        R4 K18 [Enum.AssetType.Model]
       42 JUMPIFEQ                         R1 R4 ; [+5]
       44 GETIMPORT                        R4 K20 [Enum.AssetType.Package]
       46 JUMPIFNOTEQ                      R1 R4 ; [+7]
       48 FASTCALL1                        TOSTRING R0 ; [+3]
       49 MOVE                             R4 R0
       50 GETIMPORT                        R3 K12 [tostring]
       52 CALL                             R3 1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R3
       55 SETTABLEKS                       R3 R2 K3 ["modelAssetId"]
       57 GETIMPORT                        R4 K22 [Enum.AssetType.Plugin]
       59 JUMPIFNOTEQ                      R1 R4 ; [+7]
       61 FASTCALL1                        TOSTRING R0 ; [+3]
       62 MOVE                             R4 R0
       63 GETIMPORT                        R3 K12 [tostring]
       65 CALL                             R3 1 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R3
       68 SETTABLEKS                       R3 R2 K4 ["pluginAssetId"]
       70 GETIMPORT                        R4 K24 [Enum.AssetType.Video]
       72 JUMPIFNOTEQ                      R1 R4 ; [+7]
       74 FASTCALL1                        TOSTRING R0 ; [+3]
       75 MOVE                             R4 R0
       76 GETIMPORT                        R3 K12 [tostring]
       78 CALL                             R3 1 1
       79 JUMP                             ; [+1]
       80 LOADNIL                          R3
       81 SETTABLEKS                       R3 R2 K5 ["videoAssetId"]
       83 RETURN                           R2 1

PROTO_8:
        0 JUMPIFNOT                        R1 ; [+5]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R8 R1 K0 ["Value"]
        4 GETTABLE                         R6 R7 R8
        5 JUMPIF                           R6 ; [+2]
        6 LOADNIL                          R6
        7 RETURN                           R6 1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K1 ["join"]
       11 GETUPVAL                         R8 2
       12 GETTABLEKS                       R7 R8 K2 ["createPartialFiatProductWithOnlyAssetId"]
       14 MOVE                             R8 R0
       15 MOVE                             R9 R1
       16 CALL                             R7 2 1
       17 DUPTABLE                         R8 K7 [{"basePrice", "description", "displayName", "published"}]
       18 SETTABLEKS                       R2 R8 K3 ["basePrice"]
       20 SETTABLEKS                       R3 R8 K4 ["description"]
       22 SETTABLEKS                       R4 R8 K5 ["displayName"]
       24 SETTABLEKS                       R5 R8 K6 ["published"]
       26 CALL                             R6 2 -1
       27 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Types"]
       22 GETTABLEKS                       R3 R4 K10 ["MarketplaceFiatServiceTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["Dash"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K6 ["Src"]
       36 GETTABLEKS                       R7 R8 K7 ["Util"]
       38 GETTABLEKS                       R6 R7 K13 ["SharedFlags"]
       40 GETTABLEKS                       R5 R6 K14 ["getFStringToolboxFiatMonetizableAssetTypesCSV"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K6 ["Src"]
       47 GETTABLEKS                       R8 R9 K7 ["Util"]
       49 GETTABLEKS                       R7 R8 K13 ["SharedFlags"]
       51 GETTABLEKS                       R6 R7 K15 ["getFFlagToolboxAssetConfigOnboardingLink"]
       53 CALL                             R5 1 1
       54 NEWTABLE                         R6 16 0
       56 MOVE                             R8 R5
       57 CALL                             R8 0 1
       58 JUMPIFNOT                        R8 ; [+2]
       59 LOADNIL                          R7
       60 JUMP                             ; [+2]
       61 NEWTABLE                         R7 0 0
       63 SETTABLEKS                       R7 R6 K16 ["ENABLED_ASSET_TYPES"]
       65 MOVE                             R8 R5
       66 CALL                             R8 0 1
       67 JUMPIFNOT                        R8 ; [+3]
       68 NEWTABLE                         R7 0 0
       70 JUMP                             ; [+1]
       71 LOADNIL                          R7
       72 SETTABLEKS                       R7 R6 K17 ["MONETIZABLE_ASSET_TYPES"]
       74 MOVE                             R7 R4
       75 CALL                             R7 0 1
       76 GETIMPORT                        R8 K19 [pcall]
       78 DUPCLOSURE                       R9 K20 [PROTO_0]
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CALL                             R8 1 2
       83 JUMPIF                           R8 ; [+12]
       84 GETTABLEKS                       R10 R1 K21 ["shouldDebugWarnings"]
       86 CALL                             R10 0 1
       87 JUMPIFNOT                        R10 ; [+8]
       88 GETIMPORT                        R10 K23 [warn]
       90 LOADK                            R11 K24 ["Fiat error: Asset Type was not found for getFStringToolboxFiatMonetizableAssetTypesCSV: %s"]
       91 MOVE                             R13 R9
       92 NAMECALL                         R11 R11 K25 ["format"]
       94 CALL                             R11 2 -1
       95 CALL                             R10 -1 0
       96 DUPCLOSURE                       R10 K26 [PROTO_1]
       97 SETTABLEKS                       R10 R6 K27 ["isFree"]
       99 DUPCLOSURE                       R10 K28 [PROTO_2]
      100 SETTABLEKS                       R10 R6 K29 ["calculateQuantity"]
      102 DUPCLOSURE                       R10 K30 [PROTO_3]
      103 SETTABLEKS                       R10 R6 K31 ["stringFromCurrencyCode"]
      105 DUPCLOSURE                       R10 K32 [PROTO_4]
      106 CAPTURE                          VAL R6
      107 SETTABLEKS                       R10 R6 K33 ["displayStringFromMoney"]
      109 NEWTABLE                         R10 8 0
      111 GETIMPORT                        R12 K37 [Enum.AssetType.Audio]
      113 GETTABLEKS                       R11 R12 K38 ["Value"]
      115 LOADK                            R12 K39 ["PRODUCT_TYPE_AUDIO"]
      116 SETTABLE                         R12 R10 R11
      117 GETIMPORT                        R12 K41 [Enum.AssetType.Decal]
      119 GETTABLEKS                       R11 R12 K38 ["Value"]
      121 LOADK                            R12 K42 ["PRODUCT_TYPE_DECAL"]
      122 SETTABLE                         R12 R10 R11
      123 GETIMPORT                        R12 K44 [Enum.AssetType.FontFamily]
      125 GETTABLEKS                       R11 R12 K38 ["Value"]
      127 LOADK                            R12 K45 ["PRODUCT_TYPE_FONT_FAMILY"]
      128 SETTABLE                         R12 R10 R11
      129 GETIMPORT                        R12 K47 [Enum.AssetType.MeshPart]
      131 GETTABLEKS                       R11 R12 K38 ["Value"]
      133 LOADK                            R12 K48 ["PRODUCT_TYPE_MESH_PART"]
      134 SETTABLE                         R12 R10 R11
      135 GETIMPORT                        R12 K50 [Enum.AssetType.Model]
      137 GETTABLEKS                       R11 R12 K38 ["Value"]
      139 LOADK                            R12 K51 ["PRODUCT_TYPE_MODEL"]
      140 SETTABLE                         R12 R10 R11
      141 GETIMPORT                        R12 K53 [Enum.AssetType.Plugin]
      143 GETTABLEKS                       R11 R12 K38 ["Value"]
      145 LOADK                            R12 K54 ["PRODUCT_TYPE_PLUGIN"]
      146 SETTABLE                         R12 R10 R11
      147 GETIMPORT                        R12 K56 [Enum.AssetType.Video]
      149 GETTABLEKS                       R11 R12 K38 ["Value"]
      151 LOADK                            R12 K57 ["PRODUCT_TYPE_VIDEO"]
      152 SETTABLE                         R12 R10 R11
      153 GETIMPORT                        R12 K59 [Enum.AssetType.Package]
      155 GETTABLEKS                       R11 R12 K38 ["Value"]
      157 LOADK                            R12 K51 ["PRODUCT_TYPE_MODEL"]
      158 SETTABLE                         R12 R10 R11
      159 DUPCLOSURE                       R11 K60 [PROTO_5]
      160 CAPTURE                          VAL R10
      161 SETTABLEKS                       R11 R6 K61 ["convertAssetTypeToProductType"]
      163 DUPCLOSURE                       R11 K62 [PROTO_6]
      164 SETTABLEKS                       R11 R6 K63 ["getDefaultFiatProduct"]
      166 DUPCLOSURE                       R11 K64 [PROTO_7]
      167 SETTABLEKS                       R11 R6 K65 ["createPartialFiatProductWithOnlyAssetId"]
      169 DUPCLOSURE                       R11 K66 [PROTO_8]
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R6
      173 SETTABLEKS                       R11 R6 K67 ["createFiatProduct"]
      175 RETURN                           R6 1
