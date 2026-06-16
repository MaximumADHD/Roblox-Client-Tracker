PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
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
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["createElement"]
       22 GETUPVAL                         R5 2
       23 DUPTABLE                         R6 K12 [{"Instance"}]
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K11 ["Instance"]
       27 SETTABLEKS                       R7 R6 K11 ["Instance"]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K9 ["ItemDataPreviewModel"]
       32 CALL                             R0 3 -1
       33 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+80]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["createElement"]
        6 GETUPVAL                         R1 2
        7 DUPTABLE                         R2 K3 [{"tag", "LayoutOrder"}]
        8 LOADK                            R3 K4 ["col align-x-left gap-xxsmall auto-y grow"]
        9 SETTABLEKS                       R3 R2 K1 ["tag"]
       11 LOADN                            R3 2
       12 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       14 DUPTABLE                         R3 K7 [{"AssetName", "AssetTypeSubtitle"}]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K0 ["createElement"]
       18 GETUPVAL                         R5 3
       19 DUPTABLE                         R6 K10 [{"Text", "Size", "tag", "LayoutOrder"}]
       20 GETUPVAL                         R7 4
       21 GETTABLEKS                       R7 R7 K11 ["Name"]
       23 SETTABLEKS                       R7 R6 K8 ["Text"]
       25 GETIMPORT                        R7 K14 [UDim2.new]
       27 LOADN                            R8 1
       28 LOADN                            R9 0
       29 LOADN                            R10 0
       30 LOADN                            R11 0
       31 CALL                             R7 4 1
       32 SETTABLEKS                       R7 R6 K9 ["Size"]
       34 LOADK                            R7 K15 ["text-title-small auto-y content-emphasis text-align-x-left text-truncate-end"]
       35 SETTABLEKS                       R7 R6 K1 ["tag"]
       37 GETUPVAL                         R7 5
       38 NAMECALL                         R7 R7 K16 ["getNextOrder"]
       40 CALL                             R7 1 1
       41 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K5 ["AssetName"]
       46 GETUPVAL                         R4 4
       47 GETTABLEKS                       R4 R4 K17 ["Subtitle"]
       49 JUMPIFNOT                        R4 ; [+29]
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K0 ["createElement"]
       53 GETUPVAL                         R5 3
       54 DUPTABLE                         R6 K10 [{"Text", "Size", "tag", "LayoutOrder"}]
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K17 ["Subtitle"]
       58 SETTABLEKS                       R7 R6 K8 ["Text"]
       60 GETIMPORT                        R7 K14 [UDim2.new]
       62 LOADN                            R8 1
       63 LOADN                            R9 0
       64 LOADN                            R10 0
       65 LOADN                            R11 0
       66 CALL                             R7 4 1
       67 SETTABLEKS                       R7 R6 K9 ["Size"]
       69 LOADK                            R7 K18 ["text-body-small auto-y content-default text-align-x-left text-truncate-end"]
       70 SETTABLEKS                       R7 R6 K1 ["tag"]
       72 GETUPVAL                         R7 5
       73 NAMECALL                         R7 R7 K16 ["getNextOrder"]
       75 CALL                             R7 1 1
       76 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       78 CALL                             R4 2 1
       79 SETTABLEKS                       R4 R3 K6 ["AssetTypeSubtitle"]
       81 CALL                             R0 3 -1
       82 RETURN                           R0 -1
       83 GETUPVAL                         R0 1
       84 GETTABLEKS                       R0 R0 K0 ["createElement"]
       86 GETUPVAL                         R1 2
       87 DUPTABLE                         R2 K19 [{"tag", "LayoutOrder", "Size"}]
       88 LOADK                            R3 K20 ["col align-x-left gap-xxsmall auto-y"]
       89 SETTABLEKS                       R3 R2 K1 ["tag"]
       91 LOADN                            R3 2
       92 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       94 GETIMPORT                        R3 K14 [UDim2.new]
       96 LOADN                            R4 0
       97 LOADN                            R5 186
       98 LOADN                            R6 0
       99 LOADN                            R7 0
      100 CALL                             R3 4 1
      101 SETTABLEKS                       R3 R2 K9 ["Size"]
      103 DUPTABLE                         R3 K7 [{"AssetName", "AssetTypeSubtitle"}]
      104 GETUPVAL                         R4 1
      105 GETTABLEKS                       R4 R4 K0 ["createElement"]
      107 GETUPVAL                         R5 3
      108 DUPTABLE                         R6 K21 [{"Text", "tag", "LayoutOrder"}]
      109 GETUPVAL                         R7 4
      110 GETTABLEKS                       R7 R7 K11 ["Name"]
      112 SETTABLEKS                       R7 R6 K8 ["Text"]
      114 LOADK                            R7 K22 ["text-title-small auto-xy content-emphasis text-truncate-end"]
      115 SETTABLEKS                       R7 R6 K1 ["tag"]
      117 GETUPVAL                         R7 5
      118 NAMECALL                         R7 R7 K16 ["getNextOrder"]
      120 CALL                             R7 1 1
      121 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
      123 CALL                             R4 2 1
      124 SETTABLEKS                       R4 R3 K5 ["AssetName"]
      126 GETUPVAL                         R4 4
      127 GETTABLEKS                       R4 R4 K17 ["Subtitle"]
      129 JUMPIFNOT                        R4 ; [+20]
      130 GETUPVAL                         R4 1
      131 GETTABLEKS                       R4 R4 K0 ["createElement"]
      133 GETUPVAL                         R5 3
      134 DUPTABLE                         R6 K21 [{"Text", "tag", "LayoutOrder"}]
      135 GETUPVAL                         R7 4
      136 GETTABLEKS                       R7 R7 K17 ["Subtitle"]
      138 SETTABLEKS                       R7 R6 K8 ["Text"]
      140 LOADK                            R7 K23 ["text-body-small auto-xy content-default"]
      141 SETTABLEKS                       R7 R6 K1 ["tag"]
      143 GETUPVAL                         R7 5
      144 NAMECALL                         R7 R7 K16 ["getNextOrder"]
      146 CALL                             R7 1 1
      147 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
      149 CALL                             R4 2 1
      150 SETTABLEKS                       R4 R3 K6 ["AssetTypeSubtitle"]
      152 CALL                             R0 3 -1
      153 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+23]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["createElement"]
        6 GETUPVAL                         R1 2
        7 DUPTABLE                         R2 K4 [{"tag", "LayoutOrder", "Size"}]
        8 LOADK                            R3 K5 ["row gap-small align-y-center auto-y"]
        9 SETTABLEKS                       R3 R2 K1 ["tag"]
       11 LOADN                            R3 3
       12 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       14 GETIMPORT                        R3 K8 [UDim2.fromOffset]
       16 GETUPVAL                         R4 3
       17 LOADN                            R5 0
       18 CALL                             R3 2 1
       19 SETTABLEKS                       R3 R2 K3 ["Size"]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K9 ["children"]
       24 CALL                             R0 3 -1
       25 RETURN                           R0 -1
       26 GETUPVAL                         R0 1
       27 GETTABLEKS                       R0 R0 K0 ["createElement"]
       29 GETUPVAL                         R1 2
       30 DUPTABLE                         R2 K4 [{"tag", "LayoutOrder", "Size"}]
       31 LOADK                            R3 K10 ["row gap-small align-y-center"]
       32 SETTABLEKS                       R3 R2 K1 ["tag"]
       34 LOADN                            R3 3
       35 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       37 GETIMPORT                        R3 K12 [UDim2.new]
       39 LOADN                            R4 0
       40 LOADN                            R5 130
       41 LOADN                            R6 0
       42 LOADN                            R7 0
       43 CALL                             R3 4 1
       44 SETTABLEKS                       R3 R2 K3 ["Size"]
       46 GETUPVAL                         R3 4
       47 GETTABLEKS                       R3 R3 K9 ["children"]
       49 CALL                             R0 3 -1
       50 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R3 K4 ["row gap-small align-y-center size-full-0 auto-y padding-y-small"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K5 ["WarningText"]
       11 JUMPIFNOT                        R4 ; [+2]
       12 LOADN                            R3 1
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K2 ["LayoutOrder"]
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
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K2 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+119]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 1
       22 GETTABLEKS                       R6 R0 K4 ["Instance"]
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R5 R0 K5 ["hasSecondaryDropdown"]
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADN                            R4 12
       31 JUMP                             ; [+1]
       32 LOADN                            R4 130
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 NEWTABLE                         R7 0 2
       45 GETTABLEKS                       R8 R0 K6 ["Name"]
       47 GETTABLEKS                       R9 R0 K7 ["Subtitle"]
       49 SETLIST                          R7 R8 2 [1]
       51 CALL                             R5 2 1
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       55 NEWCLOSURE                       R7 P2
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R8 0 2
       63 GETTABLEKS                       R9 R0 K8 ["children"]
       65 MOVE                             R10 R4
       66 SETLIST                          R8 R9 2 [1]
       68 CALL                             R6 2 1
       69 GETUPVAL                         R7 3
       70 GETTABLEKS                       R7 R7 K3 ["useMemo"]
       72 NEWCLOSURE                       R8 P3
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 NEWTABLE                         R9 0 5
       81 MOVE                             R10 R3
       82 MOVE                             R11 R5
       83 MOVE                             R12 R6
       84 GETTABLEKS                       R13 R0 K9 ["WarningText"]
       86 GETTABLEKS                       R14 R0 K10 ["LayoutOrder"]
       88 SETLIST                          R9 R10 5 [1]
       90 CALL                             R7 2 1
       91 GETTABLEKS                       R9 R0 K9 ["WarningText"]
       93 JUMPIFNOT                        R9 ; [+35]
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R8 R8 K11 ["createElement"]
       97 GETUPVAL                         R9 4
       98 DUPTABLE                         R10 K13 [{"tag", "LayoutOrder"}]
       99 LOADK                            R11 K14 ["col gap-xxsmall size-full-0 auto-y"]
      100 SETTABLEKS                       R11 R10 K12 ["tag"]
      102 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
      104 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
      106 DUPTABLE                         R11 K16 [{"Row", "WarningText"}]
      107 SETTABLEKS                       R7 R11 K15 ["Row"]
      109 GETUPVAL                         R12 3
      110 GETTABLEKS                       R12 R12 K11 ["createElement"]
      112 GETUPVAL                         R13 7
      113 DUPTABLE                         R14 K18 [{"Text", "tag", "LayoutOrder"}]
      114 GETTABLEKS                       R15 R0 K9 ["WarningText"]
      116 SETTABLEKS                       R15 R14 K17 ["Text"]
      118 LOADK                            R15 K19 ["text-body-small auto-xy content-system-warning wrap"]
      119 SETTABLEKS                       R15 R14 K12 ["tag"]
      121 LOADN                            R15 2
      122 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K9 ["WarningText"]
      127 CALL                             R8 3 1
      128 RETURN                           R8 1
      129 MOVE                             R8 R7
      130 RETURN                           R8 1
      131 GETUPVAL                         R3 3
      132 GETTABLEKS                       R3 R3 K20 ["useState"]
      134 LOADN                            R4 0
      135 CALL                             R3 1 2
      136 GETUPVAL                         R5 3
      137 GETTABLEKS                       R5 R5 K21 ["useRef"]
      139 LOADNIL                          R6
      140 CALL                             R5 1 1
      141 GETUPVAL                         R6 3
      142 GETTABLEKS                       R6 R6 K11 ["createElement"]
      144 GETUPVAL                         R7 8
      145 DUPTABLE                         R8 K25 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
      146 GETIMPORT                        R9 K28 [Enum.AutomaticSize.Y]
      148 SETTABLEKS                       R9 R8 K22 ["AutomaticSize"]
      150 GETTABLEKS                       R9 R0 K10 ["LayoutOrder"]
      152 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
      154 GETIMPORT                        R9 K31 [Enum.FillDirection.Horizontal]
      156 SETTABLEKS                       R9 R8 K23 ["Layout"]
      158 GETTABLEKS                       R9 R2 K32 ["HorizontalSpacing"]
      160 SETTABLEKS                       R9 R8 K24 ["Spacing"]
      162 DUPTABLE                         R9 K36 [{"ItemIcon", "ItemNames", "Children"}]
      163 GETUPVAL                         R10 3
      164 GETTABLEKS                       R10 R10 K11 ["createElement"]
      166 GETUPVAL                         R11 8
      167 DUPTABLE                         R12 K39 [{"BackgroundColor3", "LayoutOrder", "Size"}]
      168 GETTABLEKS                       R13 R2 K40 ["IconBackground"]
      170 SETTABLEKS                       R13 R12 K37 ["BackgroundColor3"]
      172 NAMECALL                         R13 R1 K41 ["getNextOrder"]
      174 CALL                             R13 1 1
      175 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      177 GETTABLEKS                       R13 R2 K42 ["IconSize"]
      179 SETTABLEKS                       R13 R12 K38 ["Size"]
      181 DUPTABLE                         R13 K44 [{"ItemDataPreviewModel"}]
      182 GETUPVAL                         R14 3
      183 GETTABLEKS                       R14 R14 K11 ["createElement"]
      185 GETUPVAL                         R15 5
      186 DUPTABLE                         R16 K45 [{"Instance"}]
      187 GETTABLEKS                       R17 R0 K4 ["Instance"]
      189 SETTABLEKS                       R17 R16 K4 ["Instance"]
      191 CALL                             R14 2 1
      192 SETTABLEKS                       R14 R13 K43 ["ItemDataPreviewModel"]
      194 CALL                             R10 3 1
      195 SETTABLEKS                       R10 R9 K33 ["ItemIcon"]
      197 GETUPVAL                         R10 3
      198 GETTABLEKS                       R10 R10 K11 ["createElement"]
      200 GETUPVAL                         R11 8
      201 DUPTABLE                         R12 K46 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing", "Size"}]
      202 GETIMPORT                        R13 K28 [Enum.AutomaticSize.Y]
      204 SETTABLEKS                       R13 R12 K22 ["AutomaticSize"]
      206 NAMECALL                         R13 R1 K41 ["getNextOrder"]
      208 CALL                             R13 1 1
      209 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      211 GETIMPORT                        R13 K48 [Enum.FillDirection.Vertical]
      213 SETTABLEKS                       R13 R12 K23 ["Layout"]
      215 GETTABLEKS                       R13 R2 K49 ["TextSpacing"]
      217 SETTABLEKS                       R13 R12 K24 ["Spacing"]
      219 GETIMPORT                        R13 K51 [UDim2.new]
      221 LOADN                            R14 1
      222 GETTABLEKS                       R18 R2 K42 ["IconSize"]
      224 GETTABLEKS                       R18 R18 K52 ["X"]
      226 GETTABLEKS                       R18 R18 K53 ["Offset"]
      228 GETTABLEKS                       R19 R2 K32 ["HorizontalSpacing"]
      230 ADD                              R17 R18 R19
      231 ADD                              R16 R17 R3
      232 MINUS                            R15 R16
      233 LOADN                            R16 0
      234 LOADN                            R17 0
      235 CALL                             R13 4 1
      236 SETTABLEKS                       R13 R12 K38 ["Size"]
      238 DUPTABLE                         R13 K56 [{"ItemName", "Subtitle", "Warning"}]
      239 GETUPVAL                         R14 3
      240 GETTABLEKS                       R14 R14 K11 ["createElement"]
      242 GETUPVAL                         R15 9
      243 DUPTABLE                         R16 K59 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextXAlignment", "TextTruncate"}]
      244 GETIMPORT                        R17 K28 [Enum.AutomaticSize.Y]
      246 SETTABLEKS                       R17 R16 K22 ["AutomaticSize"]
      248 NAMECALL                         R17 R1 K41 ["getNextOrder"]
      250 CALL                             R17 1 1
      251 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      253 GETIMPORT                        R17 K61 [UDim2.fromScale]
      255 LOADN                            R18 1
      256 LOADN                            R19 0
      257 CALL                             R17 2 1
      258 SETTABLEKS                       R17 R16 K38 ["Size"]
      260 GETTABLEKS                       R17 R0 K6 ["Name"]
      262 SETTABLEKS                       R17 R16 K17 ["Text"]
      264 GETIMPORT                        R17 K63 [Enum.TextXAlignment.Left]
      266 SETTABLEKS                       R17 R16 K57 ["TextXAlignment"]
      268 GETIMPORT                        R17 K65 [Enum.TextTruncate.AtEnd]
      270 SETTABLEKS                       R17 R16 K58 ["TextTruncate"]
      272 CALL                             R14 2 1
      273 SETTABLEKS                       R14 R13 K54 ["ItemName"]
      275 GETTABLEKS                       R14 R0 K7 ["Subtitle"]
      277 JUMPIFNOT                        R14 ; [+37]
      278 GETUPVAL                         R14 3
      279 GETTABLEKS                       R14 R14 K11 ["createElement"]
      281 GETUPVAL                         R15 9
      282 DUPTABLE                         R16 K67 [{"AutomaticSize", "LayoutOrder", "Style", "Size", "Text", "TextXAlignment", "TextTruncate"}]
      283 GETIMPORT                        R17 K28 [Enum.AutomaticSize.Y]
      285 SETTABLEKS                       R17 R16 K22 ["AutomaticSize"]
      287 NAMECALL                         R17 R1 K41 ["getNextOrder"]
      289 CALL                             R17 1 1
      290 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      292 LOADK                            R17 K68 ["SubText"]
      293 SETTABLEKS                       R17 R16 K66 ["Style"]
      295 GETIMPORT                        R17 K61 [UDim2.fromScale]
      297 LOADN                            R18 1
      298 LOADN                            R19 0
      299 CALL                             R17 2 1
      300 SETTABLEKS                       R17 R16 K38 ["Size"]
      302 GETTABLEKS                       R17 R0 K7 ["Subtitle"]
      304 SETTABLEKS                       R17 R16 K17 ["Text"]
      306 GETIMPORT                        R17 K63 [Enum.TextXAlignment.Left]
      308 SETTABLEKS                       R17 R16 K57 ["TextXAlignment"]
      310 GETIMPORT                        R17 K65 [Enum.TextTruncate.AtEnd]
      312 SETTABLEKS                       R17 R16 K58 ["TextTruncate"]
      314 CALL                             R14 2 1
      315 SETTABLEKS                       R14 R13 K7 ["Subtitle"]
      317 GETTABLEKS                       R14 R0 K9 ["WarningText"]
      319 JUMPIFNOT                        R14 ; [+36]
      320 GETUPVAL                         R14 3
      321 GETTABLEKS                       R14 R14 K11 ["createElement"]
      323 GETUPVAL                         R15 9
      324 DUPTABLE                         R16 K70 [{"AutomaticSize", "LayoutOrder", "Style", "Size", "Text", "TextXAlignment", "TextWrapped"}]
      325 GETIMPORT                        R17 K28 [Enum.AutomaticSize.Y]
      327 SETTABLEKS                       R17 R16 K22 ["AutomaticSize"]
      329 NAMECALL                         R17 R1 K41 ["getNextOrder"]
      331 CALL                             R17 1 1
      332 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      334 LOADK                            R17 K55 ["Warning"]
      335 SETTABLEKS                       R17 R16 K66 ["Style"]
      337 GETIMPORT                        R17 K61 [UDim2.fromScale]
      339 LOADN                            R18 1
      340 LOADN                            R19 0
      341 CALL                             R17 2 1
      342 SETTABLEKS                       R17 R16 K38 ["Size"]
      344 GETTABLEKS                       R17 R0 K9 ["WarningText"]
      346 SETTABLEKS                       R17 R16 K17 ["Text"]
      348 GETIMPORT                        R17 K63 [Enum.TextXAlignment.Left]
      350 SETTABLEKS                       R17 R16 K57 ["TextXAlignment"]
      352 LOADB                            R17 1
      353 SETTABLEKS                       R17 R16 K69 ["TextWrapped"]
      355 CALL                             R14 2 1
      356 SETTABLEKS                       R14 R13 K55 ["Warning"]
      358 CALL                             R10 3 1
      359 SETTABLEKS                       R10 R9 K34 ["ItemNames"]
      361 GETUPVAL                         R10 3
      362 GETTABLEKS                       R10 R10 K11 ["createElement"]
      364 GETUPVAL                         R11 8
      365 NEWTABLE                         R12 4 0
      367 GETIMPORT                        R13 K72 [Enum.AutomaticSize.XY]
      369 SETTABLEKS                       R13 R12 K22 ["AutomaticSize"]
      371 NAMECALL                         R13 R1 K41 ["getNextOrder"]
      373 CALL                             R13 1 1
      374 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      376 SETTABLEKS                       R5 R12 K73 ["ref"]
      378 GETUPVAL                         R13 3
      379 GETTABLEKS                       R13 R13 K74 ["Change"]
      381 GETTABLEKS                       R13 R13 K75 ["AbsoluteSize"]
      383 NEWCLOSURE                       R14 P4
      384 CAPTURE                          VAL R4
      385 SETTABLE                         R14 R12 R13
      386 GETTABLEKS                       R13 R0 K8 ["children"]
      388 CALL                             R10 3 1
      389 SETTABLEKS                       R10 R9 K35 ["Children"]
      391 CALL                             R6 3 -1
      392 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["ItemDataPreview"]
       29 GETTABLEKS                       R4 R4 K12 ["ItemDataPreviewModel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Flags"]
       38 GETTABLEKS                       R5 R5 K14 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Resources"]
       47 GETTABLEKS                       R6 R6 K16 ["Theme"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R1 K17 ["UI"]
       52 GETTABLEKS                       R7 R6 K18 ["Pane"]
       54 GETTABLEKS                       R8 R6 K19 ["TextLabel"]
       56 GETTABLEKS                       R9 R1 K20 ["Util"]
       58 GETTABLEKS                       R9 R9 K21 ["LayoutOrderIterator"]
       60 GETTABLEKS                       R10 R1 K22 ["ContextServices"]
       62 GETTABLEKS                       R10 R10 K23 ["Stylizer"]
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K6 ["Packages"]
       68 GETTABLEKS                       R12 R12 K24 ["Foundation"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R12 R11 K25 ["Text"]
       73 GETTABLEKS                       R13 R11 K26 ["View"]
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R0 K9 ["Src"]
       79 GETTABLEKS                       R15 R15 K13 ["Flags"]
       81 GETTABLEKS                       R15 R15 K27 ["getFFlagAvatarPreviewerFixDisambiguationDropdownClipping"]
       83 CALL                             R14 1 1
       84 DUPCLOSURE                       R15 K28 [PROTO_5]
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 RETURN                           R15 1
