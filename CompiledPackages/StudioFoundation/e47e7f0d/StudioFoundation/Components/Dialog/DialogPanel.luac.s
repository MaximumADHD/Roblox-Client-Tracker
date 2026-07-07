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
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K14 ["onClose"]
       24 JUMPIFEQKNIL                     R5 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K5 ["DisableTitleBar"]
       30 GETUPVAL                         R4 4
       31 SETTABLEKS                       R4 R3 K6 ["TitleBarColor"]
       33 NAMECALL                         R0 R0 K15 ["CreateQWidgetPluginGui"]
       35 CALL                             R0 3 1
       36 SETUPVAL                         R0 0
       37 GETUPVAL                         R0 0
       38 LOADK                            R2 K16 ["PluginGui"]
       39 NAMECALL                         R0 R0 K17 ["IsA"]
       41 CALL                             R0 2 1
       42 JUMPIFNOT                        R0 ; [+11]
       43 GETUPVAL                         R0 3
       44 GETTABLEKS                       R0 R0 K14 ["onClose"]
       46 JUMPIFNOT                        R0 ; [+7]
       47 GETUPVAL                         R0 0
       48 GETUPVAL                         R2 3
       49 GETTABLEKS                       R2 R2 K14 ["onClose"]
       51 NAMECALL                         R0 R0 K18 ["BindToClose"]
       53 CALL                             R0 2 0
       54 GETUPVAL                         R0 0
       55 GETIMPORT                        R1 K22 [Enum.ZIndexBehavior.Sibling]
       57 SETTABLEKS                       R1 R0 K20 ["ZIndexBehavior"]
       59 GETUPVAL                         R0 5
       60 GETUPVAL                         R1 0
       61 CALL                             R0 1 0
       62 RETURN                           R0 0

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
       10 CALL                             R1 1 1
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          REF R0
       14 CAPTURE                          UPVAL U4
       15 CLOSEUPVALS                      R0
       16 RETURN                           R2 1

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
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R3 R2 K2 ["Color"]
       11 GETTABLEKS                       R3 R3 K3 ["Surface"]
       13 GETTABLEKS                       R3 R3 K4 ["Surface_200"]
       15 GETTABLEKS                       R3 R3 K5 ["Color3"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R6 0 1
       25 GETTABLEKS                       R7 R0 K7 ["uri"]
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R1
       35 NEWTABLE                         R7 0 1
       37 MOVE                             R8 R1
       38 SETLIST                          R7 R8 1 [1]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       44 NEWCLOSURE                       R7 P2
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R8 0 2
       50 MOVE                             R9 R1
       51 MOVE                             R10 R4
       52 SETLIST                          R8 R9 2 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K8 ["useState"]
       58 LOADNIL                          R8
       59 CALL                             R7 1 2
       60 GETUPVAL                         R9 2
       61 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       63 NEWCLOSURE                       R10 P3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R8
       69 NEWTABLE                         R11 0 5
       71 MOVE                             R12 R1
       72 MOVE                             R13 R4
       73 GETTABLEKS                       R14 R0 K10 ["getSize"]
       75 MOVE                             R15 R8
       76 MOVE                             R16 R3
       77 SETLIST                          R11 R12 5 [1]
       79 CALL                             R9 2 0
       80 GETUPVAL                         R9 2
       81 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       83 NEWCLOSURE                       R10 P4
       84 CAPTURE                          VAL R7
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R6
       89 NEWTABLE                         R11 0 4
       91 MOVE                             R12 R7
       92 GETTABLEKS                       R13 R0 K10 ["getSize"]
       94 MOVE                             R14 R5
       95 MOVE                             R15 R6
       96 SETLIST                          R11 R12 4 [1]
       98 CALL                             R9 2 0
       99 JUMPIF                           R7 ; [+2]
      100 LOADNIL                          R9
      101 RETURN                           R9 1
      102 GETUPVAL                         R9 6
      103 GETTABLEKS                       R9 R9 K11 ["createPortal"]
      105 GETUPVAL                         R10 7
      106 GETUPVAL                         R11 8
      107 DUPTABLE                         R12 K13 [{"overlayGui"}]
      108 SETTABLEKS                       R7 R12 K12 ["overlayGui"]
      110 GETTABLEKS                       R13 R0 K14 ["children"]
      112 CALL                             R10 3 1
      113 MOVE                             R11 R7
      114 CALL                             R9 2 -1
      115 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactRoblox"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["Signals"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R0 K12 ["Components"]
       38 GETTABLEKS                       R8 R8 K13 ["FoundationProviderAdapter"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Util"]
       45 GETTABLEKS                       R9 R9 K15 ["StudioUri"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R10 R0 K14 ["Util"]
       52 GETTABLEKS                       R10 R10 K16 ["uriToTestId"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R3 K17 ["ContextServices"]
       57 GETTABLEKS                       R10 R10 K18 ["Plugin"]
       59 GETTABLEKS                       R11 R4 K19 ["createElement"]
       61 GETTABLEKS                       R12 R2 K20 ["Hooks"]
       63 GETTABLEKS                       R12 R12 K21 ["useTokens"]
       65 DUPCLOSURE                       R13 K22 [PROTO_9]
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R7
       75 GETTABLEKS                       R14 R4 K23 ["memo"]
       77 MOVE                             R15 R13
       78 CALL                             R14 1 -1
       79 RETURN                           R14 -1
