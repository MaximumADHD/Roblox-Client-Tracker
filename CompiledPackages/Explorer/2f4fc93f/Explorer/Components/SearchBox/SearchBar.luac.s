PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       11 LOADK                            R3 K2 ["Expected textBox to exist"]
       12 GETIMPORT                        R1 K4 [assert]
       14 CALL                             R1 2 0
       15 NAMECALL                         R1 R0 K5 ["CaptureFocus"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 1
       19 LOADB                            R2 1
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["onFocused"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R4 1
        1 LOADN                            R5 255
        2 NAMECALL                         R2 R1 K0 ["sub"]
        4 CALL                             R2 3 1
        5 MOVE                             R1 R2
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getSearchHistory"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K4 [table.find]
       13 MOVE                             R4 R2
       14 MOVE                             R5 R1
       15 CALL                             R3 2 1
       16 JUMPIFEQKNIL                     R3 ; [+6]
       18 GETIMPORT                        R4 K6 [table.remove]
       20 MOVE                             R5 R2
       21 MOVE                             R6 R3
       22 CALL                             R4 2 0
       23 LOADN                            R6 1
       24 FASTCALL3                        TABLE_INSERT R2 R6 R1
       26 MOVE                             R5 R2
       27 MOVE                             R7 R1
       28 GETIMPORT                        R4 K8 [table.insert]
       30 CALL                             R4 3 0
       31 LENGTH                           R4 R2
       32 LOADN                            R5 10
       33 JUMPIFNOTLT                      R5 R4 ; [+5]
       35 GETIMPORT                        R4 K6 [table.remove]
       37 MOVE                             R5 R2
       38 CALL                             R4 1 0
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K9 ["saveSearchHistory"]
       42 MOVE                             R5 R0
       43 MOVE                             R6 R2
       44 CALL                             R4 2 0
       45 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R2 ; [+5]
        2 GETUPVAL                         R3 0
        3 LOADB                            R4 0
        4 CALL                             R3 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["windowHoveredObservable"]
        9 GETTABLEKS                       R3 R3 K1 ["get"]
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+15]
       13 LOADB                            R3 0
       14 GETTABLEKS                       R4 R2 K2 ["UserInputType"]
       16 GETIMPORT                        R5 K5 [Enum.UserInputType.Focus]
       18 JUMPIFNOTEQ                      R4 R5 ; [+9]
       20 GETTABLEKS                       R4 R2 K6 ["UserInputState"]
       22 GETIMPORT                        R5 K8 [Enum.UserInputState.End]
       24 JUMPIFEQ                         R4 R5 ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 JUMPIF                           R3 ; [+7]
       29 GETUPVAL                         R4 2
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K9 ["searchBarRef"]
       33 MOVE                             R6 R2
       34 CALL                             R4 2 1
       35 JUMPIFNOT                        R4 ; [+3]
       36 GETUPVAL                         R4 3
       37 CALL                             R4 0 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R4 0
       40 LOADB                            R5 0
       41 CALL                             R4 1 0
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K10 ["session"]
       45 GETTABLEKS                       R4 R4 K11 ["placeIdObservable"]
       47 GETTABLEKS                       R4 R4 K1 ["get"]
       49 CALL                             R4 0 1
       50 JUMPIFNOT                        R1 ; [+14]
       51 JUMPIFNOT                        R4 ; [+13]
       52 GETIMPORT                        R5 K14 [string.gsub]
       54 GETTABLEKS                       R6 R0 K15 ["Text"]
       56 LOADK                            R7 K16 ["^%s*(.-)%s*$"]
       57 LOADK                            R8 K17 ["%1"]
       58 CALL                             R5 3 1
       59 JUMPIFEQKS                       R5 K18 [""] ; [+5]
       61 GETUPVAL                         R6 4
       62 MOVE                             R7 R4
       63 MOVE                             R8 R5
       64 CALL                             R6 2 0
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K19 ["onFocusLost"]
       68 MOVE                             R6 R0
       69 MOVE                             R7 R1
       70 MOVE                             R8 R2
       71 GETUPVAL                         R9 3
       72 CALL                             R5 4 0
       73 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["session"]
        5 GETTABLEKS                       R0 R0 K1 ["placeIdObservable"]
        7 GETTABLEKS                       R0 R0 K2 ["get"]
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["getSearchHistory"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 JUMP                             ; [+2]
       17 NEWTABLE                         R1 0 0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["onSearchHistoryButtonClicked"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       13 LOADK                            R3 K2 ["Expected textBox to exist"]
       14 GETIMPORT                        R1 K4 [assert]
       16 CALL                             R1 2 0
       17 LOADK                            R1 K5 [""]
       18 SETTABLEKS                       R1 R0 K6 ["Text"]
       20 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETIMPORT                        R2 K2 [string.gsub]
        4 GETTABLEKS                       R3 R0 K3 ["Text"]
        6 LOADN                            R5 1
        7 LOADN                            R6 255
        8 NAMECALL                         R3 R3 K4 ["sub"]
       10 CALL                             R3 3 1
       11 LOADK                            R4 K5 ["\n"]
       12 LOADK                            R5 K6 [" "]
       13 CALL                             R2 3 1
       14 LOADK                            R3 K7 ["\r"]
       15 LOADK                            R4 K8 [""]
       16 CALL                             R1 3 1
       17 SETTABLEKS                       R1 R0 K3 ["Text"]
       19 GETUPVAL                         R2 0
       20 NAMECALL                         R2 R2 K9 ["getValue"]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQ                      R1 R2 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 1
       27 MOVE                             R3 R1
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 2
       30 JUMPIFNOTEQKS                    R1 K8 [""] ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 CALL                             R2 1 0
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K10 ["session"]
       38 GETTABLEKS                       R2 R2 K11 ["setSearch"]
       40 MOVE                             R3 R1
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 4
       43 MOVE                             R4 R1
       44 NAMECALL                         R2 R2 K12 ["SetFilter"]
       46 CALL                             R2 2 0
       47 GETUPVAL                         R2 4
       48 NAMECALL                         R2 R2 K13 ["GetAutocompleter"]
       50 CALL                             R2 1 1
       51 GETTABLEKS                       R3 R2 K14 ["ReplaceRange"]
       53 GETTABLEKS                       R5 R2 K15 ["RequiresOutsideContext"]
       55 JUMPIFNOT                        R5 ; [+3]
       56 NEWTABLE                         R4 0 0
       58 JUMP                             ; [+3]
       59 NAMECALL                         R4 R2 K16 ["GetSuggestions"]
       61 CALL                             R4 1 1
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R5 R5 K17 ["onTextBoxChanged"]
       65 MOVE                             R6 R0
       66 MOVE                             R7 R3
       67 MOVE                             R8 R4
       68 CALL                             R5 3 0
       69 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       11 LOADK                            R3 K2 ["Expected textBox to exist"]
       12 GETIMPORT                        R1 K4 [assert]
       14 CALL                             R1 2 0
       15 NAMECALL                         R1 R0 K5 ["CaptureFocus"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bindToAction"]
        3 DUPTABLE                         R1 K4 [{"uri", "shouldFocusExplorer", "onActionActivated"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K5 ["fromAction"]
        7 LOADK                            R3 K6 ["BuilderTools"]
        8 LOADK                            R4 K7 ["FocusExplorerSearchBar"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K1 ["uri"]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K2 ["shouldFocusExplorer"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R2 R1 K3 ["onActionActivated"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       11 LOADK                            R3 K2 ["Text box not mounted"]
       12 GETIMPORT                        R1 K4 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K5 ["session"]
       18 GETTABLEKS                       R1 R1 K6 ["getSearch"]
       20 CALL                             R1 0 1
       21 SETTABLEKS                       R1 R0 K7 ["Text"]
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["useState"]
       18 LOADB                            R4 0
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K6 ["useBinding"]
       23 LOADB                            R6 0
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K6 ["useBinding"]
       28 LOADK                            R8 K7 [""]
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       33 NEWCLOSURE                       R10 P0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R11 0 1
       38 GETTABLEKS                       R12 R0 K9 ["textBoxRef"]
       40 SETLIST                          R11 R12 1 [1]
       42 CALL                             R9 2 1
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       46 NEWCLOSURE                       R11 P1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R12 0 2
       52 MOVE                             R13 R3
       53 GETTABLEKS                       R14 R0 K10 ["onFocused"]
       55 SETLIST                          R12 R13 2 [1]
       57 CALL                             R10 2 1
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       61 NEWCLOSURE                       R12 P2
       62 CAPTURE                          VAL R2
       63 NEWTABLE                         R13 0 2
       65 GETTABLEKS                       R14 R2 K11 ["getSearchHistory"]
       67 GETTABLEKS                       R15 R2 K12 ["saveSearchHistory"]
       69 SETLIST                          R13 R14 2 [1]
       71 CALL                             R11 2 1
       72 GETUPVAL                         R12 1
       73 GETTABLEKS                       R12 R12 K8 ["useCallback"]
       75 NEWCLOSURE                       R13 P3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R11
       81 NEWTABLE                         R14 0 6
       83 GETUPVAL                         R15 3
       84 GETTABLEKS                       R16 R0 K13 ["searchBarRef"]
       86 MOVE                             R17 R9
       87 GETTABLEKS                       R18 R0 K14 ["session"]
       89 GETTABLEKS                       R18 R18 K15 ["placeIdObservable"]
       91 MOVE                             R19 R11
       92 GETTABLEKS                       R20 R0 K16 ["onFocusLost"]
       94 SETLIST                          R14 R15 6 [1]
       96 CALL                             R12 2 1
       97 GETUPVAL                         R13 1
       98 GETTABLEKS                       R13 R13 K8 ["useCallback"]
      100 NEWCLOSURE                       R14 P4
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R2
      104 NEWTABLE                         R15 0 5
      106 MOVE                             R16 R9
      107 GETTABLEKS                       R17 R0 K9 ["textBoxRef"]
      109 GETTABLEKS                       R18 R0 K14 ["session"]
      111 GETTABLEKS                       R18 R18 K15 ["placeIdObservable"]
      113 GETTABLEKS                       R19 R2 K11 ["getSearchHistory"]
      115 GETTABLEKS                       R20 R0 K17 ["onSearchHistoryButtonClicked"]
      117 SETLIST                          R15 R16 5 [1]
      119 CALL                             R13 2 1
      120 GETUPVAL                         R14 1
      121 GETTABLEKS                       R14 R14 K8 ["useCallback"]
      123 NEWCLOSURE                       R15 P5
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R0
      126 NEWTABLE                         R16 0 2
      128 MOVE                             R17 R9
      129 GETTABLEKS                       R18 R0 K9 ["textBoxRef"]
      131 SETLIST                          R16 R17 2 [1]
      133 CALL                             R14 2 1
      134 GETUPVAL                         R15 1
      135 GETTABLEKS                       R15 R15 K8 ["useCallback"]
      137 NEWCLOSURE                       R16 P6
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U4
      143 NEWTABLE                         R17 0 2
      145 GETTABLEKS                       R18 R0 K14 ["session"]
      147 GETTABLEKS                       R18 R18 K18 ["setSearch"]
      149 GETTABLEKS                       R19 R0 K19 ["onTextBoxChanged"]
      151 SETLIST                          R17 R18 2 [1]
      153 CALL                             R15 2 1
      154 GETUPVAL                         R16 1
      155 GETTABLEKS                       R16 R16 K3 ["useContext"]
      157 GETUPVAL                         R17 5
      158 GETTABLEKS                       R17 R17 K4 ["Context"]
      160 CALL                             R16 1 1
      161 GETUPVAL                         R17 1
      162 GETTABLEKS                       R17 R17 K20 ["useEffect"]
      164 NEWCLOSURE                       R18 P7
      165 CAPTURE                          VAL R16
      166 CAPTURE                          UPVAL U6
      167 CAPTURE                          VAL R0
      168 NEWTABLE                         R19 0 0
      170 CALL                             R17 2 0
      171 GETUPVAL                         R17 1
      172 GETTABLEKS                       R17 R17 K20 ["useEffect"]
      174 NEWCLOSURE                       R18 P8
      175 CAPTURE                          VAL R0
      176 NEWTABLE                         R19 0 1
      178 GETTABLEKS                       R20 R0 K14 ["session"]
      180 SETLIST                          R19 R20 1 [1]
      182 CALL                             R17 2 0
      183 GETUPVAL                         R17 7
      184 DUPTABLE                         R18 K23 [{"tooltipText", "callbacks"}]
      185 LOADK                            R21 K24 ["SearchBar"]
      186 LOADK                            R22 K25 ["SearchHistoryTooltip"]
      187 NAMECALL                         R19 R1 K26 ["getText"]
      189 CALL                             R19 3 1
      190 SETTABLEKS                       R19 R18 K21 ["tooltipText"]
      192 DUPTABLE                         R19 K28 [{"onActivated"}]
      193 SETTABLEKS                       R13 R19 K27 ["onActivated"]
      195 SETTABLEKS                       R19 R18 K22 ["callbacks"]
      197 CALL                             R17 1 1
      198 GETUPVAL                         R18 8
      199 CALL                             R18 0 1
      200 GETUPVAL                         R19 9
      201 LOADK                            R20 K29 ["Frame"]
      202 NEWTABLE                         R21 4 0
      204 GETTABLEKS                       R22 R0 K30 ["layoutOrder"]
      206 SETTABLEKS                       R22 R21 K31 ["LayoutOrder"]
      208 GETTABLEKS                       R22 R0 K13 ["searchBarRef"]
      210 SETTABLEKS                       R22 R21 K32 ["ref"]
      212 GETUPVAL                         R22 1
      213 GETTABLEKS                       R22 R22 K33 ["Tag"]
      215 LOADK                            R23 K34 ["X-RowS X-Middle Explorer-FillX Explorer-SidePadS Explorer-BG-Input Explorer-SearchBox-Corner Explorer-SearchBox-SearchBar"]
      216 SETTABLE                         R23 R21 R22
      217 DUPTABLE                         R22 K39 [{"FocusBorder", "TextBox", "ClearTextButton", "SearchHistoryButton"}]
      218 MOVE                             R23 R3
      219 JUMPIFNOT                        R23 ; [+3]
      220 GETUPVAL                         R23 9
      221 LOADK                            R24 K40 ["UIStroke"]
      222 CALL                             R23 1 1
      223 SETTABLEKS                       R23 R22 K35 ["FocusBorder"]
      225 GETUPVAL                         R23 9
      226 LOADK                            R24 K36 ["TextBox"]
      227 NEWTABLE                         R25 8 0
      229 MOVE                             R26 R18
      230 CALL                             R26 0 1
      231 SETTABLEKS                       R26 R25 K31 ["LayoutOrder"]
      233 LOADK                            R28 K24 ["SearchBar"]
      234 LOADK                            R29 K41 ["PlaceholderText"]
      235 NAMECALL                         R26 R1 K26 ["getText"]
      237 CALL                             R26 3 1
      238 SETTABLEKS                       R26 R25 K41 ["PlaceholderText"]
      240 LOADB                            R26 1
      241 SETTABLEKS                       R26 R25 K42 ["ShouldEmitUpAndDownArrowEvents"]
      243 GETTABLEKS                       R26 R0 K9 ["textBoxRef"]
      245 SETTABLEKS                       R26 R25 K32 ["ref"]
      247 GETUPVAL                         R26 1
      248 GETTABLEKS                       R26 R26 K43 ["Change"]
      250 GETTABLEKS                       R26 R26 K44 ["Text"]
      252 SETTABLE                         R15 R25 R26
      253 GETUPVAL                         R26 1
      254 GETTABLEKS                       R26 R26 K45 ["Event"]
      256 GETTABLEKS                       R26 R26 K46 ["Focused"]
      258 SETTABLE                         R10 R25 R26
      259 GETUPVAL                         R26 1
      260 GETTABLEKS                       R26 R26 K45 ["Event"]
      262 GETTABLEKS                       R26 R26 K47 ["FocusLost"]
      264 SETTABLE                         R12 R25 R26
      265 GETUPVAL                         R26 1
      266 GETTABLEKS                       R26 R26 K33 ["Tag"]
      268 LOADK                            R28 K48 ["Explorer-FillX"]
      269 GETUPVAL                         R30 10
      270 CALL                             R30 0 1
      271 JUMPIFNOT                        R30 ; [+2]
      272 LOADK                            R29 K49 [" Explorer-Content-Muted"]
      273 JUMP                             ; [+6]
      274 GETUPVAL                         R30 11
      275 CALL                             R30 0 1
      276 JUMPIFNOT                        R30 ; [+2]
      277 LOADK                            R29 K50 [" DEPRECATED_Explorer-Text-Size-14 Explorer-Content-Muted"]
      278 JUMP                             ; [+1]
      279 LOADK                            R29 K7 [""]
      280 CONCAT                           R27 R28 R29
      281 SETTABLE                         R27 R25 R26
      282 CALL                             R23 2 1
      283 SETTABLEKS                       R23 R22 K36 ["TextBox"]
      285 NAMECALL                         R23 R5 K51 ["getValue"]
      287 CALL                             R23 1 1
      288 JUMPIFNOT                        R23 ; [+27]
      289 GETUPVAL                         R23 9
      290 LOADK                            R24 K52 ["ImageButton"]
      291 NEWTABLE                         R25 4 0
      293 GETUPVAL                         R26 12
      294 GETTABLEKS                       R26 R26 K53 ["standard"]
      296 LOADK                            R27 K54 ["clearSearch"]
      297 CALL                             R26 1 1
      298 SETTABLEKS                       R26 R25 K55 ["Image"]
      300 MOVE                             R26 R18
      301 CALL                             R26 0 1
      302 SETTABLEKS                       R26 R25 K31 ["LayoutOrder"]
      304 GETUPVAL                         R26 1
      305 GETTABLEKS                       R26 R26 K45 ["Event"]
      307 GETTABLEKS                       R26 R26 K56 ["MouseButton1Up"]
      309 SETTABLE                         R14 R25 R26
      310 GETUPVAL                         R26 1
      311 GETTABLEKS                       R26 R26 K33 ["Tag"]
      313 LOADK                            R27 K57 ["Explorer-Content-Standard Explorer-Icon data-testid=SearchBar-ClearTextButton"]
      314 SETTABLE                         R27 R25 R26
      315 CALL                             R23 2 1
      316 SETTABLEKS                       R23 R22 K37 ["ClearTextButton"]
      318 GETUPVAL                         R23 9
      319 LOADK                            R24 K52 ["ImageButton"]
      320 NEWTABLE                         R25 8 0
      322 GETUPVAL                         R26 12
      323 GETTABLEKS                       R26 R26 K53 ["standard"]
      325 LOADK                            R27 K58 ["searchHistory"]
      326 CALL                             R26 1 1
      327 SETTABLEKS                       R26 R25 K55 ["Image"]
      329 MOVE                             R26 R18
      330 CALL                             R26 0 1
      331 SETTABLEKS                       R26 R25 K31 ["LayoutOrder"]
      333 GETUPVAL                         R26 1
      334 GETTABLEKS                       R26 R26 K45 ["Event"]
      336 GETTABLEKS                       R26 R26 K56 ["MouseButton1Up"]
      338 GETTABLEKS                       R27 R17 K59 ["activated"]
      340 SETTABLE                         R27 R25 R26
      341 GETUPVAL                         R26 1
      342 GETTABLEKS                       R26 R26 K45 ["Event"]
      344 GETTABLEKS                       R26 R26 K60 ["MouseEnter"]
      346 GETTABLEKS                       R27 R17 K61 ["mouseEnter"]
      348 SETTABLE                         R27 R25 R26
      349 GETUPVAL                         R26 1
      350 GETTABLEKS                       R26 R26 K45 ["Event"]
      352 GETTABLEKS                       R26 R26 K62 ["MouseLeave"]
      354 GETTABLEKS                       R27 R17 K63 ["mouseLeave"]
      356 SETTABLE                         R27 R25 R26
      357 GETUPVAL                         R26 1
      358 GETTABLEKS                       R26 R26 K33 ["Tag"]
      360 LOADK                            R27 K64 ["Explorer-Content-Standard Explorer-Icon data-testid=SearchBar-SearchHistoryButton"]
      361 SETTABLE                         R27 R25 R26
      362 CALL                             R23 2 1
      363 SETTABLEKS                       R23 R22 K38 ["SearchHistoryButton"]
      365 CALL                             R19 3 -1
      366 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ActionContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["ImageUrl"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["Observable"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["RpcTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K16 ["SettingsContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K11 ["Util"]
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
       81 GETTABLEKS                       R12 R0 K11 ["Util"]
       83 GETTABLEKS                       R12 R12 K21 ["isRefClicked"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K23 ["useTooltipActions"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R2 K11 ["Util"]
       95 GETTABLEKS                       R13 R13 K24 ["StudioUri"]
       97 GETTABLEKS                       R14 R5 K25 ["createElement"]
       99 GETIMPORT                        R15 K28 [Instance.new]
      101 LOADK                            R16 K29 ["ExplorerFilter"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K31 [game]
      105 SETTABLEKS                       R16 R15 K9 ["Parent"]
      107 DUPCLOSURE                       R16 K32 [PROTO_10]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R3
      121 RETURN                           R16 1
