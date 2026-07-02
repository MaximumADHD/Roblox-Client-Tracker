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
       42 GETUPVAL                         R8 6
       43 CALL                             R8 0 1
       44 GETTABLEN                        R7 R8 2
       45 GETTABLEKS                       R7 R7 K8 ["Offset"]
       47 GETIMPORT                        R8 K11 [UDim2.fromOffset]
       49 MOVE                             R9 R7
       50 GETTABLEKS                       R10 R0 K12 ["Size"]
       52 GETTABLEKS                       R10 R10 K13 ["Y"]
       54 GETTABLEKS                       R10 R10 K8 ["Offset"]
       56 CALL                             R8 2 1
       57 GETUPVAL                         R9 7
       58 GETTABLEKS                       R9 R9 K14 ["createElement"]
       60 GETUPVAL                         R10 8
       61 GETTABLEKS                       R10 R10 K15 ["View"]
       63 DUPTABLE                         R11 K19 [{["Size"], ["Position"], ["tag"] = "row gap-small"}]
       64 SETTABLEKS                       R8 R11 K12 ["Size"]
       66 GETTABLEKS                       R12 R0 K16 ["Position"]
       68 SETTABLEKS                       R12 R11 K16 ["Position"]
       70 DUPTABLE                         R12 K21 [{"Text", "SeeAllButton"}]
       71 GETUPVAL                         R13 7
       72 GETTABLEKS                       R13 R13 K14 ["createElement"]
       74 GETUPVAL                         R14 8
       75 GETTABLEKS                       R14 R14 K2 ["Text"]
       77 DUPTABLE                         R15 K25 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "align-y-center size-0-full auto-x padding-left-xsmall text-title-small text-align-x-left text-align-y-center text-truncate-end content-emphasis"}]
       78 SETTABLEKS                       R6 R15 K2 ["Text"]
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R12 K2 ["Text"]
       83 MOVE                             R13 R5
       84 JUMPIFNOT                        R13 ; [+42]
       85 LOADB                            R13 0
       86 JUMPIFEQKNIL                     R3 ; [+40]
       88 GETUPVAL                         R13 7
       89 GETTABLEKS                       R13 R13 K14 ["createElement"]
       91 GETUPVAL                         R14 8
       92 GETTABLEKS                       R14 R14 K2 ["Text"]
       94 DUPTABLE                         R15 K32 [{["LayoutOrder"] = 2, ["Text"], ["onActivated"], ["stateLayer"], ["tag"] = "size-0-full auto-x text-label-small text-align-x-right text-align-y-center content-link", ["testId"] = "see-all-button"}]
       95 JUMPIFNOT                        R3 ; [+6]
       96 LOADK                            R18 K33 ["Section"]
       97 LOADK                            R19 K34 ["SeeLess"]
       98 NAMECALL                         R16 R1 K6 ["getText"]
      100 CALL                             R16 3 1
      101 JUMP                             ; [+5]
      102 LOADK                            R18 K33 ["Section"]
      103 LOADK                            R19 K35 ["SeeAll"]
      104 NAMECALL                         R16 R1 K6 ["getText"]
      106 CALL                             R16 3 1
      107 SETTABLEKS                       R16 R15 K2 ["Text"]
      109 NEWCLOSURE                       R16 P0
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R3
      112 SETTABLEKS                       R16 R15 K27 ["onActivated"]
      114 DUPTABLE                         R16 K37 [{"affordance"}]
      115 GETUPVAL                         R17 8
      116 GETTABLEKS                       R17 R17 K38 ["Enums"]
      118 GETTABLEKS                       R17 R17 K39 ["StateLayerAffordance"]
      120 GETTABLEKS                       R17 R17 K40 ["None"]
      122 SETTABLEKS                       R17 R16 K36 ["affordance"]
      124 SETTABLEKS                       R16 R15 K28 ["stateLayer"]
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K20 ["SeeAllButton"]
      129 CALL                             R9 3 -1
      130 RETURN                           R9 -1

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
       43 GETTABLEKS                       R8 R8 K14 ["Hooks"]
       45 GETTABLEKS                       R8 R8 K15 ["useAppSizes"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K12 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Hooks"]
       54 GETTABLEKS                       R9 R9 K16 ["useSearchInfo"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K14 ["Hooks"]
       63 GETTABLEKS                       R10 R10 K17 ["useSearchSections"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K18 ["Controllers"]
       72 GETTABLEKS                       R11 R11 K19 ["ItemsController"]
       74 CALL                             R10 1 1
       75 NEWTABLE                         R11 16 0
       77 GETTABLEKS                       R12 R6 K20 ["AssetType"]
       79 GETTABLEKS                       R12 R12 K21 ["Animation"]
       81 LOADK                            R13 K22 ["Animations"]
       82 SETTABLE                         R13 R11 R12
       83 GETTABLEKS                       R12 R6 K20 ["AssetType"]
       85 GETTABLEKS                       R12 R12 K23 ["Audio"]
       87 LOADK                            R13 K24 ["Audios"]
       88 SETTABLE                         R13 R11 R12
       89 GETTABLEKS                       R12 R6 K20 ["AssetType"]
       91 GETTABLEKS                       R12 R12 K25 ["Decal"]
       93 LOADK                            R13 K26 ["Decals"]
       94 SETTABLE                         R13 R11 R12
       95 GETTABLEKS                       R12 R6 K20 ["AssetType"]
       97 GETTABLEKS                       R12 R12 K27 ["FontFamily"]
       99 LOADK                            R13 K28 ["FontFamilies"]
      100 SETTABLE                         R13 R11 R12
      101 GETTABLEKS                       R12 R6 K20 ["AssetType"]
      103 GETTABLEKS                       R12 R12 K29 ["Image"]
      105 LOADK                            R13 K30 ["Images"]
      106 SETTABLE                         R13 R11 R12
      107 GETTABLEKS                       R12 R6 K20 ["AssetType"]
      109 GETTABLEKS                       R12 R12 K31 ["MeshPart"]
      111 LOADK                            R13 K32 ["MeshParts"]
      112 SETTABLE                         R13 R11 R12
      113 GETTABLEKS                       R12 R6 K20 ["AssetType"]
      115 GETTABLEKS                       R12 R12 K33 ["Mesh"]
      117 LOADK                            R13 K34 ["Meshes"]
      118 SETTABLE                         R13 R11 R12
      119 GETTABLEKS                       R12 R6 K20 ["AssetType"]
      121 GETTABLEKS                       R12 R12 K35 ["Model"]
      123 LOADK                            R13 K36 ["Models"]
      124 SETTABLE                         R13 R11 R12
      125 GETTABLEKS                       R12 R6 K20 ["AssetType"]
      127 GETTABLEKS                       R12 R12 K37 ["Place"]
      129 LOADK                            R13 K38 ["Places"]
      130 SETTABLE                         R13 R11 R12
      131 GETTABLEKS                       R12 R6 K20 ["AssetType"]
      133 GETTABLEKS                       R12 R12 K39 ["Plugin"]
      135 LOADK                            R13 K40 ["Plugins"]
      136 SETTABLE                         R13 R11 R12
      137 GETTABLEKS                       R12 R6 K20 ["AssetType"]
      139 GETTABLEKS                       R12 R12 K41 ["Video"]
      141 LOADK                            R13 K42 ["Videos"]
      142 SETTABLE                         R13 R11 R12
      143 GETTABLEKS                       R12 R6 K20 ["AssetType"]
      145 GETTABLEKS                       R12 R12 K43 ["Folder"]
      147 LOADK                            R13 K44 ["Folders"]
      148 SETTABLE                         R13 R11 R12
      149 DUPCLOSURE                       R12 K45 [PROTO_1]
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R2
      159 RETURN                           R12 1
