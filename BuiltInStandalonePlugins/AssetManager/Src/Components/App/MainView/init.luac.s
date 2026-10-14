PROTO_0:
        0 JUMPIFNOT                        R0 ; [+25]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["createElement"]
        4 GETUPVAL                         R4 1
        5 NEWTABLE                         R5 2 0
        7 NAMECALL                         R6 R2 K1 ["getNextOrder"]
        9 CALL                             R6 1 1
       10 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K3 ["Tag"]
       15 LOADK                            R7 K4 ["MainContents %*"]
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADK                            R9 K5 ["HasLoadingBar"]
       18 JUMP                             ; [+1]
       19 LOADK                            R9 K6 [""]
       20 NAMECALL                         R7 R7 K7 ["format"]
       22 CALL                             R7 2 1
       23 SETTABLE                         R7 R5 R6
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["createElement"]
       29 GETUPVAL                         R4 2
       30 NEWTABLE                         R5 2 0
       32 NAMECALL                         R6 R2 K1 ["getNextOrder"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K3 ["Tag"]
       40 LOADK                            R7 K4 ["MainContents %*"]
       41 JUMPIFNOT                        R1 ; [+2]
       42 LOADK                            R9 K5 ["HasLoadingBar"]
       43 JUMP                             ; [+1]
       44 LOADK                            R9 K6 [""]
       45 NAMECALL                         R7 R7 K7 ["format"]
       47 CALL                             R7 2 1
       48 SETTABLE                         R7 R5 R6
       49 CALL                             R3 2 -1
       50 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R5 R5 K1 ["IxpVariable"]
       10 GETTABLEKS                       R5 R5 K2 ["Omnisearch"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K3 ["IxpValue"]
       16 GETTABLEKS                       R5 R5 K4 ["Experiment"]
       18 JUMPIFEQ                         R4 R5 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 GETUPVAL                         R4 4
       23 CALL                             R4 0 1
       24 GETUPVAL                         R5 5
       25 CALL                             R5 0 1
       26 GETUPVAL                         R6 6
       27 GETTABLEKS                       R7 R4 K5 ["Uid"]
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 7
       31 CALL                             R7 0 1
       32 GETTABLEKS                       R8 R6 K6 ["IsLoading"]
       34 GETUPVAL                         R9 8
       35 GETTABLEKS                       R9 R9 K7 ["createElement"]
       37 GETUPVAL                         R10 9
       38 NEWTABLE                         R11 2 0
       40 GETTABLEKS                       R12 R0 K8 ["LayoutOrder"]
       42 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       44 GETUPVAL                         R12 8
       45 GETTABLEKS                       R12 R12 K9 ["Tag"]
       47 LOADK                            R13 K10 ["X-Stroke X-Top X-Column"]
       48 SETTABLE                         R13 R11 R12
       49 DUPTABLE                         R12 K16 [{"HeaderBar", "ActiveSearchFilters", "Contents", "LoadingBarContainer", "FooterBar"}]
       50 JUMPIFNOT                        R2 ; [+12]
       51 GETUPVAL                         R13 8
       52 GETTABLEKS                       R13 R13 K7 ["createElement"]
       54 GETUPVAL                         R14 10
       55 DUPTABLE                         R15 K17 [{"LayoutOrder"}]
       56 NAMECALL                         R16 R1 K18 ["getNextOrder"]
       58 CALL                             R16 1 1
       59 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
       61 CALL                             R13 2 1
       62 JUMP                             ; [+11]
       63 GETUPVAL                         R13 8
       64 GETTABLEKS                       R13 R13 K7 ["createElement"]
       66 GETUPVAL                         R14 11
       67 DUPTABLE                         R15 K17 [{"LayoutOrder"}]
       68 NAMECALL                         R16 R1 K18 ["getNextOrder"]
       70 CALL                             R16 1 1
       71 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
       73 CALL                             R13 2 1
       74 SETTABLEKS                       R13 R12 K11 ["HeaderBar"]
       76 JUMPIF                           R2 ; [+13]
       77 JUMPIFNOT                        R3 ; [+12]
       78 GETUPVAL                         R13 8
       79 GETTABLEKS                       R13 R13 K7 ["createElement"]
       81 GETUPVAL                         R14 12
       82 DUPTABLE                         R15 K17 [{"LayoutOrder"}]
       83 NAMECALL                         R16 R1 K18 ["getNextOrder"]
       85 CALL                             R16 1 1
       86 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
       88 CALL                             R13 2 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R13
       91 SETTABLEKS                       R13 R12 K12 ["ActiveSearchFilters"]
       93 LENGTH                           R14 R7
       94 JUMPIFNOTEQKN                    R14 K19 [0] ; [+15]
       96 GETUPVAL                         R13 8
       97 GETTABLEKS                       R13 R13 K7 ["createElement"]
       99 GETUPVAL                         R14 13
      100 DUPTABLE                         R15 K20 [{"LayoutOrder", "IsLoading"}]
      101 NAMECALL                         R16 R1 K18 ["getNextOrder"]
      103 CALL                             R16 1 1
      104 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      106 SETTABLEKS                       R8 R15 K6 ["IsLoading"]
      108 CALL                             R13 2 1
      109 JUMP                             ; [+15]
      110 GETUPVAL                         R13 14
      111 GETTABLEKS                       R15 R5 K21 ["ViewType"]
      113 GETUPVAL                         R16 3
      114 GETTABLEKS                       R16 R16 K21 ["ViewType"]
      116 GETTABLEKS                       R16 R16 K22 ["Grid"]
      118 JUMPIFEQ                         R15 R16 ; [+2]
      120 LOADB                            R14 0 +1
      121 LOADB                            R14 1
      122 MOVE                             R15 R8
      123 MOVE                             R16 R1
      124 CALL                             R13 3 1
      125 SETTABLEKS                       R13 R12 K13 ["Contents"]
      127 JUMPIFNOT                        R8 ; [+36]
      128 GETUPVAL                         R13 8
      129 GETTABLEKS                       R13 R13 K7 ["createElement"]
      131 GETUPVAL                         R14 9
      132 NEWTABLE                         R15 2 0
      134 NAMECALL                         R16 R1 K18 ["getNextOrder"]
      136 CALL                             R16 1 1
      137 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      139 GETUPVAL                         R16 8
      140 GETTABLEKS                       R16 R16 K9 ["Tag"]
      142 LOADK                            R17 K23 ["am-size-full-scrollbar"]
      143 SETTABLE                         R17 R15 R16
      144 DUPTABLE                         R16 K25 [{"LoadingBar"}]
      145 GETUPVAL                         R17 8
      146 GETTABLEKS                       R17 R17 K7 ["createElement"]
      148 GETUPVAL                         R18 15
      149 DUPTABLE                         R19 K27 [{"LayoutOrder", "Progress"}]
      150 NAMECALL                         R20 R1 K18 ["getNextOrder"]
      152 CALL                             R20 1 1
      153 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
      155 GETTABLEKS                       R20 R6 K28 ["FetchProgress"]
      157 SETTABLEKS                       R20 R19 K26 ["Progress"]
      159 CALL                             R17 2 1
      160 SETTABLEKS                       R17 R16 K24 ["LoadingBar"]
      162 CALL                             R13 3 1
      163 JUMP                             ; [+1]
      164 LOADNIL                          R13
      165 SETTABLEKS                       R13 R12 K14 ["LoadingBarContainer"]
      167 JUMPIFNOT                        R2 ; [+13]
      168 JUMPIF                           R3 ; [+12]
      169 GETUPVAL                         R13 8
      170 GETTABLEKS                       R13 R13 K7 ["createElement"]
      172 GETUPVAL                         R14 16
      173 DUPTABLE                         R15 K17 [{"LayoutOrder"}]
      174 NAMECALL                         R16 R1 K18 ["getNextOrder"]
      176 CALL                             R16 1 1
      177 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      179 CALL                             R13 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R13
      182 SETTABLEKS                       R13 R12 K15 ["FooterBar"]
      184 CALL                             R9 3 -1
      185 RETURN                           R9 -1

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
       52 GETTABLEKS                       R10 R10 K15 ["ActiveSearchFilters"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETIMPORT                        R11 K1 [script]
       59 GETTABLEKS                       R11 R11 K16 ["HeaderBar"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETIMPORT                        R12 K1 [script]
       66 GETTABLEKS                       R12 R12 K17 ["Compact"]
       68 GETTABLEKS                       R12 R12 K16 ["HeaderBar"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K5 [require]
       73 GETIMPORT                        R13 K1 [script]
       75 GETTABLEKS                       R13 R13 K17 ["Compact"]
       77 GETTABLEKS                       R13 R13 K18 ["FooterBar"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K5 [require]
       82 GETTABLEKS                       R14 R0 K19 ["Src"]
       84 GETTABLEKS                       R14 R14 K20 ["Hooks"]
       86 GETTABLEKS                       R14 R14 K21 ["useCurrentScope"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K5 [require]
       91 GETTABLEKS                       R15 R0 K19 ["Src"]
       93 GETTABLEKS                       R15 R15 K20 ["Hooks"]
       95 GETTABLEKS                       R15 R15 K22 ["useFetchProgressInfo"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K5 [require]
      100 GETTABLEKS                       R16 R0 K19 ["Src"]
      102 GETTABLEKS                       R16 R16 K20 ["Hooks"]
      104 GETTABLEKS                       R16 R16 K23 ["useIxpValue"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K5 [require]
      109 GETTABLEKS                       R17 R0 K19 ["Src"]
      111 GETTABLEKS                       R17 R17 K20 ["Hooks"]
      113 GETTABLEKS                       R17 R17 K24 ["useLayoutInfo"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R18 R0 K19 ["Src"]
      120 GETTABLEKS                       R18 R18 K20 ["Hooks"]
      122 GETTABLEKS                       R18 R18 K25 ["useIsCompact"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K5 [require]
      127 GETTABLEKS                       R19 R0 K19 ["Src"]
      129 GETTABLEKS                       R19 R19 K20 ["Hooks"]
      131 GETTABLEKS                       R19 R19 K26 ["useItems"]
      133 CALL                             R18 1 1
      134 GETTABLEKS                       R19 R2 K27 ["Util"]
      136 GETTABLEKS                       R19 R19 K28 ["LayoutOrderIterator"]
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K19 ["Src"]
      142 GETTABLEKS                       R21 R21 K29 ["Types"]
      144 CALL                             R20 1 1
      145 DUPCLOSURE                       R21 K30 [PROTO_0]
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R7
      149 DUPCLOSURE                       R22 K31 [PROTO_1]
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R12
      167 RETURN                           R22 1
