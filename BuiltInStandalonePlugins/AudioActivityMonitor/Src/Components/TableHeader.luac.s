PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleSortColumn"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openContextMenu"]
        3 LOADB                            R1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["isMeteringBar"]
        7 ORK                              R2 R3 K1 [False]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openContextMenu"]
        3 LOADB                            R1 1
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["RowData"]
        9 GETTABLEKS                       R3 R0 K3 ["TableState"]
       11 GETTABLEKS                       R4 R2 K4 ["sortMethod"]
       13 NEWTABLE                         R5 0 0
       15 GETTABLEKS                       R6 R2 K5 ["columnDefinitions"]
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 FORGPREP                         R6
       20 GETTABLEKS                       R12 R3 K6 ["columnVisibilities"]
       22 GETTABLE                         R11 R12 R9
       23 JUMPIFNOT                        R11 ; [+133]
       24 GETTABLEKS                       R12 R4 K7 ["Column"]
       26 JUMPIFEQ                         R12 R10 ; [+2]
       28 LOADB                            R11 0 +1
       29 LOADB                            R11 1
       30 LOADK                            R12 K8 [""]
       31 JUMPIFNOT                        R11 ; [+18]
       32 GETTABLEKS                       R13 R4 K9 ["Ascending"]
       34 JUMPIFNOT                        R13 ; [+8]
       35 GETUPVAL                         R13 2
       36 GETTABLEKS                       R13 R13 K10 ["Enums"]
       38 GETTABLEKS                       R13 R13 K11 ["IconName"]
       40 GETTABLEKS                       R12 R13 K12 ["CaretSmallUp"]
       42 JUMP                             ; [+7]
       43 GETUPVAL                         R13 2
       44 GETTABLEKS                       R13 R13 K10 ["Enums"]
       46 GETTABLEKS                       R13 R13 K11 ["IconName"]
       48 GETTABLEKS                       R12 R13 K13 ["CaretSmallDown"]
       50 LOADK                            R13 K14 ["%*Cell"]
       51 GETTABLEKS                       R15 R10 K15 ["name"]
       53 NAMECALL                         R13 R13 K16 ["format"]
       55 CALL                             R13 2 1
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R14 R14 K17 ["createElement"]
       59 GETUPVAL                         R15 3
       60 DUPTABLE                         R16 K24 [{["Size"], ["tag"] = "row items-center align-x-left gap-xxsmall padding-x-large", ["LayoutOrder"], ["onActivated"], ["onSecondaryActivated"]}]
       61 GETIMPORT                        R17 K27 [UDim2.new]
       63 LOADN                            R18 0
       64 GETTABLEKS                       R20 R3 K28 ["columnWidths"]
       66 GETTABLE                         R19 R20 R9
       67 LOADN                            R20 1
       68 LOADN                            R21 0
       69 CALL                             R17 4 1
       70 SETTABLEKS                       R17 R16 K18 ["Size"]
       72 SETTABLEKS                       R9 R16 K21 ["LayoutOrder"]
       74 NEWCLOSURE                       R17 P0
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R10
       77 SETTABLEKS                       R17 R16 K22 ["onActivated"]
       79 NEWCLOSURE                       R17 P1
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R10
       82 SETTABLEKS                       R17 R16 K23 ["onSecondaryActivated"]
       84 DUPTABLE                         R17 K31 [{"Label", "Icon"}]
       85 GETUPVAL                         R18 0
       86 GETTABLEKS                       R18 R18 K17 ["createElement"]
       88 GETUPVAL                         R19 4
       89 DUPTABLE                         R20 K36 [{["LayoutOrder"] = 1, ["Text"], ["Description"], ["IsContextMenuOpen"], ["tag"]}]
       90 LOADK                            R23 K7 ["Column"]
       91 GETTABLEKS                       R24 R10 K15 ["name"]
       93 NAMECALL                         R21 R1 K37 ["getText"]
       95 CALL                             R21 3 1
       96 SETTABLEKS                       R21 R20 K33 ["Text"]
       98 LOADK                            R23 K38 ["ColumnDescription"]
       99 GETTABLEKS                       R24 R10 K15 ["name"]
      101 NAMECALL                         R21 R1 K37 ["getText"]
      103 CALL                             R21 3 1
      104 SETTABLEKS                       R21 R20 K34 ["Description"]
      106 GETTABLEKS                       R21 R3 K39 ["isContextMenuOpen"]
      108 SETTABLEKS                       R21 R20 K35 ["IsContextMenuOpen"]
      110 NEWTABLE                         R21 4 0
      112 LOADB                            R22 1
      113 SETTABLEKS                       R22 R21 K40 ["fill size-0-full text-emphasis-medium text-align-x-left"]
      115 SETTABLEKS                       R11 R21 K41 ["text-title-small"]
      117 NOT                              R22 R11
      118 SETTABLEKS                       R22 R21 K42 ["text-body-small"]
      120 SETTABLEKS                       R21 R20 K19 ["tag"]
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K29 ["Label"]
      125 MOVE                             R18 R11
      126 JUMPIFNOT                        R18 ; [+26]
      127 GETUPVAL                         R18 0
      128 GETTABLEKS                       R18 R18 K17 ["createElement"]
      130 GETUPVAL                         R19 5
      131 DUPTABLE                         R20 K47 [{["name"], ["variant"], ["size"], ["tag"] = "align-y-center", ["LayoutOrder"] = 2}]
      132 SETTABLEKS                       R12 R20 K15 ["name"]
      134 GETUPVAL                         R21 2
      135 GETTABLEKS                       R21 R21 K10 ["Enums"]
      137 GETTABLEKS                       R21 R21 K48 ["IconVariant"]
      139 GETTABLEKS                       R21 R21 K49 ["Filled"]
      141 SETTABLEKS                       R21 R20 K43 ["variant"]
      143 GETUPVAL                         R21 2
      144 GETTABLEKS                       R21 R21 K10 ["Enums"]
      146 GETTABLEKS                       R21 R21 K50 ["IconSize"]
      148 GETTABLEKS                       R21 R21 K51 ["Small"]
      150 SETTABLEKS                       R21 R20 K44 ["size"]
      152 CALL                             R18 2 1
      153 SETTABLEKS                       R18 R17 K30 ["Icon"]
      155 CALL                             R14 3 1
      156 SETTABLE                         R14 R5 R13
      157 FORGLOOP                         R6 2 ; [-138]
      159 NEWTABLE                         R6 0 0
      161 GETTABLEKS                       R7 R3 K52 ["getColumnDividers"]
      163 CALL                             R7 0 3
      164 FORGPREP                         R7
      165 LOADK                            R12 K53 ["%*Divider"]
      166 GETTABLEKS                       R14 R11 K15 ["name"]
      168 NAMECALL                         R12 R12 K16 ["format"]
      170 CALL                             R12 2 1
      171 GETUPVAL                         R13 0
      172 GETTABLEKS                       R13 R13 K17 ["createElement"]
      174 GETUPVAL                         R14 6
      175 DUPTABLE                         R15 K58 [{"DividerX", "ColumnIndex", "ResizeColumnTo", "OnResizeFinished"}]
      176 GETTABLEKS                       R16 R11 K59 ["x"]
      178 SETTABLEKS                       R16 R15 K54 ["DividerX"]
      180 GETTABLEKS                       R16 R11 K60 ["columnIndex"]
      182 SETTABLEKS                       R16 R15 K55 ["ColumnIndex"]
      184 GETTABLEKS                       R16 R3 K61 ["resizeColumnTo"]
      186 SETTABLEKS                       R16 R15 K56 ["ResizeColumnTo"]
      188 GETTABLEKS                       R16 R3 K62 ["onColumnResizeFinished"]
      190 SETTABLEKS                       R16 R15 K57 ["OnResizeFinished"]
      192 CALL                             R13 2 1
      193 SETTABLE                         R13 R6 R12
      194 FORGLOOP                         R7 2 ; [-30]
      196 GETUPVAL                         R7 0
      197 GETTABLEKS                       R7 R7 K17 ["createElement"]
      199 GETUPVAL                         R8 0
      200 GETTABLEKS                       R8 R8 K63 ["Fragment"]
      202 NEWTABLE                         R9 0 0
      204 DUPTABLE                         R10 K66 [{"Header", "Separator"}]
      205 GETUPVAL                         R11 0
      206 GETTABLEKS                       R11 R11 K17 ["createElement"]
      208 GETUPVAL                         R12 3
      209 DUPTABLE                         R13 K69 [{["tag"] = "size-full-600 bg-surface-100 clip", ["LayoutOrder"] = -2, ["onSecondaryActivated"]}]
      210 NEWCLOSURE                       R14 P2
      211 CAPTURE                          VAL R3
      212 SETTABLEKS                       R14 R13 K23 ["onSecondaryActivated"]
      214 DUPTABLE                         R14 K72 [{"Inner", "DividerContainer"}]
      215 GETUPVAL                         R15 0
      216 GETTABLEKS                       R15 R15 K17 ["createElement"]
      218 GETUPVAL                         R16 3
      219 DUPTABLE                         R17 K75 [{["Position"], ["tag"] = "row", ["Size"]}]
      220 GETTABLEKS                       R18 R3 K76 ["headerOffset"]
      222 SETTABLEKS                       R18 R17 K73 ["Position"]
      224 GETIMPORT                        R18 K27 [UDim2.new]
      226 LOADN                            R19 0
      227 GETTABLEKS                       R20 R3 K77 ["totalColumnWidth"]
      229 LOADN                            R21 1
      230 LOADN                            R22 0
      231 CALL                             R18 4 1
      232 SETTABLEKS                       R18 R17 K18 ["Size"]
      234 MOVE                             R18 R5
      235 CALL                             R15 3 1
      236 SETTABLEKS                       R15 R14 K70 ["Inner"]
      238 GETUPVAL                         R15 0
      239 GETTABLEKS                       R15 R15 K17 ["createElement"]
      241 GETUPVAL                         R16 3
      242 DUPTABLE                         R17 K78 [{"Position", "Size"}]
      243 GETTABLEKS                       R18 R3 K76 ["headerOffset"]
      245 SETTABLEKS                       R18 R17 K73 ["Position"]
      247 GETIMPORT                        R18 K27 [UDim2.new]
      249 LOADN                            R19 0
      250 GETTABLEKS                       R20 R3 K77 ["totalColumnWidth"]
      252 LOADN                            R21 1
      253 LOADN                            R22 0
      254 CALL                             R18 4 1
      255 SETTABLEKS                       R18 R17 K18 ["Size"]
      257 MOVE                             R18 R6
      258 CALL                             R15 3 1
      259 SETTABLEKS                       R15 R14 K71 ["DividerContainer"]
      261 CALL                             R11 3 1
      262 SETTABLEKS                       R11 R10 K64 ["Header"]
      264 GETUPVAL                         R11 0
      265 GETTABLEKS                       R11 R11 K17 ["createElement"]
      267 GETUPVAL                         R12 7
      268 DUPTABLE                         R13 K81 [{["variant"], ["orientation"], ["LayoutOrder"] = -1}]
      269 GETUPVAL                         R14 8
      270 GETTABLEKS                       R14 R14 K82 ["Default"]
      272 SETTABLEKS                       R14 R13 K43 ["variant"]
      274 GETUPVAL                         R14 9
      275 GETTABLEKS                       R14 R14 K83 ["Horizontal"]
      277 SETTABLEKS                       R14 R13 K79 ["orientation"]
      279 CALL                             R11 2 1
      280 SETTABLEKS                       R11 R10 K65 ["Separator"]
      282 CALL                             R7 3 -1
      283 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["Divider"]
       30 GETTABLEKS                       R5 R3 K12 ["Icon"]
       32 GETTABLEKS                       R6 R3 K13 ["View"]
       34 GETTABLEKS                       R7 R3 K14 ["Enums"]
       36 GETTABLEKS                       R7 R7 K15 ["DividerVariant"]
       38 GETTABLEKS                       R8 R3 K14 ["Enums"]
       40 GETTABLEKS                       R8 R8 K16 ["Orientation"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K6 ["Packages"]
       46 GETTABLEKS                       R10 R10 K17 ["StudioFoundation"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R10 R9 K18 ["Contexts"]
       51 GETTABLEKS                       R10 R10 K19 ["Localization"]
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R0 K8 ["Src"]
       57 GETTABLEKS                       R12 R12 K20 ["Components"]
       59 GETTABLEKS                       R12 R12 K21 ["TextWithTooltip"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R0 K8 ["Src"]
       66 GETTABLEKS                       R13 R13 K20 ["Components"]
       68 GETTABLEKS                       R13 R13 K22 ["VerticalDivider"]
       70 CALL                             R12 1 1
       71 DUPCLOSURE                       R13 K23 [PROTO_3]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R8
       82 RETURN                           R13 1
