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
      269 NEWTABLE                         R12 0 4
      271 LOADK                            R13 K86 ["ASSET_TYPE_SELECTION"]
      272 LOADK                            R14 K87 ["CONFIGURE_ASSET"]
      273 LOADK                            R15 K88 ["UPLOADING_ASSET"]
      274 LOADK                            R16 K89 ["UPLOAD_ASSET_RESULT"]
      275 SETLIST                          R12 R13 4 [1]
      277 CALL                             R11 1 1
      278 SETTABLEKS                       R11 R10 K90 ["SCREENS"]
      280 MOVE                             R11 R9
      281 NEWTABLE                         R12 0 8
      283 LOADK                            R13 K91 ["Unknown"]
      284 LOADK                            R14 K92 ["ReviewPending"]
      285 LOADK                            R15 K93 ["Moderated"]
      286 LOADK                            R16 K94 ["ReviewApproved"]
      287 LOADK                            R17 K95 ["OnSale"]
      288 LOADK                            R18 K96 ["OffSale"]
      289 LOADK                            R19 K97 ["DelayedRelease"]
      290 LOADK                            R20 K98 ["Free"]
      291 SETLIST                          R12 R13 8 [1]
      293 CALL                             R11 1 1
      294 SETTABLEKS                       R11 R10 K99 ["ASSET_STATUS"]
      296 MOVE                             R11 R9
      297 NEWTABLE                         R12 0 10
      299 LOADK                            R13 K100 ["AssetType"]
      300 LOADK                            R14 K101 ["Authorization"]
      301 LOADK                            R15 K102 ["Invalid"]
      302 LOADK                            R16 K103 ["KillSwitch"]
      303 LOADK                            R17 K104 ["Quota"]
      304 LOADK                            R18 K105 ["SafetyStatus"]
      305 LOADK                            R19 K106 ["SellerAccountNotOnboarded"]
      306 LOADK                            R20 K107 ["SellerAccountRestricted"]
      307 LOADK                            R21 K108 ["UnsupportedAssetOwner"]
      308 LOADK                            R22 K109 ["Verification"]
      309 SETLIST                          R12 R13 10 [1]
      311 CALL                             R11 1 1
      312 SETTABLEKS                       R11 R10 K110 ["RESTRICTION_TYPE"]
      314 MOVE                             R11 R9
      315 NEWTABLE                         R12 0 1
      317 LOADK                            R13 K95 ["OnSale"]
      318 SETLIST                          R12 R13 1 [1]
      320 CALL                             R11 1 1
      321 SETTABLEKS                       R11 R10 K111 ["SALES_STATUS_FOR_PRICE"]
      323 DUPCLOSURE                       R11 K112 [PROTO_0]
      324 DUPCLOSURE                       R12 K113 [PROTO_1]
      325 NEWTABLE                         R13 0 0
      327 SETTABLEKS                       R13 R10 K114 ["ASSET_TYPE_INFO"]
      329 NEWTABLE                         R13 0 3
      331 GETIMPORT                        R14 K116 [Enum.AssetType.TShirt]
      333 GETIMPORT                        R15 K118 [Enum.AssetType.Shirt]
      335 GETIMPORT                        R16 K120 [Enum.AssetType.Pants]
      337 SETLIST                          R13 R14 3 [1]
      339 SETTABLEKS                       R13 R10 K121 ["ASSET_TYPES_2D"]
      341 DUPCLOSURE                       R13 K122 [PROTO_3]
      342 CAPTURE                          VAL R10
      343 CAPTURE                          VAL R8
      344 SETTABLEKS                       R13 R10 K123 ["populateAssetTypeInfoFromNetwork"]
      346 DUPCLOSURE                       R13 K124 [PROTO_4]
      347 SETTABLEKS                       R13 R10 K125 ["getNormalizedAssetString"]
      349 MOVE                             R13 R9
      350 NEWTABLE                         R14 0 3
      352 LOADK                            R15 K126 ["WhitelistedPlugins"]
      353 LOADK                            R16 K127 ["MyPlugins"]
      354 LOADK                            R17 K128 ["GroupPlugins"]
      355 SETLIST                          R14 R15 3 [1]
      357 CALL                             R13 1 1
      358 SETTABLEKS                       R13 R10 K129 ["developCategoryType"]
      360 MOVE                             R13 R9
      361 NEWTABLE                         R14 0 2
      363 LOADK                            R15 K130 ["MyPackages"]
      364 LOADK                            R16 K131 ["GroupPackages"]
      365 SETLIST                          R14 R15 2 [1]
      367 CALL                             R13 1 1
      368 SETTABLEKS                       R13 R10 K132 ["packagesCategoryType"]
      370 MOVE                             R13 R9
      371 NEWTABLE                         R14 0 9
      373 LOADK                            R15 K133 ["Asset"]
      374 LOADK                            R16 K134 ["Avatar"]
      375 LOADK                            R17 K135 ["AvatarHeadShot"]
      376 LOADK                            R18 K136 ["BadgeIcon"]
      377 LOADK                            R19 K137 ["BundleThumbnail"]
      378 LOADK                            R20 K138 ["GameIcon"]
      379 LOADK                            R21 K139 ["GamePass"]
      380 LOADK                            R22 K140 ["GroupIcon"]
      381 LOADK                            R23 K141 ["Outfit"]
      382 SETLIST                          R14 R15 9 [1]
      384 CALL                             R13 1 1
      385 SETTABLEKS                       R13 R10 K142 ["rbxThumbTypes"]
      387 DUPTABLE                         R13 K149 [{["AvatarHeadshotImageSize"] = 60, ["GroupIconImageSize"] = 150, ["AssetThumbnailSize"] = 420}]
      388 SETTABLEKS                       R13 R10 K150 ["rbxThumbSizes"]
      390 DUPTABLE                         R13 K161 [{["MaxThumbnails"] = 5, ["AspectRatioHeight"] = 9, ["AspectRatioWidth"] = 16, ["RecommendedHeight"] = 432, ["RecommendedWidth"] = 768}]
      391 SETTABLEKS                       R13 R10 K162 ["additionalImages"]
      393 NEWTABLE                         R13 0 3
      395 LOADK                            R14 K163 ["jpg"]
      396 LOADK                            R15 K164 ["jpeg"]
      397 LOADK                            R16 K165 ["png"]
      398 SETLIST                          R13 R14 3 [1]
      400 SETTABLEKS                       R13 R10 K166 ["IMAGE_TYPES"]
      402 LOADK                            R13 K167 ["Success"]
      403 SETTABLEKS                       R13 R10 K168 ["TAGS_SUGGESTION_SUCCESS"]
      405 LOADN                            R13 5
      406 SETTABLEKS                       R13 R10 K169 ["MAX_DISPLAY_SUGGESTIONS"]
      408 LOADN                            R13 10
      409 SETTABLEKS                       R13 R10 K170 ["MAX_FETCH_SUGGESTIONS"]
      411 LOADK                            R13 K171 ["avatar_meshpart_accessory"]
      412 SETTABLEKS                       R13 R10 K172 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
      414 LOADK                            R13 K173 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
      415 SETTABLEKS                       R13 R10 K174 ["MULTIPART_FORM_BOUNDARY"]
      417 LOADK                            R13 K175 ["OverrideAssetId"]
      418 SETTABLEKS                       R13 R10 K176 ["OVERRIDE_ASSET_ID"]
      420 DUPTABLE                         R13 K181 [{["Public"] = True, ["Private"] = False}]
      421 SETTABLEKS                       R13 R10 K182 ["SHARING_KEYS"]
      423 NEWTABLE                         R13 0 3
      425 LOADK                            R14 K183 ["Body"]
      426 LOADK                            R15 K184 ["DynamicHead"]
      427 LOADK                            R16 K185 ["Shoes"]
      428 SETLIST                          R13 R14 3 [1]
      430 MOVE                             R14 R5
      431 CALL                             R14 0 1
      432 JUMPIFNOT                        R14 ; [+7]
      433 FASTCALL2K                       TABLE_INSERT R13 K186 ; [+5]
      435 MOVE                             R15 R13
      436 LOADK                            R16 K186 ["AvatarAnimations"]
      437 GETIMPORT                        R14 K189 [table.insert]
      439 CALL                             R14 2 0
      440 NEWTABLE                         R14 0 0
      442 SETTABLEKS                       R14 R10 K190 ["UGCBundleTypes"]
      444 GETIMPORT                        R14 K192 [ipairs]
      446 MOVE                             R15 R13
      447 CALL                             R14 1 3
      448 FORGPREP_INEXT                   R14
      449 DUPTABLE                         R19 K194 [{"Name", "Value"}]
      450 SETTABLEKS                       R18 R19 K54 ["Name"]
      452 SETTABLEKS                       R17 R19 K193 ["Value"]
      454 GETTABLEKS                       R20 R10 K190 ["UGCBundleTypes"]
      456 SETTABLE                         R19 R20 R18
      457 NEWCLOSURE                       R20 P4
      458 CAPTURE                          VAL R19
      459 SETTABLEKS                       R20 R19 K195 ["rawValue"]
      461 FORGLOOP                         R14 2 [inext] ; [-13]
      463 NEWTABLE                         R14 4 0
      465 GETTABLEKS                       R15 R10 K190 ["UGCBundleTypes"]
      467 GETTABLEKS                       R15 R15 K183 ["Body"]
      469 GETTABLEKS                       R15 R15 K195 ["rawValue"]
      471 CALL                             R15 0 1
      472 GETTABLEKS                       R16 R10 K190 ["UGCBundleTypes"]
      474 GETTABLEKS                       R16 R16 K183 ["Body"]
      476 SETTABLE                         R16 R14 R15
      477 GETTABLEKS                       R15 R10 K190 ["UGCBundleTypes"]
      479 GETTABLEKS                       R15 R15 K184 ["DynamicHead"]
      481 GETTABLEKS                       R15 R15 K195 ["rawValue"]
      483 CALL                             R15 0 1
      484 GETTABLEKS                       R16 R10 K190 ["UGCBundleTypes"]
      486 GETTABLEKS                       R16 R16 K184 ["DynamicHead"]
      488 SETTABLE                         R16 R14 R15
      489 GETTABLEKS                       R15 R10 K190 ["UGCBundleTypes"]
      491 GETTABLEKS                       R15 R15 K185 ["Shoes"]
      493 GETTABLEKS                       R15 R15 K195 ["rawValue"]
      495 CALL                             R15 0 1
      496 GETTABLEKS                       R16 R10 K190 ["UGCBundleTypes"]
      498 GETTABLEKS                       R16 R16 K185 ["Shoes"]
      500 SETTABLE                         R16 R14 R15
      501 SETTABLEKS                       R14 R10 K196 ["UGCBundleTypeStringToEnumeration"]
      503 MOVE                             R14 R5
      504 CALL                             R14 0 1
      505 JUMPIFNOT                        R14 ; [+14]
      506 GETTABLEKS                       R14 R10 K196 ["UGCBundleTypeStringToEnumeration"]
      508 GETTABLEKS                       R15 R10 K190 ["UGCBundleTypes"]
      510 GETTABLEKS                       R15 R15 K186 ["AvatarAnimations"]
      512 GETTABLEKS                       R15 R15 K195 ["rawValue"]
      514 CALL                             R15 0 1
      515 GETTABLEKS                       R16 R10 K190 ["UGCBundleTypes"]
      517 GETTABLEKS                       R16 R16 K186 ["AvatarAnimations"]
      519 SETTABLE                         R16 R14 R15
      520 NEWTABLE                         R14 16 0
      522 GETIMPORT                        R15 K197 [Enum.AssetType.DynamicHead]
      524 SETTABLEKS                       R15 R14 K184 ["DynamicHead"]
      526 GETIMPORT                        R15 K199 [Enum.AssetType.LeftArm]
      528 SETTABLEKS                       R15 R14 K198 ["LeftArm"]
      530 GETIMPORT                        R15 K201 [Enum.AssetType.LeftLeg]
      532 SETTABLEKS                       R15 R14 K200 ["LeftLeg"]
      534 GETIMPORT                        R15 K203 [Enum.AssetType.RightArm]
      536 SETTABLEKS                       R15 R14 K202 ["RightArm"]
      538 GETIMPORT                        R15 K205 [Enum.AssetType.RightLeg]
      540 SETTABLEKS                       R15 R14 K204 ["RightLeg"]
      542 GETIMPORT                        R15 K207 [Enum.AssetType.Torso]
      544 SETTABLEKS                       R15 R14 K206 ["Torso"]
      546 GETIMPORT                        R15 K209 [Enum.AssetType.EyebrowAccessory]
      548 SETTABLEKS                       R15 R14 K208 ["EyebrowAccessory"]
      550 GETIMPORT                        R15 K211 [Enum.AssetType.EyelashAccessory]
      552 SETTABLEKS                       R15 R14 K210 ["EyelashAccessory"]
      554 GETIMPORT                        R15 K213 [Enum.AssetType.HairAccessory]
      556 SETTABLEKS                       R15 R14 K212 ["HairAccessory"]
      558 GETIMPORT                        R15 K215 [Enum.AssetType.LeftShoeAccessory]
      560 SETTABLEKS                       R15 R14 K214 ["LeftShoeAccessory"]
      562 GETIMPORT                        R15 K217 [Enum.AssetType.RightShoeAccessory]
      564 SETTABLEKS                       R15 R14 K216 ["RightShoeAccessory"]
      566 SETTABLEKS                       R14 R10 K218 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      568 MOVE                             R14 R5
      569 CALL                             R14 0 1
      570 JUMPIFNOT                        R14 ; [+42]
      571 GETTABLEKS                       R14 R10 K218 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      573 GETIMPORT                        R15 K220 [Enum.AssetType.ClimbAnimation]
      575 SETTABLEKS                       R15 R14 K219 ["ClimbAnimation"]
      577 GETTABLEKS                       R14 R10 K218 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      579 GETIMPORT                        R15 K222 [Enum.AssetType.FallAnimation]
      581 SETTABLEKS                       R15 R14 K221 ["FallAnimation"]
      583 GETTABLEKS                       R14 R10 K218 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      585 GETIMPORT                        R15 K224 [Enum.AssetType.IdleAnimation]
      587 SETTABLEKS                       R15 R14 K223 ["IdleAnimation"]
      589 GETTABLEKS                       R14 R10 K218 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      591 GETIMPORT                        R15 K226 [Enum.AssetType.JumpAnimation]
      593 SETTABLEKS                       R15 R14 K225 ["JumpAnimation"]
      595 GETTABLEKS                       R14 R10 K218 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      597 GETIMPORT                        R15 K228 [Enum.AssetType.RunAnimation]
      599 SETTABLEKS                       R15 R14 K227 ["RunAnimation"]
      601 GETTABLEKS                       R14 R10 K218 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      603 GETIMPORT                        R15 K230 [Enum.AssetType.SwimAnimation]
      605 SETTABLEKS                       R15 R14 K229 ["SwimAnimation"]
      607 GETTABLEKS                       R14 R10 K218 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      609 GETIMPORT                        R15 K232 [Enum.AssetType.WalkAnimation]
      611 SETTABLEKS                       R15 R14 K231 ["WalkAnimation"]
      613 DUPTABLE                         R14 K248 [{["Head"] = "Head", ["UpperTorso"] = "UpperTorso", ["LowerTorso"] = "LowerTorso", ["LeftUpperLeg"] = "LeftUpperLeg", ["LeftLowerLeg"] = "LeftLowerLeg", ["LeftHand"] = "LeftHand", ["RightUpperArm"] = "RightUpperArm", ["RightLowerArm"] = "RightLowerArm", ["RightHand"] = "RightHand", ["LeftUpperArm"] = "LeftUpperArm", ["LeftLowerArm"] = "LeftLowerArm", ["LeftFoot"] = "LeftFoot", ["RightUpperLeg"] = "RightUpperLeg", ["RightLowerLeg"] = "RightLowerLeg", ["RightFoot"] = "RightFoot", ["EyebrowAccessory"] = "EyebrowAccessory", ["EyelashAccessory"] = "EyelashAccessory", ["HairAccessory"] = "HairAccessory"}]
      614 SETTABLEKS                       R14 R10 K249 ["UGC_BODY_PARTS"]
      616 DUPTABLE                         R14 K250 [{["LeftShoeAccessory"] = "LeftShoeAccessory", ["RightShoeAccessory"] = "RightShoeAccessory"}]
      617 SETTABLEKS                       R14 R10 K251 ["UGC_BUNDLE_PARTS"]
      619 NEWTABLE                         R14 32 0
      621 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      623 GETTABLEKS                       R15 R15 K233 ["Head"]
      625 GETIMPORT                        R16 K197 [Enum.AssetType.DynamicHead]
      627 SETTABLE                         R16 R14 R15
      628 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      630 GETTABLEKS                       R15 R15 K234 ["UpperTorso"]
      632 GETIMPORT                        R16 K207 [Enum.AssetType.Torso]
      634 SETTABLE                         R16 R14 R15
      635 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      637 GETTABLEKS                       R15 R15 K235 ["LowerTorso"]
      639 GETIMPORT                        R16 K207 [Enum.AssetType.Torso]
      641 SETTABLE                         R16 R14 R15
      642 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      644 GETTABLEKS                       R15 R15 K242 ["LeftUpperArm"]
      646 GETIMPORT                        R16 K199 [Enum.AssetType.LeftArm]
      648 SETTABLE                         R16 R14 R15
      649 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      651 GETTABLEKS                       R15 R15 K243 ["LeftLowerArm"]
      653 GETIMPORT                        R16 K199 [Enum.AssetType.LeftArm]
      655 SETTABLE                         R16 R14 R15
      656 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      658 GETTABLEKS                       R15 R15 K238 ["LeftHand"]
      660 GETIMPORT                        R16 K199 [Enum.AssetType.LeftArm]
      662 SETTABLE                         R16 R14 R15
      663 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      665 GETTABLEKS                       R15 R15 K239 ["RightUpperArm"]
      667 GETIMPORT                        R16 K203 [Enum.AssetType.RightArm]
      669 SETTABLE                         R16 R14 R15
      670 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      672 GETTABLEKS                       R15 R15 K240 ["RightLowerArm"]
      674 GETIMPORT                        R16 K203 [Enum.AssetType.RightArm]
      676 SETTABLE                         R16 R14 R15
      677 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      679 GETTABLEKS                       R15 R15 K241 ["RightHand"]
      681 GETIMPORT                        R16 K203 [Enum.AssetType.RightArm]
      683 SETTABLE                         R16 R14 R15
      684 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      686 GETTABLEKS                       R15 R15 K236 ["LeftUpperLeg"]
      688 GETIMPORT                        R16 K201 [Enum.AssetType.LeftLeg]
      690 SETTABLE                         R16 R14 R15
      691 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      693 GETTABLEKS                       R15 R15 K237 ["LeftLowerLeg"]
      695 GETIMPORT                        R16 K201 [Enum.AssetType.LeftLeg]
      697 SETTABLE                         R16 R14 R15
      698 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      700 GETTABLEKS                       R15 R15 K244 ["LeftFoot"]
      702 GETIMPORT                        R16 K201 [Enum.AssetType.LeftLeg]
      704 SETTABLE                         R16 R14 R15
      705 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      707 GETTABLEKS                       R15 R15 K245 ["RightUpperLeg"]
      709 GETIMPORT                        R16 K205 [Enum.AssetType.RightLeg]
      711 SETTABLE                         R16 R14 R15
      712 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      714 GETTABLEKS                       R15 R15 K246 ["RightLowerLeg"]
      716 GETIMPORT                        R16 K205 [Enum.AssetType.RightLeg]
      718 SETTABLE                         R16 R14 R15
      719 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      721 GETTABLEKS                       R15 R15 K247 ["RightFoot"]
      723 GETIMPORT                        R16 K205 [Enum.AssetType.RightLeg]
      725 SETTABLE                         R16 R14 R15
      726 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      728 GETTABLEKS                       R15 R15 K208 ["EyebrowAccessory"]
      730 GETIMPORT                        R16 K209 [Enum.AssetType.EyebrowAccessory]
      732 SETTABLE                         R16 R14 R15
      733 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      735 GETTABLEKS                       R15 R15 K210 ["EyelashAccessory"]
      737 GETIMPORT                        R16 K211 [Enum.AssetType.EyelashAccessory]
      739 SETTABLE                         R16 R14 R15
      740 GETTABLEKS                       R15 R10 K249 ["UGC_BODY_PARTS"]
      742 GETTABLEKS                       R15 R15 K212 ["HairAccessory"]
      744 GETIMPORT                        R16 K213 [Enum.AssetType.HairAccessory]
      746 SETTABLE                         R16 R14 R15
      747 SETTABLEKS                       R14 R10 K252 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      749 NEWTABLE                         R14 2 0
      751 GETTABLEKS                       R15 R10 K251 ["UGC_BUNDLE_PARTS"]
      753 GETTABLEKS                       R15 R15 K214 ["LeftShoeAccessory"]
      755 GETIMPORT                        R16 K215 [Enum.AssetType.LeftShoeAccessory]
      757 SETTABLE                         R16 R14 R15
      758 GETTABLEKS                       R15 R10 K251 ["UGC_BUNDLE_PARTS"]
      760 GETTABLEKS                       R15 R15 K216 ["RightShoeAccessory"]
      762 GETIMPORT                        R16 K217 [Enum.AssetType.RightShoeAccessory]
      764 SETTABLE                         R16 R14 R15
      765 SETTABLEKS                       R14 R10 K253 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
      767 MOVE                             R14 R5
      768 CALL                             R14 0 1
      769 JUMPIFNOT                        R14 ; [+133]
      770 DUPTABLE                         R14 K254 [{["ClimbAnimation"] = "ClimbAnimation", ["FallAnimation"] = "FallAnimation", ["IdleAnimation"] = "IdleAnimation", ["JumpAnimation"] = "JumpAnimation", ["RunAnimation"] = "RunAnimation", ["SwimAnimation"] = "SwimAnimation", ["WalkAnimation"] = "WalkAnimation"}]
      771 SETTABLEKS                       R14 R10 K255 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      773 NEWTABLE                         R14 8 0
      775 GETTABLEKS                       R15 R10 K255 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      777 GETTABLEKS                       R15 R15 K219 ["ClimbAnimation"]
      779 GETIMPORT                        R16 K220 [Enum.AssetType.ClimbAnimation]
      781 SETTABLE                         R16 R14 R15
      782 GETTABLEKS                       R15 R10 K255 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      784 GETTABLEKS                       R15 R15 K221 ["FallAnimation"]
      786 GETIMPORT                        R16 K222 [Enum.AssetType.FallAnimation]
      788 SETTABLE                         R16 R14 R15
      789 GETTABLEKS                       R15 R10 K255 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      791 GETTABLEKS                       R15 R15 K223 ["IdleAnimation"]
      793 GETIMPORT                        R16 K224 [Enum.AssetType.IdleAnimation]
      795 SETTABLE                         R16 R14 R15
      796 GETTABLEKS                       R15 R10 K255 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      798 GETTABLEKS                       R15 R15 K225 ["JumpAnimation"]
      800 GETIMPORT                        R16 K226 [Enum.AssetType.JumpAnimation]
      802 SETTABLE                         R16 R14 R15
      803 GETTABLEKS                       R15 R10 K255 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      805 GETTABLEKS                       R15 R15 K227 ["RunAnimation"]
      807 GETIMPORT                        R16 K228 [Enum.AssetType.RunAnimation]
      809 SETTABLE                         R16 R14 R15
      810 GETTABLEKS                       R15 R10 K255 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      812 GETTABLEKS                       R15 R15 K229 ["SwimAnimation"]
      814 GETIMPORT                        R16 K230 [Enum.AssetType.SwimAnimation]
      816 SETTABLE                         R16 R14 R15
      817 GETTABLEKS                       R15 R10 K255 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      819 GETTABLEKS                       R15 R15 K231 ["WalkAnimation"]
      821 GETIMPORT                        R16 K232 [Enum.AssetType.WalkAnimation]
      823 SETTABLE                         R16 R14 R15
      824 SETTABLEKS                       R14 R10 K256 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
      826 DUPTABLE                         R14 K257 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      827 NEWTABLE                         R15 0 1
      829 LOADK                            R16 K258 ["climb"]
      830 SETLIST                          R15 R16 1 [1]
      832 SETTABLEKS                       R15 R14 K219 ["ClimbAnimation"]
      834 NEWTABLE                         R15 0 1
      836 LOADK                            R16 K259 ["fall"]
      837 SETLIST                          R15 R16 1 [1]
      839 SETTABLEKS                       R15 R14 K221 ["FallAnimation"]
      841 NEWTABLE                         R15 0 1
      843 LOADK                            R16 K260 ["idle"]
      844 SETLIST                          R15 R16 1 [1]
      846 SETTABLEKS                       R15 R14 K223 ["IdleAnimation"]
      848 NEWTABLE                         R15 0 1
      850 LOADK                            R16 K261 ["jump"]
      851 SETLIST                          R15 R16 1 [1]
      853 SETTABLEKS                       R15 R14 K225 ["JumpAnimation"]
      855 NEWTABLE                         R15 0 1
      857 LOADK                            R16 K262 ["run"]
      858 SETLIST                          R15 R16 1 [1]
      860 SETTABLEKS                       R15 R14 K227 ["RunAnimation"]
      862 NEWTABLE                         R15 0 2
      864 LOADK                            R16 K263 ["swim"]
      865 LOADK                            R17 K264 ["swimidle"]
      866 SETLIST                          R15 R16 2 [1]
      868 SETTABLEKS                       R15 R14 K229 ["SwimAnimation"]
      870 NEWTABLE                         R15 0 1
      872 LOADK                            R16 K265 ["walk"]
      873 SETLIST                          R15 R16 1 [1]
      875 SETTABLEKS                       R15 R14 K231 ["WalkAnimation"]
      877 SETTABLEKS                       R14 R10 K266 ["AVATAR_ANIMATION_SUB_NAMES"]
      879 DUPTABLE                         R14 K257 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      880 DUPTABLE                         R15 K268 [{["climb"] = "ClimbAnim"}]
      881 SETTABLEKS                       R15 R14 K219 ["ClimbAnimation"]
      883 DUPTABLE                         R15 K270 [{["fall"] = "FallAnim"}]
      884 SETTABLEKS                       R15 R14 K221 ["FallAnimation"]
      886 DUPTABLE                         R15 K272 [{["idle"] = }]
      887 SETTABLEKS                       R15 R14 K223 ["IdleAnimation"]
      889 DUPTABLE                         R15 K274 [{["jump"] = "JumpAnim"}]
      890 SETTABLEKS                       R15 R14 K225 ["JumpAnimation"]
      892 DUPTABLE                         R15 K276 [{["run"] = "RunAnim"}]
      893 SETTABLEKS                       R15 R14 K227 ["RunAnimation"]
      895 DUPTABLE                         R15 K279 [{["swim"] = "SwimAnim", ["swimidle"] = "SwimIdleAnim"}]
      896 SETTABLEKS                       R15 R14 K229 ["SwimAnimation"]
      898 DUPTABLE                         R15 K281 [{["walk"] = "WalkAnim"}]
      899 SETTABLEKS                       R15 R14 K231 ["WalkAnimation"]
      901 SETTABLEKS                       R14 R10 K282 ["AVATAR_ANIMATION_INSTANCE_NAMES"]
      903 MOVE                             R14 R3
      904 CALL                             R14 0 1
      905 JUMPIFNOT                        R14 ; [+18]
      906 DUPTABLE                         R14 K286 [{["Classic"] = "Classic", ["ProportionsNormal"] = "ProportionsNormal", ["ProportionsSlender"] = "ProportionsSlender", ["Unknown"] = "Unknown"}]
      907 SETTABLEKS                       R14 R10 K287 ["BodyScaleTypes"]
      909 DUPTABLE                         R14 K288 [{"Classic", "ProportionsNormal", "ProportionsSlender"}]
      910 DUPTABLE                         R15 K296 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 0}]
      911 SETTABLEKS                       R15 R14 K283 ["Classic"]
      913 DUPTABLE                         R15 K297 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 1}]
      914 SETTABLEKS                       R15 R14 K284 ["ProportionsNormal"]
      916 DUPTABLE                         R15 K298 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 1, ["bodyType"] = 1}]
      917 SETTABLEKS                       R15 R14 K285 ["ProportionsSlender"]
      919 SETTABLEKS                       R14 R10 K299 ["BodyScaleDefaults"]
      921 DUPTABLE                         R14 K305 [{["height"] = "BodyHeightScale", ["width"] = "BodyWidthScale", ["head"] = "HeadScale", ["bodyType"] = "BodyTypeScale", ["proportion"] = "BodyProportionScale"}]
      922 SETTABLEKS                       R14 R10 K306 ["bodyScaleNameToString"]
      924 DUPTABLE                         R14 K316 [{["NONE"] = "None", ["BEGIN"] = "Begin", ["VALIDATING"] = "Validating", ["SUCCESS"] = "Success", ["FAILURE"] = "Failure"}]
      925 SETTABLEKS                       R14 R10 K317 ["VALIDATION_STATE"]
      927 MOVE                             R14 R4
      928 CALL                             R14 0 1
      929 JUMPIFNOT                        R14 ; [+8]
      930 NEWTABLE                         R14 0 2
      932 LOADK                            R15 K318 ["rbxassetid://"]
      933 LOADK                            R16 K319 ["https://assetdelivery"]
      934 SETLIST                          R14 R15 2 [1]
      936 SETTABLEKS                       R14 R10 K320 ["assetIdStringPatterns"]
      938 NEWTABLE                         R14 0 10
      940 GETIMPORT                        R15 K197 [Enum.AssetType.DynamicHead]
      942 GETIMPORT                        R16 K209 [Enum.AssetType.EyebrowAccessory]
      944 GETIMPORT                        R17 K211 [Enum.AssetType.EyelashAccessory]
      946 GETIMPORT                        R18 K199 [Enum.AssetType.LeftArm]
      948 GETIMPORT                        R19 K201 [Enum.AssetType.LeftLeg]
      950 GETIMPORT                        R20 K215 [Enum.AssetType.LeftShoeAccessory]
      952 GETIMPORT                        R21 K203 [Enum.AssetType.RightArm]
      954 GETIMPORT                        R22 K205 [Enum.AssetType.RightLeg]
      956 GETIMPORT                        R23 K217 [Enum.AssetType.RightShoeAccessory]
      958 GETIMPORT                        R24 K207 [Enum.AssetType.Torso]
      960 SETLIST                          R14 R15 10 [1]
      962 SETTABLEKS                       R14 R10 K321 ["BODY_PARTS"]
      964 MOVE                             R14 R7
      965 CALL                             R14 0 1
      966 JUMPIFNOT                        R14 ; [+16]
      967 NEWTABLE                         R14 0 5
      969 GETIMPORT                        R15 K209 [Enum.AssetType.EyebrowAccessory]
      971 GETIMPORT                        R16 K211 [Enum.AssetType.EyelashAccessory]
      973 GETIMPORT                        R17 K323 [Enum.AssetType.FaceMakeup]
      975 GETIMPORT                        R18 K325 [Enum.AssetType.LipMakeup]
      977 GETIMPORT                        R19 K327 [Enum.AssetType.EyeMakeup]
      979 SETLIST                          R14 R15 5 [1]
      981 SETTABLEKS                       R14 R10 K328 ["MAKEUP_ASSET_TYPES"]
      983 NEWTABLE                         R14 0 20
      985 GETIMPORT                        R15 K330 [Enum.AssetType.Hat]
      987 GETIMPORT                        R16 K213 [Enum.AssetType.HairAccessory]
      989 GETIMPORT                        R17 K332 [Enum.AssetType.FaceAccessory]
      991 GETIMPORT                        R18 K334 [Enum.AssetType.NeckAccessory]
      993 GETIMPORT                        R19 K336 [Enum.AssetType.ShoulderAccessory]
      995 GETIMPORT                        R20 K338 [Enum.AssetType.FrontAccessory]
      997 GETIMPORT                        R21 K340 [Enum.AssetType.BackAccessory]
      999 GETIMPORT                        R22 K342 [Enum.AssetType.WaistAccessory]
     1001 GETIMPORT                        R23 K344 [Enum.AssetType.TShirtAccessory]
     1003 GETIMPORT                        R24 K346 [Enum.AssetType.ShirtAccessory]
     1005 GETIMPORT                        R25 K348 [Enum.AssetType.PantsAccessory]
     1007 GETIMPORT                        R26 K350 [Enum.AssetType.JacketAccessory]
     1009 GETIMPORT                        R27 K352 [Enum.AssetType.SweaterAccessory]
     1011 GETIMPORT                        R28 K354 [Enum.AssetType.ShortsAccessory]
     1013 GETIMPORT                        R29 K356 [Enum.AssetType.DressSkirtAccessory]
     1015 GETIMPORT                        R30 K209 [Enum.AssetType.EyebrowAccessory]
     1017 SETLIST                          R14 R15 16 [1]
     1019 GETIMPORT                        R15 K211 [Enum.AssetType.EyelashAccessory]
     1021 GETIMPORT                        R16 K323 [Enum.AssetType.FaceMakeup]
     1023 GETIMPORT                        R17 K325 [Enum.AssetType.LipMakeup]
     1025 GETIMPORT                        R18 K327 [Enum.AssetType.EyeMakeup]
     1027 SETLIST                          R14 R15 4 [17]
     1029 SETTABLEKS                       R14 R10 K357 ["AVATAR_ITEM_UPDATE_ASSET_TYPES"]
     1031 MOVE                             R14 R6
     1032 CALL                             R14 0 1
     1033 JUMPIFNOT                        R14 ; [+9]
     1034 GETTABLEKS                       R15 R10 K121 ["ASSET_TYPES_2D"]
     1036 GETIMPORT                        R16 K359 [Enum.AssetType.AvatarBackground]
     1038 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
     1040 GETIMPORT                        R14 K189 [table.insert]
     1042 CALL                             R14 2 0
     1043 RETURN                           R10 1
