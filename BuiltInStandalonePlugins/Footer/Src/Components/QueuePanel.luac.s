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
        0 LOADK                            R0 K0 ["Queue_%*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["uri"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R0 R0 K2 ["format"]
        8 CALL                             R0 2 1
        9 RETURN                           R0 1

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
       81 DUPTABLE                         R11 K7 [{"overlayGui", "plugin"}]
       82 SETTABLEKS                       R5 R11 K5 ["overlayGui"]
       84 GETUPVAL                         R13 11
       85 GETTABLEKS                       R13 R13 K8 ["getFFlagMCPClientCountAsASetting"]
       87 CALL                             R13 0 1
       88 JUMPIFNOT                        R13 ; [+2]
       89 MOVE                             R12 R1
       90 JUMP                             ; [+1]
       91 LOADNIL                          R12
       92 SETTABLEKS                       R12 R11 K6 ["plugin"]
       94 DUPTABLE                         R12 K10 [{"Container"}]
       95 GETUPVAL                         R13 9
       96 GETUPVAL                         R14 12
       97 DUPTABLE                         R15 K12 [{"onAbsoluteSizeChanged"}]
       98 SETTABLEKS                       R7 R15 K11 ["onAbsoluteSizeChanged"]
      100 DUPTABLE                         R16 K14 [{"Queue"}]
      101 GETUPVAL                         R17 9
      102 GETUPVAL                         R18 13
      103 DUPTABLE                         R19 K20 [{"title", "items", "onClearCompleted", "hasCompletedTasks", "onClose", "onViewItem"}]
      104 GETTABLEKS                       R20 R0 K15 ["title"]
      106 SETTABLEKS                       R20 R19 K15 ["title"]
      108 GETTABLEKS                       R20 R0 K16 ["items"]
      110 SETTABLEKS                       R20 R19 K16 ["items"]
      112 GETTABLEKS                       R20 R0 K17 ["onClearCompleted"]
      114 SETTABLEKS                       R20 R19 K17 ["onClearCompleted"]
      116 GETTABLEKS                       R20 R0 K18 ["hasCompletedTasks"]
      118 SETTABLEKS                       R20 R19 K18 ["hasCompletedTasks"]
      120 GETTABLEKS                       R20 R0 K3 ["onClose"]
      122 SETTABLEKS                       R20 R19 K3 ["onClose"]
      124 GETTABLEKS                       R20 R0 K19 ["onViewItem"]
      126 SETTABLEKS                       R20 R19 K19 ["onViewItem"]
      128 CALL                             R17 2 1
      129 SETTABLEKS                       R17 R16 K13 ["Queue"]
      131 CALL                             R13 3 1
      132 SETTABLEKS                       R13 R12 K9 ["Container"]
      134 CALL                             R9 3 1
      135 MOVE                             R10 R5
      136 CALL                             R8 2 -1
      137 RETURN                           R8 -1

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
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Bin"]
       55 GETTABLEKS                       R8 R8 K16 ["Common"]
       57 GETTABLEKS                       R8 R8 K17 ["defineLuaFlags"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R6 K10 ["Components"]
       62 GETTABLEKS                       R8 R8 K18 ["FoundationProviderAdapter"]
       64 GETTABLEKS                       R9 R2 K19 ["ContextServices"]
       66 GETTABLEKS                       R9 R9 K20 ["Plugin"]
       68 GETTABLEKS                       R10 R6 K21 ["Util"]
       70 GETTABLEKS                       R10 R10 K22 ["StudioUri"]
       72 GETTABLEKS                       R11 R1 K23 ["View"]
       74 GETTABLEKS                       R12 R6 K21 ["Util"]
       76 GETTABLEKS                       R12 R12 K24 ["uriToTestId"]
       78 GETTABLEKS                       R13 R4 K25 ["createElement"]
       80 GETTABLEKS                       R14 R4 K26 ["useCallback"]
       82 GETTABLEKS                       R15 R4 K27 ["useEffect"]
       84 GETTABLEKS                       R16 R4 K28 ["useMemo"]
       86 GETTABLEKS                       R17 R4 K29 ["useState"]
       88 DUPTABLE                         R18 K36 [{["PluginId"] = "MainWindow", ["Category"] = "Widgets", ["ItemId"] = "Window"}]
       89 DUPCLOSURE                       R19 K37 [PROTO_0]
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R11
       92 DUPCLOSURE                       R20 K38 [PROTO_10]
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R16
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R17
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R18
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R19
      106 CAPTURE                          VAL R3
      107 GETTABLEKS                       R21 R4 K39 ["memo"]
      109 MOVE                             R22 R20
      110 CALL                             R21 1 -1
      111 RETURN                           R21 -1
