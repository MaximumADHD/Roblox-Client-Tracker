PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onStyleSheetChange"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+21]
        3 GETIMPORT                        R0 K2 [table.clone]
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K3 ["GetDerives"]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 1
       10 LOADN                            R3 1
       11 GETUPVAL                         R4 0
       12 FASTCALL3                        TABLE_INSERT R0 R3 R4
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K5 [table.insert]
       17 CALL                             R1 3 0
       18 GETUPVAL                         R1 1
       19 MOVE                             R3 R0
       20 NAMECALL                         R1 R1 K6 ["SetDerives"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useStyleSheet"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["Design"]
        9 GETTABLEKS                       R2 R3 K3 ["use"]
       11 CALL                             R2 0 1
       12 NAMECALL                         R2 R2 K4 ["get"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R0 K5 ["onStyleSheetChange"]
       17 JUMPIFNOT                        R3 ; [+15]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K6 ["useEffect"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R5 0 2
       26 MOVE                             R6 R1
       27 GETTABLEKS                       R7 R0 K5 ["onStyleSheetChange"]
       29 SETLIST                          R5 R6 2 [1]
       31 CALL                             R3 2 0
       32 JUMP                             ; [+15]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R3 R4 K6 ["useEffect"]
       36 NEWCLOSURE                       R4 P1
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R5 0 3
       41 MOVE                             R6 R2
       42 MOVE                             R7 R1
       43 GETTABLEKS                       R8 R0 K7 ["themeName"]
       45 SETLIST                          R5 R6 3 [1]
       47 CALL                             R3 2 0
       48 JUMPIF                           R1 ; [+2]
       49 LOADNIL                          R3
       50 RETURN                           R3 1
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R3 R4 K8 ["createElement"]
       54 GETUPVAL                         R4 3
       55 DUPTABLE                         R5 K11 [{"tag", "testId"}]
       56 LOADK                            R6 K12 ["size-full"]
       57 SETTABLEKS                       R6 R5 K9 ["tag"]
       59 LOADK                            R6 K13 ["--studio-foundation--stylesheet-wrapper"]
       60 SETTABLEKS                       R6 R5 K10 ["testId"]
       62 DUPTABLE                         R6 K16 [{"Children", "StyleLink"}]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R7 R8 K8 ["createElement"]
       66 GETUPVAL                         R9 2
       67 GETTABLEKS                       R8 R9 K17 ["Fragment"]
       69 LOADNIL                          R9
       70 GETTABLEKS                       R10 R0 K18 ["children"]
       72 CALL                             R7 3 1
       73 SETTABLEKS                       R7 R6 K14 ["Children"]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R7 R8 K8 ["createElement"]
       78 LOADK                            R8 K15 ["StyleLink"]
       79 DUPTABLE                         R9 K20 [{"StyleSheet"}]
       80 SETTABLEKS                       R2 R9 K19 ["StyleSheet"]
       82 CALL                             R7 2 1
       83 SETTABLEKS                       R7 R6 K15 ["StyleLink"]
       85 CALL                             R3 3 -1
       86 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["device"]
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["Desktop"]
        6 GETTABLEKS                       R2 R0 K2 ["overlayGui"]
        8 JUMPIF                           R2 ; [+9]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["Focus"]
       12 GETTABLEKS                       R2 R3 K4 ["use"]
       14 CALL                             R2 0 1
       15 NAMECALL                         R2 R2 K5 ["get"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K6 ["Design"]
       21 GETTABLEKS                       R3 R4 K4 ["use"]
       23 CALL                             R3 0 1
       24 NAMECALL                         R3 R3 K5 ["get"]
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 2
       28 CALL                             R4 0 1
       29 GETUPVAL                         R6 3
       30 JUMPIFNOT                        R6 ; [+2]
       31 MOVE                             R5 R4
       32 JUMP                             ; [+5]
       33 GETTABLEKS                       R5 R0 K7 ["theme"]
       35 JUMPIF                           R5 ; [+2]
       36 GETTABLEKS                       R5 R4 K8 ["Name"]
       38 JUMPIFNOTEQKNIL                  R2 ; [+8]
       40 GETIMPORT                        R6 K10 [warn]
       42 LOADK                            R7 K11 ["No overlayGui is provided. Foundation will create a ScreenGui to render Toolips/Menus"]
       43 GETIMPORT                        R8 K14 [debug.traceback]
       45 CALL                             R8 0 -1
       46 CALL                             R6 -1 0
       47 GETUPVAL                         R7 4
       48 GETTABLEKS                       R6 R7 K15 ["createElement"]
       50 GETUPVAL                         R8 4
       51 GETTABLEKS                       R7 R8 K16 ["Fragment"]
       53 LOADNIL                          R8
       54 DUPTABLE                         R9 K19 [{"Wrapper", "StyleLink"}]
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R10 R11 K15 ["createElement"]
       58 LOADK                            R11 K20 ["Frame"]
       59 DUPTABLE                         R12 K23 [{"Size", "BackgroundTransparency"}]
       60 GETIMPORT                        R13 K26 [UDim2.fromScale]
       62 LOADN                            R14 1
       63 LOADN                            R15 1
       64 CALL                             R13 2 1
       65 SETTABLEKS                       R13 R12 K21 ["Size"]
       67 LOADN                            R13 1
       68 SETTABLEKS                       R13 R12 K22 ["BackgroundTransparency"]
       70 GETUPVAL                         R14 4
       71 GETTABLEKS                       R13 R14 K15 ["createElement"]
       73 GETUPVAL                         R14 5
       74 DUPTABLE                         R15 K28 [{"device", "theme", "overlayGui", "plugin"}]
       75 SETTABLEKS                       R1 R15 K0 ["device"]
       77 SETTABLEKS                       R5 R15 K7 ["theme"]
       79 SETTABLEKS                       R2 R15 K2 ["overlayGui"]
       81 GETUPVAL                         R17 6
       82 JUMPIFNOT                        R17 ; [+3]
       83 GETTABLEKS                       R16 R0 K27 ["plugin"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R16
       87 SETTABLEKS                       R16 R15 K27 ["plugin"]
       89 GETUPVAL                         R17 7
       90 JUMPIFNOT                        R17 ; [+3]
       91 GETTABLEKS                       R16 R0 K29 ["children"]
       93 JUMP                             ; [+14]
       94 GETUPVAL                         R17 4
       95 GETTABLEKS                       R16 R17 K15 ["createElement"]
       97 GETUPVAL                         R17 8
       98 DUPTABLE                         R18 K32 [{"themeName", "onStyleSheetChange"}]
       99 SETTABLEKS                       R5 R18 K30 ["themeName"]
      101 GETTABLEKS                       R19 R0 K31 ["onStyleSheetChange"]
      103 SETTABLEKS                       R19 R18 K31 ["onStyleSheetChange"]
      105 GETTABLEKS                       R19 R0 K29 ["children"]
      107 CALL                             R16 3 1
      108 CALL                             R13 3 -1
      109 CALL                             R10 -1 1
      110 SETTABLEKS                       R10 R9 K17 ["Wrapper"]
      112 GETUPVAL                         R11 4
      113 GETTABLEKS                       R10 R11 K15 ["createElement"]
      115 LOADK                            R11 K18 ["StyleLink"]
      116 DUPTABLE                         R12 K34 [{"StyleSheet"}]
      117 SETTABLEKS                       R3 R12 K33 ["StyleSheet"]
      119 CALL                             R10 2 1
      120 SETTABLEKS                       R10 R9 K18 ["StyleLink"]
      122 CALL                             R6 3 -1
      123 RETURN                           R6 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["theme"]
        2 JUMPIFNOT                        R1 ; [+19]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["createElement"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["Provider"]
        9 DUPTABLE                         R3 K4 [{"value"}]
       10 GETTABLEKS                       R4 R0 K0 ["theme"]
       12 SETTABLEKS                       R4 R3 K3 ["value"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K1 ["createElement"]
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R0
       19 CALL                             R4 2 -1
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K1 ["createElement"]
       25 GETUPVAL                         R2 3
       26 LOADNIL                          R3
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K1 ["createElement"]
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R0
       32 CALL                             R4 2 -1
       33 CALL                             R1 -1 -1
       34 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["View"]
       26 GETTABLEKS                       R6 R4 K11 ["FoundationProvider"]
       28 GETTABLEKS                       R8 R4 K12 ["Enums"]
       30 GETTABLEKS                       R7 R8 K13 ["Device"]
       32 GETIMPORT                        R8 K6 [require]
       34 GETTABLEKS                       R10 R0 K14 ["SharedFlags"]
       36 GETTABLEKS                       R9 R10 K15 ["getFFlagStudioFoundationThemeContext"]
       38 CALL                             R8 1 1
       39 CALL                             R8 0 1
       40 GETIMPORT                        R9 K6 [require]
       42 GETTABLEKS                       R11 R0 K14 ["SharedFlags"]
       44 GETTABLEKS                       R10 R11 K16 ["getFFlagStudioFoundationPluginPropSupport"]
       46 CALL                             R9 1 1
       47 CALL                             R9 0 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R12 R0 K17 ["Hooks"]
       52 GETTABLEKS                       R11 R12 K18 ["useThemeName"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R13 R0 K19 ["Contexts"]
       59 GETTABLEKS                       R12 R13 K20 ["StudioThemeContextProvider"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R14 R0 K19 ["Contexts"]
       66 GETTABLEKS                       R13 R14 K21 ["ThemeContext"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R14 R0 K22 ["Types"]
       73 CALL                             R13 1 1
       74 GETTABLEKS                       R14 R3 K23 ["ContextServices"]
       76 GETIMPORT                        R15 K6 [require]
       78 GETTABLEKS                       R17 R0 K24 ["Util"]
       80 GETTABLEKS                       R16 R17 K25 ["isStyleSheetPolyfillOn"]
       82 CALL                             R15 1 1
       83 CALL                             R15 0 1
       84 GETIMPORT                        R16 K27 [game]
       86 LOADK                            R18 K28 ["DebugDeveloperFrameworkSdk"]
       87 NAMECALL                         R16 R16 K29 ["GetFastFlag"]
       89 CALL                             R16 2 1
       90 JUMPIFNOT                        R15 ; [+8]
       91 JUMPIFNOT                        R16 ; [+7]
       92 GETIMPORT                        R17 K31 [warn]
       94 LOADK                            R18 K32 ["Your foundation code is running with Foundation styles polyfill. useStyleTag won't work.\n\t\tTo test your plugin with FoundationStylesheet support make sure that you're using Foundation version >= 1.48.0.\n\t\t"]
       95 GETIMPORT                        R19 K35 [debug.traceback]
       97 CALL                             R19 0 -1
       98 CALL                             R17 -1 0
       99 DUPCLOSURE                       R17 K36 [PROTO_2]
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R5
      104 DUPCLOSURE                       R18 K37 [PROTO_3]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R17
      114 DUPCLOSURE                       R19 K38 [PROTO_4]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R11
      119 JUMPIFNOT                        R8 ; [+1]
      120 RETURN                           R19 1
      121 RETURN                           R18 1
