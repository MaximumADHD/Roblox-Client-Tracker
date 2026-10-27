PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 ORK                              R2 R0 K3 [""]
        3 LOADK                            R3 K4 ["%D"]
        4 LOADK                            R4 K3 [""]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"filterID", "selectedAssetId"}]
        2 JUMPIFNOT                        R0 ; [+6]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 JUMP                             ; [+1]
        9 LOADK                            R4 K5 [""]
       10 SETTABLEKS                       R4 R3 K0 ["filterID"]
       12 ORK                              R4 R0 K6 [0]
       13 SETTABLEKS                       R4 R3 K1 ["selectedAssetId"]
       15 NAMECALL                         R1 R1 K7 ["setState"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K8 ["props"]
       21 GETTABLEKS                       R1 R1 K9 ["onOverrideAssetSelected"]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 ORK                              R2 R0 K3 [""]
        3 LOADK                            R3 K4 ["%D"]
        4 LOADK                            R4 K3 [""]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K5 ["state"]
        9 GETTABLEKS                       R2 R2 K6 ["selectedAssetId"]
       11 JUMPIFEQKN                       R2 K7 [0] ; [+29]
       13 FASTCALL1                        TOSTRING R2 ; [+3]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K9 [tostring]
       17 CALL                             R3 1 1
       18 JUMPIFEQ                         R1 R3 ; [+22]
       20 GETUPVAL                         R3 0
       21 DUPTABLE                         R5 K11 [{["filterID"], ["selectedAssetId"] = 0}]
       22 SETTABLEKS                       R1 R5 K10 ["filterID"]
       24 NAMECALL                         R3 R3 K12 ["setState"]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K13 ["props"]
       30 GETTABLEKS                       R3 R3 K14 ["onOverrideAssetSelected"]
       32 LOADNIL                          R4
       33 CALL                             R3 1 0
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K13 ["props"]
       37 GETTABLEKS                       R3 R3 K15 ["clearOverrideAssetChange"]
       39 CALL                             R3 0 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R3 0
       42 DUPTABLE                         R5 K16 [{"filterID"}]
       43 SETTABLEKS                       R1 R5 K10 ["filterID"]
       45 NAMECALL                         R3 R3 K12 ["setState"]
       47 CALL                             R3 2 0
       48 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["state"]
        7 GETTABLEKS                       R0 R0 K1 ["filterID"]
        9 JUMPIFEQKS                       R0 K2 [""] ; [+12]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K0 ["state"]
       14 GETTABLEKS                       R2 R2 K3 ["selectedAssetId"]
       16 FASTCALL1                        TOSTRING R2 ; [+2]
       17 GETIMPORT                        R1 K5 [tostring]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQ                      R0 R1 ; [+2]
       22 RETURN                           R0 0
       23 GETIMPORT                        R1 K7 [ipairs]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K8 ["props"]
       28 GETTABLEKS                       R2 R2 K9 ["resultsArray"]
       30 JUMPIF                           R2 ; [+2]
       31 NEWTABLE                         R2 0 0
       33 CALL                             R1 1 3
       34 FORGPREP_INEXT                   R1
       35 GETTABLEKS                       R6 R5 K10 ["Asset"]
       37 JUMPIFNOT                        R6 ; [+16]
       38 GETTABLEKS                       R7 R5 K10 ["Asset"]
       40 GETTABLEKS                       R7 R7 K11 ["Id"]
       42 FASTCALL1                        TOSTRING R7 ; [+2]
       43 GETIMPORT                        R6 K5 [tostring]
       45 CALL                             R6 1 1
       46 MOVE                             R8 R0
       47 LOADN                            R9 1
       48 LOADB                            R10 1
       49 NAMECALL                         R6 R6 K12 ["find"]
       51 CALL                             R6 4 1
       52 JUMPIFNOT                        R6 ; [+1]
       53 RETURN                           R0 0
       54 FORGLOOP                         R1 2 [inext] ; [-20]
       56 GETUPVAL                         R1 1
       57 GETTABLEKS                       R1 R1 K8 ["props"]
       59 GETTABLEKS                       R1 R1 K13 ["getOverrideAssetById"]
       61 GETUPVAL                         R2 1
       62 GETTABLEKS                       R2 R2 K8 ["props"]
       64 GETTABLEKS                       R2 R2 K14 ["Network"]
       66 GETTABLEKS                       R2 R2 K15 ["networkInterface"]
       68 MOVE                             R3 R0
       69 CALL                             R1 2 0
       70 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dropdownContent"]
        3 GETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["props"]
        7 GETTABLEKS                       R2 R2 K2 ["updateStore"]
        9 DUPTABLE                         R3 K9 [{["fetchedAll"] = False, ["loadingPage"] = 0, ["overrideCursor"] = ""}]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["props"]
       14 GETTABLEKS                       R2 R2 K10 ["getOverrideAssets"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K1 ["props"]
       19 GETTABLEKS                       R3 R3 K11 ["Network"]
       21 GETTABLEKS                       R3 R3 K12 ["networkInterface"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K1 ["props"]
       26 GETTABLEKS                       R4 R4 K13 ["assetTypeEnum"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K1 ["props"]
       31 GETTABLEKS                       R5 R5 K14 ["assetSubType"]
       33 GETTABLEKS                       R6 R1 K15 ["creatorType"]
       35 GETTABLEKS                       R7 R1 K16 ["creatorId"]
       37 LOADN                            R8 1
       38 CALL                             R2 6 0
       39 GETUPVAL                         R2 0
       40 DUPTABLE                         R4 K19 [{"selectIndex", "selectItem"}]
       41 SETTABLEKS                       R0 R4 K17 ["selectIndex"]
       43 SETTABLEKS                       R1 R4 K18 ["selectItem"]
       45 NAMECALL                         R2 R2 K20 ["setState"]
       47 CALL                             R2 2 0
       48 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["selectItem"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["getOverrideAssets"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["props"]
       13 GETTABLEKS                       R3 R3 K4 ["Network"]
       15 GETTABLEKS                       R3 R3 K5 ["networkInterface"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K2 ["props"]
       20 GETTABLEKS                       R4 R4 K6 ["assetTypeEnum"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K2 ["props"]
       25 GETTABLEKS                       R5 R5 K7 ["assetSubType"]
       27 GETTABLEKS                       R6 R1 K8 ["creatorType"]
       29 GETTABLEKS                       R7 R1 K9 ["creatorId"]
       31 MOVE                             R8 R0
       32 CALL                             R2 6 0
       33 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K5 [{[1] = "Me", ["creatorType"] = "User", ["creatorId"]}]
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K4 ["creatorId"]
        7 SETLIST                          R1 R2 1 [1]
        9 SETTABLEKS                       R1 R0 K6 ["dropdownContent"]
       11 DUPTABLE                         R1 K14 [{["selectIndex"] = 1, ["selectItem"], ["filterID"] = "", ["selectedAssetId"] = 0}]
       12 GETTABLEKS                       R3 R0 K6 ["dropdownContent"]
       14 GETTABLEN                        R2 R3 1
       15 SETTABLEKS                       R2 R1 K9 ["selectItem"]
       17 SETTABLEKS                       R1 R0 K15 ["state"]
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K16 ["onOverrideAssetSelected"]
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K17 ["onFilterIDChanged"]
       27 NEWCLOSURE                       R1 P2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K18 ["lookupById"]
       32 NEWCLOSURE                       R1 P3
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K19 ["onDropDownSelect"]
       36 NEWCLOSURE                       R1 P4
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K20 ["getOverrideAssetsFunc"]
       40 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["dropdownContent"]
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["getOverrideAssets"]
        7 GETTABLEKS                       R3 R0 K1 ["props"]
        9 GETTABLEKS                       R3 R3 K3 ["Network"]
       11 GETTABLEKS                       R3 R3 K4 ["networkInterface"]
       13 GETTABLEKS                       R4 R0 K1 ["props"]
       15 GETTABLEKS                       R4 R4 K5 ["assetTypeEnum"]
       17 GETTABLEKS                       R5 R0 K1 ["props"]
       19 GETTABLEKS                       R5 R5 K6 ["assetSubType"]
       21 GETTABLEKS                       R6 R1 K7 ["creatorType"]
       23 GETTABLEKS                       R7 R1 K8 ["creatorId"]
       25 LOADN                            R8 1
       26 CALL                             R2 6 0
       27 GETTABLEKS                       R2 R0 K1 ["props"]
       29 GETTABLEKS                       R2 R2 K9 ["getManageableGroups"]
       31 GETTABLEKS                       R3 R0 K1 ["props"]
       33 GETTABLEKS                       R3 R3 K3 ["Network"]
       35 GETTABLEKS                       R3 R3 K4 ["networkInterface"]
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R0 K1 ["state"]
        9 GETTABLEKS                       R3 R1 K2 ["Localization"]
       11 GETTABLEKS                       R4 R1 K3 ["assetTypeEnum"]
       13 GETTABLEKS                       R5 R2 K4 ["selectIndex"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["getOwnerDropDownContent"]
       18 GETTABLEKS                       R7 R1 K6 ["manageableGroups"]
       20 MOVE                             R8 R3
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R0 K7 ["dropdownContent"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K8 ["new"]
       27 CALL                             R6 0 1
       28 GETIMPORT                        R7 K10 [UDim2.new]
       30 LOADN                            R8 1
       31 LOADN                            R9 0
       32 LOADN                            R10 1
       33 LOADN                            R11 -110
       34 CALL                             R7 4 1
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R8 R8 K11 ["createElement"]
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R9 R9 K12 ["View"]
       41 DUPTABLE                         R10 K17 [{["Size"], ["LayoutOrder"], ["tag"] = "col align-x-left align-y-top gap-xlarge"}]
       42 GETTABLEKS                       R11 R1 K13 ["Size"]
       44 SETTABLEKS                       R11 R10 K13 ["Size"]
       46 GETTABLEKS                       R11 R1 K14 ["LayoutOrder"]
       48 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       50 DUPTABLE                         R11 K23 [{"UIPadding", "Title", "DropdownMenu", "SearchField", "ScrollingItems"}]
       51 GETUPVAL                         R12 3
       52 GETTABLEKS                       R12 R12 K11 ["createElement"]
       54 LOADK                            R13 K18 ["UIPadding"]
       55 DUPTABLE                         R14 K28 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
       56 GETIMPORT                        R15 K30 [UDim.new]
       58 LOADN                            R16 0
       59 LOADN                            R17 46
       60 CALL                             R15 2 1
       61 SETTABLEKS                       R15 R14 K24 ["PaddingBottom"]
       63 GETIMPORT                        R15 K30 [UDim.new]
       65 LOADN                            R16 0
       66 LOADN                            R17 24
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K25 ["PaddingLeft"]
       70 GETIMPORT                        R15 K30 [UDim.new]
       72 LOADN                            R16 0
       73 LOADN                            R17 24
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K26 ["PaddingRight"]
       77 GETIMPORT                        R15 K30 [UDim.new]
       79 LOADN                            R16 0
       80 LOADN                            R17 46
       81 CALL                             R15 2 1
       82 SETTABLEKS                       R15 R14 K27 ["PaddingTop"]
       84 CALL                             R12 2 1
       85 SETTABLEKS                       R12 R11 K18 ["UIPadding"]
       87 GETUPVAL                         R12 3
       88 GETTABLEKS                       R12 R12 K11 ["createElement"]
       90 GETUPVAL                         R13 4
       91 GETTABLEKS                       R13 R13 K31 ["Text"]
       93 DUPTABLE                         R14 K33 [{["tag"] = "text-title-small content-emphasis text-align-x-left text-align-y-center", ["Text"], ["Size"], ["LayoutOrder"]}]
       94 LOADK                            R17 K34 ["AssetConfigFooter"]
       95 LOADK                            R18 K35 ["UpdateAssetOverrideTitle"]
       96 NAMECALL                         R15 R3 K36 ["getText"]
       98 CALL                             R15 3 1
       99 SETTABLEKS                       R15 R14 K31 ["Text"]
      101 GETIMPORT                        R15 K10 [UDim2.new]
      103 LOADN                            R16 1
      104 LOADN                            R17 0
      105 LOADN                            R18 0
      106 LOADN                            R19 30
      107 CALL                             R15 4 1
      108 SETTABLEKS                       R15 R14 K13 ["Size"]
      110 NAMECALL                         R15 R6 K37 ["getNextOrder"]
      112 CALL                             R15 1 1
      113 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K19 ["Title"]
      118 GETUPVAL                         R12 3
      119 GETTABLEKS                       R12 R12 K11 ["createElement"]
      121 GETUPVAL                         R13 5
      122 DUPTABLE                         R14 K43 [{["Size"], ["selectedDropDownIndex"], ["rowHeight"] = 40, ["items"], ["onItemClicked"], ["LayoutOrder"]}]
      123 GETIMPORT                        R15 K45 [UDim2.fromOffset]
      125 LOADN                            R16 336
      126 LOADN                            R17 40
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K13 ["Size"]
      130 SETTABLEKS                       R5 R14 K38 ["selectedDropDownIndex"]
      132 GETTABLEKS                       R15 R0 K7 ["dropdownContent"]
      134 SETTABLEKS                       R15 R14 K41 ["items"]
      136 GETTABLEKS                       R15 R0 K46 ["onDropDownSelect"]
      138 SETTABLEKS                       R15 R14 K42 ["onItemClicked"]
      140 NAMECALL                         R15 R6 K37 ["getNextOrder"]
      142 CALL                             R15 1 1
      143 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K20 ["DropdownMenu"]
      148 GETUPVAL                         R12 3
      149 GETTABLEKS                       R12 R12 K11 ["createElement"]
      151 GETUPVAL                         R13 4
      152 GETTABLEKS                       R13 R13 K47 ["TextInput"]
      154 DUPTABLE                         R14 K56 [{["LayoutOrder"], ["text"], ["onChanged"], ["onReturnPressed"], ["label"] = "", ["placeholder"], ["size"], ["width"]}]
      155 NAMECALL                         R15 R6 K37 ["getNextOrder"]
      157 CALL                             R15 1 1
      158 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      160 GETTABLEKS                       R15 R2 K57 ["filterID"]
      162 SETTABLEKS                       R15 R14 K48 ["text"]
      164 GETTABLEKS                       R15 R0 K58 ["onFilterIDChanged"]
      166 SETTABLEKS                       R15 R14 K49 ["onChanged"]
      168 GETTABLEKS                       R15 R0 K59 ["lookupById"]
      170 SETTABLEKS                       R15 R14 K50 ["onReturnPressed"]
      172 LOADK                            R17 K60 ["AssetConfig"]
      173 LOADK                            R18 K61 ["UpdateAssetOriginalIdLabel"]
      174 NAMECALL                         R15 R3 K36 ["getText"]
      176 CALL                             R15 3 1
      177 SETTABLEKS                       R15 R14 K53 ["placeholder"]
      179 GETUPVAL                         R15 4
      180 GETTABLEKS                       R15 R15 K62 ["Enums"]
      182 GETTABLEKS                       R15 R15 K63 ["InputSize"]
      184 GETTABLEKS                       R15 R15 K64 ["Small"]
      186 SETTABLEKS                       R15 R14 K54 ["size"]
      188 GETIMPORT                        R15 K30 [UDim.new]
      190 LOADN                            R16 0
      191 LOADN                            R17 336
      192 CALL                             R15 2 1
      193 SETTABLEKS                       R15 R14 K55 ["width"]
      195 CALL                             R12 2 1
      196 SETTABLEKS                       R12 R11 K21 ["SearchField"]
      198 GETUPVAL                         R13 6
      199 CALL                             R13 0 1
      200 JUMPIFNOT                        R13 ; [+45]
      201 GETTABLEKS                       R13 R1 K65 ["loadingPage"]
      203 JUMPIFNOTEQKN                    R13 K66 [1] ; [+42]
      205 GETUPVAL                         R12 3
      206 GETTABLEKS                       R12 R12 K11 ["createElement"]
      208 GETUPVAL                         R13 4
      209 GETTABLEKS                       R13 R13 K12 ["View"]
      211 DUPTABLE                         R14 K67 [{"Size", "LayoutOrder"}]
      212 SETTABLEKS                       R7 R14 K13 ["Size"]
      214 NAMECALL                         R15 R6 K37 ["getNextOrder"]
      216 CALL                             R15 1 1
      217 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      219 DUPTABLE                         R15 K69 [{"LoadingIndicator"}]
      220 GETUPVAL                         R16 3
      221 GETTABLEKS                       R16 R16 K11 ["createElement"]
      223 GETUPVAL                         R17 4
      224 GETTABLEKS                       R17 R17 K70 ["Loading"]
      226 DUPTABLE                         R18 K73 [{"AnchorPoint", "Position"}]
      227 GETIMPORT                        R19 K75 [Vector2.new]
      229 LOADK                            R20 K76 [0.5]
      230 LOADK                            R21 K76 [0.5]
      231 CALL                             R19 2 1
      232 SETTABLEKS                       R19 R18 K71 ["AnchorPoint"]
      234 GETIMPORT                        R19 K78 [UDim2.fromScale]
      236 LOADK                            R20 K76 [0.5]
      237 LOADK                            R21 K76 [0.5]
      238 CALL                             R19 2 1
      239 SETTABLEKS                       R19 R18 K72 ["Position"]
      241 CALL                             R16 2 1
      242 SETTABLEKS                       R16 R15 K68 ["LoadingIndicator"]
      244 CALL                             R12 3 1
      245 JUMP                             ; [+35]
      246 GETUPVAL                         R12 3
      247 GETTABLEKS                       R12 R12 K11 ["createElement"]
      249 GETUPVAL                         R13 7
      250 DUPTABLE                         R14 K83 [{"Size", "assetTypeEnum", "resultsArray", "onOverrideAssetSelected", "selectedAssetId", "getOverrideAssets", "filterID", "LayoutOrder"}]
      251 SETTABLEKS                       R7 R14 K13 ["Size"]
      253 SETTABLEKS                       R4 R14 K3 ["assetTypeEnum"]
      255 GETTABLEKS                       R15 R1 K79 ["resultsArray"]
      257 SETTABLEKS                       R15 R14 K79 ["resultsArray"]
      259 GETTABLEKS                       R15 R0 K80 ["onOverrideAssetSelected"]
      261 SETTABLEKS                       R15 R14 K80 ["onOverrideAssetSelected"]
      263 GETTABLEKS                       R15 R2 K81 ["selectedAssetId"]
      265 SETTABLEKS                       R15 R14 K81 ["selectedAssetId"]
      267 GETTABLEKS                       R15 R0 K84 ["getOverrideAssetsFunc"]
      269 SETTABLEKS                       R15 R14 K82 ["getOverrideAssets"]
      271 GETTABLEKS                       R15 R2 K57 ["filterID"]
      273 SETTABLEKS                       R15 R14 K57 ["filterID"]
      275 NAMECALL                         R15 R6 K37 ["getNextOrder"]
      277 CALL                             R15 1 1
      278 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      280 CALL                             R12 2 1
      281 SETTABLEKS                       R12 R11 K22 ["ScrollingItems"]
      283 CALL                             R8 3 -1
      284 RETURN                           R8 -1

PROTO_9:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K5 [{"resultsArray", "manageableGroups", "assetTypeEnum", "assetSubType", "loadingPage"}]
        6 GETTABLEKS                       R3 R0 K0 ["resultsArray"]
        8 SETTABLEKS                       R3 R2 K0 ["resultsArray"]
       10 GETTABLEKS                       R3 R0 K1 ["manageableGroups"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K1 ["manageableGroups"]
       17 GETTABLEKS                       R3 R0 K2 ["assetTypeEnum"]
       19 SETTABLEKS                       R3 R2 K2 ["assetTypeEnum"]
       21 GETTABLEKS                       R3 R0 K3 ["assetSubType"]
       23 SETTABLEKS                       R3 R2 K3 ["assetSubType"]
       25 GETUPVAL                         R4 0
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+4]
       28 GETTABLEKS                       R4 R0 K4 ["loadingPage"]
       30 ORK                              R3 R4 K6 [0]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K4 ["loadingPage"]
       35 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 MOVE                             R8 R0
        3 MOVE                             R9 R1
        4 MOVE                             R10 R2
        5 MOVE                             R11 R3
        6 MOVE                             R12 R4
        7 MOVE                             R13 R5
        8 CALL                             R7 6 -1
        9 CALL                             R6 -1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["OVERRIDE_ASSET_ID"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K5 [{"getOverrideAssets", "getOverrideAssetById", "getManageableGroups", "updateStore", "clearOverrideAssetChange"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getOverrideAssets"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getOverrideAssetById"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["getManageableGroups"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["updateStore"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 SETTABLEKS                       R2 R1 K4 ["clearOverrideAssetChange"]
       27 RETURN                           R1 1

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
       30 GETTABLEKS                       R6 R1 K9 ["Foundation"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R0 K10 ["Src"]
       35 GETTABLEKS                       R6 R6 K11 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["AssetConfiguration"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R6 K13 ["OverrideAssetView"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R0 K10 ["Src"]
       48 GETTABLEKS                       R9 R9 K11 ["Components"]
       50 GETTABLEKS                       R9 R9 K14 ["DropdownMenu"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R0 K10 ["Src"]
       55 GETTABLEKS                       R9 R9 K15 ["Util"]
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R9 K16 ["AssetConfigUtil"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R9 K17 ["AssetConfigConstants"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R9 K18 ["getUserId"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K5 [require]
       74 GETTABLEKS                       R14 R9 K19 ["LayoutOrderIterator"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K5 [require]
       79 GETTABLEKS                       R15 R1 K20 ["Framework"]
       81 CALL                             R14 1 1
       82 GETTABLEKS                       R15 R14 K21 ["ContextServices"]
       84 GETTABLEKS                       R16 R15 K22 ["withContext"]
       86 GETIMPORT                        R17 K5 [require]
       88 GETTABLEKS                       R18 R0 K10 ["Src"]
       90 GETTABLEKS                       R18 R18 K21 ["ContextServices"]
       92 GETTABLEKS                       R18 R18 K23 ["NetworkContext"]
       94 CALL                             R17 1 1
       95 GETTABLEKS                       R18 R0 K10 ["Src"]
       97 GETTABLEKS                       R18 R18 K24 ["Networking"]
       99 GETTABLEKS                       R18 R18 K25 ["Requests"]
      101 GETIMPORT                        R19 K5 [require]
      103 GETTABLEKS                       R20 R18 K26 ["GetOverrideAssetRequest"]
      105 CALL                             R19 1 1
      106 GETIMPORT                        R20 K5 [require]
      108 GETTABLEKS                       R21 R18 K27 ["GetOverrideAssetByIdRequest"]
      110 CALL                             R20 1 1
      111 GETIMPORT                        R21 K5 [require]
      113 GETTABLEKS                       R22 R18 K28 ["GetAssetConfigManageableGroupsRequest"]
      115 CALL                             R21 1 1
      116 GETIMPORT                        R22 K5 [require]
      118 GETTABLEKS                       R23 R0 K10 ["Src"]
      120 GETTABLEKS                       R23 R23 K29 ["Actions"]
      122 GETTABLEKS                       R23 R23 K30 ["UpdateAssetConfigStore"]
      124 CALL                             R22 1 1
      125 GETIMPORT                        R23 K5 [require]
      127 GETTABLEKS                       R24 R0 K10 ["Src"]
      129 GETTABLEKS                       R24 R24 K29 ["Actions"]
      131 GETTABLEKS                       R24 R24 K31 ["ClearChange"]
      133 CALL                             R23 1 1
      134 GETIMPORT                        R24 K5 [require]
      136 GETTABLEKS                       R25 R0 K10 ["Src"]
      138 GETTABLEKS                       R25 R25 K32 ["Flags"]
      140 GETTABLEKS                       R25 R25 K33 ["getEngineFeatureToolboxPassThroughAssetType"]
      142 CALL                             R24 1 1
      143 GETIMPORT                        R25 K5 [require]
      145 GETTABLEKS                       R26 R0 K10 ["Src"]
      147 GETTABLEKS                       R26 R26 K32 ["Flags"]
      149 GETTABLEKS                       R26 R26 K34 ["getFFlagEnableUpdateAvatarItem"]
      151 CALL                             R25 1 1
      152 GETIMPORT                        R26 K5 [require]
      154 GETTABLEKS                       R27 R0 K10 ["Src"]
      156 GETTABLEKS                       R27 R27 K32 ["Flags"]
      158 GETTABLEKS                       R27 R27 K35 ["getFFlagAvatarVersioningPagination"]
      160 CALL                             R26 1 1
      161 GETTABLEKS                       R27 R3 K36 ["PureComponent"]
      163 LOADK                            R29 K37 ["AvatarItemOverride"]
      164 NAMECALL                         R27 R27 K38 ["extend"]
      166 CALL                             R27 2 1
      167 DUPCLOSURE                       R28 K39 [PROTO_0]
      168 DUPCLOSURE                       R29 K40 [PROTO_6]
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R26
      171 SETTABLEKS                       R29 R27 K41 ["init"]
      173 DUPCLOSURE                       R29 K42 [PROTO_7]
      174 SETTABLEKS                       R29 R27 K43 ["didMount"]
      176 DUPCLOSURE                       R29 K44 [PROTO_8]
      177 CAPTURE                          VAL R25
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R24
      184 CAPTURE                          VAL R7
      185 SETTABLEKS                       R29 R27 K45 ["render"]
      187 DUPCLOSURE                       R29 K46 [PROTO_9]
      188 CAPTURE                          VAL R24
      189 DUPCLOSURE                       R30 K47 [PROTO_15]
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R23
      195 CAPTURE                          VAL R11
      196 MOVE                             R31 R16
      197 DUPTABLE                         R32 K51 [{"Stylizer", "Localization", "Network"}]
      198 GETTABLEKS                       R33 R15 K48 ["Stylizer"]
      200 SETTABLEKS                       R33 R32 K48 ["Stylizer"]
      202 GETTABLEKS                       R33 R15 K49 ["Localization"]
      204 SETTABLEKS                       R33 R32 K49 ["Localization"]
      206 SETTABLEKS                       R17 R32 K50 ["Network"]
      208 CALL                             R31 1 1
      209 MOVE                             R32 R27
      210 CALL                             R31 1 1
      211 MOVE                             R27 R31
      212 GETTABLEKS                       R31 R4 K52 ["connect"]
      214 MOVE                             R32 R29
      215 MOVE                             R33 R30
      216 CALL                             R31 2 1
      217 MOVE                             R32 R27
      218 CALL                             R31 1 -1
      219 RETURN                           R31 -1
