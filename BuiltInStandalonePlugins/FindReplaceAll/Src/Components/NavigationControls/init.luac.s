PROTO_0:
        0 MOVE                             R3 R2
        1 LOADK                            R4 K0 ["hovered"]
        2 JUMPIF                           R0 ; [+3]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R5 K1 ["Hover"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R5
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R3 R2
        1 LOADK                            R4 K0 ["hovered"]
        2 JUMPIF                           R0 ; [+3]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R5 K1 ["Hover"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R5
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["selection"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["numAllResults"]
        9 GETTABLEKS                       R1 R2 K1 ["get"]
       11 CALL                             R1 0 1
       12 LOADB                            R2 1
       13 JUMPIFEQKNIL                     R0 ; [+5]
       15 JUMPIFEQKN                       R1 K3 [1] ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K4 ["enabled"]
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R4
       24 LOADK                            R6 K5 ["hovered"]
       25 JUMPIF                           R2 ; [+3]
       26 JUMPIFNOT                        R3 ; [+2]
       27 LOADK                            R7 K6 ["Hover"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R7
       30 CALL                             R5 2 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["selection"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["numAllResults"]
        9 GETTABLEKS                       R1 R2 K1 ["get"]
       11 CALL                             R1 0 1
       12 LOADB                            R2 1
       13 JUMPIFEQKNIL                     R0 ; [+5]
       15 JUMPIFEQKN                       R1 K3 [1] ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K4 ["enabled"]
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R4
       24 LOADK                            R6 K5 ["hovered"]
       25 JUMPIF                           R2 ; [+3]
       26 JUMPIFNOT                        R3 ; [+2]
       27 LOADK                            R7 K6 ["Hover"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R7
       30 CALL                             R5 2 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["WidgetBody"]
        2 LOADK                            R5 K1 ["ResultsLabel"]
        3 DUPTABLE                         R6 K6 [{"numResults", "resultString", "numResultFiles", "fileString"}]
        4 LOADK                            R8 K7 ["%*"]
        5 MOVE                             R10 R0
        6 NAMECALL                         R8 R8 K8 ["format"]
        8 CALL                             R8 2 1
        9 MOVE                             R7 R8
       10 SETTABLEKS                       R7 R6 K2 ["numResults"]
       12 JUMPIFNOTEQKN                    R0 K9 [1] ; [+8]
       14 GETUPVAL                         R7 0
       15 LOADK                            R9 K1 ["ResultsLabel"]
       16 LOADK                            R10 K10 ["ResultString"]
       17 NAMECALL                         R7 R7 K11 ["getText"]
       19 CALL                             R7 3 1
       20 JUMP                             ; [+6]
       21 GETUPVAL                         R7 0
       22 LOADK                            R9 K1 ["ResultsLabel"]
       23 LOADK                            R10 K12 ["ResultStringPlural"]
       24 NAMECALL                         R7 R7 K11 ["getText"]
       26 CALL                             R7 3 1
       27 SETTABLEKS                       R7 R6 K3 ["resultString"]
       29 LOADK                            R8 K7 ["%*"]
       30 MOVE                             R10 R1
       31 NAMECALL                         R8 R8 K8 ["format"]
       33 CALL                             R8 2 1
       34 MOVE                             R7 R8
       35 SETTABLEKS                       R7 R6 K4 ["numResultFiles"]
       37 JUMPIFNOTEQKN                    R1 K9 [1] ; [+8]
       39 GETUPVAL                         R7 0
       40 LOADK                            R9 K1 ["ResultsLabel"]
       41 LOADK                            R10 K13 ["FileString"]
       42 NAMECALL                         R7 R7 K11 ["getText"]
       44 CALL                             R7 3 1
       45 JUMP                             ; [+6]
       46 GETUPVAL                         R7 0
       47 LOADK                            R9 K1 ["ResultsLabel"]
       48 LOADK                            R10 K14 ["FileStringPlural"]
       49 NAMECALL                         R7 R7 K11 ["getText"]
       51 CALL                             R7 3 1
       52 SETTABLEKS                       R7 R6 K5 ["fileString"]
       54 NAMECALL                         R2 R2 K11 ["getText"]
       56 CALL                             R2 4 -1
       57 RETURN                           R2 -1

PROTO_5:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKN                    R1 K0 [1] ; [+5]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["disabledTransparency"]
        7 JUMPIF                           R2 ; [+1]
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_6:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKN                    R1 K0 [1] ; [+5]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["disabledTransparency"]
        7 JUMPIF                           R2 ; [+1]
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["useRef"]
        9 LOADNIL                          R4
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K1 ["useRef"]
       14 LOADNIL                          R5
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 3
       17 MOVE                             R6 R3
       18 CALL                             R5 1 1
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R4
       21 CALL                             R6 1 1
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R7 R8 K2 ["useToggleState"]
       25 LOADB                            R8 0
       26 CALL                             R7 1 1
       27 GETUPVAL                         R9 4
       28 GETTABLEKS                       R8 R9 K2 ["useToggleState"]
       30 LOADB                            R9 0
       31 CALL                             R8 1 1
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R9 R10 K3 ["useCallback"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R11 0 4
       41 GETTABLEKS                       R12 R0 K4 ["selection"]
       43 GETTABLEKS                       R13 R0 K5 ["numAllResults"]
       45 MOVE                             R14 R7
       46 MOVE                             R15 R5
       47 SETLIST                          R11 R12 4 [1]
       49 CALL                             R9 2 1
       50 GETUPVAL                         R11 2
       51 GETTABLEKS                       R10 R11 K3 ["useCallback"]
       53 NEWCLOSURE                       R11 P1
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R6
       57 NEWTABLE                         R12 0 4
       59 GETTABLEKS                       R13 R0 K4 ["selection"]
       61 GETTABLEKS                       R14 R0 K5 ["numAllResults"]
       63 MOVE                             R15 R8
       64 MOVE                             R16 R6
       65 SETLIST                          R12 R13 4 [1]
       67 CALL                             R10 2 1
       68 GETUPVAL                         R12 5
       69 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       71 GETTABLEKS                       R12 R0 K4 ["selection"]
       73 MOVE                             R13 R9
       74 NEWTABLE                         R14 0 1
       76 MOVE                             R15 R9
       77 SETLIST                          R14 R15 1 [1]
       79 CALL                             R11 3 0
       80 GETUPVAL                         R12 5
       81 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       83 GETTABLEKS                       R12 R0 K4 ["selection"]
       85 MOVE                             R13 R10
       86 NEWTABLE                         R14 0 1
       88 MOVE                             R15 R10
       89 SETLIST                          R14 R15 1 [1]
       91 CALL                             R11 3 0
       92 GETUPVAL                         R11 6
       93 LOADK                            R12 K7 ["Frame"]
       94 NEWTABLE                         R13 8 0
       96 GETTABLEKS                       R14 R0 K8 ["ZIndex"]
       98 SETTABLEKS                       R14 R13 K8 ["ZIndex"]
      100 GETIMPORT                        R14 K11 [UDim2.new]
      102 LOADN                            R15 0
      103 LOADN                            R16 0
      104 LOADN                            R17 0
      105 GETUPVAL                         R19 7
      106 GETTABLEKS                       R18 R19 K12 ["searchBarHeight"]
      108 CALL                             R14 4 1
      109 SETTABLEKS                       R14 R13 K13 ["Size"]
      111 GETTABLEKS                       R14 R0 K14 ["Visible"]
      113 SETTABLEKS                       R14 R13 K14 ["Visible"]
      115 GETUPVAL                         R16 2
      116 GETTABLEKS                       R15 R16 K15 ["Change"]
      118 GETTABLEKS                       R14 R15 K16 ["AbsoluteSize"]
      120 GETTABLEKS                       R15 R0 K17 ["onSizeChanged"]
      122 SETTABLE                         R15 R13 R14
      123 GETUPVAL                         R15 2
      124 GETTABLEKS                       R14 R15 K18 ["Tag"]
      126 LOADK                            R15 K19 ["X-FitX X-Row X-Middle X-Left FindReplaceAll-NavigationControls data-testid=NavigationControlsFrame"]
      127 SETTABLE                         R15 R13 R14
      128 DUPTABLE                         R14 K23 [{"ResultsLabel", "FindPreviousButton", "FindNextButton"}]
      129 GETUPVAL                         R15 6
      130 LOADK                            R16 K24 ["TextLabel"]
      131 NEWTABLE                         R17 4 0
      133 MOVE                             R18 R2
      134 CALL                             R18 0 1
      135 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      137 GETUPVAL                         R18 8
      138 NEWCLOSURE                       R19 P2
      139 CAPTURE                          VAL R1
      140 GETTABLEKS                       R21 R0 K5 ["numAllResults"]
      142 GETTABLEKS                       R20 R21 K26 ["getBinding"]
      144 CALL                             R20 0 1
      145 GETTABLEKS                       R22 R0 K27 ["numAllScripts"]
      147 GETTABLEKS                       R21 R22 K26 ["getBinding"]
      149 CALL                             R21 0 -1
      150 CALL                             R18 -1 1
      151 SETTABLEKS                       R18 R17 K28 ["Text"]
      153 GETUPVAL                         R19 2
      154 GETTABLEKS                       R18 R19 K18 ["Tag"]
      156 LOADK                            R19 K29 ["X-FitX"]
      157 SETTABLE                         R19 R17 R18
      158 CALL                             R15 2 1
      159 SETTABLEKS                       R15 R14 K20 ["ResultsLabel"]
      161 GETUPVAL                         R15 6
      162 LOADK                            R16 K30 ["ImageButton"]
      163 NEWTABLE                         R17 8 0
      165 MOVE                             R18 R2
      166 CALL                             R18 0 1
      167 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      169 GETUPVAL                         R20 2
      170 GETTABLEKS                       R19 R20 K31 ["Event"]
      172 GETTABLEKS                       R18 R19 K32 ["MouseEnter"]
      174 GETTABLEKS                       R19 R8 K33 ["enable"]
      176 SETTABLE                         R19 R17 R18
      177 GETUPVAL                         R20 2
      178 GETTABLEKS                       R19 R20 K31 ["Event"]
      180 GETTABLEKS                       R18 R19 K34 ["MouseLeave"]
      182 GETTABLEKS                       R19 R8 K35 ["disable"]
      184 SETTABLE                         R19 R17 R18
      185 GETUPVAL                         R20 2
      186 GETTABLEKS                       R19 R20 K31 ["Event"]
      188 GETTABLEKS                       R18 R19 K36 ["MouseButton1Click"]
      190 GETTABLEKS                       R19 R0 K37 ["onFindPreviousClicked"]
      192 SETTABLE                         R19 R17 R18
      193 GETUPVAL                         R19 2
      194 GETTABLEKS                       R18 R19 K18 ["Tag"]
      196 LOADK                            R19 K38 ["data-testid=FindPreviousButton"]
      197 SETTABLE                         R19 R17 R18
      198 SETTABLEKS                       R4 R17 K39 ["ref"]
      200 DUPTABLE                         R18 K41 [{"Icon"}]
      201 GETUPVAL                         R19 6
      202 LOADK                            R20 K42 ["ImageLabel"]
      203 NEWTABLE                         R21 2 0
      205 GETUPVAL                         R22 8
      206 DUPCLOSURE                       R23 K43 [PROTO_5]
      207 CAPTURE                          UPVAL U7
      208 GETTABLEKS                       R25 R0 K4 ["selection"]
      210 GETTABLEKS                       R24 R25 K26 ["getBinding"]
      212 CALL                             R24 0 1
      213 GETTABLEKS                       R26 R0 K5 ["numAllResults"]
      215 GETTABLEKS                       R25 R26 K26 ["getBinding"]
      217 CALL                             R25 0 -1
      218 CALL                             R22 -1 1
      219 SETTABLEKS                       R22 R21 K44 ["ImageTransparency"]
      221 GETUPVAL                         R23 2
      222 GETTABLEKS                       R22 R23 K18 ["Tag"]
      224 LOADK                            R23 K45 ["X-AnchorCenter FindReplaceAll-Icon FindReplaceAll-Content-Standard FindReplaceAll-BG-Input FindPreviousIcon"]
      225 SETTABLE                         R23 R21 R22
      226 CALL                             R19 2 1
      227 SETTABLEKS                       R19 R18 K40 ["Icon"]
      229 CALL                             R15 3 1
      230 SETTABLEKS                       R15 R14 K21 ["FindPreviousButton"]
      232 GETUPVAL                         R15 6
      233 LOADK                            R16 K30 ["ImageButton"]
      234 NEWTABLE                         R17 8 0
      236 MOVE                             R18 R2
      237 CALL                             R18 0 1
      238 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      240 GETUPVAL                         R20 2
      241 GETTABLEKS                       R19 R20 K31 ["Event"]
      243 GETTABLEKS                       R18 R19 K32 ["MouseEnter"]
      245 GETTABLEKS                       R19 R7 K33 ["enable"]
      247 SETTABLE                         R19 R17 R18
      248 GETUPVAL                         R20 2
      249 GETTABLEKS                       R19 R20 K31 ["Event"]
      251 GETTABLEKS                       R18 R19 K34 ["MouseLeave"]
      253 GETTABLEKS                       R19 R7 K35 ["disable"]
      255 SETTABLE                         R19 R17 R18
      256 GETUPVAL                         R20 2
      257 GETTABLEKS                       R19 R20 K31 ["Event"]
      259 GETTABLEKS                       R18 R19 K36 ["MouseButton1Click"]
      261 GETTABLEKS                       R19 R0 K46 ["onFindNextClicked"]
      263 SETTABLE                         R19 R17 R18
      264 GETUPVAL                         R19 2
      265 GETTABLEKS                       R18 R19 K18 ["Tag"]
      267 LOADK                            R19 K47 ["data-testid=FindNextButton"]
      268 SETTABLE                         R19 R17 R18
      269 SETTABLEKS                       R3 R17 K39 ["ref"]
      271 DUPTABLE                         R18 K41 [{"Icon"}]
      272 GETUPVAL                         R19 6
      273 LOADK                            R20 K42 ["ImageLabel"]
      274 NEWTABLE                         R21 2 0
      276 GETUPVAL                         R22 8
      277 DUPCLOSURE                       R23 K48 [PROTO_6]
      278 CAPTURE                          UPVAL U7
      279 GETTABLEKS                       R25 R0 K4 ["selection"]
      281 GETTABLEKS                       R24 R25 K26 ["getBinding"]
      283 CALL                             R24 0 1
      284 GETTABLEKS                       R26 R0 K5 ["numAllResults"]
      286 GETTABLEKS                       R25 R26 K26 ["getBinding"]
      288 CALL                             R25 0 -1
      289 CALL                             R22 -1 1
      290 SETTABLEKS                       R22 R21 K44 ["ImageTransparency"]
      292 GETUPVAL                         R23 2
      293 GETTABLEKS                       R22 R23 K18 ["Tag"]
      295 LOADK                            R23 K49 ["X-AnchorCenter FindReplaceAll-Icon FindReplaceAll-Content-Standard FindReplaceAll-BG-Input FindNextIcon"]
      296 SETTABLE                         R23 R21 R22
      297 CALL                             R19 2 1
      298 SETTABLEKS                       R19 R18 K40 ["Icon"]
      300 CALL                             R15 3 1
      301 SETTABLEKS                       R15 R14 K22 ["FindNextButton"]
      303 CALL                             R11 3 -1
      304 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["Observable"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["Localization"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K9 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Resources"]
       47 GETTABLEKS                       R8 R9 K16 ["StyleConstants"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K9 ["Src"]
       54 GETTABLEKS                       R10 R11 K17 ["Hooks"]
       56 GETTABLEKS                       R9 R10 K18 ["useImperativeTagger"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R12 R0 K9 ["Src"]
       63 GETTABLEKS                       R11 R12 K10 ["Util"]
       65 GETTABLEKS                       R10 R11 K19 ["joinAndMapBindings"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R13 R0 K6 ["Packages"]
       72 GETTABLEKS                       R12 R13 K8 ["ReactUtils"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R10 R11 K20 ["createNextOrder"]
       77 GETTABLEKS                       R11 R1 K21 ["createElement"]
       79 GETIMPORT                        R12 K5 [require]
       81 GETTABLEKS                       R14 R0 K9 ["Src"]
       83 GETTABLEKS                       R13 R14 K22 ["Types"]
       85 CALL                             R12 1 1
       86 DUPCLOSURE                       R13 K23 [PROTO_0]
       87 DUPCLOSURE                       R14 K24 [PROTO_1]
       88 DUPCLOSURE                       R15 K25 [PROTO_7]
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R9
       98 RETURN                           R15 1
