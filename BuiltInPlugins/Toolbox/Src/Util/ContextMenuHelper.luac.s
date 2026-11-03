PROTO_0:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["constructAssetIdString"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["shouldDebugUrls"]
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
        8 CALL                             R2 1 1
        9 JUMPIFNOT                        R2 ; [+12]
       10 JUMPIFNOT                        R1 ; [+11]
       11 GETTABLEN                        R3 R1 1
       12 JUMPIFNOT                        R3 ; [+9]
       13 GETTABLEN                        R3 R1 1
       14 GETTABLEKS                       R4 R3 K2 ["Texture"]
       16 LOADK                            R6 K3 ["%d+"]
       17 NAMECALL                         R4 R4 K4 ["match"]
       19 CALL                             R4 2 -1
       20 CLOSEUPVALS                      R1
       21 RETURN                           R4 -1
       22 LOADN                            R3 0
       23 CLOSEUPVALS                      R1
       24 RETURN                           R3 1

PROTO_4:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["constructCreatorStoreUrl"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+32]
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
       18 JUMPIFNOT                        R2 ; [+43]
       19 MOVE                             R2 R0
       20 LOADK                            R3 K6 ["?"]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K7 ["makeQueryString"]
       24 DUPTABLE                         R5 K12 [{["keyword"], ["searchId"], ["viewFromStudio"] = True}]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K13 ["SearchKeyword"]
       28 SETTABLEKS                       R6 R5 K8 ["keyword"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K14 ["SearchId"]
       33 SETTABLEKS                       R6 R5 K9 ["searchId"]
       35 CALL                             R4 1 1
       36 CONCAT                           R0 R2 R4
       37 JUMP                             ; [+24]
       38 GETUPVAL                         R2 5
       39 GETTABLEKS                       R1 R2 K15 ["BaseUrl"]
       41 GETIMPORT                        R2 K3 [string.format]
       43 LOADK                            R3 K16 ["%slibrary/%s/asset"]
       44 MOVE                             R4 R1
       45 GETUPVAL                         R5 1
       46 GETUPVAL                         R7 2
       47 NAMECALL                         R5 R5 K5 ["urlEncode"]
       49 CALL                             R5 2 -1
       50 CALL                             R2 -1 1
       51 MOVE                             R0 R2
       52 GETUPVAL                         R2 3
       53 JUMPIFNOT                        R2 ; [+8]
       54 MOVE                             R2 R0
       55 LOADK                            R3 K6 ["?"]
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R4 R4 K7 ["makeQueryString"]
       59 GETUPVAL                         R5 3
       60 CALL                             R4 1 1
       61 CONCAT                           R0 R2 R4
       62 GETUPVAL                         R2 6
       63 MOVE                             R4 R0
       64 NAMECALL                         R2 R2 K17 ["OpenBrowserWindow"]
       66 CALL                             R2 2 0
       67 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportAssetClicked"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 4
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K1 ["OpenBrowserWindow"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContextMenuClicked"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["constructAssetIdUserContextString"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETIMPORT                        R2 K2 [game]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K3 ["GetObjects"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContextMenuClicked"]
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContextMenuClicked"]
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R2 R2 K1 ["EDIT_FLOW"]
        7 LOADNIL                          R3
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K2 ["convertAssetTypeValueToEnum"]
       11 GETUPVAL                         R5 4
       12 CALL                             R4 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R2 R2 K1 ["EDIT_FLOW"]
        7 LOADNIL                          R3
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K2 ["convertAssetTypeValueToEnum"]
       11 GETUPVAL                         R5 4
       12 CALL                             R4 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_12:
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
       13 GETIMPORT                        R15 K3 [string.format]
       15 LOADK                            R16 K6 ["OpenInBrowser-%s"]
       16 MOVE                             R17 R10
       17 CALL                             R15 2 1
       18 LOADK                            R18 K7 ["General"]
       19 LOADK                            R19 K8 ["RightClickMenuViewInBrowser"]
       20 NAMECALL                         R16 R4 K9 ["getText"]
       22 CALL                             R16 3 -1
       23 NAMECALL                         R13 R12 K10 ["AddNewAction"]
       25 CALL                             R13 -1 1
       26 GETTABLEKS                       R13 R13 K11 ["Triggered"]
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
       39 JUMPIF                           R3 ; [+26]
       40 JUMPIFEQKN                       R9 K13 [1] ; [+25]
       42 GETIMPORT                        R15 K3 [string.format]
       44 LOADK                            R16 K14 ["Report-%s"]
       45 MOVE                             R17 R10
       46 CALL                             R15 2 1
       47 LOADK                            R18 K7 ["General"]
       48 LOADK                            R19 K15 ["RightClickMenuReport"]
       49 NAMECALL                         R16 R4 K9 ["getText"]
       51 CALL                             R16 3 -1
       52 NAMECALL                         R13 R12 K10 ["AddNewAction"]
       54 CALL                             R13 -1 1
       55 GETTABLEKS                       R13 R13 K11 ["Triggered"]
       57 NEWCLOSURE                       R15 P1
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U4
       63 NAMECALL                         R13 R13 K12 ["connect"]
       65 CALL                             R13 2 0
       66 GETIMPORT                        R13 K19 [Enum.AssetType.Plugin]
       68 GETTABLEKS                       R13 R13 K20 ["Value"]
       70 JUMPIFEQ                         R2 R13 ; [+176]
       72 MOVE                             R13 R1
       73 GETIMPORT                        R14 K22 [Enum.AssetType.Decal]
       75 GETTABLEKS                       R14 R14 K20 ["Value"]
       77 JUMPIFNOTEQ                      R2 R14 ; [+26]
       79 LOADNIL                          R14
       80 GETIMPORT                        R15 K24 [pcall]
       82 NEWCLOSURE                       R16 P2
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U7
       86 CAPTURE                          REF R14
       87 CALL                             R15 1 1
       88 JUMPIFNOT                        R15 ; [+13]
       89 JUMPIFNOT                        R14 ; [+12]
       90 GETTABLEN                        R16 R14 1
       91 JUMPIFNOT                        R16 ; [+10]
       92 GETTABLEN                        R16 R14 1
       93 GETTABLEKS                       R17 R16 K25 ["Texture"]
       95 LOADK                            R19 K26 ["%d+"]
       96 NAMECALL                         R17 R17 K27 ["match"]
       98 CALL                             R17 2 1
       99 MOVE                             R13 R17
      100 CLOSEUPVALS                      R14
      101 JUMP                             ; [+2]
      102 LOADN                            R13 0
      103 CLOSEUPVALS                      R14
      104 GETIMPORT                        R16 K3 [string.format]
      106 LOADK                            R17 K28 ["CopyAssetIdToClipboard-%s"]
      107 MOVE                             R18 R10
      108 CALL                             R16 2 1
      109 LOADK                            R19 K7 ["General"]
      110 LOADK                            R20 K29 ["RightClickMenuCopyAssetID"]
      111 NAMECALL                         R17 R4 K9 ["getText"]
      113 CALL                             R17 3 -1
      114 NAMECALL                         R14 R12 K10 ["AddNewAction"]
      116 CALL                             R14 -1 1
      117 GETTABLEKS                       R14 R14 K11 ["Triggered"]
      119 NEWCLOSURE                       R16 P3
      120 CAPTURE                          UPVAL U5
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R7
      124 CAPTURE                          UPVAL U8
      125 CAPTURE                          REF R13
      126 NAMECALL                         R14 R14 K12 ["connect"]
      128 CALL                             R14 2 0
      129 GETIMPORT                        R14 K31 [Enum.AssetType.MeshPart]
      131 GETTABLEKS                       R14 R14 K20 ["Value"]
      133 JUMPIFNOTEQ                      R2 R14 ; [+112]
      135 LOADNIL                          R14
      136 LOADNIL                          R15
      137 LOADNIL                          R16
      138 LOADNIL                          R17
      139 GETUPVAL                         R18 9
      140 CALL                             R18 0 1
      141 JUMPIFNOT                        R18 ; [+24]
      142 GETIMPORT                        R18 K24 [pcall]
      144 NEWCLOSURE                       R19 P4
      145 CAPTURE                          UPVAL U1
      146 CAPTURE                          REF R13
      147 CAPTURE                          UPVAL U10
      148 CALL                             R18 1 3
      149 MOVE                             R21 R18
      150 JUMPIFNOT                        R21 ; [+4]
      151 JUMPIFNOTEQKNIL                  R19 ; [+2]
      153 LOADB                            R21 0 +1
      154 LOADB                            R21 1
      155 MOVE                             R14 R21
      156 MOVE                             R15 R19
      157 MOVE                             R21 R18
      158 JUMPIFNOT                        R21 ; [+4]
      159 JUMPIFNOTEQKNIL                  R20 ; [+2]
      161 LOADB                            R21 0 +1
      162 LOADB                            R21 1
      163 MOVE                             R16 R21
      164 MOVE                             R17 R20
      165 JUMP                             ; [+20]
      166 GETIMPORT                        R18 K24 [pcall]
      168 GETUPVAL                         R19 11
      169 GETTABLEKS                       R19 R19 K32 ["GetMeshIdFromAssetId"]
      171 GETUPVAL                         R20 11
      172 MOVE                             R21 R13
      173 CALL                             R18 3 2
      174 MOVE                             R14 R18
      175 MOVE                             R15 R19
      176 GETIMPORT                        R18 K24 [pcall]
      178 GETUPVAL                         R19 11
      179 GETTABLEKS                       R19 R19 K33 ["GetTextureIdFromAssetId"]
      181 GETUPVAL                         R20 11
      182 MOVE                             R21 R13
      183 CALL                             R18 3 2
      184 MOVE                             R16 R18
      185 MOVE                             R17 R19
      186 JUMPIFNOT                        R14 ; [+26]
      187 GETIMPORT                        R20 K3 [string.format]
      189 LOADK                            R21 K34 ["CopyMeshIdToClipboard-%s"]
      190 MOVE                             R22 R10
      191 CALL                             R20 2 1
      192 LOADK                            R23 K7 ["General"]
      193 LOADK                            R24 K35 ["RightClickMenuCopyMeshID"]
      194 NAMECALL                         R21 R4 K9 ["getText"]
      196 CALL                             R21 3 -1
      197 NAMECALL                         R18 R12 K10 ["AddNewAction"]
      199 CALL                             R18 -1 1
      200 GETTABLEKS                       R18 R18 K11 ["Triggered"]
      202 NEWCLOSURE                       R20 P5
      203 CAPTURE                          UPVAL U5
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R7
      207 CAPTURE                          UPVAL U8
      208 CAPTURE                          REF R15
      209 NAMECALL                         R18 R18 K12 ["connect"]
      211 CALL                             R18 2 0
      212 JUMP                             ; [+6]
      213 GETIMPORT                        R18 K37 [warn]
      215 LOADK                            R20 K38 ["Failed to get mesh id for asset id "]
      216 MOVE                             R21 R13
      217 CONCAT                           R19 R20 R21
      218 CALL                             R18 1 0
      219 JUMPIFNOT                        R16 ; [+25]
      220 GETIMPORT                        R20 K3 [string.format]
      222 LOADK                            R21 K39 ["CopyTextureIdToClipboard-%s"]
      223 MOVE                             R22 R10
      224 CALL                             R20 2 1
      225 LOADK                            R23 K7 ["General"]
      226 LOADK                            R24 K40 ["RightClickMenuCopyTextureID"]
      227 NAMECALL                         R21 R4 K9 ["getText"]
      229 CALL                             R21 3 -1
      230 NAMECALL                         R18 R12 K10 ["AddNewAction"]
      232 CALL                             R18 -1 1
      233 GETTABLEKS                       R18 R18 K11 ["Triggered"]
      235 NEWCLOSURE                       R20 P6
      236 CAPTURE                          UPVAL U5
      237 CAPTURE                          VAL R1
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R7
      240 CAPTURE                          UPVAL U8
      241 CAPTURE                          REF R17
      242 NAMECALL                         R18 R18 K12 ["connect"]
      244 CALL                             R18 2 0
      245 CLOSEUPVALS                      R15
      246 CLOSEUPVALS                      R13
      247 JUMPIFNOT                        R3 ; [+51]
      248 JUMPIFNOT                        R5 ; [+50]
      249 JUMPIFNOT                        R6 ; [+25]
      250 GETIMPORT                        R15 K3 [string.format]
      252 LOADK                            R16 K41 ["PackageDetails-%s"]
      253 MOVE                             R17 R10
      254 CALL                             R15 2 1
      255 LOADK                            R18 K42 ["AssetConfigPackagePermissions"]
      256 LOADK                            R19 K43 ["PackageDetails"]
      257 NAMECALL                         R16 R4 K9 ["getText"]
      259 CALL                             R16 3 -1
      260 NAMECALL                         R13 R12 K10 ["AddNewAction"]
      262 CALL                             R13 -1 1
      263 GETTABLEKS                       R13 R13 K11 ["Triggered"]
      265 NEWCLOSURE                       R15 P7
      266 CAPTURE                          VAL R5
      267 CAPTURE                          VAL R1
      268 CAPTURE                          UPVAL U12
      269 CAPTURE                          UPVAL U13
      270 CAPTURE                          VAL R2
      271 NAMECALL                         R13 R13 K12 ["connect"]
      273 CALL                             R13 2 0
      274 JUMP                             ; [+24]
      275 GETIMPORT                        R15 K3 [string.format]
      277 LOADK                            R16 K44 ["EditAsset-%s"]
      278 MOVE                             R17 R10
      279 CALL                             R15 2 1
      280 LOADK                            R18 K7 ["General"]
      281 LOADK                            R19 K45 ["RightClickMenuEditAsset"]
      282 NAMECALL                         R16 R4 K9 ["getText"]
      284 CALL                             R16 3 -1
      285 NAMECALL                         R13 R12 K10 ["AddNewAction"]
      287 CALL                             R13 -1 1
      288 GETTABLEKS                       R13 R13 K11 ["Triggered"]
      290 NEWCLOSURE                       R15 P8
      291 CAPTURE                          VAL R5
      292 CAPTURE                          VAL R1
      293 CAPTURE                          UPVAL U12
      294 CAPTURE                          UPVAL U13
      295 CAPTURE                          VAL R2
      296 NAMECALL                         R13 R13 K12 ["connect"]
      298 CALL                             R13 2 0
      299 NAMECALL                         R13 R12 K46 ["ShowAsync"]
      301 CALL                             R13 1 0
      302 NAMECALL                         R13 R12 K47 ["Destroy"]
      304 CALL                             R13 1 0
      305 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R0 K7 ["Libs"]
       17 GETTABLEKS                       R3 R3 K8 ["Http"]
       19 GETTABLEKS                       R3 R3 K9 ["Url"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Urls"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K11 ["DebugFlags"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K12 ["Analytics"]
       36 GETTABLEKS                       R6 R6 K12 ["Analytics"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K13 ["AssetConfigConstants"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K14 ["EnumConvert"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K15 ["getMeshPartAssetIds"]
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
       85 GETIMPORT                        R15 K1 [script]
       87 GETTABLEKS                       R15 R15 K2 ["Parent"]
       89 GETTABLEKS                       R15 R15 K24 ["isCli"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K6 [require]
       94 GETTABLEKS                       R16 R0 K3 ["Src"]
       96 GETTABLEKS                       R16 R16 K25 ["Flags"]
       98 GETTABLEKS                       R16 R16 K26 ["getFFlagToolboxGetMeshPartIdsFromAsset"]
      100 CALL                             R15 1 1
      101 LOADNIL                          R16
      102 MOVE                             R17 R14
      103 CALL                             R17 0 1
      104 JUMPIFNOT                        R17 ; [+9]
      105 NEWTABLE                         R16 0 0
      107 DUPCLOSURE                       R17 K27 [PROTO_0]
      108 SETTABLEKS                       R17 R16 K28 ["GetMeshIdFromAssetId"]
      110 DUPCLOSURE                       R17 K29 [PROTO_1]
      111 SETTABLEKS                       R17 R16 K30 ["GetTextureIdFromAssetId"]
      113 JUMP                             ; [+7]
      114 GETIMPORT                        R17 K18 [game]
      116 LOADK                            R19 K31 ["AssetManagerService"]
      117 NAMECALL                         R17 R17 K20 ["GetService"]
      119 CALL                             R17 2 1
      120 MOVE                             R16 R17
      121 NEWTABLE                         R17 1 0
      123 DUPCLOSURE                       R18 K32 [PROTO_3]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R4
      126 NEWCLOSURE                       R19 P3
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R8
      138 CAPTURE                          REF R16
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R7
      141 SETTABLEKS                       R19 R17 K33 ["tryCreateContextMenu"]
      143 CLOSEUPVALS                      R16
      144 RETURN                           R17 1
