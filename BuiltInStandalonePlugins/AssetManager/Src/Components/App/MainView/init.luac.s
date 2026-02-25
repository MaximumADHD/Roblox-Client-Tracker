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
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["handleRightClick"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R5 R1 K0 ["ShowSearchOptions"]
        2 MOVE                             R6 R5
        3 JUMPIFNOT                        R6 ; [+27]
        4 LOADB                            R6 0
        5 GETTABLEKS                       R8 R1 K1 ["SearchOptions"]
        7 GETTABLEKS                       R7 R8 K2 ["AssetType"]
        9 GETUPVAL                         R10 0
       10 GETTABLEKS                       R9 R10 K2 ["AssetType"]
       12 GETTABLEKS                       R8 R9 K3 ["Place"]
       14 JUMPIFNOTEQ                      R7 R8 ; [+16]
       16 GETTABLEKS                       R9 R1 K1 ["SearchOptions"]
       18 GETTABLEKS                       R8 R9 K4 ["ScopeInfo"]
       20 GETTABLEKS                       R7 R8 K5 ["Type"]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R9 R10 K6 ["ScopeType"]
       25 GETTABLEKS                       R8 R9 K7 ["Universe"]
       27 JUMPIFNOTEQ                      R7 R8 ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 JUMPIFNOT                        R6 ; [+6]
       32 LOADK                            R9 K8 ["Filters"]
       33 LOADK                            R10 K9 ["PlacesOnlyInUniverseWarning"]
       34 NAMECALL                         R7 R3 K10 ["getText"]
       36 CALL                             R7 3 1
       37 JUMP                             ; [+17]
       38 GETTABLEKS                       R8 R1 K0 ["ShowSearchOptions"]
       40 JUMPIFNOT                        R8 ; [+9]
       41 GETTABLEKS                       R8 R1 K11 ["IsDefaultSearchState"]
       43 JUMPIF                           R8 ; [+4]
       44 GETTABLEKS                       R8 R1 K12 ["SearchTerm"]
       46 JUMPIFNOTEQKS                    R8 K13 [""] ; [+3]
       48 LOADK                            R7 K13 [""]
       49 JUMP                             ; [+5]
       50 LOADK                            R9 K14 ["Plugin"]
       51 LOADK                            R10 K15 ["NoAssets"]
       52 NAMECALL                         R7 R3 K10 ["getText"]
       54 CALL                             R7 3 1
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R8 R9 K16 ["createElement"]
       58 GETUPVAL                         R9 2
       59 NEWTABLE                         R10 4 0
       61 NAMECALL                         R11 R0 K17 ["getNextOrder"]
       63 CALL                             R11 1 1
       64 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
       66 NEWCLOSURE                       R11 P0
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R11 R10 K19 ["OnRightClick"]
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R11 R12 K20 ["Tag"]
       74 LOADK                            R12 K21 ["MainContents X-Middle X-Center"]
       75 SETTABLE                         R12 R10 R11
       76 DUPTABLE                         R11 K23 [{"PlaceholderText"}]
       77 JUMPIFNOT                        R2 ; [+6]
       78 GETUPVAL                         R13 1
       79 GETTABLEKS                       R12 R13 K16 ["createElement"]
       81 GETUPVAL                         R13 3
       82 CALL                             R12 1 1
       83 JUMP                             ; [+22]
       84 GETUPVAL                         R13 1
       85 GETTABLEKS                       R12 R13 K16 ["createElement"]
       87 GETUPVAL                         R13 4
       88 NEWTABLE                         R14 4 0
       90 NAMECALL                         R15 R0 K17 ["getNextOrder"]
       92 CALL                             R15 1 1
       93 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
       95 SETTABLEKS                       R7 R14 K24 ["Text"]
       97 GETUPVAL                         R16 1
       98 GETTABLEKS                       R15 R16 K20 ["Tag"]
      100 JUMPIFNOT                        R6 ; [+2]
      101 LOADK                            R16 K25 ["Error"]
      102 JUMP                             ; [+1]
      103 LOADK                            R16 K13 [""]
      104 SETTABLE                         R16 R14 R15
      105 CALL                             R12 2 1
      106 SETTABLEKS                       R12 R11 K22 ["PlaceholderText"]
      108 CALL                             R8 3 -1
      109 RETURN                           R8 -1

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
       12 LOADNIL                          R4
       13 GETUPVAL                         R5 3
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+3]
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 MOVE                             R4 R5
       19 GETUPVAL                         R5 5
       20 CALL                             R5 0 1
       21 GETUPVAL                         R6 6
       22 GETUPVAL                         R8 3
       23 CALL                             R8 0 1
       24 JUMPIFNOT                        R8 ; [+3]
       25 GETTABLEKS                       R7 R4 K2 ["Uid"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R7
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 7
       31 CALL                             R7 0 1
       32 GETUPVAL                         R8 8
       33 CALL                             R8 0 1
       34 GETTABLEKS                       R9 R6 K3 ["IsLoading"]
       36 GETUPVAL                         R11 9
       37 GETTABLEKS                       R10 R11 K4 ["createElement"]
       39 GETUPVAL                         R11 10
       40 NEWTABLE                         R12 2 0
       42 GETTABLEKS                       R13 R0 K5 ["LayoutOrder"]
       44 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       46 GETUPVAL                         R14 9
       47 GETTABLEKS                       R13 R14 K6 ["Tag"]
       49 LOADK                            R14 K7 ["X-Stroke X-Top X-Column"]
       50 SETTABLE                         R14 R12 R13
       51 DUPTABLE                         R13 K11 [{"HeaderBar", "Contents", "LoadingBarContainer"}]
       52 GETUPVAL                         R15 9
       53 GETTABLEKS                       R14 R15 K4 ["createElement"]
       55 GETUPVAL                         R15 11
       56 DUPTABLE                         R16 K12 [{"LayoutOrder"}]
       57 NAMECALL                         R17 R2 K13 ["getNextOrder"]
       59 CALL                             R17 1 1
       60 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
       62 CALL                             R14 2 1
       63 SETTABLEKS                       R14 R13 K8 ["HeaderBar"]
       65 LENGTH                           R15 R7
       66 JUMPIFNOTEQKN                    R15 K14 [0] ; [+9]
       68 GETUPVAL                         R14 12
       69 MOVE                             R15 R2
       70 MOVE                             R16 R8
       71 MOVE                             R17 R9
       72 MOVE                             R18 R1
       73 MOVE                             R19 R3
       74 CALL                             R14 5 1
       75 JUMP                             ; [+15]
       76 GETUPVAL                         R14 13
       77 GETTABLEKS                       R16 R5 K15 ["ViewType"]
       79 GETUPVAL                         R19 14
       80 GETTABLEKS                       R18 R19 K15 ["ViewType"]
       82 GETTABLEKS                       R17 R18 K16 ["Grid"]
       84 JUMPIFEQ                         R16 R17 ; [+2]
       86 LOADB                            R15 0 +1
       87 LOADB                            R15 1
       88 MOVE                             R16 R9
       89 MOVE                             R17 R2
       90 CALL                             R14 3 1
       91 SETTABLEKS                       R14 R13 K9 ["Contents"]
       93 JUMPIFNOT                        R9 ; [+36]
       94 GETUPVAL                         R15 9
       95 GETTABLEKS                       R14 R15 K4 ["createElement"]
       97 GETUPVAL                         R15 10
       98 NEWTABLE                         R16 2 0
      100 NAMECALL                         R17 R2 K13 ["getNextOrder"]
      102 CALL                             R17 1 1
      103 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      105 GETUPVAL                         R18 9
      106 GETTABLEKS                       R17 R18 K6 ["Tag"]
      108 LOADK                            R18 K17 ["am-size-full-scrollbar"]
      109 SETTABLE                         R18 R16 R17
      110 DUPTABLE                         R17 K19 [{"LoadingBar"}]
      111 GETUPVAL                         R19 9
      112 GETTABLEKS                       R18 R19 K4 ["createElement"]
      114 GETUPVAL                         R19 15
      115 DUPTABLE                         R20 K21 [{"LayoutOrder", "Progress"}]
      116 NAMECALL                         R21 R2 K13 ["getNextOrder"]
      118 CALL                             R21 1 1
      119 SETTABLEKS                       R21 R20 K5 ["LayoutOrder"]
      121 GETTABLEKS                       R21 R6 K22 ["FetchProgress"]
      123 SETTABLEKS                       R21 R20 K20 ["Progress"]
      125 CALL                             R18 2 1
      126 SETTABLEKS                       R18 R17 K18 ["LoadingBar"]
      128 CALL                             R14 3 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R14
      131 SETTABLEKS                       R14 R13 K10 ["LoadingBarContainer"]
      133 CALL                             R10 3 -1
      134 RETURN                           R10 -1

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
       62 GETTABLEKS                       R14 R15 K21 ["ItemsController"]
       64 CALL                             R13 1 1
       65 GETIMPORT                        R14 K5 [require]
       67 GETTABLEKS                       R17 R0 K19 ["Src"]
       69 GETTABLEKS                       R16 R17 K22 ["Hooks"]
       71 GETTABLEKS                       R15 R16 K23 ["useCurrentScope"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K5 [require]
       76 GETTABLEKS                       R18 R0 K19 ["Src"]
       78 GETTABLEKS                       R17 R18 K22 ["Hooks"]
       80 GETTABLEKS                       R16 R17 K24 ["useFetchProgressInfo"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K5 [require]
       85 GETTABLEKS                       R19 R0 K19 ["Src"]
       87 GETTABLEKS                       R18 R19 K22 ["Hooks"]
       89 GETTABLEKS                       R17 R18 K25 ["useLayoutInfo"]
       91 CALL                             R16 1 1
       92 GETIMPORT                        R17 K5 [require]
       94 GETTABLEKS                       R20 R0 K19 ["Src"]
       96 GETTABLEKS                       R19 R20 K22 ["Hooks"]
       98 GETTABLEKS                       R18 R19 K26 ["useItems"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K5 [require]
      103 GETTABLEKS                       R21 R0 K19 ["Src"]
      105 GETTABLEKS                       R20 R21 K22 ["Hooks"]
      107 GETTABLEKS                       R19 R20 K27 ["useSearchInfo"]
      109 CALL                             R18 1 1
      110 GETTABLEKS                       R20 R2 K28 ["Util"]
      112 GETTABLEKS                       R19 R20 K29 ["LayoutOrderIterator"]
      114 GETIMPORT                        R20 K5 [require]
      116 GETTABLEKS                       R22 R0 K19 ["Src"]
      118 GETTABLEKS                       R21 R22 K30 ["Types"]
      120 CALL                             R20 1 1
      121 GETIMPORT                        R21 K5 [require]
      123 GETTABLEKS                       R24 R0 K19 ["Src"]
      125 GETTABLEKS                       R23 R24 K31 ["Flags"]
      127 GETTABLEKS                       R22 R23 K32 ["getFFlagAmrUpdatedItemsCache"]
      129 CALL                             R21 1 1
      130 DUPCLOSURE                       R22 K33 [PROTO_0]
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R11
      134 DUPCLOSURE                       R23 K34 [PROTO_2]
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R9
      140 DUPCLOSURE                       R24 K35 [PROTO_3]
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R21
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R22
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R6
      157 RETURN                           R24 1
