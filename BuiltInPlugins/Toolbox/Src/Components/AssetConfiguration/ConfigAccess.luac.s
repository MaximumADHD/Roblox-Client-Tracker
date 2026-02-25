PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["screenFlowType"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["FLOW_TYPE"]
        5 GETTABLEKS                       R4 R5 K2 ["UPLOAD_FLOW"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R0 K3 ["allowOwnerEdit"]
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+35]
        3 GETTABLEKS                       R2 R0 K0 ["props"]
        5 GETTABLEKS                       R1 R2 K1 ["groupBundlesUploadEnabledForUser"]
        7 JUMPIFNOT                        R1 ; [+30]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["isCatalogAsset"]
       11 GETTABLEKS                       R3 R0 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["assetTypeEnum"]
       15 CALL                             R1 1 1
       16 JUMPIF                           R1 ; [+9]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K4 ["isUGCBundleType"]
       20 GETTABLEKS                       R3 R0 K0 ["props"]
       22 GETTABLEKS                       R2 R3 K3 ["assetTypeEnum"]
       24 CALL                             R1 1 1
       25 JUMPIFNOT                        R1 ; [+12]
       26 GETTABLEKS                       R2 R0 K0 ["props"]
       28 GETTABLEKS                       R1 R2 K5 ["getAllowedGroupsForUpload"]
       30 GETTABLEKS                       R4 R0 K0 ["props"]
       32 GETTABLEKS                       R3 R4 K6 ["Network"]
       34 GETTABLEKS                       R2 R3 K7 ["networkInterface"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R1 R2 K2 ["isCatalogAsset"]
       41 GETTABLEKS                       R3 R0 K0 ["props"]
       43 GETTABLEKS                       R2 R3 K3 ["assetTypeEnum"]
       45 CALL                             R1 1 1
       46 JUMPIFNOT                        R1 ; [+16]
       47 GETTABLEKS                       R2 R0 K0 ["props"]
       49 GETTABLEKS                       R1 R2 K8 ["getAssetTypeAgents"]
       51 GETTABLEKS                       R4 R0 K0 ["props"]
       53 GETTABLEKS                       R3 R4 K6 ["Network"]
       55 GETTABLEKS                       R2 R3 K7 ["networkInterface"]
       57 GETTABLEKS                       R4 R0 K0 ["props"]
       59 GETTABLEKS                       R3 R4 K3 ["assetTypeEnum"]
       61 CALL                             R1 2 0
       62 RETURN                           R0 0
       63 GETTABLEKS                       R2 R0 K0 ["props"]
       65 GETTABLEKS                       R1 R2 K9 ["getManageableGroups"]
       67 GETTABLEKS                       R4 R0 K0 ["props"]
       69 GETTABLEKS                       R3 R4 K6 ["Network"]
       71 GETTABLEKS                       R2 R3 K7 ["networkInterface"]
       73 CALL                             R1 1 0
       74 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Title"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["TotalHeight"]
       12 GETTABLEKS                       R7 R1 K6 ["owner"]
       14 JUMPIF                           R7 ; [+2]
       15 NEWTABLE                         R7 0 0
       17 GETTABLEKS                       R9 R7 K8 ["typeId"]
       19 ORK                              R8 R9 K7 [1]
       20 LOADNIL                          R9
       21 GETUPVAL                         R10 0
       22 CALL                             R10 0 1
       23 JUMPIFNOT                        R10 ; [+26]
       24 GETTABLEKS                       R11 R0 K0 ["props"]
       26 GETTABLEKS                       R10 R11 K9 ["groupBundlesUploadEnabledForUser"]
       28 JUMPIFNOT                        R10 ; [+21]
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R10 R11 K10 ["isCatalogAsset"]
       32 GETTABLEKS                       R12 R0 K0 ["props"]
       34 GETTABLEKS                       R11 R12 K11 ["assetTypeEnum"]
       36 CALL                             R10 1 1
       37 JUMPIF                           R10 ; [+9]
       38 GETUPVAL                         R11 1
       39 GETTABLEKS                       R10 R11 K12 ["isUGCBundleType"]
       41 GETTABLEKS                       R12 R0 K0 ["props"]
       43 GETTABLEKS                       R11 R12 K11 ["assetTypeEnum"]
       45 CALL                             R10 1 1
       46 JUMPIFNOT                        R10 ; [+3]
       47 GETTABLEKS                       R9 R1 K13 ["allowedGroupsForUpload"]
       49 JUMP                             ; [+12]
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R10 R11 K10 ["isCatalogAsset"]
       53 GETTABLEKS                       R11 R1 K11 ["assetTypeEnum"]
       55 CALL                             R10 1 1
       56 JUMPIFNOT                        R10 ; [+3]
       57 GETTABLEKS                       R9 R1 K14 ["assetTypeAgents"]
       59 JUMP                             ; [+2]
       60 GETTABLEKS                       R9 R1 K15 ["manageableGroups"]
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R10 R11 K16 ["getOwnerDropDownContent"]
       65 MOVE                             R11 R9
       66 GETTABLEKS                       R12 R1 K17 ["Localization"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R0 K18 ["dropdownContent"]
       71 GETTABLEKS                       R10 R1 K19 ["onDropDownSelect"]
       73 GETTABLEKS                       R11 R3 K20 ["publishAsset"]
       75 LOADK                            R12 K21 [""]
       76 GETTABLEKS                       R13 R0 K22 ["allowOwnerEdit"]
       78 JUMPIF                           R13 ; [+37]
       79 GETTABLEKS                       R13 R7 K8 ["typeId"]
       81 JUMPIFNOT                        R13 ; [+34]
       82 GETTABLEKS                       R13 R7 K8 ["typeId"]
       84 GETUPVAL                         R16 2
       85 GETTABLEKS                       R15 R16 K23 ["OWNER_TYPES"]
       87 GETTABLEKS                       R14 R15 K24 ["User"]
       89 JUMPIFNOTEQ                      R13 R14 ; [+19]
       91 GETTABLEKS                       R13 R7 K25 ["targetId"]
       93 GETUPVAL                         R14 3
       94 CALL                             R14 0 1
       95 JUMPIFEQ                         R13 R14 ; [+4]
       97 GETTABLEKS                       R12 R7 K26 ["username"]
       99 JUMP                             ; [+16]
      100 GETTABLEKS                       R13 R1 K17 ["Localization"]
      102 LOADK                            R15 K27 ["General"]
      103 LOADK                            R16 K28 ["Me"]
      104 NAMECALL                         R13 R13 K29 ["getText"]
      106 CALL                             R13 3 1
      107 MOVE                             R12 R13
      108 JUMP                             ; [+7]
      109 GETTABLEKS                       R13 R1 K30 ["assetGroupData"]
      111 JUMPIFNOT                        R13 ; [+4]
      112 GETTABLEKS                       R13 R1 K30 ["assetGroupData"]
      114 GETTABLEKS                       R12 R13 K31 ["Name"]
      116 GETUPVAL                         R14 4
      117 GETTABLEKS                       R13 R14 K32 ["createElement"]
      119 LOADK                            R14 K33 ["Frame"]
      120 DUPTABLE                         R15 K38 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      121 GETIMPORT                        R16 K41 [UDim2.new]
      123 LOADN                            R17 1
      124 LOADN                            R18 0
      125 LOADN                            R19 0
      126 MOVE                             R20 R6
      127 CALL                             R16 4 1
      128 SETTABLEKS                       R16 R15 K34 ["Size"]
      130 LOADN                            R16 1
      131 SETTABLEKS                       R16 R15 K35 ["BackgroundTransparency"]
      133 GETIMPORT                        R16 K44 [Color3.fromRGB]
      135 LOADN                            R17 227
      136 LOADN                            R18 227
      137 LOADN                            R19 227
      138 CALL                             R16 3 1
      139 SETTABLEKS                       R16 R15 K36 ["BackgroundColor3"]
      141 LOADN                            R16 0
      142 SETTABLEKS                       R16 R15 K37 ["BorderSizePixel"]
      144 SETTABLEKS                       R5 R15 K4 ["LayoutOrder"]
      146 DUPTABLE                         R16 K48 [{"UIListLayout", "Title", "DropDown", "OwnerType"}]
      147 GETUPVAL                         R18 4
      148 GETTABLEKS                       R17 R18 K32 ["createElement"]
      150 LOADK                            R18 K45 ["UIListLayout"]
      151 DUPTABLE                         R19 K54 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      152 GETIMPORT                        R20 K57 [Enum.FillDirection.Horizontal]
      154 SETTABLEKS                       R20 R19 K49 ["FillDirection"]
      156 GETIMPORT                        R20 K59 [Enum.HorizontalAlignment.Left]
      158 SETTABLEKS                       R20 R19 K50 ["HorizontalAlignment"]
      160 GETIMPORT                        R20 K61 [Enum.VerticalAlignment.Top]
      162 SETTABLEKS                       R20 R19 K51 ["VerticalAlignment"]
      164 GETIMPORT                        R20 K62 [Enum.SortOrder.LayoutOrder]
      166 SETTABLEKS                       R20 R19 K52 ["SortOrder"]
      168 GETIMPORT                        R20 K64 [UDim.new]
      170 LOADN                            R21 0
      171 LOADN                            R22 0
      172 CALL                             R20 2 1
      173 SETTABLEKS                       R20 R19 K53 ["Padding"]
      175 CALL                             R17 2 1
      176 SETTABLEKS                       R17 R16 K45 ["UIListLayout"]
      178 GETUPVAL                         R18 4
      179 GETTABLEKS                       R17 R18 K32 ["createElement"]
      181 LOADK                            R18 K65 ["TextLabel"]
      182 DUPTABLE                         R19 K72 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      183 GETIMPORT                        R20 K41 [UDim2.new]
      185 LOADN                            R21 0
      186 GETUPVAL                         R23 5
      187 GETTABLEKS                       R22 R23 K73 ["TITLE_GUTTER_WIDTH"]
      189 LOADN                            R23 1
      190 LOADN                            R24 0
      191 CALL                             R20 4 1
      192 SETTABLEKS                       R20 R19 K34 ["Size"]
      194 LOADN                            R20 1
      195 SETTABLEKS                       R20 R19 K35 ["BackgroundTransparency"]
      197 LOADN                            R20 0
      198 SETTABLEKS                       R20 R19 K37 ["BorderSizePixel"]
      200 SETTABLEKS                       R4 R19 K66 ["Text"]
      202 GETIMPORT                        R20 K74 [Enum.TextXAlignment.Left]
      204 SETTABLEKS                       R20 R19 K67 ["TextXAlignment"]
      206 GETIMPORT                        R20 K75 [Enum.TextYAlignment.Top]
      208 SETTABLEKS                       R20 R19 K68 ["TextYAlignment"]
      210 GETUPVAL                         R21 6
      211 GETTABLEKS                       R20 R21 K76 ["FONT_SIZE_TITLE"]
      213 SETTABLEKS                       R20 R19 K69 ["TextSize"]
      215 GETTABLEKS                       R20 R11 K77 ["titleTextColor"]
      217 SETTABLEKS                       R20 R19 K70 ["TextColor3"]
      219 GETUPVAL                         R21 6
      220 GETTABLEKS                       R20 R21 K78 ["FONT"]
      222 SETTABLEKS                       R20 R19 K71 ["Font"]
      224 LOADN                            R20 1
      225 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      227 CALL                             R17 2 1
      228 SETTABLEKS                       R17 R16 K3 ["Title"]
      230 GETTABLEKS                       R17 R0 K22 ["allowOwnerEdit"]
      232 JUMPIFNOT                        R17 ; [+34]
      233 GETUPVAL                         R18 4
      234 GETTABLEKS                       R17 R18 K32 ["createElement"]
      236 GETUPVAL                         R18 7
      237 DUPTABLE                         R19 K84 [{"Size", "visibleDropDownCount", "selectedDropDownIndex", "fontSize", "items", "onItemClicked", "LayoutOrder"}]
      238 GETIMPORT                        R20 K41 [UDim2.new]
      240 LOADN                            R21 0
      241 GETUPVAL                         R22 8
      242 LOADN                            R23 0
      243 LOADN                            R24 38
      244 CALL                             R20 4 1
      245 SETTABLEKS                       R20 R19 K34 ["Size"]
      247 GETUPVAL                         R20 9
      248 SETTABLEKS                       R20 R19 K79 ["visibleDropDownCount"]
      250 SETTABLEKS                       R8 R19 K80 ["selectedDropDownIndex"]
      252 GETUPVAL                         R21 6
      253 GETTABLEKS                       R20 R21 K85 ["FONT_SIZE_LARGE"]
      255 SETTABLEKS                       R20 R19 K81 ["fontSize"]
      257 GETTABLEKS                       R20 R0 K18 ["dropdownContent"]
      259 SETTABLEKS                       R20 R19 K82 ["items"]
      261 SETTABLEKS                       R10 R19 K83 ["onItemClicked"]
      263 LOADN                            R20 2
      264 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      266 CALL                             R17 2 1
      267 SETTABLEKS                       R17 R16 K46 ["DropDown"]
      269 GETTABLEKS                       R18 R0 K22 ["allowOwnerEdit"]
      271 NOT                              R17 R18
      272 JUMPIFNOT                        R17 ; [+53]
      273 GETUPVAL                         R18 4
      274 GETTABLEKS                       R17 R18 K32 ["createElement"]
      276 LOADK                            R18 K65 ["TextLabel"]
      277 DUPTABLE                         R19 K86 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "Font", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "LayoutOrder"}]
      278 GETIMPORT                        R20 K41 [UDim2.new]
      280 LOADN                            R21 1
      281 GETUPVAL                         R24 5
      282 GETTABLEKS                       R23 R24 K73 ["TITLE_GUTTER_WIDTH"]
      284 MINUS                            R22 R23
      285 LOADN                            R23 0
      286 GETUPVAL                         R25 6
      287 GETTABLEKS                       R24 R25 K76 ["FONT_SIZE_TITLE"]
      289 CALL                             R20 4 1
      290 SETTABLEKS                       R20 R19 K34 ["Size"]
      292 LOADN                            R20 1
      293 SETTABLEKS                       R20 R19 K35 ["BackgroundTransparency"]
      295 LOADN                            R20 0
      296 SETTABLEKS                       R20 R19 K37 ["BorderSizePixel"]
      298 SETTABLEKS                       R12 R19 K66 ["Text"]
      300 GETUPVAL                         R21 6
      301 GETTABLEKS                       R20 R21 K78 ["FONT"]
      303 SETTABLEKS                       R20 R19 K71 ["Font"]
      305 GETIMPORT                        R20 K74 [Enum.TextXAlignment.Left]
      307 SETTABLEKS                       R20 R19 K67 ["TextXAlignment"]
      309 GETIMPORT                        R20 K88 [Enum.TextYAlignment.Center]
      311 SETTABLEKS                       R20 R19 K68 ["TextYAlignment"]
      313 GETUPVAL                         R21 6
      314 GETTABLEKS                       R20 R21 K76 ["FONT_SIZE_TITLE"]
      316 SETTABLEKS                       R20 R19 K69 ["TextSize"]
      318 GETTABLEKS                       R20 R11 K89 ["textColor"]
      320 SETTABLEKS                       R20 R19 K70 ["TextColor3"]
      322 LOADN                            R20 2
      323 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      325 CALL                             R17 2 1
      326 SETTABLEKS                       R17 R16 K47 ["OwnerType"]
      328 CALL                             R13 3 -1
      329 RETURN                           R13 -1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R3 R1 K0 ["owner"]
        7 JUMPIFNOT                        R3 ; [+14]
        8 GETTABLEKS                       R5 R1 K0 ["owner"]
       10 GETTABLEKS                       R4 R5 K1 ["targetId"]
       12 GETTABLE                         R3 R0 R4
       13 JUMPIFNOT                        R3 ; [+8]
       14 GETTABLEKS                       R5 R1 K0 ["owner"]
       16 GETTABLEKS                       R4 R5 K1 ["targetId"]
       18 GETTABLE                         R3 R0 R4
       19 GETTABLEKS                       R2 R3 K2 ["groupMetadata"]
       21 JUMPIF                           R2 ; [+2]
       22 GETTABLEKS                       R2 R1 K3 ["assetGroupData"]
       24 GETTABLEKS                       R4 R0 K4 ["assetConfigData"]
       26 JUMPIFNOT                        R4 ; [+5]
       27 GETTABLEKS                       R4 R0 K4 ["assetConfigData"]
       29 GETTABLEKS                       R3 R4 K5 ["Creator"]
       31 JUMPIF                           R3 ; [+2]
       32 GETTABLEKS                       R3 R1 K0 ["owner"]
       34 DUPTABLE                         R4 K12 [{"assetTypeEnum", "screenFlowType", "manageableGroups", "assetTypeAgents", "assetGroupData", "owner", "groupBundlesUploadEnabledForUser", "allowedGroupsForUpload"}]
       35 GETTABLEKS                       R5 R0 K6 ["assetTypeEnum"]
       37 SETTABLEKS                       R5 R4 K6 ["assetTypeEnum"]
       39 GETTABLEKS                       R5 R0 K7 ["screenFlowType"]
       41 SETTABLEKS                       R5 R4 K7 ["screenFlowType"]
       43 GETTABLEKS                       R5 R0 K8 ["manageableGroups"]
       45 JUMPIF                           R5 ; [+2]
       46 NEWTABLE                         R5 0 0
       48 SETTABLEKS                       R5 R4 K8 ["manageableGroups"]
       50 GETTABLEKS                       R5 R0 K9 ["assetTypeAgents"]
       52 JUMPIF                           R5 ; [+2]
       53 NEWTABLE                         R5 0 0
       55 SETTABLEKS                       R5 R4 K9 ["assetTypeAgents"]
       57 SETTABLEKS                       R2 R4 K3 ["assetGroupData"]
       59 SETTABLEKS                       R3 R4 K0 ["owner"]
       61 GETUPVAL                         R6 0
       62 CALL                             R6 0 1
       63 JUMPIFNOT                        R6 ; [+3]
       64 GETTABLEKS                       R5 R0 K10 ["groupBundlesUploadEnabledForUser"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R5
       68 SETTABLEKS                       R5 R4 K10 ["groupBundlesUploadEnabledForUser"]
       70 GETUPVAL                         R6 0
       71 CALL                             R6 0 1
       72 JUMPIFNOT                        R6 ; [+6]
       73 GETTABLEKS                       R5 R0 K11 ["allowedGroupsForUpload"]
       75 JUMPIF                           R5 ; [+4]
       76 NEWTABLE                         R5 0 0
       78 JUMP                             ; [+1]
       79 LOADNIL                          R5
       80 SETTABLEKS                       R5 R4 K11 ["allowedGroupsForUpload"]
       82 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R4 R5 K0 ["MARKETPLACE_ACTION_TYPE_UPLOAD"]
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"getManageableGroups", "getAssetTypeAgents", "getAllowedGroupsForUpload"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getManageableGroups"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getAssetTypeAgents"]
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+5]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K2 ["getAllowedGroupsForUpload"]
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R6 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R6 K10 ["Util"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K11 ["Constants"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R5 K12 ["AssetConfigConstants"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R5 K13 ["getUserId"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R5 K14 ["AssetConfigUtil"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R13 R0 K9 ["Src"]
       56 GETTABLEKS                       R12 R13 K15 ["Components"]
       58 GETTABLEKS                       R11 R12 K16 ["DropdownMenu"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R13 R0 K9 ["Src"]
       63 GETTABLEKS                       R12 R13 K17 ["Networking"]
       65 GETTABLEKS                       R11 R12 K18 ["Requests"]
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R11 K19 ["GetAssetConfigManageableGroupsRequest"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K5 [require]
       74 GETTABLEKS                       R14 R11 K20 ["GetAssetTypeAgentsRequest"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K5 [require]
       79 GETTABLEKS                       R17 R0 K9 ["Src"]
       81 GETTABLEKS                       R16 R17 K21 ["Thunks"]
       83 GETTABLEKS                       R15 R16 K22 ["GetGroupMetadata"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K5 [require]
       88 GETTABLEKS                       R16 R11 K23 ["GetAllowedGroupsForAction"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K5 [require]
       93 GETTABLEKS                       R19 R0 K9 ["Src"]
       95 GETTABLEKS                       R18 R19 K24 ["Types"]
       97 GETTABLEKS                       R17 R18 K25 ["ConfigTypes"]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K5 [require]
      102 GETTABLEKS                       R20 R0 K9 ["Src"]
      104 GETTABLEKS                       R19 R20 K24 ["Types"]
      106 GETTABLEKS                       R18 R19 K26 ["MarketplaceActionTypes"]
      108 CALL                             R17 1 1
      109 GETTABLEKS                       R18 R4 K27 ["ContextServices"]
      111 GETTABLEKS                       R19 R18 K28 ["withContext"]
      113 GETIMPORT                        R20 K5 [require]
      115 GETTABLEKS                       R23 R0 K9 ["Src"]
      117 GETTABLEKS                       R22 R23 K27 ["ContextServices"]
      119 GETTABLEKS                       R21 R22 K29 ["NetworkContext"]
      121 CALL                             R20 1 1
      122 GETIMPORT                        R21 K5 [require]
      124 GETTABLEKS                       R24 R0 K9 ["Src"]
      126 GETTABLEKS                       R23 R24 K30 ["Flags"]
      128 GETTABLEKS                       R22 R23 K31 ["getFFlagEnableUploadingGroupBundles"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K5 [require]
      133 GETTABLEKS                       R25 R0 K9 ["Src"]
      135 GETTABLEKS                       R24 R25 K30 ["Flags"]
      137 GETTABLEKS                       R23 R24 K32 ["getFFlagEnableUploadingMakeup"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K34 [game]
      142 LOADK                            R25 K35 ["IncreaseVisibleCreatorsConfigAccess"]
      143 LOADB                            R26 0
      144 NAMECALL                         R23 R23 K36 ["DefineFastFlag"]
      146 CALL                             R23 3 0
      147 GETTABLEKS                       R23 R2 K37 ["PureComponent"]
      149 LOADK                            R25 K38 ["ConfigAccess"]
      150 NAMECALL                         R23 R23 K39 ["extend"]
      152 CALL                             R23 2 1
      153 MOVE                             R25 R22
      154 CALL                             R25 0 1
      155 JUMPIFNOT                        R25 ; [+2]
      156 LOADN                            R24 144
      157 JUMP                             ; [+1]
      158 LOADN                            R24 220
      159 GETIMPORT                        R26 K34 [game]
      161 LOADK                            R28 K35 ["IncreaseVisibleCreatorsConfigAccess"]
      162 NAMECALL                         R26 R26 K40 ["GetFastFlag"]
      164 CALL                             R26 2 1
      165 JUMPIFNOT                        R26 ; [+2]
      166 LOADN                            R25 6
      167 JUMP                             ; [+1]
      168 LOADN                            R25 5
      169 DUPCLOSURE                       R26 K41 [PROTO_0]
      170 CAPTURE                          VAL R7
      171 SETTABLEKS                       R26 R23 K42 ["init"]
      173 DUPCLOSURE                       R26 K43 [PROTO_1]
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R9
      176 SETTABLEKS                       R26 R23 K44 ["didMount"]
      178 DUPCLOSURE                       R26 K45 [PROTO_2]
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R24
      188 CAPTURE                          VAL R25
      189 SETTABLEKS                       R26 R23 K46 ["render"]
      191 DUPCLOSURE                       R26 K47 [PROTO_3]
      192 CAPTURE                          VAL R21
      193 DUPCLOSURE                       R27 K48 [PROTO_7]
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R17
      199 MOVE                             R28 R19
      200 DUPTABLE                         R29 K52 [{"Stylizer", "Localization", "Network"}]
      201 GETTABLEKS                       R30 R18 K49 ["Stylizer"]
      203 SETTABLEKS                       R30 R29 K49 ["Stylizer"]
      205 GETTABLEKS                       R30 R18 K50 ["Localization"]
      207 SETTABLEKS                       R30 R29 K50 ["Localization"]
      209 SETTABLEKS                       R20 R29 K51 ["Network"]
      211 CALL                             R28 1 1
      212 MOVE                             R29 R23
      213 CALL                             R28 1 1
      214 MOVE                             R23 R28
      215 GETTABLEKS                       R28 R3 K53 ["connect"]
      217 MOVE                             R29 R26
      218 MOVE                             R30 R27
      219 CALL                             R28 2 1
      220 MOVE                             R29 R23
      221 CALL                             R28 1 -1
      222 RETURN                           R28 -1
