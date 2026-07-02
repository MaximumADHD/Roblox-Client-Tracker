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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dialogConfig"]
        3 GETTABLEKS                       R0 R0 K1 ["kind"]
        5 JUMPIFNOTEQKS                    R0 K2 ["config"] ; [+86]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["dialogConfig"]
       10 GETTABLEKS                       R0 R0 K3 ["props"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K4 ["onClose"]
       15 SETTABLEKS                       R1 R0 K4 ["onClose"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K5 ["updateWindowMinSize"]
       20 SETTABLEKS                       R1 R0 K5 ["updateWindowMinSize"]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K0 ["dialogConfig"]
       25 GETTABLEKS                       R1 R1 K6 ["class"]
       27 JUMPIFNOTEQKS                    R1 K7 ["Model"] ; [+6]
       29 GETUPVAL                         R1 2
       30 GETUPVAL                         R2 3
       31 MOVE                             R3 R0
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K0 ["dialogConfig"]
       37 GETTABLEKS                       R1 R1 K6 ["class"]
       39 JUMPIFNOTEQKS                    R1 K8 ["SurfaceAppearance"] ; [+6]
       41 GETUPVAL                         R1 2
       42 GETUPVAL                         R2 4
       43 MOVE                             R3 R0
       44 CALL                             R1 2 -1
       45 RETURN                           R1 -1
       46 GETUPVAL                         R1 0
       47 GETTABLEKS                       R1 R1 K0 ["dialogConfig"]
       49 GETTABLEKS                       R1 R1 K6 ["class"]
       51 JUMPIFNOTEQKS                    R1 K9 ["Decal"] ; [+6]
       53 GETUPVAL                         R1 2
       54 GETUPVAL                         R2 4
       55 MOVE                             R3 R0
       56 CALL                             R1 2 -1
       57 RETURN                           R1 -1
       58 GETUPVAL                         R1 2
       59 GETUPVAL                         R2 5
       60 DUPTABLE                         R3 K11 [{"errors", "onClose", "updateWindowMinSize"}]
       61 NEWTABLE                         R4 0 1
       63 DUPTABLE                         R5 K13 [{"message"}]
       64 LOADK                            R7 K14 ["Instance class not supported for reimport: '%*'"]
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R9 R9 K0 ["dialogConfig"]
       68 GETTABLEKS                       R9 R9 K6 ["class"]
       70 NAMECALL                         R7 R7 K15 ["format"]
       72 CALL                             R7 2 1
       73 MOVE                             R6 R7
       74 SETTABLEKS                       R6 R5 K12 ["message"]
       76 SETLIST                          R4 R5 1 [1]
       78 SETTABLEKS                       R4 R3 K10 ["errors"]
       80 GETUPVAL                         R4 1
       81 GETTABLEKS                       R4 R4 K4 ["onClose"]
       83 SETTABLEKS                       R4 R3 K4 ["onClose"]
       85 GETUPVAL                         R4 1
       86 GETTABLEKS                       R4 R4 K5 ["updateWindowMinSize"]
       88 SETTABLEKS                       R4 R3 K5 ["updateWindowMinSize"]
       90 CALL                             R1 2 -1
       91 RETURN                           R1 -1
       92 GETUPVAL                         R0 0
       93 GETTABLEKS                       R0 R0 K0 ["dialogConfig"]
       95 GETTABLEKS                       R0 R0 K1 ["kind"]
       97 JUMPIFNOTEQKS                    R0 K16 ["error"] ; [+21]
       99 GETUPVAL                         R0 0
      100 GETTABLEKS                       R0 R0 K0 ["dialogConfig"]
      102 GETTABLEKS                       R0 R0 K3 ["props"]
      104 GETUPVAL                         R1 1
      105 GETTABLEKS                       R1 R1 K4 ["onClose"]
      107 SETTABLEKS                       R1 R0 K4 ["onClose"]
      109 GETUPVAL                         R1 1
      110 GETTABLEKS                       R1 R1 K5 ["updateWindowMinSize"]
      112 SETTABLEKS                       R1 R0 K5 ["updateWindowMinSize"]
      114 GETUPVAL                         R1 2
      115 GETUPVAL                         R2 5
      116 MOVE                             R3 R0
      117 CALL                             R1 2 -1
      118 RETURN                           R1 -1
      119 GETIMPORT                        R0 K17 [error]
      121 LOADK                            R2 K18 ["Unknown dialog kind: $%*"]
      122 GETUPVAL                         R4 0
      123 GETTABLEKS                       R4 R4 K0 ["dialogConfig"]
      125 GETTABLEKS                       R4 R4 K1 ["kind"]
      127 NAMECALL                         R2 R2 K15 ["format"]
      129 CALL                             R2 2 1
      130 MOVE                             R1 R2
      131 CALL                             R0 1 0
      132 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 GETTABLEKS                       R1 R1 K1 ["new"]
        5 DUPTABLE                         R2 K6 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Reimport"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K7 ["Src"]
        9 GETTABLEKS                       R3 R3 K8 ["Resources"]
       11 GETTABLEKS                       R3 R3 K0 ["Localization"]
       13 GETTABLEKS                       R3 R3 K9 ["SourceStrings"]
       15 SETTABLEKS                       R3 R2 K2 ["stringResourceTable"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Resources"]
       22 GETTABLEKS                       R3 R3 K0 ["Localization"]
       24 GETTABLEKS                       R3 R3 K10 ["LocalizedStrings"]
       26 SETTABLEKS                       R3 R2 K3 ["translationResourceTable"]
       28 CALL                             R1 1 1
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K11 ["Analytics"]
       32 GETTABLEKS                       R2 R2 K1 ["new"]
       34 DUPCLOSURE                       R3 K12 [PROTO_0]
       35 NEWTABLE                         R4 0 0
       37 CALL                             R2 2 1
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K13 ["Util"]
       41 GETTABLEKS                       R3 R3 K14 ["createFoundationDesignBinding"]
       43 CALL                             R3 0 2
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R6 R0 K15 ["plugin"]
       47 LOADNIL                          R7
       48 LOADNIL                          R8
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R3
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R5 4 1
       55 GETUPVAL                         R6 4
       56 GETTABLEKS                       R6 R6 K16 ["useState"]
       58 LOADB                            R7 1
       59 CALL                             R6 1 2
       60 GETUPVAL                         R8 4
       61 GETTABLEKS                       R8 R8 K16 ["useState"]
       63 GETUPVAL                         R9 5
       64 GETTABLEKS                       R9 R9 K17 ["DialogMinSize"]
       66 CALL                             R8 1 2
       67 DUPTABLE                         R10 K22 [{"toggleEnabled", "onRestore", "onClose", "updateWindowMinSize"}]
       68 NEWCLOSURE                       R11 P1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R11 R10 K18 ["toggleEnabled"]
       73 NEWCLOSURE                       R11 P2
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R11 R10 K19 ["onRestore"]
       77 NEWCLOSURE                       R11 P3
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R11 R10 K20 ["onClose"]
       81 NEWCLOSURE                       R11 P4
       82 CAPTURE                          VAL R9
       83 SETTABLEKS                       R11 R10 K21 ["updateWindowMinSize"]
       85 JUMPIF                           R6 ; [+2]
       86 LOADNIL                          R11
       87 RETURN                           R11 1
       88 LOADK                            R12 K23 ["%* v%*"]
       89 LOADK                            R16 K24 ["Plugin"]
       90 LOADK                            R17 K25 ["Name"]
       91 NAMECALL                         R14 R1 K26 ["getText"]
       93 CALL                             R14 3 1
       94 GETUPVAL                         R15 5
       95 GETTABLEKS                       R15 R15 K27 ["UserVersion"]
       97 NAMECALL                         R12 R12 K28 ["format"]
       99 CALL                             R12 3 1
      100 MOVE                             R11 R12
      101 NEWCLOSURE                       R12 P5
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R10
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          UPVAL U8
      107 CAPTURE                          UPVAL U9
      108 GETUPVAL                         R13 0
      109 GETTABLEKS                       R13 R13 K29 ["provide"]
      111 NEWTABLE                         R14 0 5
      113 GETUPVAL                         R15 10
      114 GETTABLEKS                       R15 R15 K1 ["new"]
      116 GETTABLEKS                       R16 R0 K15 ["plugin"]
      118 CALL                             R15 1 1
      119 GETUPVAL                         R16 11
      120 GETTABLEKS                       R16 R16 K1 ["new"]
      122 GETTABLEKS                       R17 R0 K15 ["plugin"]
      124 NAMECALL                         R17 R17 K30 ["getMouse"]
      126 CALL                             R17 1 -1
      127 CALL                             R16 -1 1
      128 GETUPVAL                         R17 12
      129 GETTABLEKS                       R17 R17 K1 ["new"]
      131 MOVE                             R18 R5
      132 CALL                             R17 1 1
      133 MOVE                             R18 R1
      134 MOVE                             R19 R2
      135 SETLIST                          R14 R15 5 [1]
      137 DUPTABLE                         R15 K32 [{"MainWindow"}]
      138 GETUPVAL                         R16 6
      139 GETUPVAL                         R17 13
      140 GETTABLEKS                       R17 R17 K33 ["UI"]
      142 GETTABLEKS                       R17 R17 K34 ["Dialog"]
      144 NEWTABLE                         R18 16 0
      146 LOADB                            R19 1
      147 SETTABLEKS                       R19 R18 K35 ["Enabled"]
      149 LOADB                            R19 1
      150 SETTABLEKS                       R19 R18 K36 ["Modal"]
      152 SETTABLEKS                       R11 R18 K37 ["Title"]
      154 LOADB                            R19 1
      155 SETTABLEKS                       R19 R18 K38 ["Resizable"]
      157 GETIMPORT                        R19 K42 [Enum.ZIndexBehavior.Sibling]
      159 SETTABLEKS                       R19 R18 K40 ["ZIndexBehavior"]
      161 SETTABLEKS                       R8 R18 K43 ["MinSize"]
      163 GETTABLEKS                       R19 R10 K20 ["onClose"]
      165 SETTABLEKS                       R19 R18 K44 ["OnClose"]
      167 GETTABLEKS                       R19 R0 K15 ["plugin"]
      169 SETTABLEKS                       R19 R18 K24 ["Plugin"]
      171 SETTABLEKS                       R5 R18 K45 ["PluginDesign"]
      173 GETUPVAL                         R19 4
      174 GETTABLEKS                       R19 R19 K46 ["Change"]
      176 GETTABLEKS                       R19 R19 K35 ["Enabled"]
      178 GETTABLEKS                       R20 R10 K20 ["onClose"]
      180 SETTABLE                         R20 R18 R19
      181 DUPTABLE                         R19 K48 [{"FoundationProvider"}]
      182 GETUPVAL                         R20 6
      183 GETUPVAL                         R21 14
      184 DUPTABLE                         R22 K50 [{"onStyleSheetChange"}]
      185 SETTABLEKS                       R4 R22 K49 ["onStyleSheetChange"]
      187 GETUPVAL                         R23 6
      188 GETUPVAL                         R24 15
      189 GETTABLEKS                       R24 R24 K51 ["Provider"]
      191 NEWTABLE                         R25 0 0
      193 MOVE                             R26 R12
      194 CALL                             R26 0 -1
      195 CALL                             R23 -1 -1
      196 CALL                             R20 -1 1
      197 SETTABLEKS                       R20 R19 K47 ["FoundationProvider"]
      199 CALL                             R16 3 1
      200 SETTABLEKS                       R16 R15 K31 ["MainWindow"]
      202 CALL                             R13 2 -1
      203 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Components"]
       23 GETTABLEKS                       R3 R3 K10 ["FoundationProviderAdapter"]
       25 GETTABLEKS                       R4 R1 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["Plugin"]
       29 GETTABLEKS                       R6 R4 K13 ["Mouse"]
       31 GETTABLEKS                       R7 R4 K14 ["Design"]
       33 GETTABLEKS                       R8 R1 K15 ["Styling"]
       35 GETTABLEKS                       R8 R8 K16 ["registerPluginStyles"]
       37 GETIMPORT                        R9 K5 [require]
       39 GETTABLEKS                       R10 R0 K6 ["Packages"]
       41 GETTABLEKS                       R10 R10 K17 ["React"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R10 R9 K18 ["createElement"]
       46 GETIMPORT                        R11 K5 [require]
       48 GETTABLEKS                       R12 R0 K19 ["Src"]
       50 GETTABLEKS                       R12 R12 K20 ["Dialogs"]
       52 GETTABLEKS                       R12 R12 K21 ["ModelConfigDialog"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K5 [require]
       57 GETTABLEKS                       R13 R0 K19 ["Src"]
       59 GETTABLEKS                       R13 R13 K20 ["Dialogs"]
       61 GETTABLEKS                       R13 R13 K22 ["SurfaceAppearanceConfigDialog"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K5 [require]
       66 GETTABLEKS                       R14 R0 K19 ["Src"]
       68 GETTABLEKS                       R14 R14 K20 ["Dialogs"]
       70 GETTABLEKS                       R14 R14 K23 ["ErrorDialog"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K5 [require]
       75 GETTABLEKS                       R15 R0 K24 ["Lib"]
       77 GETTABLEKS                       R15 R15 K25 ["Constants"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R16 R0 K19 ["Src"]
       84 GETTABLEKS                       R16 R16 K26 ["Contexts"]
       86 GETTABLEKS                       R16 R16 K27 ["DialogContext"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R17 R0 K19 ["Src"]
       93 GETTABLEKS                       R17 R17 K20 ["Dialogs"]
       95 GETTABLEKS                       R17 R17 K28 ["Types"]
       97 CALL                             R16 1 1
       98 DUPCLOSURE                       R17 K29 [PROTO_6]
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R15
      115 RETURN                           R17 1
