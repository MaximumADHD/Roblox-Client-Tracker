PROTO_0:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["constructAssetIdString"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["shouldDebugUrls"]
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETIMPORT                        R1 K3 [print]
       12 LOADK                            R2 K4 ["Inserting decal %s"]
       13 MOVE                             R4 R0
       14 NAMECALL                         R2 R2 K5 ["format"]
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 0
       18 GETIMPORT                        R1 K7 [game]
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K8 ["GetObjects"]
       23 CALL                             R1 2 1
       24 SETUPVAL                         R1 3
       25 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R1
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R2 ; [+12]
       10 JUMPIFNOT                        R1 ; [+11]
       11 GETTABLEN                        R4 R1 1
       12 JUMPIFNOT                        R4 ; [+9]
       13 GETTABLEN                        R4 R1 1
       14 GETTABLEKS                       R5 R4 K2 ["Texture"]
       16 LOADK                            R7 K3 ["%d+"]
       17 NAMECALL                         R5 R5 K4 ["match"]
       19 CALL                             R5 2 -1
       20 CLOSEUPVALS                      R1
       21 RETURN                           R5 -1
       22 LOADN                            R4 0
       23 CLOSEUPVALS                      R1
       24 RETURN                           R4 1

PROTO_4:
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["constructCreatorStoreUrl"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+35]
        6 GETIMPORT                        R2 K3 [string.format]
        8 LOADK                            R3 K4 ["%sasset/%s"]
        9 MOVE                             R4 R1
       10 GETUPVAL                         R5 1
       11 GETUPVAL                         R7 2
       12 NAMECALL                         R5 R5 K5 ["urlEncode"]
       14 CALL                             R5 2 -1
       15 CALL                             R2 -1 1
       16 MOVE                             R0 R2
       17 GETUPVAL                         R2 3
       18 JUMPIFNOT                        R2 ; [+46]
       19 MOVE                             R2 R0
       20 LOADK                            R3 K6 ["?"]
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R4 R5 K7 ["makeQueryString"]
       24 DUPTABLE                         R5 K11 [{"keyword", "searchId", "viewFromStudio"}]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R6 R7 K12 ["SearchKeyword"]
       28 SETTABLEKS                       R6 R5 K8 ["keyword"]
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R6 R7 K13 ["SearchId"]
       33 SETTABLEKS                       R6 R5 K9 ["searchId"]
       35 LOADB                            R6 1
       36 SETTABLEKS                       R6 R5 K10 ["viewFromStudio"]
       38 CALL                             R4 1 1
       39 CONCAT                           R0 R2 R4
       40 JUMP                             ; [+24]
       41 GETUPVAL                         R2 5
       42 GETTABLEKS                       R1 R2 K14 ["BaseUrl"]
       44 GETIMPORT                        R2 K3 [string.format]
       46 LOADK                            R3 K15 ["%slibrary/%s/asset"]
       47 MOVE                             R4 R1
       48 GETUPVAL                         R5 1
       49 GETUPVAL                         R7 2
       50 NAMECALL                         R5 R5 K5 ["urlEncode"]
       52 CALL                             R5 2 -1
       53 CALL                             R2 -1 1
       54 MOVE                             R0 R2
       55 GETUPVAL                         R2 3
       56 JUMPIFNOT                        R2 ; [+8]
       57 MOVE                             R2 R0
       58 LOADK                            R3 K6 ["?"]
       59 GETUPVAL                         R5 4
       60 GETTABLEKS                       R4 R5 K7 ["makeQueryString"]
       62 GETUPVAL                         R5 3
       63 CALL                             R4 1 1
       64 CONCAT                           R0 R2 R4
       65 GETUPVAL                         R2 6
       66 MOVE                             R4 R0
       67 NAMECALL                         R2 R2 K16 ["OpenBrowserWindow"]
       69 CALL                             R2 2 0
       70 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reportAssetClicked"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K1 ["BaseUrl"]
        9 GETUPVAL                         R1 4
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 5
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K2 ["OpenBrowserWindow"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onContextMenuClicked"]
        3 LOADK                            R1 K1 ["CopyAssetId"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 CALL                             R0 4 0
        8 GETUPVAL                         R0 4
        9 GETUPVAL                         R2 5
       10 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onContextMenuClicked"]
        3 LOADK                            R1 K1 ["CopyMeshId"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 CALL                             R0 4 0
        8 GETUPVAL                         R0 4
        9 GETUPVAL                         R2 5
       10 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onContextMenuClicked"]
        3 LOADK                            R1 K1 ["CopyTextureId"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 CALL                             R0 4 0
        8 GETUPVAL                         R0 4
        9 GETUPVAL                         R2 5
       10 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R2 R3 K1 ["EDIT_FLOW"]
        7 LOADNIL                          R3
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R4 R5 K2 ["convertAssetTypeValueToEnum"]
       11 GETUPVAL                         R5 4
       12 CALL                             R4 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R2 R3 K1 ["EDIT_FLOW"]
        7 LOADNIL                          R3
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R4 R5 K2 ["convertAssetTypeValueToEnum"]
       11 GETUPVAL                         R5 4
       12 CALL                             R4 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R10 0
        1 NAMECALL                         R10 R10 K0 ["GenerateGUID"]
        3 CALL                             R10 1 1
        4 GETIMPORT                        R11 K3 [string.format]
        6 LOADK                            R12 K4 ["ToolboxAssetMenu-%s"]
        7 MOVE                             R13 R10
        8 CALL                             R11 2 1
        9 MOVE                             R14 R11
       10 NAMECALL                         R12 R0 K5 ["CreatePluginMenu"]
       12 CALL                             R12 2 1
       13 GETIMPORT                        R16 K3 [string.format]
       15 LOADK                            R17 K6 ["OpenInBrowser-%s"]
       16 MOVE                             R18 R10
       17 CALL                             R16 2 1
       18 LOADK                            R19 K7 ["General"]
       19 LOADK                            R20 K8 ["RightClickMenuViewInBrowser"]
       20 NAMECALL                         R17 R4 K9 ["getText"]
       22 CALL                             R17 3 -1
       23 NAMECALL                         R14 R12 K10 ["AddNewAction"]
       25 CALL                             R14 -1 1
       26 GETTABLEKS                       R13 R14 K11 ["Triggered"]
       28 NEWCLOSURE                       R15 P0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R8
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 NAMECALL                         R13 R13 K12 ["connect"]
       38 CALL                             R13 2 0
       39 JUMPIF                           R3 ; [+27]
       40 JUMPIFEQKN                       R9 K13 [1] ; [+26]
       42 GETIMPORT                        R16 K3 [string.format]
       44 LOADK                            R17 K14 ["Report-%s"]
       45 MOVE                             R18 R10
       46 CALL                             R16 2 1
       47 LOADK                            R19 K7 ["General"]
       48 LOADK                            R20 K15 ["RightClickMenuReport"]
       49 NAMECALL                         R17 R4 K9 ["getText"]
       51 CALL                             R17 3 -1
       52 NAMECALL                         R14 R12 K10 ["AddNewAction"]
       54 CALL                             R14 -1 1
       55 GETTABLEKS                       R13 R14 K11 ["Triggered"]
       57 NEWCLOSURE                       R15 P1
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          UPVAL U4
       64 NAMECALL                         R13 R13 K12 ["connect"]
       66 CALL                             R13 2 0
       67 GETIMPORT                        R14 K19 [Enum.AssetType.Plugin]
       69 GETTABLEKS                       R13 R14 K20 ["Value"]
       71 JUMPIFEQ                         R2 R13 ; [+141]
       73 MOVE                             R13 R1
       74 GETIMPORT                        R15 K22 [Enum.AssetType.Decal]
       76 GETTABLEKS                       R14 R15 K20 ["Value"]
       78 JUMPIFNOTEQ                      R2 R14 ; [+27]
       80 LOADNIL                          R14
       81 GETIMPORT                        R15 K24 [pcall]
       83 NEWCLOSURE                       R16 P2
       84 CAPTURE                          UPVAL U1
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          REF R14
       88 CALL                             R15 1 2
       89 JUMPIFNOT                        R15 ; [+13]
       90 JUMPIFNOT                        R14 ; [+12]
       91 GETTABLEN                        R17 R14 1
       92 JUMPIFNOT                        R17 ; [+10]
       93 GETTABLEN                        R17 R14 1
       94 GETTABLEKS                       R18 R17 K25 ["Texture"]
       96 LOADK                            R20 K26 ["%d+"]
       97 NAMECALL                         R18 R18 K27 ["match"]
       99 CALL                             R18 2 1
      100 MOVE                             R13 R18
      101 CLOSEUPVALS                      R14
      102 JUMP                             ; [+3]
      103 LOADN                            R13 0
      104 CLOSEUPVALS                      R14
      105 JUMP                             ; [0]
      106 GETIMPORT                        R17 K3 [string.format]
      108 LOADK                            R18 K28 ["CopyAssetIdToClipboard-%s"]
      109 MOVE                             R19 R10
      110 CALL                             R17 2 1
      111 LOADK                            R20 K7 ["General"]
      112 LOADK                            R21 K29 ["RightClickMenuCopyAssetID"]
      113 NAMECALL                         R18 R4 K9 ["getText"]
      115 CALL                             R18 3 -1
      116 NAMECALL                         R15 R12 K10 ["AddNewAction"]
      118 CALL                             R15 -1 1
      119 GETTABLEKS                       R14 R15 K11 ["Triggered"]
      121 NEWCLOSURE                       R16 P3
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R7
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          REF R13
      128 NAMECALL                         R14 R14 K12 ["connect"]
      130 CALL                             R14 2 0
      131 GETIMPORT                        R15 K31 [Enum.AssetType.MeshPart]
      133 GETTABLEKS                       R14 R15 K20 ["Value"]
      135 JUMPIFNOTEQ                      R2 R14 ; [+76]
      137 GETIMPORT                        R14 K24 [pcall]
      139 GETUPVAL                         R16 9
      140 GETTABLEKS                       R15 R16 K32 ["GetMeshIdFromAssetId"]
      142 GETUPVAL                         R16 9
      143 MOVE                             R17 R13
      144 CALL                             R14 3 2
      145 GETIMPORT                        R16 K24 [pcall]
      147 GETUPVAL                         R18 9
      148 GETTABLEKS                       R17 R18 K33 ["GetTextureIdFromAssetId"]
      150 GETUPVAL                         R18 9
      151 MOVE                             R19 R13
      152 CALL                             R16 3 2
      153 JUMPIFNOT                        R14 ; [+26]
      154 GETIMPORT                        R21 K3 [string.format]
      156 LOADK                            R22 K34 ["CopyMeshIdToClipboard-%s"]
      157 MOVE                             R23 R10
      158 CALL                             R21 2 1
      159 LOADK                            R24 K7 ["General"]
      160 LOADK                            R25 K35 ["RightClickMenuCopyMeshID"]
      161 NAMECALL                         R22 R4 K9 ["getText"]
      163 CALL                             R22 3 -1
      164 NAMECALL                         R19 R12 K10 ["AddNewAction"]
      166 CALL                             R19 -1 1
      167 GETTABLEKS                       R18 R19 K11 ["Triggered"]
      169 NEWCLOSURE                       R20 P4
      170 CAPTURE                          UPVAL U5
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R7
      174 CAPTURE                          UPVAL U8
      175 CAPTURE                          VAL R15
      176 NAMECALL                         R18 R18 K12 ["connect"]
      178 CALL                             R18 2 0
      179 JUMP                             ; [+6]
      180 GETIMPORT                        R18 K37 [warn]
      182 LOADK                            R20 K38 ["Failed to get mesh id for asset id "]
      183 MOVE                             R21 R13
      184 CONCAT                           R19 R20 R21
      185 CALL                             R18 1 0
      186 JUMPIFNOT                        R16 ; [+25]
      187 GETIMPORT                        R21 K3 [string.format]
      189 LOADK                            R22 K39 ["CopyTextureIdToClipboard-%s"]
      190 MOVE                             R23 R10
      191 CALL                             R21 2 1
      192 LOADK                            R24 K7 ["General"]
      193 LOADK                            R25 K40 ["RightClickMenuCopyTextureID"]
      194 NAMECALL                         R22 R4 K9 ["getText"]
      196 CALL                             R22 3 -1
      197 NAMECALL                         R19 R12 K10 ["AddNewAction"]
      199 CALL                             R19 -1 1
      200 GETTABLEKS                       R18 R19 K11 ["Triggered"]
      202 NEWCLOSURE                       R20 P5
      203 CAPTURE                          UPVAL U5
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R7
      207 CAPTURE                          UPVAL U8
      208 CAPTURE                          VAL R17
      209 NAMECALL                         R18 R18 K12 ["connect"]
      211 CALL                             R18 2 0
      212 CLOSEUPVALS                      R13
      213 JUMPIFNOT                        R3 ; [+51]
      214 JUMPIFNOT                        R5 ; [+50]
      215 JUMPIFNOT                        R6 ; [+25]
      216 GETIMPORT                        R16 K3 [string.format]
      218 LOADK                            R17 K41 ["PackageDetails-%s"]
      219 MOVE                             R18 R10
      220 CALL                             R16 2 1
      221 LOADK                            R19 K42 ["AssetConfigPackagePermissions"]
      222 LOADK                            R20 K43 ["PackageDetails"]
      223 NAMECALL                         R17 R4 K9 ["getText"]
      225 CALL                             R17 3 -1
      226 NAMECALL                         R14 R12 K10 ["AddNewAction"]
      228 CALL                             R14 -1 1
      229 GETTABLEKS                       R13 R14 K11 ["Triggered"]
      231 NEWCLOSURE                       R15 P6
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R1
      234 CAPTURE                          UPVAL U10
      235 CAPTURE                          UPVAL U11
      236 CAPTURE                          VAL R2
      237 NAMECALL                         R13 R13 K12 ["connect"]
      239 CALL                             R13 2 0
      240 JUMP                             ; [+24]
      241 GETIMPORT                        R16 K3 [string.format]
      243 LOADK                            R17 K44 ["EditAsset-%s"]
      244 MOVE                             R18 R10
      245 CALL                             R16 2 1
      246 LOADK                            R19 K7 ["General"]
      247 LOADK                            R20 K45 ["RightClickMenuEditAsset"]
      248 NAMECALL                         R17 R4 K9 ["getText"]
      250 CALL                             R17 3 -1
      251 NAMECALL                         R14 R12 K10 ["AddNewAction"]
      253 CALL                             R14 -1 1
      254 GETTABLEKS                       R13 R14 K11 ["Triggered"]
      256 NEWCLOSURE                       R15 P7
      257 CAPTURE                          VAL R5
      258 CAPTURE                          VAL R1
      259 CAPTURE                          UPVAL U10
      260 CAPTURE                          UPVAL U11
      261 CAPTURE                          VAL R2
      262 NAMECALL                         R13 R13 K12 ["connect"]
      264 CALL                             R13 2 0
      265 NAMECALL                         R13 R12 K46 ["ShowAsync"]
      267 CALL                             R13 1 0
      268 NAMECALL                         R13 R12 K47 ["Destroy"]
      270 CALL                             R13 1 0
      271 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R2 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R5 R0 K7 ["Libs"]
       17 GETTABLEKS                       R4 R5 K8 ["Http"]
       19 GETTABLEKS                       R3 R4 K9 ["Url"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Urls"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K11 ["DebugFlags"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R1 K12 ["Analytics"]
       36 GETTABLEKS                       R6 R7 K12 ["Analytics"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K13 ["AssetConfigConstants"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K14 ["EnumConvert"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K15 ["ToolboxUtilities"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R1 K16 ["getReportUrl"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K18 [game]
       61 LOADK                            R12 K19 ["StudioService"]
       62 NAMECALL                         R10 R10 K20 ["GetService"]
       64 CALL                             R10 2 1
       65 GETIMPORT                        R11 K18 [game]
       67 LOADK                            R13 K21 ["GuiService"]
       68 NAMECALL                         R11 R11 K20 ["GetService"]
       70 CALL                             R11 2 1
       71 GETIMPORT                        R12 K18 [game]
       73 LOADK                            R14 K22 ["ContentProvider"]
       74 NAMECALL                         R12 R12 K20 ["GetService"]
       76 CALL                             R12 2 1
       77 GETIMPORT                        R13 K18 [game]
       79 LOADK                            R15 K23 ["HttpService"]
       80 NAMECALL                         R13 R13 K20 ["GetService"]
       82 CALL                             R13 2 1
       83 GETIMPORT                        R14 K6 [require]
       85 GETIMPORT                        R17 K1 [script]
       87 GETTABLEKS                       R16 R17 K2 ["Parent"]
       89 GETTABLEKS                       R15 R16 K24 ["isCli"]
       91 CALL                             R14 1 1
       92 LOADNIL                          R15
       93 MOVE                             R16 R14
       94 CALL                             R16 0 1
       95 JUMPIFNOT                        R16 ; [+9]
       96 NEWTABLE                         R15 0 0
       98 DUPCLOSURE                       R16 K25 [PROTO_0]
       99 SETTABLEKS                       R16 R15 K26 ["GetMeshIdFromAssetId"]
      101 DUPCLOSURE                       R16 K27 [PROTO_1]
      102 SETTABLEKS                       R16 R15 K28 ["GetTextureIdFromAssetId"]
      104 JUMP                             ; [+7]
      105 GETIMPORT                        R16 K18 [game]
      107 LOADK                            R18 K29 ["AssetManagerService"]
      108 NAMECALL                         R16 R16 K20 ["GetService"]
      110 CALL                             R16 2 1
      111 MOVE                             R15 R16
      112 NEWTABLE                         R16 1 0
      114 DUPCLOSURE                       R17 K30 [PROTO_3]
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R4
      117 NEWCLOSURE                       R18 P3
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R10
      127 CAPTURE                          REF R15
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R7
      130 SETTABLEKS                       R18 R16 K31 ["tryCreateContextMenu"]
      132 CLOSEUPVALS                      R15
      133 RETURN                           R16 1
