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
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["Deprecated when FFlagAmrUpdatedItemsCache is enabled"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 NEWTABLE                         R3 0 0
       11 GETUPVAL                         R4 1
       12 CALL                             R4 0 2
       13 MOVE                             R6 R4
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETUPVAL                         R11 2
       18 MOVE                             R12 R0
       19 MOVE                             R13 R10
       20 MOVE                             R14 R2
       21 CALL                             R11 3 1
       22 GETTABLE                         R13 R5 R9
       23 GETTABLEKS                       R12 R13 K3 ["Offset"]
       25 GETUPVAL                         R15 3
       26 MOVE                             R16 R11
       27 CALL                             R15 1 1
       28 GETTABLEKS                       R14 R15 K4 ["X"]
       30 GETUPVAL                         R17 4
       31 LOADK                            R19 K6 ["CellContentPadding"]
       32 NAMECALL                         R17 R17 K7 ["GetAttribute"]
       34 CALL                             R17 2 1
       35 MULK                             R16 R17 K5 [2]
       36 SUB                              R15 R12 R16
       37 JUMPIFLT                         R15 R14 ; [+2]
       39 LOADB                            R13 0 +1
       40 LOADB                            R13 1
       41 JUMPIFNOTEQKN                    R9 K8 [1] ; [+209]
       43 GETUPVAL                         R16 4
       44 LOADK                            R18 K9 ["ListThumbnailSize"]
       45 NAMECALL                         R16 R16 K7 ["GetAttribute"]
       47 CALL                             R16 2 1
       48 SUB                              R15 R12 R16
       49 GETUPVAL                         R16 4
       50 LOADK                            R18 K6 ["CellContentPadding"]
       51 NAMECALL                         R16 R16 K7 ["GetAttribute"]
       53 CALL                             R16 2 1
       54 SUB                              R14 R15 R16
       55 GETUPVAL                         R16 5
       56 GETTABLEKS                       R15 R16 K10 ["createElement"]
       58 GETUPVAL                         R17 6
       59 GETTABLEKS                       R16 R17 K11 ["View"]
       61 DUPTABLE                         R17 K15 [{"LayoutOrder", "Size", "tag"}]
       62 SETTABLEKS                       R9 R17 K12 ["LayoutOrder"]
       64 GETIMPORT                        R18 K18 [UDim2.new]
       66 LOADN                            R19 0
       67 MOVE                             R20 R12
       68 LOADN                            R21 1
       69 LOADN                            R22 0
       70 CALL                             R18 4 1
       71 SETTABLEKS                       R18 R17 K13 ["Size"]
       73 LOADK                            R18 K19 ["padding-left-xsmall row align-x-left align-y-center"]
       74 SETTABLEKS                       R18 R17 K14 ["tag"]
       76 DUPTABLE                         R18 K22 [{"ThumbnailContainer", "AssetName"}]
       77 GETUPVAL                         R20 7
       78 CALL                             R20 0 1
       79 JUMPIFNOT                        R20 ; [+19]
       80 GETTABLEKS                       R20 R0 K23 ["AssetType"]
       82 GETUPVAL                         R23 8
       83 GETTABLEKS                       R22 R23 K23 ["AssetType"]
       85 GETTABLEKS                       R21 R22 K24 ["Folder"]
       87 JUMPIFNOTEQ                      R20 R21 ; [+11]
       89 GETUPVAL                         R20 5
       90 GETTABLEKS                       R19 R20 K10 ["createElement"]
       92 GETUPVAL                         R20 9
       93 DUPTABLE                         R21 K25 [{"LayoutOrder"}]
       94 LOADN                            R22 1
       95 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
       97 CALL                             R19 2 1
       98 JUMP                             ; [+52]
       99 GETUPVAL                         R20 5
      100 GETTABLEKS                       R19 R20 K10 ["createElement"]
      102 GETUPVAL                         R21 6
      103 GETTABLEKS                       R20 R21 K11 ["View"]
      105 DUPTABLE                         R21 K26 [{"LayoutOrder", "tag"}]
      106 LOADN                            R22 1
      107 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
      109 LOADK                            R22 K27 ["am-size-thumbnailcontainer bg-foreground-contrast radius-small"]
      110 SETTABLEKS                       R22 R21 K14 ["tag"]
      112 DUPTABLE                         R22 K30 [{"Thumbnail", "PackageLinkIcon"}]
      113 GETUPVAL                         R24 5
      114 GETTABLEKS                       R23 R24 K10 ["createElement"]
      116 GETUPVAL                         R24 10
      117 DUPTABLE                         R25 K32 [{"AssetId", "AssetType"}]
      118 GETTABLEKS                       R26 R0 K31 ["AssetId"]
      120 SETTABLEKS                       R26 R25 K31 ["AssetId"]
      122 GETTABLEKS                       R26 R0 K23 ["AssetType"]
      124 SETTABLEKS                       R26 R25 K23 ["AssetType"]
      126 CALL                             R23 2 1
      127 SETTABLEKS                       R23 R22 K28 ["Thumbnail"]
      129 GETTABLEKS                       R24 R0 K33 ["IsPackage"]
      131 JUMPIFNOT                        R24 ; [+15]
      132 GETUPVAL                         R24 5
      133 GETTABLEKS                       R23 R24 K10 ["createElement"]
      135 GETUPVAL                         R25 6
      136 GETTABLEKS                       R24 R25 K34 ["Image"]
      138 DUPTABLE                         R25 K36 [{"ZIndex", "tag"}]
      139 LOADN                            R26 2
      140 SETTABLEKS                       R26 R25 K35 ["ZIndex"]
      142 LOADK                            R26 K37 ["icon-packageLink am-size-icon-xsmall radius-xsmall anchor-bottom-right bg-over-media-0 data-testid=package-link-icon"]
      143 SETTABLEKS                       R26 R25 K14 ["tag"]
      145 CALL                             R23 2 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R23
      148 SETTABLEKS                       R23 R22 K29 ["PackageLinkIcon"]
      150 CALL                             R19 3 1
      151 SETTABLEKS                       R19 R18 K20 ["ThumbnailContainer"]
      153 GETTABLEKS                       R20 R0 K31 ["AssetId"]
      155 JUMPIFNOTEQ                      R20 R1 ; [+20]
      157 GETUPVAL                         R20 5
      158 GETTABLEKS                       R19 R20 K10 ["createElement"]
      160 GETUPVAL                         R20 11
      161 DUPTABLE                         R21 K39 [{"LayoutOrder", "InitialText", "Size"}]
      162 LOADN                            R22 2
      163 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
      165 SETTABLEKS                       R11 R21 K38 ["InitialText"]
      167 GETIMPORT                        R22 K41 [UDim2.fromOffset]
      169 MOVE                             R23 R14
      170 LOADN                            R24 0
      171 CALL                             R22 2 1
      172 SETTABLEKS                       R22 R21 K13 ["Size"]
      174 CALL                             R19 2 1
      175 JUMP                             ; [+70]
      176 JUMPIFNOT                        R13 ; [+46]
      177 GETUPVAL                         R20 5
      178 GETTABLEKS                       R19 R20 K10 ["createElement"]
      180 GETUPVAL                         R21 6
      181 GETTABLEKS                       R20 R21 K42 ["Tooltip"]
      183 DUPTABLE                         R21 K45 [{"LayoutOrder", "title", "side"}]
      184 LOADN                            R22 2
      185 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
      187 SETTABLEKS                       R11 R21 K43 ["title"]
      189 GETUPVAL                         R25 6
      190 GETTABLEKS                       R24 R25 K46 ["Enums"]
      192 GETTABLEKS                       R23 R24 K47 ["PopoverSide"]
      194 GETTABLEKS                       R22 R23 K48 ["Bottom"]
      196 SETTABLEKS                       R22 R21 K44 ["side"]
      198 GETUPVAL                         R23 5
      199 GETTABLEKS                       R22 R23 K10 ["createElement"]
      201 GETUPVAL                         R24 6
      202 GETTABLEKS                       R23 R24 K49 ["Text"]
      204 DUPTABLE                         R24 K50 [{"LayoutOrder", "Text", "Size", "tag"}]
      205 LOADN                            R25 2
      206 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      208 SETTABLEKS                       R11 R24 K49 ["Text"]
      210 GETIMPORT                        R25 K41 [UDim2.fromOffset]
      212 MOVE                             R26 R14
      213 LOADN                            R27 0
      214 CALL                             R25 2 1
      215 SETTABLEKS                       R25 R24 K13 ["Size"]
      217 LOADK                            R25 K51 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      218 SETTABLEKS                       R25 R24 K14 ["tag"]
      220 CALL                             R22 2 -1
      221 CALL                             R19 -1 1
      222 JUMP                             ; [+23]
      223 GETUPVAL                         R20 5
      224 GETTABLEKS                       R19 R20 K10 ["createElement"]
      226 GETUPVAL                         R21 6
      227 GETTABLEKS                       R20 R21 K49 ["Text"]
      229 DUPTABLE                         R21 K50 [{"LayoutOrder", "Text", "Size", "tag"}]
      230 LOADN                            R22 2
      231 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
      233 SETTABLEKS                       R11 R21 K49 ["Text"]
      235 GETIMPORT                        R22 K41 [UDim2.fromOffset]
      237 MOVE                             R23 R14
      238 LOADN                            R24 0
      239 CALL                             R22 2 1
      240 SETTABLEKS                       R22 R21 K13 ["Size"]
      242 LOADK                            R22 K51 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      243 SETTABLEKS                       R22 R21 K14 ["tag"]
      245 CALL                             R19 2 1
      246 SETTABLEKS                       R19 R18 K21 ["AssetName"]
      248 CALL                             R15 3 1
      249 SETTABLE                         R15 R3 R9
      250 JUMP                             ; [+72]
      251 JUMPIFNOT                        R13 ; [+46]
      252 GETUPVAL                         R15 5
      253 GETTABLEKS                       R14 R15 K10 ["createElement"]
      255 GETUPVAL                         R16 6
      256 GETTABLEKS                       R15 R16 K42 ["Tooltip"]
      258 DUPTABLE                         R16 K45 [{"LayoutOrder", "title", "side"}]
      259 SETTABLEKS                       R9 R16 K12 ["LayoutOrder"]
      261 SETTABLEKS                       R11 R16 K43 ["title"]
      263 GETUPVAL                         R20 6
      264 GETTABLEKS                       R19 R20 K46 ["Enums"]
      266 GETTABLEKS                       R18 R19 K47 ["PopoverSide"]
      268 GETTABLEKS                       R17 R18 K48 ["Bottom"]
      270 SETTABLEKS                       R17 R16 K44 ["side"]
      272 GETUPVAL                         R18 5
      273 GETTABLEKS                       R17 R18 K10 ["createElement"]
      275 GETUPVAL                         R19 6
      276 GETTABLEKS                       R18 R19 K49 ["Text"]
      278 DUPTABLE                         R19 K50 [{"LayoutOrder", "Text", "Size", "tag"}]
      279 SETTABLEKS                       R9 R19 K12 ["LayoutOrder"]
      281 SETTABLEKS                       R11 R19 K49 ["Text"]
      283 GETIMPORT                        R20 K18 [UDim2.new]
      285 LOADN                            R21 0
      286 MOVE                             R22 R12
      287 LOADN                            R23 1
      288 LOADN                            R24 0
      289 CALL                             R20 4 1
      290 SETTABLEKS                       R20 R19 K13 ["Size"]
      292 LOADK                            R20 K52 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      293 SETTABLEKS                       R20 R19 K14 ["tag"]
      295 CALL                             R17 2 -1
      296 CALL                             R14 -1 1
      297 JUMP                             ; [+24]
      298 GETUPVAL                         R15 5
      299 GETTABLEKS                       R14 R15 K10 ["createElement"]
      301 GETUPVAL                         R16 6
      302 GETTABLEKS                       R15 R16 K49 ["Text"]
      304 DUPTABLE                         R16 K50 [{"LayoutOrder", "Text", "Size", "tag"}]
      305 SETTABLEKS                       R9 R16 K12 ["LayoutOrder"]
      307 SETTABLEKS                       R11 R16 K49 ["Text"]
      309 GETIMPORT                        R17 K18 [UDim2.new]
      311 LOADN                            R18 0
      312 MOVE                             R19 R12
      313 LOADN                            R20 1
      314 LOADN                            R21 0
      315 CALL                             R17 4 1
      316 SETTABLEKS                       R17 R16 K13 ["Size"]
      318 LOADK                            R17 K52 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      319 SETTABLEKS                       R17 R16 K14 ["tag"]
      321 CALL                             R14 2 1
      322 SETTABLE                         R14 R3 R9
      323 FORGLOOP                         R6 2 ; [-307]
      325 RETURN                           R3 1

PROTO_3:
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

PROTO_4:
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
       17 NAMECALL                         R14 R2 K3 ["getItemField"]
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
       56 JUMPIFNOTEQKN                    R12 K11 [1] ; [+258]
       58 MOVE                             R20 R7
       59 MOVE                             R21 R8
       60 GETUPVAL                         R24 5
       61 GETTABLEKS                       R23 R24 K12 ["AssetInfoField"]
       63 GETTABLEKS                       R22 R23 K13 ["AssetType"]
       65 NAMECALL                         R18 R2 K3 ["getItemField"]
       67 CALL                             R18 4 1
       68 MOVE                             R21 R7
       69 MOVE                             R22 R8
       70 GETUPVAL                         R25 5
       71 GETTABLEKS                       R24 R25 K12 ["AssetInfoField"]
       73 GETTABLEKS                       R23 R24 K14 ["AssetId"]
       75 NAMECALL                         R19 R2 K3 ["getItemField"]
       77 CALL                             R19 4 1
       78 MOVE                             R22 R7
       79 MOVE                             R23 R8
       80 GETUPVAL                         R26 5
       81 GETTABLEKS                       R25 R26 K12 ["AssetInfoField"]
       83 GETTABLEKS                       R24 R25 K15 ["IsPackage"]
       85 NAMECALL                         R20 R2 K3 ["getItemField"]
       87 CALL                             R20 4 1
       88 GETUPVAL                         R23 4
       89 LOADK                            R25 K16 ["ListThumbnailSize"]
       90 NAMECALL                         R23 R23 K10 ["GetAttribute"]
       92 CALL                             R23 2 1
       93 SUB                              R22 R16 R23
       94 GETUPVAL                         R23 4
       95 LOADK                            R25 K9 ["CellContentPadding"]
       96 NAMECALL                         R23 R23 K10 ["GetAttribute"]
       98 CALL                             R23 2 1
       99 SUB                              R21 R22 R23
      100 GETUPVAL                         R23 6
      101 GETTABLEKS                       R22 R23 K17 ["createElement"]
      103 GETUPVAL                         R24 7
      104 GETTABLEKS                       R23 R24 K18 ["View"]
      106 DUPTABLE                         R24 K22 [{"LayoutOrder", "Size", "tag"}]
      107 SETTABLEKS                       R12 R24 K19 ["LayoutOrder"]
      109 GETIMPORT                        R25 K25 [UDim2.new]
      111 LOADN                            R26 0
      112 MOVE                             R27 R16
      113 LOADN                            R28 1
      114 LOADN                            R29 0
      115 CALL                             R25 4 1
      116 SETTABLEKS                       R25 R24 K20 ["Size"]
      118 LOADK                            R25 K26 ["padding-left-small row align-x-left align-y-center"]
      119 SETTABLEKS                       R25 R24 K21 ["tag"]
      121 DUPTABLE                         R25 K29 [{"ThumbnailContainer", "AssetName"}]
      122 GETUPVAL                         R27 8
      123 CALL                             R27 0 1
      124 JUMPIFNOT                        R27 ; [+17]
      125 GETUPVAL                         R29 5
      126 GETTABLEKS                       R28 R29 K13 ["AssetType"]
      128 GETTABLEKS                       R27 R28 K30 ["Folder"]
      130 JUMPIFNOTEQ                      R18 R27 ; [+11]
      132 GETUPVAL                         R27 6
      133 GETTABLEKS                       R26 R27 K17 ["createElement"]
      135 GETUPVAL                         R27 9
      136 DUPTABLE                         R28 K31 [{"LayoutOrder"}]
      137 LOADN                            R29 1
      138 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      140 CALL                             R26 2 1
      141 JUMP                             ; [+46]
      142 GETUPVAL                         R27 6
      143 GETTABLEKS                       R26 R27 K17 ["createElement"]
      145 GETUPVAL                         R28 7
      146 GETTABLEKS                       R27 R28 K18 ["View"]
      148 DUPTABLE                         R28 K32 [{"LayoutOrder", "tag"}]
      149 LOADN                            R29 1
      150 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      152 LOADK                            R29 K33 ["size-900 bg-foreground-contrast radius-small"]
      153 SETTABLEKS                       R29 R28 K21 ["tag"]
      155 DUPTABLE                         R29 K36 [{"Thumbnail", "PackageLinkIcon"}]
      156 GETUPVAL                         R31 6
      157 GETTABLEKS                       R30 R31 K17 ["createElement"]
      159 GETUPVAL                         R31 10
      160 DUPTABLE                         R32 K37 [{"AssetId", "AssetType"}]
      161 SETTABLEKS                       R19 R32 K14 ["AssetId"]
      163 SETTABLEKS                       R18 R32 K13 ["AssetType"]
      165 CALL                             R30 2 1
      166 SETTABLEKS                       R30 R29 K34 ["Thumbnail"]
      168 JUMPIFNOT                        R20 ; [+15]
      169 GETUPVAL                         R31 6
      170 GETTABLEKS                       R30 R31 K17 ["createElement"]
      172 GETUPVAL                         R32 7
      173 GETTABLEKS                       R31 R32 K38 ["Image"]
      175 DUPTABLE                         R32 K40 [{"ZIndex", "tag"}]
      176 LOADN                            R33 2
      177 SETTABLEKS                       R33 R32 K39 ["ZIndex"]
      179 LOADK                            R33 K41 ["icon-packageLink am-size-icon-xsmall radius-xsmall anchor-bottom-right bg-over-media-0 data-testid=package-link-icon"]
      180 SETTABLEKS                       R33 R32 K21 ["tag"]
      182 CALL                             R30 2 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R30
      185 SETTABLEKS                       R30 R29 K35 ["PackageLinkIcon"]
      187 CALL                             R26 3 1
      188 SETTABLEKS                       R26 R25 K27 ["ThumbnailContainer"]
      190 GETUPVAL                         R27 11
      191 CALL                             R27 0 1
      192 JUMPIFNOT                        R27 ; [+26]
      193 JUMPIFNOT                        R3 ; [+25]
      194 GETUPVAL                         R27 6
      195 GETTABLEKS                       R26 R27 K17 ["createElement"]
      197 GETUPVAL                         R27 12
      198 DUPTABLE                         R28 K44 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      199 LOADN                            R29 2
      200 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      202 SETTABLEKS                       R15 R28 K42 ["InitialText"]
      204 SETTABLEKS                       R18 R28 K43 ["ItemType"]
      206 SETTABLEKS                       R8 R28 K2 ["ItemPath"]
      208 GETIMPORT                        R29 K25 [UDim2.new]
      210 LOADN                            R30 0
      211 MOVE                             R31 R21
      212 LOADN                            R32 1
      213 LOADN                            R33 0
      214 CALL                             R29 4 1
      215 SETTABLEKS                       R29 R28 K20 ["Size"]
      217 CALL                             R26 2 1
      218 JUMP                             ; [+91]
      219 JUMPIFNOTEQ                      R19 R1 ; [+20]
      221 GETUPVAL                         R27 6
      222 GETTABLEKS                       R26 R27 K17 ["createElement"]
      224 GETUPVAL                         R27 13
      225 DUPTABLE                         R28 K45 [{"LayoutOrder", "InitialText", "Size"}]
      226 LOADN                            R29 2
      227 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      229 SETTABLEKS                       R15 R28 K42 ["InitialText"]
      231 GETIMPORT                        R29 K47 [UDim2.fromOffset]
      233 MOVE                             R30 R21
      234 LOADN                            R31 0
      235 CALL                             R29 2 1
      236 SETTABLEKS                       R29 R28 K20 ["Size"]
      238 CALL                             R26 2 1
      239 JUMP                             ; [+70]
      240 JUMPIFNOT                        R17 ; [+46]
      241 GETUPVAL                         R27 6
      242 GETTABLEKS                       R26 R27 K17 ["createElement"]
      244 GETUPVAL                         R28 7
      245 GETTABLEKS                       R27 R28 K48 ["Tooltip"]
      247 DUPTABLE                         R28 K51 [{"LayoutOrder", "title", "side"}]
      248 LOADN                            R29 2
      249 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      251 SETTABLEKS                       R15 R28 K49 ["title"]
      253 GETUPVAL                         R32 7
      254 GETTABLEKS                       R31 R32 K52 ["Enums"]
      256 GETTABLEKS                       R30 R31 K53 ["PopoverSide"]
      258 GETTABLEKS                       R29 R30 K54 ["Bottom"]
      260 SETTABLEKS                       R29 R28 K50 ["side"]
      262 GETUPVAL                         R30 6
      263 GETTABLEKS                       R29 R30 K17 ["createElement"]
      265 GETUPVAL                         R31 7
      266 GETTABLEKS                       R30 R31 K55 ["Text"]
      268 DUPTABLE                         R31 K56 [{"LayoutOrder", "Text", "Size", "tag"}]
      269 LOADN                            R32 2
      270 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      272 SETTABLEKS                       R15 R31 K55 ["Text"]
      274 GETIMPORT                        R32 K47 [UDim2.fromOffset]
      276 MOVE                             R33 R21
      277 LOADN                            R34 0
      278 CALL                             R32 2 1
      279 SETTABLEKS                       R32 R31 K20 ["Size"]
      281 LOADK                            R32 K57 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      282 SETTABLEKS                       R32 R31 K21 ["tag"]
      284 CALL                             R29 2 -1
      285 CALL                             R26 -1 1
      286 JUMP                             ; [+23]
      287 GETUPVAL                         R27 6
      288 GETTABLEKS                       R26 R27 K17 ["createElement"]
      290 GETUPVAL                         R28 7
      291 GETTABLEKS                       R27 R28 K55 ["Text"]
      293 DUPTABLE                         R28 K56 [{"LayoutOrder", "Text", "Size", "tag"}]
      294 LOADN                            R29 2
      295 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      297 SETTABLEKS                       R15 R28 K55 ["Text"]
      299 GETIMPORT                        R29 K47 [UDim2.fromOffset]
      301 MOVE                             R30 R21
      302 LOADN                            R31 0
      303 CALL                             R29 2 1
      304 SETTABLEKS                       R29 R28 K20 ["Size"]
      306 LOADK                            R29 K57 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      307 SETTABLEKS                       R29 R28 K21 ["tag"]
      309 CALL                             R26 2 1
      310 SETTABLEKS                       R26 R25 K28 ["AssetName"]
      312 CALL                             R22 3 1
      313 SETTABLE                         R22 R4 R12
      314 JUMP                             ; [+72]
      315 JUMPIFNOT                        R17 ; [+46]
      316 GETUPVAL                         R19 6
      317 GETTABLEKS                       R18 R19 K17 ["createElement"]
      319 GETUPVAL                         R20 7
      320 GETTABLEKS                       R19 R20 K48 ["Tooltip"]
      322 DUPTABLE                         R20 K51 [{"LayoutOrder", "title", "side"}]
      323 SETTABLEKS                       R12 R20 K19 ["LayoutOrder"]
      325 SETTABLEKS                       R15 R20 K49 ["title"]
      327 GETUPVAL                         R24 7
      328 GETTABLEKS                       R23 R24 K52 ["Enums"]
      330 GETTABLEKS                       R22 R23 K53 ["PopoverSide"]
      332 GETTABLEKS                       R21 R22 K54 ["Bottom"]
      334 SETTABLEKS                       R21 R20 K50 ["side"]
      336 GETUPVAL                         R22 6
      337 GETTABLEKS                       R21 R22 K17 ["createElement"]
      339 GETUPVAL                         R23 7
      340 GETTABLEKS                       R22 R23 K55 ["Text"]
      342 DUPTABLE                         R23 K56 [{"LayoutOrder", "Text", "Size", "tag"}]
      343 SETTABLEKS                       R12 R23 K19 ["LayoutOrder"]
      345 SETTABLEKS                       R15 R23 K55 ["Text"]
      347 GETIMPORT                        R24 K25 [UDim2.new]
      349 LOADN                            R25 0
      350 MOVE                             R26 R16
      351 LOADN                            R27 1
      352 LOADN                            R28 0
      353 CALL                             R24 4 1
      354 SETTABLEKS                       R24 R23 K20 ["Size"]
      356 LOADK                            R24 K58 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      357 SETTABLEKS                       R24 R23 K21 ["tag"]
      359 CALL                             R21 2 -1
      360 CALL                             R18 -1 1
      361 JUMP                             ; [+24]
      362 GETUPVAL                         R19 6
      363 GETTABLEKS                       R18 R19 K17 ["createElement"]
      365 GETUPVAL                         R20 7
      366 GETTABLEKS                       R19 R20 K55 ["Text"]
      368 DUPTABLE                         R20 K56 [{"LayoutOrder", "Text", "Size", "tag"}]
      369 SETTABLEKS                       R12 R20 K19 ["LayoutOrder"]
      371 SETTABLEKS                       R15 R20 K55 ["Text"]
      373 GETIMPORT                        R21 K25 [UDim2.new]
      375 LOADN                            R22 0
      376 MOVE                             R23 R16
      377 LOADN                            R24 1
      378 LOADN                            R25 0
      379 CALL                             R21 4 1
      380 SETTABLEKS                       R21 R20 K20 ["Size"]
      382 LOADK                            R21 K58 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      383 SETTABLEKS                       R21 R20 K21 ["tag"]
      385 CALL                             R18 2 1
      386 SETTABLE                         R18 R4 R12
      387 FORGLOOP                         R9 2 ; [-374]
      389 RETURN                           R4 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["isMouse1Down"]
        3 CALL                             R3 1 1
        4 JUMPIFNOT                        R3 ; [+18]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K1 ["UiZone"]
        9 GETTABLEKS                       R5 R6 K2 ["Browser"]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R6 R7 K3 ["ItemPath"]
       14 NAMECALL                         R3 R3 K4 ["setCurrentHovered"]
       16 CALL                             R3 3 0
       17 GETUPVAL                         R3 0
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 NAMECALL                         R3 R3 K5 ["updateMousePosition"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R6 4
       15 CALL                             R6 0 1
       16 JUMPIFNOT                        R6 ; [+2]
       17 LOADNIL                          R5
       18 JUMP                             ; [+2]
       19 GETUPVAL                         R5 5
       20 CALL                             R5 0 1
       21 GETUPVAL                         R6 6
       22 CALL                             R6 0 1
       23 GETUPVAL                         R7 7
       24 GETTABLEKS                       R8 R0 K1 ["ItemPath"]
       26 CALL                             R7 1 1
       27 GETUPVAL                         R9 4
       28 CALL                             R9 0 1
       29 JUMPIFNOT                        R9 ; [+2]
       30 LOADNIL                          R8
       31 JUMP                             ; [+3]
       32 GETTABLEKS                       R9 R0 K2 ["Key"]
       34 GETTABLE                         R8 R5 R9
       35 LOADNIL                          R9
       36 GETUPVAL                         R10 4
       37 CALL                             R10 0 1
       38 JUMPIFNOT                        R10 ; [+10]
       39 GETUPVAL                         R10 8
       40 MOVE                             R11 R0
       41 MOVE                             R12 R6
       42 NAMECALL                         R13 R3 K3 ["getItemsCache"]
       44 CALL                             R13 1 1
       45 MOVE                             R14 R7
       46 CALL                             R10 4 1
       47 MOVE                             R9 R10
       48 JUMP                             ; [+6]
       49 GETUPVAL                         R10 9
       50 MOVE                             R11 R8
       51 MOVE                             R12 R6
       52 MOVE                             R13 R1
       53 CALL                             R10 3 1
       54 MOVE                             R9 R10
       55 LOADK                            R10 K4 [""]
       56 GETUPVAL                         R11 10
       57 CALL                             R11 0 1
       58 JUMPIFNOT                        R11 ; [+8]
       59 GETTABLEKS                       R12 R0 K1 ["ItemPath"]
       61 GETTABLE                         R11 R4 R12
       62 JUMPIFNOT                        R11 ; [+2]
       63 LOADK                            R10 K5 ["bg-action-selected"]
       64 JUMP                             ; [+20]
       65 LOADK                            R10 K6 ["am-hover"]
       66 JUMP                             ; [+18]
       67 GETUPVAL                         R11 4
       68 CALL                             R11 0 1
       69 JUMPIFNOT                        R11 ; [+8]
       70 GETTABLEKS                       R12 R0 K1 ["ItemPath"]
       72 GETTABLE                         R11 R4 R12
       73 JUMPIFNOT                        R11 ; [+2]
       74 LOADK                            R10 K5 ["bg-action-selected"]
       75 JUMP                             ; [+9]
       76 LOADK                            R10 K6 ["am-hover"]
       77 JUMP                             ; [+7]
       78 GETTABLEKS                       R12 R8 K7 ["AssetId"]
       80 GETTABLE                         R11 R4 R12
       81 JUMPIFNOT                        R11 ; [+2]
       82 LOADK                            R10 K5 ["bg-action-selected"]
       83 JUMP                             ; [+1]
       84 LOADK                            R10 K6 ["am-hover"]
       85 GETUPVAL                         R11 11
       86 GETUPVAL                         R14 12
       87 GETTABLEKS                       R13 R14 K8 ["MenuContext"]
       89 GETTABLEKS                       R12 R13 K9 ["Asset"]
       91 DUPTABLE                         R13 K12 [{"Path", "Index"}]
       92 GETUPVAL                         R15 4
       93 CALL                             R15 0 1
       94 JUMPIFNOT                        R15 ; [+3]
       95 GETTABLEKS                       R14 R0 K1 ["ItemPath"]
       97 JUMP                             ; [+2]
       98 GETTABLEKS                       R14 R8 K7 ["AssetId"]
      100 SETTABLEKS                       R14 R13 K10 ["Path"]
      102 GETTABLEKS                       R14 R0 K2 ["Key"]
      104 SETTABLEKS                       R14 R13 K11 ["Index"]
      106 CALL                             R11 2 1
      107 GETUPVAL                         R13 13
      108 GETTABLEKS                       R12 R13 K13 ["createElement"]
      110 GETUPVAL                         R14 14
      111 GETTABLEKS                       R13 R14 K14 ["View"]
      113 DUPTABLE                         R14 K18 [{"LayoutOrder", "Position", "tag"}]
      114 GETTABLEKS                       R15 R0 K2 ["Key"]
      116 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      118 GETTABLEKS                       R15 R0 K16 ["Position"]
      120 SETTABLEKS                       R15 R14 K16 ["Position"]
      122 LOADK                            R16 K19 ["am-size-itemrow stroke-default stroke-thin %*"]
      123 MOVE                             R18 R10
      124 NAMECALL                         R16 R16 K20 ["format"]
      126 CALL                             R16 2 1
      127 MOVE                             R15 R16
      128 SETTABLEKS                       R15 R14 K17 ["tag"]
      130 DUPTABLE                         R15 K22 [{"InputHandler"}]
      131 GETUPVAL                         R17 13
      132 GETTABLEKS                       R16 R17 K13 ["createElement"]
      134 LOADK                            R17 K23 ["ImageButton"]
      135 NEWTABLE                         R18 8 0
      137 LOADN                            R19 1
      138 SETTABLEKS                       R19 R18 K24 ["BackgroundTransparency"]
      140 GETUPVAL                         R21 13
      141 GETTABLEKS                       R20 R21 K25 ["Event"]
      143 GETTABLEKS                       R19 R20 K26 ["MouseButton2Click"]
      145 NEWCLOSURE                       R20 P0
      146 CAPTURE                          UPVAL U4
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R8
      149 CAPTURE                          UPVAL U15
      150 CAPTURE                          VAL R2
      151 CAPTURE                          UPVAL U12
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R1
      154 SETTABLE                         R20 R18 R19
      155 GETUPVAL                         R21 13
      156 GETTABLEKS                       R20 R21 K25 ["Event"]
      158 GETTABLEKS                       R19 R20 K27 ["MouseButton1Down"]
      160 NEWCLOSURE                       R20 P1
      161 CAPTURE                          VAL R2
      162 CAPTURE                          UPVAL U12
      163 CAPTURE                          VAL R0
      164 SETTABLE                         R20 R18 R19
      165 GETUPVAL                         R21 13
      166 GETTABLEKS                       R20 R21 K25 ["Event"]
      168 GETTABLEKS                       R19 R20 K28 ["MouseButton1Up"]
      170 NEWCLOSURE                       R20 P2
      171 CAPTURE                          VAL R2
      172 CAPTURE                          UPVAL U12
      173 CAPTURE                          VAL R0
      174 SETTABLE                         R20 R18 R19
      175 GETUPVAL                         R21 13
      176 GETTABLEKS                       R20 R21 K25 ["Event"]
      178 GETTABLEKS                       R19 R20 K29 ["MouseMoved"]
      180 NEWCLOSURE                       R20 P3
      181 CAPTURE                          VAL R2
      182 CAPTURE                          UPVAL U12
      183 CAPTURE                          VAL R0
      184 SETTABLE                         R20 R18 R19
      185 GETUPVAL                         R20 13
      186 GETTABLEKS                       R19 R20 K30 ["Tag"]
      188 LOADK                            R20 K31 ["size-full row align-x-left align-y-center"]
      189 SETTABLE                         R20 R18 R19
      190 MOVE                             R19 R9
      191 CALL                             R16 3 1
      192 SETTABLEKS                       R16 R15 K21 ["InputHandler"]
      194 CALL                             R12 3 -1
      195 RETURN                           R12 -1

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
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R10 R0 K12 ["Src"]
       36 GETTABLEKS                       R9 R10 K13 ["Components"]
       38 GETTABLEKS                       R8 R9 K14 ["Shared"]
       40 GETTABLEKS                       R7 R8 K15 ["EditNameInput_DEPRECATED"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R11 R0 K12 ["Src"]
       47 GETTABLEKS                       R10 R11 K13 ["Components"]
       49 GETTABLEKS                       R9 R10 K14 ["Shared"]
       51 GETTABLEKS                       R8 R9 K16 ["EditNameInput"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R12 R0 K12 ["Src"]
       58 GETTABLEKS                       R11 R12 K13 ["Components"]
       60 GETTABLEKS                       R10 R11 K14 ["Shared"]
       62 GETTABLEKS                       R9 R10 K17 ["ItemThumbnail"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K12 ["Src"]
       69 GETTABLEKS                       R11 R12 K18 ["Controllers"]
       71 GETTABLEKS                       R10 R11 K19 ["Input"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R13 R0 K12 ["Src"]
       78 GETTABLEKS                       R12 R13 K18 ["Controllers"]
       80 GETTABLEKS                       R11 R12 K20 ["ItemsController"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R14 R0 K12 ["Src"]
       87 GETTABLEKS                       R13 R14 K21 ["Hooks"]
       89 GETTABLEKS                       R12 R13 K22 ["useColumns"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R15 R0 K12 ["Src"]
       96 GETTABLEKS                       R14 R15 K21 ["Hooks"]
       98 GETTABLEKS                       R13 R14 K23 ["useContextMenu"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R16 R0 K12 ["Src"]
      105 GETTABLEKS                       R15 R16 K21 ["Hooks"]
      107 GETTABLEKS                       R14 R15 K24 ["useItems"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R17 R0 K12 ["Src"]
      114 GETTABLEKS                       R16 R17 K21 ["Hooks"]
      116 GETTABLEKS                       R15 R16 K25 ["useItemSelection"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R18 R0 K12 ["Src"]
      123 GETTABLEKS                       R17 R18 K21 ["Hooks"]
      125 GETTABLEKS                       R16 R17 K26 ["useRenamePlaceId_DEPRECATED"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R19 R0 K12 ["Src"]
      132 GETTABLEKS                       R18 R19 K21 ["Hooks"]
      134 GETTABLEKS                       R17 R18 K27 ["useIsEditItem"]
      136 CALL                             R16 1 1
      137 GETIMPORT                        R17 K5 [require]
      139 GETTABLEKS                       R19 R0 K12 ["Src"]
      141 GETTABLEKS                       R18 R19 K28 ["Types"]
      143 CALL                             R17 1 1
      144 GETTABLEKS                       R19 R3 K29 ["Util"]
      146 GETTABLEKS                       R18 R19 K30 ["GetTextSize"]
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R22 R0 K12 ["Src"]
      152 GETTABLEKS                       R21 R22 K29 ["Util"]
      154 GETTABLEKS                       R20 R21 K31 ["Images"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K5 [require]
      159 GETTABLEKS                       R23 R0 K12 ["Src"]
      161 GETTABLEKS                       R22 R23 K29 ["Util"]
      163 GETTABLEKS                       R21 R22 K32 ["logIfDebug"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K5 [require]
      168 GETTABLEKS                       R24 R0 K12 ["Src"]
      170 GETTABLEKS                       R23 R24 K33 ["Resources"]
      172 GETTABLEKS                       R22 R23 K34 ["PluginStyles"]
      174 CALL                             R21 1 1
      175 GETIMPORT                        R22 K5 [require]
      177 GETTABLEKS                       R25 R0 K12 ["Src"]
      179 GETTABLEKS                       R24 R25 K35 ["Flags"]
      181 GETTABLEKS                       R23 R24 K36 ["getFFlagAmrOrganizationFoundation"]
      183 CALL                             R22 1 1
      184 GETIMPORT                        R23 K5 [require]
      186 GETTABLEKS                       R26 R0 K12 ["Src"]
      188 GETTABLEKS                       R25 R26 K35 ["Flags"]
      190 GETTABLEKS                       R24 R25 K37 ["getFFlagAmrUpdatedItemsCache"]
      192 CALL                             R23 1 1
      193 GETIMPORT                        R24 K5 [require]
      195 GETTABLEKS                       R27 R0 K12 ["Src"]
      197 GETTABLEKS                       R26 R27 K35 ["Flags"]
      199 GETTABLEKS                       R25 R26 K38 ["getFFlagAmrContextMenuRefactor"]
      201 CALL                             R24 1 1
      202 GETIMPORT                        R25 K5 [require]
      204 GETTABLEKS                       R28 R0 K12 ["Src"]
      206 GETTABLEKS                       R27 R28 K35 ["Flags"]
      208 GETTABLEKS                       R26 R27 K39 ["getFFlagAmrRefactorEditNameInput"]
      210 CALL                             R25 1 1
      211 DUPCLOSURE                       R26 K40 [PROTO_0]
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R17
      214 DUPCLOSURE                       R27 K41 [PROTO_1]
      215 CAPTURE                          VAL R1
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R19
      218 DUPCLOSURE                       R28 K42 [PROTO_2]
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R26
      222 CAPTURE                          VAL R18
      223 CAPTURE                          VAL R21
      224 CAPTURE                          VAL R1
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R17
      228 CAPTURE                          VAL R27
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R6
      231 DUPCLOSURE                       R29 K43 [PROTO_3]
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R17
      234 DUPCLOSURE                       R30 K44 [PROTO_4]
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R20
      237 CAPTURE                          VAL R29
      238 CAPTURE                          VAL R18
      239 CAPTURE                          VAL R21
      240 CAPTURE                          VAL R17
      241 CAPTURE                          VAL R1
      242 CAPTURE                          VAL R2
      243 CAPTURE                          VAL R22
      244 CAPTURE                          VAL R27
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R25
      247 CAPTURE                          VAL R7
      248 CAPTURE                          VAL R6
      249 DUPCLOSURE                       R31 K45 [PROTO_9]
      250 CAPTURE                          VAL R5
      251 CAPTURE                          VAL R9
      252 CAPTURE                          VAL R10
      253 CAPTURE                          VAL R14
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R13
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R16
      258 CAPTURE                          VAL R30
      259 CAPTURE                          VAL R28
      260 CAPTURE                          VAL R22
      261 CAPTURE                          VAL R12
      262 CAPTURE                          VAL R17
      263 CAPTURE                          VAL R1
      264 CAPTURE                          VAL R2
      265 CAPTURE                          VAL R24
      266 RETURN                           R31 1
