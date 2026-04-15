PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["renamePlace"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ItemPath"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K1 ["UiZone"]
       10 GETTABLEKS                       R3 R4 K2 ["Browser"]
       12 LOADNIL                          R4
       13 MOVE                             R5 R0
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K3 ["Key"]
       17 GETUPVAL                         R7 4
       18 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       20 CALL                             R1 6 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 2
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K1 ["UiZone"]
       26 GETTABLEKS                       R3 R4 K2 ["Browser"]
       28 GETUPVAL                         R4 5
       29 MOVE                             R5 R0
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K3 ["Key"]
       33 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       35 CALL                             R1 5 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_7:
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
       18 GETUPVAL                         R6 5
       19 CALL                             R6 0 1
       20 GETUPVAL                         R7 6
       21 MOVE                             R8 R0
       22 MOVE                             R9 R6
       23 MOVE                             R10 R3
       24 NAMECALL                         R11 R4 K1 ["getItemsCache"]
       26 CALL                             R11 1 -1
       27 CALL                             R7 -1 1
       28 LOADK                            R8 K2 [""]
       29 GETUPVAL                         R9 7
       30 CALL                             R9 0 1
       31 JUMPIFNOT                        R9 ; [+20]
       32 GETTABLEKS                       R10 R0 K3 ["ItemPath"]
       34 GETTABLE                         R9 R5 R10
       35 JUMPIFNOT                        R9 ; [+2]
       36 LOADK                            R8 K4 ["bg-action-selected"]
       37 JUMP                             ; [+33]
       38 LOADK                            R9 K5 ["am-hover %*"]
       39 GETTABLEKS                       R13 R0 K7 ["Key"]
       41 MODK                             R12 R13 K6 [2]
       42 JUMPIFNOTEQKN                    R12 K8 [0] ; [+3]
       44 LOADK                            R11 K9 ["bg-paper"]
       45 JUMP                             ; [+1]
       46 LOADK                            R11 K2 [""]
       47 NAMECALL                         R9 R9 K10 ["format"]
       49 CALL                             R9 2 1
       50 MOVE                             R8 R9
       51 JUMP                             ; [+19]
       52 GETTABLEKS                       R10 R0 K3 ["ItemPath"]
       54 GETTABLE                         R9 R5 R10
       55 JUMPIFNOT                        R9 ; [+2]
       56 LOADK                            R8 K4 ["bg-action-selected"]
       57 JUMP                             ; [+13]
       58 LOADK                            R9 K5 ["am-hover %*"]
       59 GETTABLEKS                       R13 R0 K7 ["Key"]
       61 MODK                             R12 R13 K6 [2]
       62 JUMPIFNOTEQKN                    R12 K8 [0] ; [+3]
       64 LOADK                            R11 K9 ["bg-paper"]
       65 JUMP                             ; [+1]
       66 LOADK                            R11 K2 [""]
       67 NAMECALL                         R9 R9 K10 ["format"]
       69 CALL                             R9 2 1
       70 MOVE                             R8 R9
       71 GETUPVAL                         R9 8
       72 GETUPVAL                         R12 9
       73 GETTABLEKS                       R11 R12 K11 ["MenuContext"]
       75 GETTABLEKS                       R10 R11 K12 ["Asset"]
       77 DUPTABLE                         R11 K15 [{"Path", "Index"}]
       78 GETTABLEKS                       R12 R0 K3 ["ItemPath"]
       80 SETTABLEKS                       R12 R11 K13 ["Path"]
       82 GETTABLEKS                       R12 R0 K7 ["Key"]
       84 SETTABLEKS                       R12 R11 K14 ["Index"]
       86 CALL                             R9 2 1
       87 GETUPVAL                         R11 10
       88 GETTABLEKS                       R10 R11 K16 ["createElement"]
       90 GETUPVAL                         R11 11
       91 NEWTABLE                         R12 8 0
       93 GETTABLEKS                       R13 R0 K7 ["Key"]
       95 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
       97 GETTABLEKS                       R13 R0 K18 ["Position"]
       99 SETTABLEKS                       R13 R12 K18 ["Position"]
      101 NEWCLOSURE                       R13 P0
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          VAL R2
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R1
      108 SETTABLEKS                       R13 R12 K19 ["OnRightClick"]
      110 GETUPVAL                         R15 10
      111 GETTABLEKS                       R14 R15 K20 ["Event"]
      113 GETTABLEKS                       R13 R14 K21 ["MouseButton1Down"]
      115 NEWCLOSURE                       R14 P1
      116 CAPTURE                          VAL R2
      117 CAPTURE                          UPVAL U9
      118 CAPTURE                          VAL R0
      119 SETTABLE                         R14 R12 R13
      120 GETUPVAL                         R15 10
      121 GETTABLEKS                       R14 R15 K20 ["Event"]
      123 GETTABLEKS                       R13 R14 K22 ["MouseButton1Up"]
      125 NEWCLOSURE                       R14 P2
      126 CAPTURE                          VAL R2
      127 CAPTURE                          UPVAL U9
      128 CAPTURE                          VAL R0
      129 SETTABLE                         R14 R12 R13
      130 GETUPVAL                         R14 10
      131 GETTABLEKS                       R13 R14 K23 ["Tag"]
      133 LOADK                            R15 K24 ["ItemRow X-FitX X-Row X-Left X-Middle %*"]
      134 MOVE                             R17 R8
      135 NAMECALL                         R15 R15 K10 ["format"]
      137 CALL                             R15 2 1
      138 MOVE                             R14 R15
      139 SETTABLE                         R14 R12 R13
      140 NEWTABLE                         R13 0 1
      142 MOVE                             R14 R7
      143 SETLIST                          R13 R14 1 [1]
      145 CALL                             R10 3 -1
      146 RETURN                           R10 -1

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
      104 GETTABLEKS                       R18 R19 K28 ["useItemSelection"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K5 [require]
      109 GETTABLEKS                       R21 R0 K17 ["Src"]
      111 GETTABLEKS                       R20 R21 K25 ["Hooks"]
      113 GETTABLEKS                       R19 R20 K29 ["useRenamePlaceId_DEPRECATED"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K5 [require]
      118 GETTABLEKS                       R21 R0 K17 ["Src"]
      120 GETTABLEKS                       R20 R21 K30 ["Types"]
      122 CALL                             R19 1 1
      123 GETTABLEKS                       R21 R3 K31 ["Util"]
      125 GETTABLEKS                       R20 R21 K32 ["GetTextSize"]
      127 GETIMPORT                        R21 K5 [require]
      129 GETTABLEKS                       R24 R0 K17 ["Src"]
      131 GETTABLEKS                       R23 R24 K31 ["Util"]
      133 GETTABLEKS                       R22 R23 K33 ["Images"]
      135 CALL                             R21 1 1
      136 GETIMPORT                        R22 K5 [require]
      138 GETTABLEKS                       R25 R0 K17 ["Src"]
      140 GETTABLEKS                       R24 R25 K31 ["Util"]
      142 GETTABLEKS                       R23 R24 K34 ["logIfDebug"]
      144 CALL                             R22 1 1
      145 GETIMPORT                        R23 K5 [require]
      147 GETTABLEKS                       R26 R0 K17 ["Src"]
      149 GETTABLEKS                       R25 R26 K35 ["Resources"]
      151 GETTABLEKS                       R24 R25 K36 ["PluginStyles"]
      153 CALL                             R23 1 1
      154 GETIMPORT                        R24 K5 [require]
      156 GETTABLEKS                       R27 R0 K17 ["Src"]
      158 GETTABLEKS                       R26 R27 K37 ["Flags"]
      160 GETTABLEKS                       R25 R26 K38 ["getFFlagAmrOrganizationFoundation"]
      162 CALL                             R24 1 1
      163 GETIMPORT                        R25 K5 [require]
      165 GETTABLEKS                       R28 R0 K17 ["Src"]
      167 GETTABLEKS                       R27 R28 K37 ["Flags"]
      169 GETTABLEKS                       R26 R27 K39 ["getFFlagAmrContextMenuRefactor"]
      171 CALL                             R25 1 1
      172 DUPCLOSURE                       R26 K40 [PROTO_0]
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R21
      176 DUPCLOSURE                       R27 K41 [PROTO_1]
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R19
      179 DUPCLOSURE                       R28 K42 [PROTO_3]
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R27
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R26
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R9
      195 DUPCLOSURE                       R29 K43 [PROTO_7]
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R14
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R28
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R25
      209 RETURN                           R29 1
