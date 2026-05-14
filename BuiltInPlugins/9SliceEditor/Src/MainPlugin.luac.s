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
       11 DUPTABLE                         R2 K3 [{"enabled"}]
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K1 ["enabled"]
       15 NAMECALL                         R0 R0 K4 ["setState"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

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
       18 DUPTABLE                         R2 K7 [{"enabled", "selectedInstance"}]
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K1 ["enabled"]
       22 MOVE                             R3 R0
       23 JUMPIF                           R3 ; [+3]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K8 ["None"]
       27 SETTABLEKS                       R3 R2 K6 ["selectedInstance"]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K9 ["Dictionary"]
       32 GETTABLEKS                       R3 R3 K10 ["join"]
       34 MOVE                             R4 R2
       35 MOVE                             R5 R1
       36 CALL                             R3 2 1
       37 MOVE                             R2 R3
       38 GETUPVAL                         R3 0
       39 MOVE                             R5 R2
       40 NAMECALL                         R3 R3 K11 ["setState"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

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
        5 DUPTABLE                         R3 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K2 ["stringResourceTable"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["translationResourceTable"]
       12 LOADK                            R4 K6 ["9SliceEditor"]
       13 SETTABLEKS                       R4 R3 K4 ["pluginName"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K7 ["localization"]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R0 K8 ["analytics"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K9 ["Analytics"]
       24 GETTABLEKS                       R2 R2 K1 ["new"]
       26 GETUPVAL                         R3 3
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R0 K8 ["analytics"]
       30 DUPTABLE                         R2 K20 [{"enabled", "pixelDimensions", "sliceRect", "revertSliceRect", "imageRectSize", "imageRectOffset", "imageColor3", "selectedInstance", "title", "loading"}]
       31 LOADB                            R3 0
       32 SETTABLEKS                       R3 R2 K10 ["enabled"]
       34 GETIMPORT                        R3 K22 [Vector2.new]
       36 LOADN                            R4 0
       37 LOADN                            R5 0
       38 CALL                             R3 2 1
       39 SETTABLEKS                       R3 R2 K11 ["pixelDimensions"]
       41 NEWTABLE                         R3 0 4
       43 LOADN                            R4 0
       44 LOADN                            R5 0
       45 LOADN                            R6 0
       46 LOADN                            R7 0
       47 SETLIST                          R3 R4 4 [1]
       49 SETTABLEKS                       R3 R2 K12 ["sliceRect"]
       51 NEWTABLE                         R3 0 4
       53 LOADN                            R4 0
       54 LOADN                            R5 0
       55 LOADN                            R6 0
       56 LOADN                            R7 0
       57 SETLIST                          R3 R4 4 [1]
       59 SETTABLEKS                       R3 R2 K13 ["revertSliceRect"]
       61 GETIMPORT                        R3 K22 [Vector2.new]
       63 CALL                             R3 0 1
       64 SETTABLEKS                       R3 R2 K14 ["imageRectSize"]
       66 GETIMPORT                        R3 K22 [Vector2.new]
       68 CALL                             R3 0 1
       69 SETTABLEKS                       R3 R2 K15 ["imageRectOffset"]
       71 GETIMPORT                        R3 K24 [Color3.new]
       73 CALL                             R3 0 1
       74 SETTABLEKS                       R3 R2 K16 ["imageColor3"]
       76 LOADNIL                          R3
       77 SETTABLEKS                       R3 R2 K17 ["selectedInstance"]
       79 GETTABLEKS                       R3 R0 K7 ["localization"]
       81 LOADK                            R5 K25 ["Plugin"]
       82 LOADK                            R6 K26 ["Name"]
       83 NAMECALL                         R3 R3 K27 ["getText"]
       85 CALL                             R3 3 1
       86 SETTABLEKS                       R3 R2 K18 ["title"]
       88 LOADB                            R3 0
       89 SETTABLEKS                       R3 R2 K19 ["loading"]
       91 SETTABLEKS                       R2 R0 K28 ["state"]
       93 LOADNIL                          R2
       94 SETTABLEKS                       R2 R0 K29 ["timeOpened"]
       96 NEWCLOSURE                       R2 P0
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R2 R0 K30 ["reportOpen"]
      100 NEWCLOSURE                       R2 P1
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R2 R0 K31 ["reportClose"]
      104 NEWCLOSURE                       R2 P2
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R2 R0 K32 ["onClose"]
      108 NEWCLOSURE                       R2 P3
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          UPVAL U5
      112 SETTABLEKS                       R2 R0 K33 ["onInstanceUnderEditChanged"]
      114 NEWCLOSURE                       R2 P4
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R2 R0 K34 ["onSliceRectChanged"]
      118 NEWCLOSURE                       R2 P5
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R2 R0 K35 ["onLoadingChanged"]
      122 NEWCLOSURE                       R2 P6
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R2 R0 K36 ["onInstancePropertyChanged"]
      126 GETUPVAL                         R2 4
      127 GETTABLEKS                       R2 R2 K37 ["createRef"]
      129 CALL                             R2 0 1
      130 SETTABLEKS                       R2 R0 K38 ["loadingImageRef"]
      132 NEWCLOSURE                       R2 P7
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R2 R0 K39 ["onRequestToLoadImage"]
      136 RETURN                           R0 0

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
       76 DUPTABLE                         R10 K37 [{"Id", "Enabled", "Title", "InitialDockState", "ZIndexBehavior", "Size", "MinSize", "OnClose", "ShouldRestore"}]
       77 LOADK                            R11 K38 ["SliceEditor"]
       78 SETTABLEKS                       R11 R10 K28 ["Id"]
       80 SETTABLEKS                       R4 R10 K29 ["Enabled"]
       82 GETTABLEKS                       R11 R2 K39 ["title"]
       84 SETTABLEKS                       R11 R10 K30 ["Title"]
       86 GETIMPORT                        R11 K42 [Enum.InitialDockState.Float]
       88 SETTABLEKS                       R11 R10 K31 ["InitialDockState"]
       90 GETIMPORT                        R11 K44 [Enum.ZIndexBehavior.Global]
       92 SETTABLEKS                       R11 R10 K32 ["ZIndexBehavior"]
       94 GETUPVAL                         R11 7
       95 GETTABLEKS                       R11 R11 K45 ["WIDGET_SIZE"]
       97 SETTABLEKS                       R11 R10 K33 ["Size"]
       99 GETUPVAL                         R11 7
      100 GETTABLEKS                       R11 R11 K45 ["WIDGET_SIZE"]
      102 SETTABLEKS                       R11 R10 K34 ["MinSize"]
      104 GETTABLEKS                       R11 R0 K46 ["onClose"]
      106 SETTABLEKS                       R11 R10 K35 ["OnClose"]
      108 LOADB                            R11 0
      109 SETTABLEKS                       R11 R10 K36 ["ShouldRestore"]
      111 DUPTABLE                         R11 K47 [{"SliceEditor"}]
      112 MOVE                             R12 R4
      113 JUMPIFNOT                        R12 ; [+54]
      114 GETUPVAL                         R12 4
      115 GETTABLEKS                       R12 R12 K12 ["createElement"]
      117 GETUPVAL                         R13 8
      118 DUPTABLE                         R14 K58 [{"onClose", "pixelDimensions", "selectedObject", "sliceRect", "revertSliceRect", "loading", "imageRectSize", "imageRectOffset", "imageColor3", "resampleMode", "contentIdToLoad", "loadingImageRef"}]
      119 GETTABLEKS                       R15 R0 K46 ["onClose"]
      121 SETTABLEKS                       R15 R14 K46 ["onClose"]
      123 GETTABLEKS                       R15 R2 K48 ["pixelDimensions"]
      125 SETTABLEKS                       R15 R14 K48 ["pixelDimensions"]
      127 GETTABLEKS                       R15 R2 K59 ["selectedInstance"]
      129 SETTABLEKS                       R15 R14 K49 ["selectedObject"]
      131 GETTABLEKS                       R15 R2 K50 ["sliceRect"]
      133 SETTABLEKS                       R15 R14 K50 ["sliceRect"]
      135 GETTABLEKS                       R15 R2 K51 ["revertSliceRect"]
      137 SETTABLEKS                       R15 R14 K51 ["revertSliceRect"]
      139 GETTABLEKS                       R15 R2 K52 ["loading"]
      141 SETTABLEKS                       R15 R14 K52 ["loading"]
      143 GETTABLEKS                       R15 R2 K53 ["imageRectSize"]
      145 SETTABLEKS                       R15 R14 K53 ["imageRectSize"]
      147 GETTABLEKS                       R15 R2 K54 ["imageRectOffset"]
      149 SETTABLEKS                       R15 R14 K54 ["imageRectOffset"]
      151 GETTABLEKS                       R15 R2 K55 ["imageColor3"]
      153 SETTABLEKS                       R15 R14 K55 ["imageColor3"]
      155 GETTABLEKS                       R15 R2 K56 ["resampleMode"]
      157 SETTABLEKS                       R15 R14 K56 ["resampleMode"]
      159 GETTABLEKS                       R15 R2 K57 ["contentIdToLoad"]
      161 SETTABLEKS                       R15 R14 K57 ["contentIdToLoad"]
      163 GETTABLEKS                       R15 R0 K27 ["loadingImageRef"]
      165 SETTABLEKS                       R15 R14 K27 ["loadingImageRef"]
      167 CALL                             R12 2 1
      168 SETTABLEKS                       R12 R11 K38 ["SliceEditor"]
      170 CALL                             R8 3 1
      171 SETTABLEKS                       R8 R7 K10 ["MainWidget"]
      173 CALL                             R5 2 -1
      174 RETURN                           R5 -1

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
