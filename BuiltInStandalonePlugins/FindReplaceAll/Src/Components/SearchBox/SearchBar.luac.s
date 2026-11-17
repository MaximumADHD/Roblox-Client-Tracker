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
        0 JUMPIFNOTEQKNIL                  R2 ; [+5]
        2 GETUPVAL                         R3 0
        3 LOADB                            R4 0
        4 CALL                             R3 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K0 ["searchBarRef"]
       10 MOVE                             R5 R2
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+3]
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 LOADB                            R4 0
       18 CALL                             R3 1 0
       19 JUMPIFNOT                        R1 ; [+29]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K1 ["onSearchRequested"]
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETUPVAL                         R3 4
       25 CALL                             R3 0 1
       26 JUMPIF                           R3 ; [+4]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K1 ["onSearchRequested"]
       30 CALL                             R3 0 0
       31 GETTABLEKS                       R3 R0 K2 ["Text"]
       33 JUMPIFEQKS                       R3 K3 [""] ; [+7]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K4 ["onUpdateSearchHistory"]
       38 GETTABLEKS                       R4 R0 K2 ["Text"]
       40 CALL                             R3 1 0
       41 GETUPVAL                         R3 2
       42 GETTABLEKS                       R3 R3 K5 ["onFocusLost"]
       44 MOVE                             R4 R0
       45 MOVE                             R5 R1
       46 MOVE                             R6 R2
       47 GETUPVAL                         R7 3
       48 CALL                             R3 4 0
       49 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 LOADN                            R3 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["MAX_SEARCH_HISTORY_LENGTH"]
        6 NAMECALL                         R1 R1 K2 ["sub"]
        8 CALL                             R1 3 1
        9 SETTABLEKS                       R1 R0 K0 ["Text"]
       11 GETUPVAL                         R2 1
       12 NAMECALL                         R2 R2 K3 ["getValue"]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQ                      R1 R2 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 2
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 3
       22 JUMPIFNOTEQKS                    R1 K4 [""] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R2 R2 K5 ["onSearchbarTextChanged"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 4
       33 GETTABLEKS                       R2 R2 K6 ["onTextBoxChanged"]
       35 MOVE                             R3 R0
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_5:
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
       16 GETTABLEKS                       R1 R1 K5 ["initialSearchText"]
       18 JUMPIFNOT                        R1 ; [+18]
       19 NAMECALL                         R1 R0 K6 ["CaptureFocus"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K5 ["initialSearchText"]
       25 SETTABLEKS                       R1 R0 K7 ["Text"]
       27 LOADN                            R1 1
       28 SETTABLEKS                       R1 R0 K8 ["SelectionStart"]
       30 GETTABLEKS                       R3 R0 K7 ["Text"]
       32 LENGTH                           R2 R3
       33 ADDK                             R1 R2 K9 [1]
       34 SETTABLEKS                       R1 R0 K10 ["CursorPosition"]
       36 RETURN                           R0 0
       37 LOADK                            R1 K11 [""]
       38 SETTABLEKS                       R1 R0 K7 ["Text"]
       40 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 2
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["searchBarToggleOptions"]
        6 JUMPIF                           R2 ; [+3]
        7 NEWTABLE                         R2 0 0
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["searchBarToggleOptions"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 ADDK                             R1 R1 K1 [1]
       17 GETTABLEKS                       R7 R6 K2 ["key"]
       19 GETUPVAL                         R8 1
       20 GETUPVAL                         R9 2
       21 DUPTABLE                         R10 K8 [{"LayoutOrder", "onClick", "enabled", "tooltipText", "tags"}]
       22 SETTABLEKS                       R1 R10 K3 ["LayoutOrder"]
       24 GETTABLEKS                       R11 R6 K4 ["onClick"]
       26 SETTABLEKS                       R11 R10 K4 ["onClick"]
       28 GETTABLEKS                       R11 R6 K5 ["enabled"]
       30 SETTABLEKS                       R11 R10 K5 ["enabled"]
       32 GETTABLEKS                       R11 R6 K6 ["tooltipText"]
       34 SETTABLEKS                       R11 R10 K6 ["tooltipText"]
       36 GETTABLEKS                       R11 R6 K7 ["tags"]
       38 SETTABLEKS                       R11 R10 K7 ["tags"]
       40 CALL                             R8 2 1
       41 SETTABLE                         R8 R0 R7
       42 FORGLOOP                         R2 2 ; [-27]
       44 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["searchBarLeftIcon"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 LOADK                            R1 K1 ["Frame"]
        8 NEWTABLE                         R2 1 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["Tag"]
       13 LOADK                            R4 K3 ["FindReplaceAll-Icon FindReplaceAll-PadRight X-Fit"]
       14 SETTABLE                         R4 R2 R3
       15 DUPTABLE                         R3 K5 [{"SearchIconImage"}]
       16 GETUPVAL                         R4 1
       17 LOADK                            R5 K6 ["ImageLabel"]
       18 NEWTABLE                         R6 2 0
       20 LOADN                            R7 0
       21 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K2 ["Tag"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K0 ["searchBarLeftIcon"]
       29 GETTABLEKS                       R8 R8 K8 ["tags"]
       31 SETTABLE                         R8 R6 R7
       32 CALL                             R4 2 1
       33 SETTABLEKS                       R4 R3 K4 ["SearchIconImage"]
       35 CALL                             R0 3 -1
       36 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useBinding"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K0 ["useBinding"]
       10 LOADK                            R5 K1 [""]
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K2 ["useState"]
       15 LOADB                            R7 0
       16 CALL                             R6 1 2
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R7
       23 NEWTABLE                         R10 0 1
       25 GETTABLEKS                       R11 R0 K4 ["textBoxRef"]
       27 SETLIST                          R10 R11 1 [1]
       29 CALL                             R8 2 1
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       33 NEWCLOSURE                       R10 P1
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R7
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R11 0 2
       39 MOVE                             R12 R6
       40 GETTABLEKS                       R13 R0 K5 ["onFocused"]
       42 SETLIST                          R11 R12 2 [1]
       44 CALL                             R9 2 1
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       48 NEWCLOSURE                       R11 P2
       49 CAPTURE                          VAL R7
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R1
       54 NEWTABLE                         R12 0 5
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R14 R0 K6 ["searchBarRef"]
       59 MOVE                             R15 R8
       60 GETTABLEKS                       R16 R0 K7 ["onFocusLost"]
       62 GETTABLEKS                       R17 R0 K8 ["onSearchRequested"]
       64 SETLIST                          R12 R13 5 [1]
       66 CALL                             R10 2 1
       67 GETUPVAL                         R11 1
       68 GETTABLEKS                       R11 R11 K3 ["useCallback"]
       70 NEWCLOSURE                       R12 P3
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R0
       73 NEWTABLE                         R13 0 2
       75 MOVE                             R14 R8
       76 GETTABLEKS                       R15 R0 K4 ["textBoxRef"]
       78 SETLIST                          R13 R14 2 [1]
       80 CALL                             R11 2 1
       81 GETUPVAL                         R12 1
       82 GETTABLEKS                       R12 R12 K3 ["useCallback"]
       84 NEWCLOSURE                       R13 P4
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R0
       90 NEWTABLE                         R14 0 2
       92 GETTABLEKS                       R15 R0 K9 ["onSearchbarTextChanged"]
       94 GETTABLEKS                       R16 R0 K10 ["onTextBoxChanged"]
       96 SETLIST                          R14 R15 2 [1]
       98 CALL                             R12 2 1
       99 GETUPVAL                         R13 1
      100 GETTABLEKS                       R13 R13 K11 ["useEffect"]
      102 NEWCLOSURE                       R14 P5
      103 CAPTURE                          VAL R0
      104 NEWTABLE                         R15 0 0
      106 CALL                             R13 2 0
      107 NEWCLOSURE                       R13 P6
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U4
      110 CAPTURE                          UPVAL U5
      111 NEWCLOSURE                       R14 P7
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U4
      114 CAPTURE                          UPVAL U1
      115 GETUPVAL                         R15 4
      116 LOADK                            R16 K12 ["Frame"]
      117 NEWTABLE                         R17 4 0
      119 GETTABLEKS                       R18 R0 K13 ["layoutOrder"]
      121 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      123 GETTABLEKS                       R18 R0 K6 ["searchBarRef"]
      125 SETTABLEKS                       R18 R17 K15 ["ref"]
      127 GETUPVAL                         R18 1
      128 GETTABLEKS                       R18 R18 K16 ["Tag"]
      130 LOADK                            R19 K17 ["X-Row X-Middle FindReplaceAll-FillX FindReplaceAll-SidePadS FindReplaceAll-BG-Input FindReplaceAll-SearchBox-Corner FindReplaceAll-SearchBox-SearchBar data-testid=SearchBarFrame"]
      131 SETTABLE                         R19 R17 R18
      132 DUPTABLE                         R18 K23 [{"FocusBorder", "ErrorBorder", "SearchIcon", "TextBox", "ClearTextButton"}]
      133 MOVE                             R19 R6
      134 JUMPIFNOT                        R19 ; [+7]
      135 GETTABLEKS                       R20 R0 K24 ["hasError"]
      137 NOT                              R19 R20
      138 JUMPIFNOT                        R19 ; [+3]
      139 GETUPVAL                         R19 4
      140 LOADK                            R20 K25 ["UIStroke"]
      141 CALL                             R19 1 1
      142 SETTABLEKS                       R19 R18 K18 ["FocusBorder"]
      144 GETTABLEKS                       R19 R0 K24 ["hasError"]
      146 JUMPIFNOT                        R19 ; [+10]
      147 GETUPVAL                         R19 4
      148 LOADK                            R20 K25 ["UIStroke"]
      149 NEWTABLE                         R21 1 0
      151 GETUPVAL                         R22 1
      152 GETTABLEKS                       R22 R22 K16 ["Tag"]
      154 LOADK                            R23 K26 ["FindReplaceAll-SearchBar-Error"]
      155 SETTABLE                         R23 R21 R22
      156 CALL                             R19 2 1
      157 SETTABLEKS                       R19 R18 K19 ["ErrorBorder"]
      159 MOVE                             R19 R14
      160 CALL                             R19 0 1
      161 SETTABLEKS                       R19 R18 K20 ["SearchIcon"]
      163 GETUPVAL                         R19 4
      164 LOADK                            R20 K21 ["TextBox"]
      165 NEWTABLE                         R21 8 0
      167 LOADN                            R22 1
      168 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      170 GETTABLEKS                       R22 R0 K27 ["searchBarPlaceholderText"]
      172 SETTABLEKS                       R22 R21 K28 ["PlaceholderText"]
      174 LOADB                            R22 1
      175 SETTABLEKS                       R22 R21 K29 ["ShouldEmitUpAndDownArrowEvents"]
      177 GETTABLEKS                       R22 R0 K4 ["textBoxRef"]
      179 SETTABLEKS                       R22 R21 K15 ["ref"]
      181 GETUPVAL                         R22 1
      182 GETTABLEKS                       R22 R22 K30 ["Change"]
      184 GETTABLEKS                       R22 R22 K31 ["Text"]
      186 SETTABLE                         R12 R21 R22
      187 GETUPVAL                         R22 1
      188 GETTABLEKS                       R22 R22 K32 ["Event"]
      190 GETTABLEKS                       R22 R22 K33 ["Focused"]
      192 SETTABLE                         R9 R21 R22
      193 GETUPVAL                         R22 1
      194 GETTABLEKS                       R22 R22 K32 ["Event"]
      196 GETTABLEKS                       R22 R22 K34 ["FocusLost"]
      198 SETTABLE                         R10 R21 R22
      199 GETUPVAL                         R22 1
      200 GETTABLEKS                       R22 R22 K16 ["Tag"]
      202 LOADK                            R23 K35 ["FindReplaceAll-FillX data-testid=SearchTextBox"]
      203 SETTABLE                         R23 R21 R22
      204 CALL                             R19 2 1
      205 SETTABLEKS                       R19 R18 K21 ["TextBox"]
      207 GETUPVAL                         R19 4
      208 LOADK                            R20 K36 ["ImageButton"]
      209 NEWTABLE                         R21 4 0
      211 LOADN                            R22 2
      212 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      214 SETTABLEKS                       R2 R21 K37 ["Visible"]
      216 GETUPVAL                         R22 1
      217 GETTABLEKS                       R22 R22 K32 ["Event"]
      219 GETTABLEKS                       R22 R22 K38 ["MouseButton1Up"]
      221 SETTABLE                         R11 R21 R22
      222 GETUPVAL                         R22 1
      223 GETTABLEKS                       R22 R22 K16 ["Tag"]
      225 LOADK                            R23 K39 ["FindReplaceAll-Content-Standard FindReplaceAll-Icon ClearTextIcon data-testid=ClearTextButton"]
      226 SETTABLE                         R23 R21 R22
      227 CALL                             R19 2 1
      228 SETTABLEKS                       R19 R18 K22 ["ClearTextButton"]
      230 MOVE                             R19 R13
      231 CALL                             R19 0 1
      232 CALL                             R15 4 -1
      233 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["isInputInsideGui"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["SearchBox"]
       31 GETTABLEKS                       R4 R4 K13 ["ToggleButton"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Src"]
       38 GETTABLEKS                       R5 R5 K14 ["Hooks"]
       40 GETTABLEKS                       R5 R5 K15 ["useLiveSearchingSetting"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K9 ["Util"]
       49 GETTABLEKS                       R6 R6 K16 ["Constants"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Src"]
       56 GETTABLEKS                       R7 R7 K17 ["Types"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R1 K18 ["createElement"]
       61 DUPCLOSURE                       R8 K19 [PROTO_8]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R3
       68 RETURN                           R8 1
