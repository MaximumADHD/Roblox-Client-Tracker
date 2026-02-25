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
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 2
        4 GETTABLEKS                       R7 R0 K0 ["ParentScope"]
        6 GETTABLEKS                       R6 R7 K1 ["Uid"]
        8 GETTABLEKS                       R7 R0 K2 ["ItemPath"]
       10 MOVE                             R8 R4
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 FORGPREP                         R8
       14 MOVE                             R15 R6
       15 MOVE                             R16 R7
       16 MOVE                             R17 R12
       17 NAMECALL                         R13 R2 K3 ["getItemField"]
       19 CALL                             R13 4 1
       20 JUMPIF                           R13 ; [+12]
       21 GETUPVAL                         R14 1
       22 LOADK                            R16 K4 ["Cannot construct item row for item %* due to missing property %*"]
       23 MOVE                             R18 R7
       24 MOVE                             R19 R12
       25 NAMECALL                         R16 R16 K5 ["format"]
       27 CALL                             R16 3 1
       28 MOVE                             R15 R16
       29 CALL                             R14 1 0
       30 NEWTABLE                         R14 0 0
       32 RETURN                           R14 1
       33 GETUPVAL                         R14 2
       34 MOVE                             R15 R13
       35 MOVE                             R16 R12
       36 CALL                             R14 2 1
       37 GETTABLE                         R16 R5 R11
       38 GETTABLEKS                       R15 R16 K6 ["Offset"]
       40 GETUPVAL                         R18 3
       41 MOVE                             R19 R14
       42 CALL                             R18 1 1
       43 GETTABLEKS                       R17 R18 K7 ["X"]
       45 GETUPVAL                         R20 4
       46 LOADK                            R22 K9 ["CellContentPadding"]
       47 NAMECALL                         R20 R20 K10 ["GetAttribute"]
       49 CALL                             R20 2 1
       50 MULK                             R19 R20 K8 [2]
       51 SUB                              R18 R15 R19
       52 JUMPIFLT                         R18 R17 ; [+2]
       54 LOADB                            R16 0 +1
       55 LOADB                            R16 1
       56 JUMPIFNOTEQKN                    R11 K11 [1] ; [+229]
       58 MOVE                             R19 R6
       59 MOVE                             R20 R7
       60 GETUPVAL                         R23 5
       61 GETTABLEKS                       R22 R23 K12 ["AssetInfoField"]
       63 GETTABLEKS                       R21 R22 K13 ["AssetType"]
       65 NAMECALL                         R17 R2 K3 ["getItemField"]
       67 CALL                             R17 4 1
       68 MOVE                             R20 R6
       69 MOVE                             R21 R7
       70 GETUPVAL                         R24 5
       71 GETTABLEKS                       R23 R24 K12 ["AssetInfoField"]
       73 GETTABLEKS                       R22 R23 K14 ["AssetId"]
       75 NAMECALL                         R18 R2 K3 ["getItemField"]
       77 CALL                             R18 4 1
       78 MOVE                             R21 R6
       79 MOVE                             R22 R7
       80 GETUPVAL                         R25 5
       81 GETTABLEKS                       R24 R25 K12 ["AssetInfoField"]
       83 GETTABLEKS                       R23 R24 K15 ["IsPackage"]
       85 NAMECALL                         R19 R2 K3 ["getItemField"]
       87 CALL                             R19 4 1
       88 GETUPVAL                         R22 4
       89 LOADK                            R24 K16 ["ListThumbnailSize"]
       90 NAMECALL                         R22 R22 K10 ["GetAttribute"]
       92 CALL                             R22 2 1
       93 SUB                              R21 R15 R22
       94 GETUPVAL                         R22 4
       95 LOADK                            R24 K9 ["CellContentPadding"]
       96 NAMECALL                         R22 R22 K10 ["GetAttribute"]
       98 CALL                             R22 2 1
       99 SUB                              R20 R21 R22
      100 GETUPVAL                         R22 6
      101 GETTABLEKS                       R21 R22 K17 ["createElement"]
      103 GETUPVAL                         R23 7
      104 GETTABLEKS                       R22 R23 K18 ["View"]
      106 DUPTABLE                         R23 K22 [{"LayoutOrder", "Size", "tag"}]
      107 SETTABLEKS                       R11 R23 K19 ["LayoutOrder"]
      109 GETIMPORT                        R24 K25 [UDim2.new]
      111 LOADN                            R25 0
      112 MOVE                             R26 R15
      113 LOADN                            R27 1
      114 LOADN                            R28 0
      115 CALL                             R24 4 1
      116 SETTABLEKS                       R24 R23 K20 ["Size"]
      118 LOADK                            R24 K26 ["padding-left-small row align-x-left align-y-center"]
      119 SETTABLEKS                       R24 R23 K21 ["tag"]
      121 DUPTABLE                         R24 K29 [{"ThumbnailContainer", "AssetName"}]
      122 GETUPVAL                         R26 8
      123 CALL                             R26 0 1
      124 JUMPIFNOT                        R26 ; [+17]
      125 GETUPVAL                         R28 5
      126 GETTABLEKS                       R27 R28 K13 ["AssetType"]
      128 GETTABLEKS                       R26 R27 K30 ["Folder"]
      130 JUMPIFNOTEQ                      R17 R26 ; [+11]
      132 GETUPVAL                         R26 6
      133 GETTABLEKS                       R25 R26 K17 ["createElement"]
      135 GETUPVAL                         R26 9
      136 DUPTABLE                         R27 K31 [{"LayoutOrder"}]
      137 LOADN                            R28 1
      138 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      140 CALL                             R25 2 1
      141 JUMP                             ; [+46]
      142 GETUPVAL                         R26 6
      143 GETTABLEKS                       R25 R26 K17 ["createElement"]
      145 GETUPVAL                         R27 7
      146 GETTABLEKS                       R26 R27 K18 ["View"]
      148 DUPTABLE                         R27 K32 [{"LayoutOrder", "tag"}]
      149 LOADN                            R28 1
      150 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      152 LOADK                            R28 K33 ["size-900 bg-foreground-contrast radius-small"]
      153 SETTABLEKS                       R28 R27 K21 ["tag"]
      155 DUPTABLE                         R28 K36 [{"Thumbnail", "PackageLinkIcon"}]
      156 GETUPVAL                         R30 6
      157 GETTABLEKS                       R29 R30 K17 ["createElement"]
      159 GETUPVAL                         R30 10
      160 DUPTABLE                         R31 K37 [{"AssetId", "AssetType"}]
      161 SETTABLEKS                       R18 R31 K14 ["AssetId"]
      163 SETTABLEKS                       R17 R31 K13 ["AssetType"]
      165 CALL                             R29 2 1
      166 SETTABLEKS                       R29 R28 K34 ["Thumbnail"]
      168 JUMPIFNOT                        R19 ; [+15]
      169 GETUPVAL                         R30 6
      170 GETTABLEKS                       R29 R30 K17 ["createElement"]
      172 GETUPVAL                         R31 7
      173 GETTABLEKS                       R30 R31 K38 ["Image"]
      175 DUPTABLE                         R31 K40 [{"ZIndex", "tag"}]
      176 LOADN                            R32 2
      177 SETTABLEKS                       R32 R31 K39 ["ZIndex"]
      179 LOADK                            R32 K41 ["icon-packageLink am-size-icon-xsmall radius-xsmall anchor-bottom-right bg-over-media-0 data-testid=package-link-icon"]
      180 SETTABLEKS                       R32 R31 K21 ["tag"]
      182 CALL                             R29 2 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R29
      185 SETTABLEKS                       R29 R28 K35 ["PackageLinkIcon"]
      187 CALL                             R25 3 1
      188 SETTABLEKS                       R25 R24 K27 ["ThumbnailContainer"]
      190 JUMPIFNOTEQ                      R18 R1 ; [+20]
      192 GETUPVAL                         R26 6
      193 GETTABLEKS                       R25 R26 K17 ["createElement"]
      195 GETUPVAL                         R26 11
      196 DUPTABLE                         R27 K43 [{"LayoutOrder", "InitialText", "Size"}]
      197 LOADN                            R28 2
      198 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      200 SETTABLEKS                       R14 R27 K42 ["InitialText"]
      202 GETIMPORT                        R28 K45 [UDim2.fromOffset]
      204 MOVE                             R29 R20
      205 LOADN                            R30 0
      206 CALL                             R28 2 1
      207 SETTABLEKS                       R28 R27 K20 ["Size"]
      209 CALL                             R25 2 1
      210 JUMP                             ; [+70]
      211 JUMPIFNOT                        R16 ; [+46]
      212 GETUPVAL                         R26 6
      213 GETTABLEKS                       R25 R26 K17 ["createElement"]
      215 GETUPVAL                         R27 7
      216 GETTABLEKS                       R26 R27 K46 ["Tooltip"]
      218 DUPTABLE                         R27 K49 [{"LayoutOrder", "title", "side"}]
      219 LOADN                            R28 2
      220 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      222 SETTABLEKS                       R14 R27 K47 ["title"]
      224 GETUPVAL                         R31 7
      225 GETTABLEKS                       R30 R31 K50 ["Enums"]
      227 GETTABLEKS                       R29 R30 K51 ["PopoverSide"]
      229 GETTABLEKS                       R28 R29 K52 ["Bottom"]
      231 SETTABLEKS                       R28 R27 K48 ["side"]
      233 GETUPVAL                         R29 6
      234 GETTABLEKS                       R28 R29 K17 ["createElement"]
      236 GETUPVAL                         R30 7
      237 GETTABLEKS                       R29 R30 K53 ["Text"]
      239 DUPTABLE                         R30 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      240 LOADN                            R31 2
      241 SETTABLEKS                       R31 R30 K19 ["LayoutOrder"]
      243 SETTABLEKS                       R14 R30 K53 ["Text"]
      245 GETIMPORT                        R31 K45 [UDim2.fromOffset]
      247 MOVE                             R32 R20
      248 LOADN                            R33 0
      249 CALL                             R31 2 1
      250 SETTABLEKS                       R31 R30 K20 ["Size"]
      252 LOADK                            R31 K55 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      253 SETTABLEKS                       R31 R30 K21 ["tag"]
      255 CALL                             R28 2 -1
      256 CALL                             R25 -1 1
      257 JUMP                             ; [+23]
      258 GETUPVAL                         R26 6
      259 GETTABLEKS                       R25 R26 K17 ["createElement"]
      261 GETUPVAL                         R27 7
      262 GETTABLEKS                       R26 R27 K53 ["Text"]
      264 DUPTABLE                         R27 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      265 LOADN                            R28 2
      266 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      268 SETTABLEKS                       R14 R27 K53 ["Text"]
      270 GETIMPORT                        R28 K45 [UDim2.fromOffset]
      272 MOVE                             R29 R20
      273 LOADN                            R30 0
      274 CALL                             R28 2 1
      275 SETTABLEKS                       R28 R27 K20 ["Size"]
      277 LOADK                            R28 K55 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      278 SETTABLEKS                       R28 R27 K21 ["tag"]
      280 CALL                             R25 2 1
      281 SETTABLEKS                       R25 R24 K28 ["AssetName"]
      283 CALL                             R21 3 1
      284 SETTABLE                         R21 R3 R11
      285 JUMP                             ; [+72]
      286 JUMPIFNOT                        R16 ; [+46]
      287 GETUPVAL                         R18 6
      288 GETTABLEKS                       R17 R18 K17 ["createElement"]
      290 GETUPVAL                         R19 7
      291 GETTABLEKS                       R18 R19 K46 ["Tooltip"]
      293 DUPTABLE                         R19 K49 [{"LayoutOrder", "title", "side"}]
      294 SETTABLEKS                       R11 R19 K19 ["LayoutOrder"]
      296 SETTABLEKS                       R14 R19 K47 ["title"]
      298 GETUPVAL                         R23 7
      299 GETTABLEKS                       R22 R23 K50 ["Enums"]
      301 GETTABLEKS                       R21 R22 K51 ["PopoverSide"]
      303 GETTABLEKS                       R20 R21 K52 ["Bottom"]
      305 SETTABLEKS                       R20 R19 K48 ["side"]
      307 GETUPVAL                         R21 6
      308 GETTABLEKS                       R20 R21 K17 ["createElement"]
      310 GETUPVAL                         R22 7
      311 GETTABLEKS                       R21 R22 K53 ["Text"]
      313 DUPTABLE                         R22 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      314 SETTABLEKS                       R11 R22 K19 ["LayoutOrder"]
      316 SETTABLEKS                       R14 R22 K53 ["Text"]
      318 GETIMPORT                        R23 K25 [UDim2.new]
      320 LOADN                            R24 0
      321 MOVE                             R25 R15
      322 LOADN                            R26 1
      323 LOADN                            R27 0
      324 CALL                             R23 4 1
      325 SETTABLEKS                       R23 R22 K20 ["Size"]
      327 LOADK                            R23 K56 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      328 SETTABLEKS                       R23 R22 K21 ["tag"]
      330 CALL                             R20 2 -1
      331 CALL                             R17 -1 1
      332 JUMP                             ; [+24]
      333 GETUPVAL                         R18 6
      334 GETTABLEKS                       R17 R18 K17 ["createElement"]
      336 GETUPVAL                         R19 7
      337 GETTABLEKS                       R18 R19 K53 ["Text"]
      339 DUPTABLE                         R19 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      340 SETTABLEKS                       R11 R19 K19 ["LayoutOrder"]
      342 SETTABLEKS                       R14 R19 K53 ["Text"]
      344 GETIMPORT                        R20 K25 [UDim2.new]
      346 LOADN                            R21 0
      347 MOVE                             R22 R15
      348 LOADN                            R23 1
      349 LOADN                            R24 0
      350 CALL                             R20 4 1
      351 SETTABLEKS                       R20 R19 K20 ["Size"]
      353 LOADK                            R20 K56 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      354 SETTABLEKS                       R20 R19 K21 ["tag"]
      356 CALL                             R17 2 1
      357 SETTABLE                         R17 R3 R11
      358 FORGLOOP                         R8 2 ; [-345]
      360 RETURN                           R3 1

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
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R4 R5 K2 ["UiZone"]
       14 GETTABLEKS                       R3 R4 K3 ["Browser"]
       16 GETUPVAL                         R4 5
       17 MOVE                             R5 R0
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K4 ["Key"]
       21 NAMECALL                         R1 R1 K5 ["handleMouse2Click"]
       23 CALL                             R1 5 0
       24 RETURN                           R0 0

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
       23 GETUPVAL                         R8 4
       24 CALL                             R8 0 1
       25 JUMPIFNOT                        R8 ; [+2]
       26 LOADNIL                          R7
       27 JUMP                             ; [+3]
       28 GETTABLEKS                       R8 R0 K1 ["Key"]
       30 GETTABLE                         R7 R5 R8
       31 LOADNIL                          R8
       32 GETUPVAL                         R9 4
       33 CALL                             R9 0 1
       34 JUMPIFNOT                        R9 ; [+9]
       35 GETUPVAL                         R9 7
       36 MOVE                             R10 R0
       37 MOVE                             R11 R6
       38 NAMECALL                         R12 R3 K2 ["getItemsCache"]
       40 CALL                             R12 1 -1
       41 CALL                             R9 -1 1
       42 MOVE                             R8 R9
       43 JUMP                             ; [+6]
       44 GETUPVAL                         R9 8
       45 MOVE                             R10 R7
       46 MOVE                             R11 R6
       47 MOVE                             R12 R1
       48 CALL                             R9 3 1
       49 MOVE                             R8 R9
       50 LOADK                            R9 K3 [""]
       51 GETUPVAL                         R10 9
       52 CALL                             R10 0 1
       53 JUMPIFNOT                        R10 ; [+8]
       54 GETTABLEKS                       R11 R0 K4 ["ItemPath"]
       56 GETTABLE                         R10 R4 R11
       57 JUMPIFNOT                        R10 ; [+2]
       58 LOADK                            R9 K5 ["bg-action-selected"]
       59 JUMP                             ; [+20]
       60 LOADK                            R9 K6 ["am-hover"]
       61 JUMP                             ; [+18]
       62 GETUPVAL                         R10 4
       63 CALL                             R10 0 1
       64 JUMPIFNOT                        R10 ; [+8]
       65 GETTABLEKS                       R11 R0 K4 ["ItemPath"]
       67 GETTABLE                         R10 R4 R11
       68 JUMPIFNOT                        R10 ; [+2]
       69 LOADK                            R9 K5 ["bg-action-selected"]
       70 JUMP                             ; [+9]
       71 LOADK                            R9 K6 ["am-hover"]
       72 JUMP                             ; [+7]
       73 GETTABLEKS                       R11 R7 K7 ["AssetId"]
       75 GETTABLE                         R10 R4 R11
       76 JUMPIFNOT                        R10 ; [+2]
       77 LOADK                            R9 K5 ["bg-action-selected"]
       78 JUMP                             ; [+1]
       79 LOADK                            R9 K6 ["am-hover"]
       80 GETUPVAL                         R11 10
       81 GETTABLEKS                       R10 R11 K8 ["createElement"]
       83 GETUPVAL                         R12 11
       84 GETTABLEKS                       R11 R12 K9 ["View"]
       86 DUPTABLE                         R12 K13 [{"LayoutOrder", "Position", "tag"}]
       87 GETTABLEKS                       R13 R0 K1 ["Key"]
       89 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       91 GETTABLEKS                       R13 R0 K11 ["Position"]
       93 SETTABLEKS                       R13 R12 K11 ["Position"]
       95 LOADK                            R14 K14 ["am-size-itemrow stroke-default stroke-thin %*"]
       96 MOVE                             R16 R9
       97 NAMECALL                         R14 R14 K15 ["format"]
       99 CALL                             R14 2 1
      100 MOVE                             R13 R14
      101 SETTABLEKS                       R13 R12 K12 ["tag"]
      103 DUPTABLE                         R13 K17 [{"InputHandler"}]
      104 GETUPVAL                         R15 10
      105 GETTABLEKS                       R14 R15 K8 ["createElement"]
      107 LOADK                            R15 K18 ["ImageButton"]
      108 NEWTABLE                         R16 8 0
      110 LOADN                            R17 1
      111 SETTABLEKS                       R17 R16 K19 ["BackgroundTransparency"]
      113 GETUPVAL                         R19 10
      114 GETTABLEKS                       R18 R19 K20 ["Event"]
      116 GETTABLEKS                       R17 R18 K21 ["MouseButton2Click"]
      118 NEWCLOSURE                       R18 P0
      119 CAPTURE                          UPVAL U4
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R2
      123 CAPTURE                          UPVAL U12
      124 CAPTURE                          VAL R1
      125 SETTABLE                         R18 R16 R17
      126 GETUPVAL                         R19 10
      127 GETTABLEKS                       R18 R19 K20 ["Event"]
      129 GETTABLEKS                       R17 R18 K22 ["MouseButton1Down"]
      131 NEWCLOSURE                       R18 P1
      132 CAPTURE                          VAL R2
      133 CAPTURE                          UPVAL U12
      134 CAPTURE                          VAL R0
      135 SETTABLE                         R18 R16 R17
      136 GETUPVAL                         R19 10
      137 GETTABLEKS                       R18 R19 K20 ["Event"]
      139 GETTABLEKS                       R17 R18 K23 ["MouseButton1Up"]
      141 NEWCLOSURE                       R18 P2
      142 CAPTURE                          VAL R2
      143 CAPTURE                          UPVAL U12
      144 CAPTURE                          VAL R0
      145 SETTABLE                         R18 R16 R17
      146 GETUPVAL                         R19 10
      147 GETTABLEKS                       R18 R19 K20 ["Event"]
      149 GETTABLEKS                       R17 R18 K24 ["MouseMoved"]
      151 NEWCLOSURE                       R18 P3
      152 CAPTURE                          VAL R2
      153 CAPTURE                          UPVAL U12
      154 CAPTURE                          VAL R0
      155 SETTABLE                         R18 R16 R17
      156 GETUPVAL                         R18 10
      157 GETTABLEKS                       R17 R18 K25 ["Tag"]
      159 LOADK                            R18 K26 ["size-full row align-x-left align-y-center"]
      160 SETTABLE                         R18 R16 R17
      161 MOVE                             R17 R8
      162 CALL                             R14 3 1
      163 SETTABLEKS                       R14 R13 K16 ["InputHandler"]
      165 CALL                             R10 3 -1
      166 RETURN                           R10 -1

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
       40 GETTABLEKS                       R7 R8 K15 ["EditNameInput"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R11 R0 K12 ["Src"]
       47 GETTABLEKS                       R10 R11 K13 ["Components"]
       49 GETTABLEKS                       R9 R10 K14 ["Shared"]
       51 GETTABLEKS                       R8 R9 K16 ["ItemThumbnail"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R11 R0 K12 ["Src"]
       58 GETTABLEKS                       R10 R11 K17 ["Controllers"]
       60 GETTABLEKS                       R9 R10 K18 ["Input"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R12 R0 K12 ["Src"]
       67 GETTABLEKS                       R11 R12 K17 ["Controllers"]
       69 GETTABLEKS                       R10 R11 K19 ["ItemsController"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R13 R0 K12 ["Src"]
       76 GETTABLEKS                       R12 R13 K20 ["Hooks"]
       78 GETTABLEKS                       R11 R12 K21 ["useColumns"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R14 R0 K12 ["Src"]
       85 GETTABLEKS                       R13 R14 K20 ["Hooks"]
       87 GETTABLEKS                       R12 R13 K22 ["useItems"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R15 R0 K12 ["Src"]
       94 GETTABLEKS                       R14 R15 K20 ["Hooks"]
       96 GETTABLEKS                       R13 R14 K23 ["useItemSelection"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R16 R0 K12 ["Src"]
      103 GETTABLEKS                       R15 R16 K20 ["Hooks"]
      105 GETTABLEKS                       R14 R15 K24 ["useRenamePlaceId"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R16 R0 K12 ["Src"]
      112 GETTABLEKS                       R15 R16 K25 ["Types"]
      114 CALL                             R14 1 1
      115 GETTABLEKS                       R16 R3 K26 ["Util"]
      117 GETTABLEKS                       R15 R16 K27 ["GetTextSize"]
      119 GETIMPORT                        R16 K5 [require]
      121 GETTABLEKS                       R19 R0 K12 ["Src"]
      123 GETTABLEKS                       R18 R19 K26 ["Util"]
      125 GETTABLEKS                       R17 R18 K28 ["Images"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K5 [require]
      130 GETTABLEKS                       R20 R0 K12 ["Src"]
      132 GETTABLEKS                       R19 R20 K26 ["Util"]
      134 GETTABLEKS                       R18 R19 K29 ["logIfDebug"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K5 [require]
      139 GETTABLEKS                       R21 R0 K12 ["Src"]
      141 GETTABLEKS                       R20 R21 K30 ["Resources"]
      143 GETTABLEKS                       R19 R20 K31 ["PluginStyles"]
      145 CALL                             R18 1 1
      146 GETIMPORT                        R19 K5 [require]
      148 GETTABLEKS                       R22 R0 K12 ["Src"]
      150 GETTABLEKS                       R21 R22 K32 ["Flags"]
      152 GETTABLEKS                       R20 R21 K33 ["getFFlagAmrOrganizationFoundation"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K5 [require]
      157 GETTABLEKS                       R23 R0 K12 ["Src"]
      159 GETTABLEKS                       R22 R23 K32 ["Flags"]
      161 GETTABLEKS                       R21 R22 K34 ["getFFlagAmrUpdatedItemsCache"]
      163 CALL                             R20 1 1
      164 DUPCLOSURE                       R21 K35 [PROTO_0]
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R14
      167 DUPCLOSURE                       R22 K36 [PROTO_1]
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R16
      171 DUPCLOSURE                       R23 K37 [PROTO_2]
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R6
      184 DUPCLOSURE                       R24 K38 [PROTO_3]
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R14
      187 DUPCLOSURE                       R25 K39 [PROTO_4]
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R6
      200 DUPCLOSURE                       R26 K40 [PROTO_9]
      201 CAPTURE                          VAL R5
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R25
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R14
      214 RETURN                           R26 1
