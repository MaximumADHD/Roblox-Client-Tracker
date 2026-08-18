PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{[1] = "stroke-position-inner stroke-default radius-medium bg-surface-200", ["Size"], ["onAbsoluteSizeChanged"]}]
        3 GETIMPORT                        R4 K7 [UDim2.fromOffset]
        5 LOADN                            R5 300
        6 LOADN                            R6 350
        7 CALL                             R4 2 1
        8 SETTABLEKS                       R4 R3 K2 ["Size"]
       10 GETTABLEKS                       R4 R0 K3 ["onAbsoluteSizeChanged"]
       12 SETTABLEKS                       R4 R3 K3 ["onAbsoluteSizeChanged"]
       14 GETTABLEKS                       R4 R0 K8 ["children"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_1:
        0 LOADK                            R1 K0 ["Queue_%*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["uri"]
        5 CALL                             R3 1 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K5 [{["Category"] = "Panels", ["ItemId"]}]
        8 GETUPVAL                         R3 2
        9 SETTABLEKS                       R3 R2 K4 ["ItemId"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Panels"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K2 [Vector2.zero]
        4 NAMECALL                         R0 R0 K3 ["SetSizeAsync"]
        6 CALL                             R0 3 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R3 K8 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       10 GETUPVAL                         R4 2
       11 SETTABLEKS                       R4 R3 K4 ["TargetWidgetUri"]
       13 GETIMPORT                        R4 K10 [Vector2.new]
       15 LOADN                            R5 1
       16 LOADN                            R6 1
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K5 ["TargetAnchorPoint"]
       20 GETIMPORT                        R4 K10 [Vector2.new]
       22 LOADN                            R5 1
       23 LOADN                            R6 1
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R3 K6 ["SubjectAnchorPoint"]
       27 GETIMPORT                        R4 K10 [Vector2.new]
       29 LOADN                            R5 -8
       30 LOADN                            R6 -40
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K7 ["Offset"]
       34 NAMECALL                         R0 R0 K11 ["SetAttachmentAsync"]
       36 CALL                             R0 3 0
       37 GETUPVAL                         R0 3
       38 LOADB                            R1 1
       39 SETTABLEKS                       R1 R0 K12 ["Enabled"]
       41 GETUPVAL                         R0 4
       42 GETUPVAL                         R1 3
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K9 [{[1], ["InitialEnabled"] = False, ["Modal"] = False, ["Popup"], ["Resizable"] = True, ["Transparent"] = True, ["Title"]}]
        3 GETUPVAL                         R4 1
        4 SETTABLEKS                       R4 R3 K0 ["Id"]
        6 DUPTABLE                         R4 K11 [{["PassesThroughMouseEvents"] = True}]
        7 SETTABLEKS                       R4 R3 K4 ["Popup"]
        9 GETUPVAL                         R4 1
       10 SETTABLEKS                       R4 R3 K8 ["Title"]
       12 NAMECALL                         R0 R0 K12 ["CreateQWidgetPluginGui"]
       14 CALL                             R0 3 1
       15 GETIMPORT                        R1 K16 [Enum.ZIndexBehavior.Sibling]
       17 SETTABLEKS                       R1 R0 K14 ["ZIndexBehavior"]
       19 GETIMPORT                        R1 K19 [task.spawn]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 CALL                             R1 1 0
       28 LOADK                            R3 K20 ["PluginGui"]
       29 NAMECALL                         R1 R0 K21 ["IsA"]
       31 CALL                             R1 2 1
       32 JUMPIFNOT                        R1 ; [+5]
       33 NEWCLOSURE                       R3 P1
       34 CAPTURE                          UPVAL U6
       35 NAMECALL                         R1 R0 K22 ["BindToClose"]
       37 CALL                             R1 2 0
       38 NEWCLOSURE                       R1 P2
       39 CAPTURE                          VAL R0
       40 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K2 [Vector2.new]
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 CALL                             R3 2 -1
        7 NAMECALL                         R0 R0 K3 ["SetSizeAsync"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R2 R2 K1 ["X"]
        4 FASTCALL1                        MATH_CEIL R2 ; [+2]
        5 GETIMPORT                        R1 K4 [math.ceil]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
       10 GETTABLEKS                       R3 R3 K5 ["Y"]
       12 FASTCALL1                        MATH_CEIL R3 ; [+2]
       13 GETIMPORT                        R2 K4 [math.ceil]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K8 [task.spawn]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K2 ["uri"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 1
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R5 0 2
       25 MOVE                             R6 R1
       26 MOVE                             R7 R2
       27 SETLIST                          R5 R6 2 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 1
       31 NEWCLOSURE                       R5 P2
       32 CAPTURE                          VAL R1
       33 NEWTABLE                         R6 0 1
       35 MOVE                             R7 R1
       36 SETLIST                          R6 R7 1 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 4
       40 LOADNIL                          R6
       41 CALL                             R5 1 2
       42 GETUPVAL                         R7 5
       43 NEWCLOSURE                       R8 P3
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R9 0 5
       53 MOVE                             R10 R2
       54 MOVE                             R11 R3
       55 MOVE                             R12 R4
       56 MOVE                             R13 R1
       57 GETTABLEKS                       R14 R0 K3 ["onClose"]
       59 SETLIST                          R9 R10 5 [1]
       61 CALL                             R7 2 0
       62 GETUPVAL                         R7 7
       63 NEWCLOSURE                       R8 P4
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R9 0 2
       68 MOVE                             R10 R4
       69 MOVE                             R11 R3
       70 SETLIST                          R9 R10 2 [1]
       72 CALL                             R7 2 1
       73 JUMPIF                           R5 ; [+2]
       74 LOADNIL                          R8
       75 RETURN                           R8 1
       76 GETUPVAL                         R8 8
       77 GETTABLEKS                       R8 R8 K4 ["createPortal"]
       79 GETUPVAL                         R9 9
       80 GETUPVAL                         R10 10
       81 DUPTABLE                         R11 K6 [{"overlayGui"}]
       82 SETTABLEKS                       R5 R11 K5 ["overlayGui"]
       84 DUPTABLE                         R12 K8 [{"Container"}]
       85 GETUPVAL                         R13 9
       86 GETUPVAL                         R14 11
       87 DUPTABLE                         R15 K10 [{"onAbsoluteSizeChanged"}]
       88 SETTABLEKS                       R7 R15 K9 ["onAbsoluteSizeChanged"]
       90 DUPTABLE                         R16 K12 [{"Queue"}]
       91 GETUPVAL                         R17 9
       92 GETUPVAL                         R18 12
       93 DUPTABLE                         R19 K18 [{"title", "items", "onClearCompleted", "hasCompletedTasks", "onClose", "onViewItem"}]
       94 GETTABLEKS                       R20 R0 K13 ["title"]
       96 SETTABLEKS                       R20 R19 K13 ["title"]
       98 GETTABLEKS                       R20 R0 K14 ["items"]
      100 SETTABLEKS                       R20 R19 K14 ["items"]
      102 GETTABLEKS                       R20 R0 K15 ["onClearCompleted"]
      104 SETTABLEKS                       R20 R19 K15 ["onClearCompleted"]
      106 GETTABLEKS                       R20 R0 K16 ["hasCompletedTasks"]
      108 SETTABLEKS                       R20 R19 K16 ["hasCompletedTasks"]
      110 GETTABLEKS                       R20 R0 K3 ["onClose"]
      112 SETTABLEKS                       R20 R19 K3 ["onClose"]
      114 GETTABLEKS                       R20 R0 K17 ["onViewItem"]
      116 SETTABLEKS                       R20 R19 K17 ["onViewItem"]
      118 CALL                             R17 2 1
      119 SETTABLEKS                       R17 R16 K11 ["Queue"]
      121 CALL                             R13 3 1
      122 SETTABLEKS                       R13 R12 K7 ["Container"]
      124 CALL                             R9 3 1
      125 MOVE                             R10 R5
      126 CALL                             R8 2 -1
      127 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Queue"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["ReactRoblox"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["StudioFoundation"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R6 K10 ["Components"]
       53 GETTABLEKS                       R7 R7 K15 ["FoundationProviderAdapter"]
       55 GETTABLEKS                       R8 R2 K16 ["ContextServices"]
       57 GETTABLEKS                       R8 R8 K17 ["Plugin"]
       59 GETTABLEKS                       R9 R6 K18 ["Util"]
       61 GETTABLEKS                       R9 R9 K19 ["StudioUri"]
       63 GETTABLEKS                       R10 R1 K20 ["View"]
       65 GETTABLEKS                       R11 R6 K18 ["Util"]
       67 GETTABLEKS                       R11 R11 K21 ["uriToTestId"]
       69 GETTABLEKS                       R12 R4 K22 ["createElement"]
       71 GETTABLEKS                       R13 R4 K23 ["useCallback"]
       73 GETTABLEKS                       R14 R4 K24 ["useEffect"]
       75 GETTABLEKS                       R15 R4 K25 ["useMemo"]
       77 GETTABLEKS                       R16 R4 K26 ["useState"]
       79 DUPTABLE                         R17 K33 [{["PluginId"] = "MainWindow", ["Category"] = "Widgets", ["ItemId"] = "Window"}]
       80 DUPCLOSURE                       R18 K34 [PROTO_0]
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R10
       83 DUPCLOSURE                       R19 K35 [PROTO_10]
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R15
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R17
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R18
       96 CAPTURE                          VAL R3
       97 GETTABLEKS                       R20 R4 K36 ["memo"]
       99 MOVE                             R21 R19
      100 CALL                             R20 1 -1
      101 RETURN                           R20 -1
