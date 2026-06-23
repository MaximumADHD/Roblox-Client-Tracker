PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Instance"]
        2 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R3 K0 ["StyleCategory"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 LOADK                            R4 K2 ["Themes"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R0 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K1 ["ThemeSheets"]
       10 JUMP                             ; [+7]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R2 R0 K2 ["RootItem_DEPRECATED"]
       14 GETTABLEKS                       R2 R2 K3 ["Children"]
       16 DUPCLOSURE                       R3 K4 [PROTO_0]
       17 CALL                             R1 2 1
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["getUserDesignSheets"]
       22 GETTABLEKS                       R4 R0 K6 ["Source"]
       24 CALL                             R3 1 3
       25 FORGPREP                         R3
       26 GETUPVAL                         R8 4
       27 NAMECALL                         R9 R7 K7 ["GetDerives"]
       29 CALL                             R9 1 1
       30 NEWCLOSURE                       R10 P1
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R1
       34 CALL                             R8 2 1
       35 MOVE                             R2 R8
       36 JUMPIF                           R2 ; [+2]
       37 FORGLOOP                         R3 2 ; [-12]
       39 GETUPVAL                         R3 0
       40 DUPTABLE                         R5 K10 [{"Themes_DEPRECATED", "SelectedTheme"}]
       41 GETUPVAL                         R7 1
       42 JUMPIFNOT                        R7 ; [+2]
       43 LOADNIL                          R6
       44 JUMP                             ; [+1]
       45 MOVE                             R6 R1
       46 SETTABLEKS                       R6 R5 K8 ["Themes_DEPRECATED"]
       48 SETTABLEKS                       R2 R5 K9 ["SelectedTheme"]
       50 NAMECALL                         R3 R3 K11 ["setState"]
       52 CALL                             R3 2 0
       53 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ThemeSheets"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getUserDesignSheets"]
        6 GETTABLEKS                       R2 R0 K2 ["Source"]
        8 CALL                             R1 1 3
        9 FORGPREP                         R1
       10 GETUPVAL                         R6 2
       11 NAMECALL                         R7 R5 K3 ["GetDerives"]
       13 CALL                             R7 1 1
       14 NEWCLOSURE                       R8 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+1]
       19 RETURN                           R6 1
       20 FORGLOOP                         R1 2 ; [-11]
       22 LOADNIL                          R1
       23 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["props"]
        5 GETTABLEKS                       R1 R1 K1 ["ThemeSheets"]
        7 JUMP                             ; [+4]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R2 R0 K2 ["Themes_DEPRECATED"]
       11 CALL                             R1 1 1
       12 LOADNIL                          R2
       13 MOVE                             R3 R1
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETUPVAL                         R8 3
       18 JUMPIFNOTEQ                      R7 R8 ; [+2]
       20 MOVE                             R2 R7
       21 FORGLOOP                         R3 2 ; [-5]
       23 GETUPVAL                         R4 4
       24 JUMPIFNOT                        R4 ; [+5]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K3 ["findActiveThemeInFolder"]
       28 CALL                             R3 0 1
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R3 R0 K4 ["SelectedTheme"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K0 ["props"]
       35 GETTABLEKS                       R4 R4 K5 ["dispatch"]
       37 GETUPVAL                         R5 5
       38 MOVE                             R6 R2
       39 MOVE                             R7 R3
       40 CALL                             R5 2 -1
       41 CALL                             R4 -1 0
       42 DUPTABLE                         R4 K6 [{"Themes_DEPRECATED", "SelectedTheme"}]
       43 GETUPVAL                         R6 0
       44 JUMPIFNOT                        R6 ; [+2]
       45 LOADNIL                          R5
       46 JUMP                             ; [+1]
       47 MOVE                             R5 R1
       48 SETTABLEKS                       R5 R4 K2 ["Themes_DEPRECATED"]
       50 SETTABLEKS                       R2 R4 K4 ["SelectedTheme"]
       52 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 NAMECALL                         R1 R1 K0 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"Themes_DEPRECATED", "SelectedTheme"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["Themes_DEPRECATED"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["SelectedTheme"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 SETTABLEKS                       R1 R0 K4 ["updateThemes"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R1 R0 K5 ["findActiveThemeInFolder"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 SETTABLEKS                       R1 R0 K6 ["toggleThemes"]
       34 GETTABLEKS                       R1 R0 K4 ["updateThemes"]
       36 CALL                             R1 0 0
       37 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETUPVAL                         R5 0
        3 JUMPIFNOT                        R5 ; [+9]
        4 GETTABLEKS                       R5 R1 K1 ["IsDirty"]
        6 GETTABLEKS                       R6 R3 K1 ["IsDirty"]
        8 JUMPIFLT                         R6 R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 JUMP                             ; [+12]
       13 LOADB                            R4 0
       14 GETTABLEKS                       R5 R1 K1 ["IsDirty"]
       16 LOADN                            R6 0
       17 JUMPIFNOTLT                      R6 R5 ; [+7]
       19 GETTABLEKS                       R5 R3 K1 ["IsDirty"]
       21 JUMPIFEQKN                       R5 K2 [0] ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 GETUPVAL                         R6 1
       26 JUMPIFNOT                        R6 ; [+11]
       27 GETUPVAL                         R5 2
       28 JUMPIFNOT                        R5 ; [+17]
       29 GETTABLEKS                       R6 R1 K3 ["ThemeSheets"]
       31 GETTABLEKS                       R7 R3 K3 ["ThemeSheets"]
       33 JUMPIFNOTEQ                      R6 R7 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 JUMP                             ; [+8]
       38 GETTABLEKS                       R6 R1 K4 ["RootItem_DEPRECATED"]
       40 GETTABLEKS                       R7 R3 K4 ["RootItem_DEPRECATED"]
       42 JUMPIFNOTEQ                      R6 R7 ; [+2]
       44 LOADB                            R5 0 +1
       45 LOADB                            R5 1
       46 JUMPIF                           R4 ; [+1]
       47 JUMPIFNOT                        R5 ; [+3]
       48 GETTABLEKS                       R6 R0 K5 ["updateThemes"]
       50 CALL                             R6 0 0
       51 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R4 0
        5 JUMPIFNOT                        R4 ; [+3]
        6 GETTABLEKS                       R3 R1 K2 ["ThemeSheets"]
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R3 R2 K3 ["Themes_DEPRECATED"]
       11 NEWTABLE                         R4 0 0
       13 GETIMPORT                        R5 K5 [ipairs]
       15 MOVE                             R6 R3
       16 CALL                             R5 1 3
       17 FORGPREP_INEXT                   R5
       18 GETTABLEKS                       R11 R2 K6 ["SelectedTheme"]
       20 JUMPIFEQ                         R9 R11 ; [+2]
       22 LOADB                            R10 0 +1
       23 LOADB                            R10 1
       24 LOADK                            R12 K7 ["Theme "]
       25 MOVE                             R13 R8
       26 CONCAT                           R11 R12 R13
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R12 R12 K8 ["createElement"]
       30 GETUPVAL                         R13 2
       31 DUPTABLE                         R14 K12 [{"RootInstance", "ThemeSelected", "OnClick"}]
       32 SETTABLEKS                       R9 R14 K9 ["RootInstance"]
       34 SETTABLEKS                       R10 R14 K10 ["ThemeSelected"]
       36 GETTABLEKS                       R15 R0 K13 ["toggleThemes"]
       38 SETTABLEKS                       R15 R14 K11 ["OnClick"]
       40 CALL                             R12 2 1
       41 SETTABLE                         R12 R4 R11
       42 FORGLOOP                         R5 2 [inext] ; [-25]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K8 ["createElement"]
       47 GETUPVAL                         R6 3
       48 NEWTABLE                         R7 1 0
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K14 ["Tag"]
       53 LOADK                            R9 K15 ["ScrollingAutomaticSize"]
       54 SETTABLE                         R9 R7 R8
       55 DUPTABLE                         R8 K17 [{"Themes"}]
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R9 R9 K8 ["createElement"]
       59 GETUPVAL                         R10 4
       60 NEWTABLE                         R11 4 0
       62 LOADB                            R12 1
       63 SETTABLEKS                       R12 R11 K18 ["AlwaysExpanded"]
       65 GETUPVAL                         R13 0
       66 JUMPIFNOT                        R13 ; [+5]
       67 GETTABLEKS                       R13 R1 K19 ["Title"]
       69 LOADK                            R14 K20 [" Themes"]
       70 CONCAT                           R12 R13 R14
       71 JUMP                             ; [+8]
       72 GETTABLEKS                       R13 R1 K21 ["RootItem_DEPRECATED"]
       74 GETTABLEKS                       R13 R13 K22 ["Name"]
       76 GETTABLEKS                       R13 R13 K23 ["Value"]
       78 LOADK                            R14 K20 [" Themes"]
       79 CONCAT                           R12 R13 R14
       80 SETTABLEKS                       R12 R11 K24 ["Text"]
       82 GETUPVAL                         R12 1
       83 GETTABLEKS                       R12 R12 K14 ["Tag"]
       85 LOADK                            R13 K25 ["X-ColumnM X-FitY X-PadS"]
       86 SETTABLE                         R13 R11 R12
       87 DUPTABLE                         R12 K27 [{"Column"}]
       88 GETUPVAL                         R13 1
       89 GETTABLEKS                       R13 R13 K8 ["createElement"]
       91 GETUPVAL                         R14 5
       92 NEWTABLE                         R15 1 0
       94 GETUPVAL                         R16 1
       95 GETTABLEKS                       R16 R16 K14 ["Tag"]
       97 LOADK                            R17 K28 ["X-ColumnM X-FitY"]
       98 SETTABLE                         R17 R15 R16
       99 MOVE                             R16 R4
      100 CALL                             R13 3 1
      101 SETTABLEKS                       R13 R12 K26 ["Column"]
      103 CALL                             R9 3 1
      104 SETTABLEKS                       R9 R8 K16 ["Themes"]
      106 CALL                             R5 3 -1
      107 RETURN                           R5 -1

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"IsDirty", "Source"}]
        1 GETTABLEKS                       R2 R0 K3 ["Window"]
        3 GETTABLEKS                       R2 R2 K0 ["IsDirty"]
        5 SETTABLEKS                       R2 R1 K0 ["IsDirty"]
        7 GETTABLEKS                       R2 R0 K3 ["Window"]
        9 GETTABLEKS                       R2 R2 K1 ["Source"]
       11 SETTABLEKS                       R2 R1 K1 ["Source"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R4 K11 ["Localization"]
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R8 R0 K5 ["Packages"]
       40 GETTABLEKS                       R8 R8 K12 ["Dash"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R7 K13 ["collectArray"]
       45 GETTABLEKS                       R9 R7 K14 ["copy"]
       47 GETTABLEKS                       R10 R7 K15 ["includes"]
       49 GETTABLEKS                       R11 R7 K16 ["mapOne"]
       51 GETTABLEKS                       R12 R7 K17 ["startsWith"]
       53 GETTABLEKS                       R13 R3 K18 ["UI"]
       55 GETTABLEKS                       R14 R13 K19 ["Pane"]
       57 GETTABLEKS                       R15 R13 K20 ["SimpleExpandablePane"]
       59 GETTABLEKS                       R16 R13 K21 ["ScrollingFrame"]
       61 GETIMPORT                        R17 K4 [require]
       63 GETTABLEKS                       R18 R0 K22 ["Src"]
       65 GETTABLEKS                       R18 R18 K23 ["Types"]
       67 CALL                             R17 1 1
       68 GETIMPORT                        R18 K4 [require]
       70 GETTABLEKS                       R19 R0 K22 ["Src"]
       72 GETTABLEKS                       R19 R19 K24 ["Reducers"]
       74 GETTABLEKS                       R19 R19 K25 ["RootReducer"]
       76 CALL                             R18 1 1
       77 GETIMPORT                        R19 K4 [require]
       79 GETTABLEKS                       R20 R0 K22 ["Src"]
       81 GETTABLEKS                       R20 R20 K26 ["Util"]
       83 GETTABLEKS                       R20 R20 K27 ["DesignHelpers"]
       85 CALL                             R19 1 1
       86 GETIMPORT                        R20 K4 [require]
       88 GETTABLEKS                       R21 R0 K22 ["Src"]
       90 GETTABLEKS                       R21 R21 K28 ["Components"]
       92 GETTABLEKS                       R21 R21 K29 ["TokenTable"]
       94 CALL                             R20 1 1
       95 GETIMPORT                        R21 K4 [require]
       97 GETTABLEKS                       R22 R0 K22 ["Src"]
       99 GETTABLEKS                       R22 R22 K26 ["Util"]
      101 GETTABLEKS                       R22 R22 K30 ["mapDispatchToProps"]
      103 CALL                             R21 1 1
      104 GETIMPORT                        R22 K4 [require]
      106 GETTABLEKS                       R23 R0 K22 ["Src"]
      108 GETTABLEKS                       R23 R23 K31 ["Thunks"]
      110 GETTABLEKS                       R23 R23 K32 ["Change"]
      112 GETTABLEKS                       R23 R23 K33 ["ToggleTheme"]
      114 CALL                             R22 1 1
      115 GETIMPORT                        R23 K4 [require]
      117 GETTABLEKS                       R24 R0 K22 ["Src"]
      119 GETTABLEKS                       R24 R24 K34 ["Flags"]
      121 GETTABLEKS                       R24 R24 K35 ["getFFlagStyleEditorThemesCrash"]
      123 CALL                             R23 1 1
      124 CALL                             R23 0 1
      125 GETIMPORT                        R24 K4 [require]
      127 GETTABLEKS                       R25 R0 K22 ["Src"]
      129 GETTABLEKS                       R25 R25 K34 ["Flags"]
      131 GETTABLEKS                       R25 R25 K36 ["getFFlagStyleEditorNewRuleRenameFix"]
      133 CALL                             R24 1 1
      134 CALL                             R24 0 1
      135 GETIMPORT                        R25 K4 [require]
      137 GETTABLEKS                       R26 R0 K22 ["Src"]
      139 GETTABLEKS                       R26 R26 K34 ["Flags"]
      141 GETTABLEKS                       R26 R26 K37 ["getFFlagStyleEditorFixThemeFolderActivation"]
      143 CALL                             R25 1 1
      144 CALL                             R25 0 1
      145 GETTABLEKS                       R26 R1 K38 ["PureComponent"]
      147 LOADK                            R28 K39 ["ThemesView"]
      148 NAMECALL                         R26 R26 K40 ["extend"]
      150 CALL                             R26 2 1
      151 DUPTABLE                         R27 K43 [{"Title", "ThemeSheets"}]
      152 LOADK                            R28 K44 [""]
      153 SETTABLEKS                       R28 R27 K41 ["Title"]
      155 NEWTABLE                         R28 0 0
      157 SETTABLEKS                       R28 R27 K42 ["ThemeSheets"]
      159 SETTABLEKS                       R27 R26 K45 ["defaultProps"]
      161 DUPCLOSURE                       R27 K46 [PROTO_7]
      162 CAPTURE                          VAL R23
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R22
      171 SETTABLEKS                       R27 R26 K47 ["init"]
      173 DUPCLOSURE                       R27 K48 [PROTO_8]
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R25
      177 SETTABLEKS                       R27 R26 K49 ["didUpdate"]
      179 DUPCLOSURE                       R27 K50 [PROTO_9]
      180 CAPTURE                          VAL R23
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R14
      186 SETTABLEKS                       R27 R26 K51 ["render"]
      188 MOVE                             R27 R5
      189 DUPTABLE                         R28 K52 [{"Localization"}]
      190 SETTABLEKS                       R6 R28 K11 ["Localization"]
      192 CALL                             R27 1 1
      193 MOVE                             R28 R26
      194 CALL                             R27 1 1
      195 MOVE                             R26 R27
      196 GETTABLEKS                       R27 R2 K53 ["connect"]
      198 DUPCLOSURE                       R28 K54 [PROTO_10]
      199 MOVE                             R29 R21
      200 CALL                             R27 2 1
      201 MOVE                             R28 R26
      202 CALL                             R27 1 -1
      203 RETURN                           R27 -1
