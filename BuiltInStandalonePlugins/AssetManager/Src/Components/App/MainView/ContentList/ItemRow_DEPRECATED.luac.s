PROTO_0:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["Deprecated when FFlagAmrUpdatedItemsCache is enabled"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 GETTABLE                         R3 R0 R1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K3 ["AssetInfoField"]
       13 GETTABLEKS                       R4 R5 K4 ["Creator"]
       15 JUMPIFNOTEQ                      R1 R4 ; [+11]
       17 GETTABLEKS                       R5 R3 K5 ["Name"]
       19 JUMPIFEQKS                       R5 K6 [""] ; [+4]
       21 GETTABLEKS                       R4 R3 K5 ["Name"]
       23 RETURN                           R4 1
       24 GETTABLEKS                       R4 R3 K7 ["Id"]
       26 RETURN                           R4 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K3 ["AssetInfoField"]
       30 GETTABLEKS                       R4 R5 K8 ["Modified"]
       32 JUMPIFEQ                         R1 R4 ; [+8]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K3 ["AssetInfoField"]
       37 GETTABLEKS                       R4 R5 K9 ["Created"]
       39 JUMPIFNOTEQ                      R1 R4 ; [+14]
       41 GETIMPORT                        R4 K12 [DateTime.fromIsoDate]
       43 MOVE                             R5 R3
       44 CALL                             R4 1 1
       45 JUMPIFNOT                        R4 ; [+6]
       46 LOADK                            R7 K13 ["lll"]
       47 LOADK                            R8 K14 ["en-us"]
       48 NAMECALL                         R5 R4 K15 ["FormatLocalTime"]
       50 CALL                             R5 3 1
       51 RETURN                           R5 1
       52 LOADK                            R5 K16 ["--"]
       53 RETURN                           R5 1
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R5 R6 K3 ["AssetInfoField"]
       57 GETTABLEKS                       R4 R5 K17 ["AssetType"]
       59 JUMPIFNOTEQ                      R1 R4 ; [+7]
       61 LOADK                            R6 K17 ["AssetType"]
       62 MOVE                             R7 R3
       63 NAMECALL                         R4 R2 K18 ["getText"]
       65 CALL                             R4 3 -1
       66 RETURN                           R4 -1
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R5 R6 K3 ["AssetInfoField"]
       70 GETTABLEKS                       R4 R5 K19 ["Source"]
       72 JUMPIFNOTEQ                      R1 R4 ; [+7]
       74 LOADK                            R6 K20 ["AssetSource"]
       75 MOVE                             R7 R3
       76 NAMECALL                         R4 R2 K18 ["getText"]
       78 CALL                             R4 3 -1
       79 RETURN                           R4 -1
       80 FASTCALL1                        TOSTRING R3 ; [+3]
       81 MOVE                             R5 R3
       82 GETIMPORT                        R4 K22 [tostring]
       84 CALL                             R4 1 1
       85 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Image"]
        6 DUPTABLE                         R3 K4 [{"Image", "LayoutOrder", "tag"}]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K5 ["get"]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K6 ["AvailableImages"]
       13 GETTABLEKS                       R5 R6 K7 ["Folder"]
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K1 ["Image"]
       18 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       20 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       22 LOADK                            R4 K8 ["size-900 bg-action-subtle"]
       23 SETTABLEKS                       R4 R3 K3 ["tag"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["renamePlace"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 NOT                              R5 R6
        3 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        5 LOADK                            R6 K0 ["Deprecated when FFlagAmrUpdatedItemsCache is enabled"]
        6 GETIMPORT                        R4 K2 [assert]
        8 CALL                             R4 2 0
        9 NEWTABLE                         R4 0 0
       11 GETUPVAL                         R5 1
       12 CALL                             R5 0 2
       13 MOVE                             R7 R5
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 FORGPREP                         R7
       17 GETUPVAL                         R12 2
       18 MOVE                             R13 R0
       19 MOVE                             R14 R11
       20 MOVE                             R15 R3
       21 CALL                             R12 3 1
       22 GETTABLE                         R14 R6 R10
       23 GETTABLEKS                       R13 R14 K3 ["Offset"]
       25 GETUPVAL                         R16 3
       26 MOVE                             R17 R12
       27 CALL                             R16 1 1
       28 GETTABLEKS                       R15 R16 K4 ["X"]
       30 GETUPVAL                         R18 4
       31 LOADK                            R20 K6 ["CellContentPadding"]
       32 NAMECALL                         R18 R18 K7 ["GetAttribute"]
       34 CALL                             R18 2 1
       35 MULK                             R17 R18 K5 [2]
       36 SUB                              R16 R13 R17
       37 JUMPIFLT                         R16 R15 ; [+2]
       39 LOADB                            R14 0 +1
       40 LOADB                            R14 1
       41 JUMPIFNOT                        R14 ; [+9]
       42 GETUPVAL                         R16 5
       43 GETTABLEKS                       R15 R16 K8 ["createElement"]
       45 GETUPVAL                         R16 6
       46 DUPTABLE                         R17 K10 [{"Text"}]
       47 SETTABLEKS                       R12 R17 K9 ["Text"]
       49 CALL                             R15 2 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R15
       52 JUMPIFNOTEQKN                    R10 K11 [1] ; [+196]
       54 GETUPVAL                         R18 4
       55 LOADK                            R20 K12 ["ListThumbnailSize"]
       56 NAMECALL                         R18 R18 K7 ["GetAttribute"]
       58 CALL                             R18 2 1
       59 SUB                              R17 R13 R18
       60 GETUPVAL                         R18 4
       61 LOADK                            R20 K6 ["CellContentPadding"]
       62 NAMECALL                         R18 R18 K7 ["GetAttribute"]
       64 CALL                             R18 2 1
       65 SUB                              R16 R17 R18
       66 GETUPVAL                         R18 5
       67 GETTABLEKS                       R17 R18 K8 ["createElement"]
       69 GETUPVAL                         R18 7
       70 NEWTABLE                         R19 4 0
       72 SETTABLEKS                       R10 R19 K13 ["LayoutOrder"]
       74 GETIMPORT                        R20 K16 [UDim2.new]
       76 LOADN                            R21 0
       77 MOVE                             R22 R13
       78 LOADN                            R23 1
       79 LOADN                            R24 0
       80 CALL                             R20 4 1
       81 SETTABLEKS                       R20 R19 K17 ["Size"]
       83 GETUPVAL                         R21 5
       84 GETTABLEKS                       R20 R21 K18 ["Tag"]
       86 LOADK                            R21 K19 ["am-padding-left-medium X-Row X-Left X-Middle"]
       87 SETTABLE                         R21 R19 R20
       88 DUPTABLE                         R20 K22 [{"ThumbnailContainer", "AssetName"}]
       89 GETUPVAL                         R22 8
       90 CALL                             R22 0 1
       91 JUMPIFNOT                        R22 ; [+19]
       92 GETTABLEKS                       R22 R0 K23 ["AssetType"]
       94 GETUPVAL                         R25 9
       95 GETTABLEKS                       R24 R25 K23 ["AssetType"]
       97 GETTABLEKS                       R23 R24 K24 ["Folder"]
       99 JUMPIFNOTEQ                      R22 R23 ; [+11]
      101 GETUPVAL                         R22 5
      102 GETTABLEKS                       R21 R22 K8 ["createElement"]
      104 GETUPVAL                         R22 10
      105 DUPTABLE                         R23 K25 [{"LayoutOrder"}]
      106 LOADN                            R24 1
      107 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      109 CALL                             R21 2 1
      110 JUMP                             ; [+53]
      111 GETUPVAL                         R22 5
      112 GETTABLEKS                       R21 R22 K8 ["createElement"]
      114 GETUPVAL                         R22 7
      115 NEWTABLE                         R23 2 0
      117 LOADN                            R24 1
      118 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      120 GETUPVAL                         R25 5
      121 GETTABLEKS                       R24 R25 K18 ["Tag"]
      123 LOADK                            R25 K26 ["ThumbnailContainer Secondary X-Corner"]
      124 SETTABLE                         R25 R23 R24
      125 DUPTABLE                         R24 K29 [{"Thumbnail", "PackageLinkIcon"}]
      126 GETUPVAL                         R26 5
      127 GETTABLEKS                       R25 R26 K8 ["createElement"]
      129 GETUPVAL                         R26 11
      130 DUPTABLE                         R27 K31 [{"AssetId", "AssetType"}]
      131 GETTABLEKS                       R28 R0 K30 ["AssetId"]
      133 SETTABLEKS                       R28 R27 K30 ["AssetId"]
      135 GETTABLEKS                       R28 R0 K23 ["AssetType"]
      137 SETTABLEKS                       R28 R27 K23 ["AssetType"]
      139 CALL                             R25 2 1
      140 SETTABLEKS                       R25 R24 K27 ["Thumbnail"]
      142 GETTABLEKS                       R26 R0 K32 ["IsPackage"]
      144 JUMPIFNOT                        R26 ; [+15]
      145 GETUPVAL                         R26 5
      146 GETTABLEKS                       R25 R26 K8 ["createElement"]
      148 GETUPVAL                         R27 12
      149 GETTABLEKS                       R26 R27 K33 ["Image"]
      151 DUPTABLE                         R27 K36 [{"ZIndex", "tag"}]
      152 LOADN                            R28 2
      153 SETTABLEKS                       R28 R27 K34 ["ZIndex"]
      155 LOADK                            R28 K37 ["icon-packageLink am-size-icon-xsmall radius-xsmall anchor-bottom-right bg-over-media-0 data-testid=package-link-icon"]
      156 SETTABLEKS                       R28 R27 K35 ["tag"]
      158 CALL                             R25 2 1
      159 JUMP                             ; [+1]
      160 LOADNIL                          R25
      161 SETTABLEKS                       R25 R24 K28 ["PackageLinkIcon"]
      163 CALL                             R21 3 1
      164 SETTABLEKS                       R21 R20 K20 ["ThumbnailContainer"]
      166 GETTABLEKS                       R22 R0 K30 ["AssetId"]
      168 JUMPIFNOTEQ                      R22 R1 ; [+42]
      170 GETUPVAL                         R22 5
      171 GETTABLEKS                       R21 R22 K8 ["createElement"]
      173 GETUPVAL                         R22 13
      174 NEWTABLE                         R23 8 0
      176 LOADN                            R24 2
      177 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      179 SETTABLEKS                       R12 R23 K9 ["Text"]
      181 LOADB                            R24 1
      182 SETTABLEKS                       R24 R23 K38 ["ShouldFocus"]
      184 GETIMPORT                        R24 K16 [UDim2.new]
      186 LOADN                            R25 0
      187 MOVE                             R26 R16
      188 LOADN                            R27 0
      189 LOADN                            R28 0
      190 CALL                             R24 4 1
      191 SETTABLEKS                       R24 R23 K17 ["Size"]
      193 GETUPVAL                         R24 4
      194 LOADK                            R26 K39 ["InputHeight"]
      195 NAMECALL                         R24 R24 K7 ["GetAttribute"]
      197 CALL                             R24 2 1
      198 SETTABLEKS                       R24 R23 K40 ["Height"]
      200 NEWCLOSURE                       R24 P0
      201 CAPTURE                          VAL R2
      202 SETTABLEKS                       R24 R23 K41 ["OnFocusLost"]
      204 GETUPVAL                         R25 5
      205 GETTABLEKS                       R24 R25 K18 ["Tag"]
      207 LOADK                            R25 K42 ["Left X-FitY X-PadS"]
      208 SETTABLE                         R25 R23 R24
      209 CALL                             R21 2 1
      210 JUMP                             ; [+33]
      211 GETUPVAL                         R22 5
      212 GETTABLEKS                       R21 R22 K8 ["createElement"]
      214 GETUPVAL                         R22 14
      215 NEWTABLE                         R23 8 0
      217 LOADN                            R24 2
      218 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      220 SETTABLEKS                       R12 R23 K9 ["Text"]
      222 GETIMPORT                        R24 K46 [Enum.TextTruncate.AtEnd]
      224 SETTABLEKS                       R24 R23 K44 ["TextTruncate"]
      226 GETIMPORT                        R24 K16 [UDim2.new]
      228 LOADN                            R25 0
      229 MOVE                             R26 R16
      230 LOADN                            R27 0
      231 LOADN                            R28 0
      232 CALL                             R24 4 1
      233 SETTABLEKS                       R24 R23 K17 ["Size"]
      235 GETUPVAL                         R25 5
      236 GETTABLEKS                       R24 R25 K18 ["Tag"]
      238 LOADK                            R25 K47 ["Left X-FitY"]
      239 SETTABLE                         R25 R23 R24
      240 DUPTABLE                         R24 K49 [{"Tooltip"}]
      241 SETTABLEKS                       R15 R24 K48 ["Tooltip"]
      243 CALL                             R21 3 1
      244 SETTABLEKS                       R21 R20 K21 ["AssetName"]
      246 CALL                             R17 3 1
      247 SETTABLE                         R17 R4 R10
      248 JUMP                             ; [+33]
      249 GETUPVAL                         R17 5
      250 GETTABLEKS                       R16 R17 K8 ["createElement"]
      252 GETUPVAL                         R17 14
      253 NEWTABLE                         R18 8 0
      255 SETTABLEKS                       R10 R18 K13 ["LayoutOrder"]
      257 SETTABLEKS                       R12 R18 K9 ["Text"]
      259 GETIMPORT                        R19 K46 [Enum.TextTruncate.AtEnd]
      261 SETTABLEKS                       R19 R18 K44 ["TextTruncate"]
      263 GETIMPORT                        R19 K16 [UDim2.new]
      265 LOADN                            R20 0
      266 MOVE                             R21 R13
      267 LOADN                            R22 1
      268 LOADN                            R23 0
      269 CALL                             R19 4 1
      270 SETTABLEKS                       R19 R18 K17 ["Size"]
      272 GETUPVAL                         R20 5
      273 GETTABLEKS                       R19 R20 K18 ["Tag"]
      275 LOADK                            R20 K50 ["Left"]
      276 SETTABLE                         R20 R18 R19
      277 DUPTABLE                         R19 K49 [{"Tooltip"}]
      278 SETTABLEKS                       R15 R19 K48 ["Tooltip"]
      280 CALL                             R16 3 1
      281 SETTABLE                         R16 R4 R10
      282 FORGLOOP                         R7 2 ; [-266]
      284 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
        7 GETTABLEKS                       R3 R4 K2 ["Creator"]
        9 JUMPIFNOTEQ                      R1 R3 ; [+11]
       11 GETTABLEKS                       R4 R0 K3 ["Name"]
       13 JUMPIFEQKS                       R4 K4 [""] ; [+4]
       15 GETTABLEKS                       R3 R0 K3 ["Name"]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R0 K5 ["Id"]
       20 RETURN                           R3 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
       24 GETTABLEKS                       R3 R4 K6 ["Modified"]
       26 JUMPIFEQ                         R1 R3 ; [+8]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
       31 GETTABLEKS                       R3 R4 K7 ["Created"]
       33 JUMPIFNOTEQ                      R1 R3 ; [+14]
       35 GETIMPORT                        R3 K10 [DateTime.fromIsoDate]
       37 MOVE                             R4 R0
       38 CALL                             R3 1 1
       39 JUMPIFNOT                        R3 ; [+6]
       40 LOADK                            R6 K11 ["lll"]
       41 LOADK                            R7 K12 ["en-us"]
       42 NAMECALL                         R4 R3 K13 ["FormatLocalTime"]
       44 CALL                             R4 3 1
       45 RETURN                           R4 1
       46 LOADK                            R4 K14 ["--"]
       47 RETURN                           R4 1
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
       51 GETTABLEKS                       R3 R4 K15 ["AssetType"]
       53 JUMPIFNOTEQ                      R1 R3 ; [+7]
       55 LOADK                            R5 K15 ["AssetType"]
       56 MOVE                             R6 R0
       57 NAMECALL                         R3 R2 K16 ["getText"]
       59 CALL                             R3 3 -1
       60 RETURN                           R3 -1
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
       64 GETTABLEKS                       R3 R4 K17 ["Source"]
       66 JUMPIFNOTEQ                      R1 R3 ; [+7]
       68 LOADK                            R5 K18 ["AssetSource"]
       69 MOVE                             R6 R0
       70 NAMECALL                         R3 R2 K16 ["getText"]
       72 CALL                             R3 3 -1
       73 RETURN                           R3 -1
       74 FASTCALL1                        TOSTRING R0 ; [+3]
       75 MOVE                             R4 R0
       76 GETIMPORT                        R3 K20 [tostring]
       78 CALL                             R3 1 1
       79 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["renamePlace"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 CALL                             R5 0 2
        4 GETTABLEKS                       R8 R0 K0 ["ParentScope"]
        6 GETTABLEKS                       R7 R8 K1 ["Uid"]
        8 GETTABLEKS                       R8 R0 K2 ["ItemPath"]
       10 MOVE                             R9 R5
       11 LOADNIL                          R10
       12 LOADNIL                          R11
       13 FORGPREP                         R9
       14 MOVE                             R16 R7
       15 MOVE                             R17 R8
       16 MOVE                             R18 R13
       17 NAMECALL                         R14 R3 K3 ["getItemField"]
       19 CALL                             R14 4 1
       20 JUMPIF                           R14 ; [+12]
       21 GETUPVAL                         R15 1
       22 LOADK                            R17 K4 ["Cannot construct item row for item %* due to missing property %*"]
       23 MOVE                             R19 R8
       24 MOVE                             R20 R13
       25 NAMECALL                         R17 R17 K5 ["format"]
       27 CALL                             R17 3 1
       28 MOVE                             R16 R17
       29 CALL                             R15 1 0
       30 NEWTABLE                         R15 0 0
       32 RETURN                           R15 1
       33 GETUPVAL                         R15 2
       34 MOVE                             R16 R14
       35 MOVE                             R17 R13
       36 CALL                             R15 2 1
       37 GETTABLE                         R17 R6 R12
       38 GETTABLEKS                       R16 R17 K6 ["Offset"]
       40 GETUPVAL                         R19 3
       41 MOVE                             R20 R15
       42 CALL                             R19 1 1
       43 GETTABLEKS                       R18 R19 K7 ["X"]
       45 GETUPVAL                         R21 4
       46 LOADK                            R23 K9 ["CellContentPadding"]
       47 NAMECALL                         R21 R21 K10 ["GetAttribute"]
       49 CALL                             R21 2 1
       50 MULK                             R20 R21 K8 [2]
       51 SUB                              R19 R16 R20
       52 JUMPIFLT                         R19 R18 ; [+2]
       54 LOADB                            R17 0 +1
       55 LOADB                            R17 1
       56 JUMPIFNOT                        R17 ; [+9]
       57 GETUPVAL                         R19 5
       58 GETTABLEKS                       R18 R19 K11 ["createElement"]
       60 GETUPVAL                         R19 6
       61 DUPTABLE                         R20 K13 [{"Text"}]
       62 SETTABLEKS                       R15 R20 K12 ["Text"]
       64 CALL                             R18 2 1
       65 JUMP                             ; [+1]
       66 LOADNIL                          R18
       67 JUMPIFNOTEQKN                    R12 K14 [1] ; [+212]
       69 MOVE                             R21 R7
       70 MOVE                             R22 R8
       71 GETUPVAL                         R25 7
       72 GETTABLEKS                       R24 R25 K15 ["AssetInfoField"]
       74 GETTABLEKS                       R23 R24 K16 ["AssetType"]
       76 NAMECALL                         R19 R3 K3 ["getItemField"]
       78 CALL                             R19 4 1
       79 MOVE                             R22 R7
       80 MOVE                             R23 R8
       81 GETUPVAL                         R26 7
       82 GETTABLEKS                       R25 R26 K15 ["AssetInfoField"]
       84 GETTABLEKS                       R24 R25 K17 ["AssetId"]
       86 NAMECALL                         R20 R3 K3 ["getItemField"]
       88 CALL                             R20 4 1
       89 MOVE                             R23 R7
       90 MOVE                             R24 R8
       91 GETUPVAL                         R27 7
       92 GETTABLEKS                       R26 R27 K15 ["AssetInfoField"]
       94 GETTABLEKS                       R25 R26 K18 ["IsPackage"]
       96 NAMECALL                         R21 R3 K3 ["getItemField"]
       98 CALL                             R21 4 1
       99 GETUPVAL                         R24 4
      100 LOADK                            R26 K19 ["ListThumbnailSize"]
      101 NAMECALL                         R24 R24 K10 ["GetAttribute"]
      103 CALL                             R24 2 1
      104 SUB                              R23 R16 R24
      105 GETUPVAL                         R24 4
      106 LOADK                            R26 K9 ["CellContentPadding"]
      107 NAMECALL                         R24 R24 K10 ["GetAttribute"]
      109 CALL                             R24 2 1
      110 SUB                              R22 R23 R24
      111 GETUPVAL                         R24 5
      112 GETTABLEKS                       R23 R24 K11 ["createElement"]
      114 GETUPVAL                         R24 8
      115 NEWTABLE                         R25 4 0
      117 SETTABLEKS                       R12 R25 K20 ["LayoutOrder"]
      119 GETIMPORT                        R26 K23 [UDim2.new]
      121 LOADN                            R27 0
      122 MOVE                             R28 R16
      123 LOADN                            R29 1
      124 LOADN                            R30 0
      125 CALL                             R26 4 1
      126 SETTABLEKS                       R26 R25 K24 ["Size"]
      128 GETUPVAL                         R27 5
      129 GETTABLEKS                       R26 R27 K25 ["Tag"]
      131 LOADK                            R27 K26 ["am-padding-left-medium X-Row X-Left X-Middle"]
      132 SETTABLE                         R27 R25 R26
      133 DUPTABLE                         R26 K29 [{"ThumbnailContainer", "AssetName"}]
      134 GETUPVAL                         R28 9
      135 CALL                             R28 0 1
      136 JUMPIFNOT                        R28 ; [+17]
      137 GETUPVAL                         R30 7
      138 GETTABLEKS                       R29 R30 K16 ["AssetType"]
      140 GETTABLEKS                       R28 R29 K30 ["Folder"]
      142 JUMPIFNOTEQ                      R19 R28 ; [+11]
      144 GETUPVAL                         R28 5
      145 GETTABLEKS                       R27 R28 K11 ["createElement"]
      147 GETUPVAL                         R28 10
      148 DUPTABLE                         R29 K31 [{"LayoutOrder"}]
      149 LOADN                            R30 1
      150 SETTABLEKS                       R30 R29 K20 ["LayoutOrder"]
      152 CALL                             R27 2 1
      153 JUMP                             ; [+47]
      154 GETUPVAL                         R28 5
      155 GETTABLEKS                       R27 R28 K11 ["createElement"]
      157 GETUPVAL                         R28 8
      158 NEWTABLE                         R29 2 0
      160 LOADN                            R30 1
      161 SETTABLEKS                       R30 R29 K20 ["LayoutOrder"]
      163 GETUPVAL                         R31 5
      164 GETTABLEKS                       R30 R31 K25 ["Tag"]
      166 LOADK                            R31 K32 ["ThumbnailContainer Secondary X-Corner"]
      167 SETTABLE                         R31 R29 R30
      168 DUPTABLE                         R30 K35 [{"Thumbnail", "PackageLinkIcon"}]
      169 GETUPVAL                         R32 5
      170 GETTABLEKS                       R31 R32 K11 ["createElement"]
      172 GETUPVAL                         R32 11
      173 DUPTABLE                         R33 K36 [{"AssetId", "AssetType"}]
      174 SETTABLEKS                       R20 R33 K17 ["AssetId"]
      176 SETTABLEKS                       R19 R33 K16 ["AssetType"]
      178 CALL                             R31 2 1
      179 SETTABLEKS                       R31 R30 K33 ["Thumbnail"]
      181 JUMPIFNOT                        R21 ; [+15]
      182 GETUPVAL                         R32 5
      183 GETTABLEKS                       R31 R32 K11 ["createElement"]
      185 GETUPVAL                         R33 12
      186 GETTABLEKS                       R32 R33 K37 ["Image"]
      188 DUPTABLE                         R33 K40 [{"ZIndex", "tag"}]
      189 LOADN                            R34 2
      190 SETTABLEKS                       R34 R33 K38 ["ZIndex"]
      192 LOADK                            R34 K41 ["icon-packageLink am-size-icon-xsmall radius-xsmall anchor-bottom-right bg-over-media-0 data-testid=package-link-icon"]
      193 SETTABLEKS                       R34 R33 K39 ["tag"]
      195 CALL                             R31 2 1
      196 JUMP                             ; [+1]
      197 LOADNIL                          R31
      198 SETTABLEKS                       R31 R30 K34 ["PackageLinkIcon"]
      200 CALL                             R27 3 1
      201 SETTABLEKS                       R27 R26 K27 ["ThumbnailContainer"]
      203 JUMPIFNOTEQ                      R20 R1 ; [+40]
      205 GETUPVAL                         R28 5
      206 GETTABLEKS                       R27 R28 K11 ["createElement"]
      208 GETUPVAL                         R28 13
      209 NEWTABLE                         R29 8 0
      211 LOADN                            R30 2
      212 SETTABLEKS                       R30 R29 K20 ["LayoutOrder"]
      214 SETTABLEKS                       R15 R29 K12 ["Text"]
      216 LOADB                            R30 1
      217 SETTABLEKS                       R30 R29 K42 ["ShouldFocus"]
      219 GETIMPORT                        R30 K44 [UDim2.fromOffset]
      221 MOVE                             R31 R22
      222 LOADN                            R32 0
      223 CALL                             R30 2 1
      224 SETTABLEKS                       R30 R29 K24 ["Size"]
      226 GETUPVAL                         R30 4
      227 LOADK                            R32 K45 ["InputHeight"]
      228 NAMECALL                         R30 R30 K10 ["GetAttribute"]
      230 CALL                             R30 2 1
      231 SETTABLEKS                       R30 R29 K46 ["Height"]
      233 NEWCLOSURE                       R30 P0
      234 CAPTURE                          VAL R2
      235 SETTABLEKS                       R30 R29 K47 ["OnFocusLost"]
      237 GETUPVAL                         R31 5
      238 GETTABLEKS                       R30 R31 K25 ["Tag"]
      240 LOADK                            R31 K48 ["Left X-FitY X-PadS"]
      241 SETTABLE                         R31 R29 R30
      242 CALL                             R27 2 1
      243 JUMP                             ; [+31]
      244 GETUPVAL                         R28 5
      245 GETTABLEKS                       R27 R28 K11 ["createElement"]
      247 GETUPVAL                         R28 14
      248 NEWTABLE                         R29 8 0
      250 LOADN                            R30 2
      251 SETTABLEKS                       R30 R29 K20 ["LayoutOrder"]
      253 SETTABLEKS                       R15 R29 K12 ["Text"]
      255 GETIMPORT                        R30 K52 [Enum.TextTruncate.AtEnd]
      257 SETTABLEKS                       R30 R29 K50 ["TextTruncate"]
      259 GETIMPORT                        R30 K44 [UDim2.fromOffset]
      261 MOVE                             R31 R22
      262 LOADN                            R32 0
      263 CALL                             R30 2 1
      264 SETTABLEKS                       R30 R29 K24 ["Size"]
      266 GETUPVAL                         R31 5
      267 GETTABLEKS                       R30 R31 K25 ["Tag"]
      269 LOADK                            R31 K53 ["Left X-FitY"]
      270 SETTABLE                         R31 R29 R30
      271 DUPTABLE                         R30 K55 [{"Tooltip"}]
      272 SETTABLEKS                       R18 R30 K54 ["Tooltip"]
      274 CALL                             R27 3 1
      275 SETTABLEKS                       R27 R26 K28 ["AssetName"]
      277 CALL                             R23 3 1
      278 SETTABLE                         R23 R4 R12
      279 JUMP                             ; [+33]
      280 GETUPVAL                         R20 5
      281 GETTABLEKS                       R19 R20 K11 ["createElement"]
      283 GETUPVAL                         R20 14
      284 NEWTABLE                         R21 8 0
      286 SETTABLEKS                       R12 R21 K20 ["LayoutOrder"]
      288 SETTABLEKS                       R15 R21 K12 ["Text"]
      290 GETIMPORT                        R22 K52 [Enum.TextTruncate.AtEnd]
      292 SETTABLEKS                       R22 R21 K50 ["TextTruncate"]
      294 GETIMPORT                        R22 K23 [UDim2.new]
      296 LOADN                            R23 0
      297 MOVE                             R24 R16
      298 LOADN                            R25 1
      299 LOADN                            R26 0
      300 CALL                             R22 4 1
      301 SETTABLEKS                       R22 R21 K24 ["Size"]
      303 GETUPVAL                         R23 5
      304 GETTABLEKS                       R22 R23 K25 ["Tag"]
      306 LOADK                            R23 K56 ["Left"]
      307 SETTABLE                         R23 R21 R22
      308 DUPTABLE                         R22 K55 [{"Tooltip"}]
      309 SETTABLEKS                       R18 R22 K54 ["Tooltip"]
      311 CALL                             R19 3 1
      312 SETTABLE                         R19 R4 R12
      313 FORGLOOP                         R9 2 ; [-300]
      315 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["ItemPath"]
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["AssetId"]
       10 GETUPVAL                         R1 3
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+16]
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R5 5
       15 GETTABLEKS                       R4 R5 K2 ["UiZone"]
       17 GETTABLEKS                       R3 R4 K3 ["Browser"]
       19 LOADNIL                          R4
       20 MOVE                             R5 R0
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K4 ["Key"]
       24 GETUPVAL                         R7 6
       25 NAMECALL                         R1 R1 K5 ["handleMouse2Click"]
       27 CALL                             R1 6 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 4
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R4 R5 K2 ["UiZone"]
       33 GETTABLEKS                       R3 R4 K3 ["Browser"]
       35 GETUPVAL                         R4 7
       36 MOVE                             R5 R0
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K4 ["Key"]
       40 NAMECALL                         R1 R1 K5 ["handleMouse2Click"]
       42 CALL                             R1 5 0
       43 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 GETUPVAL                         R7 5
       19 CALL                             R7 0 1
       20 JUMPIFNOT                        R7 ; [+2]
       21 LOADNIL                          R6
       22 JUMP                             ; [+2]
       23 GETUPVAL                         R6 6
       24 CALL                             R6 0 1
       25 GETUPVAL                         R7 7
       26 CALL                             R7 0 1
       27 GETUPVAL                         R9 5
       28 CALL                             R9 0 1
       29 JUMPIFNOT                        R9 ; [+2]
       30 LOADNIL                          R8
       31 JUMP                             ; [+3]
       32 GETTABLEKS                       R9 R0 K1 ["Key"]
       34 GETTABLE                         R8 R6 R9
       35 LOADNIL                          R9
       36 GETUPVAL                         R10 5
       37 CALL                             R10 0 1
       38 JUMPIFNOT                        R10 ; [+10]
       39 GETUPVAL                         R10 8
       40 MOVE                             R11 R0
       41 MOVE                             R12 R7
       42 MOVE                             R13 R3
       43 NAMECALL                         R14 R4 K2 ["getItemsCache"]
       45 CALL                             R14 1 -1
       46 CALL                             R10 -1 1
       47 MOVE                             R9 R10
       48 JUMP                             ; [+7]
       49 GETUPVAL                         R10 9
       50 MOVE                             R11 R8
       51 MOVE                             R12 R7
       52 MOVE                             R13 R3
       53 MOVE                             R14 R1
       54 CALL                             R10 4 1
       55 MOVE                             R9 R10
       56 LOADK                            R10 K3 [""]
       57 GETUPVAL                         R11 10
       58 CALL                             R11 0 1
       59 JUMPIFNOT                        R11 ; [+20]
       60 GETTABLEKS                       R12 R0 K4 ["ItemPath"]
       62 GETTABLE                         R11 R5 R12
       63 JUMPIFNOT                        R11 ; [+2]
       64 LOADK                            R10 K5 ["bg-action-selected"]
       65 JUMP                             ; [+56]
       66 LOADK                            R11 K6 ["am-hover %*"]
       67 GETTABLEKS                       R15 R0 K1 ["Key"]
       69 MODK                             R14 R15 K7 [2]
       70 JUMPIFNOTEQKN                    R14 K8 [0] ; [+3]
       72 LOADK                            R13 K9 ["bg-paper"]
       73 JUMP                             ; [+1]
       74 LOADK                            R13 K3 [""]
       75 NAMECALL                         R11 R11 K10 ["format"]
       77 CALL                             R11 2 1
       78 MOVE                             R10 R11
       79 JUMP                             ; [+42]
       80 GETUPVAL                         R11 5
       81 CALL                             R11 0 1
       82 JUMPIFNOT                        R11 ; [+20]
       83 GETTABLEKS                       R12 R0 K4 ["ItemPath"]
       85 GETTABLE                         R11 R5 R12
       86 JUMPIFNOT                        R11 ; [+2]
       87 LOADK                            R10 K5 ["bg-action-selected"]
       88 JUMP                             ; [+33]
       89 LOADK                            R11 K6 ["am-hover %*"]
       90 GETTABLEKS                       R15 R0 K1 ["Key"]
       92 MODK                             R14 R15 K7 [2]
       93 JUMPIFNOTEQKN                    R14 K8 [0] ; [+3]
       95 LOADK                            R13 K9 ["bg-paper"]
       96 JUMP                             ; [+1]
       97 LOADK                            R13 K3 [""]
       98 NAMECALL                         R11 R11 K10 ["format"]
      100 CALL                             R11 2 1
      101 MOVE                             R10 R11
      102 JUMP                             ; [+19]
      103 GETTABLEKS                       R12 R8 K11 ["AssetId"]
      105 GETTABLE                         R11 R5 R12
      106 JUMPIFNOT                        R11 ; [+2]
      107 LOADK                            R10 K5 ["bg-action-selected"]
      108 JUMP                             ; [+13]
      109 LOADK                            R11 K6 ["am-hover %*"]
      110 GETTABLEKS                       R15 R0 K1 ["Key"]
      112 MODK                             R14 R15 K7 [2]
      113 JUMPIFNOTEQKN                    R14 K8 [0] ; [+3]
      115 LOADK                            R13 K9 ["bg-paper"]
      116 JUMP                             ; [+1]
      117 LOADK                            R13 K3 [""]
      118 NAMECALL                         R11 R11 K10 ["format"]
      120 CALL                             R11 2 1
      121 MOVE                             R10 R11
      122 GETUPVAL                         R11 11
      123 GETUPVAL                         R14 12
      124 GETTABLEKS                       R13 R14 K12 ["MenuContext"]
      126 GETTABLEKS                       R12 R13 K13 ["Asset"]
      128 DUPTABLE                         R13 K16 [{"Path", "Index"}]
      129 GETUPVAL                         R15 5
      130 CALL                             R15 0 1
      131 JUMPIFNOT                        R15 ; [+3]
      132 GETTABLEKS                       R14 R0 K4 ["ItemPath"]
      134 JUMP                             ; [+2]
      135 GETTABLEKS                       R14 R8 K11 ["AssetId"]
      137 SETTABLEKS                       R14 R13 K14 ["Path"]
      139 GETTABLEKS                       R14 R0 K1 ["Key"]
      141 SETTABLEKS                       R14 R13 K15 ["Index"]
      143 CALL                             R11 2 1
      144 GETUPVAL                         R13 13
      145 GETTABLEKS                       R12 R13 K17 ["createElement"]
      147 GETUPVAL                         R13 14
      148 NEWTABLE                         R14 8 0
      150 GETTABLEKS                       R15 R0 K1 ["Key"]
      152 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
      154 GETTABLEKS                       R15 R0 K19 ["Position"]
      156 SETTABLEKS                       R15 R14 K19 ["Position"]
      158 NEWCLOSURE                       R15 P0
      159 CAPTURE                          UPVAL U5
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R8
      162 CAPTURE                          UPVAL U15
      163 CAPTURE                          VAL R2
      164 CAPTURE                          UPVAL U12
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R1
      167 SETTABLEKS                       R15 R14 K20 ["OnRightClick"]
      169 GETUPVAL                         R17 13
      170 GETTABLEKS                       R16 R17 K21 ["Event"]
      172 GETTABLEKS                       R15 R16 K22 ["MouseButton1Down"]
      174 NEWCLOSURE                       R16 P1
      175 CAPTURE                          VAL R2
      176 CAPTURE                          UPVAL U12
      177 CAPTURE                          VAL R0
      178 SETTABLE                         R16 R14 R15
      179 GETUPVAL                         R17 13
      180 GETTABLEKS                       R16 R17 K21 ["Event"]
      182 GETTABLEKS                       R15 R16 K23 ["MouseButton1Up"]
      184 NEWCLOSURE                       R16 P2
      185 CAPTURE                          VAL R2
      186 CAPTURE                          UPVAL U12
      187 CAPTURE                          VAL R0
      188 SETTABLE                         R16 R14 R15
      189 GETUPVAL                         R16 13
      190 GETTABLEKS                       R15 R16 K24 ["Tag"]
      192 LOADK                            R17 K25 ["ItemRow X-FitX X-Row X-Left X-Middle %*"]
      193 MOVE                             R19 R10
      194 NAMECALL                         R17 R17 K10 ["format"]
      196 CALL                             R17 2 1
      197 MOVE                             R16 R17
      198 SETTABLE                         R16 R14 R15
      199 NEWTABLE                         R15 0 1
      201 MOVE                             R16 R9
      202 SETLIST                          R15 R16 1 [1]
      204 CALL                             R12 3 -1
      205 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R3 K12 ["UI"]
       34 GETTABLEKS                       R7 R6 K13 ["Pane"]
       36 GETTABLEKS                       R8 R6 K14 ["TextInput"]
       38 GETTABLEKS                       R9 R6 K15 ["TextLabel"]
       40 GETTABLEKS                       R10 R6 K16 ["Tooltip"]
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R15 R0 K17 ["Src"]
       46 GETTABLEKS                       R14 R15 K18 ["Components"]
       48 GETTABLEKS                       R13 R14 K19 ["Shared"]
       50 GETTABLEKS                       R12 R13 K20 ["AssetThumbnail"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K5 [require]
       55 GETTABLEKS                       R15 R0 K17 ["Src"]
       57 GETTABLEKS                       R14 R15 K21 ["Controllers"]
       59 GETTABLEKS                       R13 R14 K22 ["Input"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R16 R0 K17 ["Src"]
       66 GETTABLEKS                       R15 R16 K21 ["Controllers"]
       68 GETTABLEKS                       R14 R15 K23 ["ItemsController"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R17 R0 K17 ["Src"]
       75 GETTABLEKS                       R16 R17 K21 ["Controllers"]
       77 GETTABLEKS                       R15 R16 K24 ["PluginController"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R18 R0 K17 ["Src"]
       84 GETTABLEKS                       R17 R18 K25 ["Hooks"]
       86 GETTABLEKS                       R16 R17 K26 ["useColumns"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R19 R0 K17 ["Src"]
       93 GETTABLEKS                       R18 R19 K25 ["Hooks"]
       95 GETTABLEKS                       R17 R18 K27 ["useContextMenu"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R20 R0 K17 ["Src"]
      102 GETTABLEKS                       R19 R20 K25 ["Hooks"]
      104 GETTABLEKS                       R18 R19 K28 ["useItems"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K5 [require]
      109 GETTABLEKS                       R21 R0 K17 ["Src"]
      111 GETTABLEKS                       R20 R21 K25 ["Hooks"]
      113 GETTABLEKS                       R19 R20 K29 ["useItemSelection"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K5 [require]
      118 GETTABLEKS                       R22 R0 K17 ["Src"]
      120 GETTABLEKS                       R21 R22 K25 ["Hooks"]
      122 GETTABLEKS                       R20 R21 K30 ["useRenamePlaceId_DEPRECATED"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K5 [require]
      127 GETTABLEKS                       R22 R0 K17 ["Src"]
      129 GETTABLEKS                       R21 R22 K31 ["Types"]
      131 CALL                             R20 1 1
      132 GETTABLEKS                       R22 R3 K32 ["Util"]
      134 GETTABLEKS                       R21 R22 K33 ["GetTextSize"]
      136 GETIMPORT                        R22 K5 [require]
      138 GETTABLEKS                       R25 R0 K17 ["Src"]
      140 GETTABLEKS                       R24 R25 K32 ["Util"]
      142 GETTABLEKS                       R23 R24 K34 ["Images"]
      144 CALL                             R22 1 1
      145 GETIMPORT                        R23 K5 [require]
      147 GETTABLEKS                       R26 R0 K17 ["Src"]
      149 GETTABLEKS                       R25 R26 K32 ["Util"]
      151 GETTABLEKS                       R24 R25 K35 ["logIfDebug"]
      153 CALL                             R23 1 1
      154 GETIMPORT                        R24 K5 [require]
      156 GETTABLEKS                       R27 R0 K17 ["Src"]
      158 GETTABLEKS                       R26 R27 K36 ["Resources"]
      160 GETTABLEKS                       R25 R26 K37 ["PluginStyles"]
      162 CALL                             R24 1 1
      163 GETIMPORT                        R25 K5 [require]
      165 GETTABLEKS                       R28 R0 K17 ["Src"]
      167 GETTABLEKS                       R27 R28 K38 ["Flags"]
      169 GETTABLEKS                       R26 R27 K39 ["getFFlagAmrOrganizationFoundation"]
      171 CALL                             R25 1 1
      172 GETIMPORT                        R26 K5 [require]
      174 GETTABLEKS                       R29 R0 K17 ["Src"]
      176 GETTABLEKS                       R28 R29 K38 ["Flags"]
      178 GETTABLEKS                       R27 R28 K40 ["getFFlagAmrUpdatedItemsCache"]
      180 CALL                             R26 1 1
      181 GETIMPORT                        R27 K5 [require]
      183 GETTABLEKS                       R30 R0 K17 ["Src"]
      185 GETTABLEKS                       R29 R30 K38 ["Flags"]
      187 GETTABLEKS                       R28 R29 K41 ["getFFlagAmrContextMenuRefactor"]
      189 CALL                             R27 1 1
      190 DUPCLOSURE                       R28 K42 [PROTO_0]
      191 CAPTURE                          VAL R26
      192 CAPTURE                          VAL R20
      193 DUPCLOSURE                       R29 K43 [PROTO_1]
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R22
      197 DUPCLOSURE                       R30 K44 [PROTO_3]
      198 CAPTURE                          VAL R26
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R28
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R20
      208 CAPTURE                          VAL R29
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R9
      213 DUPCLOSURE                       R31 K45 [PROTO_4]
      214 CAPTURE                          VAL R5
      215 CAPTURE                          VAL R20
      216 DUPCLOSURE                       R32 K46 [PROTO_6]
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R31
      220 CAPTURE                          VAL R21
      221 CAPTURE                          VAL R24
      222 CAPTURE                          VAL R1
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R29
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R2
      230 CAPTURE                          VAL R8
      231 CAPTURE                          VAL R9
      232 DUPCLOSURE                       R33 K47 [PROTO_10]
      233 CAPTURE                          VAL R5
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R18
      238 CAPTURE                          VAL R26
      239 CAPTURE                          VAL R17
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R32
      242 CAPTURE                          VAL R30
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R16
      245 CAPTURE                          VAL R20
      246 CAPTURE                          VAL R1
      247 CAPTURE                          VAL R7
      248 CAPTURE                          VAL R27
      249 RETURN                           R33 1
