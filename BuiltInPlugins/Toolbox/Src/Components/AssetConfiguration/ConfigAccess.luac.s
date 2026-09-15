PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["screenFlowType"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["FLOW_TYPE"]
        5 GETTABLEKS                       R4 R4 K2 ["UPLOAD_FLOW"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R0 K3 ["allowOwnerEdit"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R0 K4 ["preselectionApplied"]
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["allowOwnerEdit"]
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R1 R0 K1 ["preselectionApplied"]
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K2 ["props"]
       13 GETTABLEKS                       R1 R1 K3 ["preselectedGroupId"]
       15 JUMPIFNOTEQKNIL                  R1 ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R0 K4 ["dropdownContent"]
       20 JUMPIF                           R2 ; [+2]
       21 NEWTABLE                         R2 0 0
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETTABLEKS                       R7 R6 K5 ["creatorType"]
       28 JUMPIFNOTEQKS                    R7 K6 ["Group"] ; [+16]
       30 GETTABLEKS                       R7 R6 K7 ["creatorId"]
       32 JUMPIFNOTEQ                      R7 R1 ; [+12]
       34 LOADB                            R7 1
       35 SETTABLEKS                       R7 R0 K1 ["preselectionApplied"]
       37 GETTABLEKS                       R7 R0 K2 ["props"]
       39 GETTABLEKS                       R7 R7 K8 ["onDropDownSelect"]
       41 MOVE                             R8 R5
       42 MOVE                             R9 R6
       43 CALL                             R7 2 0
       44 RETURN                           R0 0
       45 FORGLOOP                         R2 2 ; [-20]
       47 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["groupBundlesUploadEnabledForUser"]
        4 JUMPIFNOT                        R1 ; [+30]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["isCatalogAsset"]
        8 GETTABLEKS                       R2 R0 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["assetTypeEnum"]
       12 CALL                             R1 1 1
       13 JUMPIF                           R1 ; [+9]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["isUGCBundleType"]
       17 GETTABLEKS                       R2 R0 K0 ["props"]
       19 GETTABLEKS                       R2 R2 K3 ["assetTypeEnum"]
       21 CALL                             R1 1 1
       22 JUMPIFNOT                        R1 ; [+12]
       23 GETTABLEKS                       R1 R0 K0 ["props"]
       25 GETTABLEKS                       R1 R1 K5 ["getAllowedGroupsForUpload"]
       27 GETTABLEKS                       R2 R0 K0 ["props"]
       29 GETTABLEKS                       R2 R2 K6 ["Network"]
       31 GETTABLEKS                       R2 R2 K7 ["networkInterface"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K2 ["isCatalogAsset"]
       38 GETTABLEKS                       R2 R0 K0 ["props"]
       40 GETTABLEKS                       R2 R2 K3 ["assetTypeEnum"]
       42 CALL                             R1 1 1
       43 JUMPIFNOT                        R1 ; [+16]
       44 GETTABLEKS                       R1 R0 K0 ["props"]
       46 GETTABLEKS                       R1 R1 K8 ["getAssetTypeAgents"]
       48 GETTABLEKS                       R2 R0 K0 ["props"]
       50 GETTABLEKS                       R2 R2 K6 ["Network"]
       52 GETTABLEKS                       R2 R2 K7 ["networkInterface"]
       54 GETTABLEKS                       R3 R0 K0 ["props"]
       56 GETTABLEKS                       R3 R3 K3 ["assetTypeEnum"]
       58 CALL                             R1 2 0
       59 RETURN                           R0 0
       60 GETTABLEKS                       R1 R0 K0 ["props"]
       62 GETTABLEKS                       R1 R1 K9 ["getManageableGroups"]
       64 GETTABLEKS                       R2 R0 K0 ["props"]
       66 GETTABLEKS                       R2 R2 K6 ["Network"]
       68 GETTABLEKS                       R2 R2 K7 ["networkInterface"]
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["TotalHeight"]
       10 GETTABLEKS                       R6 R1 K5 ["owner"]
       12 JUMPIF                           R6 ; [+2]
       13 NEWTABLE                         R6 0 0
       15 GETTABLEKS                       R8 R6 K7 ["typeId"]
       17 ORK                              R7 R8 K6 [1]
       18 LOADNIL                          R8
       19 GETTABLEKS                       R9 R0 K0 ["props"]
       21 GETTABLEKS                       R9 R9 K8 ["groupBundlesUploadEnabledForUser"]
       23 JUMPIFNOT                        R9 ; [+21]
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K9 ["isCatalogAsset"]
       27 GETTABLEKS                       R10 R0 K0 ["props"]
       29 GETTABLEKS                       R10 R10 K10 ["assetTypeEnum"]
       31 CALL                             R9 1 1
       32 JUMPIF                           R9 ; [+9]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K11 ["isUGCBundleType"]
       36 GETTABLEKS                       R10 R0 K0 ["props"]
       38 GETTABLEKS                       R10 R10 K10 ["assetTypeEnum"]
       40 CALL                             R9 1 1
       41 JUMPIFNOT                        R9 ; [+3]
       42 GETTABLEKS                       R8 R1 K12 ["allowedGroupsForUpload"]
       44 JUMP                             ; [+12]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K9 ["isCatalogAsset"]
       48 GETTABLEKS                       R10 R1 K10 ["assetTypeEnum"]
       50 CALL                             R9 1 1
       51 JUMPIFNOT                        R9 ; [+3]
       52 GETTABLEKS                       R8 R1 K13 ["assetTypeAgents"]
       54 JUMP                             ; [+2]
       55 GETTABLEKS                       R8 R1 K14 ["manageableGroups"]
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R9 R9 K15 ["getOwnerDropDownContent"]
       60 MOVE                             R10 R8
       61 GETTABLEKS                       R11 R1 K16 ["Localization"]
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R0 K17 ["dropdownContent"]
       66 GETTABLEKS                       R9 R1 K18 ["onDropDownSelect"]
       68 LOADK                            R10 K19 [""]
       69 GETTABLEKS                       R11 R0 K20 ["allowOwnerEdit"]
       71 JUMPIF                           R11 ; [+37]
       72 GETTABLEKS                       R11 R6 K7 ["typeId"]
       74 JUMPIFNOT                        R11 ; [+34]
       75 GETTABLEKS                       R11 R6 K7 ["typeId"]
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K21 ["OWNER_TYPES"]
       80 GETTABLEKS                       R12 R12 K22 ["User"]
       82 JUMPIFNOTEQ                      R11 R12 ; [+19]
       84 GETTABLEKS                       R11 R6 K23 ["targetId"]
       86 GETUPVAL                         R12 2
       87 CALL                             R12 0 1
       88 JUMPIFEQ                         R11 R12 ; [+4]
       90 GETTABLEKS                       R10 R6 K24 ["username"]
       92 JUMP                             ; [+16]
       93 GETTABLEKS                       R11 R1 K16 ["Localization"]
       95 LOADK                            R13 K25 ["General"]
       96 LOADK                            R14 K26 ["Me"]
       97 NAMECALL                         R11 R11 K27 ["getText"]
       99 CALL                             R11 3 1
      100 MOVE                             R10 R11
      101 JUMP                             ; [+7]
      102 GETTABLEKS                       R11 R1 K28 ["assetGroupData"]
      104 JUMPIFNOT                        R11 ; [+4]
      105 GETTABLEKS                       R11 R1 K28 ["assetGroupData"]
      107 GETTABLEKS                       R10 R11 K29 ["Name"]
      109 GETUPVAL                         R11 3
      110 GETTABLEKS                       R11 R11 K30 ["createElement"]
      112 GETUPVAL                         R12 4
      113 DUPTABLE                         R13 K32 [{"LayoutOrder", "Size", "Title"}]
      114 SETTABLEKS                       R4 R13 K3 ["LayoutOrder"]
      116 GETIMPORT                        R14 K35 [UDim2.new]
      118 LOADN                            R15 1
      119 LOADN                            R16 0
      120 LOADN                            R17 0
      121 MOVE                             R18 R5
      122 CALL                             R14 4 1
      123 SETTABLEKS                       R14 R13 K31 ["Size"]
      125 SETTABLEKS                       R3 R13 K2 ["Title"]
      127 DUPTABLE                         R14 K38 [{"DropDown", "OwnerType"}]
      128 GETTABLEKS                       R16 R0 K20 ["allowOwnerEdit"]
      130 JUMPIFNOT                        R16 ; [+44]
      131 GETUPVAL                         R15 3
      132 GETTABLEKS                       R15 R15 K30 ["createElement"]
      134 GETUPVAL                         R16 5
      135 GETTABLEKS                       R16 R16 K39 ["View"]
      137 DUPTABLE                         R17 K42 [{["tag"] = "bg-transparency-100", ["Size"], ["LayoutOrder"] = 1}]
      138 GETIMPORT                        R18 K35 [UDim2.new]
      140 LOADN                            R19 0
      141 LOADN                            R20 400
      142 LOADN                            R21 0
      143 LOADN                            R22 38
      144 CALL                             R18 4 1
      145 SETTABLEKS                       R18 R17 K31 ["Size"]
      147 DUPTABLE                         R18 K44 [{"Dropdown"}]
      148 GETUPVAL                         R19 3
      149 GETTABLEKS                       R19 R19 K30 ["createElement"]
      151 GETUPVAL                         R20 6
      152 DUPTABLE                         R21 K53 [{["LayoutOrder"] = 1, ["items"], ["selectedDropDownIndex"], ["onItemClicked"], ["placeholder"], ["isDisabled"] = False, ["width"] = 400}]
      153 GETTABLEKS                       R22 R0 K17 ["dropdownContent"]
      155 SETTABLEKS                       R22 R21 K45 ["items"]
      157 SETTABLEKS                       R7 R21 K46 ["selectedDropDownIndex"]
      159 SETTABLEKS                       R9 R21 K47 ["onItemClicked"]
      161 GETTABLEKS                       R22 R1 K16 ["Localization"]
      163 LOADK                            R24 K43 ["Dropdown"]
      164 LOADK                            R25 K54 ["ChooseOne"]
      165 NAMECALL                         R22 R22 K27 ["getText"]
      167 CALL                             R22 3 1
      168 SETTABLEKS                       R22 R21 K48 ["placeholder"]
      170 CALL                             R19 2 1
      171 SETTABLEKS                       R19 R18 K43 ["Dropdown"]
      173 CALL                             R15 3 1
      174 JUMPIF                           R15 ; [+1]
      175 LOADNIL                          R15
      176 SETTABLEKS                       R15 R14 K36 ["DropDown"]
      178 GETTABLEKS                       R16 R0 K20 ["allowOwnerEdit"]
      180 JUMPIF                           R16 ; [+25]
      181 GETUPVAL                         R15 3
      182 GETTABLEKS                       R15 R15 K30 ["createElement"]
      184 GETUPVAL                         R16 5
      185 GETTABLEKS                       R16 R16 K55 ["Text"]
      187 DUPTABLE                         R17 K57 [{["tag"] = "text-title-small text-align-x-left text-align-y-center content-default", ["Text"], ["LayoutOrder"] = 1, ["Size"]}]
      188 SETTABLEKS                       R10 R17 K55 ["Text"]
      190 GETIMPORT                        R18 K35 [UDim2.new]
      192 LOADN                            R19 1
      193 GETUPVAL                         R21 7
      194 GETTABLEKS                       R21 R21 K58 ["TITLE_GUTTER_WIDTH"]
      196 MINUS                            R20 R21
      197 LOADN                            R21 0
      198 GETUPVAL                         R22 8
      199 GETTABLEKS                       R22 R22 K59 ["FONT_SIZE_TITLE"]
      201 CALL                             R18 4 1
      202 SETTABLEKS                       R18 R17 K31 ["Size"]
      204 CALL                             R15 2 1
      205 JUMPIF                           R15 ; [+1]
      206 LOADNIL                          R15
      207 SETTABLEKS                       R15 R14 K37 ["OwnerType"]
      209 CALL                             R11 3 -1
      210 RETURN                           R11 -1

PROTO_4:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R3 R1 K0 ["owner"]
        7 JUMPIFNOT                        R3 ; [+14]
        8 GETTABLEKS                       R4 R1 K0 ["owner"]
       10 GETTABLEKS                       R4 R4 K1 ["targetId"]
       12 GETTABLE                         R3 R0 R4
       13 JUMPIFNOT                        R3 ; [+8]
       14 GETTABLEKS                       R3 R1 K0 ["owner"]
       16 GETTABLEKS                       R3 R3 K1 ["targetId"]
       18 GETTABLE                         R2 R0 R3
       19 GETTABLEKS                       R2 R2 K2 ["groupMetadata"]
       21 JUMPIF                           R2 ; [+2]
       22 GETTABLEKS                       R2 R1 K3 ["assetGroupData"]
       24 GETTABLEKS                       R4 R0 K4 ["assetConfigData"]
       26 JUMPIFNOT                        R4 ; [+5]
       27 GETTABLEKS                       R3 R0 K4 ["assetConfigData"]
       29 GETTABLEKS                       R3 R3 K5 ["Creator"]
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
       61 GETTABLEKS                       R5 R0 K10 ["groupBundlesUploadEnabledForUser"]
       63 SETTABLEKS                       R5 R4 K10 ["groupBundlesUploadEnabledForUser"]
       65 GETTABLEKS                       R5 R0 K11 ["allowedGroupsForUpload"]
       67 JUMPIF                           R5 ; [+2]
       68 NEWTABLE                         R5 0 0
       70 SETTABLEKS                       R5 R4 K11 ["allowedGroupsForUpload"]
       72 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K0 ["MARKETPLACE_ACTION_TYPE_UPLOAD"]
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K3 [{"getManageableGroups", "getAssetTypeAgents", "getAllowedGroupsForUpload"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getManageableGroups"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getAssetTypeAgents"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K2 ["getAllowedGroupsForUpload"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["RoactRodux"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Framework"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R7 R1 K10 ["Foundation"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R0 K11 ["Src"]
       40 GETTABLEKS                       R7 R7 K12 ["Util"]
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R7 K13 ["Constants"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R7 K14 ["AssetConfigConstants"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R7 K15 ["getUserId"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R7 K16 ["AssetConfigUtil"]
       61 CALL                             R11 1 1
       62 GETTABLEKS                       R12 R0 K11 ["Src"]
       64 GETTABLEKS                       R12 R12 K17 ["Components"]
       66 GETTABLEKS                       R13 R12 K18 ["AssetConfiguration"]
       68 GETIMPORT                        R14 K5 [require]
       70 GETTABLEKS                       R15 R13 K19 ["AssetConfigDropdown"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K5 [require]
       75 GETTABLEKS                       R16 R13 K20 ["ConfigSectionWrapper"]
       77 CALL                             R15 1 1
       78 GETTABLEKS                       R16 R0 K11 ["Src"]
       80 GETTABLEKS                       R16 R16 K21 ["Networking"]
       82 GETTABLEKS                       R16 R16 K22 ["Requests"]
       84 GETIMPORT                        R17 K5 [require]
       86 GETTABLEKS                       R18 R16 K23 ["GetAssetConfigManageableGroupsRequest"]
       88 CALL                             R17 1 1
       89 GETIMPORT                        R18 K5 [require]
       91 GETTABLEKS                       R19 R16 K24 ["GetAssetTypeAgentsRequest"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K5 [require]
       96 GETTABLEKS                       R20 R0 K11 ["Src"]
       98 GETTABLEKS                       R20 R20 K25 ["Thunks"]
      100 GETTABLEKS                       R20 R20 K26 ["GetGroupMetadata"]
      102 CALL                             R19 1 1
      103 GETIMPORT                        R20 K5 [require]
      105 GETTABLEKS                       R21 R16 K27 ["GetAllowedGroupsForAction"]
      107 CALL                             R20 1 1
      108 GETIMPORT                        R21 K5 [require]
      110 GETTABLEKS                       R22 R0 K11 ["Src"]
      112 GETTABLEKS                       R22 R22 K28 ["Types"]
      114 GETTABLEKS                       R22 R22 K29 ["ConfigTypes"]
      116 CALL                             R21 1 1
      117 GETIMPORT                        R22 K5 [require]
      119 GETTABLEKS                       R23 R0 K11 ["Src"]
      121 GETTABLEKS                       R23 R23 K28 ["Types"]
      123 GETTABLEKS                       R23 R23 K30 ["MarketplaceActionTypes"]
      125 CALL                             R22 1 1
      126 GETTABLEKS                       R23 R5 K31 ["ContextServices"]
      128 GETTABLEKS                       R24 R23 K32 ["withContext"]
      130 GETIMPORT                        R25 K5 [require]
      132 GETTABLEKS                       R26 R0 K11 ["Src"]
      134 GETTABLEKS                       R26 R26 K31 ["ContextServices"]
      136 GETTABLEKS                       R26 R26 K33 ["NetworkContext"]
      138 CALL                             R25 1 1
      139 GETIMPORT                        R26 K5 [require]
      141 GETTABLEKS                       R27 R0 K11 ["Src"]
      143 GETTABLEKS                       R27 R27 K34 ["Flags"]
      145 GETTABLEKS                       R27 R27 K35 ["getFFlagToolboxAssetConfigGroupOwnership"]
      147 CALL                             R26 1 1
      148 GETIMPORT                        R27 K37 [game]
      150 LOADK                            R29 K38 ["IncreaseVisibleCreatorsConfigAccess"]
      151 LOADB                            R30 0
      152 NAMECALL                         R27 R27 K39 ["DefineFastFlag"]
      154 CALL                             R27 3 0
      155 GETTABLEKS                       R27 R3 K40 ["PureComponent"]
      157 LOADK                            R29 K41 ["ConfigAccess"]
      158 NAMECALL                         R27 R27 K42 ["extend"]
      160 CALL                             R27 2 1
      161 DUPCLOSURE                       R28 K43 [PROTO_0]
      162 CAPTURE                          VAL R9
      163 SETTABLEKS                       R28 R27 K44 ["init"]
      165 DUPCLOSURE                       R28 K45 [PROTO_1]
      166 CAPTURE                          VAL R26
      167 SETTABLEKS                       R28 R27 K46 ["didUpdate"]
      169 DUPCLOSURE                       R28 K47 [PROTO_2]
      170 CAPTURE                          VAL R11
      171 SETTABLEKS                       R28 R27 K48 ["didMount"]
      173 DUPCLOSURE                       R28 K49 [PROTO_3]
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R8
      183 SETTABLEKS                       R28 R27 K50 ["render"]
      185 DUPCLOSURE                       R28 K51 [PROTO_4]
      186 DUPCLOSURE                       R29 K52 [PROTO_8]
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R22
      191 MOVE                             R30 R24
      192 DUPTABLE                         R31 K56 [{"Stylizer", "Localization", "Network"}]
      193 GETTABLEKS                       R32 R23 K53 ["Stylizer"]
      195 SETTABLEKS                       R32 R31 K53 ["Stylizer"]
      197 GETTABLEKS                       R32 R23 K54 ["Localization"]
      199 SETTABLEKS                       R32 R31 K54 ["Localization"]
      201 SETTABLEKS                       R25 R31 K55 ["Network"]
      203 CALL                             R30 1 1
      204 MOVE                             R31 R27
      205 CALL                             R30 1 1
      206 MOVE                             R27 R30
      207 GETTABLEKS                       R30 R4 K57 ["connect"]
      209 MOVE                             R31 R28
      210 MOVE                             R32 R29
      211 CALL                             R30 2 1
      212 MOVE                             R31 R27
      213 CALL                             R30 1 -1
      214 RETURN                           R30 -1
