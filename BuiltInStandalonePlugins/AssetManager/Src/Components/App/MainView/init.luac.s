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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R3 K1 ["Browser"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 2
        9 NAMECALL                         R0 R0 K2 ["handleMouse2Click"]
       11 CALL                             R0 5 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R8 0
        1 CALL                             R8 0 1
        2 NOT                              R7 R8
        3 FASTCALL2K                       ASSERT R7 K0 ; [+4]
        5 LOADK                            R8 K0 ["getPlaceholderView called with getFFlagAmrContentPlaceholder enabled"]
        6 GETIMPORT                        R6 K2 [assert]
        8 CALL                             R6 2 0
        9 GETTABLEKS                       R6 R1 K3 ["ShowSearchOptions"]
       11 MOVE                             R7 R6
       12 JUMPIFNOT                        R7 ; [+27]
       13 LOADB                            R7 0
       14 GETTABLEKS                       R9 R1 K4 ["SearchOptions"]
       16 GETTABLEKS                       R8 R9 K5 ["AssetType"]
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R10 R11 K5 ["AssetType"]
       21 GETTABLEKS                       R9 R10 K6 ["Place"]
       23 JUMPIFNOTEQ                      R8 R9 ; [+16]
       25 GETTABLEKS                       R10 R1 K4 ["SearchOptions"]
       27 GETTABLEKS                       R9 R10 K7 ["ScopeInfo"]
       29 GETTABLEKS                       R8 R9 K8 ["Type"]
       31 GETUPVAL                         R11 1
       32 GETTABLEKS                       R10 R11 K9 ["ScopeType"]
       34 GETTABLEKS                       R9 R10 K10 ["Universe"]
       36 JUMPIFNOTEQ                      R8 R9 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 JUMPIFNOT                        R7 ; [+6]
       41 LOADK                            R10 K11 ["Filters"]
       42 LOADK                            R11 K12 ["PlacesOnlyInUniverseWarning"]
       43 NAMECALL                         R8 R3 K13 ["getText"]
       45 CALL                             R8 3 1
       46 JUMP                             ; [+17]
       47 GETTABLEKS                       R9 R1 K3 ["ShowSearchOptions"]
       49 JUMPIFNOT                        R9 ; [+9]
       50 GETTABLEKS                       R9 R1 K14 ["IsDefaultSearchState"]
       52 JUMPIF                           R9 ; [+4]
       53 GETTABLEKS                       R9 R1 K15 ["SearchTerm"]
       55 JUMPIFNOTEQKS                    R9 K16 [""] ; [+3]
       57 LOADK                            R8 K16 [""]
       58 JUMP                             ; [+5]
       59 LOADK                            R10 K17 ["Plugin"]
       60 LOADK                            R11 K18 ["NoAssets"]
       61 NAMECALL                         R8 R3 K13 ["getText"]
       63 CALL                             R8 3 1
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R9 R10 K19 ["createElement"]
       67 GETUPVAL                         R10 3
       68 NEWTABLE                         R11 4 0
       70 NAMECALL                         R12 R0 K20 ["getNextOrder"]
       72 CALL                             R12 1 1
       73 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
       75 NEWCLOSURE                       R12 P0
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          VAL R5
       79 SETTABLEKS                       R12 R11 K22 ["OnRightClick"]
       81 GETUPVAL                         R13 2
       82 GETTABLEKS                       R12 R13 K23 ["Tag"]
       84 LOADK                            R13 K24 ["MainContents X-Middle X-Center"]
       85 SETTABLE                         R13 R11 R12
       86 DUPTABLE                         R12 K26 [{"PlaceholderText"}]
       87 JUMPIFNOT                        R2 ; [+6]
       88 GETUPVAL                         R14 2
       89 GETTABLEKS                       R13 R14 K19 ["createElement"]
       91 GETUPVAL                         R14 4
       92 CALL                             R13 1 1
       93 JUMP                             ; [+22]
       94 GETUPVAL                         R14 2
       95 GETTABLEKS                       R13 R14 K19 ["createElement"]
       97 GETUPVAL                         R14 5
       98 NEWTABLE                         R15 4 0
      100 NAMECALL                         R16 R0 K20 ["getNextOrder"]
      102 CALL                             R16 1 1
      103 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      105 SETTABLEKS                       R8 R15 K27 ["Text"]
      107 GETUPVAL                         R17 2
      108 GETTABLEKS                       R16 R17 K23 ["Tag"]
      110 JUMPIFNOT                        R7 ; [+2]
      111 LOADK                            R17 K28 ["Error"]
      112 JUMP                             ; [+1]
      113 LOADK                            R17 K16 [""]
      114 SETTABLE                         R17 R15 R16
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K25 ["PlaceholderText"]
      118 CALL                             R9 3 -1
      119 RETURN                           R9 -1

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
       12 GETUPVAL                         R4 3
       13 GETUPVAL                         R7 4
       14 GETTABLEKS                       R6 R7 K2 ["MenuContext"]
       16 GETTABLEKS                       R5 R6 K3 ["Asset"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 5
       20 CALL                             R5 0 1
       21 GETUPVAL                         R6 6
       22 CALL                             R6 0 1
       23 GETUPVAL                         R7 7
       24 GETTABLEKS                       R8 R5 K4 ["Uid"]
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 8
       28 CALL                             R8 0 1
       29 GETUPVAL                         R9 9
       30 CALL                             R9 0 1
       31 GETTABLEKS                       R10 R7 K5 ["IsLoading"]
       33 GETUPVAL                         R12 10
       34 GETTABLEKS                       R11 R12 K6 ["createElement"]
       36 GETUPVAL                         R12 11
       37 NEWTABLE                         R13 2 0
       39 GETTABLEKS                       R14 R0 K7 ["LayoutOrder"]
       41 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       43 GETUPVAL                         R15 10
       44 GETTABLEKS                       R14 R15 K8 ["Tag"]
       46 LOADK                            R15 K9 ["X-Stroke X-Top X-Column"]
       47 SETTABLE                         R15 R13 R14
       48 DUPTABLE                         R14 K13 [{"HeaderBar", "Contents", "LoadingBarContainer"}]
       49 GETUPVAL                         R16 10
       50 GETTABLEKS                       R15 R16 K6 ["createElement"]
       52 GETUPVAL                         R16 12
       53 DUPTABLE                         R17 K14 [{"LayoutOrder"}]
       54 NAMECALL                         R18 R2 K15 ["getNextOrder"]
       56 CALL                             R18 1 1
       57 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
       59 CALL                             R15 2 1
       60 SETTABLEKS                       R15 R14 K10 ["HeaderBar"]
       62 LENGTH                           R16 R8
       63 JUMPIFNOTEQKN                    R16 K16 [0] ; [+27]
       65 GETUPVAL                         R16 13
       66 CALL                             R16 0 1
       67 JUMPIFNOT                        R16 ; [+14]
       68 GETUPVAL                         R16 10
       69 GETTABLEKS                       R15 R16 K6 ["createElement"]
       71 GETUPVAL                         R16 14
       72 DUPTABLE                         R17 K17 [{"LayoutOrder", "IsLoading"}]
       73 NAMECALL                         R18 R2 K15 ["getNextOrder"]
       75 CALL                             R18 1 1
       76 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
       78 SETTABLEKS                       R10 R17 K5 ["IsLoading"]
       80 CALL                             R15 2 1
       81 JUMP                             ; [+24]
       82 GETUPVAL                         R15 15
       83 MOVE                             R16 R2
       84 MOVE                             R17 R9
       85 MOVE                             R18 R10
       86 MOVE                             R19 R1
       87 MOVE                             R20 R3
       88 MOVE                             R21 R4
       89 CALL                             R15 6 1
       90 JUMP                             ; [+15]
       91 GETUPVAL                         R15 16
       92 GETTABLEKS                       R17 R6 K18 ["ViewType"]
       94 GETUPVAL                         R20 4
       95 GETTABLEKS                       R19 R20 K18 ["ViewType"]
       97 GETTABLEKS                       R18 R19 K19 ["Grid"]
       99 JUMPIFEQ                         R17 R18 ; [+2]
      101 LOADB                            R16 0 +1
      102 LOADB                            R16 1
      103 MOVE                             R17 R10
      104 MOVE                             R18 R2
      105 CALL                             R15 3 1
      106 SETTABLEKS                       R15 R14 K11 ["Contents"]
      108 JUMPIFNOT                        R10 ; [+36]
      109 GETUPVAL                         R16 10
      110 GETTABLEKS                       R15 R16 K6 ["createElement"]
      112 GETUPVAL                         R16 11
      113 NEWTABLE                         R17 2 0
      115 NAMECALL                         R18 R2 K15 ["getNextOrder"]
      117 CALL                             R18 1 1
      118 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
      120 GETUPVAL                         R19 10
      121 GETTABLEKS                       R18 R19 K8 ["Tag"]
      123 LOADK                            R19 K20 ["am-size-full-scrollbar"]
      124 SETTABLE                         R19 R17 R18
      125 DUPTABLE                         R18 K22 [{"LoadingBar"}]
      126 GETUPVAL                         R20 10
      127 GETTABLEKS                       R19 R20 K6 ["createElement"]
      129 GETUPVAL                         R20 17
      130 DUPTABLE                         R21 K24 [{"LayoutOrder", "Progress"}]
      131 NAMECALL                         R22 R2 K15 ["getNextOrder"]
      133 CALL                             R22 1 1
      134 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
      136 GETTABLEKS                       R22 R7 K25 ["FetchProgress"]
      138 SETTABLEKS                       R22 R21 K23 ["Progress"]
      140 CALL                             R19 2 1
      141 SETTABLEKS                       R19 R18 K21 ["LoadingBar"]
      143 CALL                             R15 3 1
      144 JUMP                             ; [+1]
      145 LOADNIL                          R15
      146 SETTABLEKS                       R15 R14 K12 ["LoadingBarContainer"]
      148 CALL                             R11 3 -1
      149 RETURN                           R11 -1

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
       53 GETTABLEKS                       R13 R14 K18 ["ContentPlaceholder"]
       55 CALL                             R12 1 1
       56 GETIMPORT                        R13 K5 [require]
       58 GETIMPORT                        R15 K1 [script]
       60 GETTABLEKS                       R14 R15 K19 ["HeaderBar"]
       62 CALL                             R13 1 1
       63 GETIMPORT                        R14 K5 [require]
       65 GETTABLEKS                       R17 R0 K20 ["Src"]
       67 GETTABLEKS                       R16 R17 K21 ["Controllers"]
       69 GETTABLEKS                       R15 R16 K22 ["Input"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K5 [require]
       74 GETTABLEKS                       R18 R0 K20 ["Src"]
       76 GETTABLEKS                       R17 R18 K23 ["Flags"]
       78 GETTABLEKS                       R16 R17 K24 ["getFFlagAmrContentPlaceholder"]
       80 CALL                             R15 1 1
       81 GETIMPORT                        R16 K5 [require]
       83 GETTABLEKS                       R19 R0 K20 ["Src"]
       85 GETTABLEKS                       R18 R19 K25 ["Hooks"]
       87 GETTABLEKS                       R17 R18 K26 ["useContextMenu"]
       89 CALL                             R16 1 1
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R20 R0 K20 ["Src"]
       94 GETTABLEKS                       R19 R20 K25 ["Hooks"]
       96 GETTABLEKS                       R18 R19 K27 ["useCurrentScope"]
       98 CALL                             R17 1 1
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R21 R0 K20 ["Src"]
      103 GETTABLEKS                       R20 R21 K25 ["Hooks"]
      105 GETTABLEKS                       R19 R20 K28 ["useFetchProgressInfo"]
      107 CALL                             R18 1 1
      108 GETIMPORT                        R19 K5 [require]
      110 GETTABLEKS                       R22 R0 K20 ["Src"]
      112 GETTABLEKS                       R21 R22 K25 ["Hooks"]
      114 GETTABLEKS                       R20 R21 K29 ["useLayoutInfo"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K5 [require]
      119 GETTABLEKS                       R23 R0 K20 ["Src"]
      121 GETTABLEKS                       R22 R23 K25 ["Hooks"]
      123 GETTABLEKS                       R21 R22 K30 ["useItems"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K5 [require]
      128 GETTABLEKS                       R24 R0 K20 ["Src"]
      130 GETTABLEKS                       R23 R24 K25 ["Hooks"]
      132 GETTABLEKS                       R22 R23 K31 ["useSearchInfo"]
      134 CALL                             R21 1 1
      135 GETTABLEKS                       R23 R2 K32 ["Util"]
      137 GETTABLEKS                       R22 R23 K33 ["LayoutOrderIterator"]
      139 GETIMPORT                        R23 K5 [require]
      141 GETTABLEKS                       R25 R0 K20 ["Src"]
      143 GETTABLEKS                       R24 R25 K34 ["Types"]
      145 CALL                             R23 1 1
      146 DUPCLOSURE                       R24 K35 [PROTO_0]
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R11
      150 DUPCLOSURE                       R25 K36 [PROTO_2]
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R9
      157 DUPCLOSURE                       R26 K37 [PROTO_3]
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R23
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R21
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R15
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R6
      176 RETURN                           R26 1
