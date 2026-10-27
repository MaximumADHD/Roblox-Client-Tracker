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
       33 GETTABLEKS                       R5 R5 K12 ["getFFlagEnableAvatarBackgroundCatalogAsset"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R0 K7 ["Src"]
       40 GETTABLEKS                       R6 R6 K11 ["Flags"]
       42 GETTABLEKS                       R6 R6 K13 ["getFFlagUsePublishMarketplaceActionType"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K7 ["Src"]
       49 GETTABLEKS                       R7 R7 K11 ["Flags"]
       51 GETTABLEKS                       R7 R7 K14 ["getFFlagToolboxRemoveLegacyCatalogUpload"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R2 K15 ["convertArrayToTable"]
       58 CALL                             R7 1 1
       59 NEWTABLE                         R8 64 0
       61 LOADN                            R9 1100
       62 SETTABLEKS                       R9 R8 K16 ["WIDTH"]
       64 LOADN                            R9 860
       65 SETTABLEKS                       R9 R8 K17 ["HEIGHT"]
       67 LOADN                            R9 900
       68 SETTABLEKS                       R9 R8 K18 ["MIN_WIDTH"]
       70 LOADN                            R9 500
       71 SETTABLEKS                       R9 R8 K19 ["MIN_HEIGHT"]
       73 LOADK                            R9 K20 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
       74 SETTABLEKS                       R9 R8 K21 ["TERM_OF_USE_URL"]
       76 LOADK                            R9 K22 ["https://www.roblox.com/my/account#!/info"]
       77 SETTABLEKS                       R9 R8 K23 ["ACCOUNT_SETTING_URL"]
       79 LOADN                            R9 50
       80 SETTABLEKS                       R9 R8 K24 ["NAME_CHARACTER_LIMIT"]
       82 LOADN                            R9 1000
       83 SETTABLEKS                       R9 R8 K25 ["DESCRIPTION_CHARACTER_LIMIT"]
       85 LOADN                            R9 500
       86 SETTABLEKS                       R9 R8 K26 ["PACKAGE_NOTE_CHARACTER_LIMIT"]
       88 LOADN                            R9 180
       89 SETTABLEKS                       R9 R8 K27 ["TITLE_GUTTER_WIDTH"]
       91 GETIMPORT                        R9 K30 [UDim2.new]
       93 LOADN                            R10 0
       94 LOADN                            R11 150
       95 LOADN                            R12 0
       96 LOADN                            R13 200
       97 CALL                             R9 4 1
       98 SETTABLEKS                       R9 R8 K31 ["OverrideAssetItemSize"]
      100 MOVE                             R9 R7
      101 NEWTABLE                         R10 0 3
      103 LOADK                            R11 K32 ["ImagePicker"]
      104 LOADK                            R12 K33 ["Thumbnail"]
      105 LOADK                            R13 K34 ["ModelPreview"]
      106 SETLIST                          R10 R11 3 [1]
      108 CALL                             R9 1 1
      109 SETTABLEKS                       R9 R8 K35 ["PreviewTypes"]
      111 MOVE                             R9 R7
      112 NEWTABLE                         R10 0 5
      114 LOADK                            R11 K36 ["Sales"]
      115 LOADK                            R12 K37 ["General"]
      116 LOADK                            R13 K38 ["Versions"]
      117 LOADK                            R14 K39 ["Override"]
      118 LOADK                            R15 K40 ["Permissions"]
      119 SETLIST                          R10 R11 5 [1]
      121 CALL                             R9 1 1
      122 SETTABLEKS                       R9 R8 K41 ["SIDE_TABS"]
      124 MOVE                             R9 R7
      125 NEWTABLE                         R10 0 3
      127 LOADK                            R11 K42 ["Title"]
      128 LOADK                            R12 K43 ["Description"]
      129 LOADK                            R13 K44 ["Price"]
      130 SETLIST                          R10 R11 3 [1]
      132 CALL                             R9 1 1
      133 SETTABLEKS                       R9 R8 K45 ["FIELD_NAMES"]
      135 NEWTABLE                         R9 0 14
      137 DUPTABLE                         R10 K47 [{"name"}]
      138 GETIMPORT                        R11 K51 [Enum.Genre.All]
      140 GETTABLEKS                       R11 R11 K52 ["Name"]
      142 SETTABLEKS                       R11 R10 K46 ["name"]
      144 DUPTABLE                         R11 K47 [{"name"}]
      145 GETIMPORT                        R12 K54 [Enum.Genre.TownAndCity]
      147 GETTABLEKS                       R12 R12 K52 ["Name"]
      149 SETTABLEKS                       R12 R11 K46 ["name"]
      151 DUPTABLE                         R12 K47 [{"name"}]
      152 GETIMPORT                        R13 K56 [Enum.Genre.Fantasy]
      154 GETTABLEKS                       R13 R13 K52 ["Name"]
      156 SETTABLEKS                       R13 R12 K46 ["name"]
      158 DUPTABLE                         R13 K47 [{"name"}]
      159 GETIMPORT                        R14 K58 [Enum.Genre.SciFi]
      161 GETTABLEKS                       R14 R14 K52 ["Name"]
      163 SETTABLEKS                       R14 R13 K46 ["name"]
      165 DUPTABLE                         R14 K47 [{"name"}]
      166 GETIMPORT                        R15 K60 [Enum.Genre.Ninja]
      168 GETTABLEKS                       R15 R15 K52 ["Name"]
      170 SETTABLEKS                       R15 R14 K46 ["name"]
      172 DUPTABLE                         R15 K47 [{"name"}]
      173 GETIMPORT                        R16 K62 [Enum.Genre.Scary]
      175 GETTABLEKS                       R16 R16 K52 ["Name"]
      177 SETTABLEKS                       R16 R15 K46 ["name"]
      179 DUPTABLE                         R16 K47 [{"name"}]
      180 GETIMPORT                        R17 K64 [Enum.Genre.Pirate]
      182 GETTABLEKS                       R17 R17 K52 ["Name"]
      184 SETTABLEKS                       R17 R16 K46 ["name"]
      186 DUPTABLE                         R17 K47 [{"name"}]
      187 GETIMPORT                        R18 K66 [Enum.Genre.Adventure]
      189 GETTABLEKS                       R18 R18 K52 ["Name"]
      191 SETTABLEKS                       R18 R17 K46 ["name"]
      193 DUPTABLE                         R18 K47 [{"name"}]
      194 GETIMPORT                        R19 K68 [Enum.Genre.Sports]
      196 GETTABLEKS                       R19 R19 K52 ["Name"]
      198 SETTABLEKS                       R19 R18 K46 ["name"]
      200 DUPTABLE                         R19 K47 [{"name"}]
      201 GETIMPORT                        R20 K70 [Enum.Genre.Funny]
      203 GETTABLEKS                       R20 R20 K52 ["Name"]
      205 SETTABLEKS                       R20 R19 K46 ["name"]
      207 DUPTABLE                         R20 K47 [{"name"}]
      208 GETIMPORT                        R21 K72 [Enum.Genre.WildWest]
      210 GETTABLEKS                       R21 R21 K52 ["Name"]
      212 SETTABLEKS                       R21 R20 K46 ["name"]
      214 DUPTABLE                         R21 K47 [{"name"}]
      215 GETIMPORT                        R22 K74 [Enum.Genre.War]
      217 GETTABLEKS                       R22 R22 K52 ["Name"]
      219 SETTABLEKS                       R22 R21 K46 ["name"]
      221 DUPTABLE                         R22 K47 [{"name"}]
      222 GETIMPORT                        R23 K76 [Enum.Genre.SkatePark]
      224 GETTABLEKS                       R23 R23 K52 ["Name"]
      226 SETTABLEKS                       R23 R22 K46 ["name"]
      228 DUPTABLE                         R23 K47 [{"name"}]
      229 GETIMPORT                        R24 K78 [Enum.Genre.Tutorial]
      231 GETTABLEKS                       R24 R24 K52 ["Name"]
      233 SETTABLEKS                       R24 R23 K46 ["name"]
      235 SETLIST                          R9 R10 14 [1]
      237 SETTABLEKS                       R9 R8 K79 ["GENRE_TYPE"]
      239 MOVE                             R9 R7
      240 NEWTABLE                         R10 0 3
      242 LOADK                            R11 K80 ["EDIT_FLOW"]
      243 LOADK                            R12 K81 ["UPLOAD_FLOW"]
      244 LOADK                            R13 K82 ["DOWNLOAD_FLOW"]
      245 SETLIST                          R10 R11 3 [1]
      247 CALL                             R9 1 1
      248 SETTABLEKS                       R9 R8 K83 ["FLOW_TYPE"]
      250 MOVE                             R9 R7
      251 NEWTABLE                         R10 0 4
      253 LOADK                            R11 K84 ["ASSET_TYPE_SELECTION"]
      254 LOADK                            R12 K85 ["CONFIGURE_ASSET"]
      255 LOADK                            R13 K86 ["UPLOADING_ASSET"]
      256 LOADK                            R14 K87 ["UPLOAD_ASSET_RESULT"]
      257 SETLIST                          R10 R11 4 [1]
      259 CALL                             R9 1 1
      260 SETTABLEKS                       R9 R8 K88 ["SCREENS"]
      262 MOVE                             R9 R7
      263 NEWTABLE                         R10 0 8
      265 LOADK                            R11 K89 ["Unknown"]
      266 LOADK                            R12 K90 ["ReviewPending"]
      267 LOADK                            R13 K91 ["Moderated"]
      268 LOADK                            R14 K92 ["ReviewApproved"]
      269 LOADK                            R15 K93 ["OnSale"]
      270 LOADK                            R16 K94 ["OffSale"]
      271 LOADK                            R17 K95 ["DelayedRelease"]
      272 LOADK                            R18 K96 ["Free"]
      273 SETLIST                          R10 R11 8 [1]
      275 CALL                             R9 1 1
      276 SETTABLEKS                       R9 R8 K97 ["ASSET_STATUS"]
      278 MOVE                             R9 R7
      279 NEWTABLE                         R10 0 10
      281 LOADK                            R11 K98 ["AssetType"]
      282 LOADK                            R12 K99 ["Authorization"]
      283 LOADK                            R13 K100 ["Invalid"]
      284 LOADK                            R14 K101 ["KillSwitch"]
      285 LOADK                            R15 K102 ["Quota"]
      286 LOADK                            R16 K103 ["SafetyStatus"]
      287 LOADK                            R17 K104 ["SellerAccountNotOnboarded"]
      288 LOADK                            R18 K105 ["SellerAccountRestricted"]
      289 LOADK                            R19 K106 ["UnsupportedAssetOwner"]
      290 LOADK                            R20 K107 ["Verification"]
      291 SETLIST                          R10 R11 10 [1]
      293 CALL                             R9 1 1
      294 SETTABLEKS                       R9 R8 K108 ["RESTRICTION_TYPE"]
      296 MOVE                             R9 R7
      297 NEWTABLE                         R10 0 1
      299 LOADK                            R11 K93 ["OnSale"]
      300 SETLIST                          R10 R11 1 [1]
      302 CALL                             R9 1 1
      303 SETTABLEKS                       R9 R8 K109 ["SALES_STATUS_FOR_PRICE"]
      305 DUPCLOSURE                       R9 K110 [PROTO_0]
      306 DUPCLOSURE                       R10 K111 [PROTO_1]
      307 NEWTABLE                         R11 0 0
      309 SETTABLEKS                       R11 R8 K112 ["ASSET_TYPE_INFO"]
      311 NEWTABLE                         R11 0 3
      313 GETIMPORT                        R12 K114 [Enum.AssetType.TShirt]
      315 GETIMPORT                        R13 K116 [Enum.AssetType.Shirt]
      317 GETIMPORT                        R14 K118 [Enum.AssetType.Pants]
      319 SETLIST                          R11 R12 3 [1]
      321 SETTABLEKS                       R11 R8 K119 ["ASSET_TYPES_2D"]
      323 DUPCLOSURE                       R11 K120 [PROTO_3]
      324 CAPTURE                          VAL R8
      325 CAPTURE                          VAL R5
      326 SETTABLEKS                       R11 R8 K121 ["populateAssetTypeInfoFromNetwork"]
      328 DUPCLOSURE                       R11 K122 [PROTO_4]
      329 SETTABLEKS                       R11 R8 K123 ["getNormalizedAssetString"]
      331 MOVE                             R11 R7
      332 NEWTABLE                         R12 0 3
      334 LOADK                            R13 K124 ["WhitelistedPlugins"]
      335 LOADK                            R14 K125 ["MyPlugins"]
      336 LOADK                            R15 K126 ["GroupPlugins"]
      337 SETLIST                          R12 R13 3 [1]
      339 CALL                             R11 1 1
      340 SETTABLEKS                       R11 R8 K127 ["developCategoryType"]
      342 MOVE                             R11 R7
      343 NEWTABLE                         R12 0 2
      345 LOADK                            R13 K128 ["MyPackages"]
      346 LOADK                            R14 K129 ["GroupPackages"]
      347 SETLIST                          R12 R13 2 [1]
      349 CALL                             R11 1 1
      350 SETTABLEKS                       R11 R8 K130 ["packagesCategoryType"]
      352 MOVE                             R11 R7
      353 NEWTABLE                         R12 0 9
      355 LOADK                            R13 K131 ["Asset"]
      356 LOADK                            R14 K132 ["Avatar"]
      357 LOADK                            R15 K133 ["AvatarHeadShot"]
      358 LOADK                            R16 K134 ["BadgeIcon"]
      359 LOADK                            R17 K135 ["BundleThumbnail"]
      360 LOADK                            R18 K136 ["GameIcon"]
      361 LOADK                            R19 K137 ["GamePass"]
      362 LOADK                            R20 K138 ["GroupIcon"]
      363 LOADK                            R21 K139 ["Outfit"]
      364 SETLIST                          R12 R13 9 [1]
      366 CALL                             R11 1 1
      367 SETTABLEKS                       R11 R8 K140 ["rbxThumbTypes"]
      369 DUPTABLE                         R11 K147 [{["AvatarHeadshotImageSize"] = 60, ["GroupIconImageSize"] = 150, ["AssetThumbnailSize"] = 420}]
      370 SETTABLEKS                       R11 R8 K148 ["rbxThumbSizes"]
      372 DUPTABLE                         R11 K159 [{["MaxThumbnails"] = 5, ["AspectRatioHeight"] = 9, ["AspectRatioWidth"] = 16, ["RecommendedHeight"] = 432, ["RecommendedWidth"] = 768}]
      373 SETTABLEKS                       R11 R8 K160 ["additionalImages"]
      375 NEWTABLE                         R11 0 3
      377 LOADK                            R12 K161 ["jpg"]
      378 LOADK                            R13 K162 ["jpeg"]
      379 LOADK                            R14 K163 ["png"]
      380 SETLIST                          R11 R12 3 [1]
      382 SETTABLEKS                       R11 R8 K164 ["IMAGE_TYPES"]
      384 LOADK                            R11 K165 ["Success"]
      385 SETTABLEKS                       R11 R8 K166 ["TAGS_SUGGESTION_SUCCESS"]
      387 LOADN                            R11 5
      388 SETTABLEKS                       R11 R8 K167 ["MAX_DISPLAY_SUGGESTIONS"]
      390 LOADN                            R11 10
      391 SETTABLEKS                       R11 R8 K168 ["MAX_FETCH_SUGGESTIONS"]
      393 MOVE                             R11 R6
      394 CALL                             R11 0 1
      395 JUMPIF                           R11 ; [+6]
      396 LOADK                            R11 K169 ["avatar_meshpart_accessory"]
      397 SETTABLEKS                       R11 R8 K170 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
      399 LOADK                            R11 K171 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
      400 SETTABLEKS                       R11 R8 K172 ["MULTIPART_FORM_BOUNDARY"]
      402 LOADK                            R11 K173 ["OverrideAssetId"]
      403 SETTABLEKS                       R11 R8 K174 ["OVERRIDE_ASSET_ID"]
      405 DUPTABLE                         R11 K179 [{["Public"] = True, ["Private"] = False}]
      406 SETTABLEKS                       R11 R8 K180 ["SHARING_KEYS"]
      408 NEWTABLE                         R11 0 4
      410 LOADK                            R12 K181 ["Body"]
      411 LOADK                            R13 K182 ["DynamicHead"]
      412 LOADK                            R14 K183 ["Shoes"]
      413 LOADK                            R15 K184 ["AvatarAnimations"]
      414 SETLIST                          R11 R12 4 [1]
      416 NEWTABLE                         R12 0 0
      418 SETTABLEKS                       R12 R8 K185 ["UGCBundleTypes"]
      420 GETIMPORT                        R12 K187 [ipairs]
      422 MOVE                             R13 R11
      423 CALL                             R12 1 3
      424 FORGPREP_INEXT                   R12
      425 DUPTABLE                         R17 K189 [{"Name", "Value"}]
      426 SETTABLEKS                       R16 R17 K52 ["Name"]
      428 SETTABLEKS                       R15 R17 K188 ["Value"]
      430 GETTABLEKS                       R18 R8 K185 ["UGCBundleTypes"]
      432 SETTABLE                         R17 R18 R16
      433 NEWCLOSURE                       R18 P4
      434 CAPTURE                          VAL R17
      435 SETTABLEKS                       R18 R17 K190 ["rawValue"]
      437 FORGLOOP                         R12 2 [inext] ; [-13]
      439 NEWTABLE                         R12 4 0
      441 GETTABLEKS                       R13 R8 K185 ["UGCBundleTypes"]
      443 GETTABLEKS                       R13 R13 K181 ["Body"]
      445 GETTABLEKS                       R13 R13 K190 ["rawValue"]
      447 CALL                             R13 0 1
      448 GETTABLEKS                       R14 R8 K185 ["UGCBundleTypes"]
      450 GETTABLEKS                       R14 R14 K181 ["Body"]
      452 SETTABLE                         R14 R12 R13
      453 GETTABLEKS                       R13 R8 K185 ["UGCBundleTypes"]
      455 GETTABLEKS                       R13 R13 K182 ["DynamicHead"]
      457 GETTABLEKS                       R13 R13 K190 ["rawValue"]
      459 CALL                             R13 0 1
      460 GETTABLEKS                       R14 R8 K185 ["UGCBundleTypes"]
      462 GETTABLEKS                       R14 R14 K182 ["DynamicHead"]
      464 SETTABLE                         R14 R12 R13
      465 GETTABLEKS                       R13 R8 K185 ["UGCBundleTypes"]
      467 GETTABLEKS                       R13 R13 K183 ["Shoes"]
      469 GETTABLEKS                       R13 R13 K190 ["rawValue"]
      471 CALL                             R13 0 1
      472 GETTABLEKS                       R14 R8 K185 ["UGCBundleTypes"]
      474 GETTABLEKS                       R14 R14 K183 ["Shoes"]
      476 SETTABLE                         R14 R12 R13
      477 GETTABLEKS                       R13 R8 K185 ["UGCBundleTypes"]
      479 GETTABLEKS                       R13 R13 K184 ["AvatarAnimations"]
      481 GETTABLEKS                       R13 R13 K190 ["rawValue"]
      483 CALL                             R13 0 1
      484 GETTABLEKS                       R14 R8 K185 ["UGCBundleTypes"]
      486 GETTABLEKS                       R14 R14 K184 ["AvatarAnimations"]
      488 SETTABLE                         R14 R12 R13
      489 SETTABLEKS                       R12 R8 K191 ["UGCBundleTypeStringToEnumeration"]
      491 NEWTABLE                         R12 32 0
      493 GETIMPORT                        R13 K192 [Enum.AssetType.DynamicHead]
      495 SETTABLEKS                       R13 R12 K182 ["DynamicHead"]
      497 GETIMPORT                        R13 K194 [Enum.AssetType.LeftArm]
      499 SETTABLEKS                       R13 R12 K193 ["LeftArm"]
      501 GETIMPORT                        R13 K196 [Enum.AssetType.LeftLeg]
      503 SETTABLEKS                       R13 R12 K195 ["LeftLeg"]
      505 GETIMPORT                        R13 K198 [Enum.AssetType.RightArm]
      507 SETTABLEKS                       R13 R12 K197 ["RightArm"]
      509 GETIMPORT                        R13 K200 [Enum.AssetType.RightLeg]
      511 SETTABLEKS                       R13 R12 K199 ["RightLeg"]
      513 GETIMPORT                        R13 K202 [Enum.AssetType.Torso]
      515 SETTABLEKS                       R13 R12 K201 ["Torso"]
      517 GETIMPORT                        R13 K204 [Enum.AssetType.EyebrowAccessory]
      519 SETTABLEKS                       R13 R12 K203 ["EyebrowAccessory"]
      521 GETIMPORT                        R13 K206 [Enum.AssetType.EyelashAccessory]
      523 SETTABLEKS                       R13 R12 K205 ["EyelashAccessory"]
      525 GETIMPORT                        R13 K208 [Enum.AssetType.HairAccessory]
      527 SETTABLEKS                       R13 R12 K207 ["HairAccessory"]
      529 GETIMPORT                        R13 K210 [Enum.AssetType.LeftShoeAccessory]
      531 SETTABLEKS                       R13 R12 K209 ["LeftShoeAccessory"]
      533 GETIMPORT                        R13 K212 [Enum.AssetType.RightShoeAccessory]
      535 SETTABLEKS                       R13 R12 K211 ["RightShoeAccessory"]
      537 GETIMPORT                        R13 K214 [Enum.AssetType.ClimbAnimation]
      539 SETTABLEKS                       R13 R12 K213 ["ClimbAnimation"]
      541 GETIMPORT                        R13 K216 [Enum.AssetType.FallAnimation]
      543 SETTABLEKS                       R13 R12 K215 ["FallAnimation"]
      545 GETIMPORT                        R13 K218 [Enum.AssetType.IdleAnimation]
      547 SETTABLEKS                       R13 R12 K217 ["IdleAnimation"]
      549 GETIMPORT                        R13 K220 [Enum.AssetType.JumpAnimation]
      551 SETTABLEKS                       R13 R12 K219 ["JumpAnimation"]
      553 GETIMPORT                        R13 K222 [Enum.AssetType.RunAnimation]
      555 SETTABLEKS                       R13 R12 K221 ["RunAnimation"]
      557 GETIMPORT                        R13 K224 [Enum.AssetType.SwimAnimation]
      559 SETTABLEKS                       R13 R12 K223 ["SwimAnimation"]
      561 GETIMPORT                        R13 K226 [Enum.AssetType.WalkAnimation]
      563 SETTABLEKS                       R13 R12 K225 ["WalkAnimation"]
      565 SETTABLEKS                       R12 R8 K227 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      567 DUPTABLE                         R12 K243 [{["Head"] = "Head", ["UpperTorso"] = "UpperTorso", ["LowerTorso"] = "LowerTorso", ["LeftUpperLeg"] = "LeftUpperLeg", ["LeftLowerLeg"] = "LeftLowerLeg", ["LeftHand"] = "LeftHand", ["RightUpperArm"] = "RightUpperArm", ["RightLowerArm"] = "RightLowerArm", ["RightHand"] = "RightHand", ["LeftUpperArm"] = "LeftUpperArm", ["LeftLowerArm"] = "LeftLowerArm", ["LeftFoot"] = "LeftFoot", ["RightUpperLeg"] = "RightUpperLeg", ["RightLowerLeg"] = "RightLowerLeg", ["RightFoot"] = "RightFoot", ["EyebrowAccessory"] = "EyebrowAccessory", ["EyelashAccessory"] = "EyelashAccessory", ["HairAccessory"] = "HairAccessory"}]
      568 SETTABLEKS                       R12 R8 K244 ["UGC_BODY_PARTS"]
      570 DUPTABLE                         R12 K245 [{["LeftShoeAccessory"] = "LeftShoeAccessory", ["RightShoeAccessory"] = "RightShoeAccessory"}]
      571 SETTABLEKS                       R12 R8 K246 ["UGC_BUNDLE_PARTS"]
      573 NEWTABLE                         R12 32 0
      575 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      577 GETTABLEKS                       R13 R13 K228 ["Head"]
      579 GETIMPORT                        R14 K192 [Enum.AssetType.DynamicHead]
      581 SETTABLE                         R14 R12 R13
      582 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      584 GETTABLEKS                       R13 R13 K229 ["UpperTorso"]
      586 GETIMPORT                        R14 K202 [Enum.AssetType.Torso]
      588 SETTABLE                         R14 R12 R13
      589 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      591 GETTABLEKS                       R13 R13 K230 ["LowerTorso"]
      593 GETIMPORT                        R14 K202 [Enum.AssetType.Torso]
      595 SETTABLE                         R14 R12 R13
      596 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      598 GETTABLEKS                       R13 R13 K237 ["LeftUpperArm"]
      600 GETIMPORT                        R14 K194 [Enum.AssetType.LeftArm]
      602 SETTABLE                         R14 R12 R13
      603 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      605 GETTABLEKS                       R13 R13 K238 ["LeftLowerArm"]
      607 GETIMPORT                        R14 K194 [Enum.AssetType.LeftArm]
      609 SETTABLE                         R14 R12 R13
      610 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      612 GETTABLEKS                       R13 R13 K233 ["LeftHand"]
      614 GETIMPORT                        R14 K194 [Enum.AssetType.LeftArm]
      616 SETTABLE                         R14 R12 R13
      617 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      619 GETTABLEKS                       R13 R13 K234 ["RightUpperArm"]
      621 GETIMPORT                        R14 K198 [Enum.AssetType.RightArm]
      623 SETTABLE                         R14 R12 R13
      624 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      626 GETTABLEKS                       R13 R13 K235 ["RightLowerArm"]
      628 GETIMPORT                        R14 K198 [Enum.AssetType.RightArm]
      630 SETTABLE                         R14 R12 R13
      631 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      633 GETTABLEKS                       R13 R13 K236 ["RightHand"]
      635 GETIMPORT                        R14 K198 [Enum.AssetType.RightArm]
      637 SETTABLE                         R14 R12 R13
      638 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      640 GETTABLEKS                       R13 R13 K231 ["LeftUpperLeg"]
      642 GETIMPORT                        R14 K196 [Enum.AssetType.LeftLeg]
      644 SETTABLE                         R14 R12 R13
      645 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      647 GETTABLEKS                       R13 R13 K232 ["LeftLowerLeg"]
      649 GETIMPORT                        R14 K196 [Enum.AssetType.LeftLeg]
      651 SETTABLE                         R14 R12 R13
      652 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      654 GETTABLEKS                       R13 R13 K239 ["LeftFoot"]
      656 GETIMPORT                        R14 K196 [Enum.AssetType.LeftLeg]
      658 SETTABLE                         R14 R12 R13
      659 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      661 GETTABLEKS                       R13 R13 K240 ["RightUpperLeg"]
      663 GETIMPORT                        R14 K200 [Enum.AssetType.RightLeg]
      665 SETTABLE                         R14 R12 R13
      666 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      668 GETTABLEKS                       R13 R13 K241 ["RightLowerLeg"]
      670 GETIMPORT                        R14 K200 [Enum.AssetType.RightLeg]
      672 SETTABLE                         R14 R12 R13
      673 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      675 GETTABLEKS                       R13 R13 K242 ["RightFoot"]
      677 GETIMPORT                        R14 K200 [Enum.AssetType.RightLeg]
      679 SETTABLE                         R14 R12 R13
      680 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      682 GETTABLEKS                       R13 R13 K203 ["EyebrowAccessory"]
      684 GETIMPORT                        R14 K204 [Enum.AssetType.EyebrowAccessory]
      686 SETTABLE                         R14 R12 R13
      687 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      689 GETTABLEKS                       R13 R13 K205 ["EyelashAccessory"]
      691 GETIMPORT                        R14 K206 [Enum.AssetType.EyelashAccessory]
      693 SETTABLE                         R14 R12 R13
      694 GETTABLEKS                       R13 R8 K244 ["UGC_BODY_PARTS"]
      696 GETTABLEKS                       R13 R13 K207 ["HairAccessory"]
      698 GETIMPORT                        R14 K208 [Enum.AssetType.HairAccessory]
      700 SETTABLE                         R14 R12 R13
      701 SETTABLEKS                       R12 R8 K247 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      703 NEWTABLE                         R12 2 0
      705 GETTABLEKS                       R13 R8 K246 ["UGC_BUNDLE_PARTS"]
      707 GETTABLEKS                       R13 R13 K209 ["LeftShoeAccessory"]
      709 GETIMPORT                        R14 K210 [Enum.AssetType.LeftShoeAccessory]
      711 SETTABLE                         R14 R12 R13
      712 GETTABLEKS                       R13 R8 K246 ["UGC_BUNDLE_PARTS"]
      714 GETTABLEKS                       R13 R13 K211 ["RightShoeAccessory"]
      716 GETIMPORT                        R14 K212 [Enum.AssetType.RightShoeAccessory]
      718 SETTABLE                         R14 R12 R13
      719 SETTABLEKS                       R12 R8 K248 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
      721 DUPTABLE                         R12 K249 [{["ClimbAnimation"] = "ClimbAnimation", ["FallAnimation"] = "FallAnimation", ["IdleAnimation"] = "IdleAnimation", ["JumpAnimation"] = "JumpAnimation", ["RunAnimation"] = "RunAnimation", ["SwimAnimation"] = "SwimAnimation", ["WalkAnimation"] = "WalkAnimation"}]
      722 SETTABLEKS                       R12 R8 K250 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      724 NEWTABLE                         R12 8 0
      726 GETTABLEKS                       R13 R8 K250 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      728 GETTABLEKS                       R13 R13 K213 ["ClimbAnimation"]
      730 GETIMPORT                        R14 K214 [Enum.AssetType.ClimbAnimation]
      732 SETTABLE                         R14 R12 R13
      733 GETTABLEKS                       R13 R8 K250 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      735 GETTABLEKS                       R13 R13 K215 ["FallAnimation"]
      737 GETIMPORT                        R14 K216 [Enum.AssetType.FallAnimation]
      739 SETTABLE                         R14 R12 R13
      740 GETTABLEKS                       R13 R8 K250 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      742 GETTABLEKS                       R13 R13 K217 ["IdleAnimation"]
      744 GETIMPORT                        R14 K218 [Enum.AssetType.IdleAnimation]
      746 SETTABLE                         R14 R12 R13
      747 GETTABLEKS                       R13 R8 K250 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      749 GETTABLEKS                       R13 R13 K219 ["JumpAnimation"]
      751 GETIMPORT                        R14 K220 [Enum.AssetType.JumpAnimation]
      753 SETTABLE                         R14 R12 R13
      754 GETTABLEKS                       R13 R8 K250 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      756 GETTABLEKS                       R13 R13 K221 ["RunAnimation"]
      758 GETIMPORT                        R14 K222 [Enum.AssetType.RunAnimation]
      760 SETTABLE                         R14 R12 R13
      761 GETTABLEKS                       R13 R8 K250 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      763 GETTABLEKS                       R13 R13 K223 ["SwimAnimation"]
      765 GETIMPORT                        R14 K224 [Enum.AssetType.SwimAnimation]
      767 SETTABLE                         R14 R12 R13
      768 GETTABLEKS                       R13 R8 K250 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      770 GETTABLEKS                       R13 R13 K225 ["WalkAnimation"]
      772 GETIMPORT                        R14 K226 [Enum.AssetType.WalkAnimation]
      774 SETTABLE                         R14 R12 R13
      775 SETTABLEKS                       R12 R8 K251 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
      777 DUPTABLE                         R12 K252 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      778 NEWTABLE                         R13 0 1
      780 LOADK                            R14 K253 ["climb"]
      781 SETLIST                          R13 R14 1 [1]
      783 SETTABLEKS                       R13 R12 K213 ["ClimbAnimation"]
      785 NEWTABLE                         R13 0 1
      787 LOADK                            R14 K254 ["fall"]
      788 SETLIST                          R13 R14 1 [1]
      790 SETTABLEKS                       R13 R12 K215 ["FallAnimation"]
      792 NEWTABLE                         R13 0 1
      794 LOADK                            R14 K255 ["idle"]
      795 SETLIST                          R13 R14 1 [1]
      797 SETTABLEKS                       R13 R12 K217 ["IdleAnimation"]
      799 NEWTABLE                         R13 0 1
      801 LOADK                            R14 K256 ["jump"]
      802 SETLIST                          R13 R14 1 [1]
      804 SETTABLEKS                       R13 R12 K219 ["JumpAnimation"]
      806 NEWTABLE                         R13 0 1
      808 LOADK                            R14 K257 ["run"]
      809 SETLIST                          R13 R14 1 [1]
      811 SETTABLEKS                       R13 R12 K221 ["RunAnimation"]
      813 NEWTABLE                         R13 0 2
      815 LOADK                            R14 K258 ["swim"]
      816 LOADK                            R15 K259 ["swimidle"]
      817 SETLIST                          R13 R14 2 [1]
      819 SETTABLEKS                       R13 R12 K223 ["SwimAnimation"]
      821 NEWTABLE                         R13 0 1
      823 LOADK                            R14 K260 ["walk"]
      824 SETLIST                          R13 R14 1 [1]
      826 SETTABLEKS                       R13 R12 K225 ["WalkAnimation"]
      828 SETTABLEKS                       R12 R8 K261 ["AVATAR_ANIMATION_SUB_NAMES"]
      830 DUPTABLE                         R12 K252 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      831 DUPTABLE                         R13 K263 [{["climb"] = "ClimbAnim"}]
      832 SETTABLEKS                       R13 R12 K213 ["ClimbAnimation"]
      834 DUPTABLE                         R13 K265 [{["fall"] = "FallAnim"}]
      835 SETTABLEKS                       R13 R12 K215 ["FallAnimation"]
      837 DUPTABLE                         R13 K267 [{["idle"] = }]
      838 SETTABLEKS                       R13 R12 K217 ["IdleAnimation"]
      840 DUPTABLE                         R13 K269 [{["jump"] = "JumpAnim"}]
      841 SETTABLEKS                       R13 R12 K219 ["JumpAnimation"]
      843 DUPTABLE                         R13 K271 [{["run"] = "RunAnim"}]
      844 SETTABLEKS                       R13 R12 K221 ["RunAnimation"]
      846 DUPTABLE                         R13 K274 [{["swim"] = "SwimAnim", ["swimidle"] = "SwimIdleAnim"}]
      847 SETTABLEKS                       R13 R12 K223 ["SwimAnimation"]
      849 DUPTABLE                         R13 K276 [{["walk"] = "WalkAnim"}]
      850 SETTABLEKS                       R13 R12 K225 ["WalkAnimation"]
      852 SETTABLEKS                       R12 R8 K277 ["AVATAR_ANIMATION_INSTANCE_NAMES"]
      854 MOVE                             R12 R3
      855 CALL                             R12 0 1
      856 JUMPIFNOT                        R12 ; [+18]
      857 DUPTABLE                         R12 K281 [{["Classic"] = "Classic", ["ProportionsNormal"] = "ProportionsNormal", ["ProportionsSlender"] = "ProportionsSlender", ["Unknown"] = "Unknown"}]
      858 SETTABLEKS                       R12 R8 K282 ["BodyScaleTypes"]
      860 DUPTABLE                         R12 K283 [{"Classic", "ProportionsNormal", "ProportionsSlender"}]
      861 DUPTABLE                         R13 K291 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 0}]
      862 SETTABLEKS                       R13 R12 K278 ["Classic"]
      864 DUPTABLE                         R13 K292 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 1}]
      865 SETTABLEKS                       R13 R12 K279 ["ProportionsNormal"]
      867 DUPTABLE                         R13 K293 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 1, ["bodyType"] = 1}]
      868 SETTABLEKS                       R13 R12 K280 ["ProportionsSlender"]
      870 SETTABLEKS                       R12 R8 K294 ["BodyScaleDefaults"]
      872 DUPTABLE                         R12 K300 [{["height"] = "BodyHeightScale", ["width"] = "BodyWidthScale", ["head"] = "HeadScale", ["bodyType"] = "BodyTypeScale", ["proportion"] = "BodyProportionScale"}]
      873 SETTABLEKS                       R12 R8 K301 ["bodyScaleNameToString"]
      875 DUPTABLE                         R12 K311 [{["NONE"] = "None", ["BEGIN"] = "Begin", ["VALIDATING"] = "Validating", ["SUCCESS"] = "Success", ["FAILURE"] = "Failure"}]
      876 SETTABLEKS                       R12 R8 K312 ["VALIDATION_STATE"]
      878 NEWTABLE                         R12 0 2
      880 LOADK                            R13 K313 ["rbxassetid://"]
      881 LOADK                            R14 K314 ["https://assetdelivery"]
      882 SETLIST                          R12 R13 2 [1]
      884 SETTABLEKS                       R12 R8 K315 ["assetIdStringPatterns"]
      886 NEWTABLE                         R12 0 10
      888 GETIMPORT                        R13 K192 [Enum.AssetType.DynamicHead]
      890 GETIMPORT                        R14 K204 [Enum.AssetType.EyebrowAccessory]
      892 GETIMPORT                        R15 K206 [Enum.AssetType.EyelashAccessory]
      894 GETIMPORT                        R16 K194 [Enum.AssetType.LeftArm]
      896 GETIMPORT                        R17 K196 [Enum.AssetType.LeftLeg]
      898 GETIMPORT                        R18 K210 [Enum.AssetType.LeftShoeAccessory]
      900 GETIMPORT                        R19 K198 [Enum.AssetType.RightArm]
      902 GETIMPORT                        R20 K200 [Enum.AssetType.RightLeg]
      904 GETIMPORT                        R21 K212 [Enum.AssetType.RightShoeAccessory]
      906 GETIMPORT                        R22 K202 [Enum.AssetType.Torso]
      908 SETLIST                          R12 R13 10 [1]
      910 SETTABLEKS                       R12 R8 K316 ["BODY_PARTS"]
      912 NEWTABLE                         R12 0 9
      914 GETIMPORT                        R13 K192 [Enum.AssetType.DynamicHead]
      916 GETIMPORT                        R14 K202 [Enum.AssetType.Torso]
      918 GETIMPORT                        R15 K194 [Enum.AssetType.LeftArm]
      920 GETIMPORT                        R16 K198 [Enum.AssetType.RightArm]
      922 GETIMPORT                        R17 K196 [Enum.AssetType.LeftLeg]
      924 GETIMPORT                        R18 K200 [Enum.AssetType.RightLeg]
      926 GETIMPORT                        R19 K208 [Enum.AssetType.HairAccessory]
      928 GETIMPORT                        R20 K204 [Enum.AssetType.EyebrowAccessory]
      930 GETIMPORT                        R21 K206 [Enum.AssetType.EyelashAccessory]
      932 SETLIST                          R12 R13 9 [1]
      934 SETTABLEKS                       R12 R8 K317 ["VAAS_SORTED_ASSET_TYPES"]
      936 NEWTABLE                         R12 0 7
      938 GETIMPORT                        R13 K214 [Enum.AssetType.ClimbAnimation]
      940 GETIMPORT                        R14 K216 [Enum.AssetType.FallAnimation]
      942 GETIMPORT                        R15 K218 [Enum.AssetType.IdleAnimation]
      944 GETIMPORT                        R16 K220 [Enum.AssetType.JumpAnimation]
      946 GETIMPORT                        R17 K222 [Enum.AssetType.RunAnimation]
      948 GETIMPORT                        R18 K224 [Enum.AssetType.SwimAnimation]
      950 GETIMPORT                        R19 K226 [Enum.AssetType.WalkAnimation]
      952 SETLIST                          R12 R13 7 [1]
      954 SETTABLEKS                       R12 R8 K318 ["ANIMATION_ASSET_TYPES_IN_DISPLAY_ORDER"]
      956 NEWTABLE                         R12 0 5
      958 GETIMPORT                        R13 K204 [Enum.AssetType.EyebrowAccessory]
      960 GETIMPORT                        R14 K206 [Enum.AssetType.EyelashAccessory]
      962 GETIMPORT                        R15 K320 [Enum.AssetType.FaceMakeup]
      964 GETIMPORT                        R16 K322 [Enum.AssetType.LipMakeup]
      966 GETIMPORT                        R17 K324 [Enum.AssetType.EyeMakeup]
      968 SETLIST                          R12 R13 5 [1]
      970 SETTABLEKS                       R12 R8 K325 ["MAKEUP_ASSET_TYPES"]
      972 NEWTABLE                         R12 0 20
      974 GETIMPORT                        R13 K327 [Enum.AssetType.Hat]
      976 GETIMPORT                        R14 K208 [Enum.AssetType.HairAccessory]
      978 GETIMPORT                        R15 K329 [Enum.AssetType.FaceAccessory]
      980 GETIMPORT                        R16 K331 [Enum.AssetType.NeckAccessory]
      982 GETIMPORT                        R17 K333 [Enum.AssetType.ShoulderAccessory]
      984 GETIMPORT                        R18 K335 [Enum.AssetType.FrontAccessory]
      986 GETIMPORT                        R19 K337 [Enum.AssetType.BackAccessory]
      988 GETIMPORT                        R20 K339 [Enum.AssetType.WaistAccessory]
      990 GETIMPORT                        R21 K341 [Enum.AssetType.TShirtAccessory]
      992 GETIMPORT                        R22 K343 [Enum.AssetType.ShirtAccessory]
      994 GETIMPORT                        R23 K345 [Enum.AssetType.PantsAccessory]
      996 GETIMPORT                        R24 K347 [Enum.AssetType.JacketAccessory]
      998 GETIMPORT                        R25 K349 [Enum.AssetType.SweaterAccessory]
     1000 GETIMPORT                        R26 K351 [Enum.AssetType.ShortsAccessory]
     1002 GETIMPORT                        R27 K353 [Enum.AssetType.DressSkirtAccessory]
     1004 GETIMPORT                        R28 K204 [Enum.AssetType.EyebrowAccessory]
     1006 SETLIST                          R12 R13 16 [1]
     1008 GETIMPORT                        R13 K206 [Enum.AssetType.EyelashAccessory]
     1010 GETIMPORT                        R14 K320 [Enum.AssetType.FaceMakeup]
     1012 GETIMPORT                        R15 K322 [Enum.AssetType.LipMakeup]
     1014 GETIMPORT                        R16 K324 [Enum.AssetType.EyeMakeup]
     1016 SETLIST                          R12 R13 4 [17]
     1018 SETTABLEKS                       R12 R8 K354 ["AVATAR_ITEM_UPDATE_ASSET_TYPES"]
     1020 MOVE                             R12 R4
     1021 CALL                             R12 0 1
     1022 JUMPIFNOT                        R12 ; [+9]
     1023 GETTABLEKS                       R13 R8 K119 ["ASSET_TYPES_2D"]
     1025 GETIMPORT                        R14 K356 [Enum.AssetType.AvatarBackground]
     1027 FASTCALL2                        TABLE_INSERT R13 R14 ; [+3]
     1029 GETIMPORT                        R12 K359 [table.insert]
     1031 CALL                             R12 2 0
     1032 RETURN                           R8 1
