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
        0 GETTABLEKS                       R6 R1 K0 ["ShowSearchOptions"]
        2 MOVE                             R7 R6
        3 JUMPIFNOT                        R7 ; [+27]
        4 LOADB                            R7 0
        5 GETTABLEKS                       R9 R1 K1 ["SearchOptions"]
        7 GETTABLEKS                       R8 R9 K2 ["AssetType"]
        9 GETUPVAL                         R11 0
       10 GETTABLEKS                       R10 R11 K2 ["AssetType"]
       12 GETTABLEKS                       R9 R10 K3 ["Place"]
       14 JUMPIFNOTEQ                      R8 R9 ; [+16]
       16 GETTABLEKS                       R10 R1 K1 ["SearchOptions"]
       18 GETTABLEKS                       R9 R10 K4 ["ScopeInfo"]
       20 GETTABLEKS                       R8 R9 K5 ["Type"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R10 R11 K6 ["ScopeType"]
       25 GETTABLEKS                       R9 R10 K7 ["Universe"]
       27 JUMPIFNOTEQ                      R8 R9 ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 JUMPIFNOT                        R7 ; [+6]
       32 LOADK                            R10 K8 ["Filters"]
       33 LOADK                            R11 K9 ["PlacesOnlyInUniverseWarning"]
       34 NAMECALL                         R8 R3 K10 ["getText"]
       36 CALL                             R8 3 1
       37 JUMP                             ; [+17]
       38 GETTABLEKS                       R9 R1 K0 ["ShowSearchOptions"]
       40 JUMPIFNOT                        R9 ; [+9]
       41 GETTABLEKS                       R9 R1 K11 ["IsDefaultSearchState"]
       43 JUMPIF                           R9 ; [+4]
       44 GETTABLEKS                       R9 R1 K12 ["SearchTerm"]
       46 JUMPIFNOTEQKS                    R9 K13 [""] ; [+3]
       48 LOADK                            R8 K13 [""]
       49 JUMP                             ; [+5]
       50 LOADK                            R10 K14 ["Plugin"]
       51 LOADK                            R11 K15 ["NoAssets"]
       52 NAMECALL                         R8 R3 K10 ["getText"]
       54 CALL                             R8 3 1
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R9 R10 K16 ["createElement"]
       58 GETUPVAL                         R10 2
       59 NEWTABLE                         R11 4 0
       61 NAMECALL                         R12 R0 K17 ["getNextOrder"]
       63 CALL                             R12 1 1
       64 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
       66 NEWCLOSURE                       R12 P0
       67 CAPTURE                          VAL R4
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R12 R11 K19 ["OnRightClick"]
       72 GETUPVAL                         R13 1
       73 GETTABLEKS                       R12 R13 K20 ["Tag"]
       75 LOADK                            R13 K21 ["MainContents X-Middle X-Center"]
       76 SETTABLE                         R13 R11 R12
       77 DUPTABLE                         R12 K23 [{"PlaceholderText"}]
       78 JUMPIFNOT                        R2 ; [+6]
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R13 R14 K16 ["createElement"]
       82 GETUPVAL                         R14 3
       83 CALL                             R13 1 1
       84 JUMP                             ; [+22]
       85 GETUPVAL                         R14 1
       86 GETTABLEKS                       R13 R14 K16 ["createElement"]
       88 GETUPVAL                         R14 4
       89 NEWTABLE                         R15 4 0
       91 NAMECALL                         R16 R0 K17 ["getNextOrder"]
       93 CALL                             R16 1 1
       94 SETTABLEKS                       R16 R15 K18 ["LayoutOrder"]
       96 SETTABLEKS                       R8 R15 K24 ["Text"]
       98 GETUPVAL                         R17 1
       99 GETTABLEKS                       R16 R17 K20 ["Tag"]
      101 JUMPIFNOT                        R7 ; [+2]
      102 LOADK                            R17 K25 ["Error"]
      103 JUMP                             ; [+1]
      104 LOADK                            R17 K13 [""]
      105 SETTABLE                         R17 R15 R16
      106 CALL                             R13 2 1
      107 SETTABLEKS                       R13 R12 K22 ["PlaceholderText"]
      109 CALL                             R9 3 -1
      110 RETURN                           R9 -1

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
       63 JUMPIFNOTEQKN                    R16 K16 [0] ; [+10]
       65 GETUPVAL                         R15 13
       66 MOVE                             R16 R2
       67 MOVE                             R17 R9
       68 MOVE                             R18 R10
       69 MOVE                             R19 R1
       70 MOVE                             R20 R3
       71 MOVE                             R21 R4
       72 CALL                             R15 6 1
       73 JUMP                             ; [+15]
       74 GETUPVAL                         R15 14
       75 GETTABLEKS                       R17 R6 K17 ["ViewType"]
       77 GETUPVAL                         R20 4
       78 GETTABLEKS                       R19 R20 K17 ["ViewType"]
       80 GETTABLEKS                       R18 R19 K18 ["Grid"]
       82 JUMPIFEQ                         R17 R18 ; [+2]
       84 LOADB                            R16 0 +1
       85 LOADB                            R16 1
       86 MOVE                             R17 R10
       87 MOVE                             R18 R2
       88 CALL                             R15 3 1
       89 SETTABLEKS                       R15 R14 K11 ["Contents"]
       91 JUMPIFNOT                        R10 ; [+36]
       92 GETUPVAL                         R16 10
       93 GETTABLEKS                       R15 R16 K6 ["createElement"]
       95 GETUPVAL                         R16 11
       96 NEWTABLE                         R17 2 0
       98 NAMECALL                         R18 R2 K15 ["getNextOrder"]
      100 CALL                             R18 1 1
      101 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
      103 GETUPVAL                         R19 10
      104 GETTABLEKS                       R18 R19 K8 ["Tag"]
      106 LOADK                            R19 K19 ["am-size-full-scrollbar"]
      107 SETTABLE                         R19 R17 R18
      108 DUPTABLE                         R18 K21 [{"LoadingBar"}]
      109 GETUPVAL                         R20 10
      110 GETTABLEKS                       R19 R20 K6 ["createElement"]
      112 GETUPVAL                         R20 15
      113 DUPTABLE                         R21 K23 [{"LayoutOrder", "Progress"}]
      114 NAMECALL                         R22 R2 K15 ["getNextOrder"]
      116 CALL                             R22 1 1
      117 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
      119 GETTABLEKS                       R22 R7 K24 ["FetchProgress"]
      121 SETTABLEKS                       R22 R21 K22 ["Progress"]
      123 CALL                             R19 2 1
      124 SETTABLEKS                       R19 R18 K20 ["LoadingBar"]
      126 CALL                             R15 3 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R15
      129 SETTABLEKS                       R15 R14 K12 ["LoadingBarContainer"]
      131 CALL                             R11 3 -1
      132 RETURN                           R11 -1

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
       69 GETTABLEKS                       R16 R17 K22 ["Hooks"]
       71 GETTABLEKS                       R15 R16 K23 ["useContextMenu"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K5 [require]
       76 GETTABLEKS                       R18 R0 K19 ["Src"]
       78 GETTABLEKS                       R17 R18 K22 ["Hooks"]
       80 GETTABLEKS                       R16 R17 K24 ["useCurrentScope"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K5 [require]
       85 GETTABLEKS                       R19 R0 K19 ["Src"]
       87 GETTABLEKS                       R18 R19 K22 ["Hooks"]
       89 GETTABLEKS                       R17 R18 K25 ["useFetchProgressInfo"]
       91 CALL                             R16 1 1
       92 GETIMPORT                        R17 K5 [require]
       94 GETTABLEKS                       R20 R0 K19 ["Src"]
       96 GETTABLEKS                       R19 R20 K22 ["Hooks"]
       98 GETTABLEKS                       R18 R19 K26 ["useLayoutInfo"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K5 [require]
      103 GETTABLEKS                       R21 R0 K19 ["Src"]
      105 GETTABLEKS                       R20 R21 K22 ["Hooks"]
      107 GETTABLEKS                       R19 R20 K27 ["useItems"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K5 [require]
      112 GETTABLEKS                       R22 R0 K19 ["Src"]
      114 GETTABLEKS                       R21 R22 K22 ["Hooks"]
      116 GETTABLEKS                       R20 R21 K28 ["useSearchInfo"]
      118 CALL                             R19 1 1
      119 GETTABLEKS                       R21 R2 K29 ["Util"]
      121 GETTABLEKS                       R20 R21 K30 ["LayoutOrderIterator"]
      123 GETIMPORT                        R21 K5 [require]
      125 GETTABLEKS                       R23 R0 K19 ["Src"]
      127 GETTABLEKS                       R22 R23 K31 ["Types"]
      129 CALL                             R21 1 1
      130 DUPCLOSURE                       R22 K32 [PROTO_0]
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R11
      134 DUPCLOSURE                       R23 K33 [PROTO_2]
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R9
      140 DUPCLOSURE                       R24 K34 [PROTO_3]
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R20
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R23
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R6
      157 RETURN                           R24 1
