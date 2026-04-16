PROTO_0:
        0 DUPTABLE                         R2 K3 [{"type", "isCatalog", "isUploadable"}]
        1 SETTABLEKS                       R0 R2 K0 ["type"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["isCatalog"]
        6 JUMPIFEQKB                       R1 TRUE ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["isUploadable"]
       12 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R2 K3 [{"type", "isMarketplace", "isBuyable"}]
        1 SETTABLEKS                       R0 R2 K0 ["type"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["isMarketplace"]
        6 JUMPIFEQKB                       R1 TRUE ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["isBuyable"]
       12 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["getNormalizedAssetString"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETIMPORT                        R1 K3 [Enum.AssetType]
        8 GETUPVAL                         R2 0
        9 GETTABLE                         R0 R1 R2
       10 JUMPIFEQKNIL                     R0 ; [+8]
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 0
       14 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K6 [table.insert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["ASSET_TYPE_INFO"]
        4 LENGTH                           R1 R2
        5 JUMPIFEQKN                       R1 K1 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 NEWTABLE                         R2 0 9
       11 GETIMPORT                        R4 K5 [Enum.AssetType.Model]
       13 DUPTABLE                         R3 K9 [{"type", "isMarketplace", "isBuyable"}]
       14 SETTABLEKS                       R4 R3 K6 ["type"]
       16 LOADB                            R5 1
       17 SETTABLEKS                       R5 R3 K7 ["isMarketplace"]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R3 K8 ["isBuyable"]
       22 GETIMPORT                        R5 K11 [Enum.AssetType.Decal]
       24 DUPTABLE                         R4 K9 [{"type", "isMarketplace", "isBuyable"}]
       25 SETTABLEKS                       R5 R4 K6 ["type"]
       27 LOADB                            R6 1
       28 SETTABLEKS                       R6 R4 K7 ["isMarketplace"]
       30 LOADB                            R6 0
       31 SETTABLEKS                       R6 R4 K8 ["isBuyable"]
       33 GETIMPORT                        R6 K13 [Enum.AssetType.Mesh]
       35 DUPTABLE                         R5 K9 [{"type", "isMarketplace", "isBuyable"}]
       36 SETTABLEKS                       R6 R5 K6 ["type"]
       38 LOADB                            R7 1
       39 SETTABLEKS                       R7 R5 K7 ["isMarketplace"]
       41 LOADB                            R7 0
       42 SETTABLEKS                       R7 R5 K8 ["isBuyable"]
       44 GETIMPORT                        R7 K15 [Enum.AssetType.MeshPart]
       46 DUPTABLE                         R6 K9 [{"type", "isMarketplace", "isBuyable"}]
       47 SETTABLEKS                       R7 R6 K6 ["type"]
       49 LOADB                            R8 1
       50 SETTABLEKS                       R8 R6 K7 ["isMarketplace"]
       52 LOADB                            R8 0
       53 SETTABLEKS                       R8 R6 K8 ["isBuyable"]
       55 GETIMPORT                        R8 K17 [Enum.AssetType.Audio]
       57 DUPTABLE                         R7 K9 [{"type", "isMarketplace", "isBuyable"}]
       58 SETTABLEKS                       R8 R7 K6 ["type"]
       60 LOADB                            R9 1
       61 SETTABLEKS                       R9 R7 K7 ["isMarketplace"]
       63 LOADB                            R9 0
       64 SETTABLEKS                       R9 R7 K8 ["isBuyable"]
       66 GETIMPORT                        R9 K19 [Enum.AssetType.Animation]
       68 DUPTABLE                         R8 K9 [{"type", "isMarketplace", "isBuyable"}]
       69 SETTABLEKS                       R9 R8 K6 ["type"]
       71 LOADB                            R10 1
       72 SETTABLEKS                       R10 R8 K7 ["isMarketplace"]
       74 LOADB                            R10 0
       75 SETTABLEKS                       R10 R8 K8 ["isBuyable"]
       77 GETIMPORT                        R10 K21 [Enum.AssetType.Video]
       79 DUPTABLE                         R9 K9 [{"type", "isMarketplace", "isBuyable"}]
       80 SETTABLEKS                       R10 R9 K6 ["type"]
       82 LOADB                            R11 1
       83 SETTABLEKS                       R11 R9 K7 ["isMarketplace"]
       85 LOADB                            R11 0
       86 SETTABLEKS                       R11 R9 K8 ["isBuyable"]
       88 GETIMPORT                        R11 K23 [Enum.AssetType.Plugin]
       90 DUPTABLE                         R10 K9 [{"type", "isMarketplace", "isBuyable"}]
       91 SETTABLEKS                       R11 R10 K6 ["type"]
       93 LOADB                            R12 1
       94 SETTABLEKS                       R12 R10 K7 ["isMarketplace"]
       96 LOADB                            R12 1
       97 SETTABLEKS                       R12 R10 K8 ["isBuyable"]
       99 GETIMPORT                        R12 K25 [Enum.AssetType.Package]
      101 DUPTABLE                         R11 K9 [{"type", "isMarketplace", "isBuyable"}]
      102 SETTABLEKS                       R12 R11 K6 ["type"]
      104 LOADB                            R13 1
      105 SETTABLEKS                       R13 R11 K7 ["isMarketplace"]
      107 LOADB                            R13 0
      108 SETTABLEKS                       R13 R11 K8 ["isBuyable"]
      110 SETLIST                          R2 R3 9 [1]
      112 SETTABLEKS                       R2 R1 K0 ["ASSET_TYPE_INFO"]
      114 NEWTABLE                         R1 0 0
      116 GETUPVAL                         R2 1
      117 CALL                             R2 0 1
      118 JUMPIFNOT                        R2 ; [+16]
      119 GETIMPORT                        R2 K27 [ipairs]
      121 MOVE                             R3 R0
      122 CALL                             R2 1 3
      123 FORGPREP_INEXT                   R2
      124 GETIMPORT                        R7 K29 [pcall]
      126 NEWCLOSURE                       R8 P0
      127 CAPTURE                          REF R6
      128 CAPTURE                          UPVAL U0
      129 CAPTURE                          REF R1
      130 CALL                             R7 1 1
      131 CLOSEUPVALS                      R6
      132 FORGLOOP                         R2 2 [inext] ; [-9]
      134 JUMP                             ; [+1]
      135 MOVE                             R1 R0
      136 GETIMPORT                        R2 K27 [ipairs]
      138 MOVE                             R3 R1
      139 CALL                             R2 1 3
      140 FORGPREP_INEXT                   R2
      141 GETUPVAL                         R7 1
      142 CALL                             R7 0 1
      143 JUMPIF                           R7 ; [+6]
      144 GETUPVAL                         R8 0
      145 GETTABLEKS                       R7 R8 K30 ["getNormalizedAssetString"]
      147 MOVE                             R8 R6
      148 CALL                             R7 1 1
      149 MOVE                             R6 R7
      150 GETIMPORT                        R8 K31 [Enum.AssetType]
      152 GETTABLE                         R7 R8 R6
      153 JUMPIFNOT                        R7 ; [+28]
      154 GETIMPORT                        R8 K34 [table.find]
      156 GETUPVAL                         R10 0
      157 GETTABLEKS                       R9 R10 K35 ["ASSET_TYPES_2D"]
      159 MOVE                             R10 R7
      160 CALL                             R8 2 1
      161 GETUPVAL                         R11 0
      162 GETTABLEKS                       R10 R11 K0 ["ASSET_TYPE_INFO"]
      164 NOT                              R12 R8
      165 DUPTABLE                         R11 K38 [{"type", "isCatalog", "isUploadable"}]
      166 SETTABLEKS                       R7 R11 K6 ["type"]
      168 LOADB                            R13 1
      169 SETTABLEKS                       R13 R11 K36 ["isCatalog"]
      171 JUMPIFEQKB                       R12 TRUE ; [+2]
      173 LOADB                            R13 0 +1
      174 LOADB                            R13 1
      175 SETTABLEKS                       R13 R11 K37 ["isUploadable"]
      177 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      179 GETIMPORT                        R9 K40 [table.insert]
      181 CALL                             R9 2 0
      182 FORGLOOP                         R2 2 [inext] ; [-42]
      184 GETIMPORT                        R2 K27 [ipairs]
      186 GETUPVAL                         R5 0
      187 GETTABLEKS                       R3 R5 K0 ["ASSET_TYPE_INFO"]
      189 CALL                             R2 1 3
      190 FORGPREP_INEXT                   R2
      191 GETIMPORT                        R8 K42 [next]
      193 MOVE                             R9 R6
      194 CALL                             R8 1 1
      195 JUMPIFNOTEQKNIL                  R8 ; [+2]
      197 LOADB                            R7 0 +1
      198 LOADB                            R7 1
      199 JUMPIFNOT                        R7 ; [+42]
      200 GETTABLEKS                       R8 R6 K36 ["isCatalog"]
      202 JUMPIFNOT                        R8 ; [+15]
      203 GETTABLEKS                       R8 R6 K7 ["isMarketplace"]
      205 JUMPIFNOT                        R8 ; [+12]
      206 GETIMPORT                        R8 K44 [error]
      208 GETTABLEKS                       R13 R6 K6 ["type"]
      210 FASTCALL1                        TOSTRING R13 ; [+2]
      211 GETIMPORT                        R12 K46 [tostring]
      213 CALL                             R12 1 1
      214 MOVE                             R10 R12
      215 LOADK                            R11 K47 [" cannot be both a catalog and marketplace asset"]
      216 CONCAT                           R9 R10 R11
      217 CALL                             R8 1 0
      218 GETUPVAL                         R10 0
      219 GETTABLEKS                       R9 R10 K0 ["ASSET_TYPE_INFO"]
      221 GETTABLEKS                       R10 R6 K6 ["type"]
      223 GETTABLE                         R8 R9 R10
      224 JUMPIFNOT                        R8 ; [+11]
      225 GETIMPORT                        R8 K44 [error]
      227 LOADK                            R10 K48 ["AssetConfigConstants.ASSET_TYPE_INFO contains a duplicate of "]
      228 GETTABLEKS                       R12 R6 K6 ["type"]
      230 FASTCALL1                        TOSTRING R12 ; [+2]
      231 GETIMPORT                        R11 K46 [tostring]
      233 CALL                             R11 1 1
      234 CONCAT                           R9 R10 R11
      235 CALL                             R8 1 0
      236 GETUPVAL                         R9 0
      237 GETTABLEKS                       R8 R9 K0 ["ASSET_TYPE_INFO"]
      239 GETTABLEKS                       R9 R6 K6 ["type"]
      241 SETTABLE                         R6 R8 R9
      242 FORGLOOP                         R2 2 [inext] ; [-52]
      244 CLOSEUPVALS                      R1
      245 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKS                    R0 K0 ["Tshirt"] ; [+3]
        2 LOADK                            R1 K1 ["TShirt"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K2 ["TshirtAccessory"] ; [+3]
        6 LOADK                            R1 K3 ["TShirtAccessory"]
        7 RETURN                           R1 1
        8 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Name"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["enumerate"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K7 ["Src"]
       18 GETTABLEKS                       R2 R3 K8 ["Util"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R5 R2 K9 ["SharedFlags"]
       24 GETTABLEKS                       R4 R5 K10 ["getFFlagEnableUGCBundleUploadBodyScale"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R7 R0 K7 ["Src"]
       31 GETTABLEKS                       R6 R7 K11 ["Flags"]
       33 GETTABLEKS                       R5 R6 K12 ["getFFlagCheckAvatarAssetPrivacy"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R8 R0 K7 ["Src"]
       40 GETTABLEKS                       R7 R8 K11 ["Flags"]
       42 GETTABLEKS                       R6 R7 K13 ["getFFlagEnableUploadingEmote"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R9 R0 K7 ["Src"]
       49 GETTABLEKS                       R8 R9 K11 ["Flags"]
       51 GETTABLEKS                       R7 R8 K14 ["getFFlagEnableUploadingMakeup"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R10 R0 K7 ["Src"]
       58 GETTABLEKS                       R9 R10 K11 ["Flags"]
       60 GETTABLEKS                       R8 R9 K15 ["getFFlagUsePublishMarketplaceActionType"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R2 K16 ["convertArrayToTable"]
       67 CALL                             R8 1 1
       68 NEWTABLE                         R9 64 0
       70 LOADN                            R10 76
       71 SETTABLEKS                       R10 R9 K17 ["WIDTH"]
       73 LOADN                            R10 92
       74 SETTABLEKS                       R10 R9 K18 ["HEIGHT"]
       76 LOADN                            R10 132
       77 SETTABLEKS                       R10 R9 K19 ["MIN_WIDTH"]
       79 LOADN                            R10 244
       80 SETTABLEKS                       R10 R9 K20 ["MIN_HEIGHT"]
       82 LOADK                            R10 K21 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
       83 SETTABLEKS                       R10 R9 K22 ["TERM_OF_USE_URL"]
       85 LOADK                            R10 K23 ["https://www.roblox.com/my/account#!/info"]
       86 SETTABLEKS                       R10 R9 K24 ["ACCOUNT_SETTING_URL"]
       88 LOADN                            R10 50
       89 SETTABLEKS                       R10 R9 K25 ["NAME_CHARACTER_LIMIT"]
       91 LOADN                            R10 232
       92 SETTABLEKS                       R10 R9 K26 ["DESCRIPTION_CHARACTER_LIMIT"]
       94 LOADN                            R10 244
       95 SETTABLEKS                       R10 R9 K27 ["PACKAGE_NOTE_CHARACTER_LIMIT"]
       97 LOADN                            R10 180
       98 SETTABLEKS                       R10 R9 K28 ["TITLE_GUTTER_WIDTH"]
      100 GETIMPORT                        R10 K31 [UDim2.new]
      102 LOADN                            R11 0
      103 LOADN                            R12 150
      104 LOADN                            R13 0
      105 LOADN                            R14 200
      106 CALL                             R10 4 1
      107 SETTABLEKS                       R10 R9 K32 ["OverrideAssetItemSize"]
      109 MOVE                             R10 R8
      110 NEWTABLE                         R11 0 3
      112 LOADK                            R12 K33 ["ImagePicker"]
      113 LOADK                            R13 K34 ["Thumbnail"]
      114 LOADK                            R14 K35 ["ModelPreview"]
      115 SETLIST                          R11 R12 3 [1]
      117 CALL                             R10 1 1
      118 SETTABLEKS                       R10 R9 K36 ["PreviewTypes"]
      120 MOVE                             R10 R8
      121 NEWTABLE                         R11 0 5
      123 LOADK                            R12 K37 ["Sales"]
      124 LOADK                            R13 K38 ["General"]
      125 LOADK                            R14 K39 ["Versions"]
      126 LOADK                            R15 K40 ["Override"]
      127 LOADK                            R16 K41 ["Permissions"]
      128 SETLIST                          R11 R12 5 [1]
      130 CALL                             R10 1 1
      131 SETTABLEKS                       R10 R9 K42 ["SIDE_TABS"]
      133 MOVE                             R10 R8
      134 NEWTABLE                         R11 0 3
      136 LOADK                            R12 K43 ["Title"]
      137 LOADK                            R13 K44 ["Description"]
      138 LOADK                            R14 K45 ["Price"]
      139 SETLIST                          R11 R12 3 [1]
      141 CALL                             R10 1 1
      142 SETTABLEKS                       R10 R9 K46 ["FIELD_NAMES"]
      144 NEWTABLE                         R10 0 14
      146 DUPTABLE                         R11 K48 [{"name"}]
      147 GETIMPORT                        R13 K52 [Enum.Genre.All]
      149 GETTABLEKS                       R12 R13 K53 ["Name"]
      151 SETTABLEKS                       R12 R11 K47 ["name"]
      153 DUPTABLE                         R12 K48 [{"name"}]
      154 GETIMPORT                        R14 K55 [Enum.Genre.TownAndCity]
      156 GETTABLEKS                       R13 R14 K53 ["Name"]
      158 SETTABLEKS                       R13 R12 K47 ["name"]
      160 DUPTABLE                         R13 K48 [{"name"}]
      161 GETIMPORT                        R15 K57 [Enum.Genre.Fantasy]
      163 GETTABLEKS                       R14 R15 K53 ["Name"]
      165 SETTABLEKS                       R14 R13 K47 ["name"]
      167 DUPTABLE                         R14 K48 [{"name"}]
      168 GETIMPORT                        R16 K59 [Enum.Genre.SciFi]
      170 GETTABLEKS                       R15 R16 K53 ["Name"]
      172 SETTABLEKS                       R15 R14 K47 ["name"]
      174 DUPTABLE                         R15 K48 [{"name"}]
      175 GETIMPORT                        R17 K61 [Enum.Genre.Ninja]
      177 GETTABLEKS                       R16 R17 K53 ["Name"]
      179 SETTABLEKS                       R16 R15 K47 ["name"]
      181 DUPTABLE                         R16 K48 [{"name"}]
      182 GETIMPORT                        R18 K63 [Enum.Genre.Scary]
      184 GETTABLEKS                       R17 R18 K53 ["Name"]
      186 SETTABLEKS                       R17 R16 K47 ["name"]
      188 DUPTABLE                         R17 K48 [{"name"}]
      189 GETIMPORT                        R19 K65 [Enum.Genre.Pirate]
      191 GETTABLEKS                       R18 R19 K53 ["Name"]
      193 SETTABLEKS                       R18 R17 K47 ["name"]
      195 DUPTABLE                         R18 K48 [{"name"}]
      196 GETIMPORT                        R20 K67 [Enum.Genre.Adventure]
      198 GETTABLEKS                       R19 R20 K53 ["Name"]
      200 SETTABLEKS                       R19 R18 K47 ["name"]
      202 DUPTABLE                         R19 K48 [{"name"}]
      203 GETIMPORT                        R21 K69 [Enum.Genre.Sports]
      205 GETTABLEKS                       R20 R21 K53 ["Name"]
      207 SETTABLEKS                       R20 R19 K47 ["name"]
      209 DUPTABLE                         R20 K48 [{"name"}]
      210 GETIMPORT                        R22 K71 [Enum.Genre.Funny]
      212 GETTABLEKS                       R21 R22 K53 ["Name"]
      214 SETTABLEKS                       R21 R20 K47 ["name"]
      216 DUPTABLE                         R21 K48 [{"name"}]
      217 GETIMPORT                        R23 K73 [Enum.Genre.WildWest]
      219 GETTABLEKS                       R22 R23 K53 ["Name"]
      221 SETTABLEKS                       R22 R21 K47 ["name"]
      223 DUPTABLE                         R22 K48 [{"name"}]
      224 GETIMPORT                        R24 K75 [Enum.Genre.War]
      226 GETTABLEKS                       R23 R24 K53 ["Name"]
      228 SETTABLEKS                       R23 R22 K47 ["name"]
      230 DUPTABLE                         R23 K48 [{"name"}]
      231 GETIMPORT                        R25 K77 [Enum.Genre.SkatePark]
      233 GETTABLEKS                       R24 R25 K53 ["Name"]
      235 SETTABLEKS                       R24 R23 K47 ["name"]
      237 DUPTABLE                         R24 K48 [{"name"}]
      238 GETIMPORT                        R26 K79 [Enum.Genre.Tutorial]
      240 GETTABLEKS                       R25 R26 K53 ["Name"]
      242 SETTABLEKS                       R25 R24 K47 ["name"]
      244 SETLIST                          R10 R11 14 [1]
      246 SETTABLEKS                       R10 R9 K80 ["GENRE_TYPE"]
      248 MOVE                             R10 R8
      249 NEWTABLE                         R11 0 3
      251 LOADK                            R12 K81 ["EDIT_FLOW"]
      252 LOADK                            R13 K82 ["UPLOAD_FLOW"]
      253 LOADK                            R14 K83 ["DOWNLOAD_FLOW"]
      254 SETLIST                          R11 R12 3 [1]
      256 CALL                             R10 1 1
      257 SETTABLEKS                       R10 R9 K84 ["FLOW_TYPE"]
      259 MOVE                             R10 R8
      260 NEWTABLE                         R11 0 5
      262 LOADK                            R12 K85 ["ASSET_TYPE_SELECTION"]
      263 LOADK                            R13 K86 ["ASSET_VALIDATION"]
      264 LOADK                            R14 K87 ["CONFIGURE_ASSET"]
      265 LOADK                            R15 K88 ["UPLOADING_ASSET"]
      266 LOADK                            R16 K89 ["UPLOAD_ASSET_RESULT"]
      267 SETLIST                          R11 R12 5 [1]
      269 CALL                             R10 1 1
      270 SETTABLEKS                       R10 R9 K90 ["SCREENS"]
      272 MOVE                             R10 R8
      273 NEWTABLE                         R11 0 8
      275 LOADK                            R12 K91 ["Unknown"]
      276 LOADK                            R13 K92 ["ReviewPending"]
      277 LOADK                            R14 K93 ["Moderated"]
      278 LOADK                            R15 K94 ["ReviewApproved"]
      279 LOADK                            R16 K95 ["OnSale"]
      280 LOADK                            R17 K96 ["OffSale"]
      281 LOADK                            R18 K97 ["DelayedRelease"]
      282 LOADK                            R19 K98 ["Free"]
      283 SETLIST                          R11 R12 8 [1]
      285 CALL                             R10 1 1
      286 SETTABLEKS                       R10 R9 K99 ["ASSET_STATUS"]
      288 MOVE                             R10 R8
      289 NEWTABLE                         R11 0 10
      291 LOADK                            R12 K100 ["AssetType"]
      292 LOADK                            R13 K101 ["Authorization"]
      293 LOADK                            R14 K102 ["Invalid"]
      294 LOADK                            R15 K103 ["KillSwitch"]
      295 LOADK                            R16 K104 ["Quota"]
      296 LOADK                            R17 K105 ["SafetyStatus"]
      297 LOADK                            R18 K106 ["SellerAccountNotOnboarded"]
      298 LOADK                            R19 K107 ["SellerAccountRestricted"]
      299 LOADK                            R20 K108 ["UnsupportedAssetOwner"]
      300 LOADK                            R21 K109 ["Verification"]
      301 SETLIST                          R11 R12 10 [1]
      303 CALL                             R10 1 1
      304 SETTABLEKS                       R10 R9 K110 ["RESTRICTION_TYPE"]
      306 MOVE                             R10 R8
      307 NEWTABLE                         R11 0 1
      309 LOADK                            R12 K95 ["OnSale"]
      310 SETLIST                          R11 R12 1 [1]
      312 CALL                             R10 1 1
      313 SETTABLEKS                       R10 R9 K111 ["SALES_STATUS_FOR_PRICE"]
      315 DUPCLOSURE                       R10 K112 [PROTO_0]
      316 DUPCLOSURE                       R11 K113 [PROTO_1]
      317 NEWTABLE                         R12 0 0
      319 SETTABLEKS                       R12 R9 K114 ["ASSET_TYPE_INFO"]
      321 NEWTABLE                         R12 0 3
      323 GETIMPORT                        R13 K116 [Enum.AssetType.TShirt]
      325 GETIMPORT                        R14 K118 [Enum.AssetType.Shirt]
      327 GETIMPORT                        R15 K120 [Enum.AssetType.Pants]
      329 SETLIST                          R12 R13 3 [1]
      331 SETTABLEKS                       R12 R9 K121 ["ASSET_TYPES_2D"]
      333 DUPCLOSURE                       R12 K122 [PROTO_3]
      334 CAPTURE                          VAL R9
      335 CAPTURE                          VAL R7
      336 SETTABLEKS                       R12 R9 K123 ["populateAssetTypeInfoFromNetwork"]
      338 DUPCLOSURE                       R12 K124 [PROTO_4]
      339 SETTABLEKS                       R12 R9 K125 ["getNormalizedAssetString"]
      341 MOVE                             R12 R8
      342 NEWTABLE                         R13 0 3
      344 LOADK                            R14 K126 ["WhitelistedPlugins"]
      345 LOADK                            R15 K127 ["MyPlugins"]
      346 LOADK                            R16 K128 ["GroupPlugins"]
      347 SETLIST                          R13 R14 3 [1]
      349 CALL                             R12 1 1
      350 SETTABLEKS                       R12 R9 K129 ["developCategoryType"]
      352 MOVE                             R12 R8
      353 NEWTABLE                         R13 0 2
      355 LOADK                            R14 K130 ["MyPackages"]
      356 LOADK                            R15 K131 ["GroupPackages"]
      357 SETLIST                          R13 R14 2 [1]
      359 CALL                             R12 1 1
      360 SETTABLEKS                       R12 R9 K132 ["packagesCategoryType"]
      362 MOVE                             R12 R8
      363 NEWTABLE                         R13 0 9
      365 LOADK                            R14 K133 ["Asset"]
      366 LOADK                            R15 K134 ["Avatar"]
      367 LOADK                            R16 K135 ["AvatarHeadShot"]
      368 LOADK                            R17 K136 ["BadgeIcon"]
      369 LOADK                            R18 K137 ["BundleThumbnail"]
      370 LOADK                            R19 K138 ["GameIcon"]
      371 LOADK                            R20 K139 ["GamePass"]
      372 LOADK                            R21 K140 ["GroupIcon"]
      373 LOADK                            R22 K141 ["Outfit"]
      374 SETLIST                          R13 R14 9 [1]
      376 CALL                             R12 1 1
      377 SETTABLEKS                       R12 R9 K142 ["rbxThumbTypes"]
      379 DUPTABLE                         R12 K146 [{"AvatarHeadshotImageSize", "GroupIconImageSize", "AssetThumbnailSize"}]
      380 LOADN                            R13 60
      381 SETTABLEKS                       R13 R12 K143 ["AvatarHeadshotImageSize"]
      383 LOADN                            R13 150
      384 SETTABLEKS                       R13 R12 K144 ["GroupIconImageSize"]
      386 LOADN                            R13 164
      387 SETTABLEKS                       R13 R12 K145 ["AssetThumbnailSize"]
      389 SETTABLEKS                       R12 R9 K147 ["rbxThumbSizes"]
      391 DUPTABLE                         R12 K153 [{"MaxThumbnails", "AspectRatioHeight", "AspectRatioWidth", "RecommendedHeight", "RecommendedWidth"}]
      392 LOADN                            R13 5
      393 SETTABLEKS                       R13 R12 K148 ["MaxThumbnails"]
      395 LOADN                            R13 9
      396 SETTABLEKS                       R13 R12 K149 ["AspectRatioHeight"]
      398 LOADN                            R13 16
      399 SETTABLEKS                       R13 R12 K150 ["AspectRatioWidth"]
      401 LOADN                            R13 176
      402 SETTABLEKS                       R13 R12 K151 ["RecommendedHeight"]
      404 LOADN                            R13 0
      405 SETTABLEKS                       R13 R12 K152 ["RecommendedWidth"]
      407 SETTABLEKS                       R12 R9 K154 ["additionalImages"]
      409 NEWTABLE                         R12 0 3
      411 LOADK                            R13 K155 ["jpg"]
      412 LOADK                            R14 K156 ["jpeg"]
      413 LOADK                            R15 K157 ["png"]
      414 SETLIST                          R12 R13 3 [1]
      416 SETTABLEKS                       R12 R9 K158 ["IMAGE_TYPES"]
      418 LOADK                            R12 K159 ["Success"]
      419 SETTABLEKS                       R12 R9 K160 ["TAGS_SUGGESTION_SUCCESS"]
      421 LOADN                            R12 5
      422 SETTABLEKS                       R12 R9 K161 ["MAX_DISPLAY_SUGGESTIONS"]
      424 LOADN                            R12 10
      425 SETTABLEKS                       R12 R9 K162 ["MAX_FETCH_SUGGESTIONS"]
      427 LOADK                            R12 K163 ["avatar_meshpart_accessory"]
      428 SETTABLEKS                       R12 R9 K164 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
      430 LOADK                            R12 K165 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
      431 SETTABLEKS                       R12 R9 K166 ["MULTIPART_FORM_BOUNDARY"]
      433 LOADK                            R12 K167 ["OverrideAssetId"]
      434 SETTABLEKS                       R12 R9 K168 ["OVERRIDE_ASSET_ID"]
      436 DUPTABLE                         R12 K171 [{"Public", "Private"}]
      437 LOADB                            R13 1
      438 SETTABLEKS                       R13 R12 K169 ["Public"]
      440 LOADB                            R13 0
      441 SETTABLEKS                       R13 R12 K170 ["Private"]
      443 SETTABLEKS                       R12 R9 K172 ["SHARING_KEYS"]
      445 NEWTABLE                         R12 0 3
      447 LOADK                            R13 K173 ["Body"]
      448 LOADK                            R14 K174 ["DynamicHead"]
      449 LOADK                            R15 K175 ["Shoes"]
      450 SETLIST                          R12 R13 3 [1]
      452 NEWTABLE                         R13 0 0
      454 SETTABLEKS                       R13 R9 K176 ["UGCBundleTypes"]
      456 GETIMPORT                        R13 K178 [ipairs]
      458 MOVE                             R14 R12
      459 CALL                             R13 1 3
      460 FORGPREP_INEXT                   R13
      461 DUPTABLE                         R18 K180 [{"Name", "Value"}]
      462 SETTABLEKS                       R17 R18 K53 ["Name"]
      464 SETTABLEKS                       R16 R18 K179 ["Value"]
      466 GETTABLEKS                       R19 R9 K176 ["UGCBundleTypes"]
      468 SETTABLE                         R18 R19 R17
      469 NEWCLOSURE                       R19 P4
      470 CAPTURE                          VAL R18
      471 SETTABLEKS                       R19 R18 K181 ["rawValue"]
      473 FORGLOOP                         R13 2 [inext] ; [-13]
      475 NEWTABLE                         R13 4 0
      477 GETTABLEKS                       R16 R9 K176 ["UGCBundleTypes"]
      479 GETTABLEKS                       R15 R16 K173 ["Body"]
      481 GETTABLEKS                       R14 R15 K181 ["rawValue"]
      483 CALL                             R14 0 1
      484 GETTABLEKS                       R16 R9 K176 ["UGCBundleTypes"]
      486 GETTABLEKS                       R15 R16 K173 ["Body"]
      488 SETTABLE                         R15 R13 R14
      489 GETTABLEKS                       R16 R9 K176 ["UGCBundleTypes"]
      491 GETTABLEKS                       R15 R16 K174 ["DynamicHead"]
      493 GETTABLEKS                       R14 R15 K181 ["rawValue"]
      495 CALL                             R14 0 1
      496 GETTABLEKS                       R16 R9 K176 ["UGCBundleTypes"]
      498 GETTABLEKS                       R15 R16 K174 ["DynamicHead"]
      500 SETTABLE                         R15 R13 R14
      501 GETTABLEKS                       R16 R9 K176 ["UGCBundleTypes"]
      503 GETTABLEKS                       R15 R16 K175 ["Shoes"]
      505 GETTABLEKS                       R14 R15 K181 ["rawValue"]
      507 CALL                             R14 0 1
      508 GETTABLEKS                       R16 R9 K176 ["UGCBundleTypes"]
      510 GETTABLEKS                       R15 R16 K175 ["Shoes"]
      512 SETTABLE                         R15 R13 R14
      513 SETTABLEKS                       R13 R9 K182 ["UGCBundleTypeStringToEnumeration"]
      515 NEWTABLE                         R13 16 0
      517 GETIMPORT                        R14 K183 [Enum.AssetType.DynamicHead]
      519 SETTABLEKS                       R14 R13 K174 ["DynamicHead"]
      521 GETIMPORT                        R14 K185 [Enum.AssetType.LeftArm]
      523 SETTABLEKS                       R14 R13 K184 ["LeftArm"]
      525 GETIMPORT                        R14 K187 [Enum.AssetType.LeftLeg]
      527 SETTABLEKS                       R14 R13 K186 ["LeftLeg"]
      529 GETIMPORT                        R14 K189 [Enum.AssetType.RightArm]
      531 SETTABLEKS                       R14 R13 K188 ["RightArm"]
      533 GETIMPORT                        R14 K191 [Enum.AssetType.RightLeg]
      535 SETTABLEKS                       R14 R13 K190 ["RightLeg"]
      537 GETIMPORT                        R14 K193 [Enum.AssetType.Torso]
      539 SETTABLEKS                       R14 R13 K192 ["Torso"]
      541 GETIMPORT                        R14 K195 [Enum.AssetType.EyebrowAccessory]
      543 SETTABLEKS                       R14 R13 K194 ["EyebrowAccessory"]
      545 GETIMPORT                        R14 K197 [Enum.AssetType.EyelashAccessory]
      547 SETTABLEKS                       R14 R13 K196 ["EyelashAccessory"]
      549 GETIMPORT                        R14 K199 [Enum.AssetType.HairAccessory]
      551 SETTABLEKS                       R14 R13 K198 ["HairAccessory"]
      553 GETIMPORT                        R14 K201 [Enum.AssetType.LeftShoeAccessory]
      555 SETTABLEKS                       R14 R13 K200 ["LeftShoeAccessory"]
      557 GETIMPORT                        R14 K203 [Enum.AssetType.RightShoeAccessory]
      559 SETTABLEKS                       R14 R13 K202 ["RightShoeAccessory"]
      561 SETTABLEKS                       R13 R9 K204 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      563 DUPTABLE                         R13 K220 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperArm", "LeftLowerArm", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
      564 LOADK                            R14 K205 ["Head"]
      565 SETTABLEKS                       R14 R13 K205 ["Head"]
      567 LOADK                            R14 K206 ["UpperTorso"]
      568 SETTABLEKS                       R14 R13 K206 ["UpperTorso"]
      570 LOADK                            R14 K207 ["LowerTorso"]
      571 SETTABLEKS                       R14 R13 K207 ["LowerTorso"]
      573 LOADK                            R14 K208 ["LeftUpperLeg"]
      574 SETTABLEKS                       R14 R13 K208 ["LeftUpperLeg"]
      576 LOADK                            R14 K209 ["LeftLowerLeg"]
      577 SETTABLEKS                       R14 R13 K209 ["LeftLowerLeg"]
      579 LOADK                            R14 K210 ["LeftHand"]
      580 SETTABLEKS                       R14 R13 K210 ["LeftHand"]
      582 LOADK                            R14 K211 ["RightUpperArm"]
      583 SETTABLEKS                       R14 R13 K211 ["RightUpperArm"]
      585 LOADK                            R14 K212 ["RightLowerArm"]
      586 SETTABLEKS                       R14 R13 K212 ["RightLowerArm"]
      588 LOADK                            R14 K213 ["RightHand"]
      589 SETTABLEKS                       R14 R13 K213 ["RightHand"]
      591 LOADK                            R14 K214 ["LeftUpperArm"]
      592 SETTABLEKS                       R14 R13 K214 ["LeftUpperArm"]
      594 LOADK                            R14 K215 ["LeftLowerArm"]
      595 SETTABLEKS                       R14 R13 K215 ["LeftLowerArm"]
      597 LOADK                            R14 K216 ["LeftFoot"]
      598 SETTABLEKS                       R14 R13 K216 ["LeftFoot"]
      600 LOADK                            R14 K217 ["RightUpperLeg"]
      601 SETTABLEKS                       R14 R13 K217 ["RightUpperLeg"]
      603 LOADK                            R14 K218 ["RightLowerLeg"]
      604 SETTABLEKS                       R14 R13 K218 ["RightLowerLeg"]
      606 LOADK                            R14 K219 ["RightFoot"]
      607 SETTABLEKS                       R14 R13 K219 ["RightFoot"]
      609 LOADK                            R14 K194 ["EyebrowAccessory"]
      610 SETTABLEKS                       R14 R13 K194 ["EyebrowAccessory"]
      612 LOADK                            R14 K196 ["EyelashAccessory"]
      613 SETTABLEKS                       R14 R13 K196 ["EyelashAccessory"]
      615 LOADK                            R14 K198 ["HairAccessory"]
      616 SETTABLEKS                       R14 R13 K198 ["HairAccessory"]
      618 SETTABLEKS                       R13 R9 K221 ["UGC_BODY_PARTS"]
      620 DUPTABLE                         R13 K222 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      621 LOADK                            R14 K200 ["LeftShoeAccessory"]
      622 SETTABLEKS                       R14 R13 K200 ["LeftShoeAccessory"]
      624 LOADK                            R14 K202 ["RightShoeAccessory"]
      625 SETTABLEKS                       R14 R13 K202 ["RightShoeAccessory"]
      627 SETTABLEKS                       R13 R9 K223 ["UGC_BUNDLE_PARTS"]
      629 NEWTABLE                         R13 32 0
      631 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      633 GETTABLEKS                       R14 R15 K205 ["Head"]
      635 GETIMPORT                        R15 K183 [Enum.AssetType.DynamicHead]
      637 SETTABLE                         R15 R13 R14
      638 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      640 GETTABLEKS                       R14 R15 K206 ["UpperTorso"]
      642 GETIMPORT                        R15 K193 [Enum.AssetType.Torso]
      644 SETTABLE                         R15 R13 R14
      645 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      647 GETTABLEKS                       R14 R15 K207 ["LowerTorso"]
      649 GETIMPORT                        R15 K193 [Enum.AssetType.Torso]
      651 SETTABLE                         R15 R13 R14
      652 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      654 GETTABLEKS                       R14 R15 K214 ["LeftUpperArm"]
      656 GETIMPORT                        R15 K185 [Enum.AssetType.LeftArm]
      658 SETTABLE                         R15 R13 R14
      659 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      661 GETTABLEKS                       R14 R15 K215 ["LeftLowerArm"]
      663 GETIMPORT                        R15 K185 [Enum.AssetType.LeftArm]
      665 SETTABLE                         R15 R13 R14
      666 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      668 GETTABLEKS                       R14 R15 K210 ["LeftHand"]
      670 GETIMPORT                        R15 K185 [Enum.AssetType.LeftArm]
      672 SETTABLE                         R15 R13 R14
      673 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      675 GETTABLEKS                       R14 R15 K211 ["RightUpperArm"]
      677 GETIMPORT                        R15 K189 [Enum.AssetType.RightArm]
      679 SETTABLE                         R15 R13 R14
      680 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      682 GETTABLEKS                       R14 R15 K212 ["RightLowerArm"]
      684 GETIMPORT                        R15 K189 [Enum.AssetType.RightArm]
      686 SETTABLE                         R15 R13 R14
      687 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      689 GETTABLEKS                       R14 R15 K213 ["RightHand"]
      691 GETIMPORT                        R15 K189 [Enum.AssetType.RightArm]
      693 SETTABLE                         R15 R13 R14
      694 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      696 GETTABLEKS                       R14 R15 K208 ["LeftUpperLeg"]
      698 GETIMPORT                        R15 K187 [Enum.AssetType.LeftLeg]
      700 SETTABLE                         R15 R13 R14
      701 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      703 GETTABLEKS                       R14 R15 K209 ["LeftLowerLeg"]
      705 GETIMPORT                        R15 K187 [Enum.AssetType.LeftLeg]
      707 SETTABLE                         R15 R13 R14
      708 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      710 GETTABLEKS                       R14 R15 K216 ["LeftFoot"]
      712 GETIMPORT                        R15 K187 [Enum.AssetType.LeftLeg]
      714 SETTABLE                         R15 R13 R14
      715 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      717 GETTABLEKS                       R14 R15 K217 ["RightUpperLeg"]
      719 GETIMPORT                        R15 K191 [Enum.AssetType.RightLeg]
      721 SETTABLE                         R15 R13 R14
      722 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      724 GETTABLEKS                       R14 R15 K218 ["RightLowerLeg"]
      726 GETIMPORT                        R15 K191 [Enum.AssetType.RightLeg]
      728 SETTABLE                         R15 R13 R14
      729 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      731 GETTABLEKS                       R14 R15 K219 ["RightFoot"]
      733 GETIMPORT                        R15 K191 [Enum.AssetType.RightLeg]
      735 SETTABLE                         R15 R13 R14
      736 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      738 GETTABLEKS                       R14 R15 K194 ["EyebrowAccessory"]
      740 GETIMPORT                        R15 K195 [Enum.AssetType.EyebrowAccessory]
      742 SETTABLE                         R15 R13 R14
      743 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      745 GETTABLEKS                       R14 R15 K196 ["EyelashAccessory"]
      747 GETIMPORT                        R15 K197 [Enum.AssetType.EyelashAccessory]
      749 SETTABLE                         R15 R13 R14
      750 GETTABLEKS                       R15 R9 K221 ["UGC_BODY_PARTS"]
      752 GETTABLEKS                       R14 R15 K198 ["HairAccessory"]
      754 GETIMPORT                        R15 K199 [Enum.AssetType.HairAccessory]
      756 SETTABLE                         R15 R13 R14
      757 SETTABLEKS                       R13 R9 K224 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      759 NEWTABLE                         R13 2 0
      761 GETTABLEKS                       R15 R9 K223 ["UGC_BUNDLE_PARTS"]
      763 GETTABLEKS                       R14 R15 K200 ["LeftShoeAccessory"]
      765 GETIMPORT                        R15 K201 [Enum.AssetType.LeftShoeAccessory]
      767 SETTABLE                         R15 R13 R14
      768 GETTABLEKS                       R15 R9 K223 ["UGC_BUNDLE_PARTS"]
      770 GETTABLEKS                       R14 R15 K202 ["RightShoeAccessory"]
      772 GETIMPORT                        R15 K203 [Enum.AssetType.RightShoeAccessory]
      774 SETTABLE                         R15 R13 R14
      775 SETTABLEKS                       R13 R9 K225 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
      777 MOVE                             R13 R3
      778 CALL                             R13 0 1
      779 JUMPIFNOT                        R13 ; [+90]
      780 DUPTABLE                         R13 K229 [{"Classic", "ProportionsNormal", "ProportionsSlender", "Unknown"}]
      781 LOADK                            R14 K226 ["Classic"]
      782 SETTABLEKS                       R14 R13 K226 ["Classic"]
      784 LOADK                            R14 K227 ["ProportionsNormal"]
      785 SETTABLEKS                       R14 R13 K227 ["ProportionsNormal"]
      787 LOADK                            R14 K228 ["ProportionsSlender"]
      788 SETTABLEKS                       R14 R13 K228 ["ProportionsSlender"]
      790 LOADK                            R14 K91 ["Unknown"]
      791 SETTABLEKS                       R14 R13 K91 ["Unknown"]
      793 SETTABLEKS                       R13 R9 K230 ["BodyScaleTypes"]
      795 DUPTABLE                         R13 K231 [{"Classic", "ProportionsNormal", "ProportionsSlender"}]
      796 DUPTABLE                         R14 K237 [{"height", "width", "head", "proportion", "bodyType"}]
      797 LOADN                            R15 1
      798 SETTABLEKS                       R15 R14 K232 ["height"]
      800 LOADN                            R15 1
      801 SETTABLEKS                       R15 R14 K233 ["width"]
      803 LOADN                            R15 1
      804 SETTABLEKS                       R15 R14 K234 ["head"]
      806 LOADN                            R15 0
      807 SETTABLEKS                       R15 R14 K235 ["proportion"]
      809 LOADN                            R15 0
      810 SETTABLEKS                       R15 R14 K236 ["bodyType"]
      812 SETTABLEKS                       R14 R13 K226 ["Classic"]
      814 DUPTABLE                         R14 K237 [{"height", "width", "head", "proportion", "bodyType"}]
      815 LOADN                            R15 1
      816 SETTABLEKS                       R15 R14 K232 ["height"]
      818 LOADN                            R15 1
      819 SETTABLEKS                       R15 R14 K233 ["width"]
      821 LOADN                            R15 1
      822 SETTABLEKS                       R15 R14 K234 ["head"]
      824 LOADN                            R15 0
      825 SETTABLEKS                       R15 R14 K235 ["proportion"]
      827 LOADN                            R15 1
      828 SETTABLEKS                       R15 R14 K236 ["bodyType"]
      830 SETTABLEKS                       R14 R13 K227 ["ProportionsNormal"]
      832 DUPTABLE                         R14 K237 [{"height", "width", "head", "proportion", "bodyType"}]
      833 LOADN                            R15 1
      834 SETTABLEKS                       R15 R14 K232 ["height"]
      836 LOADN                            R15 1
      837 SETTABLEKS                       R15 R14 K233 ["width"]
      839 LOADN                            R15 1
      840 SETTABLEKS                       R15 R14 K234 ["head"]
      842 LOADN                            R15 1
      843 SETTABLEKS                       R15 R14 K235 ["proportion"]
      845 LOADN                            R15 1
      846 SETTABLEKS                       R15 R14 K236 ["bodyType"]
      848 SETTABLEKS                       R14 R13 K228 ["ProportionsSlender"]
      850 SETTABLEKS                       R13 R9 K238 ["BodyScaleDefaults"]
      852 DUPTABLE                         R13 K239 [{"height", "width", "head", "bodyType", "proportion"}]
      853 LOADK                            R14 K240 ["BodyHeightScale"]
      854 SETTABLEKS                       R14 R13 K232 ["height"]
      856 LOADK                            R14 K241 ["BodyWidthScale"]
      857 SETTABLEKS                       R14 R13 K233 ["width"]
      859 LOADK                            R14 K242 ["HeadScale"]
      860 SETTABLEKS                       R14 R13 K234 ["head"]
      862 LOADK                            R14 K243 ["BodyTypeScale"]
      863 SETTABLEKS                       R14 R13 K236 ["bodyType"]
      865 LOADK                            R14 K244 ["BodyProportionScale"]
      866 SETTABLEKS                       R14 R13 K235 ["proportion"]
      868 SETTABLEKS                       R13 R9 K245 ["bodyScaleNameToString"]
      870 DUPTABLE                         R13 K251 [{"NONE", "BEGIN", "VALIDATING", "SUCCESS", "FAILURE"}]
      871 LOADK                            R14 K252 ["None"]
      872 SETTABLEKS                       R14 R13 K246 ["NONE"]
      874 LOADK                            R14 K253 ["Begin"]
      875 SETTABLEKS                       R14 R13 K247 ["BEGIN"]
      877 LOADK                            R14 K254 ["Validating"]
      878 SETTABLEKS                       R14 R13 K248 ["VALIDATING"]
      880 LOADK                            R14 K159 ["Success"]
      881 SETTABLEKS                       R14 R13 K249 ["SUCCESS"]
      883 LOADK                            R14 K255 ["Failure"]
      884 SETTABLEKS                       R14 R13 K250 ["FAILURE"]
      886 SETTABLEKS                       R13 R9 K256 ["VALIDATION_STATE"]
      888 MOVE                             R13 R4
      889 CALL                             R13 0 1
      890 JUMPIFNOT                        R13 ; [+8]
      891 NEWTABLE                         R13 0 2
      893 LOADK                            R14 K1 [script]
      894 LOADK                            R15 K2 ["Parent"]
      895 SETLIST                          R13 R14 2 [1]
      897 SETTABLEKS                       R13 R9 K259 ["assetIdStringPatterns"]
      899 NEWTABLE                         R13 0 10
      901 GETIMPORT                        R14 K183 [Enum.AssetType.DynamicHead]
      903 GETIMPORT                        R15 K195 [Enum.AssetType.EyebrowAccessory]
      905 GETIMPORT                        R16 K197 [Enum.AssetType.EyelashAccessory]
      907 GETIMPORT                        R17 K185 [Enum.AssetType.LeftArm]
      909 GETIMPORT                        R18 K187 [Enum.AssetType.LeftLeg]
      911 GETIMPORT                        R19 K201 [Enum.AssetType.LeftShoeAccessory]
      913 GETIMPORT                        R20 K189 [Enum.AssetType.RightArm]
      915 GETIMPORT                        R21 K191 [Enum.AssetType.RightLeg]
      917 GETIMPORT                        R22 K203 [Enum.AssetType.RightShoeAccessory]
      919 GETIMPORT                        R23 K193 [Enum.AssetType.Torso]
      921 SETLIST                          R13 R14 10 [1]
      923 SETTABLEKS                       R13 R9 K260 ["BODY_PARTS"]
      925 MOVE                             R13 R6
      926 CALL                             R13 0 1
      927 JUMPIFNOT                        R13 ; [+16]
      928 NEWTABLE                         R13 0 5
      930 GETIMPORT                        R14 K195 [Enum.AssetType.EyebrowAccessory]
      932 GETIMPORT                        R15 K197 [Enum.AssetType.EyelashAccessory]
      934 GETIMPORT                        R16 K262 [Enum.AssetType.FaceMakeup]
      936 GETIMPORT                        R17 K264 [Enum.AssetType.LipMakeup]
      938 GETIMPORT                        R18 K266 [Enum.AssetType.EyeMakeup]
      940 SETLIST                          R13 R14 5 [1]
      942 SETTABLEKS                       R13 R9 K267 ["MAKEUP_ASSET_TYPES"]
      944 RETURN                           R9 1
