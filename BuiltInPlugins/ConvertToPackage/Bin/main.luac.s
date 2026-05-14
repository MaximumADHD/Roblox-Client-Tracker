PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K6 [{"Size", "MinSize", "Resizable", "Modal", "InitialEnabled"}]
        6 GETIMPORT                        R5 K9 [Vector2.new]
        8 LOADN                            R6 192
        9 LOADN                            R7 88
       10 CALL                             R5 2 1
       11 SETTABLEKS                       R5 R4 K1 ["Size"]
       13 GETIMPORT                        R5 K9 [Vector2.new]
       15 LOADN                            R6 192
       16 LOADN                            R7 88
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K2 ["MinSize"]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K3 ["Resizable"]
       23 GETUPVAL                         R6 2
       24 NOT                              R5 R6
       25 SETTABLEKS                       R5 R4 K4 ["Modal"]
       27 LOADB                            R5 0
       28 SETTABLEKS                       R5 R4 K5 ["InitialEnabled"]
       30 NAMECALL                         R1 R1 K10 ["CreateQWidgetPluginGui"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R2 3
       34 LOADK                            R4 K11 ["Meta"]
       35 LOADK                            R5 K12 ["PluginName"]
       36 NAMECALL                         R2 R2 K13 ["getText"]
       38 CALL                             R2 3 1
       39 SETTABLEKS                       R2 R1 K0 ["Name"]
       41 GETUPVAL                         R2 3
       42 LOADK                            R4 K11 ["Meta"]
       43 LOADK                            R5 K12 ["PluginName"]
       44 NAMECALL                         R2 R2 K13 ["getText"]
       46 CALL                             R2 3 1
       47 SETTABLEKS                       R2 R1 K14 ["Title"]
       49 GETIMPORT                        R2 K18 [Enum.ZIndexBehavior.Sibling]
       51 SETTABLEKS                       R2 R1 K16 ["ZIndexBehavior"]
       53 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIF                           R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["unmount"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 1
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETUPVAL                         R1 2
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K6 [{"Size", "MinSize", "Resizable", "Modal", "InitialEnabled"}]
        6 GETIMPORT                        R5 K9 [Vector2.new]
        8 LOADN                            R6 192
        9 LOADN                            R7 88
       10 CALL                             R5 2 1
       11 SETTABLEKS                       R5 R4 K1 ["Size"]
       13 GETIMPORT                        R5 K9 [Vector2.new]
       15 LOADN                            R6 192
       16 LOADN                            R7 88
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K2 ["MinSize"]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K3 ["Resizable"]
       23 GETUPVAL                         R6 3
       24 NOT                              R5 R6
       25 SETTABLEKS                       R5 R4 K4 ["Modal"]
       27 LOADB                            R5 0
       28 SETTABLEKS                       R5 R4 K5 ["InitialEnabled"]
       30 NAMECALL                         R1 R1 K10 ["CreateQWidgetPluginGui"]
       32 CALL                             R1 3 1
       33 SETUPVAL                         R1 1
       34 GETUPVAL                         R1 1
       35 GETUPVAL                         R2 4
       36 LOADK                            R4 K11 ["Meta"]
       37 LOADK                            R5 K12 ["PluginName"]
       38 NAMECALL                         R2 R2 K13 ["getText"]
       40 CALL                             R2 3 1
       41 SETTABLEKS                       R2 R1 K0 ["Name"]
       43 GETUPVAL                         R1 1
       44 GETUPVAL                         R2 4
       45 LOADK                            R4 K11 ["Meta"]
       46 LOADK                            R5 K12 ["PluginName"]
       47 NAMECALL                         R2 R2 K13 ["getText"]
       49 CALL                             R2 3 1
       50 SETTABLEKS                       R2 R1 K14 ["Title"]
       52 GETUPVAL                         R1 1
       53 GETIMPORT                        R2 K18 [Enum.ZIndexBehavior.Sibling]
       55 SETTABLEKS                       R2 R1 K16 ["ZIndexBehavior"]
       57 GETUPVAL                         R1 1
       58 LOADK                            R3 K19 ["Enabled"]
       59 NAMECALL                         R1 R1 K20 ["GetPropertyChangedSignal"]
       61 CALL                             R1 2 1
       62 NEWCLOSURE                       R3 P0
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          UPVAL U6
       66 NAMECALL                         R1 R1 K21 ["connect"]
       68 CALL                             R1 2 0
       69 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 FASTCALL1                        ASSERT R1 ; [+2]
        3 GETIMPORT                        R0 K1 [assert]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["unmount"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 1
       15 GETUPVAL                         R0 3
       16 LOADB                            R1 0
       17 SETTABLEKS                       R1 R0 K3 ["Enabled"]
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 FASTCALL1                        ASSERT R1 ; [+2]
        7 GETIMPORT                        R0 K1 [assert]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K2 ["Enabled"]
       14 GETUPVAL                         R1 2
       15 FASTCALL1                        ASSERT R1 ; [+2]
       16 GETIMPORT                        R0 K1 [assert]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 3
       20 GETTABLEKS                       R0 R0 K3 ["unmount"]
       22 GETUPVAL                         R1 2
       23 CALL                             R0 1 0
       24 GETUPVAL                         R2 4
       25 GETTABLEN                        R1 R2 1
       26 FASTCALL1                        ASSERT R1 ; [+2]
       27 GETIMPORT                        R0 K1 [assert]
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 5
       31 GETUPVAL                         R3 4
       32 GETTABLEN                        R2 R3 1
       33 NAMECALL                         R0 R0 K4 ["ConvertToPackageClosedCallback"]
       35 CALL                             R0 2 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+3]
        2 GETUPVAL                         R4 1
        3 JUMPIFNOT                        R4 ; [+1]
        4 RETURN                           R0 0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 GETUPVAL                         R6 0
        8 JUMPIFNOT                        R6 ; [+23]
        9 LOADB                            R6 0
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          REF R6
       12 CAPTURE                          VAL R3
       13 CAPTURE                          REF R4
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 LOADK                            R9 K0 ["Enabled"]
       18 NAMECALL                         R7 R3 K1 ["GetPropertyChangedSignal"]
       20 CALL                             R7 2 1
       21 NEWCLOSURE                       R9 P1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          REF R5
       24 NAMECALL                         R7 R7 K2 ["connect"]
       26 CALL                             R7 2 0
       27 MOVE                             R9 R5
       28 NAMECALL                         R7 R3 K3 ["BindToClose"]
       30 CALL                             R7 2 0
       31 CLOSEUPVALS                      R6
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K4 ["Store"]
       35 GETTABLEKS                       R6 R6 K5 ["new"]
       37 GETUPVAL                         R7 5
       38 DUPTABLE                         R8 K7 [{"AssetConfigReducer"}]
       39 DUPTABLE                         R9 K10 [{"instances", "clonedInstances"}]
       40 SETTABLEKS                       R0 R9 K8 ["instances"]
       42 SETTABLEKS                       R2 R9 K9 ["clonedInstances"]
       44 SETTABLEKS                       R9 R8 K6 ["AssetConfigReducer"]
       46 NEWTABLE                         R9 0 1
       48 GETUPVAL                         R10 4
       49 GETTABLEKS                       R10 R10 K11 ["thunkMiddleware"]
       51 SETLIST                          R9 R10 1 [1]
       53 CALL                             R6 3 1
       54 GETUPVAL                         R7 6
       55 CALL                             R7 0 1
       56 GETUPVAL                         R8 7
       57 GETTABLEKS                       R8 R8 K5 ["new"]
       59 CALL                             R8 0 1
       60 GETUPVAL                         R9 2
       61 GETTABLEKS                       R9 R9 K12 ["createElement"]
       63 GETUPVAL                         R10 8
       64 DUPTABLE                         R11 K20 [{"plugin", "store", "theme", "mouse", "focusGui", "networkInterface", "localization"}]
       65 GETUPVAL                         R12 9
       66 SETTABLEKS                       R12 R11 K13 ["plugin"]
       68 SETTABLEKS                       R6 R11 K14 ["store"]
       70 SETTABLEKS                       R7 R11 K15 ["theme"]
       72 GETUPVAL                         R12 9
       73 NAMECALL                         R12 R12 K21 ["GetMouse"]
       75 CALL                             R12 1 1
       76 SETTABLEKS                       R12 R11 K16 ["mouse"]
       78 GETUPVAL                         R13 0
       79 JUMPIFNOT                        R13 ; [+2]
       80 MOVE                             R12 R3
       81 JUMP                             ; [+1]
       82 GETUPVAL                         R12 10
       83 SETTABLEKS                       R12 R11 K17 ["focusGui"]
       85 SETTABLEKS                       R8 R11 K18 ["networkInterface"]
       87 GETUPVAL                         R12 11
       88 SETTABLEKS                       R12 R11 K19 ["localization"]
       90 NEWTABLE                         R12 0 1
       92 GETUPVAL                         R13 2
       93 GETTABLEKS                       R13 R13 K12 ["createElement"]
       95 GETUPVAL                         R14 12
       96 DUPTABLE                         R15 K26 [{"onClose", "assetName", "pluginGui", "currentScreen", "instances"}]
       97 GETUPVAL                         R17 0
       98 JUMPIFNOT                        R17 ; [+2]
       99 MOVE                             R16 R5
      100 JUMP                             ; [+1]
      101 GETUPVAL                         R16 13
      102 SETTABLEKS                       R16 R15 K22 ["onClose"]
      104 SETTABLEKS                       R1 R15 K23 ["assetName"]
      106 GETUPVAL                         R17 0
      107 JUMPIFNOT                        R17 ; [+2]
      108 MOVE                             R16 R3
      109 JUMP                             ; [+1]
      110 GETUPVAL                         R16 10
      111 SETTABLEKS                       R16 R15 K24 ["pluginGui"]
      113 GETUPVAL                         R16 14
      114 GETTABLEKS                       R16 R16 K27 ["SCREENS"]
      116 GETTABLEKS                       R16 R16 K28 ["CONFIGURE_ASSET"]
      118 SETTABLEKS                       R16 R15 K25 ["currentScreen"]
      120 SETTABLEKS                       R0 R15 K8 ["instances"]
      122 CALL                             R13 2 -1
      123 SETLIST                          R12 R13 -1 [1]
      125 CALL                             R9 3 1
      126 GETUPVAL                         R10 0
      127 JUMPIFNOT                        R10 ; [+11]
      128 GETUPVAL                         R10 2
      129 GETTABLEKS                       R10 R10 K29 ["mount"]
      131 MOVE                             R11 R9
      132 MOVE                             R12 R3
      133 CALL                             R10 2 1
      134 MOVE                             R4 R10
      135 LOADB                            R10 1
      136 SETTABLEKS                       R10 R3 K0 ["Enabled"]
      138 JUMP                             ; [+11]
      139 GETUPVAL                         R10 2
      140 GETTABLEKS                       R10 R10 K29 ["mount"]
      142 MOVE                             R11 R9
      143 GETUPVAL                         R12 10
      144 CALL                             R10 2 1
      145 SETUPVAL                         R10 1
      146 GETUPVAL                         R10 10
      147 LOADB                            R11 1
      148 SETTABLEKS                       R11 R10 K0 ["Enabled"]
      150 GETUPVAL                         R11 0
      151 JUMPIFNOT                        R11 ; [+2]
      152 MOVE                             R10 R4
      153 JUMP                             ; [+1]
      154 GETUPVAL                         R10 1
      155 CLOSEUPVALS                      R4
      156 RETURN                           R10 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 GETUPVAL                         R7 1
        5 CALL                             R3 4 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 LOADNIL                          R0
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R1 3
       10 CALL                             R1 0 1
       11 MOVE                             R0 R1
       12 JUMP                             ; [+2]
       13 GETUPVAL                         R1 4
       14 CALL                             R1 0 0
       15 GETUPVAL                         R2 5
       16 GETTABLEKS                       R2 R2 K2 ["signals"]
       18 GETTABLEKS                       R1 R2 K1 ["PackageUIService.OnOpenConvertToPackagePlugin"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          REF R0
       23 NAMECALL                         R1 R1 K3 ["Connect"]
       25 CALL                             R1 2 0
       26 CLOSEUPVALS                      R0
       27 RETURN                           R0 0

PROTO_9:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [game]
        4 LOADK                            R4 K2 ["DebugBuiltInPluginModalsNotBlocking"]
        5 NAMECALL                         R2 R2 K3 ["GetFastFlag"]
        7 CALL                             R2 2 1
        8 GETIMPORT                        R3 K5 [script]
       10 GETTABLEKS                       R3 R3 K6 ["Parent"]
       12 GETTABLEKS                       R3 R3 K6 ["Parent"]
       14 GETIMPORT                        R4 K8 [require]
       16 GETTABLEKS                       R5 R3 K9 ["Src"]
       18 GETTABLEKS                       R5 R5 K10 ["Util"]
       20 GETTABLEKS                       R5 R5 K11 ["DebugFlags"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R5 R4 K12 ["runningUnderCli"]
       25 CALL                             R5 0 1
       26 JUMPIFNOT                        R5 ; [+1]
       27 RETURN                           R0 0
       28 GETIMPORT                        R5 K8 [require]
       30 GETTABLEKS                       R6 R3 K13 ["Packages"]
       32 GETTABLEKS                       R6 R6 K14 ["Roact"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K8 [require]
       37 GETTABLEKS                       R7 R3 K13 ["Packages"]
       39 GETTABLEKS                       R7 R7 K15 ["Rodux"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K8 [require]
       44 GETTABLEKS                       R8 R3 K13 ["Packages"]
       46 GETTABLEKS                       R8 R8 K16 ["Framework"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R7 K17 ["ContextServices"]
       51 GETTABLEKS                       R9 R3 K9 ["Src"]
       53 GETTABLEKS                       R9 R9 K10 ["Util"]
       55 GETIMPORT                        R10 K8 [require]
       57 GETTABLEKS                       R11 R3 K9 ["Src"]
       59 GETTABLEKS                       R11 R11 K18 ["Resources"]
       61 GETTABLEKS                       R11 R11 K19 ["MakeTheme"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K8 [require]
       66 GETTABLEKS                       R12 R9 K20 ["Constants"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K8 [require]
       71 GETTABLEKS                       R13 R3 K9 ["Src"]
       73 GETTABLEKS                       R13 R13 K21 ["Reducers"]
       75 GETTABLEKS                       R13 R13 K22 ["MainReducer"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K8 [require]
       80 GETTABLEKS                       R14 R3 K9 ["Src"]
       82 GETTABLEKS                       R14 R14 K23 ["Networking"]
       84 GETTABLEKS                       R14 R14 K24 ["NetworkInterface"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K1 [game]
       89 LOADK                            R16 K25 ["ConvertToPackageStreamingLua"]
       90 NAMECALL                         R14 R14 K26 ["GetEngineFeature"]
       92 CALL                             R14 2 1
       93 LOADNIL                          R15
       94 JUMPIFNOT                        R14 ; [+7]
       95 GETIMPORT                        R16 K1 [game]
       97 LOADK                            R18 K27 ["PackageUIService"]
       98 NAMECALL                         R16 R16 K28 ["GetService"]
      100 CALL                             R16 2 1
      101 MOVE                             R15 R16
      102 GETTABLEKS                       R16 R3 K9 ["Src"]
      104 GETTABLEKS                       R16 R16 K18 ["Resources"]
      106 GETTABLEKS                       R16 R16 K29 ["SourceStrings"]
      108 GETTABLEKS                       R17 R3 K9 ["Src"]
      110 GETTABLEKS                       R17 R17 K18 ["Resources"]
      112 GETTABLEKS                       R17 R17 K30 ["LocalizedStrings"]
      114 GETTABLEKS                       R18 R8 K31 ["Localization"]
      116 GETIMPORT                        R19 K8 [require]
      118 GETTABLEKS                       R20 R3 K9 ["Src"]
      120 GETTABLEKS                       R20 R20 K32 ["Components"]
      122 GETTABLEKS                       R20 R20 K33 ["ServiceWrapper"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K8 [require]
      127 GETTABLEKS                       R21 R3 K9 ["Src"]
      129 GETTABLEKS                       R21 R21 K32 ["Components"]
      131 GETTABLEKS                       R21 R21 K34 ["ConvertToPackageWindow"]
      133 GETTABLEKS                       R21 R21 K35 ["ScreenSelect"]
      135 CALL                             R20 1 1
      136 GETTABLEKS                       R21 R18 K36 ["new"]
      138 DUPTABLE                         R22 K40 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      139 SETTABLEKS                       R16 R22 K37 ["stringResourceTable"]
      141 SETTABLEKS                       R17 R22 K38 ["translationResourceTable"]
      143 GETTABLEKS                       R23 R3 K41 ["Name"]
      145 SETTABLEKS                       R23 R22 K39 ["pluginName"]
      147 CALL                             R21 1 1
      148 LOADNIL                          R22
      149 LOADNIL                          R23
      150 NEWCLOSURE                       R24 P0
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R0
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R21
      155 NEWCLOSURE                       R25 P1
      156 CAPTURE                          VAL R3
      157 CAPTURE                          REF R23
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R21
      161 CAPTURE                          REF R22
      162 CAPTURE                          VAL R5
      163 NEWCLOSURE                       R26 P2
      164 CAPTURE                          VAL R14
      165 CAPTURE                          REF R22
      166 CAPTURE                          VAL R5
      167 CAPTURE                          REF R23
      168 NEWCLOSURE                       R27 P3
      169 CAPTURE                          VAL R14
      170 CAPTURE                          REF R22
      171 CAPTURE                          VAL R5
      172 CAPTURE                          REF R15
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R0
      179 CAPTURE                          REF R23
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R26
      183 CAPTURE                          VAL R11
      184 NEWCLOSURE                       R28 P4
      185 CAPTURE                          VAL R0
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R24
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R27
      192 GETTABLEKS                       R29 R3 K41 ["Name"]
      194 SETTABLEKS                       R29 R0 K41 ["Name"]
      196 LOADNIL                          R29
      197 JUMPIFNOT                        R14 ; [+4]
      198 MOVE                             R30 R24
      199 CALL                             R30 0 1
      200 MOVE                             R29 R30
      201 JUMP                             ; [+2]
      202 MOVE                             R30 R25
      203 CALL                             R30 0 0
      204 GETTABLEKS                       R31 R1 K43 ["signals"]
      206 GETTABLEKS                       R30 R31 K42 ["PackageUIService.OnOpenConvertToPackagePlugin"]
      208 NEWCLOSURE                       R32 P5
      209 CAPTURE                          VAL R27
      210 CAPTURE                          REF R29
      211 NAMECALL                         R30 R30 K44 ["Connect"]
      213 CALL                             R30 2 0
      214 CLOSEUPVALS                      R29
      215 CLOSEUPVALS                      R15
      216 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_9]
        2 RETURN                           R0 1
