PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"tag", "Size", "LayoutOrder"}]
        5 LOADK                            R3 K5 ["radius-medium bg-surface-200"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETIMPORT                        R3 K8 [UDim2.fromOffset]
       10 LOADN                            R4 40
       11 LOADN                            R5 40
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K2 ["Size"]
       15 LOADN                            R3 1
       16 SETTABLEKS                       R3 R2 K3 ["LayoutOrder"]
       18 DUPTABLE                         R3 K10 [{"ItemDataPreviewModel"}]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K0 ["createElement"]
       22 GETUPVAL                         R5 2
       23 DUPTABLE                         R6 K12 [{"Instance"}]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R7 R8 K11 ["Instance"]
       27 SETTABLEKS                       R7 R6 K11 ["Instance"]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K9 ["ItemDataPreviewModel"]
       32 CALL                             R0 3 -1
       33 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K5 [{"tag", "LayoutOrder", "Size"}]
        9 LOADK                            R4 K6 ["col align-x-left gap-xxsmall auto-y"]
       10 SETTABLEKS                       R4 R3 K2 ["tag"]
       12 LOADN                            R4 2
       13 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       15 GETIMPORT                        R4 K8 [UDim2.new]
       17 LOADN                            R5 0
       18 LOADN                            R6 186
       19 LOADN                            R7 0
       20 LOADN                            R8 0
       21 CALL                             R4 4 1
       22 SETTABLEKS                       R4 R3 K4 ["Size"]
       24 DUPTABLE                         R4 K11 [{"AssetName", "AssetTypeSubtitle"}]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R5 R6 K1 ["createElement"]
       28 GETUPVAL                         R6 3
       29 DUPTABLE                         R7 K13 [{"Text", "tag", "LayoutOrder"}]
       30 GETUPVAL                         R9 4
       31 GETTABLEKS                       R8 R9 K14 ["Name"]
       33 SETTABLEKS                       R8 R7 K12 ["Text"]
       35 LOADK                            R8 K15 ["text-title-small auto-xy content-emphasis text-truncate-end"]
       36 SETTABLEKS                       R8 R7 K2 ["tag"]
       38 NAMECALL                         R8 R0 K16 ["getNextOrder"]
       40 CALL                             R8 1 1
       41 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K9 ["AssetName"]
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R5 R6 K17 ["Subtitle"]
       49 JUMPIFNOT                        R5 ; [+19]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R5 R6 K1 ["createElement"]
       53 GETUPVAL                         R6 3
       54 DUPTABLE                         R7 K13 [{"Text", "tag", "LayoutOrder"}]
       55 GETUPVAL                         R9 4
       56 GETTABLEKS                       R8 R9 K17 ["Subtitle"]
       58 SETTABLEKS                       R8 R7 K12 ["Text"]
       60 LOADK                            R8 K18 ["text-body-small auto-xy content-default"]
       61 SETTABLEKS                       R8 R7 K2 ["tag"]
       63 NAMECALL                         R8 R0 K16 ["getNextOrder"]
       65 CALL                             R8 1 1
       66 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       68 CALL                             R5 2 1
       69 SETTABLEKS                       R5 R4 K10 ["AssetTypeSubtitle"]
       71 CALL                             R1 3 -1
       72 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"tag", "LayoutOrder", "Size"}]
        5 LOADK                            R3 K5 ["row gap-small align-y-center"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 LOADN                            R3 3
        9 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       11 GETIMPORT                        R3 K8 [UDim2.new]
       13 LOADN                            R4 0
       14 LOADN                            R5 130
       15 LOADN                            R6 0
       16 LOADN                            R7 0
       17 CALL                             R3 4 1
       18 SETTABLEKS                       R3 R2 K3 ["Size"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K9 ["children"]
       23 CALL                             R0 3 -1
       24 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R3 K4 ["row gap-small align-y-center size-full-0 auto-y padding-y-small"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K5 ["WarningText"]
       11 JUMPIFNOT                        R4 ; [+2]
       12 LOADN                            R3 1
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K2 ["LayoutOrder"]
       17 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       19 DUPTABLE                         R3 K9 [{"Thumbnail", "AssetInfo", "DropdownsContainer"}]
       20 GETUPVAL                         R4 3
       21 SETTABLEKS                       R4 R3 K6 ["Thumbnail"]
       23 GETUPVAL                         R4 4
       24 SETTABLEKS                       R4 R3 K7 ["AssetInfo"]
       26 GETUPVAL                         R4 5
       27 SETTABLEKS                       R4 R3 K8 ["DropdownsContainer"]
       29 CALL                             R0 3 -1
       30 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K2 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+109]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K3 ["useMemo"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 1
       22 GETTABLEKS                       R6 R0 K4 ["Instance"]
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R6 0 2
       38 GETTABLEKS                       R7 R0 K5 ["Name"]
       40 GETTABLEKS                       R8 R0 K6 ["Subtitle"]
       42 SETLIST                          R6 R7 2 [1]
       44 CALL                             R4 2 1
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R5 R6 K3 ["useMemo"]
       48 NEWCLOSURE                       R6 P2
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R7 0 1
       54 GETTABLEKS                       R8 R0 K7 ["children"]
       56 SETLIST                          R7 R8 1 [1]
       58 CALL                             R5 2 1
       59 GETUPVAL                         R7 3
       60 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       62 NEWCLOSURE                       R7 P3
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 NEWTABLE                         R8 0 5
       71 MOVE                             R9 R3
       72 MOVE                             R10 R4
       73 MOVE                             R11 R5
       74 GETTABLEKS                       R12 R0 K8 ["WarningText"]
       76 GETTABLEKS                       R13 R0 K9 ["LayoutOrder"]
       78 SETLIST                          R8 R9 5 [1]
       80 CALL                             R6 2 1
       81 GETTABLEKS                       R8 R0 K8 ["WarningText"]
       83 JUMPIFNOT                        R8 ; [+35]
       84 GETUPVAL                         R8 3
       85 GETTABLEKS                       R7 R8 K10 ["createElement"]
       87 GETUPVAL                         R8 4
       88 DUPTABLE                         R9 K12 [{"tag", "LayoutOrder"}]
       89 LOADK                            R10 K13 ["col gap-xxsmall size-full-0 auto-y"]
       90 SETTABLEKS                       R10 R9 K11 ["tag"]
       92 GETTABLEKS                       R10 R0 K9 ["LayoutOrder"]
       94 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       96 DUPTABLE                         R10 K15 [{"Row", "WarningText"}]
       97 SETTABLEKS                       R6 R10 K14 ["Row"]
       99 GETUPVAL                         R12 3
      100 GETTABLEKS                       R11 R12 K10 ["createElement"]
      102 GETUPVAL                         R12 6
      103 DUPTABLE                         R13 K17 [{"Text", "tag", "LayoutOrder"}]
      104 GETTABLEKS                       R14 R0 K8 ["WarningText"]
      106 SETTABLEKS                       R14 R13 K16 ["Text"]
      108 LOADK                            R14 K18 ["text-body-small auto-xy content-system-warning wrap"]
      109 SETTABLEKS                       R14 R13 K11 ["tag"]
      111 LOADN                            R14 2
      112 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R10 K8 ["WarningText"]
      117 CALL                             R7 3 1
      118 RETURN                           R7 1
      119 MOVE                             R7 R6
      120 RETURN                           R7 1
      121 GETUPVAL                         R4 3
      122 GETTABLEKS                       R3 R4 K19 ["useState"]
      124 LOADN                            R4 0
      125 CALL                             R3 1 2
      126 GETUPVAL                         R6 3
      127 GETTABLEKS                       R5 R6 K20 ["useRef"]
      129 LOADNIL                          R6
      130 CALL                             R5 1 1
      131 GETUPVAL                         R7 3
      132 GETTABLEKS                       R6 R7 K10 ["createElement"]
      134 GETUPVAL                         R7 7
      135 DUPTABLE                         R8 K24 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
      136 GETIMPORT                        R9 K27 [Enum.AutomaticSize.Y]
      138 SETTABLEKS                       R9 R8 K21 ["AutomaticSize"]
      140 GETTABLEKS                       R9 R0 K9 ["LayoutOrder"]
      142 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
      144 GETIMPORT                        R9 K30 [Enum.FillDirection.Horizontal]
      146 SETTABLEKS                       R9 R8 K22 ["Layout"]
      148 GETTABLEKS                       R9 R2 K31 ["HorizontalSpacing"]
      150 SETTABLEKS                       R9 R8 K23 ["Spacing"]
      152 DUPTABLE                         R9 K35 [{"ItemIcon", "ItemNames", "Children"}]
      153 GETUPVAL                         R11 3
      154 GETTABLEKS                       R10 R11 K10 ["createElement"]
      156 GETUPVAL                         R11 7
      157 DUPTABLE                         R12 K38 [{"BackgroundColor3", "LayoutOrder", "Size"}]
      158 GETTABLEKS                       R13 R2 K39 ["IconBackground"]
      160 SETTABLEKS                       R13 R12 K36 ["BackgroundColor3"]
      162 NAMECALL                         R13 R1 K40 ["getNextOrder"]
      164 CALL                             R13 1 1
      165 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      167 GETTABLEKS                       R13 R2 K41 ["IconSize"]
      169 SETTABLEKS                       R13 R12 K37 ["Size"]
      171 DUPTABLE                         R13 K43 [{"ItemDataPreviewModel"}]
      172 GETUPVAL                         R15 3
      173 GETTABLEKS                       R14 R15 K10 ["createElement"]
      175 GETUPVAL                         R15 5
      176 DUPTABLE                         R16 K44 [{"Instance"}]
      177 GETTABLEKS                       R17 R0 K4 ["Instance"]
      179 SETTABLEKS                       R17 R16 K4 ["Instance"]
      181 CALL                             R14 2 1
      182 SETTABLEKS                       R14 R13 K42 ["ItemDataPreviewModel"]
      184 CALL                             R10 3 1
      185 SETTABLEKS                       R10 R9 K32 ["ItemIcon"]
      187 GETUPVAL                         R11 3
      188 GETTABLEKS                       R10 R11 K10 ["createElement"]
      190 GETUPVAL                         R11 7
      191 DUPTABLE                         R12 K45 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing", "Size"}]
      192 GETIMPORT                        R13 K27 [Enum.AutomaticSize.Y]
      194 SETTABLEKS                       R13 R12 K21 ["AutomaticSize"]
      196 NAMECALL                         R13 R1 K40 ["getNextOrder"]
      198 CALL                             R13 1 1
      199 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      201 GETIMPORT                        R13 K47 [Enum.FillDirection.Vertical]
      203 SETTABLEKS                       R13 R12 K22 ["Layout"]
      205 GETTABLEKS                       R13 R2 K48 ["TextSpacing"]
      207 SETTABLEKS                       R13 R12 K23 ["Spacing"]
      209 GETIMPORT                        R13 K50 [UDim2.new]
      211 LOADN                            R14 1
      212 GETTABLEKS                       R20 R2 K41 ["IconSize"]
      214 GETTABLEKS                       R19 R20 K51 ["X"]
      216 GETTABLEKS                       R18 R19 K52 ["Offset"]
      218 GETTABLEKS                       R19 R2 K31 ["HorizontalSpacing"]
      220 ADD                              R17 R18 R19
      221 ADD                              R16 R17 R3
      222 MINUS                            R15 R16
      223 LOADN                            R16 0
      224 LOADN                            R17 0
      225 CALL                             R13 4 1
      226 SETTABLEKS                       R13 R12 K37 ["Size"]
      228 DUPTABLE                         R13 K55 [{"ItemName", "Subtitle", "Warning"}]
      229 GETUPVAL                         R15 3
      230 GETTABLEKS                       R14 R15 K10 ["createElement"]
      232 GETUPVAL                         R15 8
      233 DUPTABLE                         R16 K58 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextXAlignment", "TextTruncate"}]
      234 GETIMPORT                        R17 K27 [Enum.AutomaticSize.Y]
      236 SETTABLEKS                       R17 R16 K21 ["AutomaticSize"]
      238 NAMECALL                         R17 R1 K40 ["getNextOrder"]
      240 CALL                             R17 1 1
      241 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      243 GETIMPORT                        R17 K60 [UDim2.fromScale]
      245 LOADN                            R18 1
      246 LOADN                            R19 0
      247 CALL                             R17 2 1
      248 SETTABLEKS                       R17 R16 K37 ["Size"]
      250 GETTABLEKS                       R17 R0 K5 ["Name"]
      252 SETTABLEKS                       R17 R16 K16 ["Text"]
      254 GETIMPORT                        R17 K62 [Enum.TextXAlignment.Left]
      256 SETTABLEKS                       R17 R16 K56 ["TextXAlignment"]
      258 GETIMPORT                        R17 K64 [Enum.TextTruncate.AtEnd]
      260 SETTABLEKS                       R17 R16 K57 ["TextTruncate"]
      262 CALL                             R14 2 1
      263 SETTABLEKS                       R14 R13 K53 ["ItemName"]
      265 GETTABLEKS                       R14 R0 K6 ["Subtitle"]
      267 JUMPIFNOT                        R14 ; [+37]
      268 GETUPVAL                         R15 3
      269 GETTABLEKS                       R14 R15 K10 ["createElement"]
      271 GETUPVAL                         R15 8
      272 DUPTABLE                         R16 K66 [{"AutomaticSize", "LayoutOrder", "Style", "Size", "Text", "TextXAlignment", "TextTruncate"}]
      273 GETIMPORT                        R17 K27 [Enum.AutomaticSize.Y]
      275 SETTABLEKS                       R17 R16 K21 ["AutomaticSize"]
      277 NAMECALL                         R17 R1 K40 ["getNextOrder"]
      279 CALL                             R17 1 1
      280 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      282 LOADK                            R17 K67 ["SubText"]
      283 SETTABLEKS                       R17 R16 K65 ["Style"]
      285 GETIMPORT                        R17 K60 [UDim2.fromScale]
      287 LOADN                            R18 1
      288 LOADN                            R19 0
      289 CALL                             R17 2 1
      290 SETTABLEKS                       R17 R16 K37 ["Size"]
      292 GETTABLEKS                       R17 R0 K6 ["Subtitle"]
      294 SETTABLEKS                       R17 R16 K16 ["Text"]
      296 GETIMPORT                        R17 K62 [Enum.TextXAlignment.Left]
      298 SETTABLEKS                       R17 R16 K56 ["TextXAlignment"]
      300 GETIMPORT                        R17 K64 [Enum.TextTruncate.AtEnd]
      302 SETTABLEKS                       R17 R16 K57 ["TextTruncate"]
      304 CALL                             R14 2 1
      305 SETTABLEKS                       R14 R13 K6 ["Subtitle"]
      307 GETTABLEKS                       R14 R0 K8 ["WarningText"]
      309 JUMPIFNOT                        R14 ; [+36]
      310 GETUPVAL                         R15 3
      311 GETTABLEKS                       R14 R15 K10 ["createElement"]
      313 GETUPVAL                         R15 8
      314 DUPTABLE                         R16 K69 [{"AutomaticSize", "LayoutOrder", "Style", "Size", "Text", "TextXAlignment", "TextWrapped"}]
      315 GETIMPORT                        R17 K27 [Enum.AutomaticSize.Y]
      317 SETTABLEKS                       R17 R16 K21 ["AutomaticSize"]
      319 NAMECALL                         R17 R1 K40 ["getNextOrder"]
      321 CALL                             R17 1 1
      322 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      324 LOADK                            R17 K54 ["Warning"]
      325 SETTABLEKS                       R17 R16 K65 ["Style"]
      327 GETIMPORT                        R17 K60 [UDim2.fromScale]
      329 LOADN                            R18 1
      330 LOADN                            R19 0
      331 CALL                             R17 2 1
      332 SETTABLEKS                       R17 R16 K37 ["Size"]
      334 GETTABLEKS                       R17 R0 K8 ["WarningText"]
      336 SETTABLEKS                       R17 R16 K16 ["Text"]
      338 GETIMPORT                        R17 K62 [Enum.TextXAlignment.Left]
      340 SETTABLEKS                       R17 R16 K56 ["TextXAlignment"]
      342 LOADB                            R17 1
      343 SETTABLEKS                       R17 R16 K68 ["TextWrapped"]
      345 CALL                             R14 2 1
      346 SETTABLEKS                       R14 R13 K54 ["Warning"]
      348 CALL                             R10 3 1
      349 SETTABLEKS                       R10 R9 K33 ["ItemNames"]
      351 GETUPVAL                         R11 3
      352 GETTABLEKS                       R10 R11 K10 ["createElement"]
      354 GETUPVAL                         R11 7
      355 NEWTABLE                         R12 4 0
      357 GETIMPORT                        R13 K71 [Enum.AutomaticSize.XY]
      359 SETTABLEKS                       R13 R12 K21 ["AutomaticSize"]
      361 NAMECALL                         R13 R1 K40 ["getNextOrder"]
      363 CALL                             R13 1 1
      364 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      366 SETTABLEKS                       R5 R12 K72 ["ref"]
      368 GETUPVAL                         R15 3
      369 GETTABLEKS                       R14 R15 K73 ["Change"]
      371 GETTABLEKS                       R13 R14 K74 ["AbsoluteSize"]
      373 NEWCLOSURE                       R14 P4
      374 CAPTURE                          VAL R4
      375 SETTABLE                         R14 R12 R13
      376 GETTABLEKS                       R13 R0 K7 ["children"]
      378 CALL                             R10 3 1
      379 SETTABLEKS                       R10 R9 K34 ["Children"]
      381 CALL                             R6 3 -1
      382 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Components"]
       27 GETTABLEKS                       R5 R6 K11 ["ItemDataPreview"]
       29 GETTABLEKS                       R4 R5 K12 ["ItemDataPreviewModel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Flags"]
       38 GETTABLEKS                       R5 R6 K14 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Resources"]
       47 GETTABLEKS                       R6 R7 K16 ["Theme"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R1 K17 ["UI"]
       52 GETTABLEKS                       R7 R6 K18 ["Pane"]
       54 GETTABLEKS                       R8 R6 K19 ["TextLabel"]
       56 GETTABLEKS                       R10 R1 K20 ["Util"]
       58 GETTABLEKS                       R9 R10 K21 ["LayoutOrderIterator"]
       60 GETTABLEKS                       R11 R1 K22 ["ContextServices"]
       62 GETTABLEKS                       R10 R11 K23 ["Stylizer"]
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R13 R0 K6 ["Packages"]
       68 GETTABLEKS                       R12 R13 K24 ["Foundation"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R12 R11 K25 ["Text"]
       73 GETTABLEKS                       R13 R11 K26 ["View"]
       75 DUPCLOSURE                       R14 K27 [PROTO_5]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 RETURN                           R14 1
