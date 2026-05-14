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
       63 DUPTABLE                         R11 K18 [{"Size", "Position", "tag"}]
       64 SETTABLEKS                       R8 R11 K12 ["Size"]
       66 GETTABLEKS                       R12 R0 K16 ["Position"]
       68 SETTABLEKS                       R12 R11 K16 ["Position"]
       70 LOADK                            R12 K19 ["row gap-small"]
       71 SETTABLEKS                       R12 R11 K17 ["tag"]
       73 DUPTABLE                         R12 K21 [{"Text", "SeeAllButton"}]
       74 GETUPVAL                         R13 7
       75 GETTABLEKS                       R13 R13 K14 ["createElement"]
       77 GETUPVAL                         R14 8
       78 GETTABLEKS                       R14 R14 K2 ["Text"]
       80 DUPTABLE                         R15 K23 [{"LayoutOrder", "Text", "tag"}]
       81 LOADN                            R16 1
       82 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
       84 SETTABLEKS                       R6 R15 K2 ["Text"]
       86 LOADK                            R16 K24 ["size-0-full auto-x text-align-x-left text-align-y-center align-y-center text-truncate-end text-title-small content-emphasis padding-left-xsmall"]
       87 SETTABLEKS                       R16 R15 K17 ["tag"]
       89 CALL                             R13 2 1
       90 SETTABLEKS                       R13 R12 K2 ["Text"]
       92 MOVE                             R13 R5
       93 JUMPIFNOT                        R13 ; [+48]
       94 LOADB                            R13 0
       95 JUMPIFEQKNIL                     R3 ; [+46]
       97 GETUPVAL                         R13 7
       98 GETTABLEKS                       R13 R13 K14 ["createElement"]
      100 GETUPVAL                         R14 8
      101 GETTABLEKS                       R14 R14 K2 ["Text"]
      103 DUPTABLE                         R15 K27 [{"LayoutOrder", "Text", "onActivated", "stateLayer", "tag"}]
      104 LOADN                            R16 2
      105 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      107 JUMPIFNOT                        R3 ; [+6]
      108 LOADK                            R18 K28 ["Section"]
      109 LOADK                            R19 K29 ["SeeLess"]
      110 NAMECALL                         R16 R1 K6 ["getText"]
      112 CALL                             R16 3 1
      113 JUMP                             ; [+5]
      114 LOADK                            R18 K28 ["Section"]
      115 LOADK                            R19 K30 ["SeeAll"]
      116 NAMECALL                         R16 R1 K6 ["getText"]
      118 CALL                             R16 3 1
      119 SETTABLEKS                       R16 R15 K2 ["Text"]
      121 NEWCLOSURE                       R16 P0
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R3
      124 SETTABLEKS                       R16 R15 K25 ["onActivated"]
      126 DUPTABLE                         R16 K32 [{"affordance"}]
      127 GETUPVAL                         R17 8
      128 GETTABLEKS                       R17 R17 K33 ["Enums"]
      130 GETTABLEKS                       R17 R17 K34 ["StateLayerAffordance"]
      132 GETTABLEKS                       R17 R17 K35 ["None"]
      134 SETTABLEKS                       R17 R16 K31 ["affordance"]
      136 SETTABLEKS                       R16 R15 K26 ["stateLayer"]
      138 LOADK                            R16 K36 ["size-0-full auto-x text-align-y-center text-align-x-right text-label-small content-link data-testid=see-all-button"]
      139 SETTABLEKS                       R16 R15 K17 ["tag"]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K20 ["SeeAllButton"]
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
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R12 K20 ["Flags"]
       81 GETTABLEKS                       R12 R12 K21 ["getFFlagAmrOrganizationFoundation"]
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
      136 GETTABLEKS                       R13 R13 K39 ["Plugin"]
      138 LOADK                            R14 K40 ["Plugins"]
      139 SETTABLE                         R14 R12 R13
      140 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      142 GETTABLEKS                       R13 R13 K41 ["Video"]
      144 LOADK                            R14 K42 ["Videos"]
      145 SETTABLE                         R14 R12 R13
      146 MOVE                             R13 R11
      147 CALL                             R13 0 1
      148 JUMPIFNOT                        R13 ; [+6]
      149 GETTABLEKS                       R13 R6 K22 ["AssetType"]
      151 GETTABLEKS                       R13 R13 K43 ["Folder"]
      153 LOADK                            R14 K44 ["Folders"]
      154 SETTABLE                         R14 R12 R13
      155 DUPCLOSURE                       R13 K45 [PROTO_1]
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R2
      165 RETURN                           R13 1
