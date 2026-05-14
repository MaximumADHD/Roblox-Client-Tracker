PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["closeDMConnection"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["state"]
        9 GETTABLEKS                       R0 R0 K1 ["closeDMConnection"]
       11 NAMECALL                         R0 R0 K2 ["Disconnect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K3 ["Plugin"]
       17 LOADK                            R2 K4 ["OnStopEditing"]
       18 NAMECALL                         R0 R0 K5 ["Invoke"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 0
       22 DUPTABLE                         R2 K10 [{"enabled", "instanceId", "instanceName", "initialData", "closeDMConnection"}]
       23 LOADB                            R3 0
       24 SETTABLEKS                       R3 R2 K6 ["enabled"]
       26 LOADN                            R3 255
       27 SETTABLEKS                       R3 R2 K7 ["instanceId"]
       29 LOADK                            R3 K11 [""]
       30 SETTABLEKS                       R3 R2 K8 ["instanceName"]
       32 GETUPVAL                         R3 2
       33 SETTABLEKS                       R3 R2 K9 ["initialData"]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K1 ["closeDMConnection"]
       38 NAMECALL                         R0 R0 K12 ["setState"]
       40 CALL                             R0 2 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Plugin"]
        3 LOADK                            R3 K1 ["OnEdit"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K2 ["Invoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setDisabled"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 DUPTABLE                         R3 K2 [{"forceRerender"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["state"]
        9 GETTABLEKS                       R5 R5 K1 ["forceRerender"]
       11 NOT                              R4 R5
       12 SETTABLEKS                       R4 R3 K1 ["forceRerender"]
       14 NAMECALL                         R1 R1 K4 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDisabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 GETTABLEKS                       R0 R0 K1 ["MultipleDocumentInterfaceInstance"]
        5 GETTABLEKS                       R1 R0 K2 ["FocusedDataModelSession"]
        7 JUMPIFNOT                        R1 ; [+14]
        8 GETTABLEKS                       R2 R1 K3 ["CurrentDataModelTypeAboutToChange"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 NAMECALL                         R2 R2 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 1
       16 DUPTABLE                         R5 K6 [{"closeDMConnection"}]
       17 SETTABLEKS                       R2 R5 K5 ["closeDMConnection"]
       19 NAMECALL                         R3 R3 K7 ["setState"]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["closeOnDMChange"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K5 [{"enabled", "instanceId", "instanceName", "initialData"}]
        6 LOADB                            R5 1
        7 SETTABLEKS                       R5 R4 K1 ["enabled"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K7 ["state"]
       12 GETTABLEKS                       R6 R6 K2 ["instanceId"]
       14 ADDK                             R5 R6 K6 [1]
       15 SETTABLEKS                       R5 R4 K2 ["instanceId"]
       17 SETTABLEKS                       R1 R4 K3 ["instanceName"]
       19 SETTABLEKS                       R0 R4 K4 ["initialData"]
       21 NAMECALL                         R2 R2 K8 ["setState"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"initialData"}]
        2 SETTABLEKS                       R0 R3 K0 ["initialData"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R2 K8 [{"Type", "AssetId", "Volume", "PlaybackSpeed", "Looping", "PlaybackRegion", "LoopRegion", "TimePosition"}]
        1 LOADK                            R3 K9 ["AudioPlayer"]
        2 SETTABLEKS                       R3 R2 K0 ["Type"]
        4 LOADK                            R3 K10 [""]
        5 SETTABLEKS                       R3 R2 K1 ["AssetId"]
        7 LOADN                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["Volume"]
       10 LOADN                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["PlaybackSpeed"]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["Looping"]
       16 GETIMPORT                        R3 K13 [NumberRange.new]
       18 LOADN                            R4 0
       19 LOADN                            R5 0
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K5 ["PlaybackRegion"]
       23 GETIMPORT                        R3 K13 [NumberRange.new]
       25 LOADN                            R4 0
       26 LOADN                            R5 0
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R2 K6 ["LoopRegion"]
       30 LOADN                            R3 0
       31 SETTABLEKS                       R3 R2 K7 ["TimePosition"]
       33 DUPTABLE                         R3 K20 [{"enabled", "instanceId", "instanceName", "initialData", "closeDMConnection", "forceRerender"}]
       34 LOADB                            R4 0
       35 SETTABLEKS                       R4 R3 K14 ["enabled"]
       37 LOADN                            R4 255
       38 SETTABLEKS                       R4 R3 K15 ["instanceId"]
       40 LOADK                            R4 K10 [""]
       41 SETTABLEKS                       R4 R3 K16 ["instanceName"]
       43 SETTABLEKS                       R2 R3 K17 ["initialData"]
       45 LOADNIL                          R4
       46 SETTABLEKS                       R4 R3 K18 ["closeDMConnection"]
       48 LOADB                            R4 0
       49 SETTABLEKS                       R4 R3 K19 ["forceRerender"]
       51 SETTABLEKS                       R3 R0 K21 ["state"]
       53 NEWCLOSURE                       R3 P0
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R3 R0 K22 ["setDisabled"]
       59 NEWCLOSURE                       R3 P1
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R3 R0 K23 ["onChanged"]
       63 NEWCLOSURE                       R3 P2
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R3 R0 K24 ["onWidgetEnabledChanged"]
       67 NEWCLOSURE                       R3 P3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R3 R0 K25 ["closeOnDMChange"]
       72 GETTABLEKS                       R3 R1 K26 ["Plugin"]
       74 LOADK                            R5 K27 ["OnOpen"]
       75 NEWCLOSURE                       R6 P4
       76 CAPTURE                          VAL R0
       77 NAMECALL                         R3 R3 K28 ["OnInvoke"]
       79 CALL                             R3 3 0
       80 GETTABLEKS                       R3 R1 K26 ["Plugin"]
       82 LOADK                            R5 K29 ["OnInstanceChanged"]
       83 NEWCLOSURE                       R6 P5
       84 CAPTURE                          VAL R0
       85 NAMECALL                         R3 R3 K28 ["OnInvoke"]
       87 CALL                             R3 3 0
       88 GETUPVAL                         R3 0
       89 GETTABLEKS                       R3 R3 K30 ["Localization"]
       91 GETTABLEKS                       R3 R3 K12 ["new"]
       93 DUPTABLE                         R4 K34 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       94 GETUPVAL                         R5 1
       95 SETTABLEKS                       R5 R4 K31 ["stringResourceTable"]
       97 GETUPVAL                         R5 2
       98 SETTABLEKS                       R5 R4 K32 ["translationResourceTable"]
      100 LOADK                            R5 K35 ["AudioPlayerEditor"]
      101 SETTABLEKS                       R5 R4 K33 ["pluginName"]
      103 CALL                             R3 1 1
      104 SETTABLEKS                       R3 R0 K36 ["localizationLEGACY"]
      106 GETUPVAL                         R3 3
      107 GETTABLEKS                       R3 R3 K30 ["Localization"]
      109 GETTABLEKS                       R3 R3 K12 ["new"]
      111 DUPTABLE                         R4 K34 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      112 GETUPVAL                         R5 1
      113 SETTABLEKS                       R5 R4 K31 ["stringResourceTable"]
      115 GETUPVAL                         R5 2
      116 SETTABLEKS                       R5 R4 K32 ["translationResourceTable"]
      118 LOADK                            R5 K35 ["AudioPlayerEditor"]
      119 SETTABLEKS                       R5 R4 K33 ["pluginName"]
      121 CALL                             R3 1 1
      122 SETTABLEKS                       R3 R0 K37 ["localization"]
      124 GETUPVAL                         R3 0
      125 GETTABLEKS                       R3 R3 K38 ["Analytics"]
      127 GETTABLEKS                       R3 R3 K12 ["new"]
      129 DUPCLOSURE                       R4 K39 [PROTO_7]
      130 NEWTABLE                         R5 0 0
      132 CALL                             R3 2 1
      133 SETTABLEKS                       R3 R0 K40 ["analytics"]
      135 GETUPVAL                         R3 4
      136 GETTABLEKS                       R3 R3 K12 ["new"]
      138 CALL                             R3 0 1
      139 SETTABLEKS                       R3 R0 K41 ["DEPRECATED_stylizer"]
      141 GETUPVAL                         R3 5
      142 GETTABLEKS                       R3 R3 K42 ["Util"]
      144 GETTABLEKS                       R3 R3 K43 ["createFoundationDesignBinding"]
      146 CALL                             R3 0 2
      147 SETTABLEKS                       R4 R0 K44 ["onFoundationStyleSheetChange"]
      149 GETUPVAL                         R5 6
      150 GETTABLEKS                       R6 R1 K26 ["Plugin"]
      152 LOADNIL                          R7
      153 LOADNIL                          R8
      154 NEWTABLE                         R9 0 1
      156 MOVE                             R10 R3
      157 SETLIST                          R9 R10 1 [1]
      159 CALL                             R5 4 1
      160 SETTABLEKS                       R5 R0 K45 ["design"]
      162 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+20]
        2 GETTABLEKS                       R1 R0 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        6 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        8 JUMPIFNOT                        R1 ; [+13]
        9 GETTABLEKS                       R1 R0 K0 ["props"]
       11 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
       13 GETTABLEKS                       R1 R1 K2 ["mainButton"]
       15 GETTABLEKS                       R3 R0 K3 ["state"]
       17 GETTABLEKS                       R3 R3 K4 ["enabled"]
       19 NAMECALL                         R1 R1 K5 ["SetActive"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 LOADK                            R5 K4 ["AudioPlayerEditor"]
        9 JUMPIFNOT                        R4 ; [+14]
       10 LOADK                            R6 K5 ["%* - %*"]
       11 GETTABLEKS                       R8 R0 K6 ["localization"]
       13 LOADK                            R10 K2 ["Plugin"]
       14 LOADK                            R11 K7 ["Name"]
       15 NAMECALL                         R8 R8 K8 ["getText"]
       17 CALL                             R8 3 1
       18 GETTABLEKS                       R9 R2 K9 ["instanceName"]
       20 NAMECALL                         R6 R6 K10 ["format"]
       22 CALL                             R6 3 1
       23 MOVE                             R5 R6
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K11 ["provide"]
       27 NEWTABLE                         R7 0 4
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K12 ["new"]
       32 MOVE                             R9 R3
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R9 R9 K12 ["new"]
       37 NAMECALL                         R10 R3 K13 ["getMouse"]
       39 CALL                             R10 1 -1
       40 CALL                             R9 -1 1
       41 GETUPVAL                         R10 3
       42 GETTABLEKS                       R10 R10 K12 ["new"]
       44 GETTABLEKS                       R11 R0 K14 ["design"]
       46 CALL                             R10 1 1
       47 GETTABLEKS                       R11 R0 K15 ["localizationLEGACY"]
       49 SETLIST                          R7 R8 4 [1]
       51 DUPTABLE                         R8 K17 [{"MainWidget"}]
       52 GETUPVAL                         R9 4
       53 GETTABLEKS                       R9 R9 K18 ["createElement"]
       55 GETUPVAL                         R10 5
       56 NEWTABLE                         R11 16 0
       58 LOADK                            R12 K4 ["AudioPlayerEditor"]
       59 SETTABLEKS                       R12 R11 K19 ["Id"]
       61 SETTABLEKS                       R4 R11 K20 ["Enabled"]
       63 SETTABLEKS                       R5 R11 K21 ["Title"]
       65 GETIMPORT                        R12 K25 [Enum.ZIndexBehavior.Sibling]
       67 SETTABLEKS                       R12 R11 K23 ["ZIndexBehavior"]
       69 GETIMPORT                        R12 K28 [Enum.InitialDockState.Float]
       71 SETTABLEKS                       R12 R11 K26 ["InitialDockState"]
       73 GETIMPORT                        R12 K30 [Vector2.new]
       75 LOADN                            R13 128
       76 LOADN                            R14 224
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K31 ["Size"]
       80 GETIMPORT                        R12 K30 [Vector2.new]
       82 LOADN                            R13 250
       83 LOADN                            R14 200
       84 CALL                             R12 2 1
       85 SETTABLEKS                       R12 R11 K32 ["MinSize"]
       87 GETTABLEKS                       R12 R0 K33 ["setDisabled"]
       89 SETTABLEKS                       R12 R11 K34 ["OnClose"]
       91 GETTABLEKS                       R12 R1 K35 ["PluginLoaderContext"]
       93 GETTABLEKS                       R12 R12 K36 ["mainDockWidget"]
       95 SETTABLEKS                       R12 R11 K37 ["Widget"]
       97 GETTABLEKS                       R12 R0 K38 ["onDockWidgetCreated"]
       99 SETTABLEKS                       R12 R11 K39 ["OnWidgetCreated"]
      101 GETTABLEKS                       R12 R0 K14 ["design"]
      103 SETTABLEKS                       R12 R11 K40 ["PluginDesign"]
      105 GETUPVAL                         R12 4
      106 GETTABLEKS                       R12 R12 K41 ["Change"]
      108 GETTABLEKS                       R12 R12 K20 ["Enabled"]
      110 GETTABLEKS                       R13 R0 K42 ["onWidgetEnabledChanged"]
      112 SETTABLE                         R13 R11 R12
      113 DUPTABLE                         R12 K44 [{"FoundationProvider"}]
      114 GETUPVAL                         R13 4
      115 GETTABLEKS                       R13 R13 K18 ["createElement"]
      117 GETUPVAL                         R14 6
      118 DUPTABLE                         R15 K46 [{"onStyleSheetChange"}]
      119 GETTABLEKS                       R16 R0 K47 ["onFoundationStyleSheetChange"]
      121 SETTABLEKS                       R16 R15 K45 ["onStyleSheetChange"]
      123 NEWTABLE                         R16 0 1
      125 GETUPVAL                         R17 4
      126 GETTABLEKS                       R17 R17 K18 ["createElement"]
      128 GETUPVAL                         R18 7
      129 GETTABLEKS                       R18 R18 K48 ["Provider"]
      131 DUPTABLE                         R19 K49 [{"localization"}]
      132 GETTABLEKS                       R20 R0 K6 ["localization"]
      134 SETTABLEKS                       R20 R19 K6 ["localization"]
      136 NEWTABLE                         R20 1 0
      138 LOADK                            R22 K50 ["AudioPlayerEditor_%*"]
      139 GETTABLEKS                       R24 R2 K51 ["instanceId"]
      141 NAMECALL                         R22 R22 K10 ["format"]
      143 CALL                             R22 2 1
      144 MOVE                             R21 R22
      145 GETUPVAL                         R22 4
      146 GETTABLEKS                       R22 R22 K18 ["createElement"]
      148 GETUPVAL                         R23 8
      149 DUPTABLE                         R24 K54 [{"Data", "SetData", "Enabled"}]
      150 GETTABLEKS                       R25 R2 K55 ["initialData"]
      152 SETTABLEKS                       R25 R24 K52 ["Data"]
      154 GETTABLEKS                       R25 R0 K56 ["onChanged"]
      156 SETTABLEKS                       R25 R24 K53 ["SetData"]
      158 GETTABLEKS                       R25 R2 K3 ["enabled"]
      160 SETTABLEKS                       R25 R24 K20 ["Enabled"]
      162 CALL                             R22 2 1
      163 SETTABLE                         R22 R20 R21
      164 CALL                             R17 3 -1
      165 SETLIST                          R16 R17 -1 [1]
      167 CALL                             R13 3 1
      168 SETTABLEKS                       R13 R12 K43 ["FoundationProvider"]
      170 CALL                             R9 3 1
      171 SETTABLEKS                       R9 R8 K16 ["MainWidget"]
      173 CALL                             R6 2 -1
      174 RETURN                           R6 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["actionActivatedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["actionActivatedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R5 R3 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETTABLEKS                       R6 R2 K14 ["UI"]
       38 GETTABLEKS                       R6 R6 K15 ["DockWidget"]
       40 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K17 ["Plugin"]
       44 GETTABLEKS                       R9 R7 K18 ["Mouse"]
       46 GETTABLEKS                       R10 R7 K19 ["Design"]
       48 GETTABLEKS                       R11 R2 K20 ["Style"]
       50 GETTABLEKS                       R11 R11 K21 ["Themes"]
       52 GETTABLEKS                       R11 R11 K22 ["StudioTheme"]
       54 GETTABLEKS                       R12 R3 K23 ["Util"]
       56 GETTABLEKS                       R12 R12 K24 ["StudioUri"]
       58 GETTABLEKS                       R13 R2 K25 ["Styling"]
       60 GETTABLEKS                       R13 R13 K26 ["registerPluginStyles"]
       62 GETTABLEKS                       R14 R0 K27 ["Src"]
       64 GETTABLEKS                       R14 R14 K28 ["Resources"]
       66 GETTABLEKS                       R14 R14 K13 ["Localization"]
       68 GETTABLEKS                       R14 R14 K29 ["SourceStrings"]
       70 GETTABLEKS                       R15 R0 K27 ["Src"]
       72 GETTABLEKS                       R15 R15 K28 ["Resources"]
       74 GETTABLEKS                       R15 R15 K13 ["Localization"]
       76 GETTABLEKS                       R15 R15 K30 ["LocalizedStrings"]
       78 GETTABLEKS                       R16 R0 K27 ["Src"]
       80 GETTABLEKS                       R16 R16 K10 ["Components"]
       82 GETIMPORT                        R17 K5 [require]
       84 GETTABLEKS                       R18 R16 K2 ["AudioPlayerEditor"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R19 R0 K31 ["Bin"]
       91 GETTABLEKS                       R19 R19 K32 ["Common"]
       93 GETTABLEKS                       R19 R19 K33 ["defineLuaFlags"]
       95 CALL                             R18 1 1
       96 GETTABLEKS                       R19 R18 K34 ["getFFlagEnableRibbonPlugin"]
       98 CALL                             R19 0 1
       99 GETTABLEKS                       R20 R18 K35 ["getFFlagRegisterActionsPluginLoader"]
      101 CALL                             R20 0 1
      102 AND                              R21 R20 R19
      103 GETIMPORT                        R22 K5 [require]
      105 GETTABLEKS                       R23 R0 K27 ["Src"]
      107 GETTABLEKS                       R23 R23 K36 ["Types"]
      109 CALL                             R22 1 1
      110 GETTABLEKS                       R23 R1 K37 ["PureComponent"]
      112 LOADK                            R25 K38 ["MainPlugin"]
      113 NAMECALL                         R23 R23 K39 ["extend"]
      115 CALL                             R23 2 1
      116 DUPCLOSURE                       R24 K40 [PROTO_8]
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R13
      124 SETTABLEKS                       R24 R23 K41 ["init"]
      126 DUPCLOSURE                       R24 K42 [PROTO_9]
      127 CAPTURE                          VAL R21
      128 SETTABLEKS                       R24 R23 K43 ["didUpdate"]
      130 DUPCLOSURE                       R24 K44 [PROTO_10]
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R17
      140 SETTABLEKS                       R24 R23 K45 ["render"]
      142 DUPCLOSURE                       R24 K46 [PROTO_11]
      143 SETTABLEKS                       R24 R23 K47 ["willUnmount"]
      145 RETURN                           R23 1
