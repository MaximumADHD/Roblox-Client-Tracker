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
       14 GETUPVAL                         R6 4
       15 GETUPVAL                         R7 5
       16 GETTABLEKS                       R7 R7 K2 ["IxpVariable"]
       18 GETTABLEKS                       R7 R7 K3 ["Omnisearch"]
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 5
       22 GETTABLEKS                       R7 R7 K4 ["IxpValue"]
       24 GETTABLEKS                       R7 R7 K5 ["Experiment"]
       26 JUMPIFEQ                         R6 R7 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 GETTABLEKS                       R7 R0 K6 ["Text"]
       32 GETUPVAL                         R8 5
       33 GETTABLEKS                       R8 R8 K7 ["AssetType"]
       35 GETTABLEKS                       R8 R8 K8 ["Folder"]
       37 JUMPIFEQ                         R7 R8 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 JUMPIFNOT                        R6 ; [+6]
       42 LOADK                            R9 K7 ["AssetType"]
       43 LOADK                            R10 K9 ["Folders"]
       44 NAMECALL                         R7 R1 K10 ["getText"]
       46 CALL                             R7 3 1
       47 JUMP                             ; [+17]
       48 JUMPIFNOT                        R5 ; [+6]
       49 LOADK                            R9 K7 ["AssetType"]
       50 LOADK                            R10 K11 ["Assets"]
       51 NAMECALL                         R7 R1 K10 ["getText"]
       53 CALL                             R7 3 1
       54 JUMP                             ; [+10]
       55 LOADK                            R9 K7 ["AssetType"]
       56 GETUPVAL                         R11 6
       57 GETTABLEKS                       R12 R4 K12 ["SearchOptions"]
       59 GETTABLEKS                       R12 R12 K7 ["AssetType"]
       61 GETTABLE                         R10 R11 R12
       62 NAMECALL                         R7 R1 K10 ["getText"]
       64 CALL                             R7 3 1
       65 GETUPVAL                         R8 7
       66 CALL                             R8 0 1
       67 GETUPVAL                         R10 8
       68 CALL                             R10 0 1
       69 JUMPIFNOT                        R10 ; [+13]
       70 GETIMPORT                        R9 K15 [UDim2.new]
       72 LOADN                            R10 1
       73 LOADN                            R11 0
       74 LOADN                            R12 0
       75 GETTABLEKS                       R13 R0 K16 ["Size"]
       77 GETTABLEKS                       R13 R13 K17 ["Y"]
       79 GETTABLEKS                       R13 R13 K18 ["Offset"]
       81 CALL                             R9 4 1
       82 JUMP                             ; [+12]
       83 GETIMPORT                        R9 K20 [UDim2.fromOffset]
       85 GETTABLEN                        R10 R8 2
       86 GETTABLEKS                       R10 R10 K18 ["Offset"]
       88 GETTABLEKS                       R11 R0 K16 ["Size"]
       90 GETTABLEKS                       R11 R11 K17 ["Y"]
       92 GETTABLEKS                       R11 R11 K18 ["Offset"]
       94 CALL                             R9 2 1
       95 GETUPVAL                         R10 9
       96 GETTABLEKS                       R10 R10 K21 ["createElement"]
       98 GETUPVAL                         R11 10
       99 GETTABLEKS                       R11 R11 K22 ["View"]
      101 DUPTABLE                         R12 K26 [{["Size"], ["Position"], ["tag"] = "row gap-small"}]
      102 SETTABLEKS                       R9 R12 K16 ["Size"]
      104 GETTABLEKS                       R13 R0 K23 ["Position"]
      106 SETTABLEKS                       R13 R12 K23 ["Position"]
      108 DUPTABLE                         R13 K28 [{"Text", "SeeAllButton"}]
      109 GETUPVAL                         R14 9
      110 GETTABLEKS                       R14 R14 K21 ["createElement"]
      112 GETUPVAL                         R15 10
      113 GETTABLEKS                       R15 R15 K6 ["Text"]
      115 DUPTABLE                         R16 K32 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "align-y-center size-0-full auto-x padding-left-xsmall text-title-small text-align-x-left text-align-y-center text-truncate-end content-emphasis"}]
      116 SETTABLEKS                       R7 R16 K6 ["Text"]
      118 CALL                             R14 2 1
      119 SETTABLEKS                       R14 R13 K6 ["Text"]
      121 MOVE                             R14 R6
      122 JUMPIFNOT                        R14 ; [+42]
      123 LOADB                            R14 0
      124 JUMPIFEQKNIL                     R3 ; [+40]
      126 GETUPVAL                         R14 9
      127 GETTABLEKS                       R14 R14 K21 ["createElement"]
      129 GETUPVAL                         R15 10
      130 GETTABLEKS                       R15 R15 K6 ["Text"]
      132 DUPTABLE                         R16 K39 [{["LayoutOrder"] = 2, ["Text"], ["onActivated"], ["stateLayer"], ["tag"] = "size-0-full auto-x text-label-small text-align-x-right text-align-y-center content-link", ["testId"] = "see-all-button"}]
      133 JUMPIFNOT                        R3 ; [+6]
      134 LOADK                            R19 K40 ["Section"]
      135 LOADK                            R20 K41 ["SeeLess"]
      136 NAMECALL                         R17 R1 K10 ["getText"]
      138 CALL                             R17 3 1
      139 JUMP                             ; [+5]
      140 LOADK                            R19 K40 ["Section"]
      141 LOADK                            R20 K42 ["SeeAll"]
      142 NAMECALL                         R17 R1 K10 ["getText"]
      144 CALL                             R17 3 1
      145 SETTABLEKS                       R17 R16 K6 ["Text"]
      147 NEWCLOSURE                       R17 P0
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R3
      150 SETTABLEKS                       R17 R16 K34 ["onActivated"]
      152 DUPTABLE                         R17 K44 [{"affordance"}]
      153 GETUPVAL                         R18 10
      154 GETTABLEKS                       R18 R18 K45 ["Enums"]
      156 GETTABLEKS                       R18 R18 K46 ["StateLayerAffordance"]
      158 GETTABLEKS                       R18 R18 K47 ["None"]
      160 SETTABLEKS                       R18 R17 K43 ["affordance"]
      162 SETTABLEKS                       R17 R16 K35 ["stateLayer"]
      164 CALL                             R14 2 1
      165 SETTABLEKS                       R14 R13 K27 ["SeeAllButton"]
      167 CALL                             R10 3 -1
      168 RETURN                           R10 -1

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
       63 GETTABLEKS                       R10 R10 K18 ["useIxpValue"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K16 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K19 ["useSearchInfo"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R12 K16 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K20 ["useSearchSections"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Src"]
       88 GETTABLEKS                       R13 R13 K21 ["Controllers"]
       90 GETTABLEKS                       R13 R13 K22 ["ItemsController"]
       92 CALL                             R12 1 1
       93 NEWTABLE                         R13 16 0
       95 GETTABLEKS                       R14 R6 K23 ["AssetType"]
       97 GETTABLEKS                       R14 R14 K24 ["Animation"]
       99 LOADK                            R15 K25 ["Animations"]
      100 SETTABLE                         R15 R13 R14
      101 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      103 GETTABLEKS                       R14 R14 K26 ["Audio"]
      105 LOADK                            R15 K27 ["Audios"]
      106 SETTABLE                         R15 R13 R14
      107 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      109 GETTABLEKS                       R14 R14 K28 ["Decal"]
      111 LOADK                            R15 K29 ["Decals"]
      112 SETTABLE                         R15 R13 R14
      113 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      115 GETTABLEKS                       R14 R14 K30 ["FontFamily"]
      117 LOADK                            R15 K31 ["FontFamilies"]
      118 SETTABLE                         R15 R13 R14
      119 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      121 GETTABLEKS                       R14 R14 K32 ["Image"]
      123 LOADK                            R15 K33 ["Images"]
      124 SETTABLE                         R15 R13 R14
      125 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      127 GETTABLEKS                       R14 R14 K34 ["MeshPart"]
      129 LOADK                            R15 K35 ["MeshParts"]
      130 SETTABLE                         R15 R13 R14
      131 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      133 GETTABLEKS                       R14 R14 K36 ["Mesh"]
      135 LOADK                            R15 K37 ["Meshes"]
      136 SETTABLE                         R15 R13 R14
      137 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      139 GETTABLEKS                       R14 R14 K38 ["Model"]
      141 LOADK                            R15 K39 ["Models"]
      142 SETTABLE                         R15 R13 R14
      143 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      145 GETTABLEKS                       R14 R14 K40 ["Place"]
      147 LOADK                            R15 K41 ["Places"]
      148 SETTABLE                         R15 R13 R14
      149 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      151 GETTABLEKS                       R14 R14 K42 ["Plugin"]
      153 LOADK                            R15 K43 ["Plugins"]
      154 SETTABLE                         R15 R13 R14
      155 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      157 GETTABLEKS                       R14 R14 K44 ["TextDocument"]
      159 LOADK                            R15 K45 ["TextDocuments"]
      160 SETTABLE                         R15 R13 R14
      161 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      163 GETTABLEKS                       R14 R14 K46 ["Video"]
      165 LOADK                            R15 K47 ["Videos"]
      166 SETTABLE                         R15 R13 R14
      167 GETTABLEKS                       R14 R6 K23 ["AssetType"]
      169 GETTABLEKS                       R14 R14 K48 ["Folder"]
      171 LOADK                            R15 K49 ["Folders"]
      172 SETTABLE                         R15 R13 R14
      173 DUPCLOSURE                       R14 K50 [PROTO_1]
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R2
      185 RETURN                           R14 1
