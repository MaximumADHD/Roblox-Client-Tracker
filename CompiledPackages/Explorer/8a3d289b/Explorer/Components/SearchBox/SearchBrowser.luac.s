PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["stepSelectedNode"]
        3 LOADN                            R3 -1
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["session"]
        3 GETTABLEKS                       R0 R0 K1 ["areAllSearchedIdsSelected"]
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+12]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["session"]
       10 GETTABLEKS                       R0 R0 K2 ["selectIds"]
       12 GETIMPORT                        R1 K5 [table.freeze]
       14 NEWTABLE                         R2 0 0
       16 CALL                             R1 1 -1
       17 CALL                             R0 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K0 ["session"]
       22 GETTABLEKS                       R0 R0 K6 ["selectAllSearchedIds"]
       24 CALL                             R0 0 0
       25 RETURN                           R0 0

PROTO_4:
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
       78 GETUPVAL                         R9 3
       79 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       81 NEWCLOSURE                       R10 P3
       82 CAPTURE                          VAL R0
       83 NEWTABLE                         R11 0 0
       85 CALL                             R9 2 1
       86 GETUPVAL                         R10 5
       87 LOADK                            R11 K10 ["Frame"]
       88 NEWTABLE                         R12 2 0
       90 GETTABLEKS                       R13 R0 K11 ["layoutOrder"]
       92 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       94 GETUPVAL                         R13 3
       95 GETTABLEKS                       R13 R13 K13 ["Tag"]
       97 LOADK                            R14 K14 ["X-Row X-Middle Explorer-SidePadS Explorer-SearchBox-SearchBrowser data-testid=SearchBrowser"]
       98 SETTABLE                         R14 R12 R13
       99 DUPTABLE                         R13 K21 [{"LoadingSpinner", "ResultCount", "FindPrevious", "FindNext", "SelectAll", "Refresh"}]
      100 NOT                              R14 R8
      101 JUMPIFNOT                        R14 ; [+8]
      102 GETUPVAL                         R14 5
      103 GETUPVAL                         R15 6
      104 DUPTABLE                         R16 K22 [{"layoutOrder"}]
      105 MOVE                             R17 R7
      106 CALL                             R17 0 1
      107 SETTABLEKS                       R17 R16 K11 ["layoutOrder"]
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K15 ["LoadingSpinner"]
      112 GETUPVAL                         R14 5
      113 LOADK                            R15 K23 ["TextLabel"]
      114 NEWTABLE                         R16 4 0
      116 MOVE                             R17 R7
      117 CALL                             R17 0 1
      118 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      120 JUMPIF                           R8 ; [+2]
      121 LOADK                            R17 K24 [""]
      122 JUMP                             ; [+19]
      123 JUMPIFNOTEQKN                    R2 K25 [1] ; [+7]
      125 LOADK                            R19 K26 ["SearchBrowser"]
      126 LOADK                            R20 K27 ["ResultCountSingular"]
      127 NAMECALL                         R17 R1 K28 ["getText"]
      129 CALL                             R17 3 1
      130 JUMP                             ; [+11]
      131 LOADK                            R19 K26 ["SearchBrowser"]
      132 LOADK                            R20 K29 ["ResultCountPlural_v2_1"]
      133 DUPTABLE                         R21 K31 [{"resultCount"}]
      134 GETUPVAL                         R22 7
      135 ORK                              R23 R2 K32 [0]
      136 CALL                             R22 1 1
      137 SETTABLEKS                       R22 R21 K30 ["resultCount"]
      139 NAMECALL                         R17 R1 K28 ["getText"]
      141 CALL                             R17 4 1
      142 SETTABLEKS                       R17 R16 K33 ["Text"]
      144 GETUPVAL                         R17 3
      145 GETTABLEKS                       R17 R17 K13 ["Tag"]
      147 LOADK                            R19 K34 ["Explorer-FillX data-testid=SearchBrowser-ResultCountLabel"]
      148 GETUPVAL                         R21 8
      149 CALL                             R21 0 1
      150 JUMPIFNOT                        R21 ; [+2]
      151 LOADK                            R20 K35 [" Explorer-Content-Muted"]
      152 JUMP                             ; [+6]
      153 GETUPVAL                         R21 9
      154 CALL                             R21 0 1
      155 JUMPIFNOT                        R21 ; [+2]
      156 LOADK                            R20 K36 [" DEPRECATED_Explorer-Text-Size-14 Explorer-Content-Muted"]
      157 JUMP                             ; [+1]
      158 LOADK                            R20 K24 [""]
      159 CONCAT                           R18 R19 R20
      160 SETTABLE                         R18 R16 R17
      161 CALL                             R14 2 1
      162 SETTABLEKS                       R14 R13 K16 ["ResultCount"]
      164 GETUPVAL                         R14 5
      165 GETUPVAL                         R15 10
      166 DUPTABLE                         R16 K40 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
      167 GETUPVAL                         R17 11
      168 GETTABLEKS                       R17 R17 K41 ["standard"]
      170 LOADK                            R18 K42 ["findPrevious"]
      171 CALL                             R17 1 1
      172 SETTABLEKS                       R17 R16 K37 ["image"]
      174 MOVE                             R17 R7
      175 CALL                             R17 0 1
      176 SETTABLEKS                       R17 R16 K11 ["layoutOrder"]
      178 LOADK                            R19 K26 ["SearchBrowser"]
      179 LOADK                            R20 K43 ["SelectPreviousMatch"]
      180 NAMECALL                         R17 R1 K28 ["getText"]
      182 CALL                             R17 3 1
      183 SETTABLEKS                       R17 R16 K38 ["tooltipText"]
      185 SETTABLEKS                       R4 R16 K39 ["onActivated"]
      187 CALL                             R14 2 1
      188 SETTABLEKS                       R14 R13 K17 ["FindPrevious"]
      190 GETUPVAL                         R14 5
      191 GETUPVAL                         R15 10
      192 DUPTABLE                         R16 K40 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
      193 GETUPVAL                         R17 11
      194 GETTABLEKS                       R17 R17 K41 ["standard"]
      196 LOADK                            R18 K44 ["findNext"]
      197 CALL                             R17 1 1
      198 SETTABLEKS                       R17 R16 K37 ["image"]
      200 MOVE                             R17 R7
      201 CALL                             R17 0 1
      202 SETTABLEKS                       R17 R16 K11 ["layoutOrder"]
      204 LOADK                            R19 K26 ["SearchBrowser"]
      205 LOADK                            R20 K45 ["SelectNextMatch"]
      206 NAMECALL                         R17 R1 K28 ["getText"]
      208 CALL                             R17 3 1
      209 SETTABLEKS                       R17 R16 K38 ["tooltipText"]
      211 SETTABLEKS                       R5 R16 K39 ["onActivated"]
      213 CALL                             R14 2 1
      214 SETTABLEKS                       R14 R13 K18 ["FindNext"]
      216 GETUPVAL                         R14 5
      217 GETUPVAL                         R15 10
      218 DUPTABLE                         R16 K40 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
      219 GETUPVAL                         R17 11
      220 GETTABLEKS                       R17 R17 K41 ["standard"]
      222 LOADK                            R18 K46 ["selectAll"]
      223 CALL                             R17 1 1
      224 SETTABLEKS                       R17 R16 K37 ["image"]
      226 MOVE                             R17 R7
      227 CALL                             R17 0 1
      228 SETTABLEKS                       R17 R16 K11 ["layoutOrder"]
      230 LOADK                            R19 K26 ["SearchBrowser"]
      231 LOADK                            R20 K47 ["SelectAllMatches"]
      232 NAMECALL                         R17 R1 K28 ["getText"]
      234 CALL                             R17 3 1
      235 SETTABLEKS                       R17 R16 K38 ["tooltipText"]
      237 GETUPVAL                         R18 12
      238 CALL                             R18 0 1
      239 JUMPIFNOT                        R18 ; [+2]
      240 MOVE                             R17 R9
      241 JUMP                             ; [+4]
      242 GETTABLEKS                       R17 R0 K3 ["session"]
      244 GETTABLEKS                       R17 R17 K48 ["selectAllSearchedIds"]
      246 SETTABLEKS                       R17 R16 K39 ["onActivated"]
      248 CALL                             R14 2 1
      249 SETTABLEKS                       R14 R13 K19 ["SelectAll"]
      251 GETUPVAL                         R14 5
      252 GETUPVAL                         R15 10
      253 DUPTABLE                         R16 K40 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
      254 GETUPVAL                         R17 11
      255 GETTABLEKS                       R17 R17 K41 ["standard"]
      257 LOADK                            R18 K49 ["refresh"]
      258 CALL                             R17 1 1
      259 SETTABLEKS                       R17 R16 K37 ["image"]
      261 MOVE                             R17 R7
      262 CALL                             R17 0 1
      263 SETTABLEKS                       R17 R16 K11 ["layoutOrder"]
      265 LOADK                            R19 K26 ["SearchBrowser"]
      266 LOADK                            R20 K50 ["RefreshResults"]
      267 NAMECALL                         R17 R1 K28 ["getText"]
      269 CALL                             R17 3 1
      270 SETTABLEKS                       R17 R16 K38 ["tooltipText"]
      272 SETTABLEKS                       R6 R16 K39 ["onActivated"]
      274 CALL                             R14 2 1
      275 SETTABLEKS                       R14 R13 K20 ["Refresh"]
      277 CALL                             R10 3 -1
      278 RETURN                           R10 -1

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
       76 GETTABLEKS                       R11 R11 K20 ["getFFlagExplorerToggleSelectAll"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K18 ["Flags"]
       83 GETTABLEKS                       R12 R12 K21 ["getFFlagExplorerUseBuilderSans"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K8 ["Util"]
       90 GETTABLEKS                       R13 R13 K22 ["localizeInt"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K24 ["useSelectionStepper"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R5 K25 ["createElement"]
      102 DUPCLOSURE                       R15 K26 [PROTO_4]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R10
      116 RETURN                           R15 1
