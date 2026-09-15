PROTO_0:
        0 DUPTABLE                         R2 K4 [{[1], ["isCatalog"] = True, ["isUploadable"]}]
        1 SETTABLEKS                       R0 R2 K0 ["type"]
        3 JUMPIFEQKB                       R1 TRUE ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K3 ["isUploadable"]
        9 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R2 K4 [{[1], ["isMarketplace"] = True, ["isBuyable"]}]
        1 SETTABLEKS                       R0 R2 K0 ["type"]
        3 JUMPIFEQKB                       R1 TRUE ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K3 ["isBuyable"]
        9 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["getNormalizedAssetString"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["ASSET_TYPE_INFO"]
        4 LENGTH                           R1 R2
        5 JUMPIFEQKN                       R1 K1 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 NEWTABLE                         R2 0 9
       11 GETIMPORT                        R4 K5 [Enum.AssetType.Model]
       13 DUPTABLE                         R3 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       14 SETTABLEKS                       R4 R3 K6 ["type"]
       16 GETIMPORT                        R5 K13 [Enum.AssetType.Decal]
       18 DUPTABLE                         R4 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       19 SETTABLEKS                       R5 R4 K6 ["type"]
       21 GETIMPORT                        R6 K15 [Enum.AssetType.Mesh]
       23 DUPTABLE                         R5 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       24 SETTABLEKS                       R6 R5 K6 ["type"]
       26 GETIMPORT                        R7 K17 [Enum.AssetType.MeshPart]
       28 DUPTABLE                         R6 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       29 SETTABLEKS                       R7 R6 K6 ["type"]
       31 GETIMPORT                        R8 K19 [Enum.AssetType.Audio]
       33 DUPTABLE                         R7 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       34 SETTABLEKS                       R8 R7 K6 ["type"]
       36 GETIMPORT                        R9 K21 [Enum.AssetType.Animation]
       38 DUPTABLE                         R8 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       39 SETTABLEKS                       R9 R8 K6 ["type"]
       41 GETIMPORT                        R10 K23 [Enum.AssetType.Video]
       43 DUPTABLE                         R9 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       44 SETTABLEKS                       R10 R9 K6 ["type"]
       46 GETIMPORT                        R11 K25 [Enum.AssetType.Plugin]
       48 DUPTABLE                         R10 K26 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = True}]
       49 SETTABLEKS                       R11 R10 K6 ["type"]
       51 GETIMPORT                        R12 K28 [Enum.AssetType.Package]
       53 DUPTABLE                         R11 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       54 SETTABLEKS                       R12 R11 K6 ["type"]
       56 SETLIST                          R2 R3 9 [1]
       58 SETTABLEKS                       R2 R1 K0 ["ASSET_TYPE_INFO"]
       60 NEWTABLE                         R1 0 0
       62 GETUPVAL                         R2 1
       63 CALL                             R2 0 1
       64 JUMPIFNOT                        R2 ; [+16]
       65 GETIMPORT                        R2 K30 [ipairs]
       67 MOVE                             R3 R0
       68 CALL                             R2 1 3
       69 FORGPREP_INEXT                   R2
       70 GETIMPORT                        R7 K32 [pcall]
       72 NEWCLOSURE                       R8 P0
       73 CAPTURE                          REF R6
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          REF R1
       76 CALL                             R7 1 1
       77 CLOSEUPVALS                      R6
       78 FORGLOOP                         R2 2 [inext] ; [-9]
       80 JUMP                             ; [+1]
       81 MOVE                             R1 R0
       82 GETIMPORT                        R2 K30 [ipairs]
       84 MOVE                             R3 R1
       85 CALL                             R2 1 3
       86 FORGPREP_INEXT                   R2
       87 GETUPVAL                         R7 1
       88 CALL                             R7 0 1
       89 JUMPIF                           R7 ; [+6]
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R7 R7 K33 ["getNormalizedAssetString"]
       93 MOVE                             R8 R6
       94 CALL                             R7 1 1
       95 MOVE                             R6 R7
       96 GETIMPORT                        R8 K34 [Enum.AssetType]
       98 GETTABLE                         R7 R8 R6
       99 JUMPIFNOT                        R7 ; [+25]
      100 GETIMPORT                        R8 K37 [table.find]
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R9 R9 K38 ["ASSET_TYPES_2D"]
      105 MOVE                             R10 R7
      106 CALL                             R8 2 1
      107 GETUPVAL                         R10 0
      108 GETTABLEKS                       R10 R10 K0 ["ASSET_TYPE_INFO"]
      110 NOT                              R12 R8
      111 DUPTABLE                         R11 K41 [{["type"], ["isCatalog"] = True, ["isUploadable"]}]
      112 SETTABLEKS                       R7 R11 K6 ["type"]
      114 JUMPIFEQKB                       R12 TRUE ; [+2]
      116 LOADB                            R13 0 +1
      117 LOADB                            R13 1
      118 SETTABLEKS                       R13 R11 K40 ["isUploadable"]
      120 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      122 GETIMPORT                        R9 K43 [table.insert]
      124 CALL                             R9 2 0
      125 FORGLOOP                         R2 2 [inext] ; [-39]
      127 GETIMPORT                        R2 K30 [ipairs]
      129 GETUPVAL                         R3 0
      130 GETTABLEKS                       R3 R3 K0 ["ASSET_TYPE_INFO"]
      132 CALL                             R2 1 3
      133 FORGPREP_INEXT                   R2
      134 GETIMPORT                        R8 K45 [next]
      136 MOVE                             R9 R6
      137 CALL                             R8 1 1
      138 JUMPIFNOTEQKNIL                  R8 ; [+2]
      140 LOADB                            R7 0 +1
      141 LOADB                            R7 1
      142 JUMPIFNOT                        R7 ; [+42]
      143 GETTABLEKS                       R8 R6 K39 ["isCatalog"]
      145 JUMPIFNOT                        R8 ; [+15]
      146 GETTABLEKS                       R8 R6 K7 ["isMarketplace"]
      148 JUMPIFNOT                        R8 ; [+12]
      149 GETIMPORT                        R8 K47 [error]
      151 GETTABLEKS                       R13 R6 K6 ["type"]
      153 FASTCALL1                        TOSTRING R13 ; [+2]
      154 GETIMPORT                        R12 K49 [tostring]
      156 CALL                             R12 1 1
      157 MOVE                             R10 R12
      158 LOADK                            R11 K50 [" cannot be both a catalog and marketplace asset"]
      159 CONCAT                           R9 R10 R11
      160 CALL                             R8 1 0
      161 GETUPVAL                         R9 0
      162 GETTABLEKS                       R9 R9 K0 ["ASSET_TYPE_INFO"]
      164 GETTABLEKS                       R10 R6 K6 ["type"]
      166 GETTABLE                         R8 R9 R10
      167 JUMPIFNOT                        R8 ; [+11]
      168 GETIMPORT                        R8 K47 [error]
      170 LOADK                            R10 K51 ["AssetConfigConstants.ASSET_TYPE_INFO contains a duplicate of "]
      171 GETTABLEKS                       R12 R6 K6 ["type"]
      173 FASTCALL1                        TOSTRING R12 ; [+2]
      174 GETIMPORT                        R11 K49 [tostring]
      176 CALL                             R11 1 1
      177 CONCAT                           R9 R10 R11
      178 CALL                             R8 1 0
      179 GETUPVAL                         R8 0
      180 GETTABLEKS                       R8 R8 K0 ["ASSET_TYPE_INFO"]
      182 GETTABLEKS                       R9 R6 K6 ["type"]
      184 SETTABLE                         R6 R8 R9
      185 FORGLOOP                         R2 2 [inext] ; [-52]
      187 CLOSEUPVALS                      R1
      188 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKS                    R0 K0 ["Tshirt"] ; [+3]
        2 LOADK                            R1 K1 ["TShirt"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K2 ["TshirtAccessory"] ; [+3]
        6 LOADK                            R1 K3 ["TShirtAccessory"]
        7 RETURN                           R1 1
        8 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["enumerate"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K7 ["Src"]
       18 GETTABLEKS                       R2 R2 K8 ["Util"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K9 ["SharedFlags"]
       24 GETTABLEKS                       R4 R4 K10 ["getFFlagEnableUGCBundleUploadBodyScale"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Src"]
       31 GETTABLEKS                       R5 R5 K11 ["Flags"]
       33 GETTABLEKS                       R5 R5 K12 ["getFFlagCheckAvatarAssetPrivacy"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R0 K7 ["Src"]
       40 GETTABLEKS                       R6 R6 K11 ["Flags"]
       42 GETTABLEKS                       R6 R6 K13 ["getFFlagEnableUploadingAvatarAnimations"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K7 ["Src"]
       49 GETTABLEKS                       R7 R7 K11 ["Flags"]
       51 GETTABLEKS                       R7 R7 K14 ["getFFlagEnableAvatarBackgroundCatalogAsset"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R0 K7 ["Src"]
       58 GETTABLEKS                       R8 R8 K11 ["Flags"]
       60 GETTABLEKS                       R8 R8 K15 ["getFFlagUsePublishMarketplaceActionType"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R2 K16 ["convertArrayToTable"]
       67 CALL                             R8 1 1
       68 NEWTABLE                         R9 64 0
       70 LOADN                            R10 1100
       71 SETTABLEKS                       R10 R9 K17 ["WIDTH"]
       73 LOADN                            R10 860
       74 SETTABLEKS                       R10 R9 K18 ["HEIGHT"]
       76 LOADN                            R10 900
       77 SETTABLEKS                       R10 R9 K19 ["MIN_WIDTH"]
       79 LOADN                            R10 500
       80 SETTABLEKS                       R10 R9 K20 ["MIN_HEIGHT"]
       82 LOADK                            R10 K21 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
       83 SETTABLEKS                       R10 R9 K22 ["TERM_OF_USE_URL"]
       85 LOADK                            R10 K23 ["https://www.roblox.com/my/account#!/info"]
       86 SETTABLEKS                       R10 R9 K24 ["ACCOUNT_SETTING_URL"]
       88 LOADN                            R10 50
       89 SETTABLEKS                       R10 R9 K25 ["NAME_CHARACTER_LIMIT"]
       91 LOADN                            R10 1000
       92 SETTABLEKS                       R10 R9 K26 ["DESCRIPTION_CHARACTER_LIMIT"]
       94 LOADN                            R10 500
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
      147 GETIMPORT                        R12 K52 [Enum.Genre.All]
      149 GETTABLEKS                       R12 R12 K53 ["Name"]
      151 SETTABLEKS                       R12 R11 K47 ["name"]
      153 DUPTABLE                         R12 K48 [{"name"}]
      154 GETIMPORT                        R13 K55 [Enum.Genre.TownAndCity]
      156 GETTABLEKS                       R13 R13 K53 ["Name"]
      158 SETTABLEKS                       R13 R12 K47 ["name"]
      160 DUPTABLE                         R13 K48 [{"name"}]
      161 GETIMPORT                        R14 K57 [Enum.Genre.Fantasy]
      163 GETTABLEKS                       R14 R14 K53 ["Name"]
      165 SETTABLEKS                       R14 R13 K47 ["name"]
      167 DUPTABLE                         R14 K48 [{"name"}]
      168 GETIMPORT                        R15 K59 [Enum.Genre.SciFi]
      170 GETTABLEKS                       R15 R15 K53 ["Name"]
      172 SETTABLEKS                       R15 R14 K47 ["name"]
      174 DUPTABLE                         R15 K48 [{"name"}]
      175 GETIMPORT                        R16 K61 [Enum.Genre.Ninja]
      177 GETTABLEKS                       R16 R16 K53 ["Name"]
      179 SETTABLEKS                       R16 R15 K47 ["name"]
      181 DUPTABLE                         R16 K48 [{"name"}]
      182 GETIMPORT                        R17 K63 [Enum.Genre.Scary]
      184 GETTABLEKS                       R17 R17 K53 ["Name"]
      186 SETTABLEKS                       R17 R16 K47 ["name"]
      188 DUPTABLE                         R17 K48 [{"name"}]
      189 GETIMPORT                        R18 K65 [Enum.Genre.Pirate]
      191 GETTABLEKS                       R18 R18 K53 ["Name"]
      193 SETTABLEKS                       R18 R17 K47 ["name"]
      195 DUPTABLE                         R18 K48 [{"name"}]
      196 GETIMPORT                        R19 K67 [Enum.Genre.Adventure]
      198 GETTABLEKS                       R19 R19 K53 ["Name"]
      200 SETTABLEKS                       R19 R18 K47 ["name"]
      202 DUPTABLE                         R19 K48 [{"name"}]
      203 GETIMPORT                        R20 K69 [Enum.Genre.Sports]
      205 GETTABLEKS                       R20 R20 K53 ["Name"]
      207 SETTABLEKS                       R20 R19 K47 ["name"]
      209 DUPTABLE                         R20 K48 [{"name"}]
      210 GETIMPORT                        R21 K71 [Enum.Genre.Funny]
      212 GETTABLEKS                       R21 R21 K53 ["Name"]
      214 SETTABLEKS                       R21 R20 K47 ["name"]
      216 DUPTABLE                         R21 K48 [{"name"}]
      217 GETIMPORT                        R22 K73 [Enum.Genre.WildWest]
      219 GETTABLEKS                       R22 R22 K53 ["Name"]
      221 SETTABLEKS                       R22 R21 K47 ["name"]
      223 DUPTABLE                         R22 K48 [{"name"}]
      224 GETIMPORT                        R23 K75 [Enum.Genre.War]
      226 GETTABLEKS                       R23 R23 K53 ["Name"]
      228 SETTABLEKS                       R23 R22 K47 ["name"]
      230 DUPTABLE                         R23 K48 [{"name"}]
      231 GETIMPORT                        R24 K77 [Enum.Genre.SkatePark]
      233 GETTABLEKS                       R24 R24 K53 ["Name"]
      235 SETTABLEKS                       R24 R23 K47 ["name"]
      237 DUPTABLE                         R24 K48 [{"name"}]
      238 GETIMPORT                        R25 K79 [Enum.Genre.Tutorial]
      240 GETTABLEKS                       R25 R25 K53 ["Name"]
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
      260 NEWTABLE                         R11 0 4
      262 LOADK                            R12 K85 ["ASSET_TYPE_SELECTION"]
      263 LOADK                            R13 K86 ["CONFIGURE_ASSET"]
      264 LOADK                            R14 K87 ["UPLOADING_ASSET"]
      265 LOADK                            R15 K88 ["UPLOAD_ASSET_RESULT"]
      266 SETLIST                          R11 R12 4 [1]
      268 CALL                             R10 1 1
      269 SETTABLEKS                       R10 R9 K89 ["SCREENS"]
      271 MOVE                             R10 R8
      272 NEWTABLE                         R11 0 8
      274 LOADK                            R12 K90 ["Unknown"]
      275 LOADK                            R13 K91 ["ReviewPending"]
      276 LOADK                            R14 K92 ["Moderated"]
      277 LOADK                            R15 K93 ["ReviewApproved"]
      278 LOADK                            R16 K94 ["OnSale"]
      279 LOADK                            R17 K95 ["OffSale"]
      280 LOADK                            R18 K96 ["DelayedRelease"]
      281 LOADK                            R19 K97 ["Free"]
      282 SETLIST                          R11 R12 8 [1]
      284 CALL                             R10 1 1
      285 SETTABLEKS                       R10 R9 K98 ["ASSET_STATUS"]
      287 MOVE                             R10 R8
      288 NEWTABLE                         R11 0 10
      290 LOADK                            R12 K99 ["AssetType"]
      291 LOADK                            R13 K100 ["Authorization"]
      292 LOADK                            R14 K101 ["Invalid"]
      293 LOADK                            R15 K102 ["KillSwitch"]
      294 LOADK                            R16 K103 ["Quota"]
      295 LOADK                            R17 K104 ["SafetyStatus"]
      296 LOADK                            R18 K105 ["SellerAccountNotOnboarded"]
      297 LOADK                            R19 K106 ["SellerAccountRestricted"]
      298 LOADK                            R20 K107 ["UnsupportedAssetOwner"]
      299 LOADK                            R21 K108 ["Verification"]
      300 SETLIST                          R11 R12 10 [1]
      302 CALL                             R10 1 1
      303 SETTABLEKS                       R10 R9 K109 ["RESTRICTION_TYPE"]
      305 MOVE                             R10 R8
      306 NEWTABLE                         R11 0 1
      308 LOADK                            R12 K94 ["OnSale"]
      309 SETLIST                          R11 R12 1 [1]
      311 CALL                             R10 1 1
      312 SETTABLEKS                       R10 R9 K110 ["SALES_STATUS_FOR_PRICE"]
      314 DUPCLOSURE                       R10 K111 [PROTO_0]
      315 DUPCLOSURE                       R11 K112 [PROTO_1]
      316 NEWTABLE                         R12 0 0
      318 SETTABLEKS                       R12 R9 K113 ["ASSET_TYPE_INFO"]
      320 NEWTABLE                         R12 0 3
      322 GETIMPORT                        R13 K115 [Enum.AssetType.TShirt]
      324 GETIMPORT                        R14 K117 [Enum.AssetType.Shirt]
      326 GETIMPORT                        R15 K119 [Enum.AssetType.Pants]
      328 SETLIST                          R12 R13 3 [1]
      330 SETTABLEKS                       R12 R9 K120 ["ASSET_TYPES_2D"]
      332 DUPCLOSURE                       R12 K121 [PROTO_3]
      333 CAPTURE                          VAL R9
      334 CAPTURE                          VAL R7
      335 SETTABLEKS                       R12 R9 K122 ["populateAssetTypeInfoFromNetwork"]
      337 DUPCLOSURE                       R12 K123 [PROTO_4]
      338 SETTABLEKS                       R12 R9 K124 ["getNormalizedAssetString"]
      340 MOVE                             R12 R8
      341 NEWTABLE                         R13 0 3
      343 LOADK                            R14 K125 ["WhitelistedPlugins"]
      344 LOADK                            R15 K126 ["MyPlugins"]
      345 LOADK                            R16 K127 ["GroupPlugins"]
      346 SETLIST                          R13 R14 3 [1]
      348 CALL                             R12 1 1
      349 SETTABLEKS                       R12 R9 K128 ["developCategoryType"]
      351 MOVE                             R12 R8
      352 NEWTABLE                         R13 0 2
      354 LOADK                            R14 K129 ["MyPackages"]
      355 LOADK                            R15 K130 ["GroupPackages"]
      356 SETLIST                          R13 R14 2 [1]
      358 CALL                             R12 1 1
      359 SETTABLEKS                       R12 R9 K131 ["packagesCategoryType"]
      361 MOVE                             R12 R8
      362 NEWTABLE                         R13 0 9
      364 LOADK                            R14 K132 ["Asset"]
      365 LOADK                            R15 K133 ["Avatar"]
      366 LOADK                            R16 K134 ["AvatarHeadShot"]
      367 LOADK                            R17 K135 ["BadgeIcon"]
      368 LOADK                            R18 K136 ["BundleThumbnail"]
      369 LOADK                            R19 K137 ["GameIcon"]
      370 LOADK                            R20 K138 ["GamePass"]
      371 LOADK                            R21 K139 ["GroupIcon"]
      372 LOADK                            R22 K140 ["Outfit"]
      373 SETLIST                          R13 R14 9 [1]
      375 CALL                             R12 1 1
      376 SETTABLEKS                       R12 R9 K141 ["rbxThumbTypes"]
      378 DUPTABLE                         R12 K148 [{["AvatarHeadshotImageSize"] = 60, ["GroupIconImageSize"] = 150, ["AssetThumbnailSize"] = 420}]
      379 SETTABLEKS                       R12 R9 K149 ["rbxThumbSizes"]
      381 DUPTABLE                         R12 K160 [{["MaxThumbnails"] = 5, ["AspectRatioHeight"] = 9, ["AspectRatioWidth"] = 16, ["RecommendedHeight"] = 432, ["RecommendedWidth"] = 768}]
      382 SETTABLEKS                       R12 R9 K161 ["additionalImages"]
      384 NEWTABLE                         R12 0 3
      386 LOADK                            R13 K162 ["jpg"]
      387 LOADK                            R14 K163 ["jpeg"]
      388 LOADK                            R15 K164 ["png"]
      389 SETLIST                          R12 R13 3 [1]
      391 SETTABLEKS                       R12 R9 K165 ["IMAGE_TYPES"]
      393 LOADK                            R12 K166 ["Success"]
      394 SETTABLEKS                       R12 R9 K167 ["TAGS_SUGGESTION_SUCCESS"]
      396 LOADN                            R12 5
      397 SETTABLEKS                       R12 R9 K168 ["MAX_DISPLAY_SUGGESTIONS"]
      399 LOADN                            R12 10
      400 SETTABLEKS                       R12 R9 K169 ["MAX_FETCH_SUGGESTIONS"]
      402 LOADK                            R12 K170 ["avatar_meshpart_accessory"]
      403 SETTABLEKS                       R12 R9 K171 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
      405 LOADK                            R12 K172 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
      406 SETTABLEKS                       R12 R9 K173 ["MULTIPART_FORM_BOUNDARY"]
      408 LOADK                            R12 K174 ["OverrideAssetId"]
      409 SETTABLEKS                       R12 R9 K175 ["OVERRIDE_ASSET_ID"]
      411 DUPTABLE                         R12 K180 [{["Public"] = True, ["Private"] = False}]
      412 SETTABLEKS                       R12 R9 K181 ["SHARING_KEYS"]
      414 NEWTABLE                         R12 0 3
      416 LOADK                            R13 K182 ["Body"]
      417 LOADK                            R14 K183 ["DynamicHead"]
      418 LOADK                            R15 K184 ["Shoes"]
      419 SETLIST                          R12 R13 3 [1]
      421 MOVE                             R13 R5
      422 CALL                             R13 0 1
      423 JUMPIFNOT                        R13 ; [+7]
      424 FASTCALL2K                       TABLE_INSERT R12 K185 ; [+5]
      426 MOVE                             R14 R12
      427 LOADK                            R15 K185 ["AvatarAnimations"]
      428 GETIMPORT                        R13 K188 [table.insert]
      430 CALL                             R13 2 0
      431 NEWTABLE                         R13 0 0
      433 SETTABLEKS                       R13 R9 K189 ["UGCBundleTypes"]
      435 GETIMPORT                        R13 K191 [ipairs]
      437 MOVE                             R14 R12
      438 CALL                             R13 1 3
      439 FORGPREP_INEXT                   R13
      440 DUPTABLE                         R18 K193 [{"Name", "Value"}]
      441 SETTABLEKS                       R17 R18 K53 ["Name"]
      443 SETTABLEKS                       R16 R18 K192 ["Value"]
      445 GETTABLEKS                       R19 R9 K189 ["UGCBundleTypes"]
      447 SETTABLE                         R18 R19 R17
      448 NEWCLOSURE                       R19 P4
      449 CAPTURE                          VAL R18
      450 SETTABLEKS                       R19 R18 K194 ["rawValue"]
      452 FORGLOOP                         R13 2 [inext] ; [-13]
      454 NEWTABLE                         R13 4 0
      456 GETTABLEKS                       R14 R9 K189 ["UGCBundleTypes"]
      458 GETTABLEKS                       R14 R14 K182 ["Body"]
      460 GETTABLEKS                       R14 R14 K194 ["rawValue"]
      462 CALL                             R14 0 1
      463 GETTABLEKS                       R15 R9 K189 ["UGCBundleTypes"]
      465 GETTABLEKS                       R15 R15 K182 ["Body"]
      467 SETTABLE                         R15 R13 R14
      468 GETTABLEKS                       R14 R9 K189 ["UGCBundleTypes"]
      470 GETTABLEKS                       R14 R14 K183 ["DynamicHead"]
      472 GETTABLEKS                       R14 R14 K194 ["rawValue"]
      474 CALL                             R14 0 1
      475 GETTABLEKS                       R15 R9 K189 ["UGCBundleTypes"]
      477 GETTABLEKS                       R15 R15 K183 ["DynamicHead"]
      479 SETTABLE                         R15 R13 R14
      480 GETTABLEKS                       R14 R9 K189 ["UGCBundleTypes"]
      482 GETTABLEKS                       R14 R14 K184 ["Shoes"]
      484 GETTABLEKS                       R14 R14 K194 ["rawValue"]
      486 CALL                             R14 0 1
      487 GETTABLEKS                       R15 R9 K189 ["UGCBundleTypes"]
      489 GETTABLEKS                       R15 R15 K184 ["Shoes"]
      491 SETTABLE                         R15 R13 R14
      492 SETTABLEKS                       R13 R9 K195 ["UGCBundleTypeStringToEnumeration"]
      494 MOVE                             R13 R5
      495 CALL                             R13 0 1
      496 JUMPIFNOT                        R13 ; [+14]
      497 GETTABLEKS                       R13 R9 K195 ["UGCBundleTypeStringToEnumeration"]
      499 GETTABLEKS                       R14 R9 K189 ["UGCBundleTypes"]
      501 GETTABLEKS                       R14 R14 K185 ["AvatarAnimations"]
      503 GETTABLEKS                       R14 R14 K194 ["rawValue"]
      505 CALL                             R14 0 1
      506 GETTABLEKS                       R15 R9 K189 ["UGCBundleTypes"]
      508 GETTABLEKS                       R15 R15 K185 ["AvatarAnimations"]
      510 SETTABLE                         R15 R13 R14
      511 NEWTABLE                         R13 16 0
      513 GETIMPORT                        R14 K196 [Enum.AssetType.DynamicHead]
      515 SETTABLEKS                       R14 R13 K183 ["DynamicHead"]
      517 GETIMPORT                        R14 K198 [Enum.AssetType.LeftArm]
      519 SETTABLEKS                       R14 R13 K197 ["LeftArm"]
      521 GETIMPORT                        R14 K200 [Enum.AssetType.LeftLeg]
      523 SETTABLEKS                       R14 R13 K199 ["LeftLeg"]
      525 GETIMPORT                        R14 K202 [Enum.AssetType.RightArm]
      527 SETTABLEKS                       R14 R13 K201 ["RightArm"]
      529 GETIMPORT                        R14 K204 [Enum.AssetType.RightLeg]
      531 SETTABLEKS                       R14 R13 K203 ["RightLeg"]
      533 GETIMPORT                        R14 K206 [Enum.AssetType.Torso]
      535 SETTABLEKS                       R14 R13 K205 ["Torso"]
      537 GETIMPORT                        R14 K208 [Enum.AssetType.EyebrowAccessory]
      539 SETTABLEKS                       R14 R13 K207 ["EyebrowAccessory"]
      541 GETIMPORT                        R14 K210 [Enum.AssetType.EyelashAccessory]
      543 SETTABLEKS                       R14 R13 K209 ["EyelashAccessory"]
      545 GETIMPORT                        R14 K212 [Enum.AssetType.HairAccessory]
      547 SETTABLEKS                       R14 R13 K211 ["HairAccessory"]
      549 GETIMPORT                        R14 K214 [Enum.AssetType.LeftShoeAccessory]
      551 SETTABLEKS                       R14 R13 K213 ["LeftShoeAccessory"]
      553 GETIMPORT                        R14 K216 [Enum.AssetType.RightShoeAccessory]
      555 SETTABLEKS                       R14 R13 K215 ["RightShoeAccessory"]
      557 SETTABLEKS                       R13 R9 K217 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      559 MOVE                             R13 R5
      560 CALL                             R13 0 1
      561 JUMPIFNOT                        R13 ; [+42]
      562 GETTABLEKS                       R13 R9 K217 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      564 GETIMPORT                        R14 K219 [Enum.AssetType.ClimbAnimation]
      566 SETTABLEKS                       R14 R13 K218 ["ClimbAnimation"]
      568 GETTABLEKS                       R13 R9 K217 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      570 GETIMPORT                        R14 K221 [Enum.AssetType.FallAnimation]
      572 SETTABLEKS                       R14 R13 K220 ["FallAnimation"]
      574 GETTABLEKS                       R13 R9 K217 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      576 GETIMPORT                        R14 K223 [Enum.AssetType.IdleAnimation]
      578 SETTABLEKS                       R14 R13 K222 ["IdleAnimation"]
      580 GETTABLEKS                       R13 R9 K217 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      582 GETIMPORT                        R14 K225 [Enum.AssetType.JumpAnimation]
      584 SETTABLEKS                       R14 R13 K224 ["JumpAnimation"]
      586 GETTABLEKS                       R13 R9 K217 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      588 GETIMPORT                        R14 K227 [Enum.AssetType.RunAnimation]
      590 SETTABLEKS                       R14 R13 K226 ["RunAnimation"]
      592 GETTABLEKS                       R13 R9 K217 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      594 GETIMPORT                        R14 K229 [Enum.AssetType.SwimAnimation]
      596 SETTABLEKS                       R14 R13 K228 ["SwimAnimation"]
      598 GETTABLEKS                       R13 R9 K217 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      600 GETIMPORT                        R14 K231 [Enum.AssetType.WalkAnimation]
      602 SETTABLEKS                       R14 R13 K230 ["WalkAnimation"]
      604 DUPTABLE                         R13 K247 [{["Head"] = "Head", ["UpperTorso"] = "UpperTorso", ["LowerTorso"] = "LowerTorso", ["LeftUpperLeg"] = "LeftUpperLeg", ["LeftLowerLeg"] = "LeftLowerLeg", ["LeftHand"] = "LeftHand", ["RightUpperArm"] = "RightUpperArm", ["RightLowerArm"] = "RightLowerArm", ["RightHand"] = "RightHand", ["LeftUpperArm"] = "LeftUpperArm", ["LeftLowerArm"] = "LeftLowerArm", ["LeftFoot"] = "LeftFoot", ["RightUpperLeg"] = "RightUpperLeg", ["RightLowerLeg"] = "RightLowerLeg", ["RightFoot"] = "RightFoot", ["EyebrowAccessory"] = "EyebrowAccessory", ["EyelashAccessory"] = "EyelashAccessory", ["HairAccessory"] = "HairAccessory"}]
      605 SETTABLEKS                       R13 R9 K248 ["UGC_BODY_PARTS"]
      607 DUPTABLE                         R13 K249 [{["LeftShoeAccessory"] = "LeftShoeAccessory", ["RightShoeAccessory"] = "RightShoeAccessory"}]
      608 SETTABLEKS                       R13 R9 K250 ["UGC_BUNDLE_PARTS"]
      610 NEWTABLE                         R13 32 0
      612 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      614 GETTABLEKS                       R14 R14 K232 ["Head"]
      616 GETIMPORT                        R15 K196 [Enum.AssetType.DynamicHead]
      618 SETTABLE                         R15 R13 R14
      619 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      621 GETTABLEKS                       R14 R14 K233 ["UpperTorso"]
      623 GETIMPORT                        R15 K206 [Enum.AssetType.Torso]
      625 SETTABLE                         R15 R13 R14
      626 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      628 GETTABLEKS                       R14 R14 K234 ["LowerTorso"]
      630 GETIMPORT                        R15 K206 [Enum.AssetType.Torso]
      632 SETTABLE                         R15 R13 R14
      633 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      635 GETTABLEKS                       R14 R14 K241 ["LeftUpperArm"]
      637 GETIMPORT                        R15 K198 [Enum.AssetType.LeftArm]
      639 SETTABLE                         R15 R13 R14
      640 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      642 GETTABLEKS                       R14 R14 K242 ["LeftLowerArm"]
      644 GETIMPORT                        R15 K198 [Enum.AssetType.LeftArm]
      646 SETTABLE                         R15 R13 R14
      647 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      649 GETTABLEKS                       R14 R14 K237 ["LeftHand"]
      651 GETIMPORT                        R15 K198 [Enum.AssetType.LeftArm]
      653 SETTABLE                         R15 R13 R14
      654 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      656 GETTABLEKS                       R14 R14 K238 ["RightUpperArm"]
      658 GETIMPORT                        R15 K202 [Enum.AssetType.RightArm]
      660 SETTABLE                         R15 R13 R14
      661 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      663 GETTABLEKS                       R14 R14 K239 ["RightLowerArm"]
      665 GETIMPORT                        R15 K202 [Enum.AssetType.RightArm]
      667 SETTABLE                         R15 R13 R14
      668 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      670 GETTABLEKS                       R14 R14 K240 ["RightHand"]
      672 GETIMPORT                        R15 K202 [Enum.AssetType.RightArm]
      674 SETTABLE                         R15 R13 R14
      675 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      677 GETTABLEKS                       R14 R14 K235 ["LeftUpperLeg"]
      679 GETIMPORT                        R15 K200 [Enum.AssetType.LeftLeg]
      681 SETTABLE                         R15 R13 R14
      682 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      684 GETTABLEKS                       R14 R14 K236 ["LeftLowerLeg"]
      686 GETIMPORT                        R15 K200 [Enum.AssetType.LeftLeg]
      688 SETTABLE                         R15 R13 R14
      689 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      691 GETTABLEKS                       R14 R14 K243 ["LeftFoot"]
      693 GETIMPORT                        R15 K200 [Enum.AssetType.LeftLeg]
      695 SETTABLE                         R15 R13 R14
      696 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      698 GETTABLEKS                       R14 R14 K244 ["RightUpperLeg"]
      700 GETIMPORT                        R15 K204 [Enum.AssetType.RightLeg]
      702 SETTABLE                         R15 R13 R14
      703 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      705 GETTABLEKS                       R14 R14 K245 ["RightLowerLeg"]
      707 GETIMPORT                        R15 K204 [Enum.AssetType.RightLeg]
      709 SETTABLE                         R15 R13 R14
      710 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      712 GETTABLEKS                       R14 R14 K246 ["RightFoot"]
      714 GETIMPORT                        R15 K204 [Enum.AssetType.RightLeg]
      716 SETTABLE                         R15 R13 R14
      717 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      719 GETTABLEKS                       R14 R14 K207 ["EyebrowAccessory"]
      721 GETIMPORT                        R15 K208 [Enum.AssetType.EyebrowAccessory]
      723 SETTABLE                         R15 R13 R14
      724 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      726 GETTABLEKS                       R14 R14 K209 ["EyelashAccessory"]
      728 GETIMPORT                        R15 K210 [Enum.AssetType.EyelashAccessory]
      730 SETTABLE                         R15 R13 R14
      731 GETTABLEKS                       R14 R9 K248 ["UGC_BODY_PARTS"]
      733 GETTABLEKS                       R14 R14 K211 ["HairAccessory"]
      735 GETIMPORT                        R15 K212 [Enum.AssetType.HairAccessory]
      737 SETTABLE                         R15 R13 R14
      738 SETTABLEKS                       R13 R9 K251 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      740 NEWTABLE                         R13 2 0
      742 GETTABLEKS                       R14 R9 K250 ["UGC_BUNDLE_PARTS"]
      744 GETTABLEKS                       R14 R14 K213 ["LeftShoeAccessory"]
      746 GETIMPORT                        R15 K214 [Enum.AssetType.LeftShoeAccessory]
      748 SETTABLE                         R15 R13 R14
      749 GETTABLEKS                       R14 R9 K250 ["UGC_BUNDLE_PARTS"]
      751 GETTABLEKS                       R14 R14 K215 ["RightShoeAccessory"]
      753 GETIMPORT                        R15 K216 [Enum.AssetType.RightShoeAccessory]
      755 SETTABLE                         R15 R13 R14
      756 SETTABLEKS                       R13 R9 K252 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
      758 MOVE                             R13 R5
      759 CALL                             R13 0 1
      760 JUMPIFNOT                        R13 ; [+133]
      761 DUPTABLE                         R13 K253 [{["ClimbAnimation"] = "ClimbAnimation", ["FallAnimation"] = "FallAnimation", ["IdleAnimation"] = "IdleAnimation", ["JumpAnimation"] = "JumpAnimation", ["RunAnimation"] = "RunAnimation", ["SwimAnimation"] = "SwimAnimation", ["WalkAnimation"] = "WalkAnimation"}]
      762 SETTABLEKS                       R13 R9 K254 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      764 NEWTABLE                         R13 8 0
      766 GETTABLEKS                       R14 R9 K254 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      768 GETTABLEKS                       R14 R14 K218 ["ClimbAnimation"]
      770 GETIMPORT                        R15 K219 [Enum.AssetType.ClimbAnimation]
      772 SETTABLE                         R15 R13 R14
      773 GETTABLEKS                       R14 R9 K254 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      775 GETTABLEKS                       R14 R14 K220 ["FallAnimation"]
      777 GETIMPORT                        R15 K221 [Enum.AssetType.FallAnimation]
      779 SETTABLE                         R15 R13 R14
      780 GETTABLEKS                       R14 R9 K254 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      782 GETTABLEKS                       R14 R14 K222 ["IdleAnimation"]
      784 GETIMPORT                        R15 K223 [Enum.AssetType.IdleAnimation]
      786 SETTABLE                         R15 R13 R14
      787 GETTABLEKS                       R14 R9 K254 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      789 GETTABLEKS                       R14 R14 K224 ["JumpAnimation"]
      791 GETIMPORT                        R15 K225 [Enum.AssetType.JumpAnimation]
      793 SETTABLE                         R15 R13 R14
      794 GETTABLEKS                       R14 R9 K254 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      796 GETTABLEKS                       R14 R14 K226 ["RunAnimation"]
      798 GETIMPORT                        R15 K227 [Enum.AssetType.RunAnimation]
      800 SETTABLE                         R15 R13 R14
      801 GETTABLEKS                       R14 R9 K254 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      803 GETTABLEKS                       R14 R14 K228 ["SwimAnimation"]
      805 GETIMPORT                        R15 K229 [Enum.AssetType.SwimAnimation]
      807 SETTABLE                         R15 R13 R14
      808 GETTABLEKS                       R14 R9 K254 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      810 GETTABLEKS                       R14 R14 K230 ["WalkAnimation"]
      812 GETIMPORT                        R15 K231 [Enum.AssetType.WalkAnimation]
      814 SETTABLE                         R15 R13 R14
      815 SETTABLEKS                       R13 R9 K255 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
      817 DUPTABLE                         R13 K256 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      818 NEWTABLE                         R14 0 1
      820 LOADK                            R15 K257 ["climb"]
      821 SETLIST                          R14 R15 1 [1]
      823 SETTABLEKS                       R14 R13 K218 ["ClimbAnimation"]
      825 NEWTABLE                         R14 0 1
      827 LOADK                            R15 K258 ["fall"]
      828 SETLIST                          R14 R15 1 [1]
      830 SETTABLEKS                       R14 R13 K220 ["FallAnimation"]
      832 NEWTABLE                         R14 0 1
      834 LOADK                            R15 K259 ["idle"]
      835 SETLIST                          R14 R15 1 [1]
      837 SETTABLEKS                       R14 R13 K222 ["IdleAnimation"]
      839 NEWTABLE                         R14 0 1
      841 LOADK                            R15 K260 ["jump"]
      842 SETLIST                          R14 R15 1 [1]
      844 SETTABLEKS                       R14 R13 K224 ["JumpAnimation"]
      846 NEWTABLE                         R14 0 1
      848 LOADK                            R15 K261 ["run"]
      849 SETLIST                          R14 R15 1 [1]
      851 SETTABLEKS                       R14 R13 K226 ["RunAnimation"]
      853 NEWTABLE                         R14 0 2
      855 LOADK                            R15 K262 ["swim"]
      856 LOADK                            R16 K263 ["swimidle"]
      857 SETLIST                          R14 R15 2 [1]
      859 SETTABLEKS                       R14 R13 K228 ["SwimAnimation"]
      861 NEWTABLE                         R14 0 1
      863 LOADK                            R15 K264 ["walk"]
      864 SETLIST                          R14 R15 1 [1]
      866 SETTABLEKS                       R14 R13 K230 ["WalkAnimation"]
      868 SETTABLEKS                       R13 R9 K265 ["AVATAR_ANIMATION_SUB_NAMES"]
      870 DUPTABLE                         R13 K256 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      871 DUPTABLE                         R14 K267 [{["climb"] = "ClimbAnim"}]
      872 SETTABLEKS                       R14 R13 K218 ["ClimbAnimation"]
      874 DUPTABLE                         R14 K269 [{["fall"] = "FallAnim"}]
      875 SETTABLEKS                       R14 R13 K220 ["FallAnimation"]
      877 DUPTABLE                         R14 K271 [{["idle"] = }]
      878 SETTABLEKS                       R14 R13 K222 ["IdleAnimation"]
      880 DUPTABLE                         R14 K273 [{["jump"] = "JumpAnim"}]
      881 SETTABLEKS                       R14 R13 K224 ["JumpAnimation"]
      883 DUPTABLE                         R14 K275 [{["run"] = "RunAnim"}]
      884 SETTABLEKS                       R14 R13 K226 ["RunAnimation"]
      886 DUPTABLE                         R14 K278 [{["swim"] = "SwimAnim", ["swimidle"] = "SwimIdleAnim"}]
      887 SETTABLEKS                       R14 R13 K228 ["SwimAnimation"]
      889 DUPTABLE                         R14 K280 [{["walk"] = "WalkAnim"}]
      890 SETTABLEKS                       R14 R13 K230 ["WalkAnimation"]
      892 SETTABLEKS                       R13 R9 K281 ["AVATAR_ANIMATION_INSTANCE_NAMES"]
      894 MOVE                             R13 R3
      895 CALL                             R13 0 1
      896 JUMPIFNOT                        R13 ; [+18]
      897 DUPTABLE                         R13 K285 [{["Classic"] = "Classic", ["ProportionsNormal"] = "ProportionsNormal", ["ProportionsSlender"] = "ProportionsSlender", ["Unknown"] = "Unknown"}]
      898 SETTABLEKS                       R13 R9 K286 ["BodyScaleTypes"]
      900 DUPTABLE                         R13 K287 [{"Classic", "ProportionsNormal", "ProportionsSlender"}]
      901 DUPTABLE                         R14 K295 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 0}]
      902 SETTABLEKS                       R14 R13 K282 ["Classic"]
      904 DUPTABLE                         R14 K296 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 1}]
      905 SETTABLEKS                       R14 R13 K283 ["ProportionsNormal"]
      907 DUPTABLE                         R14 K297 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 1, ["bodyType"] = 1}]
      908 SETTABLEKS                       R14 R13 K284 ["ProportionsSlender"]
      910 SETTABLEKS                       R13 R9 K298 ["BodyScaleDefaults"]
      912 DUPTABLE                         R13 K304 [{["height"] = "BodyHeightScale", ["width"] = "BodyWidthScale", ["head"] = "HeadScale", ["bodyType"] = "BodyTypeScale", ["proportion"] = "BodyProportionScale"}]
      913 SETTABLEKS                       R13 R9 K305 ["bodyScaleNameToString"]
      915 DUPTABLE                         R13 K315 [{["NONE"] = "None", ["BEGIN"] = "Begin", ["VALIDATING"] = "Validating", ["SUCCESS"] = "Success", ["FAILURE"] = "Failure"}]
      916 SETTABLEKS                       R13 R9 K316 ["VALIDATION_STATE"]
      918 MOVE                             R13 R4
      919 CALL                             R13 0 1
      920 JUMPIFNOT                        R13 ; [+8]
      921 NEWTABLE                         R13 0 2
      923 LOADK                            R14 K317 ["rbxassetid://"]
      924 LOADK                            R15 K318 ["https://assetdelivery"]
      925 SETLIST                          R13 R14 2 [1]
      927 SETTABLEKS                       R13 R9 K319 ["assetIdStringPatterns"]
      929 NEWTABLE                         R13 0 10
      931 GETIMPORT                        R14 K196 [Enum.AssetType.DynamicHead]
      933 GETIMPORT                        R15 K208 [Enum.AssetType.EyebrowAccessory]
      935 GETIMPORT                        R16 K210 [Enum.AssetType.EyelashAccessory]
      937 GETIMPORT                        R17 K198 [Enum.AssetType.LeftArm]
      939 GETIMPORT                        R18 K200 [Enum.AssetType.LeftLeg]
      941 GETIMPORT                        R19 K214 [Enum.AssetType.LeftShoeAccessory]
      943 GETIMPORT                        R20 K202 [Enum.AssetType.RightArm]
      945 GETIMPORT                        R21 K204 [Enum.AssetType.RightLeg]
      947 GETIMPORT                        R22 K216 [Enum.AssetType.RightShoeAccessory]
      949 GETIMPORT                        R23 K206 [Enum.AssetType.Torso]
      951 SETLIST                          R13 R14 10 [1]
      953 SETTABLEKS                       R13 R9 K320 ["BODY_PARTS"]
      955 NEWTABLE                         R13 0 5
      957 GETIMPORT                        R14 K208 [Enum.AssetType.EyebrowAccessory]
      959 GETIMPORT                        R15 K210 [Enum.AssetType.EyelashAccessory]
      961 GETIMPORT                        R16 K322 [Enum.AssetType.FaceMakeup]
      963 GETIMPORT                        R17 K324 [Enum.AssetType.LipMakeup]
      965 GETIMPORT                        R18 K326 [Enum.AssetType.EyeMakeup]
      967 SETLIST                          R13 R14 5 [1]
      969 SETTABLEKS                       R13 R9 K327 ["MAKEUP_ASSET_TYPES"]
      971 NEWTABLE                         R13 0 20
      973 GETIMPORT                        R14 K329 [Enum.AssetType.Hat]
      975 GETIMPORT                        R15 K212 [Enum.AssetType.HairAccessory]
      977 GETIMPORT                        R16 K331 [Enum.AssetType.FaceAccessory]
      979 GETIMPORT                        R17 K333 [Enum.AssetType.NeckAccessory]
      981 GETIMPORT                        R18 K335 [Enum.AssetType.ShoulderAccessory]
      983 GETIMPORT                        R19 K337 [Enum.AssetType.FrontAccessory]
      985 GETIMPORT                        R20 K339 [Enum.AssetType.BackAccessory]
      987 GETIMPORT                        R21 K341 [Enum.AssetType.WaistAccessory]
      989 GETIMPORT                        R22 K343 [Enum.AssetType.TShirtAccessory]
      991 GETIMPORT                        R23 K345 [Enum.AssetType.ShirtAccessory]
      993 GETIMPORT                        R24 K347 [Enum.AssetType.PantsAccessory]
      995 GETIMPORT                        R25 K349 [Enum.AssetType.JacketAccessory]
      997 GETIMPORT                        R26 K351 [Enum.AssetType.SweaterAccessory]
      999 GETIMPORT                        R27 K353 [Enum.AssetType.ShortsAccessory]
     1001 GETIMPORT                        R28 K355 [Enum.AssetType.DressSkirtAccessory]
     1003 GETIMPORT                        R29 K208 [Enum.AssetType.EyebrowAccessory]
     1005 SETLIST                          R13 R14 16 [1]
     1007 GETIMPORT                        R14 K210 [Enum.AssetType.EyelashAccessory]
     1009 GETIMPORT                        R15 K322 [Enum.AssetType.FaceMakeup]
     1011 GETIMPORT                        R16 K324 [Enum.AssetType.LipMakeup]
     1013 GETIMPORT                        R17 K326 [Enum.AssetType.EyeMakeup]
     1015 SETLIST                          R13 R14 4 [17]
     1017 SETTABLEKS                       R13 R9 K356 ["AVATAR_ITEM_UPDATE_ASSET_TYPES"]
     1019 MOVE                             R13 R6
     1020 CALL                             R13 0 1
     1021 JUMPIFNOT                        R13 ; [+9]
     1022 GETTABLEKS                       R14 R9 K120 ["ASSET_TYPES_2D"]
     1024 GETIMPORT                        R15 K358 [Enum.AssetType.AvatarBackground]
     1026 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
     1028 GETIMPORT                        R13 K188 [table.insert]
     1030 CALL                             R13 2 0
     1031 RETURN                           R9 1
