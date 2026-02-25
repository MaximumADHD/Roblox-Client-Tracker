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
       33 GETTABLEKS                       R5 R6 K12 ["getFFlagEnableUploadingShoes"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R8 R0 K7 ["Src"]
       40 GETTABLEKS                       R7 R8 K11 ["Flags"]
       42 GETTABLEKS                       R6 R7 K13 ["getFFlagCheckAvatarAssetPrivacy"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R9 R0 K7 ["Src"]
       49 GETTABLEKS                       R8 R9 K11 ["Flags"]
       51 GETTABLEKS                       R7 R8 K14 ["getFFlagEnableUploadingEmote"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R10 R0 K7 ["Src"]
       58 GETTABLEKS                       R9 R10 K11 ["Flags"]
       60 GETTABLEKS                       R8 R9 K15 ["getFFlagEnableUploadingMakeup"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R11 R0 K7 ["Src"]
       67 GETTABLEKS                       R10 R11 K11 ["Flags"]
       69 GETTABLEKS                       R9 R10 K16 ["getFFlagUsePublishMarketplaceActionType"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R10 R2 K17 ["convertArrayToTable"]
       76 CALL                             R9 1 1
       77 NEWTABLE                         R10 64 0
       79 LOADN                            R11 76
       80 SETTABLEKS                       R11 R10 K18 ["WIDTH"]
       82 LOADN                            R11 92
       83 SETTABLEKS                       R11 R10 K19 ["HEIGHT"]
       85 LOADN                            R11 132
       86 SETTABLEKS                       R11 R10 K20 ["MIN_WIDTH"]
       88 LOADN                            R11 244
       89 SETTABLEKS                       R11 R10 K21 ["MIN_HEIGHT"]
       91 LOADK                            R11 K22 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
       92 SETTABLEKS                       R11 R10 K23 ["TERM_OF_USE_URL"]
       94 LOADK                            R11 K24 ["https://www.roblox.com/my/account#!/info"]
       95 SETTABLEKS                       R11 R10 K25 ["ACCOUNT_SETTING_URL"]
       97 LOADN                            R11 50
       98 SETTABLEKS                       R11 R10 K26 ["NAME_CHARACTER_LIMIT"]
      100 LOADN                            R11 232
      101 SETTABLEKS                       R11 R10 K27 ["DESCRIPTION_CHARACTER_LIMIT"]
      103 LOADN                            R11 244
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
      156 GETIMPORT                        R14 K53 [Enum.Genre.All]
      158 GETTABLEKS                       R13 R14 K54 ["Name"]
      160 SETTABLEKS                       R13 R12 K48 ["name"]
      162 DUPTABLE                         R13 K49 [{"name"}]
      163 GETIMPORT                        R15 K56 [Enum.Genre.TownAndCity]
      165 GETTABLEKS                       R14 R15 K54 ["Name"]
      167 SETTABLEKS                       R14 R13 K48 ["name"]
      169 DUPTABLE                         R14 K49 [{"name"}]
      170 GETIMPORT                        R16 K58 [Enum.Genre.Fantasy]
      172 GETTABLEKS                       R15 R16 K54 ["Name"]
      174 SETTABLEKS                       R15 R14 K48 ["name"]
      176 DUPTABLE                         R15 K49 [{"name"}]
      177 GETIMPORT                        R17 K60 [Enum.Genre.SciFi]
      179 GETTABLEKS                       R16 R17 K54 ["Name"]
      181 SETTABLEKS                       R16 R15 K48 ["name"]
      183 DUPTABLE                         R16 K49 [{"name"}]
      184 GETIMPORT                        R18 K62 [Enum.Genre.Ninja]
      186 GETTABLEKS                       R17 R18 K54 ["Name"]
      188 SETTABLEKS                       R17 R16 K48 ["name"]
      190 DUPTABLE                         R17 K49 [{"name"}]
      191 GETIMPORT                        R19 K64 [Enum.Genre.Scary]
      193 GETTABLEKS                       R18 R19 K54 ["Name"]
      195 SETTABLEKS                       R18 R17 K48 ["name"]
      197 DUPTABLE                         R18 K49 [{"name"}]
      198 GETIMPORT                        R20 K66 [Enum.Genre.Pirate]
      200 GETTABLEKS                       R19 R20 K54 ["Name"]
      202 SETTABLEKS                       R19 R18 K48 ["name"]
      204 DUPTABLE                         R19 K49 [{"name"}]
      205 GETIMPORT                        R21 K68 [Enum.Genre.Adventure]
      207 GETTABLEKS                       R20 R21 K54 ["Name"]
      209 SETTABLEKS                       R20 R19 K48 ["name"]
      211 DUPTABLE                         R20 K49 [{"name"}]
      212 GETIMPORT                        R22 K70 [Enum.Genre.Sports]
      214 GETTABLEKS                       R21 R22 K54 ["Name"]
      216 SETTABLEKS                       R21 R20 K48 ["name"]
      218 DUPTABLE                         R21 K49 [{"name"}]
      219 GETIMPORT                        R23 K72 [Enum.Genre.Funny]
      221 GETTABLEKS                       R22 R23 K54 ["Name"]
      223 SETTABLEKS                       R22 R21 K48 ["name"]
      225 DUPTABLE                         R22 K49 [{"name"}]
      226 GETIMPORT                        R24 K74 [Enum.Genre.WildWest]
      228 GETTABLEKS                       R23 R24 K54 ["Name"]
      230 SETTABLEKS                       R23 R22 K48 ["name"]
      232 DUPTABLE                         R23 K49 [{"name"}]
      233 GETIMPORT                        R25 K76 [Enum.Genre.War]
      235 GETTABLEKS                       R24 R25 K54 ["Name"]
      237 SETTABLEKS                       R24 R23 K48 ["name"]
      239 DUPTABLE                         R24 K49 [{"name"}]
      240 GETIMPORT                        R26 K78 [Enum.Genre.SkatePark]
      242 GETTABLEKS                       R25 R26 K54 ["Name"]
      244 SETTABLEKS                       R25 R24 K48 ["name"]
      246 DUPTABLE                         R25 K49 [{"name"}]
      247 GETIMPORT                        R27 K80 [Enum.Genre.Tutorial]
      249 GETTABLEKS                       R26 R27 K54 ["Name"]
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
      388 DUPTABLE                         R13 K147 [{"AvatarHeadshotImageSize", "GroupIconImageSize", "AssetThumbnailSize"}]
      389 LOADN                            R14 60
      390 SETTABLEKS                       R14 R13 K144 ["AvatarHeadshotImageSize"]
      392 LOADN                            R14 150
      393 SETTABLEKS                       R14 R13 K145 ["GroupIconImageSize"]
      395 LOADN                            R14 164
      396 SETTABLEKS                       R14 R13 K146 ["AssetThumbnailSize"]
      398 SETTABLEKS                       R13 R10 K148 ["rbxThumbSizes"]
      400 DUPTABLE                         R13 K154 [{"MaxThumbnails", "AspectRatioHeight", "AspectRatioWidth", "RecommendedHeight", "RecommendedWidth"}]
      401 LOADN                            R14 5
      402 SETTABLEKS                       R14 R13 K149 ["MaxThumbnails"]
      404 LOADN                            R14 9
      405 SETTABLEKS                       R14 R13 K150 ["AspectRatioHeight"]
      407 LOADN                            R14 16
      408 SETTABLEKS                       R14 R13 K151 ["AspectRatioWidth"]
      410 LOADN                            R14 176
      411 SETTABLEKS                       R14 R13 K152 ["RecommendedHeight"]
      413 LOADN                            R14 0
      414 SETTABLEKS                       R14 R13 K153 ["RecommendedWidth"]
      416 SETTABLEKS                       R13 R10 K155 ["additionalImages"]
      418 NEWTABLE                         R13 0 3
      420 LOADK                            R14 K156 ["jpg"]
      421 LOADK                            R15 K157 ["jpeg"]
      422 LOADK                            R16 K158 ["png"]
      423 SETLIST                          R13 R14 3 [1]
      425 SETTABLEKS                       R13 R10 K159 ["IMAGE_TYPES"]
      427 LOADK                            R13 K160 ["Success"]
      428 SETTABLEKS                       R13 R10 K161 ["TAGS_SUGGESTION_SUCCESS"]
      430 LOADN                            R13 5
      431 SETTABLEKS                       R13 R10 K162 ["MAX_DISPLAY_SUGGESTIONS"]
      433 LOADN                            R13 10
      434 SETTABLEKS                       R13 R10 K163 ["MAX_FETCH_SUGGESTIONS"]
      436 LOADK                            R13 K164 ["avatar_meshpart_accessory"]
      437 SETTABLEKS                       R13 R10 K165 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
      439 LOADK                            R13 K166 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
      440 SETTABLEKS                       R13 R10 K167 ["MULTIPART_FORM_BOUNDARY"]
      442 LOADK                            R13 K168 ["OverrideAssetId"]
      443 SETTABLEKS                       R13 R10 K169 ["OVERRIDE_ASSET_ID"]
      445 DUPTABLE                         R13 K172 [{"Public", "Private"}]
      446 LOADB                            R14 1
      447 SETTABLEKS                       R14 R13 K170 ["Public"]
      449 LOADB                            R14 0
      450 SETTABLEKS                       R14 R13 K171 ["Private"]
      452 SETTABLEKS                       R13 R10 K173 ["SHARING_KEYS"]
      454 MOVE                             R14 R4
      455 CALL                             R14 0 1
      456 JUMPIFNOT                        R14 ; [+8]
      457 NEWTABLE                         R13 0 3
      459 LOADK                            R14 K174 ["Body"]
      460 LOADK                            R15 K175 ["DynamicHead"]
      461 LOADK                            R16 K176 ["Shoes"]
      462 SETLIST                          R13 R14 3 [1]
      464 JUMP                             ; [+6]
      465 NEWTABLE                         R13 0 2
      467 LOADK                            R14 K174 ["Body"]
      468 LOADK                            R15 K175 ["DynamicHead"]
      469 SETLIST                          R13 R14 2 [1]
      471 NEWTABLE                         R14 0 0
      473 SETTABLEKS                       R14 R10 K177 ["UGCBundleTypes"]
      475 GETIMPORT                        R14 K179 [ipairs]
      477 MOVE                             R15 R13
      478 CALL                             R14 1 3
      479 FORGPREP_INEXT                   R14
      480 DUPTABLE                         R19 K181 [{"Name", "Value"}]
      481 SETTABLEKS                       R18 R19 K54 ["Name"]
      483 SETTABLEKS                       R17 R19 K180 ["Value"]
      485 GETTABLEKS                       R20 R10 K177 ["UGCBundleTypes"]
      487 SETTABLE                         R19 R20 R18
      488 NEWCLOSURE                       R20 P4
      489 CAPTURE                          VAL R19
      490 SETTABLEKS                       R20 R19 K182 ["rawValue"]
      492 FORGLOOP                         R14 2 [inext] ; [-13]
      494 MOVE                             R15 R4
      495 CALL                             R15 0 1
      496 JUMPIFNOT                        R15 ; [+39]
      497 NEWTABLE                         R14 4 0
      499 GETTABLEKS                       R17 R10 K177 ["UGCBundleTypes"]
      501 GETTABLEKS                       R16 R17 K174 ["Body"]
      503 GETTABLEKS                       R15 R16 K182 ["rawValue"]
      505 CALL                             R15 0 1
      506 GETTABLEKS                       R17 R10 K177 ["UGCBundleTypes"]
      508 GETTABLEKS                       R16 R17 K174 ["Body"]
      510 SETTABLE                         R16 R14 R15
      511 GETTABLEKS                       R17 R10 K177 ["UGCBundleTypes"]
      513 GETTABLEKS                       R16 R17 K175 ["DynamicHead"]
      515 GETTABLEKS                       R15 R16 K182 ["rawValue"]
      517 CALL                             R15 0 1
      518 GETTABLEKS                       R17 R10 K177 ["UGCBundleTypes"]
      520 GETTABLEKS                       R16 R17 K175 ["DynamicHead"]
      522 SETTABLE                         R16 R14 R15
      523 GETTABLEKS                       R17 R10 K177 ["UGCBundleTypes"]
      525 GETTABLEKS                       R16 R17 K176 ["Shoes"]
      527 GETTABLEKS                       R15 R16 K182 ["rawValue"]
      529 CALL                             R15 0 1
      530 GETTABLEKS                       R17 R10 K177 ["UGCBundleTypes"]
      532 GETTABLEKS                       R16 R17 K176 ["Shoes"]
      534 SETTABLE                         R16 R14 R15
      535 JUMP                             ; [+26]
      536 NEWTABLE                         R14 2 0
      538 GETTABLEKS                       R17 R10 K177 ["UGCBundleTypes"]
      540 GETTABLEKS                       R16 R17 K174 ["Body"]
      542 GETTABLEKS                       R15 R16 K182 ["rawValue"]
      544 CALL                             R15 0 1
      545 GETTABLEKS                       R17 R10 K177 ["UGCBundleTypes"]
      547 GETTABLEKS                       R16 R17 K174 ["Body"]
      549 SETTABLE                         R16 R14 R15
      550 GETTABLEKS                       R17 R10 K177 ["UGCBundleTypes"]
      552 GETTABLEKS                       R16 R17 K175 ["DynamicHead"]
      554 GETTABLEKS                       R15 R16 K182 ["rawValue"]
      556 CALL                             R15 0 1
      557 GETTABLEKS                       R17 R10 K177 ["UGCBundleTypes"]
      559 GETTABLEKS                       R16 R17 K175 ["DynamicHead"]
      561 SETTABLE                         R16 R14 R15
      562 SETTABLEKS                       R14 R10 K183 ["UGCBundleTypeStringToEnumeration"]
      564 MOVE                             R15 R4
      565 CALL                             R15 0 1
      566 JUMPIFNOT                        R15 ; [+47]
      567 NEWTABLE                         R14 16 0
      569 GETIMPORT                        R15 K184 [Enum.AssetType.DynamicHead]
      571 SETTABLEKS                       R15 R14 K175 ["DynamicHead"]
      573 GETIMPORT                        R15 K186 [Enum.AssetType.LeftArm]
      575 SETTABLEKS                       R15 R14 K185 ["LeftArm"]
      577 GETIMPORT                        R15 K188 [Enum.AssetType.LeftLeg]
      579 SETTABLEKS                       R15 R14 K187 ["LeftLeg"]
      581 GETIMPORT                        R15 K190 [Enum.AssetType.RightArm]
      583 SETTABLEKS                       R15 R14 K189 ["RightArm"]
      585 GETIMPORT                        R15 K192 [Enum.AssetType.RightLeg]
      587 SETTABLEKS                       R15 R14 K191 ["RightLeg"]
      589 GETIMPORT                        R15 K194 [Enum.AssetType.Torso]
      591 SETTABLEKS                       R15 R14 K193 ["Torso"]
      593 GETIMPORT                        R15 K196 [Enum.AssetType.EyebrowAccessory]
      595 SETTABLEKS                       R15 R14 K195 ["EyebrowAccessory"]
      597 GETIMPORT                        R15 K198 [Enum.AssetType.EyelashAccessory]
      599 SETTABLEKS                       R15 R14 K197 ["EyelashAccessory"]
      601 GETIMPORT                        R15 K200 [Enum.AssetType.HairAccessory]
      603 SETTABLEKS                       R15 R14 K199 ["HairAccessory"]
      605 GETIMPORT                        R15 K202 [Enum.AssetType.LeftShoeAccessory]
      607 SETTABLEKS                       R15 R14 K201 ["LeftShoeAccessory"]
      609 GETIMPORT                        R15 K204 [Enum.AssetType.RightShoeAccessory]
      611 SETTABLEKS                       R15 R14 K203 ["RightShoeAccessory"]
      613 JUMP                             ; [+38]
      614 NEWTABLE                         R14 16 0
      616 GETIMPORT                        R15 K184 [Enum.AssetType.DynamicHead]
      618 SETTABLEKS                       R15 R14 K175 ["DynamicHead"]
      620 GETIMPORT                        R15 K186 [Enum.AssetType.LeftArm]
      622 SETTABLEKS                       R15 R14 K185 ["LeftArm"]
      624 GETIMPORT                        R15 K188 [Enum.AssetType.LeftLeg]
      626 SETTABLEKS                       R15 R14 K187 ["LeftLeg"]
      628 GETIMPORT                        R15 K190 [Enum.AssetType.RightArm]
      630 SETTABLEKS                       R15 R14 K189 ["RightArm"]
      632 GETIMPORT                        R15 K192 [Enum.AssetType.RightLeg]
      634 SETTABLEKS                       R15 R14 K191 ["RightLeg"]
      636 GETIMPORT                        R15 K194 [Enum.AssetType.Torso]
      638 SETTABLEKS                       R15 R14 K193 ["Torso"]
      640 GETIMPORT                        R15 K196 [Enum.AssetType.EyebrowAccessory]
      642 SETTABLEKS                       R15 R14 K195 ["EyebrowAccessory"]
      644 GETIMPORT                        R15 K198 [Enum.AssetType.EyelashAccessory]
      646 SETTABLEKS                       R15 R14 K197 ["EyelashAccessory"]
      648 GETIMPORT                        R15 K200 [Enum.AssetType.HairAccessory]
      650 SETTABLEKS                       R15 R14 K199 ["HairAccessory"]
      652 SETTABLEKS                       R14 R10 K205 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      654 DUPTABLE                         R14 K221 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperArm", "LeftLowerArm", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
      655 LOADK                            R15 K206 ["Head"]
      656 SETTABLEKS                       R15 R14 K206 ["Head"]
      658 LOADK                            R15 K207 ["UpperTorso"]
      659 SETTABLEKS                       R15 R14 K207 ["UpperTorso"]
      661 LOADK                            R15 K208 ["LowerTorso"]
      662 SETTABLEKS                       R15 R14 K208 ["LowerTorso"]
      664 LOADK                            R15 K209 ["LeftUpperLeg"]
      665 SETTABLEKS                       R15 R14 K209 ["LeftUpperLeg"]
      667 LOADK                            R15 K210 ["LeftLowerLeg"]
      668 SETTABLEKS                       R15 R14 K210 ["LeftLowerLeg"]
      670 LOADK                            R15 K211 ["LeftHand"]
      671 SETTABLEKS                       R15 R14 K211 ["LeftHand"]
      673 LOADK                            R15 K212 ["RightUpperArm"]
      674 SETTABLEKS                       R15 R14 K212 ["RightUpperArm"]
      676 LOADK                            R15 K213 ["RightLowerArm"]
      677 SETTABLEKS                       R15 R14 K213 ["RightLowerArm"]
      679 LOADK                            R15 K214 ["RightHand"]
      680 SETTABLEKS                       R15 R14 K214 ["RightHand"]
      682 LOADK                            R15 K215 ["LeftUpperArm"]
      683 SETTABLEKS                       R15 R14 K215 ["LeftUpperArm"]
      685 LOADK                            R15 K216 ["LeftLowerArm"]
      686 SETTABLEKS                       R15 R14 K216 ["LeftLowerArm"]
      688 LOADK                            R15 K217 ["LeftFoot"]
      689 SETTABLEKS                       R15 R14 K217 ["LeftFoot"]
      691 LOADK                            R15 K218 ["RightUpperLeg"]
      692 SETTABLEKS                       R15 R14 K218 ["RightUpperLeg"]
      694 LOADK                            R15 K219 ["RightLowerLeg"]
      695 SETTABLEKS                       R15 R14 K219 ["RightLowerLeg"]
      697 LOADK                            R15 K220 ["RightFoot"]
      698 SETTABLEKS                       R15 R14 K220 ["RightFoot"]
      700 LOADK                            R15 K195 ["EyebrowAccessory"]
      701 SETTABLEKS                       R15 R14 K195 ["EyebrowAccessory"]
      703 LOADK                            R15 K197 ["EyelashAccessory"]
      704 SETTABLEKS                       R15 R14 K197 ["EyelashAccessory"]
      706 LOADK                            R15 K199 ["HairAccessory"]
      707 SETTABLEKS                       R15 R14 K199 ["HairAccessory"]
      709 SETTABLEKS                       R14 R10 K222 ["UGC_BODY_PARTS"]
      711 MOVE                             R15 R4
      712 CALL                             R15 0 1
      713 JUMPIFNOT                        R15 ; [+8]
      714 DUPTABLE                         R14 K223 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      715 LOADK                            R15 K201 ["LeftShoeAccessory"]
      716 SETTABLEKS                       R15 R14 K201 ["LeftShoeAccessory"]
      718 LOADK                            R15 K203 ["RightShoeAccessory"]
      719 SETTABLEKS                       R15 R14 K203 ["RightShoeAccessory"]
      721 JUMP                             ; [+1]
      722 LOADNIL                          R14
      723 SETTABLEKS                       R14 R10 K224 ["UGC_BUNDLE_PARTS"]
      725 NEWTABLE                         R14 32 0
      727 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      729 GETTABLEKS                       R15 R16 K206 ["Head"]
      731 GETIMPORT                        R16 K184 [Enum.AssetType.DynamicHead]
      733 SETTABLE                         R16 R14 R15
      734 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      736 GETTABLEKS                       R15 R16 K207 ["UpperTorso"]
      738 GETIMPORT                        R16 K194 [Enum.AssetType.Torso]
      740 SETTABLE                         R16 R14 R15
      741 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      743 GETTABLEKS                       R15 R16 K208 ["LowerTorso"]
      745 GETIMPORT                        R16 K194 [Enum.AssetType.Torso]
      747 SETTABLE                         R16 R14 R15
      748 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      750 GETTABLEKS                       R15 R16 K215 ["LeftUpperArm"]
      752 GETIMPORT                        R16 K186 [Enum.AssetType.LeftArm]
      754 SETTABLE                         R16 R14 R15
      755 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      757 GETTABLEKS                       R15 R16 K216 ["LeftLowerArm"]
      759 GETIMPORT                        R16 K186 [Enum.AssetType.LeftArm]
      761 SETTABLE                         R16 R14 R15
      762 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      764 GETTABLEKS                       R15 R16 K211 ["LeftHand"]
      766 GETIMPORT                        R16 K186 [Enum.AssetType.LeftArm]
      768 SETTABLE                         R16 R14 R15
      769 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      771 GETTABLEKS                       R15 R16 K212 ["RightUpperArm"]
      773 GETIMPORT                        R16 K190 [Enum.AssetType.RightArm]
      775 SETTABLE                         R16 R14 R15
      776 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      778 GETTABLEKS                       R15 R16 K213 ["RightLowerArm"]
      780 GETIMPORT                        R16 K190 [Enum.AssetType.RightArm]
      782 SETTABLE                         R16 R14 R15
      783 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      785 GETTABLEKS                       R15 R16 K214 ["RightHand"]
      787 GETIMPORT                        R16 K190 [Enum.AssetType.RightArm]
      789 SETTABLE                         R16 R14 R15
      790 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      792 GETTABLEKS                       R15 R16 K209 ["LeftUpperLeg"]
      794 GETIMPORT                        R16 K188 [Enum.AssetType.LeftLeg]
      796 SETTABLE                         R16 R14 R15
      797 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      799 GETTABLEKS                       R15 R16 K210 ["LeftLowerLeg"]
      801 GETIMPORT                        R16 K188 [Enum.AssetType.LeftLeg]
      803 SETTABLE                         R16 R14 R15
      804 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      806 GETTABLEKS                       R15 R16 K217 ["LeftFoot"]
      808 GETIMPORT                        R16 K188 [Enum.AssetType.LeftLeg]
      810 SETTABLE                         R16 R14 R15
      811 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      813 GETTABLEKS                       R15 R16 K218 ["RightUpperLeg"]
      815 GETIMPORT                        R16 K192 [Enum.AssetType.RightLeg]
      817 SETTABLE                         R16 R14 R15
      818 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      820 GETTABLEKS                       R15 R16 K219 ["RightLowerLeg"]
      822 GETIMPORT                        R16 K192 [Enum.AssetType.RightLeg]
      824 SETTABLE                         R16 R14 R15
      825 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      827 GETTABLEKS                       R15 R16 K220 ["RightFoot"]
      829 GETIMPORT                        R16 K192 [Enum.AssetType.RightLeg]
      831 SETTABLE                         R16 R14 R15
      832 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      834 GETTABLEKS                       R15 R16 K195 ["EyebrowAccessory"]
      836 GETIMPORT                        R16 K196 [Enum.AssetType.EyebrowAccessory]
      838 SETTABLE                         R16 R14 R15
      839 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      841 GETTABLEKS                       R15 R16 K197 ["EyelashAccessory"]
      843 GETIMPORT                        R16 K198 [Enum.AssetType.EyelashAccessory]
      845 SETTABLE                         R16 R14 R15
      846 GETTABLEKS                       R16 R10 K222 ["UGC_BODY_PARTS"]
      848 GETTABLEKS                       R15 R16 K199 ["HairAccessory"]
      850 GETIMPORT                        R16 K200 [Enum.AssetType.HairAccessory]
      852 SETTABLE                         R16 R14 R15
      853 SETTABLEKS                       R14 R10 K225 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      855 MOVE                             R15 R4
      856 CALL                             R15 0 1
      857 JUMPIFNOT                        R15 ; [+17]
      858 NEWTABLE                         R14 2 0
      860 GETTABLEKS                       R16 R10 K224 ["UGC_BUNDLE_PARTS"]
      862 GETTABLEKS                       R15 R16 K201 ["LeftShoeAccessory"]
      864 GETIMPORT                        R16 K202 [Enum.AssetType.LeftShoeAccessory]
      866 SETTABLE                         R16 R14 R15
      867 GETTABLEKS                       R16 R10 K224 ["UGC_BUNDLE_PARTS"]
      869 GETTABLEKS                       R15 R16 K203 ["RightShoeAccessory"]
      871 GETIMPORT                        R16 K204 [Enum.AssetType.RightShoeAccessory]
      873 SETTABLE                         R16 R14 R15
      874 JUMP                             ; [+1]
      875 LOADNIL                          R14
      876 SETTABLEKS                       R14 R10 K226 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
      878 MOVE                             R14 R3
      879 CALL                             R14 0 1
      880 JUMPIFNOT                        R14 ; [+90]
      881 DUPTABLE                         R14 K230 [{"Classic", "ProportionsNormal", "ProportionsSlender", "Unknown"}]
      882 LOADK                            R15 K227 ["Classic"]
      883 SETTABLEKS                       R15 R14 K227 ["Classic"]
      885 LOADK                            R15 K228 ["ProportionsNormal"]
      886 SETTABLEKS                       R15 R14 K228 ["ProportionsNormal"]
      888 LOADK                            R15 K229 ["ProportionsSlender"]
      889 SETTABLEKS                       R15 R14 K229 ["ProportionsSlender"]
      891 LOADK                            R15 K92 ["Unknown"]
      892 SETTABLEKS                       R15 R14 K92 ["Unknown"]
      894 SETTABLEKS                       R14 R10 K231 ["BodyScaleTypes"]
      896 DUPTABLE                         R14 K232 [{"Classic", "ProportionsNormal", "ProportionsSlender"}]
      897 DUPTABLE                         R15 K238 [{"height", "width", "head", "proportion", "bodyType"}]
      898 LOADN                            R16 1
      899 SETTABLEKS                       R16 R15 K233 ["height"]
      901 LOADN                            R16 1
      902 SETTABLEKS                       R16 R15 K234 ["width"]
      904 LOADN                            R16 1
      905 SETTABLEKS                       R16 R15 K235 ["head"]
      907 LOADN                            R16 0
      908 SETTABLEKS                       R16 R15 K236 ["proportion"]
      910 LOADN                            R16 0
      911 SETTABLEKS                       R16 R15 K237 ["bodyType"]
      913 SETTABLEKS                       R15 R14 K227 ["Classic"]
      915 DUPTABLE                         R15 K238 [{"height", "width", "head", "proportion", "bodyType"}]
      916 LOADN                            R16 1
      917 SETTABLEKS                       R16 R15 K233 ["height"]
      919 LOADN                            R16 1
      920 SETTABLEKS                       R16 R15 K234 ["width"]
      922 LOADN                            R16 1
      923 SETTABLEKS                       R16 R15 K235 ["head"]
      925 LOADN                            R16 0
      926 SETTABLEKS                       R16 R15 K236 ["proportion"]
      928 LOADN                            R16 1
      929 SETTABLEKS                       R16 R15 K237 ["bodyType"]
      931 SETTABLEKS                       R15 R14 K228 ["ProportionsNormal"]
      933 DUPTABLE                         R15 K238 [{"height", "width", "head", "proportion", "bodyType"}]
      934 LOADN                            R16 1
      935 SETTABLEKS                       R16 R15 K233 ["height"]
      937 LOADN                            R16 1
      938 SETTABLEKS                       R16 R15 K234 ["width"]
      940 LOADN                            R16 1
      941 SETTABLEKS                       R16 R15 K235 ["head"]
      943 LOADN                            R16 1
      944 SETTABLEKS                       R16 R15 K236 ["proportion"]
      946 LOADN                            R16 1
      947 SETTABLEKS                       R16 R15 K237 ["bodyType"]
      949 SETTABLEKS                       R15 R14 K229 ["ProportionsSlender"]
      951 SETTABLEKS                       R14 R10 K239 ["BodyScaleDefaults"]
      953 DUPTABLE                         R14 K240 [{"height", "width", "head", "bodyType", "proportion"}]
      954 LOADK                            R15 K241 ["BodyHeightScale"]
      955 SETTABLEKS                       R15 R14 K233 ["height"]
      957 LOADK                            R15 K242 ["BodyWidthScale"]
      958 SETTABLEKS                       R15 R14 K234 ["width"]
      960 LOADK                            R15 K243 ["HeadScale"]
      961 SETTABLEKS                       R15 R14 K235 ["head"]
      963 LOADK                            R15 K244 ["BodyTypeScale"]
      964 SETTABLEKS                       R15 R14 K237 ["bodyType"]
      966 LOADK                            R15 K245 ["BodyProportionScale"]
      967 SETTABLEKS                       R15 R14 K236 ["proportion"]
      969 SETTABLEKS                       R14 R10 K246 ["bodyScaleNameToString"]
      971 DUPTABLE                         R14 K252 [{"NONE", "BEGIN", "VALIDATING", "SUCCESS", "FAILURE"}]
      972 LOADK                            R15 K253 ["None"]
      973 SETTABLEKS                       R15 R14 K247 ["NONE"]
      975 LOADK                            R15 K254 ["Begin"]
      976 SETTABLEKS                       R15 R14 K248 ["BEGIN"]
      978 LOADK                            R15 K255 ["Validating"]
      979 SETTABLEKS                       R15 R14 K249 ["VALIDATING"]
      981 LOADK                            R15 K160 ["Success"]
      982 SETTABLEKS                       R15 R14 K250 ["SUCCESS"]
      984 LOADK                            R15 K0 ["script"]
      985 SETTABLEKS                       R15 R14 K251 ["FAILURE"]
      987 SETTABLEKS                       R14 R10 K257 ["VALIDATION_STATE"]
      989 MOVE                             R14 R5
      990 CALL                             R14 0 1
      991 JUMPIFNOT                        R14 ; [+8]
      992 NEWTABLE                         R14 0 2
      994 LOADK                            R15 K2 ["Parent"]
      995 LOADK                            R16 K3 ["require"]
      996 SETLIST                          R14 R15 2 [1]
      998 SETTABLEKS                       R14 R10 K260 ["assetIdStringPatterns"]
     1000 NEWTABLE                         R14 0 10
     1002 GETIMPORT                        R15 K184 [Enum.AssetType.DynamicHead]
     1004 GETIMPORT                        R16 K196 [Enum.AssetType.EyebrowAccessory]
     1006 GETIMPORT                        R17 K198 [Enum.AssetType.EyelashAccessory]
     1008 GETIMPORT                        R18 K186 [Enum.AssetType.LeftArm]
     1010 GETIMPORT                        R19 K188 [Enum.AssetType.LeftLeg]
     1012 GETIMPORT                        R20 K202 [Enum.AssetType.LeftShoeAccessory]
     1014 GETIMPORT                        R21 K190 [Enum.AssetType.RightArm]
     1016 GETIMPORT                        R22 K192 [Enum.AssetType.RightLeg]
     1018 GETIMPORT                        R23 K204 [Enum.AssetType.RightShoeAccessory]
     1020 GETIMPORT                        R24 K194 [Enum.AssetType.Torso]
     1022 SETLIST                          R14 R15 10 [1]
     1024 SETTABLEKS                       R14 R10 K261 ["BODY_PARTS"]
     1026 MOVE                             R14 R7
     1027 CALL                             R14 0 1
     1028 JUMPIFNOT                        R14 ; [+16]
     1029 NEWTABLE                         R14 0 5
     1031 GETIMPORT                        R15 K196 [Enum.AssetType.EyebrowAccessory]
     1033 GETIMPORT                        R16 K198 [Enum.AssetType.EyelashAccessory]
     1035 GETIMPORT                        R17 K263 [Enum.AssetType.FaceMakeup]
     1037 GETIMPORT                        R18 K265 [Enum.AssetType.LipMakeup]
     1039 GETIMPORT                        R19 K267 [Enum.AssetType.EyeMakeup]
     1041 SETLIST                          R14 R15 5 [1]
     1043 SETTABLEKS                       R14 R10 K268 ["MAKEUP_ASSET_TYPES"]
     1045 RETURN                           R10 1
