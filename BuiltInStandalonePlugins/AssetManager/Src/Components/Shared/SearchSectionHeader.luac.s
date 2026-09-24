PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 NOT                              R2 R3
        3 NAMECALL                         R0 R0 K0 ["setShowAllSearchFolders"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R3 R3 K1 ["SeeAllFolders"]
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETTABLEKS                       R6 R0 K2 ["Text"]
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R7 R7 K3 ["AssetType"]
       19 GETTABLEKS                       R7 R7 K4 ["Folder"]
       21 JUMPIFEQ                         R6 R7 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 JUMPIFNOT                        R5 ; [+6]
       26 LOADK                            R8 K3 ["AssetType"]
       27 LOADK                            R9 K5 ["Folders"]
       28 NAMECALL                         R6 R1 K6 ["getText"]
       30 CALL                             R6 3 1
       31 JUMP                             ; [+10]
       32 LOADK                            R8 K3 ["AssetType"]
       33 GETUPVAL                         R10 5
       34 GETTABLEKS                       R11 R4 K7 ["SearchOptions"]
       36 GETTABLEKS                       R11 R11 K3 ["AssetType"]
       38 GETTABLE                         R9 R10 R11
       39 NAMECALL                         R6 R1 K6 ["getText"]
       41 CALL                             R6 3 1
       42 GETUPVAL                         R7 6
       43 CALL                             R7 0 1
       44 GETUPVAL                         R9 7
       45 CALL                             R9 0 1
       46 JUMPIFNOT                        R9 ; [+13]
       47 GETIMPORT                        R8 K10 [UDim2.new]
       49 LOADN                            R9 1
       50 LOADN                            R10 0
       51 LOADN                            R11 0
       52 GETTABLEKS                       R12 R0 K11 ["Size"]
       54 GETTABLEKS                       R12 R12 K12 ["Y"]
       56 GETTABLEKS                       R12 R12 K13 ["Offset"]
       58 CALL                             R8 4 1
       59 JUMP                             ; [+12]
       60 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       62 GETTABLEN                        R9 R7 2
       63 GETTABLEKS                       R9 R9 K13 ["Offset"]
       65 GETTABLEKS                       R10 R0 K11 ["Size"]
       67 GETTABLEKS                       R10 R10 K12 ["Y"]
       69 GETTABLEKS                       R10 R10 K13 ["Offset"]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R9 8
       73 GETTABLEKS                       R9 R9 K16 ["createElement"]
       75 GETUPVAL                         R10 9
       76 GETTABLEKS                       R10 R10 K17 ["View"]
       78 DUPTABLE                         R11 K21 [{["Size"], ["Position"], ["tag"] = "row gap-small"}]
       79 SETTABLEKS                       R8 R11 K11 ["Size"]
       81 GETTABLEKS                       R12 R0 K18 ["Position"]
       83 SETTABLEKS                       R12 R11 K18 ["Position"]
       85 DUPTABLE                         R12 K23 [{"Text", "SeeAllButton"}]
       86 GETUPVAL                         R13 8
       87 GETTABLEKS                       R13 R13 K16 ["createElement"]
       89 GETUPVAL                         R14 9
       90 GETTABLEKS                       R14 R14 K2 ["Text"]
       92 DUPTABLE                         R15 K27 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "align-y-center size-0-full auto-x padding-left-xsmall text-title-small text-align-x-left text-align-y-center text-truncate-end content-emphasis"}]
       93 SETTABLEKS                       R6 R15 K2 ["Text"]
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K2 ["Text"]
       98 MOVE                             R13 R5
       99 JUMPIFNOT                        R13 ; [+42]
      100 LOADB                            R13 0
      101 JUMPIFEQKNIL                     R3 ; [+40]
      103 GETUPVAL                         R13 8
      104 GETTABLEKS                       R13 R13 K16 ["createElement"]
      106 GETUPVAL                         R14 9
      107 GETTABLEKS                       R14 R14 K2 ["Text"]
      109 DUPTABLE                         R15 K34 [{["LayoutOrder"] = 2, ["Text"], ["onActivated"], ["stateLayer"], ["tag"] = "size-0-full auto-x text-label-small text-align-x-right text-align-y-center content-link", ["testId"] = "see-all-button"}]
      110 JUMPIFNOT                        R3 ; [+6]
      111 LOADK                            R18 K35 ["Section"]
      112 LOADK                            R19 K36 ["SeeLess"]
      113 NAMECALL                         R16 R1 K6 ["getText"]
      115 CALL                             R16 3 1
      116 JUMP                             ; [+5]
      117 LOADK                            R18 K35 ["Section"]
      118 LOADK                            R19 K37 ["SeeAll"]
      119 NAMECALL                         R16 R1 K6 ["getText"]
      121 CALL                             R16 3 1
      122 SETTABLEKS                       R16 R15 K2 ["Text"]
      124 NEWCLOSURE                       R16 P0
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R3
      127 SETTABLEKS                       R16 R15 K29 ["onActivated"]
      129 DUPTABLE                         R16 K39 [{"affordance"}]
      130 GETUPVAL                         R17 9
      131 GETTABLEKS                       R17 R17 K40 ["Enums"]
      133 GETTABLEKS                       R17 R17 K41 ["StateLayerAffordance"]
      135 GETTABLEKS                       R17 R17 K42 ["None"]
      137 SETTABLEKS                       R17 R16 K38 ["affordance"]
      139 SETTABLEKS                       R16 R15 K30 ["stateLayer"]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K22 ["SeeAllButton"]
      144 CALL                             R9 3 -1
      145 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Types"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Flags"]
       45 GETTABLEKS                       R8 R8 K15 ["getFFlagAmrFlexPaneSizing"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K12 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       54 GETTABLEKS                       R9 R9 K17 ["useAppSizes"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       63 GETTABLEKS                       R10 R10 K18 ["useSearchInfo"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K16 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K19 ["useSearchSections"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R12 K20 ["Controllers"]
       81 GETTABLEKS                       R12 R12 K21 ["ItemsController"]
       83 CALL                             R11 1 1
       84 NEWTABLE                         R12 16 0
       86 GETTABLEKS                       R13 R6 K22 ["AssetType"]
       88 GETTABLEKS                       R13 R13 K23 ["Animation"]
       90 LOADK                            R14 K24 ["Animations"]
       91 SETTABLE                         R14 R12 R13
       92 GETTABLEKS                       R13 R6 K22 ["AssetType"]
       94 GETTABLEKS                       R13 R13 K25 ["Audio"]
       96 LOADK                            R14 K26 ["Audios"]
       97 SETTABLE                         R14 R12 R13
       98 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      100 GETTABLEKS                       R13 R13 K27 ["Decal"]
      102 LOADK                            R14 K28 ["Decals"]
      103 SETTABLE                         R14 R12 R13
      104 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      106 GETTABLEKS                       R13 R13 K29 ["FontFamily"]
      108 LOADK                            R14 K30 ["FontFamilies"]
      109 SETTABLE                         R14 R12 R13
      110 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      112 GETTABLEKS                       R13 R13 K31 ["Image"]
      114 LOADK                            R14 K32 ["Images"]
      115 SETTABLE                         R14 R12 R13
      116 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      118 GETTABLEKS                       R13 R13 K33 ["MeshPart"]
      120 LOADK                            R14 K34 ["MeshParts"]
      121 SETTABLE                         R14 R12 R13
      122 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      124 GETTABLEKS                       R13 R13 K35 ["Mesh"]
      126 LOADK                            R14 K36 ["Meshes"]
      127 SETTABLE                         R14 R12 R13
      128 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      130 GETTABLEKS                       R13 R13 K37 ["Model"]
      132 LOADK                            R14 K38 ["Models"]
      133 SETTABLE                         R14 R12 R13
      134 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      136 GETTABLEKS                       R13 R13 K39 ["Place"]
      138 LOADK                            R14 K40 ["Places"]
      139 SETTABLE                         R14 R12 R13
      140 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      142 GETTABLEKS                       R13 R13 K41 ["Plugin"]
      144 LOADK                            R14 K42 ["Plugins"]
      145 SETTABLE                         R14 R12 R13
      146 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      148 GETTABLEKS                       R13 R13 K43 ["Video"]
      150 LOADK                            R14 K44 ["Videos"]
      151 SETTABLE                         R14 R12 R13
      152 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      154 GETTABLEKS                       R13 R13 K45 ["Folder"]
      156 LOADK                            R14 K46 ["Folders"]
      157 SETTABLE                         R14 R12 R13
      158 DUPCLOSURE                       R13 K47 [PROTO_1]
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R2
      169 RETURN                           R13 1
