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
       60 GETUPVAL                         R1 1
       61 CALL                             R1 0 1
       62 JUMPIFNOT                        R1 ; [+13]
       63 GETUPVAL                         R2 0
       64 GETTABLEKS                       R2 R2 K0 ["ASSET_TYPE_INFO"]
       66 LOADN                            R3 3
       67 GETIMPORT                        R5 K30 [Enum.AssetType.Image]
       69 DUPTABLE                         R4 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       70 SETTABLEKS                       R5 R4 K6 ["type"]
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R1 K33 [table.insert]
       75 CALL                             R1 3 0
       76 NEWTABLE                         R1 0 0
       78 GETUPVAL                         R2 2
       79 CALL                             R2 0 1
       80 JUMPIFNOT                        R2 ; [+16]
       81 GETIMPORT                        R2 K35 [ipairs]
       83 MOVE                             R3 R0
       84 CALL                             R2 1 3
       85 FORGPREP_INEXT                   R2
       86 GETIMPORT                        R7 K37 [pcall]
       88 NEWCLOSURE                       R8 P0
       89 CAPTURE                          REF R6
       90 CAPTURE                          UPVAL U0
       91 CAPTURE                          REF R1
       92 CALL                             R7 1 1
       93 CLOSEUPVALS                      R6
       94 FORGLOOP                         R2 2 [inext] ; [-9]
       96 JUMP                             ; [+1]
       97 MOVE                             R1 R0
       98 GETIMPORT                        R2 K35 [ipairs]
      100 MOVE                             R3 R1
      101 CALL                             R2 1 3
      102 FORGPREP_INEXT                   R2
      103 GETUPVAL                         R7 2
      104 CALL                             R7 0 1
      105 JUMPIF                           R7 ; [+6]
      106 GETUPVAL                         R7 0
      107 GETTABLEKS                       R7 R7 K38 ["getNormalizedAssetString"]
      109 MOVE                             R8 R6
      110 CALL                             R7 1 1
      111 MOVE                             R6 R7
      112 GETIMPORT                        R8 K39 [Enum.AssetType]
      114 GETTABLE                         R7 R8 R6
      115 JUMPIFNOT                        R7 ; [+25]
      116 GETIMPORT                        R8 K41 [table.find]
      118 GETUPVAL                         R9 0
      119 GETTABLEKS                       R9 R9 K42 ["ASSET_TYPES_2D"]
      121 MOVE                             R10 R7
      122 CALL                             R8 2 1
      123 GETUPVAL                         R10 0
      124 GETTABLEKS                       R10 R10 K0 ["ASSET_TYPE_INFO"]
      126 NOT                              R12 R8
      127 DUPTABLE                         R11 K45 [{["type"], ["isCatalog"] = True, ["isUploadable"]}]
      128 SETTABLEKS                       R7 R11 K6 ["type"]
      130 JUMPIFEQKB                       R12 TRUE ; [+2]
      132 LOADB                            R13 0 +1
      133 LOADB                            R13 1
      134 SETTABLEKS                       R13 R11 K44 ["isUploadable"]
      136 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      138 GETIMPORT                        R9 K33 [table.insert]
      140 CALL                             R9 2 0
      141 FORGLOOP                         R2 2 [inext] ; [-39]
      143 GETIMPORT                        R2 K35 [ipairs]
      145 GETUPVAL                         R3 0
      146 GETTABLEKS                       R3 R3 K0 ["ASSET_TYPE_INFO"]
      148 CALL                             R2 1 3
      149 FORGPREP_INEXT                   R2
      150 GETIMPORT                        R8 K47 [next]
      152 MOVE                             R9 R6
      153 CALL                             R8 1 1
      154 JUMPIFNOTEQKNIL                  R8 ; [+2]
      156 LOADB                            R7 0 +1
      157 LOADB                            R7 1
      158 JUMPIFNOT                        R7 ; [+42]
      159 GETTABLEKS                       R8 R6 K43 ["isCatalog"]
      161 JUMPIFNOT                        R8 ; [+15]
      162 GETTABLEKS                       R8 R6 K7 ["isMarketplace"]
      164 JUMPIFNOT                        R8 ; [+12]
      165 GETIMPORT                        R8 K49 [error]
      167 GETTABLEKS                       R13 R6 K6 ["type"]
      169 FASTCALL1                        TOSTRING R13 ; [+2]
      170 GETIMPORT                        R12 K51 [tostring]
      172 CALL                             R12 1 1
      173 MOVE                             R10 R12
      174 LOADK                            R11 K52 [" cannot be both a catalog and marketplace asset"]
      175 CONCAT                           R9 R10 R11
      176 CALL                             R8 1 0
      177 GETUPVAL                         R9 0
      178 GETTABLEKS                       R9 R9 K0 ["ASSET_TYPE_INFO"]
      180 GETTABLEKS                       R10 R6 K6 ["type"]
      182 GETTABLE                         R8 R9 R10
      183 JUMPIFNOT                        R8 ; [+11]
      184 GETIMPORT                        R8 K49 [error]
      186 LOADK                            R10 K53 ["AssetConfigConstants.ASSET_TYPE_INFO contains a duplicate of "]
      187 GETTABLEKS                       R12 R6 K6 ["type"]
      189 FASTCALL1                        TOSTRING R12 ; [+2]
      190 GETIMPORT                        R11 K51 [tostring]
      192 CALL                             R11 1 1
      193 CONCAT                           R9 R10 R11
      194 CALL                             R8 1 0
      195 GETUPVAL                         R8 0
      196 GETTABLEKS                       R8 R8 K0 ["ASSET_TYPE_INFO"]
      198 GETTABLEKS                       R9 R6 K6 ["type"]
      200 SETTABLE                         R6 R8 R9
      201 FORGLOOP                         R2 2 [inext] ; [-52]
      203 CLOSEUPVALS                      R1
      204 RETURN                           R0 0

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
       56 GETTABLEKS                       R8 R0 K7 ["Src"]
       58 GETTABLEKS                       R8 R8 K11 ["Flags"]
       60 GETTABLEKS                       R8 R8 K15 ["getFFlagToolboxEnableExtendedVersioning"]
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
       97 LOADK                            R10 K28 ["Rejected"]
       98 SETTABLEKS                       R10 R9 K29 ["MODERATION_STATE_REJECTED"]
      100 LOADN                            R10 180
      101 SETTABLEKS                       R10 R9 K30 ["TITLE_GUTTER_WIDTH"]
      103 GETIMPORT                        R10 K33 [UDim2.new]
      105 LOADN                            R11 0
      106 LOADN                            R12 150
      107 LOADN                            R13 0
      108 LOADN                            R14 200
      109 CALL                             R10 4 1
      110 SETTABLEKS                       R10 R9 K34 ["OverrideAssetItemSize"]
      112 MOVE                             R10 R8
      113 NEWTABLE                         R11 0 3
      115 LOADK                            R12 K35 ["ImagePicker"]
      116 LOADK                            R13 K36 ["Thumbnail"]
      117 LOADK                            R14 K37 ["ModelPreview"]
      118 SETLIST                          R11 R12 3 [1]
      120 CALL                             R10 1 1
      121 SETTABLEKS                       R10 R9 K38 ["PreviewTypes"]
      123 MOVE                             R10 R8
      124 NEWTABLE                         R11 0 5
      126 LOADK                            R12 K39 ["Sales"]
      127 LOADK                            R13 K40 ["General"]
      128 LOADK                            R14 K41 ["Versions"]
      129 LOADK                            R15 K42 ["Override"]
      130 LOADK                            R16 K43 ["Permissions"]
      131 SETLIST                          R11 R12 5 [1]
      133 CALL                             R10 1 1
      134 SETTABLEKS                       R10 R9 K44 ["SIDE_TABS"]
      136 MOVE                             R10 R8
      137 NEWTABLE                         R11 0 3
      139 LOADK                            R12 K45 ["Title"]
      140 LOADK                            R13 K46 ["Description"]
      141 LOADK                            R14 K47 ["Price"]
      142 SETLIST                          R11 R12 3 [1]
      144 CALL                             R10 1 1
      145 SETTABLEKS                       R10 R9 K48 ["FIELD_NAMES"]
      147 NEWTABLE                         R10 0 14
      149 DUPTABLE                         R11 K50 [{"name"}]
      150 GETIMPORT                        R12 K54 [Enum.Genre.All]
      152 GETTABLEKS                       R12 R12 K55 ["Name"]
      154 SETTABLEKS                       R12 R11 K49 ["name"]
      156 DUPTABLE                         R12 K50 [{"name"}]
      157 GETIMPORT                        R13 K57 [Enum.Genre.TownAndCity]
      159 GETTABLEKS                       R13 R13 K55 ["Name"]
      161 SETTABLEKS                       R13 R12 K49 ["name"]
      163 DUPTABLE                         R13 K50 [{"name"}]
      164 GETIMPORT                        R14 K59 [Enum.Genre.Fantasy]
      166 GETTABLEKS                       R14 R14 K55 ["Name"]
      168 SETTABLEKS                       R14 R13 K49 ["name"]
      170 DUPTABLE                         R14 K50 [{"name"}]
      171 GETIMPORT                        R15 K61 [Enum.Genre.SciFi]
      173 GETTABLEKS                       R15 R15 K55 ["Name"]
      175 SETTABLEKS                       R15 R14 K49 ["name"]
      177 DUPTABLE                         R15 K50 [{"name"}]
      178 GETIMPORT                        R16 K63 [Enum.Genre.Ninja]
      180 GETTABLEKS                       R16 R16 K55 ["Name"]
      182 SETTABLEKS                       R16 R15 K49 ["name"]
      184 DUPTABLE                         R16 K50 [{"name"}]
      185 GETIMPORT                        R17 K65 [Enum.Genre.Scary]
      187 GETTABLEKS                       R17 R17 K55 ["Name"]
      189 SETTABLEKS                       R17 R16 K49 ["name"]
      191 DUPTABLE                         R17 K50 [{"name"}]
      192 GETIMPORT                        R18 K67 [Enum.Genre.Pirate]
      194 GETTABLEKS                       R18 R18 K55 ["Name"]
      196 SETTABLEKS                       R18 R17 K49 ["name"]
      198 DUPTABLE                         R18 K50 [{"name"}]
      199 GETIMPORT                        R19 K69 [Enum.Genre.Adventure]
      201 GETTABLEKS                       R19 R19 K55 ["Name"]
      203 SETTABLEKS                       R19 R18 K49 ["name"]
      205 DUPTABLE                         R19 K50 [{"name"}]
      206 GETIMPORT                        R20 K71 [Enum.Genre.Sports]
      208 GETTABLEKS                       R20 R20 K55 ["Name"]
      210 SETTABLEKS                       R20 R19 K49 ["name"]
      212 DUPTABLE                         R20 K50 [{"name"}]
      213 GETIMPORT                        R21 K73 [Enum.Genre.Funny]
      215 GETTABLEKS                       R21 R21 K55 ["Name"]
      217 SETTABLEKS                       R21 R20 K49 ["name"]
      219 DUPTABLE                         R21 K50 [{"name"}]
      220 GETIMPORT                        R22 K75 [Enum.Genre.WildWest]
      222 GETTABLEKS                       R22 R22 K55 ["Name"]
      224 SETTABLEKS                       R22 R21 K49 ["name"]
      226 DUPTABLE                         R22 K50 [{"name"}]
      227 GETIMPORT                        R23 K77 [Enum.Genre.War]
      229 GETTABLEKS                       R23 R23 K55 ["Name"]
      231 SETTABLEKS                       R23 R22 K49 ["name"]
      233 DUPTABLE                         R23 K50 [{"name"}]
      234 GETIMPORT                        R24 K79 [Enum.Genre.SkatePark]
      236 GETTABLEKS                       R24 R24 K55 ["Name"]
      238 SETTABLEKS                       R24 R23 K49 ["name"]
      240 DUPTABLE                         R24 K50 [{"name"}]
      241 GETIMPORT                        R25 K81 [Enum.Genre.Tutorial]
      243 GETTABLEKS                       R25 R25 K55 ["Name"]
      245 SETTABLEKS                       R25 R24 K49 ["name"]
      247 SETLIST                          R10 R11 14 [1]
      249 SETTABLEKS                       R10 R9 K82 ["GENRE_TYPE"]
      251 MOVE                             R10 R8
      252 NEWTABLE                         R11 0 3
      254 LOADK                            R12 K83 ["EDIT_FLOW"]
      255 LOADK                            R13 K84 ["UPLOAD_FLOW"]
      256 LOADK                            R14 K85 ["DOWNLOAD_FLOW"]
      257 SETLIST                          R11 R12 3 [1]
      259 CALL                             R10 1 1
      260 SETTABLEKS                       R10 R9 K86 ["FLOW_TYPE"]
      262 MOVE                             R10 R8
      263 NEWTABLE                         R11 0 4
      265 LOADK                            R12 K87 ["ASSET_TYPE_SELECTION"]
      266 LOADK                            R13 K88 ["CONFIGURE_ASSET"]
      267 LOADK                            R14 K89 ["UPLOADING_ASSET"]
      268 LOADK                            R15 K90 ["UPLOAD_ASSET_RESULT"]
      269 SETLIST                          R11 R12 4 [1]
      271 CALL                             R10 1 1
      272 SETTABLEKS                       R10 R9 K91 ["SCREENS"]
      274 MOVE                             R10 R8
      275 NEWTABLE                         R11 0 8
      277 LOADK                            R12 K92 ["Unknown"]
      278 LOADK                            R13 K93 ["ReviewPending"]
      279 LOADK                            R14 K94 ["Moderated"]
      280 LOADK                            R15 K95 ["ReviewApproved"]
      281 LOADK                            R16 K96 ["OnSale"]
      282 LOADK                            R17 K97 ["OffSale"]
      283 LOADK                            R18 K98 ["DelayedRelease"]
      284 LOADK                            R19 K99 ["Free"]
      285 SETLIST                          R11 R12 8 [1]
      287 CALL                             R10 1 1
      288 SETTABLEKS                       R10 R9 K100 ["ASSET_STATUS"]
      290 MOVE                             R10 R8
      291 NEWTABLE                         R11 0 10
      293 LOADK                            R12 K101 ["AssetType"]
      294 LOADK                            R13 K102 ["Authorization"]
      295 LOADK                            R14 K103 ["Invalid"]
      296 LOADK                            R15 K104 ["KillSwitch"]
      297 LOADK                            R16 K105 ["Quota"]
      298 LOADK                            R17 K106 ["SafetyStatus"]
      299 LOADK                            R18 K107 ["SellerAccountNotOnboarded"]
      300 LOADK                            R19 K108 ["SellerAccountRestricted"]
      301 LOADK                            R20 K109 ["UnsupportedAssetOwner"]
      302 LOADK                            R21 K110 ["Verification"]
      303 SETLIST                          R11 R12 10 [1]
      305 CALL                             R10 1 1
      306 SETTABLEKS                       R10 R9 K111 ["RESTRICTION_TYPE"]
      308 MOVE                             R10 R8
      309 NEWTABLE                         R11 0 1
      311 LOADK                            R12 K96 ["OnSale"]
      312 SETLIST                          R11 R12 1 [1]
      314 CALL                             R10 1 1
      315 SETTABLEKS                       R10 R9 K112 ["SALES_STATUS_FOR_PRICE"]
      317 DUPCLOSURE                       R10 K113 [PROTO_0]
      318 DUPCLOSURE                       R11 K114 [PROTO_1]
      319 NEWTABLE                         R12 0 0
      321 SETTABLEKS                       R12 R9 K115 ["ASSET_TYPE_INFO"]
      323 NEWTABLE                         R12 0 3
      325 GETIMPORT                        R13 K117 [Enum.AssetType.TShirt]
      327 GETIMPORT                        R14 K119 [Enum.AssetType.Shirt]
      329 GETIMPORT                        R15 K121 [Enum.AssetType.Pants]
      331 SETLIST                          R12 R13 3 [1]
      333 SETTABLEKS                       R12 R9 K122 ["ASSET_TYPES_2D"]
      335 DUPCLOSURE                       R12 K123 [PROTO_3]
      336 CAPTURE                          VAL R9
      337 CAPTURE                          VAL R7
      338 CAPTURE                          VAL R5
      339 SETTABLEKS                       R12 R9 K124 ["populateAssetTypeInfoFromNetwork"]
      341 DUPCLOSURE                       R12 K125 [PROTO_4]
      342 SETTABLEKS                       R12 R9 K126 ["getNormalizedAssetString"]
      344 MOVE                             R12 R8
      345 NEWTABLE                         R13 0 3
      347 LOADK                            R14 K127 ["WhitelistedPlugins"]
      348 LOADK                            R15 K128 ["MyPlugins"]
      349 LOADK                            R16 K129 ["GroupPlugins"]
      350 SETLIST                          R13 R14 3 [1]
      352 CALL                             R12 1 1
      353 SETTABLEKS                       R12 R9 K130 ["developCategoryType"]
      355 MOVE                             R12 R8
      356 NEWTABLE                         R13 0 2
      358 LOADK                            R14 K131 ["MyPackages"]
      359 LOADK                            R15 K132 ["GroupPackages"]
      360 SETLIST                          R13 R14 2 [1]
      362 CALL                             R12 1 1
      363 SETTABLEKS                       R12 R9 K133 ["packagesCategoryType"]
      365 MOVE                             R12 R8
      366 NEWTABLE                         R13 0 9
      368 LOADK                            R14 K134 ["Asset"]
      369 LOADK                            R15 K135 ["Avatar"]
      370 LOADK                            R16 K136 ["AvatarHeadShot"]
      371 LOADK                            R17 K137 ["BadgeIcon"]
      372 LOADK                            R18 K138 ["BundleThumbnail"]
      373 LOADK                            R19 K139 ["GameIcon"]
      374 LOADK                            R20 K140 ["GamePass"]
      375 LOADK                            R21 K141 ["GroupIcon"]
      376 LOADK                            R22 K142 ["Outfit"]
      377 SETLIST                          R13 R14 9 [1]
      379 CALL                             R12 1 1
      380 SETTABLEKS                       R12 R9 K143 ["rbxThumbTypes"]
      382 DUPTABLE                         R12 K150 [{["AvatarHeadshotImageSize"] = 60, ["GroupIconImageSize"] = 150, ["AssetThumbnailSize"] = 420}]
      383 SETTABLEKS                       R12 R9 K151 ["rbxThumbSizes"]
      385 DUPTABLE                         R12 K162 [{["MaxThumbnails"] = 5, ["AspectRatioHeight"] = 9, ["AspectRatioWidth"] = 16, ["RecommendedHeight"] = 432, ["RecommendedWidth"] = 768}]
      386 SETTABLEKS                       R12 R9 K163 ["additionalImages"]
      388 NEWTABLE                         R12 0 3
      390 LOADK                            R13 K164 ["jpg"]
      391 LOADK                            R14 K165 ["jpeg"]
      392 LOADK                            R15 K166 ["png"]
      393 SETLIST                          R12 R13 3 [1]
      395 SETTABLEKS                       R12 R9 K167 ["IMAGE_TYPES"]
      397 LOADK                            R12 K168 ["Success"]
      398 SETTABLEKS                       R12 R9 K169 ["TAGS_SUGGESTION_SUCCESS"]
      400 LOADN                            R12 5
      401 SETTABLEKS                       R12 R9 K170 ["MAX_DISPLAY_SUGGESTIONS"]
      403 LOADN                            R12 10
      404 SETTABLEKS                       R12 R9 K171 ["MAX_FETCH_SUGGESTIONS"]
      406 MOVE                             R12 R6
      407 CALL                             R12 0 1
      408 JUMPIF                           R12 ; [+6]
      409 LOADK                            R12 K172 ["avatar_meshpart_accessory"]
      410 SETTABLEKS                       R12 R9 K173 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
      412 LOADK                            R12 K174 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
      413 SETTABLEKS                       R12 R9 K175 ["MULTIPART_FORM_BOUNDARY"]
      415 LOADK                            R12 K176 ["OverrideAssetId"]
      416 SETTABLEKS                       R12 R9 K177 ["OVERRIDE_ASSET_ID"]
      418 DUPTABLE                         R12 K182 [{["Public"] = True, ["Private"] = False}]
      419 SETTABLEKS                       R12 R9 K183 ["SHARING_KEYS"]
      421 NEWTABLE                         R12 0 4
      423 LOADK                            R13 K184 ["Body"]
      424 LOADK                            R14 K185 ["DynamicHead"]
      425 LOADK                            R15 K186 ["Shoes"]
      426 LOADK                            R16 K187 ["AvatarAnimations"]
      427 SETLIST                          R12 R13 4 [1]
      429 NEWTABLE                         R13 0 0
      431 SETTABLEKS                       R13 R9 K188 ["UGCBundleTypes"]
      433 GETIMPORT                        R13 K190 [ipairs]
      435 MOVE                             R14 R12
      436 CALL                             R13 1 3
      437 FORGPREP_INEXT                   R13
      438 DUPTABLE                         R18 K192 [{"Name", "Value"}]
      439 SETTABLEKS                       R17 R18 K55 ["Name"]
      441 SETTABLEKS                       R16 R18 K191 ["Value"]
      443 GETTABLEKS                       R19 R9 K188 ["UGCBundleTypes"]
      445 SETTABLE                         R18 R19 R17
      446 NEWCLOSURE                       R19 P4
      447 CAPTURE                          VAL R18
      448 SETTABLEKS                       R19 R18 K193 ["rawValue"]
      450 FORGLOOP                         R13 2 [inext] ; [-13]
      452 NEWTABLE                         R13 4 0
      454 GETTABLEKS                       R14 R9 K188 ["UGCBundleTypes"]
      456 GETTABLEKS                       R14 R14 K184 ["Body"]
      458 GETTABLEKS                       R14 R14 K193 ["rawValue"]
      460 CALL                             R14 0 1
      461 GETTABLEKS                       R15 R9 K188 ["UGCBundleTypes"]
      463 GETTABLEKS                       R15 R15 K184 ["Body"]
      465 SETTABLE                         R15 R13 R14
      466 GETTABLEKS                       R14 R9 K188 ["UGCBundleTypes"]
      468 GETTABLEKS                       R14 R14 K185 ["DynamicHead"]
      470 GETTABLEKS                       R14 R14 K193 ["rawValue"]
      472 CALL                             R14 0 1
      473 GETTABLEKS                       R15 R9 K188 ["UGCBundleTypes"]
      475 GETTABLEKS                       R15 R15 K185 ["DynamicHead"]
      477 SETTABLE                         R15 R13 R14
      478 GETTABLEKS                       R14 R9 K188 ["UGCBundleTypes"]
      480 GETTABLEKS                       R14 R14 K186 ["Shoes"]
      482 GETTABLEKS                       R14 R14 K193 ["rawValue"]
      484 CALL                             R14 0 1
      485 GETTABLEKS                       R15 R9 K188 ["UGCBundleTypes"]
      487 GETTABLEKS                       R15 R15 K186 ["Shoes"]
      489 SETTABLE                         R15 R13 R14
      490 GETTABLEKS                       R14 R9 K188 ["UGCBundleTypes"]
      492 GETTABLEKS                       R14 R14 K187 ["AvatarAnimations"]
      494 GETTABLEKS                       R14 R14 K193 ["rawValue"]
      496 CALL                             R14 0 1
      497 GETTABLEKS                       R15 R9 K188 ["UGCBundleTypes"]
      499 GETTABLEKS                       R15 R15 K187 ["AvatarAnimations"]
      501 SETTABLE                         R15 R13 R14
      502 SETTABLEKS                       R13 R9 K194 ["UGCBundleTypeStringToEnumeration"]
      504 NEWTABLE                         R13 32 0
      506 GETIMPORT                        R14 K195 [Enum.AssetType.DynamicHead]
      508 SETTABLEKS                       R14 R13 K185 ["DynamicHead"]
      510 GETIMPORT                        R14 K197 [Enum.AssetType.LeftArm]
      512 SETTABLEKS                       R14 R13 K196 ["LeftArm"]
      514 GETIMPORT                        R14 K199 [Enum.AssetType.LeftLeg]
      516 SETTABLEKS                       R14 R13 K198 ["LeftLeg"]
      518 GETIMPORT                        R14 K201 [Enum.AssetType.RightArm]
      520 SETTABLEKS                       R14 R13 K200 ["RightArm"]
      522 GETIMPORT                        R14 K203 [Enum.AssetType.RightLeg]
      524 SETTABLEKS                       R14 R13 K202 ["RightLeg"]
      526 GETIMPORT                        R14 K205 [Enum.AssetType.Torso]
      528 SETTABLEKS                       R14 R13 K204 ["Torso"]
      530 GETIMPORT                        R14 K207 [Enum.AssetType.EyebrowAccessory]
      532 SETTABLEKS                       R14 R13 K206 ["EyebrowAccessory"]
      534 GETIMPORT                        R14 K209 [Enum.AssetType.EyelashAccessory]
      536 SETTABLEKS                       R14 R13 K208 ["EyelashAccessory"]
      538 GETIMPORT                        R14 K211 [Enum.AssetType.HairAccessory]
      540 SETTABLEKS                       R14 R13 K210 ["HairAccessory"]
      542 GETIMPORT                        R14 K213 [Enum.AssetType.LeftShoeAccessory]
      544 SETTABLEKS                       R14 R13 K212 ["LeftShoeAccessory"]
      546 GETIMPORT                        R14 K215 [Enum.AssetType.RightShoeAccessory]
      548 SETTABLEKS                       R14 R13 K214 ["RightShoeAccessory"]
      550 GETIMPORT                        R14 K217 [Enum.AssetType.ClimbAnimation]
      552 SETTABLEKS                       R14 R13 K216 ["ClimbAnimation"]
      554 GETIMPORT                        R14 K219 [Enum.AssetType.FallAnimation]
      556 SETTABLEKS                       R14 R13 K218 ["FallAnimation"]
      558 GETIMPORT                        R14 K221 [Enum.AssetType.IdleAnimation]
      560 SETTABLEKS                       R14 R13 K220 ["IdleAnimation"]
      562 GETIMPORT                        R14 K223 [Enum.AssetType.JumpAnimation]
      564 SETTABLEKS                       R14 R13 K222 ["JumpAnimation"]
      566 GETIMPORT                        R14 K225 [Enum.AssetType.RunAnimation]
      568 SETTABLEKS                       R14 R13 K224 ["RunAnimation"]
      570 GETIMPORT                        R14 K227 [Enum.AssetType.SwimAnimation]
      572 SETTABLEKS                       R14 R13 K226 ["SwimAnimation"]
      574 GETIMPORT                        R14 K229 [Enum.AssetType.WalkAnimation]
      576 SETTABLEKS                       R14 R13 K228 ["WalkAnimation"]
      578 SETTABLEKS                       R13 R9 K230 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      580 DUPTABLE                         R13 K246 [{["Head"] = "Head", ["UpperTorso"] = "UpperTorso", ["LowerTorso"] = "LowerTorso", ["LeftUpperLeg"] = "LeftUpperLeg", ["LeftLowerLeg"] = "LeftLowerLeg", ["LeftHand"] = "LeftHand", ["RightUpperArm"] = "RightUpperArm", ["RightLowerArm"] = "RightLowerArm", ["RightHand"] = "RightHand", ["LeftUpperArm"] = "LeftUpperArm", ["LeftLowerArm"] = "LeftLowerArm", ["LeftFoot"] = "LeftFoot", ["RightUpperLeg"] = "RightUpperLeg", ["RightLowerLeg"] = "RightLowerLeg", ["RightFoot"] = "RightFoot", ["EyebrowAccessory"] = "EyebrowAccessory", ["EyelashAccessory"] = "EyelashAccessory", ["HairAccessory"] = "HairAccessory"}]
      581 SETTABLEKS                       R13 R9 K247 ["UGC_BODY_PARTS"]
      583 DUPTABLE                         R13 K248 [{["LeftShoeAccessory"] = "LeftShoeAccessory", ["RightShoeAccessory"] = "RightShoeAccessory"}]
      584 SETTABLEKS                       R13 R9 K249 ["UGC_BUNDLE_PARTS"]
      586 NEWTABLE                         R13 32 0
      588 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      590 GETTABLEKS                       R14 R14 K231 ["Head"]
      592 GETIMPORT                        R15 K195 [Enum.AssetType.DynamicHead]
      594 SETTABLE                         R15 R13 R14
      595 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      597 GETTABLEKS                       R14 R14 K232 ["UpperTorso"]
      599 GETIMPORT                        R15 K205 [Enum.AssetType.Torso]
      601 SETTABLE                         R15 R13 R14
      602 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      604 GETTABLEKS                       R14 R14 K233 ["LowerTorso"]
      606 GETIMPORT                        R15 K205 [Enum.AssetType.Torso]
      608 SETTABLE                         R15 R13 R14
      609 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      611 GETTABLEKS                       R14 R14 K240 ["LeftUpperArm"]
      613 GETIMPORT                        R15 K197 [Enum.AssetType.LeftArm]
      615 SETTABLE                         R15 R13 R14
      616 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      618 GETTABLEKS                       R14 R14 K241 ["LeftLowerArm"]
      620 GETIMPORT                        R15 K197 [Enum.AssetType.LeftArm]
      622 SETTABLE                         R15 R13 R14
      623 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      625 GETTABLEKS                       R14 R14 K236 ["LeftHand"]
      627 GETIMPORT                        R15 K197 [Enum.AssetType.LeftArm]
      629 SETTABLE                         R15 R13 R14
      630 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      632 GETTABLEKS                       R14 R14 K237 ["RightUpperArm"]
      634 GETIMPORT                        R15 K201 [Enum.AssetType.RightArm]
      636 SETTABLE                         R15 R13 R14
      637 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      639 GETTABLEKS                       R14 R14 K238 ["RightLowerArm"]
      641 GETIMPORT                        R15 K201 [Enum.AssetType.RightArm]
      643 SETTABLE                         R15 R13 R14
      644 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      646 GETTABLEKS                       R14 R14 K239 ["RightHand"]
      648 GETIMPORT                        R15 K201 [Enum.AssetType.RightArm]
      650 SETTABLE                         R15 R13 R14
      651 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      653 GETTABLEKS                       R14 R14 K234 ["LeftUpperLeg"]
      655 GETIMPORT                        R15 K199 [Enum.AssetType.LeftLeg]
      657 SETTABLE                         R15 R13 R14
      658 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      660 GETTABLEKS                       R14 R14 K235 ["LeftLowerLeg"]
      662 GETIMPORT                        R15 K199 [Enum.AssetType.LeftLeg]
      664 SETTABLE                         R15 R13 R14
      665 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      667 GETTABLEKS                       R14 R14 K242 ["LeftFoot"]
      669 GETIMPORT                        R15 K199 [Enum.AssetType.LeftLeg]
      671 SETTABLE                         R15 R13 R14
      672 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      674 GETTABLEKS                       R14 R14 K243 ["RightUpperLeg"]
      676 GETIMPORT                        R15 K203 [Enum.AssetType.RightLeg]
      678 SETTABLE                         R15 R13 R14
      679 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      681 GETTABLEKS                       R14 R14 K244 ["RightLowerLeg"]
      683 GETIMPORT                        R15 K203 [Enum.AssetType.RightLeg]
      685 SETTABLE                         R15 R13 R14
      686 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      688 GETTABLEKS                       R14 R14 K245 ["RightFoot"]
      690 GETIMPORT                        R15 K203 [Enum.AssetType.RightLeg]
      692 SETTABLE                         R15 R13 R14
      693 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      695 GETTABLEKS                       R14 R14 K206 ["EyebrowAccessory"]
      697 GETIMPORT                        R15 K207 [Enum.AssetType.EyebrowAccessory]
      699 SETTABLE                         R15 R13 R14
      700 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      702 GETTABLEKS                       R14 R14 K208 ["EyelashAccessory"]
      704 GETIMPORT                        R15 K209 [Enum.AssetType.EyelashAccessory]
      706 SETTABLE                         R15 R13 R14
      707 GETTABLEKS                       R14 R9 K247 ["UGC_BODY_PARTS"]
      709 GETTABLEKS                       R14 R14 K210 ["HairAccessory"]
      711 GETIMPORT                        R15 K211 [Enum.AssetType.HairAccessory]
      713 SETTABLE                         R15 R13 R14
      714 SETTABLEKS                       R13 R9 K250 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      716 NEWTABLE                         R13 2 0
      718 GETTABLEKS                       R14 R9 K249 ["UGC_BUNDLE_PARTS"]
      720 GETTABLEKS                       R14 R14 K212 ["LeftShoeAccessory"]
      722 GETIMPORT                        R15 K213 [Enum.AssetType.LeftShoeAccessory]
      724 SETTABLE                         R15 R13 R14
      725 GETTABLEKS                       R14 R9 K249 ["UGC_BUNDLE_PARTS"]
      727 GETTABLEKS                       R14 R14 K214 ["RightShoeAccessory"]
      729 GETIMPORT                        R15 K215 [Enum.AssetType.RightShoeAccessory]
      731 SETTABLE                         R15 R13 R14
      732 SETTABLEKS                       R13 R9 K251 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
      734 DUPTABLE                         R13 K252 [{["ClimbAnimation"] = "ClimbAnimation", ["FallAnimation"] = "FallAnimation", ["IdleAnimation"] = "IdleAnimation", ["JumpAnimation"] = "JumpAnimation", ["RunAnimation"] = "RunAnimation", ["SwimAnimation"] = "SwimAnimation", ["WalkAnimation"] = "WalkAnimation"}]
      735 SETTABLEKS                       R13 R9 K253 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      737 NEWTABLE                         R13 8 0
      739 GETTABLEKS                       R14 R9 K253 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      741 GETTABLEKS                       R14 R14 K216 ["ClimbAnimation"]
      743 GETIMPORT                        R15 K217 [Enum.AssetType.ClimbAnimation]
      745 SETTABLE                         R15 R13 R14
      746 GETTABLEKS                       R14 R9 K253 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      748 GETTABLEKS                       R14 R14 K218 ["FallAnimation"]
      750 GETIMPORT                        R15 K219 [Enum.AssetType.FallAnimation]
      752 SETTABLE                         R15 R13 R14
      753 GETTABLEKS                       R14 R9 K253 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      755 GETTABLEKS                       R14 R14 K220 ["IdleAnimation"]
      757 GETIMPORT                        R15 K221 [Enum.AssetType.IdleAnimation]
      759 SETTABLE                         R15 R13 R14
      760 GETTABLEKS                       R14 R9 K253 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      762 GETTABLEKS                       R14 R14 K222 ["JumpAnimation"]
      764 GETIMPORT                        R15 K223 [Enum.AssetType.JumpAnimation]
      766 SETTABLE                         R15 R13 R14
      767 GETTABLEKS                       R14 R9 K253 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      769 GETTABLEKS                       R14 R14 K224 ["RunAnimation"]
      771 GETIMPORT                        R15 K225 [Enum.AssetType.RunAnimation]
      773 SETTABLE                         R15 R13 R14
      774 GETTABLEKS                       R14 R9 K253 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      776 GETTABLEKS                       R14 R14 K226 ["SwimAnimation"]
      778 GETIMPORT                        R15 K227 [Enum.AssetType.SwimAnimation]
      780 SETTABLE                         R15 R13 R14
      781 GETTABLEKS                       R14 R9 K253 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      783 GETTABLEKS                       R14 R14 K228 ["WalkAnimation"]
      785 GETIMPORT                        R15 K229 [Enum.AssetType.WalkAnimation]
      787 SETTABLE                         R15 R13 R14
      788 SETTABLEKS                       R13 R9 K254 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
      790 DUPTABLE                         R13 K255 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      791 NEWTABLE                         R14 0 1
      793 LOADK                            R15 K256 ["climb"]
      794 SETLIST                          R14 R15 1 [1]
      796 SETTABLEKS                       R14 R13 K216 ["ClimbAnimation"]
      798 NEWTABLE                         R14 0 1
      800 LOADK                            R15 K257 ["fall"]
      801 SETLIST                          R14 R15 1 [1]
      803 SETTABLEKS                       R14 R13 K218 ["FallAnimation"]
      805 NEWTABLE                         R14 0 1
      807 LOADK                            R15 K258 ["idle"]
      808 SETLIST                          R14 R15 1 [1]
      810 SETTABLEKS                       R14 R13 K220 ["IdleAnimation"]
      812 NEWTABLE                         R14 0 1
      814 LOADK                            R15 K259 ["jump"]
      815 SETLIST                          R14 R15 1 [1]
      817 SETTABLEKS                       R14 R13 K222 ["JumpAnimation"]
      819 NEWTABLE                         R14 0 1
      821 LOADK                            R15 K260 ["run"]
      822 SETLIST                          R14 R15 1 [1]
      824 SETTABLEKS                       R14 R13 K224 ["RunAnimation"]
      826 NEWTABLE                         R14 0 2
      828 LOADK                            R15 K261 ["swim"]
      829 LOADK                            R16 K262 ["swimidle"]
      830 SETLIST                          R14 R15 2 [1]
      832 SETTABLEKS                       R14 R13 K226 ["SwimAnimation"]
      834 NEWTABLE                         R14 0 1
      836 LOADK                            R15 K263 ["walk"]
      837 SETLIST                          R14 R15 1 [1]
      839 SETTABLEKS                       R14 R13 K228 ["WalkAnimation"]
      841 SETTABLEKS                       R13 R9 K264 ["AVATAR_ANIMATION_SUB_NAMES"]
      843 DUPTABLE                         R13 K255 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      844 DUPTABLE                         R14 K266 [{["climb"] = "ClimbAnim"}]
      845 SETTABLEKS                       R14 R13 K216 ["ClimbAnimation"]
      847 DUPTABLE                         R14 K268 [{["fall"] = "FallAnim"}]
      848 SETTABLEKS                       R14 R13 K218 ["FallAnimation"]
      850 DUPTABLE                         R14 K270 [{["idle"] = }]
      851 SETTABLEKS                       R14 R13 K220 ["IdleAnimation"]
      853 DUPTABLE                         R14 K272 [{["jump"] = "JumpAnim"}]
      854 SETTABLEKS                       R14 R13 K222 ["JumpAnimation"]
      856 DUPTABLE                         R14 K274 [{["run"] = "RunAnim"}]
      857 SETTABLEKS                       R14 R13 K224 ["RunAnimation"]
      859 DUPTABLE                         R14 K277 [{["swim"] = "SwimAnim", ["swimidle"] = "SwimIdleAnim"}]
      860 SETTABLEKS                       R14 R13 K226 ["SwimAnimation"]
      862 DUPTABLE                         R14 K279 [{["walk"] = "WalkAnim"}]
      863 SETTABLEKS                       R14 R13 K228 ["WalkAnimation"]
      865 SETTABLEKS                       R13 R9 K280 ["AVATAR_ANIMATION_INSTANCE_NAMES"]
      867 MOVE                             R13 R3
      868 CALL                             R13 0 1
      869 JUMPIFNOT                        R13 ; [+18]
      870 DUPTABLE                         R13 K284 [{["Classic"] = "Classic", ["ProportionsNormal"] = "ProportionsNormal", ["ProportionsSlender"] = "ProportionsSlender", ["Unknown"] = "Unknown"}]
      871 SETTABLEKS                       R13 R9 K285 ["BodyScaleTypes"]
      873 DUPTABLE                         R13 K286 [{"Classic", "ProportionsNormal", "ProportionsSlender"}]
      874 DUPTABLE                         R14 K294 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 0}]
      875 SETTABLEKS                       R14 R13 K281 ["Classic"]
      877 DUPTABLE                         R14 K295 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 1}]
      878 SETTABLEKS                       R14 R13 K282 ["ProportionsNormal"]
      880 DUPTABLE                         R14 K296 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 1, ["bodyType"] = 1}]
      881 SETTABLEKS                       R14 R13 K283 ["ProportionsSlender"]
      883 SETTABLEKS                       R13 R9 K297 ["BodyScaleDefaults"]
      885 DUPTABLE                         R13 K303 [{["height"] = "BodyHeightScale", ["width"] = "BodyWidthScale", ["head"] = "HeadScale", ["bodyType"] = "BodyTypeScale", ["proportion"] = "BodyProportionScale"}]
      886 SETTABLEKS                       R13 R9 K304 ["bodyScaleNameToString"]
      888 DUPTABLE                         R13 K314 [{["NONE"] = "None", ["BEGIN"] = "Begin", ["VALIDATING"] = "Validating", ["SUCCESS"] = "Success", ["FAILURE"] = "Failure"}]
      889 SETTABLEKS                       R13 R9 K315 ["VALIDATION_STATE"]
      891 NEWTABLE                         R13 0 2
      893 LOADK                            R14 K316 ["rbxassetid://"]
      894 LOADK                            R15 K317 ["https://assetdelivery"]
      895 SETLIST                          R13 R14 2 [1]
      897 SETTABLEKS                       R13 R9 K318 ["assetIdStringPatterns"]
      899 NEWTABLE                         R13 0 10
      901 GETIMPORT                        R14 K195 [Enum.AssetType.DynamicHead]
      903 GETIMPORT                        R15 K207 [Enum.AssetType.EyebrowAccessory]
      905 GETIMPORT                        R16 K209 [Enum.AssetType.EyelashAccessory]
      907 GETIMPORT                        R17 K197 [Enum.AssetType.LeftArm]
      909 GETIMPORT                        R18 K199 [Enum.AssetType.LeftLeg]
      911 GETIMPORT                        R19 K213 [Enum.AssetType.LeftShoeAccessory]
      913 GETIMPORT                        R20 K201 [Enum.AssetType.RightArm]
      915 GETIMPORT                        R21 K203 [Enum.AssetType.RightLeg]
      917 GETIMPORT                        R22 K215 [Enum.AssetType.RightShoeAccessory]
      919 GETIMPORT                        R23 K205 [Enum.AssetType.Torso]
      921 SETLIST                          R13 R14 10 [1]
      923 SETTABLEKS                       R13 R9 K319 ["BODY_PARTS"]
      925 NEWTABLE                         R13 0 9
      927 GETIMPORT                        R14 K195 [Enum.AssetType.DynamicHead]
      929 GETIMPORT                        R15 K205 [Enum.AssetType.Torso]
      931 GETIMPORT                        R16 K197 [Enum.AssetType.LeftArm]
      933 GETIMPORT                        R17 K201 [Enum.AssetType.RightArm]
      935 GETIMPORT                        R18 K199 [Enum.AssetType.LeftLeg]
      937 GETIMPORT                        R19 K203 [Enum.AssetType.RightLeg]
      939 GETIMPORT                        R20 K211 [Enum.AssetType.HairAccessory]
      941 GETIMPORT                        R21 K207 [Enum.AssetType.EyebrowAccessory]
      943 GETIMPORT                        R22 K209 [Enum.AssetType.EyelashAccessory]
      945 SETLIST                          R13 R14 9 [1]
      947 SETTABLEKS                       R13 R9 K320 ["VAAS_SORTED_ASSET_TYPES"]
      949 NEWTABLE                         R13 0 7
      951 GETIMPORT                        R14 K217 [Enum.AssetType.ClimbAnimation]
      953 GETIMPORT                        R15 K219 [Enum.AssetType.FallAnimation]
      955 GETIMPORT                        R16 K221 [Enum.AssetType.IdleAnimation]
      957 GETIMPORT                        R17 K223 [Enum.AssetType.JumpAnimation]
      959 GETIMPORT                        R18 K225 [Enum.AssetType.RunAnimation]
      961 GETIMPORT                        R19 K227 [Enum.AssetType.SwimAnimation]
      963 GETIMPORT                        R20 K229 [Enum.AssetType.WalkAnimation]
      965 SETLIST                          R13 R14 7 [1]
      967 SETTABLEKS                       R13 R9 K321 ["ANIMATION_ASSET_TYPES_IN_DISPLAY_ORDER"]
      969 NEWTABLE                         R13 0 5
      971 GETIMPORT                        R14 K207 [Enum.AssetType.EyebrowAccessory]
      973 GETIMPORT                        R15 K209 [Enum.AssetType.EyelashAccessory]
      975 GETIMPORT                        R16 K323 [Enum.AssetType.FaceMakeup]
      977 GETIMPORT                        R17 K325 [Enum.AssetType.LipMakeup]
      979 GETIMPORT                        R18 K327 [Enum.AssetType.EyeMakeup]
      981 SETLIST                          R13 R14 5 [1]
      983 SETTABLEKS                       R13 R9 K328 ["MAKEUP_ASSET_TYPES"]
      985 NEWTABLE                         R13 0 20
      987 GETIMPORT                        R14 K330 [Enum.AssetType.Hat]
      989 GETIMPORT                        R15 K211 [Enum.AssetType.HairAccessory]
      991 GETIMPORT                        R16 K332 [Enum.AssetType.FaceAccessory]
      993 GETIMPORT                        R17 K334 [Enum.AssetType.NeckAccessory]
      995 GETIMPORT                        R18 K336 [Enum.AssetType.ShoulderAccessory]
      997 GETIMPORT                        R19 K338 [Enum.AssetType.FrontAccessory]
      999 GETIMPORT                        R20 K340 [Enum.AssetType.BackAccessory]
     1001 GETIMPORT                        R21 K342 [Enum.AssetType.WaistAccessory]
     1003 GETIMPORT                        R22 K344 [Enum.AssetType.TShirtAccessory]
     1005 GETIMPORT                        R23 K346 [Enum.AssetType.ShirtAccessory]
     1007 GETIMPORT                        R24 K348 [Enum.AssetType.PantsAccessory]
     1009 GETIMPORT                        R25 K350 [Enum.AssetType.JacketAccessory]
     1011 GETIMPORT                        R26 K352 [Enum.AssetType.SweaterAccessory]
     1013 GETIMPORT                        R27 K354 [Enum.AssetType.ShortsAccessory]
     1015 GETIMPORT                        R28 K356 [Enum.AssetType.DressSkirtAccessory]
     1017 GETIMPORT                        R29 K207 [Enum.AssetType.EyebrowAccessory]
     1019 SETLIST                          R13 R14 16 [1]
     1021 GETIMPORT                        R14 K209 [Enum.AssetType.EyelashAccessory]
     1023 GETIMPORT                        R15 K323 [Enum.AssetType.FaceMakeup]
     1025 GETIMPORT                        R16 K325 [Enum.AssetType.LipMakeup]
     1027 GETIMPORT                        R17 K327 [Enum.AssetType.EyeMakeup]
     1029 SETLIST                          R13 R14 4 [17]
     1031 SETTABLEKS                       R13 R9 K357 ["AVATAR_ITEM_UPDATE_ASSET_TYPES"]
     1033 MOVE                             R13 R4
     1034 CALL                             R13 0 1
     1035 JUMPIFNOT                        R13 ; [+9]
     1036 GETTABLEKS                       R14 R9 K122 ["ASSET_TYPES_2D"]
     1038 GETIMPORT                        R15 K359 [Enum.AssetType.AvatarBackground]
     1040 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
     1042 GETIMPORT                        R13 K362 [table.insert]
     1044 CALL                             R13 2 0
     1045 RETURN                           R9 1
