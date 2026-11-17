PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [tick]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K2 ["timeOpened"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K3 ["analytics"]
        9 LOADK                            R2 K4 ["sliceEditorOpened"]
       10 NAMECALL                         R0 R0 K5 ["report"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["timeOpened"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["analytics"]
        7 LOADK                            R2 K2 ["sliceEditorOpenTime"]
        8 GETIMPORT                        R4 K4 [tick]
       10 CALL                             R4 0 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K0 ["timeOpened"]
       14 SUB                              R3 R4 R5
       15 NAMECALL                         R0 R0 K5 ["report"]
       17 CALL                             R0 3 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["reportClose"]
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K4 [{["enabled"] = False}]
       12 NAMECALL                         R0 R0 K5 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["enabled"]
        5 JUMPIF                           R2 ; [+4]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["reportOpen"]
        9 CALL                             R2 0 0
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["analytics"]
       14 LOADK                            R4 K4 ["sliceEditorImageLoadedIntoEditor"]
       15 NAMECALL                         R2 R2 K5 ["report"]
       17 CALL                             R2 2 0
       18 DUPTABLE                         R2 K8 [{["enabled"] = True, ["selectedInstance"]}]
       19 MOVE                             R3 R0
       20 JUMPIF                           R3 ; [+3]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K9 ["None"]
       24 SETTABLEKS                       R3 R2 K7 ["selectedInstance"]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K10 ["Dictionary"]
       29 GETTABLEKS                       R3 R3 K11 ["join"]
       31 MOVE                             R4 R2
       32 MOVE                             R5 R1
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 GETUPVAL                         R3 0
       36 MOVE                             R5 R2
       37 NAMECALL                         R3 R3 K12 ["setState"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sliceRect"}]
        2 SETTABLEKS                       R0 R3 K0 ["sliceRect"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"loading"}]
        2 SETTABLEKS                       R0 R3 K0 ["loading"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKS                    R0 K0 ["ImageRectOffset"] ; [+9]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R4 K2 [{"imageRectOffset"}]
        4 SETTABLEKS                       R1 R4 K1 ["imageRectOffset"]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0
       10 JUMPIFNOTEQKS                    R0 K4 ["ImageRectSize"] ; [+9]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R4 K6 [{"imageRectSize"}]
       14 SETTABLEKS                       R1 R4 K5 ["imageRectSize"]
       16 NAMECALL                         R2 R2 K3 ["setState"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0
       20 JUMPIFNOTEQKS                    R0 K7 ["ImageColor3"] ; [+9]
       22 GETUPVAL                         R2 0
       23 DUPTABLE                         R4 K9 [{"imageColor3"}]
       24 SETTABLEKS                       R1 R4 K8 ["imageColor3"]
       26 NAMECALL                         R2 R2 K3 ["setState"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0
       30 JUMPIFNOTEQKS                    R0 K10 ["ResampleMode"] ; [+8]
       32 GETUPVAL                         R2 0
       33 DUPTABLE                         R4 K12 [{"resampleMode"}]
       34 SETTABLEKS                       R1 R4 K11 ["resampleMode"]
       36 NAMECALL                         R2 R2 K3 ["setState"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"contentIdToLoad"}]
        2 SETTABLEKS                       R0 R3 K0 ["contentIdToLoad"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Localization"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 DUPTABLE                         R3 K6 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "9SliceEditor"}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K2 ["stringResourceTable"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["translationResourceTable"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R0 K7 ["localization"]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R0 K8 ["analytics"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K9 ["Analytics"]
       21 GETTABLEKS                       R2 R2 K1 ["new"]
       23 GETUPVAL                         R3 3
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R0 K8 ["analytics"]
       27 DUPTABLE                         R2 K22 [{["enabled"] = False, ["pixelDimensions"], ["sliceRect"], ["revertSliceRect"], ["imageRectSize"], ["imageRectOffset"], ["imageColor3"], ["selectedInstance"] = , ["title"], ["loading"] = False}]
       28 GETIMPORT                        R3 K24 [Vector2.new]
       30 LOADN                            R4 0
       31 LOADN                            R5 0
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R2 K12 ["pixelDimensions"]
       35 NEWTABLE                         R3 0 4
       37 LOADN                            R4 0
       38 LOADN                            R5 0
       39 LOADN                            R6 0
       40 LOADN                            R7 0
       41 SETLIST                          R3 R4 4 [1]
       43 SETTABLEKS                       R3 R2 K13 ["sliceRect"]
       45 NEWTABLE                         R3 0 4
       47 LOADN                            R4 0
       48 LOADN                            R5 0
       49 LOADN                            R6 0
       50 LOADN                            R7 0
       51 SETLIST                          R3 R4 4 [1]
       53 SETTABLEKS                       R3 R2 K14 ["revertSliceRect"]
       55 GETIMPORT                        R3 K24 [Vector2.new]
       57 CALL                             R3 0 1
       58 SETTABLEKS                       R3 R2 K15 ["imageRectSize"]
       60 GETIMPORT                        R3 K24 [Vector2.new]
       62 CALL                             R3 0 1
       63 SETTABLEKS                       R3 R2 K16 ["imageRectOffset"]
       65 GETIMPORT                        R3 K26 [Color3.new]
       67 CALL                             R3 0 1
       68 SETTABLEKS                       R3 R2 K17 ["imageColor3"]
       70 GETTABLEKS                       R3 R0 K7 ["localization"]
       72 LOADK                            R5 K27 ["Plugin"]
       73 LOADK                            R6 K28 ["Name"]
       74 NAMECALL                         R3 R3 K29 ["getText"]
       76 CALL                             R3 3 1
       77 SETTABLEKS                       R3 R2 K20 ["title"]
       79 SETTABLEKS                       R2 R0 K30 ["state"]
       81 LOADNIL                          R2
       82 SETTABLEKS                       R2 R0 K31 ["timeOpened"]
       84 NEWCLOSURE                       R2 P0
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R2 R0 K32 ["reportOpen"]
       88 NEWCLOSURE                       R2 P1
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R2 R0 K33 ["reportClose"]
       92 NEWCLOSURE                       R2 P2
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R2 R0 K34 ["onClose"]
       96 NEWCLOSURE                       R2 P3
       97 CAPTURE                          VAL R0
       98 CAPTURE                          UPVAL U4
       99 CAPTURE                          UPVAL U5
      100 SETTABLEKS                       R2 R0 K35 ["onInstanceUnderEditChanged"]
      102 NEWCLOSURE                       R2 P4
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R2 R0 K36 ["onSliceRectChanged"]
      106 NEWCLOSURE                       R2 P5
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R2 R0 K37 ["onLoadingChanged"]
      110 NEWCLOSURE                       R2 P6
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R2 R0 K38 ["onInstancePropertyChanged"]
      114 GETUPVAL                         R2 4
      115 GETTABLEKS                       R2 R2 K39 ["createRef"]
      117 CALL                             R2 0 1
      118 SETTABLEKS                       R2 R0 K40 ["loadingImageRef"]
      120 NEWCLOSURE                       R2 P7
      121 CAPTURE                          VAL R0
      122 SETTABLEKS                       R2 R0 K41 ["onRequestToLoadImage"]
      124 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["enabled"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["reportClose"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 5
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R9 3
       26 CALL                             R9 0 1
       27 GETTABLEKS                       R10 R0 K7 ["localization"]
       29 GETTABLEKS                       R11 R0 K8 ["analytics"]
       31 SETLIST                          R6 R7 5 [1]
       33 DUPTABLE                         R7 K11 [{"InstanceUnderEditManager", "MainWidget"}]
       34 GETUPVAL                         R8 4
       35 GETTABLEKS                       R8 R8 K12 ["createElement"]
       37 GETUPVAL                         R9 5
       38 DUPTABLE                         R10 K21 [{"WidgetEnabled", "InstanceUnderEditChanged", "InstancePropertyChanged", "SliceRectChanged", "LoadingChanged", "InitialEditorInstanceRequest", "RequestToLoadImage", "LoadingImageRef"}]
       39 SETTABLEKS                       R4 R10 K13 ["WidgetEnabled"]
       41 GETTABLEKS                       R11 R0 K22 ["onInstanceUnderEditChanged"]
       43 SETTABLEKS                       R11 R10 K14 ["InstanceUnderEditChanged"]
       45 GETTABLEKS                       R11 R0 K23 ["onInstancePropertyChanged"]
       47 SETTABLEKS                       R11 R10 K15 ["InstancePropertyChanged"]
       49 GETTABLEKS                       R11 R0 K24 ["onSliceRectChanged"]
       51 SETTABLEKS                       R11 R10 K16 ["SliceRectChanged"]
       53 GETTABLEKS                       R11 R0 K25 ["onLoadingChanged"]
       55 SETTABLEKS                       R11 R10 K17 ["LoadingChanged"]
       57 GETTABLEKS                       R11 R1 K18 ["InitialEditorInstanceRequest"]
       59 SETTABLEKS                       R11 R10 K18 ["InitialEditorInstanceRequest"]
       61 GETTABLEKS                       R11 R0 K26 ["onRequestToLoadImage"]
       63 SETTABLEKS                       R11 R10 K19 ["RequestToLoadImage"]
       65 GETTABLEKS                       R11 R0 K27 ["loadingImageRef"]
       67 SETTABLEKS                       R11 R10 K20 ["LoadingImageRef"]
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K9 ["InstanceUnderEditManager"]
       72 GETUPVAL                         R8 4
       73 GETTABLEKS                       R8 R8 K12 ["createElement"]
       75 GETUPVAL                         R9 6
       76 DUPTABLE                         R10 K39 [{["Id"] = "SliceEditor", ["Enabled"], ["Title"], ["InitialDockState"], ["ZIndexBehavior"], ["Size"], ["MinSize"], ["OnClose"], ["ShouldRestore"] = False}]
       77 SETTABLEKS                       R4 R10 K30 ["Enabled"]
       79 GETTABLEKS                       R11 R2 K40 ["title"]
       81 SETTABLEKS                       R11 R10 K31 ["Title"]
       83 GETIMPORT                        R11 K43 [Enum.InitialDockState.Float]
       85 SETTABLEKS                       R11 R10 K32 ["InitialDockState"]
       87 GETIMPORT                        R11 K45 [Enum.ZIndexBehavior.Global]
       89 SETTABLEKS                       R11 R10 K33 ["ZIndexBehavior"]
       91 GETUPVAL                         R11 7
       92 GETTABLEKS                       R11 R11 K46 ["WIDGET_SIZE"]
       94 SETTABLEKS                       R11 R10 K34 ["Size"]
       96 GETUPVAL                         R11 7
       97 GETTABLEKS                       R11 R11 K46 ["WIDGET_SIZE"]
       99 SETTABLEKS                       R11 R10 K35 ["MinSize"]
      101 GETTABLEKS                       R11 R0 K47 ["onClose"]
      103 SETTABLEKS                       R11 R10 K36 ["OnClose"]
      105 DUPTABLE                         R11 K48 [{"SliceEditor"}]
      106 MOVE                             R12 R4
      107 JUMPIFNOT                        R12 ; [+54]
      108 GETUPVAL                         R12 4
      109 GETTABLEKS                       R12 R12 K12 ["createElement"]
      111 GETUPVAL                         R13 8
      112 DUPTABLE                         R14 K59 [{"onClose", "pixelDimensions", "selectedObject", "sliceRect", "revertSliceRect", "loading", "imageRectSize", "imageRectOffset", "imageColor3", "resampleMode", "contentIdToLoad", "loadingImageRef"}]
      113 GETTABLEKS                       R15 R0 K47 ["onClose"]
      115 SETTABLEKS                       R15 R14 K47 ["onClose"]
      117 GETTABLEKS                       R15 R2 K49 ["pixelDimensions"]
      119 SETTABLEKS                       R15 R14 K49 ["pixelDimensions"]
      121 GETTABLEKS                       R15 R2 K60 ["selectedInstance"]
      123 SETTABLEKS                       R15 R14 K50 ["selectedObject"]
      125 GETTABLEKS                       R15 R2 K51 ["sliceRect"]
      127 SETTABLEKS                       R15 R14 K51 ["sliceRect"]
      129 GETTABLEKS                       R15 R2 K52 ["revertSliceRect"]
      131 SETTABLEKS                       R15 R14 K52 ["revertSliceRect"]
      133 GETTABLEKS                       R15 R2 K53 ["loading"]
      135 SETTABLEKS                       R15 R14 K53 ["loading"]
      137 GETTABLEKS                       R15 R2 K54 ["imageRectSize"]
      139 SETTABLEKS                       R15 R14 K54 ["imageRectSize"]
      141 GETTABLEKS                       R15 R2 K55 ["imageRectOffset"]
      143 SETTABLEKS                       R15 R14 K55 ["imageRectOffset"]
      145 GETTABLEKS                       R15 R2 K56 ["imageColor3"]
      147 SETTABLEKS                       R15 R14 K56 ["imageColor3"]
      149 GETTABLEKS                       R15 R2 K57 ["resampleMode"]
      151 SETTABLEKS                       R15 R14 K57 ["resampleMode"]
      153 GETTABLEKS                       R15 R2 K58 ["contentIdToLoad"]
      155 SETTABLEKS                       R15 R14 K58 ["contentIdToLoad"]
      157 GETTABLEKS                       R15 R0 K27 ["loadingImageRef"]
      159 SETTABLEKS                       R15 R14 K27 ["loadingImageRef"]
      161 CALL                             R12 2 1
      162 SETTABLEKS                       R12 R11 K29 ["SliceEditor"]
      164 CALL                             R8 3 1
      165 SETTABLEKS                       R8 R7 K10 ["MainWidget"]
      167 CALL                             R5 2 -1
      168 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K10 ["Util"]
       34 GETTABLEKS                       R5 R5 K11 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K12 ["Types"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K14 ["Plugin"]
       48 GETTABLEKS                       R8 R6 K15 ["Mouse"]
       50 GETIMPORT                        R9 K4 [require]
       52 GETTABLEKS                       R10 R0 K9 ["Src"]
       54 GETTABLEKS                       R10 R10 K16 ["Resources"]
       56 GETTABLEKS                       R10 R10 K17 ["MakeTheme"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R0 K9 ["Src"]
       61 GETTABLEKS                       R10 R10 K16 ["Resources"]
       63 GETTABLEKS                       R10 R10 K18 ["Localization"]
       65 GETTABLEKS                       R10 R10 K19 ["SourceStrings"]
       67 GETTABLEKS                       R11 R0 K9 ["Src"]
       69 GETTABLEKS                       R11 R11 K16 ["Resources"]
       71 GETTABLEKS                       R11 R11 K18 ["Localization"]
       73 GETTABLEKS                       R11 R11 K20 ["LocalizedStrings"]
       75 GETIMPORT                        R12 K4 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Src"]
       79 GETTABLEKS                       R13 R13 K21 ["Components"]
       81 GETTABLEKS                       R13 R13 K22 ["SliceEditorMain"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K4 [require]
       86 GETTABLEKS                       R14 R0 K9 ["Src"]
       88 GETTABLEKS                       R14 R14 K21 ["Components"]
       90 GETTABLEKS                       R14 R14 K23 ["InstanceUnderEditManager"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K4 [require]
       95 GETTABLEKS                       R15 R0 K9 ["Src"]
       97 GETTABLEKS                       R15 R15 K16 ["Resources"]
       99 GETTABLEKS                       R15 R15 K24 ["AnalyticsHandlers"]
      101 CALL                             R14 1 1
      102 GETTABLEKS                       R15 R3 K25 ["UI"]
      104 GETTABLEKS                       R16 R15 K26 ["DockWidget"]
      106 GETTABLEKS                       R17 R1 K27 ["PureComponent"]
      108 LOADK                            R19 K28 ["MainPlugin"]
      109 NAMECALL                         R17 R17 K29 ["extend"]
      111 CALL                             R17 2 1
      112 DUPCLOSURE                       R18 K30 [PROTO_8]
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R2
      119 SETTABLEKS                       R18 R17 K31 ["init"]
      121 DUPCLOSURE                       R18 K32 [PROTO_9]
      122 SETTABLEKS                       R18 R17 K33 ["willUnmount"]
      124 DUPCLOSURE                       R18 K34 [PROTO_10]
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R12
      134 SETTABLEKS                       R18 R17 K35 ["render"]
      136 RETURN                           R17 1
