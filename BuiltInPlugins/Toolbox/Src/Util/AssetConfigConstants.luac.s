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
       60 GETTABLEKS                       R8 R8 K15 ["getFFlagEnableUploadingMakeup"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R0 K7 ["Src"]
       67 GETTABLEKS                       R9 R9 K11 ["Flags"]
       69 GETTABLEKS                       R9 R9 K16 ["getFFlagUsePublishMarketplaceActionType"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R10 R2 K17 ["convertArrayToTable"]
       76 CALL                             R9 1 1
       77 NEWTABLE                         R10 64 0
       79 LOADN                            R11 1100
       80 SETTABLEKS                       R11 R10 K18 ["WIDTH"]
       82 LOADN                            R11 860
       83 SETTABLEKS                       R11 R10 K19 ["HEIGHT"]
       85 LOADN                            R11 900
       86 SETTABLEKS                       R11 R10 K20 ["MIN_WIDTH"]
       88 LOADN                            R11 500
       89 SETTABLEKS                       R11 R10 K21 ["MIN_HEIGHT"]
       91 LOADK                            R11 K22 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
       92 SETTABLEKS                       R11 R10 K23 ["TERM_OF_USE_URL"]
       94 LOADK                            R11 K24 ["https://www.roblox.com/my/account#!/info"]
       95 SETTABLEKS                       R11 R10 K25 ["ACCOUNT_SETTING_URL"]
       97 LOADN                            R11 50
       98 SETTABLEKS                       R11 R10 K26 ["NAME_CHARACTER_LIMIT"]
      100 LOADN                            R11 1000
      101 SETTABLEKS                       R11 R10 K27 ["DESCRIPTION_CHARACTER_LIMIT"]
      103 LOADN                            R11 500
      104 SETTABLEKS                       R11 R10 K28 ["PACKAGE_NOTE_CHARACTER_LIMIT"]
      106 LOADN                            R11 180
      107 SETTABLEKS                       R11 R10 K29 ["TITLE_GUTTER_WIDTH"]
      109 GETIMPORT                        R11 K32 [UDim2.new]
      111 LOADN                            R12 0
      112 LOADN                            R13 150
      113 LOADN                            R14 0
      114 LOADN                            R15 200
      115 CALL                             R11 4 1
      116 SETTABLEKS                       R11 R10 K33 ["OverrideAssetItemSize"]
      118 MOVE                             R11 R9
      119 NEWTABLE                         R12 0 3
      121 LOADK                            R13 K34 ["ImagePicker"]
      122 LOADK                            R14 K35 ["Thumbnail"]
      123 LOADK                            R15 K36 ["ModelPreview"]
      124 SETLIST                          R12 R13 3 [1]
      126 CALL                             R11 1 1
      127 SETTABLEKS                       R11 R10 K37 ["PreviewTypes"]
      129 MOVE                             R11 R9
      130 NEWTABLE                         R12 0 5
      132 LOADK                            R13 K38 ["Sales"]
      133 LOADK                            R14 K39 ["General"]
      134 LOADK                            R15 K40 ["Versions"]
      135 LOADK                            R16 K41 ["Override"]
      136 LOADK                            R17 K42 ["Permissions"]
      137 SETLIST                          R12 R13 5 [1]
      139 CALL                             R11 1 1
      140 SETTABLEKS                       R11 R10 K43 ["SIDE_TABS"]
      142 MOVE                             R11 R9
      143 NEWTABLE                         R12 0 3
      145 LOADK                            R13 K44 ["Title"]
      146 LOADK                            R14 K45 ["Description"]
      147 LOADK                            R15 K46 ["Price"]
      148 SETLIST                          R12 R13 3 [1]
      150 CALL                             R11 1 1
      151 SETTABLEKS                       R11 R10 K47 ["FIELD_NAMES"]
      153 NEWTABLE                         R11 0 14
      155 DUPTABLE                         R12 K49 [{"name"}]
      156 GETIMPORT                        R13 K53 [Enum.Genre.All]
      158 GETTABLEKS                       R13 R13 K54 ["Name"]
      160 SETTABLEKS                       R13 R12 K48 ["name"]
      162 DUPTABLE                         R13 K49 [{"name"}]
      163 GETIMPORT                        R14 K56 [Enum.Genre.TownAndCity]
      165 GETTABLEKS                       R14 R14 K54 ["Name"]
      167 SETTABLEKS                       R14 R13 K48 ["name"]
      169 DUPTABLE                         R14 K49 [{"name"}]
      170 GETIMPORT                        R15 K58 [Enum.Genre.Fantasy]
      172 GETTABLEKS                       R15 R15 K54 ["Name"]
      174 SETTABLEKS                       R15 R14 K48 ["name"]
      176 DUPTABLE                         R15 K49 [{"name"}]
      177 GETIMPORT                        R16 K60 [Enum.Genre.SciFi]
      179 GETTABLEKS                       R16 R16 K54 ["Name"]
      181 SETTABLEKS                       R16 R15 K48 ["name"]
      183 DUPTABLE                         R16 K49 [{"name"}]
      184 GETIMPORT                        R17 K62 [Enum.Genre.Ninja]
      186 GETTABLEKS                       R17 R17 K54 ["Name"]
      188 SETTABLEKS                       R17 R16 K48 ["name"]
      190 DUPTABLE                         R17 K49 [{"name"}]
      191 GETIMPORT                        R18 K64 [Enum.Genre.Scary]
      193 GETTABLEKS                       R18 R18 K54 ["Name"]
      195 SETTABLEKS                       R18 R17 K48 ["name"]
      197 DUPTABLE                         R18 K49 [{"name"}]
      198 GETIMPORT                        R19 K66 [Enum.Genre.Pirate]
      200 GETTABLEKS                       R19 R19 K54 ["Name"]
      202 SETTABLEKS                       R19 R18 K48 ["name"]
      204 DUPTABLE                         R19 K49 [{"name"}]
      205 GETIMPORT                        R20 K68 [Enum.Genre.Adventure]
      207 GETTABLEKS                       R20 R20 K54 ["Name"]
      209 SETTABLEKS                       R20 R19 K48 ["name"]
      211 DUPTABLE                         R20 K49 [{"name"}]
      212 GETIMPORT                        R21 K70 [Enum.Genre.Sports]
      214 GETTABLEKS                       R21 R21 K54 ["Name"]
      216 SETTABLEKS                       R21 R20 K48 ["name"]
      218 DUPTABLE                         R21 K49 [{"name"}]
      219 GETIMPORT                        R22 K72 [Enum.Genre.Funny]
      221 GETTABLEKS                       R22 R22 K54 ["Name"]
      223 SETTABLEKS                       R22 R21 K48 ["name"]
      225 DUPTABLE                         R22 K49 [{"name"}]
      226 GETIMPORT                        R23 K74 [Enum.Genre.WildWest]
      228 GETTABLEKS                       R23 R23 K54 ["Name"]
      230 SETTABLEKS                       R23 R22 K48 ["name"]
      232 DUPTABLE                         R23 K49 [{"name"}]
      233 GETIMPORT                        R24 K76 [Enum.Genre.War]
      235 GETTABLEKS                       R24 R24 K54 ["Name"]
      237 SETTABLEKS                       R24 R23 K48 ["name"]
      239 DUPTABLE                         R24 K49 [{"name"}]
      240 GETIMPORT                        R25 K78 [Enum.Genre.SkatePark]
      242 GETTABLEKS                       R25 R25 K54 ["Name"]
      244 SETTABLEKS                       R25 R24 K48 ["name"]
      246 DUPTABLE                         R25 K49 [{"name"}]
      247 GETIMPORT                        R26 K80 [Enum.Genre.Tutorial]
      249 GETTABLEKS                       R26 R26 K54 ["Name"]
      251 SETTABLEKS                       R26 R25 K48 ["name"]
      253 SETLIST                          R11 R12 14 [1]
      255 SETTABLEKS                       R11 R10 K81 ["GENRE_TYPE"]
      257 MOVE                             R11 R9
      258 NEWTABLE                         R12 0 3
      260 LOADK                            R13 K82 ["EDIT_FLOW"]
      261 LOADK                            R14 K83 ["UPLOAD_FLOW"]
      262 LOADK                            R15 K84 ["DOWNLOAD_FLOW"]
      263 SETLIST                          R12 R13 3 [1]
      265 CALL                             R11 1 1
      266 SETTABLEKS                       R11 R10 K85 ["FLOW_TYPE"]
      268 MOVE                             R11 R9
      269 NEWTABLE                         R12 0 5
      271 LOADK                            R13 K86 ["ASSET_TYPE_SELECTION"]
      272 LOADK                            R14 K87 ["ASSET_VALIDATION"]
      273 LOADK                            R15 K88 ["CONFIGURE_ASSET"]
      274 LOADK                            R16 K89 ["UPLOADING_ASSET"]
      275 LOADK                            R17 K90 ["UPLOAD_ASSET_RESULT"]
      276 SETLIST                          R12 R13 5 [1]
      278 CALL                             R11 1 1
      279 SETTABLEKS                       R11 R10 K91 ["SCREENS"]
      281 MOVE                             R11 R9
      282 NEWTABLE                         R12 0 8
      284 LOADK                            R13 K92 ["Unknown"]
      285 LOADK                            R14 K93 ["ReviewPending"]
      286 LOADK                            R15 K94 ["Moderated"]
      287 LOADK                            R16 K95 ["ReviewApproved"]
      288 LOADK                            R17 K96 ["OnSale"]
      289 LOADK                            R18 K97 ["OffSale"]
      290 LOADK                            R19 K98 ["DelayedRelease"]
      291 LOADK                            R20 K99 ["Free"]
      292 SETLIST                          R12 R13 8 [1]
      294 CALL                             R11 1 1
      295 SETTABLEKS                       R11 R10 K100 ["ASSET_STATUS"]
      297 MOVE                             R11 R9
      298 NEWTABLE                         R12 0 10
      300 LOADK                            R13 K101 ["AssetType"]
      301 LOADK                            R14 K102 ["Authorization"]
      302 LOADK                            R15 K103 ["Invalid"]
      303 LOADK                            R16 K104 ["KillSwitch"]
      304 LOADK                            R17 K105 ["Quota"]
      305 LOADK                            R18 K106 ["SafetyStatus"]
      306 LOADK                            R19 K107 ["SellerAccountNotOnboarded"]
      307 LOADK                            R20 K108 ["SellerAccountRestricted"]
      308 LOADK                            R21 K109 ["UnsupportedAssetOwner"]
      309 LOADK                            R22 K110 ["Verification"]
      310 SETLIST                          R12 R13 10 [1]
      312 CALL                             R11 1 1
      313 SETTABLEKS                       R11 R10 K111 ["RESTRICTION_TYPE"]
      315 MOVE                             R11 R9
      316 NEWTABLE                         R12 0 1
      318 LOADK                            R13 K96 ["OnSale"]
      319 SETLIST                          R12 R13 1 [1]
      321 CALL                             R11 1 1
      322 SETTABLEKS                       R11 R10 K112 ["SALES_STATUS_FOR_PRICE"]
      324 DUPCLOSURE                       R11 K113 [PROTO_0]
      325 DUPCLOSURE                       R12 K114 [PROTO_1]
      326 NEWTABLE                         R13 0 0
      328 SETTABLEKS                       R13 R10 K115 ["ASSET_TYPE_INFO"]
      330 NEWTABLE                         R13 0 3
      332 GETIMPORT                        R14 K117 [Enum.AssetType.TShirt]
      334 GETIMPORT                        R15 K119 [Enum.AssetType.Shirt]
      336 GETIMPORT                        R16 K121 [Enum.AssetType.Pants]
      338 SETLIST                          R13 R14 3 [1]
      340 SETTABLEKS                       R13 R10 K122 ["ASSET_TYPES_2D"]
      342 DUPCLOSURE                       R13 K123 [PROTO_3]
      343 CAPTURE                          VAL R10
      344 CAPTURE                          VAL R8
      345 SETTABLEKS                       R13 R10 K124 ["populateAssetTypeInfoFromNetwork"]
      347 DUPCLOSURE                       R13 K125 [PROTO_4]
      348 SETTABLEKS                       R13 R10 K126 ["getNormalizedAssetString"]
      350 MOVE                             R13 R9
      351 NEWTABLE                         R14 0 3
      353 LOADK                            R15 K127 ["WhitelistedPlugins"]
      354 LOADK                            R16 K128 ["MyPlugins"]
      355 LOADK                            R17 K129 ["GroupPlugins"]
      356 SETLIST                          R14 R15 3 [1]
      358 CALL                             R13 1 1
      359 SETTABLEKS                       R13 R10 K130 ["developCategoryType"]
      361 MOVE                             R13 R9
      362 NEWTABLE                         R14 0 2
      364 LOADK                            R15 K131 ["MyPackages"]
      365 LOADK                            R16 K132 ["GroupPackages"]
      366 SETLIST                          R14 R15 2 [1]
      368 CALL                             R13 1 1
      369 SETTABLEKS                       R13 R10 K133 ["packagesCategoryType"]
      371 MOVE                             R13 R9
      372 NEWTABLE                         R14 0 9
      374 LOADK                            R15 K134 ["Asset"]
      375 LOADK                            R16 K135 ["Avatar"]
      376 LOADK                            R17 K136 ["AvatarHeadShot"]
      377 LOADK                            R18 K137 ["BadgeIcon"]
      378 LOADK                            R19 K138 ["BundleThumbnail"]
      379 LOADK                            R20 K139 ["GameIcon"]
      380 LOADK                            R21 K140 ["GamePass"]
      381 LOADK                            R22 K141 ["GroupIcon"]
      382 LOADK                            R23 K142 ["Outfit"]
      383 SETLIST                          R14 R15 9 [1]
      385 CALL                             R13 1 1
      386 SETTABLEKS                       R13 R10 K143 ["rbxThumbTypes"]
      388 DUPTABLE                         R13 K150 [{["AvatarHeadshotImageSize"] = 60, ["GroupIconImageSize"] = 150, ["AssetThumbnailSize"] = 420}]
      389 SETTABLEKS                       R13 R10 K151 ["rbxThumbSizes"]
      391 DUPTABLE                         R13 K162 [{["MaxThumbnails"] = 5, ["AspectRatioHeight"] = 9, ["AspectRatioWidth"] = 16, ["RecommendedHeight"] = 432, ["RecommendedWidth"] = 768}]
      392 SETTABLEKS                       R13 R10 K163 ["additionalImages"]
      394 NEWTABLE                         R13 0 3
      396 LOADK                            R14 K164 ["jpg"]
      397 LOADK                            R15 K165 ["jpeg"]
      398 LOADK                            R16 K166 ["png"]
      399 SETLIST                          R13 R14 3 [1]
      401 SETTABLEKS                       R13 R10 K167 ["IMAGE_TYPES"]
      403 LOADK                            R13 K168 ["Success"]
      404 SETTABLEKS                       R13 R10 K169 ["TAGS_SUGGESTION_SUCCESS"]
      406 LOADN                            R13 5
      407 SETTABLEKS                       R13 R10 K170 ["MAX_DISPLAY_SUGGESTIONS"]
      409 LOADN                            R13 10
      410 SETTABLEKS                       R13 R10 K171 ["MAX_FETCH_SUGGESTIONS"]
      412 LOADK                            R13 K172 ["avatar_meshpart_accessory"]
      413 SETTABLEKS                       R13 R10 K173 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
      415 LOADK                            R13 K174 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
      416 SETTABLEKS                       R13 R10 K175 ["MULTIPART_FORM_BOUNDARY"]
      418 LOADK                            R13 K176 ["OverrideAssetId"]
      419 SETTABLEKS                       R13 R10 K177 ["OVERRIDE_ASSET_ID"]
      421 DUPTABLE                         R13 K182 [{["Public"] = True, ["Private"] = False}]
      422 SETTABLEKS                       R13 R10 K183 ["SHARING_KEYS"]
      424 NEWTABLE                         R13 0 3
      426 LOADK                            R14 K184 ["Body"]
      427 LOADK                            R15 K185 ["DynamicHead"]
      428 LOADK                            R16 K186 ["Shoes"]
      429 SETLIST                          R13 R14 3 [1]
      431 MOVE                             R14 R5
      432 CALL                             R14 0 1
      433 JUMPIFNOT                        R14 ; [+7]
      434 FASTCALL2K                       TABLE_INSERT R13 K187 ; [+5]
      436 MOVE                             R15 R13
      437 LOADK                            R16 K187 ["AvatarAnimations"]
      438 GETIMPORT                        R14 K190 [table.insert]
      440 CALL                             R14 2 0
      441 NEWTABLE                         R14 0 0
      443 SETTABLEKS                       R14 R10 K191 ["UGCBundleTypes"]
      445 GETIMPORT                        R14 K193 [ipairs]
      447 MOVE                             R15 R13
      448 CALL                             R14 1 3
      449 FORGPREP_INEXT                   R14
      450 DUPTABLE                         R19 K195 [{"Name", "Value"}]
      451 SETTABLEKS                       R18 R19 K54 ["Name"]
      453 SETTABLEKS                       R17 R19 K194 ["Value"]
      455 GETTABLEKS                       R20 R10 K191 ["UGCBundleTypes"]
      457 SETTABLE                         R19 R20 R18
      458 NEWCLOSURE                       R20 P4
      459 CAPTURE                          VAL R19
      460 SETTABLEKS                       R20 R19 K196 ["rawValue"]
      462 FORGLOOP                         R14 2 [inext] ; [-13]
      464 NEWTABLE                         R14 4 0
      466 GETTABLEKS                       R15 R10 K191 ["UGCBundleTypes"]
      468 GETTABLEKS                       R15 R15 K184 ["Body"]
      470 GETTABLEKS                       R15 R15 K196 ["rawValue"]
      472 CALL                             R15 0 1
      473 GETTABLEKS                       R16 R10 K191 ["UGCBundleTypes"]
      475 GETTABLEKS                       R16 R16 K184 ["Body"]
      477 SETTABLE                         R16 R14 R15
      478 GETTABLEKS                       R15 R10 K191 ["UGCBundleTypes"]
      480 GETTABLEKS                       R15 R15 K185 ["DynamicHead"]
      482 GETTABLEKS                       R15 R15 K196 ["rawValue"]
      484 CALL                             R15 0 1
      485 GETTABLEKS                       R16 R10 K191 ["UGCBundleTypes"]
      487 GETTABLEKS                       R16 R16 K185 ["DynamicHead"]
      489 SETTABLE                         R16 R14 R15
      490 GETTABLEKS                       R15 R10 K191 ["UGCBundleTypes"]
      492 GETTABLEKS                       R15 R15 K186 ["Shoes"]
      494 GETTABLEKS                       R15 R15 K196 ["rawValue"]
      496 CALL                             R15 0 1
      497 GETTABLEKS                       R16 R10 K191 ["UGCBundleTypes"]
      499 GETTABLEKS                       R16 R16 K186 ["Shoes"]
      501 SETTABLE                         R16 R14 R15
      502 SETTABLEKS                       R14 R10 K197 ["UGCBundleTypeStringToEnumeration"]
      504 MOVE                             R14 R5
      505 CALL                             R14 0 1
      506 JUMPIFNOT                        R14 ; [+14]
      507 GETTABLEKS                       R14 R10 K197 ["UGCBundleTypeStringToEnumeration"]
      509 GETTABLEKS                       R15 R10 K191 ["UGCBundleTypes"]
      511 GETTABLEKS                       R15 R15 K187 ["AvatarAnimations"]
      513 GETTABLEKS                       R15 R15 K196 ["rawValue"]
      515 CALL                             R15 0 1
      516 GETTABLEKS                       R16 R10 K191 ["UGCBundleTypes"]
      518 GETTABLEKS                       R16 R16 K187 ["AvatarAnimations"]
      520 SETTABLE                         R16 R14 R15
      521 NEWTABLE                         R14 16 0
      523 GETIMPORT                        R15 K198 [Enum.AssetType.DynamicHead]
      525 SETTABLEKS                       R15 R14 K185 ["DynamicHead"]
      527 GETIMPORT                        R15 K200 [Enum.AssetType.LeftArm]
      529 SETTABLEKS                       R15 R14 K199 ["LeftArm"]
      531 GETIMPORT                        R15 K202 [Enum.AssetType.LeftLeg]
      533 SETTABLEKS                       R15 R14 K201 ["LeftLeg"]
      535 GETIMPORT                        R15 K204 [Enum.AssetType.RightArm]
      537 SETTABLEKS                       R15 R14 K203 ["RightArm"]
      539 GETIMPORT                        R15 K206 [Enum.AssetType.RightLeg]
      541 SETTABLEKS                       R15 R14 K205 ["RightLeg"]
      543 GETIMPORT                        R15 K208 [Enum.AssetType.Torso]
      545 SETTABLEKS                       R15 R14 K207 ["Torso"]
      547 GETIMPORT                        R15 K210 [Enum.AssetType.EyebrowAccessory]
      549 SETTABLEKS                       R15 R14 K209 ["EyebrowAccessory"]
      551 GETIMPORT                        R15 K212 [Enum.AssetType.EyelashAccessory]
      553 SETTABLEKS                       R15 R14 K211 ["EyelashAccessory"]
      555 GETIMPORT                        R15 K214 [Enum.AssetType.HairAccessory]
      557 SETTABLEKS                       R15 R14 K213 ["HairAccessory"]
      559 GETIMPORT                        R15 K216 [Enum.AssetType.LeftShoeAccessory]
      561 SETTABLEKS                       R15 R14 K215 ["LeftShoeAccessory"]
      563 GETIMPORT                        R15 K218 [Enum.AssetType.RightShoeAccessory]
      565 SETTABLEKS                       R15 R14 K217 ["RightShoeAccessory"]
      567 SETTABLEKS                       R14 R10 K219 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      569 MOVE                             R14 R5
      570 CALL                             R14 0 1
      571 JUMPIFNOT                        R14 ; [+42]
      572 GETTABLEKS                       R14 R10 K219 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      574 GETIMPORT                        R15 K221 [Enum.AssetType.ClimbAnimation]
      576 SETTABLEKS                       R15 R14 K220 ["ClimbAnimation"]
      578 GETTABLEKS                       R14 R10 K219 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      580 GETIMPORT                        R15 K223 [Enum.AssetType.FallAnimation]
      582 SETTABLEKS                       R15 R14 K222 ["FallAnimation"]
      584 GETTABLEKS                       R14 R10 K219 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      586 GETIMPORT                        R15 K225 [Enum.AssetType.IdleAnimation]
      588 SETTABLEKS                       R15 R14 K224 ["IdleAnimation"]
      590 GETTABLEKS                       R14 R10 K219 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      592 GETIMPORT                        R15 K227 [Enum.AssetType.JumpAnimation]
      594 SETTABLEKS                       R15 R14 K226 ["JumpAnimation"]
      596 GETTABLEKS                       R14 R10 K219 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      598 GETIMPORT                        R15 K229 [Enum.AssetType.RunAnimation]
      600 SETTABLEKS                       R15 R14 K228 ["RunAnimation"]
      602 GETTABLEKS                       R14 R10 K219 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      604 GETIMPORT                        R15 K231 [Enum.AssetType.SwimAnimation]
      606 SETTABLEKS                       R15 R14 K230 ["SwimAnimation"]
      608 GETTABLEKS                       R14 R10 K219 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      610 GETIMPORT                        R15 K233 [Enum.AssetType.WalkAnimation]
      612 SETTABLEKS                       R15 R14 K232 ["WalkAnimation"]
      614 DUPTABLE                         R14 K249 [{["Head"] = "Head", ["UpperTorso"] = "UpperTorso", ["LowerTorso"] = "LowerTorso", ["LeftUpperLeg"] = "LeftUpperLeg", ["LeftLowerLeg"] = "LeftLowerLeg", ["LeftHand"] = "LeftHand", ["RightUpperArm"] = "RightUpperArm", ["RightLowerArm"] = "RightLowerArm", ["RightHand"] = "RightHand", ["LeftUpperArm"] = "LeftUpperArm", ["LeftLowerArm"] = "LeftLowerArm", ["LeftFoot"] = "LeftFoot", ["RightUpperLeg"] = "RightUpperLeg", ["RightLowerLeg"] = "RightLowerLeg", ["RightFoot"] = "RightFoot", ["EyebrowAccessory"] = "EyebrowAccessory", ["EyelashAccessory"] = "EyelashAccessory", ["HairAccessory"] = "HairAccessory"}]
      615 SETTABLEKS                       R14 R10 K250 ["UGC_BODY_PARTS"]
      617 DUPTABLE                         R14 K251 [{["LeftShoeAccessory"] = "LeftShoeAccessory", ["RightShoeAccessory"] = "RightShoeAccessory"}]
      618 SETTABLEKS                       R14 R10 K252 ["UGC_BUNDLE_PARTS"]
      620 NEWTABLE                         R14 32 0
      622 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      624 GETTABLEKS                       R15 R15 K234 ["Head"]
      626 GETIMPORT                        R16 K198 [Enum.AssetType.DynamicHead]
      628 SETTABLE                         R16 R14 R15
      629 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      631 GETTABLEKS                       R15 R15 K235 ["UpperTorso"]
      633 GETIMPORT                        R16 K208 [Enum.AssetType.Torso]
      635 SETTABLE                         R16 R14 R15
      636 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      638 GETTABLEKS                       R15 R15 K236 ["LowerTorso"]
      640 GETIMPORT                        R16 K208 [Enum.AssetType.Torso]
      642 SETTABLE                         R16 R14 R15
      643 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      645 GETTABLEKS                       R15 R15 K243 ["LeftUpperArm"]
      647 GETIMPORT                        R16 K200 [Enum.AssetType.LeftArm]
      649 SETTABLE                         R16 R14 R15
      650 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      652 GETTABLEKS                       R15 R15 K244 ["LeftLowerArm"]
      654 GETIMPORT                        R16 K200 [Enum.AssetType.LeftArm]
      656 SETTABLE                         R16 R14 R15
      657 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      659 GETTABLEKS                       R15 R15 K239 ["LeftHand"]
      661 GETIMPORT                        R16 K200 [Enum.AssetType.LeftArm]
      663 SETTABLE                         R16 R14 R15
      664 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      666 GETTABLEKS                       R15 R15 K240 ["RightUpperArm"]
      668 GETIMPORT                        R16 K204 [Enum.AssetType.RightArm]
      670 SETTABLE                         R16 R14 R15
      671 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      673 GETTABLEKS                       R15 R15 K241 ["RightLowerArm"]
      675 GETIMPORT                        R16 K204 [Enum.AssetType.RightArm]
      677 SETTABLE                         R16 R14 R15
      678 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      680 GETTABLEKS                       R15 R15 K242 ["RightHand"]
      682 GETIMPORT                        R16 K204 [Enum.AssetType.RightArm]
      684 SETTABLE                         R16 R14 R15
      685 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      687 GETTABLEKS                       R15 R15 K237 ["LeftUpperLeg"]
      689 GETIMPORT                        R16 K202 [Enum.AssetType.LeftLeg]
      691 SETTABLE                         R16 R14 R15
      692 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      694 GETTABLEKS                       R15 R15 K238 ["LeftLowerLeg"]
      696 GETIMPORT                        R16 K202 [Enum.AssetType.LeftLeg]
      698 SETTABLE                         R16 R14 R15
      699 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      701 GETTABLEKS                       R15 R15 K245 ["LeftFoot"]
      703 GETIMPORT                        R16 K202 [Enum.AssetType.LeftLeg]
      705 SETTABLE                         R16 R14 R15
      706 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      708 GETTABLEKS                       R15 R15 K246 ["RightUpperLeg"]
      710 GETIMPORT                        R16 K206 [Enum.AssetType.RightLeg]
      712 SETTABLE                         R16 R14 R15
      713 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      715 GETTABLEKS                       R15 R15 K247 ["RightLowerLeg"]
      717 GETIMPORT                        R16 K206 [Enum.AssetType.RightLeg]
      719 SETTABLE                         R16 R14 R15
      720 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      722 GETTABLEKS                       R15 R15 K248 ["RightFoot"]
      724 GETIMPORT                        R16 K206 [Enum.AssetType.RightLeg]
      726 SETTABLE                         R16 R14 R15
      727 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      729 GETTABLEKS                       R15 R15 K209 ["EyebrowAccessory"]
      731 GETIMPORT                        R16 K210 [Enum.AssetType.EyebrowAccessory]
      733 SETTABLE                         R16 R14 R15
      734 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      736 GETTABLEKS                       R15 R15 K211 ["EyelashAccessory"]
      738 GETIMPORT                        R16 K212 [Enum.AssetType.EyelashAccessory]
      740 SETTABLE                         R16 R14 R15
      741 GETTABLEKS                       R15 R10 K250 ["UGC_BODY_PARTS"]
      743 GETTABLEKS                       R15 R15 K213 ["HairAccessory"]
      745 GETIMPORT                        R16 K214 [Enum.AssetType.HairAccessory]
      747 SETTABLE                         R16 R14 R15
      748 SETTABLEKS                       R14 R10 K253 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      750 NEWTABLE                         R14 2 0
      752 GETTABLEKS                       R15 R10 K252 ["UGC_BUNDLE_PARTS"]
      754 GETTABLEKS                       R15 R15 K215 ["LeftShoeAccessory"]
      756 GETIMPORT                        R16 K216 [Enum.AssetType.LeftShoeAccessory]
      758 SETTABLE                         R16 R14 R15
      759 GETTABLEKS                       R15 R10 K252 ["UGC_BUNDLE_PARTS"]
      761 GETTABLEKS                       R15 R15 K217 ["RightShoeAccessory"]
      763 GETIMPORT                        R16 K218 [Enum.AssetType.RightShoeAccessory]
      765 SETTABLE                         R16 R14 R15
      766 SETTABLEKS                       R14 R10 K254 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
      768 MOVE                             R14 R5
      769 CALL                             R14 0 1
      770 JUMPIFNOT                        R14 ; [+133]
      771 DUPTABLE                         R14 K255 [{["ClimbAnimation"] = "ClimbAnimation", ["FallAnimation"] = "FallAnimation", ["IdleAnimation"] = "IdleAnimation", ["JumpAnimation"] = "JumpAnimation", ["RunAnimation"] = "RunAnimation", ["SwimAnimation"] = "SwimAnimation", ["WalkAnimation"] = "WalkAnimation"}]
      772 SETTABLEKS                       R14 R10 K256 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      774 NEWTABLE                         R14 8 0
      776 GETTABLEKS                       R15 R10 K256 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      778 GETTABLEKS                       R15 R15 K220 ["ClimbAnimation"]
      780 GETIMPORT                        R16 K221 [Enum.AssetType.ClimbAnimation]
      782 SETTABLE                         R16 R14 R15
      783 GETTABLEKS                       R15 R10 K256 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      785 GETTABLEKS                       R15 R15 K222 ["FallAnimation"]
      787 GETIMPORT                        R16 K223 [Enum.AssetType.FallAnimation]
      789 SETTABLE                         R16 R14 R15
      790 GETTABLEKS                       R15 R10 K256 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      792 GETTABLEKS                       R15 R15 K224 ["IdleAnimation"]
      794 GETIMPORT                        R16 K225 [Enum.AssetType.IdleAnimation]
      796 SETTABLE                         R16 R14 R15
      797 GETTABLEKS                       R15 R10 K256 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      799 GETTABLEKS                       R15 R15 K226 ["JumpAnimation"]
      801 GETIMPORT                        R16 K227 [Enum.AssetType.JumpAnimation]
      803 SETTABLE                         R16 R14 R15
      804 GETTABLEKS                       R15 R10 K256 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      806 GETTABLEKS                       R15 R15 K228 ["RunAnimation"]
      808 GETIMPORT                        R16 K229 [Enum.AssetType.RunAnimation]
      810 SETTABLE                         R16 R14 R15
      811 GETTABLEKS                       R15 R10 K256 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      813 GETTABLEKS                       R15 R15 K230 ["SwimAnimation"]
      815 GETIMPORT                        R16 K231 [Enum.AssetType.SwimAnimation]
      817 SETTABLE                         R16 R14 R15
      818 GETTABLEKS                       R15 R10 K256 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      820 GETTABLEKS                       R15 R15 K232 ["WalkAnimation"]
      822 GETIMPORT                        R16 K233 [Enum.AssetType.WalkAnimation]
      824 SETTABLE                         R16 R14 R15
      825 SETTABLEKS                       R14 R10 K257 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
      827 DUPTABLE                         R14 K258 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      828 NEWTABLE                         R15 0 1
      830 LOADK                            R16 K259 ["climb"]
      831 SETLIST                          R15 R16 1 [1]
      833 SETTABLEKS                       R15 R14 K220 ["ClimbAnimation"]
      835 NEWTABLE                         R15 0 1
      837 LOADK                            R16 K260 ["fall"]
      838 SETLIST                          R15 R16 1 [1]
      840 SETTABLEKS                       R15 R14 K222 ["FallAnimation"]
      842 NEWTABLE                         R15 0 1
      844 LOADK                            R16 K261 ["idle"]
      845 SETLIST                          R15 R16 1 [1]
      847 SETTABLEKS                       R15 R14 K224 ["IdleAnimation"]
      849 NEWTABLE                         R15 0 1
      851 LOADK                            R16 K262 ["jump"]
      852 SETLIST                          R15 R16 1 [1]
      854 SETTABLEKS                       R15 R14 K226 ["JumpAnimation"]
      856 NEWTABLE                         R15 0 1
      858 LOADK                            R16 K263 ["run"]
      859 SETLIST                          R15 R16 1 [1]
      861 SETTABLEKS                       R15 R14 K228 ["RunAnimation"]
      863 NEWTABLE                         R15 0 2
      865 LOADK                            R16 K264 ["swim"]
      866 LOADK                            R17 K265 ["swimidle"]
      867 SETLIST                          R15 R16 2 [1]
      869 SETTABLEKS                       R15 R14 K230 ["SwimAnimation"]
      871 NEWTABLE                         R15 0 1
      873 LOADK                            R16 K266 ["walk"]
      874 SETLIST                          R15 R16 1 [1]
      876 SETTABLEKS                       R15 R14 K232 ["WalkAnimation"]
      878 SETTABLEKS                       R14 R10 K267 ["AVATAR_ANIMATION_SUB_NAMES"]
      880 DUPTABLE                         R14 K258 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      881 DUPTABLE                         R15 K269 [{["climb"] = "ClimbAnim"}]
      882 SETTABLEKS                       R15 R14 K220 ["ClimbAnimation"]
      884 DUPTABLE                         R15 K271 [{["fall"] = "FallAnim"}]
      885 SETTABLEKS                       R15 R14 K222 ["FallAnimation"]
      887 DUPTABLE                         R15 K273 [{["idle"] = }]
      888 SETTABLEKS                       R15 R14 K224 ["IdleAnimation"]
      890 DUPTABLE                         R15 K275 [{["jump"] = "JumpAnim"}]
      891 SETTABLEKS                       R15 R14 K226 ["JumpAnimation"]
      893 DUPTABLE                         R15 K277 [{["run"] = "RunAnim"}]
      894 SETTABLEKS                       R15 R14 K228 ["RunAnimation"]
      896 DUPTABLE                         R15 K280 [{["swim"] = "SwimAnim", ["swimidle"] = "SwimIdleAnim"}]
      897 SETTABLEKS                       R15 R14 K230 ["SwimAnimation"]
      899 DUPTABLE                         R15 K282 [{["walk"] = "WalkAnim"}]
      900 SETTABLEKS                       R15 R14 K232 ["WalkAnimation"]
      902 SETTABLEKS                       R14 R10 K283 ["AVATAR_ANIMATION_INSTANCE_NAMES"]
      904 MOVE                             R14 R3
      905 CALL                             R14 0 1
      906 JUMPIFNOT                        R14 ; [+18]
      907 DUPTABLE                         R14 K287 [{["Classic"] = "Classic", ["ProportionsNormal"] = "ProportionsNormal", ["ProportionsSlender"] = "ProportionsSlender", ["Unknown"] = "Unknown"}]
      908 SETTABLEKS                       R14 R10 K288 ["BodyScaleTypes"]
      910 DUPTABLE                         R14 K289 [{"Classic", "ProportionsNormal", "ProportionsSlender"}]
      911 DUPTABLE                         R15 K297 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 0}]
      912 SETTABLEKS                       R15 R14 K284 ["Classic"]
      914 DUPTABLE                         R15 K298 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 1}]
      915 SETTABLEKS                       R15 R14 K285 ["ProportionsNormal"]
      917 DUPTABLE                         R15 K299 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 1, ["bodyType"] = 1}]
      918 SETTABLEKS                       R15 R14 K286 ["ProportionsSlender"]
      920 SETTABLEKS                       R14 R10 K300 ["BodyScaleDefaults"]
      922 DUPTABLE                         R14 K306 [{["height"] = "BodyHeightScale", ["width"] = "BodyWidthScale", ["head"] = "HeadScale", ["bodyType"] = "BodyTypeScale", ["proportion"] = "BodyProportionScale"}]
      923 SETTABLEKS                       R14 R10 K307 ["bodyScaleNameToString"]
      925 DUPTABLE                         R14 K317 [{["NONE"] = "None", ["BEGIN"] = "Begin", ["VALIDATING"] = "Validating", ["SUCCESS"] = "Success", ["FAILURE"] = "Failure"}]
      926 SETTABLEKS                       R14 R10 K318 ["VALIDATION_STATE"]
      928 MOVE                             R14 R4
      929 CALL                             R14 0 1
      930 JUMPIFNOT                        R14 ; [+8]
      931 NEWTABLE                         R14 0 2
      933 LOADK                            R15 K319 ["rbxassetid://"]
      934 LOADK                            R16 K320 ["https://assetdelivery"]
      935 SETLIST                          R14 R15 2 [1]
      937 SETTABLEKS                       R14 R10 K321 ["assetIdStringPatterns"]
      939 NEWTABLE                         R14 0 10
      941 GETIMPORT                        R15 K198 [Enum.AssetType.DynamicHead]
      943 GETIMPORT                        R16 K210 [Enum.AssetType.EyebrowAccessory]
      945 GETIMPORT                        R17 K212 [Enum.AssetType.EyelashAccessory]
      947 GETIMPORT                        R18 K200 [Enum.AssetType.LeftArm]
      949 GETIMPORT                        R19 K202 [Enum.AssetType.LeftLeg]
      951 GETIMPORT                        R20 K216 [Enum.AssetType.LeftShoeAccessory]
      953 GETIMPORT                        R21 K204 [Enum.AssetType.RightArm]
      955 GETIMPORT                        R22 K206 [Enum.AssetType.RightLeg]
      957 GETIMPORT                        R23 K218 [Enum.AssetType.RightShoeAccessory]
      959 GETIMPORT                        R24 K208 [Enum.AssetType.Torso]
      961 SETLIST                          R14 R15 10 [1]
      963 SETTABLEKS                       R14 R10 K322 ["BODY_PARTS"]
      965 MOVE                             R14 R7
      966 CALL                             R14 0 1
      967 JUMPIFNOT                        R14 ; [+16]
      968 NEWTABLE                         R14 0 5
      970 GETIMPORT                        R15 K210 [Enum.AssetType.EyebrowAccessory]
      972 GETIMPORT                        R16 K212 [Enum.AssetType.EyelashAccessory]
      974 GETIMPORT                        R17 K324 [Enum.AssetType.FaceMakeup]
      976 GETIMPORT                        R18 K326 [Enum.AssetType.LipMakeup]
      978 GETIMPORT                        R19 K328 [Enum.AssetType.EyeMakeup]
      980 SETLIST                          R14 R15 5 [1]
      982 SETTABLEKS                       R14 R10 K329 ["MAKEUP_ASSET_TYPES"]
      984 MOVE                             R14 R6
      985 CALL                             R14 0 1
      986 JUMPIFNOT                        R14 ; [+9]
      987 GETTABLEKS                       R15 R10 K122 ["ASSET_TYPES_2D"]
      989 GETIMPORT                        R16 K331 [Enum.AssetType.AvatarBackground]
      991 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      993 GETIMPORT                        R14 K190 [table.insert]
      995 CALL                             R14 2 0
      996 RETURN                           R10 1
