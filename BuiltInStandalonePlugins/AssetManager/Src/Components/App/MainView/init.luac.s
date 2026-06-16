PROTO_0:
        0 JUMPIFNOT                        R0 ; [+26]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["createElement"]
        4 GETUPVAL                         R4 1
        5 NEWTABLE                         R5 2 0
        7 NAMECALL                         R6 R2 K1 ["getNextOrder"]
        9 CALL                             R6 1 1
       10 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K3 ["Tag"]
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
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K0 ["createElement"]
       30 GETUPVAL                         R4 2
       31 NEWTABLE                         R5 2 0
       33 NAMECALL                         R6 R2 K1 ["getNextOrder"]
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K3 ["Tag"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 3
        6 GETUPVAL                         R5 2
        7 CALL                             R5 0 1
        8 GETUPVAL                         R6 3
        9 CALL                             R6 0 1
       10 GETUPVAL                         R7 4
       11 GETTABLEKS                       R8 R5 K1 ["Uid"]
       13 CALL                             R7 1 1
       14 GETUPVAL                         R8 5
       15 CALL                             R8 0 1
       16 GETTABLEKS                       R9 R7 K2 ["IsLoading"]
       18 GETUPVAL                         R10 6
       19 GETTABLEKS                       R10 R10 K3 ["createElement"]
       21 GETUPVAL                         R11 7
       22 NEWTABLE                         R12 2 0
       24 GETTABLEKS                       R13 R0 K4 ["LayoutOrder"]
       26 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       28 GETUPVAL                         R13 6
       29 GETTABLEKS                       R13 R13 K5 ["Tag"]
       31 LOADK                            R14 K6 ["X-Stroke X-Top X-Column"]
       32 SETTABLE                         R14 R12 R13
       33 DUPTABLE                         R13 K11 [{"HeaderBar", "Contents", "LoadingBarContainer", "FooterBar"}]
       34 GETUPVAL                         R15 8
       35 CALL                             R15 0 1
       36 JUMPIFNOT                        R15 ; [+13]
       37 JUMPIFNOT                        R4 ; [+12]
       38 GETUPVAL                         R14 6
       39 GETTABLEKS                       R14 R14 K3 ["createElement"]
       41 GETUPVAL                         R15 9
       42 DUPTABLE                         R16 K12 [{"LayoutOrder"}]
       43 NAMECALL                         R17 R1 K13 ["getNextOrder"]
       45 CALL                             R17 1 1
       46 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       48 CALL                             R14 2 1
       49 JUMP                             ; [+11]
       50 GETUPVAL                         R14 6
       51 GETTABLEKS                       R14 R14 K3 ["createElement"]
       53 GETUPVAL                         R15 10
       54 DUPTABLE                         R16 K12 [{"LayoutOrder"}]
       55 NAMECALL                         R17 R1 K13 ["getNextOrder"]
       57 CALL                             R17 1 1
       58 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       60 CALL                             R14 2 1
       61 SETTABLEKS                       R14 R13 K7 ["HeaderBar"]
       63 LENGTH                           R15 R8
       64 JUMPIFNOTEQKN                    R15 K14 [0] ; [+15]
       66 GETUPVAL                         R14 6
       67 GETTABLEKS                       R14 R14 K3 ["createElement"]
       69 GETUPVAL                         R15 11
       70 DUPTABLE                         R16 K15 [{"LayoutOrder", "IsLoading"}]
       71 NAMECALL                         R17 R1 K13 ["getNextOrder"]
       73 CALL                             R17 1 1
       74 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       76 SETTABLEKS                       R9 R16 K2 ["IsLoading"]
       78 CALL                             R14 2 1
       79 JUMP                             ; [+15]
       80 GETUPVAL                         R14 12
       81 GETTABLEKS                       R16 R6 K16 ["ViewType"]
       83 GETUPVAL                         R17 13
       84 GETTABLEKS                       R17 R17 K16 ["ViewType"]
       86 GETTABLEKS                       R17 R17 K17 ["Grid"]
       88 JUMPIFEQ                         R16 R17 ; [+2]
       90 LOADB                            R15 0 +1
       91 LOADB                            R15 1
       92 MOVE                             R16 R9
       93 MOVE                             R17 R1
       94 CALL                             R14 3 1
       95 SETTABLEKS                       R14 R13 K8 ["Contents"]
       97 JUMPIFNOT                        R9 ; [+36]
       98 GETUPVAL                         R14 6
       99 GETTABLEKS                       R14 R14 K3 ["createElement"]
      101 GETUPVAL                         R15 7
      102 NEWTABLE                         R16 2 0
      104 NAMECALL                         R17 R1 K13 ["getNextOrder"]
      106 CALL                             R17 1 1
      107 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      109 GETUPVAL                         R17 6
      110 GETTABLEKS                       R17 R17 K5 ["Tag"]
      112 LOADK                            R18 K18 ["am-size-full-scrollbar"]
      113 SETTABLE                         R18 R16 R17
      114 DUPTABLE                         R17 K20 [{"LoadingBar"}]
      115 GETUPVAL                         R18 6
      116 GETTABLEKS                       R18 R18 K3 ["createElement"]
      118 GETUPVAL                         R19 14
      119 DUPTABLE                         R20 K22 [{"LayoutOrder", "Progress"}]
      120 NAMECALL                         R21 R1 K13 ["getNextOrder"]
      122 CALL                             R21 1 1
      123 SETTABLEKS                       R21 R20 K4 ["LayoutOrder"]
      125 GETTABLEKS                       R21 R7 K23 ["FetchProgress"]
      127 SETTABLEKS                       R21 R20 K21 ["Progress"]
      129 CALL                             R18 2 1
      130 SETTABLEKS                       R18 R17 K19 ["LoadingBar"]
      132 CALL                             R14 3 1
      133 JUMP                             ; [+1]
      134 LOADNIL                          R14
      135 SETTABLEKS                       R14 R13 K9 ["LoadingBarContainer"]
      137 GETUPVAL                         R15 8
      138 CALL                             R15 0 1
      139 JUMPIFNOT                        R15 ; [+13]
      140 JUMPIFNOT                        R4 ; [+12]
      141 GETUPVAL                         R14 6
      142 GETTABLEKS                       R14 R14 K3 ["createElement"]
      144 GETUPVAL                         R15 15
      145 DUPTABLE                         R16 K12 [{"LayoutOrder"}]
      146 NAMECALL                         R17 R1 K13 ["getNextOrder"]
      148 CALL                             R17 1 1
      149 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      151 CALL                             R14 2 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R14
      154 SETTABLEKS                       R14 R13 K10 ["FooterBar"]
      156 CALL                             R10 3 -1
      157 RETURN                           R10 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["LoadingBar"]
       25 GETTABLEKS                       R5 R3 K11 ["Pane"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETIMPORT                        R7 K1 [script]
       31 GETTABLEKS                       R7 R7 K12 ["ContentGrid"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K5 [require]
       36 GETIMPORT                        R8 K1 [script]
       38 GETTABLEKS                       R8 R8 K13 ["ContentList"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R9 R9 K14 ["ContentPlaceholder"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K5 [require]
       50 GETIMPORT                        R10 K1 [script]
       52 GETTABLEKS                       R10 R10 K15 ["HeaderBar"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETIMPORT                        R11 K1 [script]
       59 GETTABLEKS                       R11 R11 K16 ["Compact"]
       61 GETTABLEKS                       R11 R11 K15 ["HeaderBar"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETIMPORT                        R12 K1 [script]
       68 GETTABLEKS                       R12 R12 K16 ["Compact"]
       70 GETTABLEKS                       R12 R12 K17 ["FooterBar"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R0 K18 ["Src"]
       77 GETTABLEKS                       R13 R13 K19 ["Flags"]
       79 GETTABLEKS                       R13 R13 K20 ["getFFlagAmrUseRedesignedCompactView"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R0 K18 ["Src"]
       86 GETTABLEKS                       R14 R14 K21 ["Hooks"]
       88 GETTABLEKS                       R14 R14 K22 ["useCurrentScope"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K5 [require]
       93 GETTABLEKS                       R15 R0 K18 ["Src"]
       95 GETTABLEKS                       R15 R15 K21 ["Hooks"]
       97 GETTABLEKS                       R15 R15 K23 ["useFetchProgressInfo"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R16 R0 K18 ["Src"]
      104 GETTABLEKS                       R16 R16 K21 ["Hooks"]
      106 GETTABLEKS                       R16 R16 K24 ["useLayoutInfo"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K5 [require]
      111 GETTABLEKS                       R17 R0 K18 ["Src"]
      113 GETTABLEKS                       R17 R17 K21 ["Hooks"]
      115 GETTABLEKS                       R17 R17 K25 ["usePluginSize"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K5 [require]
      120 GETTABLEKS                       R18 R0 K18 ["Src"]
      122 GETTABLEKS                       R18 R18 K21 ["Hooks"]
      124 GETTABLEKS                       R18 R18 K26 ["useItems"]
      126 CALL                             R17 1 1
      127 GETTABLEKS                       R18 R2 K27 ["Util"]
      129 GETTABLEKS                       R18 R18 K28 ["LayoutOrderIterator"]
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K18 ["Src"]
      135 GETTABLEKS                       R20 R20 K29 ["Types"]
      137 CALL                             R19 1 1
      138 DUPCLOSURE                       R20 K30 [PROTO_0]
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R7
      142 DUPCLOSURE                       R21 K31 [PROTO_1]
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R11
      159 RETURN                           R21 1
