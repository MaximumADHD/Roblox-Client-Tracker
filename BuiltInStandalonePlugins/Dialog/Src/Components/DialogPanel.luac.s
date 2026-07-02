PROTO_0:
        0 LOADK                            R1 K0 ["Dialog_%*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["uri"]
        5 CALL                             R3 1 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Panels"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

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
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 DUPTABLE                         R3 K7 [{[1], ["InitialEnabled"] = True, ["Modal"] = True, ["Size"], ["DisableTitleBar"], ["TitleBarColor"]}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["Id"]
        6 GETIMPORT                        R4 K10 [Vector2.max]
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R5 R5 K11 ["getSize"]
       11 LOADB                            R6 0
       12 CALL                             R5 1 1
       13 GETIMPORT                        R6 K13 [Vector2.new]
       15 LOADN                            R7 1
       16 LOADN                            R8 1
       17 CALL                             R6 2 -1
       18 CALL                             R4 -1 1
       19 SETTABLEKS                       R4 R3 K4 ["Size"]
       21 GETUPVAL                         R5 4
       22 JUMPIFNOT                        R5 ; [+8]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K14 ["onClose"]
       26 JUMPIFEQKNIL                     R5 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 JUMP                             ; [+1]
       31 LOADB                            R4 1
       32 SETTABLEKS                       R4 R3 K5 ["DisableTitleBar"]
       34 GETUPVAL                         R5 5
       35 JUMPIFNOT                        R5 ; [+2]
       36 GETUPVAL                         R4 6
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 SETTABLEKS                       R4 R3 K6 ["TitleBarColor"]
       41 NAMECALL                         R0 R0 K15 ["CreateQWidgetPluginGui"]
       43 CALL                             R0 3 1
       44 SETUPVAL                         R0 0
       45 GETUPVAL                         R0 4
       46 JUMPIFNOT                        R0 ; [+17]
       47 GETUPVAL                         R0 0
       48 LOADK                            R2 K16 ["PluginGui"]
       49 NAMECALL                         R0 R0 K17 ["IsA"]
       51 CALL                             R0 2 1
       52 JUMPIFNOT                        R0 ; [+11]
       53 GETUPVAL                         R0 3
       54 GETTABLEKS                       R0 R0 K14 ["onClose"]
       56 JUMPIFNOT                        R0 ; [+7]
       57 GETUPVAL                         R0 0
       58 GETUPVAL                         R2 3
       59 GETTABLEKS                       R2 R2 K14 ["onClose"]
       61 NAMECALL                         R0 R0 K18 ["BindToClose"]
       63 CALL                             R0 2 0
       64 GETUPVAL                         R0 7
       65 JUMPIFNOT                        R0 ; [+5]
       66 GETUPVAL                         R0 0
       67 GETIMPORT                        R1 K22 [Enum.ZIndexBehavior.Sibling]
       69 SETTABLEKS                       R1 R0 K20 ["ZIndexBehavior"]
       71 GETUPVAL                         R0 8
       72 GETUPVAL                         R1 0
       73 CALL                             R0 1 0
       74 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K3 ["Destroy"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 2
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K2 [task.spawn]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CALL                             R1 1 1
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R1
       16 CAPTURE                          REF R0
       17 CAPTURE                          UPVAL U7
       18 CLOSEUPVALS                      R0
       19 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetSizeAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [Vector2.max]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["getSize"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETIMPORT                        R3 K5 [Vector2.new]
        9 LOADN                            R4 1
       10 LOADN                            R5 1
       11 CALL                             R3 2 -1
       12 CALL                             R1 -1 1
       13 GETIMPORT                        R2 K8 [task.spawn]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 1
        9 JUMPIFNOT                        R3 ; [+10]
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R4 R3 K2 ["Color"]
       14 GETTABLEKS                       R4 R4 K3 ["Surface"]
       16 GETTABLEKS                       R4 R4 K4 ["Surface_200"]
       18 GETTABLEKS                       R2 R4 K5 ["Color3"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K6 ["useMemo"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R0 K7 ["uri"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R6 0 1
       40 MOVE                             R7 R1
       41 SETLIST                          R6 R7 1 [1]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       47 NEWCLOSURE                       R6 P2
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 NEWTABLE                         R7 0 2
       53 MOVE                             R8 R1
       54 MOVE                             R9 R3
       55 SETLIST                          R7 R8 2 [1]
       57 CALL                             R5 2 1
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K8 ["useState"]
       61 LOADNIL                          R7
       62 CALL                             R6 1 2
       63 GETUPVAL                         R8 3
       64 GETTABLEKS                       R8 R8 K9 ["useEffect"]
       66 NEWCLOSURE                       R9 P3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          REF R2
       73 CAPTURE                          UPVAL U7
       74 CAPTURE                          VAL R7
       75 NEWTABLE                         R10 0 5
       77 MOVE                             R11 R1
       78 MOVE                             R12 R3
       79 GETTABLEKS                       R13 R0 K10 ["getSize"]
       81 MOVE                             R14 R7
       82 GETUPVAL                         R16 1
       83 JUMPIFNOT                        R16 ; [+2]
       84 MOVE                             R15 R2
       85 JUMP                             ; [+1]
       86 LOADNIL                          R15
       87 SETLIST                          R10 R11 5 [1]
       89 CALL                             R8 2 0
       90 GETUPVAL                         R8 3
       91 GETTABLEKS                       R8 R8 K9 ["useEffect"]
       93 NEWCLOSURE                       R9 P4
       94 CAPTURE                          VAL R6
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R5
       99 NEWTABLE                         R10 0 4
      101 MOVE                             R11 R6
      102 GETTABLEKS                       R12 R0 K10 ["getSize"]
      104 MOVE                             R13 R4
      105 MOVE                             R14 R5
      106 SETLIST                          R10 R11 4 [1]
      108 CALL                             R8 2 0
      109 JUMPIF                           R6 ; [+3]
      110 LOADNIL                          R8
      111 CLOSEUPVALS                      R2
      112 RETURN                           R8 1
      113 GETUPVAL                         R8 9
      114 GETTABLEKS                       R8 R8 K11 ["createPortal"]
      116 GETUPVAL                         R9 10
      117 GETUPVAL                         R10 11
      118 DUPTABLE                         R11 K13 [{"overlayGui"}]
      119 SETTABLEKS                       R6 R11 K12 ["overlayGui"]
      121 GETTABLEKS                       R12 R0 K14 ["children"]
      123 CALL                             R9 3 1
      124 MOVE                             R10 R6
      125 CALL                             R8 2 -1
      126 CLOSEUPVALS                      R2
      127 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactRoblox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Signals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Packages"]
       46 GETTABLEKS                       R7 R7 K12 ["StudioFoundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Src"]
       53 GETTABLEKS                       R8 R8 K14 ["Flags"]
       55 GETTABLEKS                       R8 R8 K15 ["getFFlagDialogPanelSiblingZIndex"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K13 ["Src"]
       62 GETTABLEKS                       R9 R9 K14 ["Flags"]
       64 GETTABLEKS                       R9 R9 K16 ["getFFlagEnableStudioPluginTitleBarColor"]
       66 CALL                             R8 1 1
       67 MOVE                             R9 R7
       68 CALL                             R9 0 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K13 ["Src"]
       73 GETTABLEKS                       R11 R11 K14 ["Flags"]
       75 GETTABLEKS                       R11 R11 K17 ["getFFlagDialogManagerAddEscapeTitleButton"]
       77 CALL                             R10 1 1
       78 CALL                             R10 0 1
       79 MOVE                             R11 R8
       80 CALL                             R11 0 1
       81 GETTABLEKS                       R12 R6 K18 ["Components"]
       83 GETTABLEKS                       R12 R12 K19 ["FoundationProviderAdapter"]
       85 GETTABLEKS                       R13 R2 K20 ["ContextServices"]
       87 GETTABLEKS                       R13 R13 K21 ["Plugin"]
       89 GETTABLEKS                       R14 R6 K22 ["Util"]
       91 GETTABLEKS                       R14 R14 K23 ["StudioUri"]
       93 GETTABLEKS                       R15 R3 K24 ["createElement"]
       95 GETTABLEKS                       R16 R1 K25 ["Hooks"]
       97 GETTABLEKS                       R16 R16 K26 ["useTokens"]
       99 GETTABLEKS                       R17 R6 K22 ["Util"]
      101 GETTABLEKS                       R17 R17 K27 ["uriToTestId"]
      103 DUPCLOSURE                       R18 K28 [PROTO_9]
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R12
      116 GETTABLEKS                       R19 R3 K29 ["memo"]
      118 MOVE                             R20 R18
      119 CALL                             R19 1 -1
      120 RETURN                           R19 -1
