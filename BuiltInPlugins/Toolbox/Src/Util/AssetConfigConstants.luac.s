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
       42 GETTABLEKS                       R6 R7 K13 ["getFFlagEnableUploadingMakeup"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R9 R0 K7 ["Src"]
       49 GETTABLEKS                       R8 R9 K11 ["Flags"]
       51 GETTABLEKS                       R7 R8 K14 ["getFFlagUsePublishMarketplaceActionType"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R2 K15 ["convertArrayToTable"]
       58 CALL                             R7 1 1
       59 NEWTABLE                         R8 64 0
       61 LOADN                            R9 76
       62 SETTABLEKS                       R9 R8 K16 ["WIDTH"]
       64 LOADN                            R9 92
       65 SETTABLEKS                       R9 R8 K17 ["HEIGHT"]
       67 LOADN                            R9 132
       68 SETTABLEKS                       R9 R8 K18 ["MIN_WIDTH"]
       70 LOADN                            R9 244
       71 SETTABLEKS                       R9 R8 K19 ["MIN_HEIGHT"]
       73 LOADK                            R9 K20 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
       74 SETTABLEKS                       R9 R8 K21 ["TERM_OF_USE_URL"]
       76 LOADK                            R9 K22 ["https://www.roblox.com/my/account#!/info"]
       77 SETTABLEKS                       R9 R8 K23 ["ACCOUNT_SETTING_URL"]
       79 LOADN                            R9 50
       80 SETTABLEKS                       R9 R8 K24 ["NAME_CHARACTER_LIMIT"]
       82 LOADN                            R9 232
       83 SETTABLEKS                       R9 R8 K25 ["DESCRIPTION_CHARACTER_LIMIT"]
       85 LOADN                            R9 244
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
      138 GETIMPORT                        R12 K51 [Enum.Genre.All]
      140 GETTABLEKS                       R11 R12 K52 ["Name"]
      142 SETTABLEKS                       R11 R10 K46 ["name"]
      144 DUPTABLE                         R11 K47 [{"name"}]
      145 GETIMPORT                        R13 K54 [Enum.Genre.TownAndCity]
      147 GETTABLEKS                       R12 R13 K52 ["Name"]
      149 SETTABLEKS                       R12 R11 K46 ["name"]
      151 DUPTABLE                         R12 K47 [{"name"}]
      152 GETIMPORT                        R14 K56 [Enum.Genre.Fantasy]
      154 GETTABLEKS                       R13 R14 K52 ["Name"]
      156 SETTABLEKS                       R13 R12 K46 ["name"]
      158 DUPTABLE                         R13 K47 [{"name"}]
      159 GETIMPORT                        R15 K58 [Enum.Genre.SciFi]
      161 GETTABLEKS                       R14 R15 K52 ["Name"]
      163 SETTABLEKS                       R14 R13 K46 ["name"]
      165 DUPTABLE                         R14 K47 [{"name"}]
      166 GETIMPORT                        R16 K60 [Enum.Genre.Ninja]
      168 GETTABLEKS                       R15 R16 K52 ["Name"]
      170 SETTABLEKS                       R15 R14 K46 ["name"]
      172 DUPTABLE                         R15 K47 [{"name"}]
      173 GETIMPORT                        R17 K62 [Enum.Genre.Scary]
      175 GETTABLEKS                       R16 R17 K52 ["Name"]
      177 SETTABLEKS                       R16 R15 K46 ["name"]
      179 DUPTABLE                         R16 K47 [{"name"}]
      180 GETIMPORT                        R18 K64 [Enum.Genre.Pirate]
      182 GETTABLEKS                       R17 R18 K52 ["Name"]
      184 SETTABLEKS                       R17 R16 K46 ["name"]
      186 DUPTABLE                         R17 K47 [{"name"}]
      187 GETIMPORT                        R19 K66 [Enum.Genre.Adventure]
      189 GETTABLEKS                       R18 R19 K52 ["Name"]
      191 SETTABLEKS                       R18 R17 K46 ["name"]
      193 DUPTABLE                         R18 K47 [{"name"}]
      194 GETIMPORT                        R20 K68 [Enum.Genre.Sports]
      196 GETTABLEKS                       R19 R20 K52 ["Name"]
      198 SETTABLEKS                       R19 R18 K46 ["name"]
      200 DUPTABLE                         R19 K47 [{"name"}]
      201 GETIMPORT                        R21 K70 [Enum.Genre.Funny]
      203 GETTABLEKS                       R20 R21 K52 ["Name"]
      205 SETTABLEKS                       R20 R19 K46 ["name"]
      207 DUPTABLE                         R20 K47 [{"name"}]
      208 GETIMPORT                        R22 K72 [Enum.Genre.WildWest]
      210 GETTABLEKS                       R21 R22 K52 ["Name"]
      212 SETTABLEKS                       R21 R20 K46 ["name"]
      214 DUPTABLE                         R21 K47 [{"name"}]
      215 GETIMPORT                        R23 K74 [Enum.Genre.War]
      217 GETTABLEKS                       R22 R23 K52 ["Name"]
      219 SETTABLEKS                       R22 R21 K46 ["name"]
      221 DUPTABLE                         R22 K47 [{"name"}]
      222 GETIMPORT                        R24 K76 [Enum.Genre.SkatePark]
      224 GETTABLEKS                       R23 R24 K52 ["Name"]
      226 SETTABLEKS                       R23 R22 K46 ["name"]
      228 DUPTABLE                         R23 K47 [{"name"}]
      229 GETIMPORT                        R25 K78 [Enum.Genre.Tutorial]
      231 GETTABLEKS                       R24 R25 K52 ["Name"]
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
      251 NEWTABLE                         R10 0 5
      253 LOADK                            R11 K84 ["ASSET_TYPE_SELECTION"]
      254 LOADK                            R12 K85 ["ASSET_VALIDATION"]
      255 LOADK                            R13 K86 ["CONFIGURE_ASSET"]
      256 LOADK                            R14 K87 ["UPLOADING_ASSET"]
      257 LOADK                            R15 K88 ["UPLOAD_ASSET_RESULT"]
      258 SETLIST                          R10 R11 5 [1]
      260 CALL                             R9 1 1
      261 SETTABLEKS                       R9 R8 K89 ["SCREENS"]
      263 MOVE                             R9 R7
      264 NEWTABLE                         R10 0 8
      266 LOADK                            R11 K90 ["Unknown"]
      267 LOADK                            R12 K91 ["ReviewPending"]
      268 LOADK                            R13 K92 ["Moderated"]
      269 LOADK                            R14 K93 ["ReviewApproved"]
      270 LOADK                            R15 K94 ["OnSale"]
      271 LOADK                            R16 K95 ["OffSale"]
      272 LOADK                            R17 K96 ["DelayedRelease"]
      273 LOADK                            R18 K97 ["Free"]
      274 SETLIST                          R10 R11 8 [1]
      276 CALL                             R9 1 1
      277 SETTABLEKS                       R9 R8 K98 ["ASSET_STATUS"]
      279 MOVE                             R9 R7
      280 NEWTABLE                         R10 0 10
      282 LOADK                            R11 K99 ["AssetType"]
      283 LOADK                            R12 K100 ["Authorization"]
      284 LOADK                            R13 K101 ["Invalid"]
      285 LOADK                            R14 K102 ["KillSwitch"]
      286 LOADK                            R15 K103 ["Quota"]
      287 LOADK                            R16 K104 ["SafetyStatus"]
      288 LOADK                            R17 K105 ["SellerAccountNotOnboarded"]
      289 LOADK                            R18 K106 ["SellerAccountRestricted"]
      290 LOADK                            R19 K107 ["UnsupportedAssetOwner"]
      291 LOADK                            R20 K108 ["Verification"]
      292 SETLIST                          R10 R11 10 [1]
      294 CALL                             R9 1 1
      295 SETTABLEKS                       R9 R8 K109 ["RESTRICTION_TYPE"]
      297 MOVE                             R9 R7
      298 NEWTABLE                         R10 0 1
      300 LOADK                            R11 K94 ["OnSale"]
      301 SETLIST                          R10 R11 1 [1]
      303 CALL                             R9 1 1
      304 SETTABLEKS                       R9 R8 K110 ["SALES_STATUS_FOR_PRICE"]
      306 DUPCLOSURE                       R9 K111 [PROTO_0]
      307 DUPCLOSURE                       R10 K112 [PROTO_1]
      308 NEWTABLE                         R11 0 0
      310 SETTABLEKS                       R11 R8 K113 ["ASSET_TYPE_INFO"]
      312 NEWTABLE                         R11 0 3
      314 GETIMPORT                        R12 K115 [Enum.AssetType.TShirt]
      316 GETIMPORT                        R13 K117 [Enum.AssetType.Shirt]
      318 GETIMPORT                        R14 K119 [Enum.AssetType.Pants]
      320 SETLIST                          R11 R12 3 [1]
      322 SETTABLEKS                       R11 R8 K120 ["ASSET_TYPES_2D"]
      324 DUPCLOSURE                       R11 K121 [PROTO_3]
      325 CAPTURE                          VAL R8
      326 CAPTURE                          VAL R6
      327 SETTABLEKS                       R11 R8 K122 ["populateAssetTypeInfoFromNetwork"]
      329 DUPCLOSURE                       R11 K123 [PROTO_4]
      330 SETTABLEKS                       R11 R8 K124 ["getNormalizedAssetString"]
      332 MOVE                             R11 R7
      333 NEWTABLE                         R12 0 3
      335 LOADK                            R13 K125 ["WhitelistedPlugins"]
      336 LOADK                            R14 K126 ["MyPlugins"]
      337 LOADK                            R15 K127 ["GroupPlugins"]
      338 SETLIST                          R12 R13 3 [1]
      340 CALL                             R11 1 1
      341 SETTABLEKS                       R11 R8 K128 ["developCategoryType"]
      343 MOVE                             R11 R7
      344 NEWTABLE                         R12 0 2
      346 LOADK                            R13 K129 ["MyPackages"]
      347 LOADK                            R14 K130 ["GroupPackages"]
      348 SETLIST                          R12 R13 2 [1]
      350 CALL                             R11 1 1
      351 SETTABLEKS                       R11 R8 K131 ["packagesCategoryType"]
      353 MOVE                             R11 R7
      354 NEWTABLE                         R12 0 9
      356 LOADK                            R13 K132 ["Asset"]
      357 LOADK                            R14 K133 ["Avatar"]
      358 LOADK                            R15 K134 ["AvatarHeadShot"]
      359 LOADK                            R16 K135 ["BadgeIcon"]
      360 LOADK                            R17 K136 ["BundleThumbnail"]
      361 LOADK                            R18 K137 ["GameIcon"]
      362 LOADK                            R19 K138 ["GamePass"]
      363 LOADK                            R20 K139 ["GroupIcon"]
      364 LOADK                            R21 K140 ["Outfit"]
      365 SETLIST                          R12 R13 9 [1]
      367 CALL                             R11 1 1
      368 SETTABLEKS                       R11 R8 K141 ["rbxThumbTypes"]
      370 DUPTABLE                         R11 K145 [{"AvatarHeadshotImageSize", "GroupIconImageSize", "AssetThumbnailSize"}]
      371 LOADN                            R12 60
      372 SETTABLEKS                       R12 R11 K142 ["AvatarHeadshotImageSize"]
      374 LOADN                            R12 150
      375 SETTABLEKS                       R12 R11 K143 ["GroupIconImageSize"]
      377 LOADN                            R12 164
      378 SETTABLEKS                       R12 R11 K144 ["AssetThumbnailSize"]
      380 SETTABLEKS                       R11 R8 K146 ["rbxThumbSizes"]
      382 DUPTABLE                         R11 K152 [{"MaxThumbnails", "AspectRatioHeight", "AspectRatioWidth", "RecommendedHeight", "RecommendedWidth"}]
      383 LOADN                            R12 5
      384 SETTABLEKS                       R12 R11 K147 ["MaxThumbnails"]
      386 LOADN                            R12 9
      387 SETTABLEKS                       R12 R11 K148 ["AspectRatioHeight"]
      389 LOADN                            R12 16
      390 SETTABLEKS                       R12 R11 K149 ["AspectRatioWidth"]
      392 LOADN                            R12 176
      393 SETTABLEKS                       R12 R11 K150 ["RecommendedHeight"]
      395 LOADN                            R12 0
      396 SETTABLEKS                       R12 R11 K151 ["RecommendedWidth"]
      398 SETTABLEKS                       R11 R8 K153 ["additionalImages"]
      400 NEWTABLE                         R11 0 3
      402 LOADK                            R12 K154 ["jpg"]
      403 LOADK                            R13 K155 ["jpeg"]
      404 LOADK                            R14 K156 ["png"]
      405 SETLIST                          R11 R12 3 [1]
      407 SETTABLEKS                       R11 R8 K157 ["IMAGE_TYPES"]
      409 LOADK                            R11 K158 ["Success"]
      410 SETTABLEKS                       R11 R8 K159 ["TAGS_SUGGESTION_SUCCESS"]
      412 LOADN                            R11 5
      413 SETTABLEKS                       R11 R8 K160 ["MAX_DISPLAY_SUGGESTIONS"]
      415 LOADN                            R11 10
      416 SETTABLEKS                       R11 R8 K161 ["MAX_FETCH_SUGGESTIONS"]
      418 LOADK                            R11 K162 ["avatar_meshpart_accessory"]
      419 SETTABLEKS                       R11 R8 K163 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
      421 LOADK                            R11 K164 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
      422 SETTABLEKS                       R11 R8 K165 ["MULTIPART_FORM_BOUNDARY"]
      424 LOADK                            R11 K166 ["OverrideAssetId"]
      425 SETTABLEKS                       R11 R8 K167 ["OVERRIDE_ASSET_ID"]
      427 DUPTABLE                         R11 K170 [{"Public", "Private"}]
      428 LOADB                            R12 1
      429 SETTABLEKS                       R12 R11 K168 ["Public"]
      431 LOADB                            R12 0
      432 SETTABLEKS                       R12 R11 K169 ["Private"]
      434 SETTABLEKS                       R11 R8 K171 ["SHARING_KEYS"]
      436 NEWTABLE                         R11 0 3
      438 LOADK                            R12 K172 ["Body"]
      439 LOADK                            R13 K173 ["DynamicHead"]
      440 LOADK                            R14 K174 ["Shoes"]
      441 SETLIST                          R11 R12 3 [1]
      443 NEWTABLE                         R12 0 0
      445 SETTABLEKS                       R12 R8 K175 ["UGCBundleTypes"]
      447 GETIMPORT                        R12 K177 [ipairs]
      449 MOVE                             R13 R11
      450 CALL                             R12 1 3
      451 FORGPREP_INEXT                   R12
      452 DUPTABLE                         R17 K179 [{"Name", "Value"}]
      453 SETTABLEKS                       R16 R17 K52 ["Name"]
      455 SETTABLEKS                       R15 R17 K178 ["Value"]
      457 GETTABLEKS                       R18 R8 K175 ["UGCBundleTypes"]
      459 SETTABLE                         R17 R18 R16
      460 NEWCLOSURE                       R18 P4
      461 CAPTURE                          VAL R17
      462 SETTABLEKS                       R18 R17 K180 ["rawValue"]
      464 FORGLOOP                         R12 2 [inext] ; [-13]
      466 NEWTABLE                         R12 4 0
      468 GETTABLEKS                       R15 R8 K175 ["UGCBundleTypes"]
      470 GETTABLEKS                       R14 R15 K172 ["Body"]
      472 GETTABLEKS                       R13 R14 K180 ["rawValue"]
      474 CALL                             R13 0 1
      475 GETTABLEKS                       R15 R8 K175 ["UGCBundleTypes"]
      477 GETTABLEKS                       R14 R15 K172 ["Body"]
      479 SETTABLE                         R14 R12 R13
      480 GETTABLEKS                       R15 R8 K175 ["UGCBundleTypes"]
      482 GETTABLEKS                       R14 R15 K173 ["DynamicHead"]
      484 GETTABLEKS                       R13 R14 K180 ["rawValue"]
      486 CALL                             R13 0 1
      487 GETTABLEKS                       R15 R8 K175 ["UGCBundleTypes"]
      489 GETTABLEKS                       R14 R15 K173 ["DynamicHead"]
      491 SETTABLE                         R14 R12 R13
      492 GETTABLEKS                       R15 R8 K175 ["UGCBundleTypes"]
      494 GETTABLEKS                       R14 R15 K174 ["Shoes"]
      496 GETTABLEKS                       R13 R14 K180 ["rawValue"]
      498 CALL                             R13 0 1
      499 GETTABLEKS                       R15 R8 K175 ["UGCBundleTypes"]
      501 GETTABLEKS                       R14 R15 K174 ["Shoes"]
      503 SETTABLE                         R14 R12 R13
      504 SETTABLEKS                       R12 R8 K181 ["UGCBundleTypeStringToEnumeration"]
      506 NEWTABLE                         R12 16 0
      508 GETIMPORT                        R13 K182 [Enum.AssetType.DynamicHead]
      510 SETTABLEKS                       R13 R12 K173 ["DynamicHead"]
      512 GETIMPORT                        R13 K184 [Enum.AssetType.LeftArm]
      514 SETTABLEKS                       R13 R12 K183 ["LeftArm"]
      516 GETIMPORT                        R13 K186 [Enum.AssetType.LeftLeg]
      518 SETTABLEKS                       R13 R12 K185 ["LeftLeg"]
      520 GETIMPORT                        R13 K188 [Enum.AssetType.RightArm]
      522 SETTABLEKS                       R13 R12 K187 ["RightArm"]
      524 GETIMPORT                        R13 K190 [Enum.AssetType.RightLeg]
      526 SETTABLEKS                       R13 R12 K189 ["RightLeg"]
      528 GETIMPORT                        R13 K192 [Enum.AssetType.Torso]
      530 SETTABLEKS                       R13 R12 K191 ["Torso"]
      532 GETIMPORT                        R13 K194 [Enum.AssetType.EyebrowAccessory]
      534 SETTABLEKS                       R13 R12 K193 ["EyebrowAccessory"]
      536 GETIMPORT                        R13 K196 [Enum.AssetType.EyelashAccessory]
      538 SETTABLEKS                       R13 R12 K195 ["EyelashAccessory"]
      540 GETIMPORT                        R13 K198 [Enum.AssetType.HairAccessory]
      542 SETTABLEKS                       R13 R12 K197 ["HairAccessory"]
      544 GETIMPORT                        R13 K200 [Enum.AssetType.LeftShoeAccessory]
      546 SETTABLEKS                       R13 R12 K199 ["LeftShoeAccessory"]
      548 GETIMPORT                        R13 K202 [Enum.AssetType.RightShoeAccessory]
      550 SETTABLEKS                       R13 R12 K201 ["RightShoeAccessory"]
      552 SETTABLEKS                       R12 R8 K203 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      554 DUPTABLE                         R12 K219 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperArm", "LeftLowerArm", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
      555 LOADK                            R13 K204 ["Head"]
      556 SETTABLEKS                       R13 R12 K204 ["Head"]
      558 LOADK                            R13 K205 ["UpperTorso"]
      559 SETTABLEKS                       R13 R12 K205 ["UpperTorso"]
      561 LOADK                            R13 K206 ["LowerTorso"]
      562 SETTABLEKS                       R13 R12 K206 ["LowerTorso"]
      564 LOADK                            R13 K207 ["LeftUpperLeg"]
      565 SETTABLEKS                       R13 R12 K207 ["LeftUpperLeg"]
      567 LOADK                            R13 K208 ["LeftLowerLeg"]
      568 SETTABLEKS                       R13 R12 K208 ["LeftLowerLeg"]
      570 LOADK                            R13 K209 ["LeftHand"]
      571 SETTABLEKS                       R13 R12 K209 ["LeftHand"]
      573 LOADK                            R13 K210 ["RightUpperArm"]
      574 SETTABLEKS                       R13 R12 K210 ["RightUpperArm"]
      576 LOADK                            R13 K211 ["RightLowerArm"]
      577 SETTABLEKS                       R13 R12 K211 ["RightLowerArm"]
      579 LOADK                            R13 K212 ["RightHand"]
      580 SETTABLEKS                       R13 R12 K212 ["RightHand"]
      582 LOADK                            R13 K213 ["LeftUpperArm"]
      583 SETTABLEKS                       R13 R12 K213 ["LeftUpperArm"]
      585 LOADK                            R13 K214 ["LeftLowerArm"]
      586 SETTABLEKS                       R13 R12 K214 ["LeftLowerArm"]
      588 LOADK                            R13 K215 ["LeftFoot"]
      589 SETTABLEKS                       R13 R12 K215 ["LeftFoot"]
      591 LOADK                            R13 K216 ["RightUpperLeg"]
      592 SETTABLEKS                       R13 R12 K216 ["RightUpperLeg"]
      594 LOADK                            R13 K217 ["RightLowerLeg"]
      595 SETTABLEKS                       R13 R12 K217 ["RightLowerLeg"]
      597 LOADK                            R13 K218 ["RightFoot"]
      598 SETTABLEKS                       R13 R12 K218 ["RightFoot"]
      600 LOADK                            R13 K193 ["EyebrowAccessory"]
      601 SETTABLEKS                       R13 R12 K193 ["EyebrowAccessory"]
      603 LOADK                            R13 K195 ["EyelashAccessory"]
      604 SETTABLEKS                       R13 R12 K195 ["EyelashAccessory"]
      606 LOADK                            R13 K197 ["HairAccessory"]
      607 SETTABLEKS                       R13 R12 K197 ["HairAccessory"]
      609 SETTABLEKS                       R12 R8 K220 ["UGC_BODY_PARTS"]
      611 DUPTABLE                         R12 K221 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      612 LOADK                            R13 K199 ["LeftShoeAccessory"]
      613 SETTABLEKS                       R13 R12 K199 ["LeftShoeAccessory"]
      615 LOADK                            R13 K201 ["RightShoeAccessory"]
      616 SETTABLEKS                       R13 R12 K201 ["RightShoeAccessory"]
      618 SETTABLEKS                       R12 R8 K222 ["UGC_BUNDLE_PARTS"]
      620 NEWTABLE                         R12 32 0
      622 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      624 GETTABLEKS                       R13 R14 K204 ["Head"]
      626 GETIMPORT                        R14 K182 [Enum.AssetType.DynamicHead]
      628 SETTABLE                         R14 R12 R13
      629 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      631 GETTABLEKS                       R13 R14 K205 ["UpperTorso"]
      633 GETIMPORT                        R14 K192 [Enum.AssetType.Torso]
      635 SETTABLE                         R14 R12 R13
      636 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      638 GETTABLEKS                       R13 R14 K206 ["LowerTorso"]
      640 GETIMPORT                        R14 K192 [Enum.AssetType.Torso]
      642 SETTABLE                         R14 R12 R13
      643 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      645 GETTABLEKS                       R13 R14 K213 ["LeftUpperArm"]
      647 GETIMPORT                        R14 K184 [Enum.AssetType.LeftArm]
      649 SETTABLE                         R14 R12 R13
      650 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      652 GETTABLEKS                       R13 R14 K214 ["LeftLowerArm"]
      654 GETIMPORT                        R14 K184 [Enum.AssetType.LeftArm]
      656 SETTABLE                         R14 R12 R13
      657 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      659 GETTABLEKS                       R13 R14 K209 ["LeftHand"]
      661 GETIMPORT                        R14 K184 [Enum.AssetType.LeftArm]
      663 SETTABLE                         R14 R12 R13
      664 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      666 GETTABLEKS                       R13 R14 K210 ["RightUpperArm"]
      668 GETIMPORT                        R14 K188 [Enum.AssetType.RightArm]
      670 SETTABLE                         R14 R12 R13
      671 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      673 GETTABLEKS                       R13 R14 K211 ["RightLowerArm"]
      675 GETIMPORT                        R14 K188 [Enum.AssetType.RightArm]
      677 SETTABLE                         R14 R12 R13
      678 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      680 GETTABLEKS                       R13 R14 K212 ["RightHand"]
      682 GETIMPORT                        R14 K188 [Enum.AssetType.RightArm]
      684 SETTABLE                         R14 R12 R13
      685 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      687 GETTABLEKS                       R13 R14 K207 ["LeftUpperLeg"]
      689 GETIMPORT                        R14 K186 [Enum.AssetType.LeftLeg]
      691 SETTABLE                         R14 R12 R13
      692 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      694 GETTABLEKS                       R13 R14 K208 ["LeftLowerLeg"]
      696 GETIMPORT                        R14 K186 [Enum.AssetType.LeftLeg]
      698 SETTABLE                         R14 R12 R13
      699 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      701 GETTABLEKS                       R13 R14 K215 ["LeftFoot"]
      703 GETIMPORT                        R14 K186 [Enum.AssetType.LeftLeg]
      705 SETTABLE                         R14 R12 R13
      706 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      708 GETTABLEKS                       R13 R14 K216 ["RightUpperLeg"]
      710 GETIMPORT                        R14 K190 [Enum.AssetType.RightLeg]
      712 SETTABLE                         R14 R12 R13
      713 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      715 GETTABLEKS                       R13 R14 K217 ["RightLowerLeg"]
      717 GETIMPORT                        R14 K190 [Enum.AssetType.RightLeg]
      719 SETTABLE                         R14 R12 R13
      720 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      722 GETTABLEKS                       R13 R14 K218 ["RightFoot"]
      724 GETIMPORT                        R14 K190 [Enum.AssetType.RightLeg]
      726 SETTABLE                         R14 R12 R13
      727 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      729 GETTABLEKS                       R13 R14 K193 ["EyebrowAccessory"]
      731 GETIMPORT                        R14 K194 [Enum.AssetType.EyebrowAccessory]
      733 SETTABLE                         R14 R12 R13
      734 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      736 GETTABLEKS                       R13 R14 K195 ["EyelashAccessory"]
      738 GETIMPORT                        R14 K196 [Enum.AssetType.EyelashAccessory]
      740 SETTABLE                         R14 R12 R13
      741 GETTABLEKS                       R14 R8 K220 ["UGC_BODY_PARTS"]
      743 GETTABLEKS                       R13 R14 K197 ["HairAccessory"]
      745 GETIMPORT                        R14 K198 [Enum.AssetType.HairAccessory]
      747 SETTABLE                         R14 R12 R13
      748 SETTABLEKS                       R12 R8 K223 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      750 NEWTABLE                         R12 2 0
      752 GETTABLEKS                       R14 R8 K222 ["UGC_BUNDLE_PARTS"]
      754 GETTABLEKS                       R13 R14 K199 ["LeftShoeAccessory"]
      756 GETIMPORT                        R14 K200 [Enum.AssetType.LeftShoeAccessory]
      758 SETTABLE                         R14 R12 R13
      759 GETTABLEKS                       R14 R8 K222 ["UGC_BUNDLE_PARTS"]
      761 GETTABLEKS                       R13 R14 K201 ["RightShoeAccessory"]
      763 GETIMPORT                        R14 K202 [Enum.AssetType.RightShoeAccessory]
      765 SETTABLE                         R14 R12 R13
      766 SETTABLEKS                       R12 R8 K224 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
      768 MOVE                             R12 R3
      769 CALL                             R12 0 1
      770 JUMPIFNOT                        R12 ; [+90]
      771 DUPTABLE                         R12 K228 [{"Classic", "ProportionsNormal", "ProportionsSlender", "Unknown"}]
      772 LOADK                            R13 K225 ["Classic"]
      773 SETTABLEKS                       R13 R12 K225 ["Classic"]
      775 LOADK                            R13 K226 ["ProportionsNormal"]
      776 SETTABLEKS                       R13 R12 K226 ["ProportionsNormal"]
      778 LOADK                            R13 K227 ["ProportionsSlender"]
      779 SETTABLEKS                       R13 R12 K227 ["ProportionsSlender"]
      781 LOADK                            R13 K90 ["Unknown"]
      782 SETTABLEKS                       R13 R12 K90 ["Unknown"]
      784 SETTABLEKS                       R12 R8 K229 ["BodyScaleTypes"]
      786 DUPTABLE                         R12 K230 [{"Classic", "ProportionsNormal", "ProportionsSlender"}]
      787 DUPTABLE                         R13 K236 [{"height", "width", "head", "proportion", "bodyType"}]
      788 LOADN                            R14 1
      789 SETTABLEKS                       R14 R13 K231 ["height"]
      791 LOADN                            R14 1
      792 SETTABLEKS                       R14 R13 K232 ["width"]
      794 LOADN                            R14 1
      795 SETTABLEKS                       R14 R13 K233 ["head"]
      797 LOADN                            R14 0
      798 SETTABLEKS                       R14 R13 K234 ["proportion"]
      800 LOADN                            R14 0
      801 SETTABLEKS                       R14 R13 K235 ["bodyType"]
      803 SETTABLEKS                       R13 R12 K225 ["Classic"]
      805 DUPTABLE                         R13 K236 [{"height", "width", "head", "proportion", "bodyType"}]
      806 LOADN                            R14 1
      807 SETTABLEKS                       R14 R13 K231 ["height"]
      809 LOADN                            R14 1
      810 SETTABLEKS                       R14 R13 K232 ["width"]
      812 LOADN                            R14 1
      813 SETTABLEKS                       R14 R13 K233 ["head"]
      815 LOADN                            R14 0
      816 SETTABLEKS                       R14 R13 K234 ["proportion"]
      818 LOADN                            R14 1
      819 SETTABLEKS                       R14 R13 K235 ["bodyType"]
      821 SETTABLEKS                       R13 R12 K226 ["ProportionsNormal"]
      823 DUPTABLE                         R13 K236 [{"height", "width", "head", "proportion", "bodyType"}]
      824 LOADN                            R14 1
      825 SETTABLEKS                       R14 R13 K231 ["height"]
      827 LOADN                            R14 1
      828 SETTABLEKS                       R14 R13 K232 ["width"]
      830 LOADN                            R14 1
      831 SETTABLEKS                       R14 R13 K233 ["head"]
      833 LOADN                            R14 1
      834 SETTABLEKS                       R14 R13 K234 ["proportion"]
      836 LOADN                            R14 1
      837 SETTABLEKS                       R14 R13 K235 ["bodyType"]
      839 SETTABLEKS                       R13 R12 K227 ["ProportionsSlender"]
      841 SETTABLEKS                       R12 R8 K237 ["BodyScaleDefaults"]
      843 DUPTABLE                         R12 K238 [{"height", "width", "head", "bodyType", "proportion"}]
      844 LOADK                            R13 K239 ["BodyHeightScale"]
      845 SETTABLEKS                       R13 R12 K231 ["height"]
      847 LOADK                            R13 K240 ["BodyWidthScale"]
      848 SETTABLEKS                       R13 R12 K232 ["width"]
      850 LOADK                            R13 K241 ["HeadScale"]
      851 SETTABLEKS                       R13 R12 K233 ["head"]
      853 LOADK                            R13 K242 ["BodyTypeScale"]
      854 SETTABLEKS                       R13 R12 K235 ["bodyType"]
      856 LOADK                            R13 K243 ["BodyProportionScale"]
      857 SETTABLEKS                       R13 R12 K234 ["proportion"]
      859 SETTABLEKS                       R12 R8 K244 ["bodyScaleNameToString"]
      861 DUPTABLE                         R12 K250 [{"NONE", "BEGIN", "VALIDATING", "SUCCESS", "FAILURE"}]
      862 LOADK                            R13 K251 ["None"]
      863 SETTABLEKS                       R13 R12 K245 ["NONE"]
      865 LOADK                            R13 K252 ["Begin"]
      866 SETTABLEKS                       R13 R12 K246 ["BEGIN"]
      868 LOADK                            R13 K253 ["Validating"]
      869 SETTABLEKS                       R13 R12 K247 ["VALIDATING"]
      871 LOADK                            R13 K158 ["Success"]
      872 SETTABLEKS                       R13 R12 K248 ["SUCCESS"]
      874 LOADK                            R13 K254 ["Failure"]
      875 SETTABLEKS                       R13 R12 K249 ["FAILURE"]
      877 SETTABLEKS                       R12 R8 K255 ["VALIDATION_STATE"]
      879 MOVE                             R12 R4
      880 CALL                             R12 0 1
      881 JUMPIFNOT                        R12 ; [+8]
      882 NEWTABLE                         R12 0 2
      884 LOADK                            R13 K0 ["script"]
      885 LOADK                            R14 K1 [script]
      886 SETLIST                          R12 R13 2 [1]
      888 SETTABLEKS                       R12 R8 K258 ["assetIdStringPatterns"]
      890 NEWTABLE                         R12 0 10
      892 GETIMPORT                        R13 K182 [Enum.AssetType.DynamicHead]
      894 GETIMPORT                        R14 K194 [Enum.AssetType.EyebrowAccessory]
      896 GETIMPORT                        R15 K196 [Enum.AssetType.EyelashAccessory]
      898 GETIMPORT                        R16 K184 [Enum.AssetType.LeftArm]
      900 GETIMPORT                        R17 K186 [Enum.AssetType.LeftLeg]
      902 GETIMPORT                        R18 K200 [Enum.AssetType.LeftShoeAccessory]
      904 GETIMPORT                        R19 K188 [Enum.AssetType.RightArm]
      906 GETIMPORT                        R20 K190 [Enum.AssetType.RightLeg]
      908 GETIMPORT                        R21 K202 [Enum.AssetType.RightShoeAccessory]
      910 GETIMPORT                        R22 K192 [Enum.AssetType.Torso]
      912 SETLIST                          R12 R13 10 [1]
      914 SETTABLEKS                       R12 R8 K259 ["BODY_PARTS"]
      916 MOVE                             R12 R5
      917 CALL                             R12 0 1
      918 JUMPIFNOT                        R12 ; [+16]
      919 NEWTABLE                         R12 0 5
      921 GETIMPORT                        R13 K194 [Enum.AssetType.EyebrowAccessory]
      923 GETIMPORT                        R14 K196 [Enum.AssetType.EyelashAccessory]
      925 GETIMPORT                        R15 K261 [Enum.AssetType.FaceMakeup]
      927 GETIMPORT                        R16 K263 [Enum.AssetType.LipMakeup]
      929 GETIMPORT                        R17 K265 [Enum.AssetType.EyeMakeup]
      931 SETLIST                          R12 R13 5 [1]
      933 SETTABLEKS                       R12 R8 K266 ["MAKEUP_ASSET_TYPES"]
      935 RETURN                           R8 1
