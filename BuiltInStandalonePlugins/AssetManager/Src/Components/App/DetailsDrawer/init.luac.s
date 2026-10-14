PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R10 R6
        7 NAMECALL                         R8 R0 K0 ["getItemInfo"]
        9 CALL                             R8 2 1
       10 SETTABLE                         R8 R2 R6
       11 FORGLOOP                         R3 1 ; [-6]
       13 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["View"]
        6 DUPTABLE                         R5 K8 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "padding-medium", ["layout"]}]
        7 GETIMPORT                        R6 K11 [UDim2.new]
        9 LOADN                            R7 1
       10 LOADN                            R8 0
       11 LOADN                            R9 0
       12 GETUPVAL                         R10 2
       13 GETTABLEKS                       R10 R10 K12 ["TopBarHeight"]
       15 CALL                             R6 4 1
       16 SETTABLEKS                       R6 R5 K4 ["Size"]
       18 DUPTABLE                         R6 K17 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
       19 GETIMPORT                        R7 K20 [Enum.FillDirection.Horizontal]
       21 SETTABLEKS                       R7 R6 K13 ["FillDirection"]
       23 GETIMPORT                        R7 K22 [Enum.VerticalAlignment.Center]
       25 SETTABLEKS                       R7 R6 K14 ["VerticalAlignment"]
       27 GETIMPORT                        R7 K23 [Enum.SortOrder.LayoutOrder]
       29 SETTABLEKS                       R7 R6 K15 ["SortOrder"]
       31 GETIMPORT                        R7 K25 [UDim.new]
       33 LOADN                            R8 0
       34 LOADN                            R9 8
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K16 ["Padding"]
       38 SETTABLEKS                       R6 R5 K7 ["layout"]
       40 DUPTABLE                         R6 K29 [{"Title", "FlagButton", "CloseButton"}]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K0 ["createElement"]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K30 ["Text"]
       47 DUPTABLE                         R9 K35 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-title-medium text-align-x-left text-truncate-end content-emphasis", ["testId"] = "details-drawer-title"}]
       48 SETTABLEKS                       R0 R9 K30 ["Text"]
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K26 ["Title"]
       53 JUMPIFNOT                        R1 ; [+41]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K0 ["createElement"]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K36 ["IconButton"]
       60 DUPTABLE                         R9 K42 [{["LayoutOrder"] = 2, ["onActivated"], ["icon"], ["variant"], ["size"], ["testId"] = "details-drawer-report-button"}]
       61 NEWCLOSURE                       R10 P0
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R10 R9 K37 ["onActivated"]
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K43 ["Enums"]
       69 GETTABLEKS                       R10 R10 K44 ["IconName"]
       71 GETTABLEKS                       R10 R10 K45 ["Flag"]
       73 SETTABLEKS                       R10 R9 K38 ["icon"]
       75 GETUPVAL                         R10 1
       76 GETTABLEKS                       R10 R10 K43 ["Enums"]
       78 GETTABLEKS                       R10 R10 K46 ["ButtonVariant"]
       80 GETTABLEKS                       R10 R10 K47 ["Utility"]
       82 SETTABLEKS                       R10 R9 K39 ["variant"]
       84 GETUPVAL                         R10 1
       85 GETTABLEKS                       R10 R10 K43 ["Enums"]
       87 GETTABLEKS                       R10 R10 K48 ["InputSize"]
       89 GETTABLEKS                       R10 R10 K49 ["XSmall"]
       91 SETTABLEKS                       R10 R9 K40 ["size"]
       93 CALL                             R7 2 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R7
       96 SETTABLEKS                       R7 R6 K27 ["FlagButton"]
       98 GETUPVAL                         R7 0
       99 GETTABLEKS                       R7 R7 K0 ["createElement"]
      101 GETUPVAL                         R8 1
      102 GETTABLEKS                       R8 R8 K36 ["IconButton"]
      104 DUPTABLE                         R9 K52 [{["LayoutOrder"] = 3, ["onActivated"], ["icon"], ["variant"], ["size"], ["testId"] = "details-drawer-close-button"}]
      105 SETTABLEKS                       R2 R9 K37 ["onActivated"]
      107 GETUPVAL                         R10 1
      108 GETTABLEKS                       R10 R10 K43 ["Enums"]
      110 GETTABLEKS                       R10 R10 K44 ["IconName"]
      112 GETTABLEKS                       R10 R10 K49 ["XSmall"]
      114 SETTABLEKS                       R10 R9 K38 ["icon"]
      116 GETUPVAL                         R10 1
      117 GETTABLEKS                       R10 R10 K43 ["Enums"]
      119 GETTABLEKS                       R10 R10 K46 ["ButtonVariant"]
      121 GETTABLEKS                       R10 R10 K47 ["Utility"]
      123 SETTABLEKS                       R10 R9 K39 ["variant"]
      125 GETUPVAL                         R10 1
      126 GETTABLEKS                       R10 R10 K43 ["Enums"]
      128 GETTABLEKS                       R10 R10 K48 ["InputSize"]
      130 GETTABLEKS                       R10 R10 K49 ["XSmall"]
      132 SETTABLEKS                       R10 R9 K40 ["size"]
      134 CALL                             R7 2 1
      135 SETTABLEKS                       R7 R6 K28 ["CloseButton"]
      137 CALL                             R3 3 -1
      138 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["View"]
        6 DUPTABLE                         R4 K8 [{["LayoutOrder"] = 5, ["tag"] = "col size-full-0 auto-y padding-x-medium padding-y-small", ["testId"] = "details-drawer-footer"}]
        7 DUPTABLE                         R5 K10 [{"ManageSharing"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K0 ["createElement"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K11 ["Button"]
       14 DUPTABLE                         R8 K18 [{["text"], ["variant"], ["size"], ["width"], ["onActivated"], ["testId"] = "details-drawer-manage-sharing"}]
       15 LOADK                            R11 K19 ["AssetPermission"]
       16 LOADK                            R12 K9 ["ManageSharing"]
       17 NAMECALL                         R9 R1 K20 ["getText"]
       19 CALL                             R9 3 1
       20 SETTABLEKS                       R9 R8 K12 ["text"]
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K21 ["Enums"]
       25 GETTABLEKS                       R9 R9 K22 ["ButtonVariant"]
       27 GETTABLEKS                       R9 R9 K23 ["Standard"]
       29 SETTABLEKS                       R9 R8 K13 ["variant"]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K21 ["Enums"]
       34 GETTABLEKS                       R9 R9 K24 ["InputSize"]
       36 GETTABLEKS                       R9 R9 K25 ["Small"]
       38 SETTABLEKS                       R9 R8 K14 ["size"]
       40 GETIMPORT                        R9 K28 [UDim.new]
       42 LOADN                            R10 1
       43 LOADN                            R11 0
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K15 ["width"]
       47 SETTABLEKS                       R0 R8 K16 ["onActivated"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K9 ["ManageSharing"]
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setDetailsDrawerFrame"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDetailsDrawer"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["adjustCompactDrawerHeight"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["DetailsDrawer"]
        6 NAMECALL                         R0 R0 K2 ["handleMouse1Down"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["UiZone"]
       13 GETTABLEKS                       R2 R2 K1 ["DetailsDrawer"]
       15 NAMECALL                         R0 R0 K3 ["handleMouse1Up"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 GETUPVAL                         R3 4
        6 NEWTABLE                         R4 0 1
        8 GETUPVAL                         R5 0
        9 SETLIST                          R4 R5 1 [1]
       11 CALL                             R0 4 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K0 ["use"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R7 6
       25 CALL                             R7 0 1
       26 GETUPVAL                         R8 7
       27 CALL                             R8 0 1
       28 GETUPVAL                         R9 8
       29 GETTABLEKS                       R9 R9 K1 ["count"]
       31 MOVE                             R10 R8
       32 CALL                             R9 1 1
       33 JUMPIFNOTEQKN                    R9 K2 [1] ; [+6]
       35 GETIMPORT                        R10 K4 [next]
       37 MOVE                             R11 R8
       38 CALL                             R10 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R10
       41 JUMPIFNOT                        R10 ; [+5]
       42 MOVE                             R13 R10
       43 NAMECALL                         R11 R2 K5 ["getItemInfo"]
       45 CALL                             R11 2 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R11
       48 LOADN                            R13 1
       49 JUMPIFNOTLT                      R13 R9 ; [+6]
       51 GETUPVAL                         R12 9
       52 MOVE                             R13 R2
       53 MOVE                             R14 R8
       54 CALL                             R12 2 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R12
       57 GETUPVAL                         R13 10
       58 MOVE                             R14 R10
       59 CALL                             R13 1 2
       60 GETTABLEKS                       R15 R0 K6 ["isCompactOverlay"]
       62 GETUPVAL                         R16 11
       63 GETTABLEKS                       R16 R16 K7 ["useCallback"]
       65 NEWCLOSURE                       R17 P0
       66 CAPTURE                          VAL R1
       67 NEWTABLE                         R18 0 0
       69 CALL                             R16 2 1
       70 GETUPVAL                         R17 11
       71 GETTABLEKS                       R17 R17 K7 ["useCallback"]
       73 NEWCLOSURE                       R18 P1
       74 CAPTURE                          VAL R1
       75 NEWTABLE                         R19 0 0
       77 CALL                             R17 2 1
       78 GETUPVAL                         R18 11
       79 GETTABLEKS                       R18 R18 K7 ["useCallback"]
       81 NEWCLOSURE                       R19 P2
       82 CAPTURE                          VAL R1
       83 NEWTABLE                         R20 0 0
       85 CALL                             R18 2 1
       86 GETUPVAL                         R19 11
       87 GETTABLEKS                       R19 R19 K7 ["useCallback"]
       89 NEWCLOSURE                       R20 P3
       90 CAPTURE                          VAL R3
       91 CAPTURE                          UPVAL U12
       92 NEWTABLE                         R21 0 0
       94 CALL                             R19 2 1
       95 NEWCLOSURE                       R20 P4
       96 CAPTURE                          VAL R10
       97 CAPTURE                          UPVAL U13
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 JUMPIFNOT                        R12 ; [+14]
      102 LOADK                            R23 K8 ["AssetProperty"]
      103 LOADK                            R24 K9 ["AssetsSelected"]
      104 DUPTABLE                         R25 K10 [{"count"}]
      105 FASTCALL1                        TOSTRING R9 ; [+3]
      106 MOVE                             R27 R9
      107 GETIMPORT                        R26 K12 [tostring]
      109 CALL                             R26 1 1
      110 SETTABLEKS                       R26 R25 K1 ["count"]
      112 NAMECALL                         R21 R6 K13 ["getText"]
      114 CALL                             R21 4 1
      115 JUMP                             ; [+9]
      116 JUMPIFNOT                        R11 ; [+3]
      117 GETTABLEKS                       R21 R11 K14 ["DisplayName"]
      119 JUMP                             ; [+5]
      120 LOADK                            R23 K15 ["ContextMenu"]
      121 LOADK                            R24 K16 ["ViewDetails"]
      122 NAMECALL                         R21 R6 K13 ["getText"]
      124 CALL                             R21 3 1
      125 LOADB                            R22 0
      126 JUMPIFEQKNIL                     R11 ; [+12]
      128 GETTABLEKS                       R23 R11 K17 ["AssetType"]
      130 GETUPVAL                         R24 12
      131 GETTABLEKS                       R24 R24 K17 ["AssetType"]
      133 GETTABLEKS                       R24 R24 K18 ["Folder"]
      135 JUMPIFEQ                         R23 R24 ; [+2]
      137 LOADB                            R22 0 +1
      138 LOADB                            R22 1
      139 LOADB                            R23 0
      140 JUMPIFEQKNIL                     R11 ; [+12]
      142 GETTABLEKS                       R24 R11 K19 ["Source"]
      144 GETUPVAL                         R25 12
      145 GETTABLEKS                       R25 R25 K20 ["AssetSource"]
      147 GETTABLEKS                       R25 R25 K21 ["Uploaded"]
      149 JUMPIFEQ                         R24 R25 ; [+2]
      151 LOADB                            R23 0 +1
      152 LOADB                            R23 1
      153 LOADB                            R24 0
      154 JUMPIFEQKNIL                     R10 ; [+5]
      156 MOVE                             R26 R10
      157 NAMECALL                         R24 R2 K22 ["canFetchAssetSharing"]
      159 CALL                             R24 2 1
      160 GETUPVAL                         R25 14
      161 MOVE                             R26 R10
      162 CALL                             R25 1 2
      163 JUMPIFNOT                        R11 ; [+6]
      164 JUMPIF                           R12 ; [+5]
      165 JUMPIF                           R23 ; [+4]
      166 JUMPIF                           R22 ; [+3]
      167 GETTABLEKS                       R27 R11 K23 ["AssetId"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R27
      171 DUPTABLE                         R28 K26 [{"Header", "HeaderDivider"}]
      172 GETUPVAL                         R29 15
      173 MOVE                             R30 R21
      174 MOVE                             R31 R27
      175 MOVE                             R32 R17
      176 CALL                             R29 3 1
      177 SETTABLEKS                       R29 R28 K24 ["Header"]
      179 GETUPVAL                         R29 11
      180 GETTABLEKS                       R29 R29 K27 ["createElement"]
      182 GETUPVAL                         R30 16
      183 GETTABLEKS                       R30 R30 K28 ["Divider"]
      185 DUPTABLE                         R31 K32 [{["LayoutOrder"] = 3, ["orientation"]}]
      186 GETUPVAL                         R32 16
      187 GETTABLEKS                       R32 R32 K33 ["Enums"]
      189 GETTABLEKS                       R32 R32 K34 ["DividerOrientation"]
      191 GETTABLEKS                       R32 R32 K35 ["Horizontal"]
      193 SETTABLEKS                       R32 R31 K31 ["orientation"]
      195 CALL                             R29 2 1
      196 SETTABLEKS                       R29 R28 K25 ["HeaderDivider"]
      198 JUMPIFNOT                        R12 ; [+11]
      199 GETUPVAL                         R29 11
      200 GETTABLEKS                       R29 R29 K27 ["createElement"]
      202 GETUPVAL                         R30 17
      203 DUPTABLE                         R31 K38 [{["LayoutOrder"] = 4, ["Assets"]}]
      204 SETTABLEKS                       R12 R31 K37 ["Assets"]
      206 CALL                             R29 2 1
      207 SETTABLEKS                       R29 R28 K39 ["Body"]
      209 JUMP                             ; [+28]
      210 JUMPIFNOT                        R11 ; [+27]
      211 GETUPVAL                         R29 11
      212 GETTABLEKS                       R29 R29 K27 ["createElement"]
      214 GETUPVAL                         R30 18
      215 DUPTABLE                         R31 K46 [{["LayoutOrder"] = 4, ["Asset"], ["TechnicalDetails"], ["IsLoadingTechnicalDetails"], ["ShowAccessPolicy"], ["Sharing"], ["IsLoadingSharing"]}]
      216 SETTABLEKS                       R11 R31 K40 ["Asset"]
      218 SETTABLEKS                       R13 R31 K41 ["TechnicalDetails"]
      220 SETTABLEKS                       R14 R31 K42 ["IsLoadingTechnicalDetails"]
      222 SETTABLEKS                       R24 R31 K43 ["ShowAccessPolicy"]
      224 SETTABLEKS                       R25 R31 K44 ["Sharing"]
      226 SETTABLEKS                       R26 R31 K45 ["IsLoadingSharing"]
      228 CALL                             R29 2 1
      229 SETTABLEKS                       R29 R28 K39 ["Body"]
      231 JUMPIFNOT                        R24 ; [+6]
      232 GETUPVAL                         R29 19
      233 MOVE                             R30 R20
      234 MOVE                             R31 R6
      235 CALL                             R29 2 1
      236 SETTABLEKS                       R29 R28 K47 ["Footer"]
      238 JUMPIFNOT                        R15 ; [+19]
      239 GETUPVAL                         R29 11
      240 GETTABLEKS                       R29 R29 K27 ["createElement"]
      242 GETUPVAL                         R30 20
      243 DUPTABLE                         R31 K49 [{["LayoutOrder"] = 1, ["orientation"], ["OnResize"]}]
      244 GETUPVAL                         R32 16
      245 GETTABLEKS                       R32 R32 K33 ["Enums"]
      247 GETTABLEKS                       R32 R32 K50 ["Orientation"]
      249 GETTABLEKS                       R32 R32 K35 ["Horizontal"]
      251 SETTABLEKS                       R32 R31 K31 ["orientation"]
      253 SETTABLEKS                       R18 R31 K48 ["OnResize"]
      255 CALL                             R29 2 1
      256 SETTABLEKS                       R29 R28 K51 ["ResizeHandle"]
      258 GETUPVAL                         R29 11
      259 GETTABLEKS                       R29 R29 K27 ["createElement"]
      261 GETUPVAL                         R30 16
      262 GETTABLEKS                       R30 R30 K52 ["View"]
      264 DUPTABLE                         R31 K57 [{["tag"] = "col size-full bg-surface-100", ["testId"] = "details-drawer"}]
      265 MOVE                             R32 R28
      266 CALL                             R29 3 1
      267 JUMPIF                           R15 ; [+1]
      268 RETURN                           R29 1
      269 GETUPVAL                         R30 11
      270 GETTABLEKS                       R30 R30 K27 ["createElement"]
      272 GETUPVAL                         R31 16
      273 GETTABLEKS                       R31 R31 K52 ["View"]
      275 DUPTABLE                         R32 K64 [{["ref"], ["Size"], ["Position"], ["ZIndex"] = 10, ["testId"] = "details-drawer-overlay"}]
      276 SETTABLEKS                       R16 R32 K58 ["ref"]
      278 GETIMPORT                        R33 K67 [UDim2.fromScale]
      280 LOADN                            R34 1
      281 MOVE                             R35 R7
      282 CALL                             R33 2 1
      283 SETTABLEKS                       R33 R32 K59 ["Size"]
      285 GETIMPORT                        R33 K67 [UDim2.fromScale]
      287 LOADN                            R34 0
      288 SUBRK                            R35 K2 [1] R7
      289 CALL                             R33 2 1
      290 SETTABLEKS                       R33 R32 K60 ["Position"]
      292 DUPTABLE                         R33 K69 [{"Hit"}]
      293 GETUPVAL                         R34 11
      294 GETTABLEKS                       R34 R34 K27 ["createElement"]
      296 GETUPVAL                         R35 16
      297 GETTABLEKS                       R35 R35 K70 ["Image"]
      299 DUPTABLE                         R36 K74 [{["tag"] = "size-full", ["onActivated"], ["stateLayer"]}]
      300 SETTABLEKS                       R19 R36 K72 ["onActivated"]
      302 DUPTABLE                         R37 K76 [{"affordance"}]
      303 GETUPVAL                         R38 16
      304 GETTABLEKS                       R38 R38 K33 ["Enums"]
      306 GETTABLEKS                       R38 R38 K77 ["StateLayerAffordance"]
      308 GETTABLEKS                       R38 R38 K78 ["None"]
      310 SETTABLEKS                       R38 R37 K75 ["affordance"]
      312 SETTABLEKS                       R37 R36 K73 ["stateLayer"]
      314 DUPTABLE                         R37 K80 [{"Drawer"}]
      315 SETTABLEKS                       R29 R37 K79 ["Drawer"]
      317 CALL                             R34 3 1
      318 SETTABLEKS                       R34 R33 K68 ["Hit"]
      320 CALL                             R30 3 -1
      321 RETURN                           R30 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETIMPORT                        R6 K5 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R7 R7 K12 ["Parent"]
       43 GETTABLEKS                       R7 R7 K13 ["ResizeDivider"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R8 R8 K14 ["SingleAsset"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R9 R9 K15 ["MultiSelect"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R10 R0 K16 ["Src"]
       64 GETTABLEKS                       R10 R10 K17 ["Controllers"]
       66 GETTABLEKS                       R10 R10 K18 ["Input"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K16 ["Src"]
       73 GETTABLEKS                       R11 R11 K17 ["Controllers"]
       75 GETTABLEKS                       R11 R11 K19 ["ItemsController"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R12 R0 K16 ["Src"]
       82 GETTABLEKS                       R12 R12 K17 ["Controllers"]
       84 GETTABLEKS                       R12 R12 K20 ["LayoutController"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K5 [require]
       89 GETTABLEKS                       R13 R0 K16 ["Src"]
       91 GETTABLEKS                       R13 R13 K17 ["Controllers"]
       93 GETTABLEKS                       R13 R13 K21 ["PluginController"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K5 [require]
       98 GETTABLEKS                       R14 R0 K16 ["Src"]
      100 GETTABLEKS                       R14 R14 K22 ["Networking"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K5 [require]
      105 GETTABLEKS                       R15 R0 K16 ["Src"]
      107 GETTABLEKS                       R15 R15 K23 ["Resources"]
      109 GETTABLEKS                       R15 R15 K24 ["StyleConstants"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K5 [require]
      114 GETTABLEKS                       R16 R0 K16 ["Src"]
      116 GETTABLEKS                       R16 R16 K25 ["Types"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K5 [require]
      121 GETTABLEKS                       R17 R0 K16 ["Src"]
      123 GETTABLEKS                       R17 R17 K26 ["Util"]
      125 GETTABLEKS                       R17 R17 K27 ["Dialogs"]
      127 GETTABLEKS                       R17 R17 K28 ["openQuickShare"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K5 [require]
      132 GETTABLEKS                       R18 R0 K16 ["Src"]
      134 GETTABLEKS                       R18 R18 K26 ["Util"]
      136 GETTABLEKS                       R18 R18 K29 ["reportInBrowser"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K5 [require]
      141 GETTABLEKS                       R19 R0 K16 ["Src"]
      143 GETTABLEKS                       R19 R19 K30 ["Hooks"]
      145 GETTABLEKS                       R19 R19 K31 ["useCompactDrawerHeight"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R20 R0 K16 ["Src"]
      152 GETTABLEKS                       R20 R20 K30 ["Hooks"]
      154 GETTABLEKS                       R20 R20 K32 ["useItemSelection"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K5 [require]
      159 GETTABLEKS                       R21 R0 K16 ["Src"]
      161 GETTABLEKS                       R21 R21 K30 ["Hooks"]
      163 GETTABLEKS                       R21 R21 K33 ["useAssetTechnicalDetails"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K5 [require]
      168 GETTABLEKS                       R22 R0 K16 ["Src"]
      170 GETTABLEKS                       R22 R22 K30 ["Hooks"]
      172 GETTABLEKS                       R22 R22 K34 ["useAssetSharing"]
      174 CALL                             R21 1 1
      175 GETTABLEKS                       R22 R5 K35 ["Localization"]
      177 DUPCLOSURE                       R23 K36 [PROTO_0]
      178 DUPCLOSURE                       R24 K37 [PROTO_2]
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R17
      183 DUPCLOSURE                       R25 K38 [PROTO_3]
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R3
      186 DUPCLOSURE                       R26 K39 [PROTO_9]
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R22
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R19
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R20
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R6
      208 RETURN                           R26 1
