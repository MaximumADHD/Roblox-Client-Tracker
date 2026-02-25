PROTO_0:
        0 GETIMPORT                        R3 K1 [require]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K2 ["Src"]
        5 GETTABLEKS                       R5 R6 K3 ["Flags"]
        7 GETTABLEKS                       R4 R5 K4 ["getFFlagAACPermissionsPage"]
        9 CALL                             R3 1 1
       10 CALL                             R3 0 1
       11 NOT                              R2 R3
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["This component is deprecated by FFlagAACPermissionsPage"]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 DUPTABLE                         R1 K9 [{"OwnerType"}]
       19 GETIMPORT                        R3 K12 [Enum.CreatorType]
       21 GETTABLEKS                       R6 R0 K13 ["props"]
       23 GETTABLEKS                       R5 R6 K14 ["Owner"]
       25 GETTABLEKS                       R4 R5 K15 ["type"]
       27 GETTABLE                         R2 R3 R4
       28 SETTABLEKS                       R2 R1 K8 ["OwnerType"]
       30 SETTABLEKS                       R1 R0 K16 ["state"]
       32 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["new"]
        7 CALL                             R2 0 1
        8 LOADB                            R3 1
        9 GETTABLEKS                       R5 R0 K0 ["props"]
       11 GETTABLEKS                       R4 R5 K3 ["CurrentUserPackagePermission"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K4 ["OwnKey"]
       16 JUMPIFEQ                         R4 R5 ; [+12]
       18 GETTABLEKS                       R5 R0 K0 ["props"]
       20 GETTABLEKS                       R4 R5 K3 ["CurrentUserPackagePermission"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K5 ["EditKey"]
       25 JUMPIFEQ                         R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 GETTABLEKS                       R6 R0 K0 ["props"]
       31 GETTABLEKS                       R5 R6 K3 ["CurrentUserPackagePermission"]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R6 R7 K4 ["OwnKey"]
       36 JUMPIFEQ                         R5 R6 ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 GETTABLEKS                       R7 R0 K6 ["state"]
       42 GETTABLEKS                       R6 R7 K7 ["OwnerType"]
       44 GETIMPORT                        R7 K11 [Enum.CreatorType.User]
       46 JUMPIFEQ                         R6 R7 ; [+2]
       48 LOADB                            R5 0 +1
       49 LOADB                            R5 1
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R7 R8 K13 ["FONT_SIZE_MEDIUM"]
       53 MULK                             R6 R7 K12 [2]
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R7 R8 K14 ["createElement"]
       57 GETUPVAL                         R8 4
       58 DUPTABLE                         R9 K19 [{"AutomaticCanvasSize", "EnableScrollBarBackground", "LayoutOrder", "Size"}]
       59 GETIMPORT                        R10 K22 [Enum.AutomaticSize.Y]
       61 SETTABLEKS                       R10 R9 K15 ["AutomaticCanvasSize"]
       63 LOADB                            R10 1
       64 SETTABLEKS                       R10 R9 K16 ["EnableScrollBarBackground"]
       66 GETTABLEKS                       R11 R0 K0 ["props"]
       68 GETTABLEKS                       R10 R11 K17 ["LayoutOrder"]
       70 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       72 GETTABLEKS                       R11 R0 K0 ["props"]
       74 GETTABLEKS                       R10 R11 K18 ["Size"]
       76 SETTABLEKS                       R10 R9 K18 ["Size"]
       78 DUPTABLE                         R10 K30 [{"Padding", "UIListLayout", "OwnerWidget", "Separator", "SearchbarWidget", "RevokedWarningMessage", "CollaboratorListWidget"}]
       79 GETUPVAL                         R12 3
       80 GETTABLEKS                       R11 R12 K14 ["createElement"]
       82 LOADK                            R12 K31 ["UIPadding"]
       83 DUPTABLE                         R13 K36 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       84 GETIMPORT                        R14 K38 [UDim.new]
       86 LOADN                            R15 0
       87 GETUPVAL                         R17 2
       88 GETTABLEKS                       R16 R17 K39 ["PERMISSIONS_UI_EDGE_PADDING"]
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K32 ["PaddingTop"]
       93 GETIMPORT                        R14 K38 [UDim.new]
       95 LOADN                            R15 0
       96 GETUPVAL                         R17 2
       97 GETTABLEKS                       R16 R17 K39 ["PERMISSIONS_UI_EDGE_PADDING"]
       99 CALL                             R14 2 1
      100 SETTABLEKS                       R14 R13 K33 ["PaddingBottom"]
      102 GETIMPORT                        R14 K38 [UDim.new]
      104 LOADN                            R15 0
      105 GETUPVAL                         R17 2
      106 GETTABLEKS                       R16 R17 K39 ["PERMISSIONS_UI_EDGE_PADDING"]
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K34 ["PaddingLeft"]
      111 GETIMPORT                        R14 K38 [UDim.new]
      113 LOADN                            R15 0
      114 GETUPVAL                         R17 2
      115 GETTABLEKS                       R16 R17 K39 ["PERMISSIONS_UI_EDGE_PADDING"]
      117 CALL                             R14 2 1
      118 SETTABLEKS                       R14 R13 K35 ["PaddingRight"]
      120 CALL                             R11 2 1
      121 SETTABLEKS                       R11 R10 K23 ["Padding"]
      123 GETUPVAL                         R12 3
      124 GETTABLEKS                       R11 R12 K14 ["createElement"]
      126 LOADK                            R12 K24 ["UIListLayout"]
      127 DUPTABLE                         R13 K41 [{"Padding", "SortOrder"}]
      128 GETIMPORT                        R14 K38 [UDim.new]
      130 LOADN                            R15 0
      131 GETUPVAL                         R17 2
      132 GETTABLEKS                       R16 R17 K42 ["PERMISSIONS_TAB_LIST_PADDING"]
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K23 ["Padding"]
      137 GETIMPORT                        R14 K43 [Enum.SortOrder.LayoutOrder]
      139 SETTABLEKS                       R14 R13 K40 ["SortOrder"]
      141 CALL                             R11 2 1
      142 SETTABLEKS                       R11 R10 K24 ["UIListLayout"]
      144 GETUPVAL                         R12 3
      145 GETTABLEKS                       R11 R12 K14 ["createElement"]
      147 GETUPVAL                         R12 5
      148 DUPTABLE                         R13 K51 [{"LayoutOrder", "Enabled", "OwnerName", "OwnerId", "OwnerType", "CanManage", "GroupMetadata", "Permissions", "PermissionsChanged"}]
      149 NAMECALL                         R14 R2 K52 ["getNextOrder"]
      151 CALL                             R14 1 1
      152 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      154 LOADB                            R14 1
      155 SETTABLEKS                       R14 R13 K44 ["Enabled"]
      157 GETTABLEKS                       R16 R0 K0 ["props"]
      159 GETTABLEKS                       R15 R16 K53 ["Owner"]
      161 GETTABLEKS                       R14 R15 K54 ["username"]
      163 SETTABLEKS                       R14 R13 K45 ["OwnerName"]
      165 GETTABLEKS                       R16 R0 K0 ["props"]
      167 GETTABLEKS                       R15 R16 K53 ["Owner"]
      169 GETTABLEKS                       R14 R15 K55 ["targetId"]
      171 SETTABLEKS                       R14 R13 K46 ["OwnerId"]
      173 GETTABLEKS                       R15 R0 K6 ["state"]
      175 GETTABLEKS                       R14 R15 K7 ["OwnerType"]
      177 SETTABLEKS                       R14 R13 K7 ["OwnerType"]
      179 SETTABLEKS                       R4 R13 K47 ["CanManage"]
      181 GETTABLEKS                       R15 R0 K0 ["props"]
      183 GETTABLEKS                       R14 R15 K48 ["GroupMetadata"]
      185 SETTABLEKS                       R14 R13 K48 ["GroupMetadata"]
      187 GETTABLEKS                       R15 R0 K0 ["props"]
      189 GETTABLEKS                       R14 R15 K49 ["Permissions"]
      191 SETTABLEKS                       R14 R13 K49 ["Permissions"]
      193 GETTABLEKS                       R15 R0 K0 ["props"]
      195 GETTABLEKS                       R14 R15 K50 ["PermissionsChanged"]
      197 SETTABLEKS                       R14 R13 K50 ["PermissionsChanged"]
      199 CALL                             R11 2 1
      200 SETTABLEKS                       R11 R10 K25 ["OwnerWidget"]
      202 GETUPVAL                         R12 3
      203 GETTABLEKS                       R11 R12 K14 ["createElement"]
      205 GETUPVAL                         R12 6
      206 DUPTABLE                         R13 K56 [{"LayoutOrder"}]
      207 NAMECALL                         R14 R2 K52 ["getNextOrder"]
      209 CALL                             R14 1 1
      210 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      212 CALL                             R11 2 1
      213 SETTABLEKS                       R11 R10 K26 ["Separator"]
      215 MOVE                             R11 R4
      216 JUMPIFNOT                        R11 ; [+46]
      217 MOVE                             R11 R5
      218 JUMPIFNOT                        R11 ; [+44]
      219 GETUPVAL                         R12 3
      220 GETTABLEKS                       R11 R12 K14 ["createElement"]
      222 GETUPVAL                         R12 7
      223 DUPTABLE                         R13 K59 [{"LayoutOrder", "Enabled", "GroupMetadata", "SearchRequested", "SearchData", "Permissions", "PermissionsChanged"}]
      224 NAMECALL                         R14 R2 K52 ["getNextOrder"]
      226 CALL                             R14 1 1
      227 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      229 LOADB                            R14 1
      230 SETTABLEKS                       R14 R13 K44 ["Enabled"]
      232 GETTABLEKS                       R15 R0 K0 ["props"]
      234 GETTABLEKS                       R14 R15 K48 ["GroupMetadata"]
      236 SETTABLEKS                       R14 R13 K48 ["GroupMetadata"]
      238 GETTABLEKS                       R15 R0 K0 ["props"]
      240 GETTABLEKS                       R14 R15 K57 ["SearchRequested"]
      242 SETTABLEKS                       R14 R13 K57 ["SearchRequested"]
      244 GETTABLEKS                       R15 R0 K0 ["props"]
      246 GETTABLEKS                       R14 R15 K58 ["SearchData"]
      248 SETTABLEKS                       R14 R13 K58 ["SearchData"]
      250 GETTABLEKS                       R15 R0 K0 ["props"]
      252 GETTABLEKS                       R14 R15 K49 ["Permissions"]
      254 SETTABLEKS                       R14 R13 K49 ["Permissions"]
      256 GETTABLEKS                       R15 R0 K0 ["props"]
      258 GETTABLEKS                       R14 R15 K50 ["PermissionsChanged"]
      260 SETTABLEKS                       R14 R13 K50 ["PermissionsChanged"]
      262 CALL                             R11 2 1
      263 SETTABLEKS                       R11 R10 K27 ["SearchbarWidget"]
      265 MOVE                             R11 R4
      266 JUMPIFNOT                        R11 ; [+70]
      267 GETUPVAL                         R12 3
      268 GETTABLEKS                       R11 R12 K14 ["createElement"]
      270 LOADK                            R12 K60 ["TextLabel"]
      271 DUPTABLE                         R13 K68 [{"LayoutOrder", "Size", "Text", "TextXAlignment", "Font", "TextSize", "TextColor3", "TextWrapped", "BackgroundTransparency"}]
      272 NAMECALL                         R14 R2 K52 ["getNextOrder"]
      274 CALL                             R14 1 1
      275 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      277 GETIMPORT                        R14 K70 [UDim2.new]
      279 LOADN                            R15 1
      280 LOADN                            R16 0
      281 LOADN                            R17 0
      282 MOVE                             R18 R6
      283 CALL                             R14 4 1
      284 SETTABLEKS                       R14 R13 K18 ["Size"]
      286 JUMPIFNOT                        R5 ; [+10]
      287 GETTABLEKS                       R15 R0 K0 ["props"]
      289 GETTABLEKS                       R14 R15 K71 ["Localization"]
      291 LOADK                            R16 K72 ["AssetConfigPackagePermissions"]
      292 LOADK                            R17 K73 ["UserOwnedWarningAllVersions"]
      293 NAMECALL                         R14 R14 K74 ["getText"]
      295 CALL                             R14 3 1
      296 JUMP                             ; [+9]
      297 GETTABLEKS                       R15 R0 K0 ["props"]
      299 GETTABLEKS                       R14 R15 K71 ["Localization"]
      301 LOADK                            R16 K72 ["AssetConfigPackagePermissions"]
      302 LOADK                            R17 K75 ["GroupOwnedWarningAllVersions"]
      303 NAMECALL                         R14 R14 K74 ["getText"]
      305 CALL                             R14 3 1
      306 SETTABLEKS                       R14 R13 K61 ["Text"]
      308 GETIMPORT                        R14 K77 [Enum.TextXAlignment.Left]
      310 SETTABLEKS                       R14 R13 K62 ["TextXAlignment"]
      312 GETUPVAL                         R15 2
      313 GETTABLEKS                       R14 R15 K78 ["FONT"]
      315 SETTABLEKS                       R14 R13 K63 ["Font"]
      317 GETUPVAL                         R15 2
      318 GETTABLEKS                       R14 R15 K13 ["FONT_SIZE_MEDIUM"]
      320 SETTABLEKS                       R14 R13 K64 ["TextSize"]
      322 GETTABLEKS                       R16 R1 K79 ["assetConfig"]
      324 GETTABLEKS                       R15 R16 K80 ["packagePermissions"]
      326 GETTABLEKS                       R14 R15 K81 ["subTextColor"]
      328 SETTABLEKS                       R14 R13 K65 ["TextColor3"]
      330 LOADB                            R14 1
      331 SETTABLEKS                       R14 R13 K66 ["TextWrapped"]
      333 LOADN                            R14 1
      334 SETTABLEKS                       R14 R13 K67 ["BackgroundTransparency"]
      336 CALL                             R11 2 1
      337 SETTABLEKS                       R11 R10 K28 ["RevokedWarningMessage"]
      339 MOVE                             R11 R3
      340 JUMPIFNOT                        R11 ; [+56]
      341 MOVE                             R11 R5
      342 JUMPIFNOT                        R11 ; [+54]
      343 GETUPVAL                         R12 3
      344 GETTABLEKS                       R11 R12 K14 ["createElement"]
      346 GETUPVAL                         R12 8
      347 DUPTABLE                         R13 K83 [{"LayoutOrder", "Enabled", "OwnerId", "OwnerType", "CanManage", "GroupMetadata", "Permissions", "PermissionsChanged", "GroupMetadataChanged"}]
      348 NAMECALL                         R14 R2 K52 ["getNextOrder"]
      350 CALL                             R14 1 1
      351 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      353 LOADB                            R14 1
      354 SETTABLEKS                       R14 R13 K44 ["Enabled"]
      356 GETTABLEKS                       R16 R0 K0 ["props"]
      358 GETTABLEKS                       R15 R16 K53 ["Owner"]
      360 GETTABLEKS                       R14 R15 K55 ["targetId"]
      362 SETTABLEKS                       R14 R13 K46 ["OwnerId"]
      364 GETTABLEKS                       R15 R0 K6 ["state"]
      366 GETTABLEKS                       R14 R15 K7 ["OwnerType"]
      368 SETTABLEKS                       R14 R13 K7 ["OwnerType"]
      370 SETTABLEKS                       R4 R13 K47 ["CanManage"]
      372 GETTABLEKS                       R15 R0 K0 ["props"]
      374 GETTABLEKS                       R14 R15 K48 ["GroupMetadata"]
      376 SETTABLEKS                       R14 R13 K48 ["GroupMetadata"]
      378 GETTABLEKS                       R15 R0 K0 ["props"]
      380 GETTABLEKS                       R14 R15 K49 ["Permissions"]
      382 SETTABLEKS                       R14 R13 K49 ["Permissions"]
      384 GETTABLEKS                       R15 R0 K0 ["props"]
      386 GETTABLEKS                       R14 R15 K50 ["PermissionsChanged"]
      388 SETTABLEKS                       R14 R13 K50 ["PermissionsChanged"]
      390 GETTABLEKS                       R15 R0 K0 ["props"]
      392 GETTABLEKS                       R14 R15 K82 ["GroupMetadataChanged"]
      394 SETTABLEKS                       R14 R13 K82 ["GroupMetadataChanged"]
      396 CALL                             R11 2 1
      397 SETTABLEKS                       R11 R10 K29 ["CollaboratorListWidget"]
      399 CALL                             R7 3 -1
      400 RETURN                           R7 -1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["collaborators"]
        4 JUMPIF                           R3 ; [+2]
        5 NEWTABLE                         R3 0 0
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K1 ["NoAccessKey"]
       10 GETTABLEKS                       R7 R1 K2 ["Owner"]
       12 GETTABLEKS                       R6 R7 K3 ["targetId"]
       14 GETTABLE                         R5 R0 R6
       15 JUMPIFNOT                        R5 ; [+18]
       16 GETIMPORT                        R6 K6 [Enum.CreatorType]
       18 GETTABLEKS                       R8 R1 K2 ["Owner"]
       20 GETTABLEKS                       R7 R8 K7 ["type"]
       22 GETTABLE                         R5 R6 R7
       23 GETIMPORT                        R6 K9 [Enum.CreatorType.Group]
       25 JUMPIFNOTEQ                      R5 R6 ; [+8]
       27 GETTABLEKS                       R7 R1 K2 ["Owner"]
       29 GETTABLEKS                       R6 R7 K3 ["targetId"]
       31 GETTABLE                         R5 R0 R6
       32 GETTABLEKS                       R2 R5 K10 ["groupMetadata"]
       34 GETTABLEKS                       R5 R1 K11 ["AssetId"]
       36 JUMPIFEQKNIL                     R5 ; [+15]
       38 GETTABLEKS                       R5 R0 K12 ["packagePermissions"]
       40 JUMPIFNOT                        R5 ; [+11]
       41 GETTABLEKS                       R6 R0 K12 ["packagePermissions"]
       43 GETTABLEKS                       R7 R1 K11 ["AssetId"]
       45 GETTABLE                         R5 R6 R7
       46 JUMPIFNOT                        R5 ; [+5]
       47 GETTABLEKS                       R5 R0 K12 ["packagePermissions"]
       49 GETTABLEKS                       R6 R1 K11 ["AssetId"]
       51 GETTABLE                         R4 R5 R6
       52 GETTABLEKS                       R6 R0 K13 ["assetConfigData"]
       54 JUMPIFNOT                        R6 ; [+5]
       55 GETTABLEKS                       R6 R0 K13 ["assetConfigData"]
       57 GETTABLEKS                       R5 R6 K14 ["Creator"]
       59 JUMPIF                           R5 ; [+2]
       60 GETTABLEKS                       R5 R1 K2 ["Owner"]
       62 DUPTABLE                         R6 K18 [{"Owner", "GroupMetadata", "Permissions", "CurrentUserPackagePermission"}]
       63 SETTABLEKS                       R5 R6 K2 ["Owner"]
       65 SETTABLEKS                       R2 R6 K15 ["GroupMetadata"]
       67 SETTABLEKS                       R3 R6 K16 ["Permissions"]
       69 SETTABLEKS                       R4 R6 K17 ["CurrentUserPackagePermission"]
       71 RETURN                           R6 1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 LOADK                            R3 K0 ["permissions"]
        8 MOVE                             R4 R0
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 LOADK                            R3 K0 ["groupMetadata"]
        8 MOVE                             R4 R0
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K3 [{"SearchRequested", "PermissionsChanged", "GroupMetadataChanged"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SearchRequested"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["PermissionsChanged"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R2 R1 K2 ["GroupMetadataChanged"]
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R8 R4 K11 ["Util"]
       36 GETTABLEKS                       R7 R8 K12 ["LayoutOrderIterator"]
       38 GETTABLEKS                       R9 R4 K13 ["UI"]
       40 GETTABLEKS                       R8 R9 K14 ["ScrollingFrame"]
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R12 R1 K8 ["Framework"]
       46 CALL                             R11 1 1
       47 GETTABLEKS                       R10 R11 K13 ["UI"]
       49 GETTABLEKS                       R9 R10 K15 ["Separator"]
       51 GETTABLEKS                       R13 R0 K16 ["Src"]
       53 GETTABLEKS                       R12 R13 K17 ["Components"]
       55 GETTABLEKS                       R11 R12 K18 ["AssetConfiguration"]
       57 GETTABLEKS                       R10 R11 K19 ["Permissions"]
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R10 K20 ["DEPRECATED_PackageOwnerWidget"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R10 K21 ["DEPRECATED_CollaboratorSearchWidget"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R14 R10 K22 ["DEPRECATED_CollaboratorsWidget"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R10 K23 ["PermissionsConstants"]
       78 CALL                             R14 1 1
       79 GETTABLEKS                       R16 R0 K16 ["Src"]
       81 GETTABLEKS                       R15 R16 K11 ["Util"]
       83 GETIMPORT                        R16 K5 [require]
       85 GETTABLEKS                       R17 R15 K24 ["Constants"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K5 [require]
       90 GETTABLEKS                       R20 R0 K16 ["Src"]
       92 GETTABLEKS                       R19 R20 K25 ["Thunks"]
       94 GETTABLEKS                       R18 R19 K26 ["SearchCollaborators"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K5 [require]
       99 GETTABLEKS                       R21 R0 K16 ["Src"]
      101 GETTABLEKS                       R20 R21 K27 ["Actions"]
      103 GETTABLEKS                       R19 R20 K28 ["SetCollaborators"]
      105 CALL                             R18 1 1
      106 GETIMPORT                        R19 K5 [require]
      108 GETTABLEKS                       R22 R0 K16 ["Src"]
      110 GETTABLEKS                       R21 R22 K27 ["Actions"]
      112 GETTABLEKS                       R20 R21 K29 ["SetGroupMetadata"]
      114 CALL                             R19 1 1
      115 GETIMPORT                        R20 K5 [require]
      117 GETTABLEKS                       R23 R0 K16 ["Src"]
      119 GETTABLEKS                       R22 R23 K27 ["Actions"]
      121 GETTABLEKS                       R21 R22 K30 ["AddChange"]
      123 CALL                             R20 1 1
      124 GETTABLEKS                       R21 R2 K31 ["PureComponent"]
      126 LOADK                            R23 K19 ["Permissions"]
      127 NAMECALL                         R21 R21 K32 ["extend"]
      129 CALL                             R21 2 1
      130 DUPCLOSURE                       R22 K33 [PROTO_0]
      131 CAPTURE                          VAL R0
      132 SETTABLEKS                       R22 R21 K34 ["init"]
      134 DUPCLOSURE                       R22 K35 [PROTO_1]
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R13
      144 SETTABLEKS                       R22 R21 K36 ["render"]
      146 DUPCLOSURE                       R22 K37 [PROTO_2]
      147 CAPTURE                          VAL R14
      148 DUPCLOSURE                       R23 K38 [PROTO_6]
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R19
      153 MOVE                             R24 R6
      154 DUPTABLE                         R25 K41 [{"Localization", "Stylizer"}]
      155 GETTABLEKS                       R26 R5 K39 ["Localization"]
      157 SETTABLEKS                       R26 R25 K39 ["Localization"]
      159 GETTABLEKS                       R26 R5 K40 ["Stylizer"]
      161 SETTABLEKS                       R26 R25 K40 ["Stylizer"]
      163 CALL                             R24 1 1
      164 MOVE                             R25 R21
      165 CALL                             R24 1 1
      166 MOVE                             R21 R24
      167 GETTABLEKS                       R24 R3 K42 ["connect"]
      169 MOVE                             R25 R22
      170 MOVE                             R26 R23
      171 CALL                             R24 2 1
      172 MOVE                             R25 R21
      173 CALL                             R24 1 -1
      174 RETURN                           R24 -1
