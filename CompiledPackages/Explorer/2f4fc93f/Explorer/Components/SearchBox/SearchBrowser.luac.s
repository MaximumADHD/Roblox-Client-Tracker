PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["stepSelectedNode"]
        3 LOADN                            R3 255
        4 GETIMPORT                        R6 K4 [Enum.ModifierKey.Ctrl]
        6 NAMECALL                         R4 R1 K5 ["IsModifierKeyDown"]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K6 ["session"]
       12 GETTABLEKS                       R5 R5 K7 ["isInstanceIdSearched"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["stepSelectedNode"]
        3 LOADN                            R3 1
        4 GETIMPORT                        R6 K4 [Enum.ModifierKey.Ctrl]
        6 NAMECALL                         R4 R1 K5 ["IsModifierKeyDown"]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K6 ["session"]
       12 GETTABLEKS                       R5 R5 K7 ["isInstanceIdSearched"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["session"]
        3 GETTABLEKS                       R0 R0 K1 ["setSearch"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["session"]
        8 GETTABLEKS                       R1 R1 K2 ["getSearch"]
       10 CALL                             R1 0 1
       11 LOADB                            R2 1
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["use"]
       11 GETTABLEKS                       R3 R0 K3 ["session"]
       13 GETTABLEKS                       R3 R3 K4 ["searchResultCountObservable"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R4 R0 K3 ["session"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 2
       28 GETTABLEKS                       R7 R3 K6 ["stepSelectedNode"]
       30 GETTABLEKS                       R8 R0 K3 ["session"]
       32 GETTABLEKS                       R8 R8 K7 ["isInstanceIdSearched"]
       34 SETLIST                          R6 R7 2 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 3
       38 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R7 0 2
       45 GETTABLEKS                       R8 R3 K6 ["stepSelectedNode"]
       47 GETTABLEKS                       R9 R0 K3 ["session"]
       49 GETTABLEKS                       R9 R9 K7 ["isInstanceIdSearched"]
       51 SETLIST                          R7 R8 2 [1]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       57 NEWCLOSURE                       R7 P2
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R8 0 2
       61 GETTABLEKS                       R9 R0 K3 ["session"]
       63 GETTABLEKS                       R9 R9 K8 ["setSearch"]
       65 GETTABLEKS                       R10 R0 K3 ["session"]
       67 GETTABLEKS                       R10 R10 K9 ["getSearch"]
       69 SETLIST                          R8 R9 2 [1]
       71 CALL                             R6 2 1
       72 GETUPVAL                         R7 4
       73 CALL                             R7 0 1
       74 JUMPIFNOTEQKNIL                  R2 ; [+2]
       76 LOADB                            R8 0 +1
       77 LOADB                            R8 1
       78 GETUPVAL                         R9 5
       79 LOADK                            R10 K10 ["Frame"]
       80 NEWTABLE                         R11 2 0
       82 GETTABLEKS                       R12 R0 K11 ["layoutOrder"]
       84 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       86 GETUPVAL                         R12 3
       87 GETTABLEKS                       R12 R12 K13 ["Tag"]
       89 LOADK                            R13 K14 ["X-Row X-Middle Explorer-SidePadS Explorer-SearchBox-SearchBrowser data-testid=SearchBrowser"]
       90 SETTABLE                         R13 R11 R12
       91 DUPTABLE                         R12 K21 [{"LoadingSpinner", "ResultCount", "FindPrevious", "FindNext", "SelectAll", "Refresh"}]
       92 NOT                              R13 R8
       93 JUMPIFNOT                        R13 ; [+8]
       94 GETUPVAL                         R13 5
       95 GETUPVAL                         R14 6
       96 DUPTABLE                         R15 K22 [{"layoutOrder"}]
       97 MOVE                             R16 R7
       98 CALL                             R16 0 1
       99 SETTABLEKS                       R16 R15 K11 ["layoutOrder"]
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R12 K15 ["LoadingSpinner"]
      104 GETUPVAL                         R13 5
      105 LOADK                            R14 K23 ["TextLabel"]
      106 NEWTABLE                         R15 4 0
      108 MOVE                             R16 R7
      109 CALL                             R16 0 1
      110 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      112 JUMPIF                           R8 ; [+2]
      113 LOADK                            R16 K24 [""]
      114 JUMP                             ; [+19]
      115 JUMPIFNOTEQKN                    R2 K25 [1] ; [+7]
      117 LOADK                            R18 K26 ["SearchBrowser"]
      118 LOADK                            R19 K27 ["ResultCountSingular"]
      119 NAMECALL                         R16 R1 K28 ["getText"]
      121 CALL                             R16 3 1
      122 JUMP                             ; [+11]
      123 LOADK                            R18 K26 ["SearchBrowser"]
      124 LOADK                            R19 K29 ["ResultCountPlural_v2_1"]
      125 DUPTABLE                         R20 K31 [{"resultCount"}]
      126 GETUPVAL                         R21 7
      127 ORK                              R22 R2 K32 [0]
      128 CALL                             R21 1 1
      129 SETTABLEKS                       R21 R20 K30 ["resultCount"]
      131 NAMECALL                         R16 R1 K28 ["getText"]
      133 CALL                             R16 4 1
      134 SETTABLEKS                       R16 R15 K33 ["Text"]
      136 GETUPVAL                         R16 3
      137 GETTABLEKS                       R16 R16 K13 ["Tag"]
      139 LOADK                            R18 K34 ["Explorer-FillX data-testid=SearchBrowser-ResultCountLabel"]
      140 GETUPVAL                         R20 8
      141 CALL                             R20 0 1
      142 JUMPIFNOT                        R20 ; [+2]
      143 LOADK                            R19 K35 [" Explorer-Content-Muted"]
      144 JUMP                             ; [+6]
      145 GETUPVAL                         R20 9
      146 CALL                             R20 0 1
      147 JUMPIFNOT                        R20 ; [+2]
      148 LOADK                            R19 K36 [" DEPRECATED_Explorer-Text-Size-14 Explorer-Content-Muted"]
      149 JUMP                             ; [+1]
      150 LOADK                            R19 K24 [""]
      151 CONCAT                           R17 R18 R19
      152 SETTABLE                         R17 R15 R16
      153 CALL                             R13 2 1
      154 SETTABLEKS                       R13 R12 K16 ["ResultCount"]
      156 GETUPVAL                         R13 5
      157 GETUPVAL                         R14 10
      158 DUPTABLE                         R15 K40 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
      159 GETUPVAL                         R16 11
      160 GETTABLEKS                       R16 R16 K41 ["standard"]
      162 LOADK                            R17 K42 ["findPrevious"]
      163 CALL                             R16 1 1
      164 SETTABLEKS                       R16 R15 K37 ["image"]
      166 MOVE                             R16 R7
      167 CALL                             R16 0 1
      168 SETTABLEKS                       R16 R15 K11 ["layoutOrder"]
      170 LOADK                            R18 K26 ["SearchBrowser"]
      171 LOADK                            R19 K43 ["SelectPreviousMatch"]
      172 NAMECALL                         R16 R1 K28 ["getText"]
      174 CALL                             R16 3 1
      175 SETTABLEKS                       R16 R15 K38 ["tooltipText"]
      177 SETTABLEKS                       R4 R15 K39 ["onActivated"]
      179 CALL                             R13 2 1
      180 SETTABLEKS                       R13 R12 K17 ["FindPrevious"]
      182 GETUPVAL                         R13 5
      183 GETUPVAL                         R14 10
      184 DUPTABLE                         R15 K40 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
      185 GETUPVAL                         R16 11
      186 GETTABLEKS                       R16 R16 K41 ["standard"]
      188 LOADK                            R17 K44 ["findNext"]
      189 CALL                             R16 1 1
      190 SETTABLEKS                       R16 R15 K37 ["image"]
      192 MOVE                             R16 R7
      193 CALL                             R16 0 1
      194 SETTABLEKS                       R16 R15 K11 ["layoutOrder"]
      196 LOADK                            R18 K26 ["SearchBrowser"]
      197 LOADK                            R19 K45 ["SelectNextMatch"]
      198 NAMECALL                         R16 R1 K28 ["getText"]
      200 CALL                             R16 3 1
      201 SETTABLEKS                       R16 R15 K38 ["tooltipText"]
      203 SETTABLEKS                       R5 R15 K39 ["onActivated"]
      205 CALL                             R13 2 1
      206 SETTABLEKS                       R13 R12 K18 ["FindNext"]
      208 GETUPVAL                         R13 5
      209 GETUPVAL                         R14 10
      210 DUPTABLE                         R15 K40 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
      211 GETUPVAL                         R16 11
      212 GETTABLEKS                       R16 R16 K41 ["standard"]
      214 LOADK                            R17 K46 ["selectAll"]
      215 CALL                             R16 1 1
      216 SETTABLEKS                       R16 R15 K37 ["image"]
      218 MOVE                             R16 R7
      219 CALL                             R16 0 1
      220 SETTABLEKS                       R16 R15 K11 ["layoutOrder"]
      222 LOADK                            R18 K26 ["SearchBrowser"]
      223 LOADK                            R19 K47 ["SelectAllMatches"]
      224 NAMECALL                         R16 R1 K28 ["getText"]
      226 CALL                             R16 3 1
      227 SETTABLEKS                       R16 R15 K38 ["tooltipText"]
      229 GETTABLEKS                       R16 R0 K3 ["session"]
      231 GETTABLEKS                       R16 R16 K48 ["selectAllSearchedIds"]
      233 SETTABLEKS                       R16 R15 K39 ["onActivated"]
      235 CALL                             R13 2 1
      236 SETTABLEKS                       R13 R12 K19 ["SelectAll"]
      238 GETUPVAL                         R13 5
      239 GETUPVAL                         R14 10
      240 DUPTABLE                         R15 K40 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
      241 GETUPVAL                         R16 11
      242 GETTABLEKS                       R16 R16 K41 ["standard"]
      244 LOADK                            R17 K49 ["refresh"]
      245 CALL                             R16 1 1
      246 SETTABLEKS                       R16 R15 K37 ["image"]
      248 MOVE                             R16 R7
      249 CALL                             R16 0 1
      250 SETTABLEKS                       R16 R15 K11 ["layoutOrder"]
      252 LOADK                            R18 K26 ["SearchBrowser"]
      253 LOADK                            R19 K50 ["RefreshResults"]
      254 NAMECALL                         R16 R1 K28 ["getText"]
      256 CALL                             R16 3 1
      257 SETTABLEKS                       R16 R15 K38 ["tooltipText"]
      259 SETTABLEKS                       R6 R15 K39 ["onActivated"]
      261 CALL                             R13 2 1
      262 SETTABLEKS                       R13 R12 K20 ["Refresh"]
      264 CALL                             R9 3 -1
      265 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["ImageUrl"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["SearchBox"]
       27 GETTABLEKS                       R4 R4 K12 ["LoadingSpinner"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["Observable"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["RpcTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K10 ["Components"]
       53 GETTABLEKS                       R8 R8 K11 ["SearchBox"]
       55 GETTABLEKS                       R8 R8 K16 ["SearchBrowserButton"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K8 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["createNextOrder"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Flags"]
       69 GETTABLEKS                       R10 R10 K19 ["getFFlagExplorerFixBlurryTextHopefully"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K18 ["Flags"]
       76 GETTABLEKS                       R11 R11 K20 ["getFFlagExplorerUseBuilderSans"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K8 ["Util"]
       83 GETTABLEKS                       R12 R12 K21 ["localizeInt"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K23 ["useSelectionStepper"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R5 K24 ["createElement"]
       95 DUPCLOSURE                       R14 K25 [PROTO_3]
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R2
      108 RETURN                           R14 1
