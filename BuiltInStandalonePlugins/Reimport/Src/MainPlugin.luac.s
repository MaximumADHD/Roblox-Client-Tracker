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
        3 GETTABLEKS                       R0 R0 K1 ["props"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["onClose"]
        8 SETTABLEKS                       R1 R0 K2 ["onClose"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["updateWindowMinSize"]
       13 SETTABLEKS                       R1 R0 K3 ["updateWindowMinSize"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K0 ["dialogConfig"]
       18 GETTABLEKS                       R1 R1 K4 ["kind"]
       20 JUMPIFNOTEQKS                    R1 K5 ["config"] ; [+61]
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
       60 DUPTABLE                         R3 K11 [{"errors"}]
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
       80 CALL                             R1 2 -1
       81 RETURN                           R1 -1
       82 GETUPVAL                         R1 0
       83 GETTABLEKS                       R1 R1 K0 ["dialogConfig"]
       85 GETTABLEKS                       R1 R1 K4 ["kind"]
       87 JUMPIFNOTEQKS                    R1 K16 ["error"] ; [+6]
       89 GETUPVAL                         R1 2
       90 GETUPVAL                         R2 5
       91 MOVE                             R3 R0
       92 CALL                             R1 2 -1
       93 RETURN                           R1 -1
       94 GETIMPORT                        R1 K17 [error]
       96 LOADK                            R3 K18 ["Unknown dialog kind: $%*"]
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R5 R5 K0 ["dialogConfig"]
      100 GETTABLEKS                       R5 R5 K4 ["kind"]
      102 NAMECALL                         R3 R3 K15 ["format"]
      104 CALL                             R3 2 1
      105 MOVE                             R2 R3
      106 CALL                             R1 1 0
      107 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 GETTABLEKS                       R1 R1 K1 ["new"]
        5 DUPTABLE                         R2 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K6 ["Src"]
        9 GETTABLEKS                       R3 R3 K7 ["Resources"]
       11 GETTABLEKS                       R3 R3 K0 ["Localization"]
       13 GETTABLEKS                       R3 R3 K8 ["SourceStrings"]
       15 SETTABLEKS                       R3 R2 K2 ["stringResourceTable"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Resources"]
       22 GETTABLEKS                       R3 R3 K0 ["Localization"]
       24 GETTABLEKS                       R3 R3 K9 ["LocalizedStrings"]
       26 SETTABLEKS                       R3 R2 K3 ["translationResourceTable"]
       28 LOADK                            R3 K10 ["Reimport"]
       29 SETTABLEKS                       R3 R2 K4 ["pluginName"]
       31 CALL                             R1 1 1
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K11 ["Analytics"]
       35 GETTABLEKS                       R2 R2 K1 ["new"]
       37 DUPCLOSURE                       R3 K12 [PROTO_0]
       38 NEWTABLE                         R4 0 0
       40 CALL                             R2 2 1
       41 GETUPVAL                         R3 2
       42 GETTABLEKS                       R3 R3 K13 ["Util"]
       44 GETTABLEKS                       R3 R3 K14 ["createFoundationDesignBinding"]
       46 CALL                             R3 0 2
       47 GETUPVAL                         R5 3
       48 GETTABLEKS                       R6 R0 K15 ["plugin"]
       50 LOADNIL                          R7
       51 LOADNIL                          R8
       52 NEWTABLE                         R9 0 1
       54 MOVE                             R10 R3
       55 SETLIST                          R9 R10 1 [1]
       57 CALL                             R5 4 1
       58 GETUPVAL                         R6 4
       59 GETTABLEKS                       R6 R6 K16 ["useState"]
       61 LOADB                            R7 1
       62 CALL                             R6 1 2
       63 GETUPVAL                         R8 4
       64 GETTABLEKS                       R8 R8 K16 ["useState"]
       66 GETUPVAL                         R9 5
       67 GETTABLEKS                       R9 R9 K17 ["DialogMinSize"]
       69 CALL                             R8 1 2
       70 DUPTABLE                         R10 K22 [{"toggleEnabled", "onRestore", "onClose", "updateWindowMinSize"}]
       71 NEWCLOSURE                       R11 P1
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R6
       74 SETTABLEKS                       R11 R10 K18 ["toggleEnabled"]
       76 NEWCLOSURE                       R11 P2
       77 CAPTURE                          VAL R7
       78 SETTABLEKS                       R11 R10 K19 ["onRestore"]
       80 NEWCLOSURE                       R11 P3
       81 CAPTURE                          VAL R7
       82 SETTABLEKS                       R11 R10 K20 ["onClose"]
       84 NEWCLOSURE                       R11 P4
       85 CAPTURE                          VAL R9
       86 SETTABLEKS                       R11 R10 K21 ["updateWindowMinSize"]
       88 JUMPIF                           R6 ; [+2]
       89 LOADNIL                          R11
       90 RETURN                           R11 1
       91 LOADK                            R12 K23 ["%* v%*"]
       92 LOADK                            R16 K24 ["Plugin"]
       93 LOADK                            R17 K25 ["Name"]
       94 NAMECALL                         R14 R1 K26 ["getText"]
       96 CALL                             R14 3 1
       97 GETUPVAL                         R15 5
       98 GETTABLEKS                       R15 R15 K27 ["UserVersion"]
      100 NAMECALL                         R12 R12 K28 ["format"]
      102 CALL                             R12 3 1
      103 MOVE                             R11 R12
      104 NEWCLOSURE                       R12 P5
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R10
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          UPVAL U7
      109 CAPTURE                          UPVAL U8
      110 CAPTURE                          UPVAL U9
      111 GETUPVAL                         R13 0
      112 GETTABLEKS                       R13 R13 K29 ["provide"]
      114 NEWTABLE                         R14 0 5
      116 GETUPVAL                         R15 10
      117 GETTABLEKS                       R15 R15 K1 ["new"]
      119 GETTABLEKS                       R16 R0 K15 ["plugin"]
      121 CALL                             R15 1 1
      122 GETUPVAL                         R16 11
      123 GETTABLEKS                       R16 R16 K1 ["new"]
      125 GETTABLEKS                       R17 R0 K15 ["plugin"]
      127 NAMECALL                         R17 R17 K30 ["getMouse"]
      129 CALL                             R17 1 -1
      130 CALL                             R16 -1 1
      131 GETUPVAL                         R17 12
      132 GETTABLEKS                       R17 R17 K1 ["new"]
      134 MOVE                             R18 R5
      135 CALL                             R17 1 1
      136 MOVE                             R18 R1
      137 MOVE                             R19 R2
      138 SETLIST                          R14 R15 5 [1]
      140 DUPTABLE                         R15 K32 [{"MainWindow"}]
      141 GETUPVAL                         R16 6
      142 GETUPVAL                         R17 13
      143 GETTABLEKS                       R17 R17 K33 ["UI"]
      145 GETTABLEKS                       R17 R17 K34 ["Dialog"]
      147 NEWTABLE                         R18 16 0
      149 LOADB                            R19 1
      150 SETTABLEKS                       R19 R18 K35 ["Enabled"]
      152 LOADB                            R19 1
      153 SETTABLEKS                       R19 R18 K36 ["Modal"]
      155 SETTABLEKS                       R11 R18 K37 ["Title"]
      157 LOADB                            R19 1
      158 SETTABLEKS                       R19 R18 K38 ["Resizable"]
      160 GETIMPORT                        R19 K42 [Enum.ZIndexBehavior.Sibling]
      162 SETTABLEKS                       R19 R18 K40 ["ZIndexBehavior"]
      164 SETTABLEKS                       R8 R18 K43 ["MinSize"]
      166 GETTABLEKS                       R19 R10 K20 ["onClose"]
      168 SETTABLEKS                       R19 R18 K44 ["OnClose"]
      170 GETTABLEKS                       R19 R0 K15 ["plugin"]
      172 SETTABLEKS                       R19 R18 K24 ["Plugin"]
      174 SETTABLEKS                       R5 R18 K45 ["PluginDesign"]
      176 GETUPVAL                         R19 4
      177 GETTABLEKS                       R19 R19 K46 ["Change"]
      179 GETTABLEKS                       R19 R19 K35 ["Enabled"]
      181 GETTABLEKS                       R20 R10 K20 ["onClose"]
      183 SETTABLE                         R20 R18 R19
      184 DUPTABLE                         R19 K48 [{"FoundationProvider"}]
      185 GETUPVAL                         R20 6
      186 GETUPVAL                         R21 14
      187 DUPTABLE                         R22 K50 [{"onStyleSheetChange"}]
      188 SETTABLEKS                       R4 R22 K49 ["onStyleSheetChange"]
      190 GETUPVAL                         R24 15
      191 CALL                             R24 0 1
      192 JUMPIFNOT                        R24 ; [+10]
      193 GETUPVAL                         R23 6
      194 GETUPVAL                         R24 16
      195 GETTABLEKS                       R24 R24 K51 ["Provider"]
      197 NEWTABLE                         R25 0 0
      199 MOVE                             R26 R12
      200 CALL                             R26 0 -1
      201 CALL                             R23 -1 1
      202 JUMP                             ; [+3]
      203 GETUPVAL                         R23 6
      204 MOVE                             R24 R12
      205 CALL                             R23 1 1
      206 CALL                             R20 3 1
      207 SETTABLEKS                       R20 R19 K47 ["FoundationProvider"]
      209 CALL                             R16 3 1
      210 SETTABLEKS                       R16 R15 K31 ["MainWindow"]
      212 CALL                             R13 2 -1
      213 RETURN                           R13 -1

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
       91 GETTABLEKS                       R17 R0 K28 ["Flags"]
       93 GETTABLEKS                       R17 R17 K29 ["GetFFlagReimportScrollableDropdowns"]
       95 CALL                             R16 1 1
       96 DUPCLOSURE                       R17 K30 [PROTO_6]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R15
      114 RETURN                           R17 1
