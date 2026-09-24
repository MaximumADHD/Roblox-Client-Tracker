PROTO_0:
        0 LOADK                            R0 K0 ["Dialog_%*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["uri"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R0 R0 K2 ["format"]
        8 CALL                             R0 2 1
        9 RETURN                           R0 1

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
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+52]
        2 GETUPVAL                         R0 2
        3 GETUPVAL                         R2 3
        4 DUPTABLE                         R3 K8 [{[1], ["InitialEnabled"] = True, ["ToolDialog"], ["Modal"], ["Size"], ["DisableTitleBar"], ["TitleBarColor"]}]
        5 GETUPVAL                         R4 3
        6 SETTABLEKS                       R4 R3 K0 ["Id"]
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K9 ["toolDialog"]
       11 SETTABLEKS                       R4 R3 K3 ["ToolDialog"]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K10 ["modal"]
       16 JUMPIFNOTEQKB                    R5 FALSE ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R3 K4 ["Modal"]
       22 GETIMPORT                        R4 K13 [Vector2.max]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K14 ["getSize"]
       27 LOADB                            R6 0
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K16 [Vector2.new]
       31 LOADN                            R7 1
       32 LOADN                            R8 1
       33 CALL                             R6 2 -1
       34 CALL                             R4 -1 1
       35 SETTABLEKS                       R4 R3 K5 ["Size"]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K17 ["onClose"]
       40 JUMPIFEQKNIL                     R5 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 SETTABLEKS                       R4 R3 K6 ["DisableTitleBar"]
       46 GETUPVAL                         R4 5
       47 SETTABLEKS                       R4 R3 K7 ["TitleBarColor"]
       49 NAMECALL                         R0 R0 K18 ["CreateQWidgetPluginGui"]
       51 CALL                             R0 3 1
       52 SETUPVAL                         R0 1
       53 JUMP                             ; [+37]
       54 GETUPVAL                         R0 2
       55 GETUPVAL                         R2 3
       56 DUPTABLE                         R3 K19 [{[1], ["InitialEnabled"] = True, ["Modal"] = True, ["Size"], ["DisableTitleBar"], ["TitleBarColor"]}]
       57 GETUPVAL                         R4 3
       58 SETTABLEKS                       R4 R3 K0 ["Id"]
       60 GETIMPORT                        R4 K13 [Vector2.max]
       62 GETUPVAL                         R5 4
       63 GETTABLEKS                       R5 R5 K14 ["getSize"]
       65 LOADB                            R6 0
       66 CALL                             R5 1 1
       67 GETIMPORT                        R6 K16 [Vector2.new]
       69 LOADN                            R7 1
       70 LOADN                            R8 1
       71 CALL                             R6 2 -1
       72 CALL                             R4 -1 1
       73 SETTABLEKS                       R4 R3 K5 ["Size"]
       75 GETUPVAL                         R5 4
       76 GETTABLEKS                       R5 R5 K17 ["onClose"]
       78 JUMPIFEQKNIL                     R5 ; [+2]
       80 LOADB                            R4 0 +1
       81 LOADB                            R4 1
       82 SETTABLEKS                       R4 R3 K6 ["DisableTitleBar"]
       84 GETUPVAL                         R4 5
       85 SETTABLEKS                       R4 R3 K7 ["TitleBarColor"]
       87 NAMECALL                         R0 R0 K18 ["CreateQWidgetPluginGui"]
       89 CALL                             R0 3 1
       90 SETUPVAL                         R0 1
       91 GETUPVAL                         R0 1
       92 LOADK                            R2 K20 ["PluginGui"]
       93 NAMECALL                         R0 R0 K21 ["IsA"]
       95 CALL                             R0 2 1
       96 JUMPIFNOT                        R0 ; [+11]
       97 GETUPVAL                         R0 4
       98 GETTABLEKS                       R0 R0 K17 ["onClose"]
      100 JUMPIFNOT                        R0 ; [+7]
      101 GETUPVAL                         R0 1
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K17 ["onClose"]
      105 NAMECALL                         R0 R0 K22 ["BindToClose"]
      107 CALL                             R0 2 0
      108 GETUPVAL                         R0 1
      109 GETIMPORT                        R1 K26 [Enum.ZIndexBehavior.Sibling]
      111 SETTABLEKS                       R1 R0 K24 ["ZIndexBehavior"]
      113 GETUPVAL                         R0 6
      114 GETUPVAL                         R1 1
      115 CALL                             R0 1 0
      116 RETURN                           R0 0

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
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CALL                             R1 1 1
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          REF R0
       15 CAPTURE                          UPVAL U5
       16 CLOSEUPVALS                      R0
       17 RETURN                           R2 1

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
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R8
       70 NEWTABLE                         R11 0 5
       72 MOVE                             R12 R1
       73 MOVE                             R13 R4
       74 GETTABLEKS                       R14 R0 K10 ["getSize"]
       76 MOVE                             R15 R8
       77 MOVE                             R16 R3
       78 SETLIST                          R11 R12 5 [1]
       80 CALL                             R9 2 0
       81 GETUPVAL                         R9 2
       82 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       84 NEWCLOSURE                       R10 P4
       85 CAPTURE                          VAL R7
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R6
       90 NEWTABLE                         R11 0 4
       92 MOVE                             R12 R7
       93 GETTABLEKS                       R13 R0 K10 ["getSize"]
       95 MOVE                             R14 R5
       96 MOVE                             R15 R6
       97 SETLIST                          R11 R12 4 [1]
       99 CALL                             R9 2 0
      100 JUMPIF                           R7 ; [+2]
      101 LOADNIL                          R9
      102 RETURN                           R9 1
      103 GETUPVAL                         R9 7
      104 GETTABLEKS                       R9 R9 K11 ["createPortal"]
      106 GETUPVAL                         R10 8
      107 GETUPVAL                         R11 9
      108 DUPTABLE                         R12 K13 [{"overlayGui"}]
      109 SETTABLEKS                       R7 R12 K12 ["overlayGui"]
      111 GETTABLEKS                       R13 R0 K14 ["children"]
      113 CALL                             R10 3 1
      114 MOVE                             R11 R7
      115 CALL                             R9 2 -1
      116 RETURN                           R9 -1

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
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R11 R0 K17 ["SharedFlags"]
       59 GETTABLEKS                       R11 R11 K18 ["getFFlagDevFrameworkUsesFoundationDialog"]
       61 CALL                             R10 1 1
       62 CALL                             R10 0 1
       63 GETTABLEKS                       R11 R3 K19 ["ContextServices"]
       65 GETTABLEKS                       R11 R11 K20 ["Plugin"]
       67 GETTABLEKS                       R12 R4 K21 ["createElement"]
       69 GETTABLEKS                       R13 R2 K22 ["Hooks"]
       71 GETTABLEKS                       R13 R13 K23 ["useTokens"]
       73 DUPCLOSURE                       R14 K24 [PROTO_9]
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R7
       84 GETTABLEKS                       R15 R4 K25 ["memo"]
       86 MOVE                             R16 R14
       87 CALL                             R15 1 -1
       88 RETURN                           R15 -1
