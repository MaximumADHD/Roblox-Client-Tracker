PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["dialogConfig"]
        3 GETTABLEKS                       R0 R1 K1 ["props"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["onClose"]
        8 SETTABLEKS                       R1 R0 K2 ["onClose"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K3 ["updateWindowMinSize"]
       13 SETTABLEKS                       R1 R0 K3 ["updateWindowMinSize"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["dialogConfig"]
       18 GETTABLEKS                       R1 R2 K4 ["kind"]
       20 JUMPIFNOTEQKS                    R1 K5 ["config"] ; [+64]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K0 ["dialogConfig"]
       25 GETTABLEKS                       R1 R2 K6 ["class"]
       27 JUMPIFNOTEQKS                    R1 K7 ["Model"] ; [+6]
       29 GETUPVAL                         R1 2
       30 GETUPVAL                         R2 3
       31 MOVE                             R3 R0
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K0 ["dialogConfig"]
       37 GETTABLEKS                       R1 R2 K6 ["class"]
       39 JUMPIFNOTEQKS                    R1 K8 ["SurfaceAppearance"] ; [+6]
       41 GETUPVAL                         R1 2
       42 GETUPVAL                         R2 4
       43 MOVE                             R3 R0
       44 CALL                             R1 2 -1
       45 RETURN                           R1 -1
       46 GETUPVAL                         R1 5
       47 CALL                             R1 0 1
       48 JUMPIFNOT                        R1 ; [+12]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R2 R3 K0 ["dialogConfig"]
       52 GETTABLEKS                       R1 R2 K6 ["class"]
       54 JUMPIFNOTEQKS                    R1 K9 ["Decal"] ; [+6]
       56 GETUPVAL                         R1 2
       57 GETUPVAL                         R2 4
       58 MOVE                             R3 R0
       59 CALL                             R1 2 -1
       60 RETURN                           R1 -1
       61 GETUPVAL                         R1 2
       62 GETUPVAL                         R2 6
       63 DUPTABLE                         R3 K11 [{"errors"}]
       64 NEWTABLE                         R4 0 1
       66 DUPTABLE                         R5 K13 [{"message"}]
       67 LOADK                            R7 K14 ["Instance class not supported for reimport: '%*'"]
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R10 R11 K0 ["dialogConfig"]
       71 GETTABLEKS                       R9 R10 K6 ["class"]
       73 NAMECALL                         R7 R7 K15 ["format"]
       75 CALL                             R7 2 1
       76 MOVE                             R6 R7
       77 SETTABLEKS                       R6 R5 K12 ["message"]
       79 SETLIST                          R4 R5 1 [1]
       81 SETTABLEKS                       R4 R3 K10 ["errors"]
       83 CALL                             R1 2 -1
       84 RETURN                           R1 -1
       85 GETUPVAL                         R3 0
       86 GETTABLEKS                       R2 R3 K0 ["dialogConfig"]
       88 GETTABLEKS                       R1 R2 K4 ["kind"]
       90 JUMPIFNOTEQKS                    R1 K16 ["error"] ; [+6]
       92 GETUPVAL                         R1 2
       93 GETUPVAL                         R2 6
       94 MOVE                             R3 R0
       95 CALL                             R1 2 -1
       96 RETURN                           R1 -1
       97 GETIMPORT                        R1 K17 [error]
       99 LOADK                            R3 K18 ["Unknown dialog kind: $%*"]
      100 GETUPVAL                         R7 0
      101 GETTABLEKS                       R6 R7 K0 ["dialogConfig"]
      103 GETTABLEKS                       R5 R6 K4 ["kind"]
      105 NAMECALL                         R3 R3 K15 ["format"]
      107 CALL                             R3 2 1
      108 MOVE                             R2 R3
      109 CALL                             R1 1 0
      110 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Localization"]
        3 GETTABLEKS                       R1 R2 K1 ["new"]
        5 DUPTABLE                         R2 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K6 ["Src"]
        9 GETTABLEKS                       R5 R6 K7 ["Resources"]
       11 GETTABLEKS                       R4 R5 K0 ["Localization"]
       13 GETTABLEKS                       R3 R4 K8 ["SourceStrings"]
       15 SETTABLEKS                       R3 R2 K2 ["stringResourceTable"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K7 ["Resources"]
       22 GETTABLEKS                       R4 R5 K0 ["Localization"]
       24 GETTABLEKS                       R3 R4 K9 ["LocalizedStrings"]
       26 SETTABLEKS                       R3 R2 K3 ["translationResourceTable"]
       28 LOADK                            R3 K10 ["Reimport"]
       29 SETTABLEKS                       R3 R2 K4 ["pluginName"]
       31 CALL                             R1 1 1
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K11 ["Analytics"]
       35 GETTABLEKS                       R2 R3 K1 ["new"]
       37 DUPCLOSURE                       R3 K12 [PROTO_0]
       38 NEWTABLE                         R4 0 0
       40 CALL                             R2 2 1
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R4 R5 K13 ["Util"]
       44 GETTABLEKS                       R3 R4 K14 ["createFoundationDesignBinding"]
       46 CALL                             R3 0 2
       47 GETUPVAL                         R5 3
       48 GETTABLEKS                       R6 R0 K15 ["plugin"]
       50 LOADNIL                          R7
       51 LOADNIL                          R8
       52 NEWTABLE                         R9 0 1
       54 MOVE                             R10 R3
       55 SETLIST                          R9 R10 1 [1]
       57 CALL                             R5 4 1
       58 GETIMPORT                        R6 K17 [Vector2.new]
       60 LOADN                            R7 38
       61 LOADN                            R8 194
       62 CALL                             R6 2 1
       63 GETUPVAL                         R8 4
       64 GETTABLEKS                       R7 R8 K18 ["useState"]
       66 LOADB                            R8 1
       67 CALL                             R7 1 2
       68 GETUPVAL                         R10 4
       69 GETTABLEKS                       R9 R10 K18 ["useState"]
       71 MOVE                             R10 R6
       72 CALL                             R9 1 2
       73 DUPTABLE                         R11 K23 [{"toggleEnabled", "onRestore", "onClose", "updateWindowMinSize"}]
       74 NEWCLOSURE                       R12 P1
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R7
       77 SETTABLEKS                       R12 R11 K19 ["toggleEnabled"]
       79 NEWCLOSURE                       R12 P2
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R12 R11 K20 ["onRestore"]
       83 NEWCLOSURE                       R12 P3
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R12 R11 K21 ["onClose"]
       87 NEWCLOSURE                       R12 P4
       88 CAPTURE                          VAL R10
       89 SETTABLEKS                       R12 R11 K22 ["updateWindowMinSize"]
       91 JUMPIF                           R7 ; [+2]
       92 LOADNIL                          R12
       93 RETURN                           R12 1
       94 LOADK                            R13 K24 ["%* v%*"]
       95 LOADK                            R17 K25 ["Plugin"]
       96 LOADK                            R18 K26 ["Name"]
       97 NAMECALL                         R15 R1 K27 ["getText"]
       99 CALL                             R15 3 1
      100 GETUPVAL                         R17 5
      101 GETTABLEKS                       R16 R17 K28 ["UserVersion"]
      103 NAMECALL                         R13 R13 K29 ["format"]
      105 CALL                             R13 3 1
      106 MOVE                             R12 R13
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R13 R14 K30 ["provide"]
      110 NEWTABLE                         R14 0 5
      112 GETUPVAL                         R16 6
      113 GETTABLEKS                       R15 R16 K1 ["new"]
      115 GETTABLEKS                       R16 R0 K15 ["plugin"]
      117 CALL                             R15 1 1
      118 GETUPVAL                         R17 7
      119 GETTABLEKS                       R16 R17 K1 ["new"]
      121 GETTABLEKS                       R17 R0 K15 ["plugin"]
      123 NAMECALL                         R17 R17 K31 ["getMouse"]
      125 CALL                             R17 1 -1
      126 CALL                             R16 -1 1
      127 GETUPVAL                         R18 8
      128 GETTABLEKS                       R17 R18 K1 ["new"]
      130 MOVE                             R18 R5
      131 CALL                             R17 1 1
      132 MOVE                             R18 R1
      133 MOVE                             R19 R2
      134 SETLIST                          R14 R15 5 [1]
      136 DUPTABLE                         R15 K33 [{"MainWindow"}]
      137 GETUPVAL                         R16 9
      138 GETUPVAL                         R19 10
      139 GETTABLEKS                       R18 R19 K34 ["UI"]
      141 GETTABLEKS                       R17 R18 K35 ["Dialog"]
      143 NEWTABLE                         R18 16 0
      145 LOADB                            R19 1
      146 SETTABLEKS                       R19 R18 K36 ["Enabled"]
      148 LOADB                            R19 1
      149 SETTABLEKS                       R19 R18 K37 ["Modal"]
      151 SETTABLEKS                       R12 R18 K38 ["Title"]
      153 LOADB                            R19 1
      154 SETTABLEKS                       R19 R18 K39 ["Resizable"]
      156 GETIMPORT                        R19 K43 [Enum.ZIndexBehavior.Sibling]
      158 SETTABLEKS                       R19 R18 K41 ["ZIndexBehavior"]
      160 SETTABLEKS                       R9 R18 K44 ["MinSize"]
      162 GETTABLEKS                       R19 R11 K21 ["onClose"]
      164 SETTABLEKS                       R19 R18 K45 ["OnClose"]
      166 GETTABLEKS                       R19 R0 K15 ["plugin"]
      168 SETTABLEKS                       R19 R18 K25 ["Plugin"]
      170 SETTABLEKS                       R5 R18 K46 ["PluginDesign"]
      172 GETUPVAL                         R21 4
      173 GETTABLEKS                       R20 R21 K47 ["Change"]
      175 GETTABLEKS                       R19 R20 K36 ["Enabled"]
      177 GETTABLEKS                       R20 R11 K21 ["onClose"]
      179 SETTABLE                         R20 R18 R19
      180 DUPTABLE                         R19 K49 [{"FoundationProvider"}]
      181 GETUPVAL                         R20 9
      182 GETUPVAL                         R21 11
      183 DUPTABLE                         R22 K51 [{"onStyleSheetChange"}]
      184 SETTABLEKS                       R4 R22 K50 ["onStyleSheetChange"]
      186 NEWTABLE                         R23 0 1
      188 GETUPVAL                         R24 9
      189 NEWCLOSURE                       R25 P5
      190 CAPTURE                          VAL R0
      191 CAPTURE                          VAL R11
      192 CAPTURE                          UPVAL U9
      193 CAPTURE                          UPVAL U12
      194 CAPTURE                          UPVAL U13
      195 CAPTURE                          UPVAL U14
      196 CAPTURE                          UPVAL U15
      197 CALL                             R24 1 -1
      198 SETLIST                          R23 R24 -1 [1]
      200 CALL                             R20 3 1
      201 SETTABLEKS                       R20 R19 K48 ["FoundationProvider"]
      203 CALL                             R16 3 1
      204 SETTABLEKS                       R16 R15 K32 ["MainWindow"]
      206 CALL                             R13 2 -1
      207 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Components"]
       23 GETTABLEKS                       R3 R4 K10 ["FoundationProviderAdapter"]
       25 GETTABLEKS                       R4 R1 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["Plugin"]
       29 GETTABLEKS                       R6 R4 K13 ["Mouse"]
       31 GETTABLEKS                       R7 R4 K14 ["Design"]
       33 GETTABLEKS                       R9 R1 K15 ["Styling"]
       35 GETTABLEKS                       R8 R9 K16 ["registerPluginStyles"]
       37 GETIMPORT                        R9 K5 [require]
       39 GETTABLEKS                       R11 R0 K6 ["Packages"]
       41 GETTABLEKS                       R10 R11 K17 ["React"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R10 R9 K18 ["createElement"]
       46 GETIMPORT                        R11 K5 [require]
       48 GETTABLEKS                       R14 R0 K19 ["Src"]
       50 GETTABLEKS                       R13 R14 K20 ["Dialogs"]
       52 GETTABLEKS                       R12 R13 K21 ["ModelConfigDialog"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K5 [require]
       57 GETTABLEKS                       R15 R0 K19 ["Src"]
       59 GETTABLEKS                       R14 R15 K20 ["Dialogs"]
       61 GETTABLEKS                       R13 R14 K22 ["SurfaceAppearanceConfigDialog"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K5 [require]
       66 GETTABLEKS                       R16 R0 K19 ["Src"]
       68 GETTABLEKS                       R15 R16 K20 ["Dialogs"]
       70 GETTABLEKS                       R14 R15 K23 ["ErrorDialog"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K5 [require]
       75 GETTABLEKS                       R16 R0 K24 ["Lib"]
       77 GETTABLEKS                       R15 R16 K25 ["Constants"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R17 R0 K26 ["Flags"]
       84 GETTABLEKS                       R16 R17 K27 ["GetFFlagReimportDecalSupport"]
       86 CALL                             R15 1 1
       87 DUPCLOSURE                       R16 K28 [PROTO_6]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R13
      104 RETURN                           R16 1
