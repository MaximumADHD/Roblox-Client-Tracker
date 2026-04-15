PROTO_0:
        0 JUMPIFNOT                        R0 ; [+26]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["createElement"]
        4 GETUPVAL                         R4 1
        5 NEWTABLE                         R5 2 0
        7 NAMECALL                         R6 R2 K1 ["getNextOrder"]
        9 CALL                             R6 1 1
       10 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K3 ["Tag"]
       15 LOADK                            R8 K4 ["MainContents %*"]
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADK                            R10 K5 ["HasLoadingBar"]
       18 JUMP                             ; [+1]
       19 LOADK                            R10 K6 [""]
       20 NAMECALL                         R8 R8 K7 ["format"]
       22 CALL                             R8 2 1
       23 MOVE                             R7 R8
       24 SETTABLE                         R7 R5 R6
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K0 ["createElement"]
       30 GETUPVAL                         R4 2
       31 NEWTABLE                         R5 2 0
       33 NAMECALL                         R6 R2 K1 ["getNextOrder"]
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R6 R7 K3 ["Tag"]
       41 LOADK                            R8 K4 ["MainContents %*"]
       42 JUMPIFNOT                        R1 ; [+2]
       43 LOADK                            R10 K5 ["HasLoadingBar"]
       44 JUMP                             ; [+1]
       45 LOADK                            R10 K6 [""]
       46 NAMECALL                         R8 R8 K7 ["format"]
       48 CALL                             R8 2 1
       49 MOVE                             R7 R8
       50 SETTABLE                         R7 R5 R6
       51 CALL                             R3 2 -1
       52 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+14]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["UiZone"]
        7 GETTABLEKS                       R2 R3 K1 ["Browser"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 GETUPVAL                         R6 3
       13 NAMECALL                         R0 R0 K2 ["handleMouse2Click"]
       15 CALL                             R0 6 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 4
       18 GETUPVAL                         R2 5
       19 NAMECALL                         R0 R0 K3 ["handleRightClick"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R7 R1 K0 ["ShowSearchOptions"]
        2 MOVE                             R8 R7
        3 JUMPIFNOT                        R8 ; [+27]
        4 LOADB                            R8 0
        5 GETTABLEKS                       R10 R1 K1 ["SearchOptions"]
        7 GETTABLEKS                       R9 R10 K2 ["AssetType"]
        9 GETUPVAL                         R12 0
       10 GETTABLEKS                       R11 R12 K2 ["AssetType"]
       12 GETTABLEKS                       R10 R11 K3 ["Place"]
       14 JUMPIFNOTEQ                      R9 R10 ; [+16]
       16 GETTABLEKS                       R11 R1 K1 ["SearchOptions"]
       18 GETTABLEKS                       R10 R11 K4 ["ScopeInfo"]
       20 GETTABLEKS                       R9 R10 K5 ["Type"]
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R11 R12 K6 ["ScopeType"]
       25 GETTABLEKS                       R10 R11 K7 ["Universe"]
       27 JUMPIFNOTEQ                      R9 R10 ; [+2]
       29 LOADB                            R8 0 +1
       30 LOADB                            R8 1
       31 JUMPIFNOT                        R8 ; [+6]
       32 LOADK                            R11 K8 ["Filters"]
       33 LOADK                            R12 K9 ["PlacesOnlyInUniverseWarning"]
       34 NAMECALL                         R9 R3 K10 ["getText"]
       36 CALL                             R9 3 1
       37 JUMP                             ; [+17]
       38 GETTABLEKS                       R10 R1 K0 ["ShowSearchOptions"]
       40 JUMPIFNOT                        R10 ; [+9]
       41 GETTABLEKS                       R10 R1 K11 ["IsDefaultSearchState"]
       43 JUMPIF                           R10 ; [+4]
       44 GETTABLEKS                       R10 R1 K12 ["SearchTerm"]
       46 JUMPIFNOTEQKS                    R10 K13 [""] ; [+3]
       48 LOADK                            R9 K13 [""]
       49 JUMP                             ; [+5]
       50 LOADK                            R11 K14 ["Plugin"]
       51 LOADK                            R12 K15 ["NoAssets"]
       52 NAMECALL                         R9 R3 K10 ["getText"]
       54 CALL                             R9 3 1
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R10 R11 K16 ["createElement"]
       58 GETUPVAL                         R11 2
       59 NEWTABLE                         R12 4 0
       61 NAMECALL                         R13 R0 K17 ["getNextOrder"]
       63 CALL                             R13 1 1
       64 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
       66 NEWCLOSURE                       R13 P0
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R5
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R13 R12 K19 ["OnRightClick"]
       75 GETUPVAL                         R14 1
       76 GETTABLEKS                       R13 R14 K20 ["Tag"]
       78 LOADK                            R14 K21 ["MainContents X-Middle X-Center"]
       79 SETTABLE                         R14 R12 R13
       80 DUPTABLE                         R13 K23 [{"PlaceholderText"}]
       81 JUMPIFNOT                        R2 ; [+6]
       82 GETUPVAL                         R15 1
       83 GETTABLEKS                       R14 R15 K16 ["createElement"]
       85 GETUPVAL                         R15 4
       86 CALL                             R14 1 1
       87 JUMP                             ; [+22]
       88 GETUPVAL                         R15 1
       89 GETTABLEKS                       R14 R15 K16 ["createElement"]
       91 GETUPVAL                         R15 5
       92 NEWTABLE                         R16 4 0
       94 NAMECALL                         R17 R0 K17 ["getNextOrder"]
       96 CALL                             R17 1 1
       97 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
       99 SETTABLEKS                       R9 R16 K24 ["Text"]
      101 GETUPVAL                         R18 1
      102 GETTABLEKS                       R17 R18 K20 ["Tag"]
      104 JUMPIFNOT                        R8 ; [+2]
      105 LOADK                            R18 K25 ["Error"]
      106 JUMP                             ; [+1]
      107 LOADK                            R18 K13 [""]
      108 SETTABLE                         R18 R16 R17
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K22 ["PlaceholderText"]
      112 CALL                             R10 3 -1
      113 RETURN                           R10 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETUPVAL                         R8 5
       18 GETTABLEKS                       R7 R8 K2 ["MenuContext"]
       20 GETTABLEKS                       R6 R7 K3 ["Asset"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 6
       24 CALL                             R6 0 1
       25 GETUPVAL                         R7 7
       26 CALL                             R7 0 1
       27 GETUPVAL                         R8 8
       28 GETTABLEKS                       R9 R6 K4 ["Uid"]
       30 CALL                             R8 1 1
       31 GETUPVAL                         R9 9
       32 CALL                             R9 0 1
       33 GETUPVAL                         R10 10
       34 CALL                             R10 0 1
       35 GETTABLEKS                       R11 R8 K5 ["IsLoading"]
       37 GETUPVAL                         R13 11
       38 GETTABLEKS                       R12 R13 K6 ["createElement"]
       40 GETUPVAL                         R13 12
       41 NEWTABLE                         R14 2 0
       43 GETTABLEKS                       R15 R0 K7 ["LayoutOrder"]
       45 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       47 GETUPVAL                         R16 11
       48 GETTABLEKS                       R15 R16 K8 ["Tag"]
       50 LOADK                            R16 K9 ["X-Stroke X-Top X-Column"]
       51 SETTABLE                         R16 R14 R15
       52 DUPTABLE                         R15 K13 [{"HeaderBar", "Contents", "LoadingBarContainer"}]
       53 GETUPVAL                         R17 11
       54 GETTABLEKS                       R16 R17 K6 ["createElement"]
       56 GETUPVAL                         R17 13
       57 DUPTABLE                         R18 K14 [{"LayoutOrder"}]
       58 NAMECALL                         R19 R2 K15 ["getNextOrder"]
       60 CALL                             R19 1 1
       61 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
       63 CALL                             R16 2 1
       64 SETTABLEKS                       R16 R15 K10 ["HeaderBar"]
       66 LENGTH                           R17 R9
       67 JUMPIFNOTEQKN                    R17 K16 [0] ; [+11]
       69 GETUPVAL                         R16 14
       70 MOVE                             R17 R2
       71 MOVE                             R18 R10
       72 MOVE                             R19 R11
       73 MOVE                             R20 R1
       74 MOVE                             R21 R3
       75 MOVE                             R22 R4
       76 MOVE                             R23 R5
       77 CALL                             R16 7 1
       78 JUMP                             ; [+15]
       79 GETUPVAL                         R16 15
       80 GETTABLEKS                       R18 R7 K17 ["ViewType"]
       82 GETUPVAL                         R21 5
       83 GETTABLEKS                       R20 R21 K17 ["ViewType"]
       85 GETTABLEKS                       R19 R20 K18 ["Grid"]
       87 JUMPIFEQ                         R18 R19 ; [+2]
       89 LOADB                            R17 0 +1
       90 LOADB                            R17 1
       91 MOVE                             R18 R11
       92 MOVE                             R19 R2
       93 CALL                             R16 3 1
       94 SETTABLEKS                       R16 R15 K11 ["Contents"]
       96 JUMPIFNOT                        R11 ; [+36]
       97 GETUPVAL                         R17 11
       98 GETTABLEKS                       R16 R17 K6 ["createElement"]
      100 GETUPVAL                         R17 12
      101 NEWTABLE                         R18 2 0
      103 NAMECALL                         R19 R2 K15 ["getNextOrder"]
      105 CALL                             R19 1 1
      106 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      108 GETUPVAL                         R20 11
      109 GETTABLEKS                       R19 R20 K8 ["Tag"]
      111 LOADK                            R20 K19 ["am-size-full-scrollbar"]
      112 SETTABLE                         R20 R18 R19
      113 DUPTABLE                         R19 K21 [{"LoadingBar"}]
      114 GETUPVAL                         R21 11
      115 GETTABLEKS                       R20 R21 K6 ["createElement"]
      117 GETUPVAL                         R21 16
      118 DUPTABLE                         R22 K23 [{"LayoutOrder", "Progress"}]
      119 NAMECALL                         R23 R2 K15 ["getNextOrder"]
      121 CALL                             R23 1 1
      122 SETTABLEKS                       R23 R22 K7 ["LayoutOrder"]
      124 GETTABLEKS                       R23 R8 K24 ["FetchProgress"]
      126 SETTABLEKS                       R23 R22 K22 ["Progress"]
      128 CALL                             R20 2 1
      129 SETTABLEKS                       R20 R19 K20 ["LoadingBar"]
      131 CALL                             R16 3 1
      132 JUMP                             ; [+1]
      133 LOADNIL                          R16
      134 SETTABLEKS                       R16 R15 K12 ["LoadingBarContainer"]
      136 CALL                             R12 3 -1
      137 RETURN                           R12 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["LoadingBar"]
       29 GETTABLEKS                       R7 R5 K13 ["LoadingIndicator"]
       31 GETTABLEKS                       R8 R5 K14 ["Pane"]
       33 GETTABLEKS                       R9 R5 K15 ["TextLabel"]
       35 GETIMPORT                        R10 K5 [require]
       37 GETIMPORT                        R12 K1 [script]
       39 GETTABLEKS                       R11 R12 K16 ["ContentGrid"]
       41 CALL                             R10 1 1
       42 GETIMPORT                        R11 K5 [require]
       44 GETIMPORT                        R13 K1 [script]
       46 GETTABLEKS                       R12 R13 K17 ["ContentList"]
       48 CALL                             R11 1 1
       49 GETIMPORT                        R12 K5 [require]
       51 GETIMPORT                        R14 K1 [script]
       53 GETTABLEKS                       R13 R14 K18 ["HeaderBar"]
       55 CALL                             R12 1 1
       56 GETIMPORT                        R13 K5 [require]
       58 GETTABLEKS                       R16 R0 K19 ["Src"]
       60 GETTABLEKS                       R15 R16 K20 ["Controllers"]
       62 GETTABLEKS                       R14 R15 K21 ["Input"]
       64 CALL                             R13 1 1
       65 GETIMPORT                        R14 K5 [require]
       67 GETTABLEKS                       R17 R0 K19 ["Src"]
       69 GETTABLEKS                       R16 R17 K20 ["Controllers"]
       71 GETTABLEKS                       R15 R16 K22 ["ItemsController"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K5 [require]
       76 GETTABLEKS                       R18 R0 K19 ["Src"]
       78 GETTABLEKS                       R17 R18 K23 ["Hooks"]
       80 GETTABLEKS                       R16 R17 K24 ["useContextMenu"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K5 [require]
       85 GETTABLEKS                       R19 R0 K19 ["Src"]
       87 GETTABLEKS                       R18 R19 K23 ["Hooks"]
       89 GETTABLEKS                       R17 R18 K25 ["useCurrentScope"]
       91 CALL                             R16 1 1
       92 GETIMPORT                        R17 K5 [require]
       94 GETTABLEKS                       R20 R0 K19 ["Src"]
       96 GETTABLEKS                       R19 R20 K23 ["Hooks"]
       98 GETTABLEKS                       R18 R19 K26 ["useFetchProgressInfo"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K5 [require]
      103 GETTABLEKS                       R21 R0 K19 ["Src"]
      105 GETTABLEKS                       R20 R21 K23 ["Hooks"]
      107 GETTABLEKS                       R19 R20 K27 ["useLayoutInfo"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K5 [require]
      112 GETTABLEKS                       R22 R0 K19 ["Src"]
      114 GETTABLEKS                       R21 R22 K23 ["Hooks"]
      116 GETTABLEKS                       R20 R21 K28 ["useItems"]
      118 CALL                             R19 1 1
      119 GETIMPORT                        R20 K5 [require]
      121 GETTABLEKS                       R23 R0 K19 ["Src"]
      123 GETTABLEKS                       R22 R23 K23 ["Hooks"]
      125 GETTABLEKS                       R21 R22 K29 ["useSearchInfo"]
      127 CALL                             R20 1 1
      128 GETTABLEKS                       R22 R2 K30 ["Util"]
      130 GETTABLEKS                       R21 R22 K31 ["LayoutOrderIterator"]
      132 GETIMPORT                        R22 K5 [require]
      134 GETTABLEKS                       R24 R0 K19 ["Src"]
      136 GETTABLEKS                       R23 R24 K32 ["Types"]
      138 CALL                             R22 1 1
      139 GETIMPORT                        R23 K5 [require]
      141 GETTABLEKS                       R26 R0 K19 ["Src"]
      143 GETTABLEKS                       R25 R26 K33 ["Flags"]
      145 GETTABLEKS                       R24 R25 K34 ["getFFlagAmrContextMenuRefactor"]
      147 CALL                             R23 1 1
      148 DUPCLOSURE                       R24 K35 [PROTO_0]
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R11
      152 DUPCLOSURE                       R25 K36 [PROTO_2]
      153 CAPTURE                          VAL R22
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R23
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R9
      159 DUPCLOSURE                       R26 K37 [PROTO_3]
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R22
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R25
      175 CAPTURE                          VAL R24
      176 CAPTURE                          VAL R6
      177 RETURN                           R26 1
