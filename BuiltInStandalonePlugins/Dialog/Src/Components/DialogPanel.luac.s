PROTO_0:
        0 LOADK                            R1 K0 ["Dialog_%*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K1 ["uri"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K4 [{"Category", "ItemId"}]
        8 LOADK                            R3 K5 ["Panels"]
        9 SETTABLEKS                       R3 R2 K2 ["Category"]
       11 GETUPVAL                         R3 2
       12 SETTABLEKS                       R3 R2 K3 ["ItemId"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 DUPTABLE                         R3 K6 [{"Id", "InitialEnabled", "Modal", "Size", "DisableTitleBar", "TitleBarColor"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["Id"]
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R3 K1 ["InitialEnabled"]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K2 ["Modal"]
       12 GETIMPORT                        R4 K9 [Vector2.max]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K10 ["getSize"]
       17 LOADB                            R6 0
       18 CALL                             R5 1 1
       19 GETIMPORT                        R6 K12 [Vector2.new]
       21 LOADN                            R7 1
       22 LOADN                            R8 1
       23 CALL                             R6 2 -1
       24 CALL                             R4 -1 1
       25 SETTABLEKS                       R4 R3 K3 ["Size"]
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K4 ["DisableTitleBar"]
       30 GETUPVAL                         R5 4
       31 JUMPIFNOT                        R5 ; [+2]
       32 GETUPVAL                         R4 5
       33 JUMP                             ; [+1]
       34 LOADNIL                          R4
       35 SETTABLEKS                       R4 R3 K5 ["TitleBarColor"]
       37 NAMECALL                         R0 R0 K13 ["CreateQWidgetPluginGui"]
       39 CALL                             R0 3 1
       40 SETUPVAL                         R0 0
       41 GETUPVAL                         R0 6
       42 GETUPVAL                         R1 0
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K3 ["getSize"]
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
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["createEffect"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 1
        9 JUMPIFNOT                        R3 ; [+10]
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R6 R3 K2 ["Color"]
       14 GETTABLEKS                       R5 R6 K3 ["Surface"]
       16 GETTABLEKS                       R4 R5 K4 ["Surface_200"]
       18 GETTABLEKS                       R2 R4 K5 ["Color3"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R3 R4 K6 ["useMemo"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R0 K7 ["uri"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R4 R5 K6 ["useMemo"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R6 0 1
       40 MOVE                             R7 R1
       41 SETLIST                          R6 R7 1 [1]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R5 R6 K6 ["useMemo"]
       47 NEWCLOSURE                       R6 P2
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 NEWTABLE                         R7 0 2
       53 MOVE                             R8 R1
       54 MOVE                             R9 R3
       55 SETLIST                          R7 R8 2 [1]
       57 CALL                             R5 2 1
       58 GETUPVAL                         R7 3
       59 GETTABLEKS                       R6 R7 K8 ["useState"]
       61 LOADNIL                          R7
       62 CALL                             R6 1 2
       63 GETUPVAL                         R9 3
       64 GETTABLEKS                       R8 R9 K9 ["useEffect"]
       66 NEWCLOSURE                       R9 P3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          REF R2
       72 CAPTURE                          VAL R7
       73 NEWTABLE                         R10 0 5
       75 MOVE                             R11 R1
       76 MOVE                             R12 R3
       77 GETTABLEKS                       R13 R0 K10 ["getSize"]
       79 MOVE                             R14 R7
       80 GETUPVAL                         R16 1
       81 JUMPIFNOT                        R16 ; [+2]
       82 MOVE                             R15 R2
       83 JUMP                             ; [+1]
       84 LOADNIL                          R15
       85 SETLIST                          R10 R11 5 [1]
       87 CALL                             R8 2 0
       88 GETUPVAL                         R9 3
       89 GETTABLEKS                       R8 R9 K9 ["useEffect"]
       91 NEWCLOSURE                       R9 P4
       92 CAPTURE                          VAL R6
       93 CAPTURE                          UPVAL U6
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R5
       97 NEWTABLE                         R10 0 4
       99 MOVE                             R11 R6
      100 GETTABLEKS                       R12 R0 K10 ["getSize"]
      102 MOVE                             R13 R4
      103 MOVE                             R14 R5
      104 SETLIST                          R10 R11 4 [1]
      106 CALL                             R8 2 0
      107 JUMPIF                           R6 ; [+3]
      108 LOADNIL                          R8
      109 CLOSEUPVALS                      R2
      110 RETURN                           R8 1
      111 GETUPVAL                         R9 7
      112 GETTABLEKS                       R8 R9 K11 ["createPortal"]
      114 GETUPVAL                         R9 8
      115 GETUPVAL                         R10 9
      116 DUPTABLE                         R11 K13 [{"overlayGui"}]
      117 SETTABLEKS                       R6 R11 K12 ["overlayGui"]
      119 GETTABLEKS                       R12 R0 K14 ["children"]
      121 CALL                             R9 3 1
      122 MOVE                             R10 R6
      123 CALL                             R8 2 -1
      124 CLOSEUPVALS                      R2
      125 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["ReactRoblox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["Signals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Packages"]
       46 GETTABLEKS                       R7 R8 K12 ["StudioFoundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Src"]
       53 GETTABLEKS                       R9 R10 K14 ["Flags"]
       55 GETTABLEKS                       R8 R9 K15 ["getFFlagEnableStudioPluginTitleBarColor"]
       57 CALL                             R7 1 1
       58 MOVE                             R8 R7
       59 CALL                             R8 0 1
       60 GETTABLEKS                       R10 R6 K16 ["Components"]
       62 GETTABLEKS                       R9 R10 K17 ["FoundationProviderAdapter"]
       64 GETTABLEKS                       R11 R2 K18 ["ContextServices"]
       66 GETTABLEKS                       R10 R11 K19 ["Plugin"]
       68 GETTABLEKS                       R12 R6 K20 ["Util"]
       70 GETTABLEKS                       R11 R12 K21 ["StudioUri"]
       72 GETTABLEKS                       R12 R3 K22 ["createElement"]
       74 GETTABLEKS                       R14 R1 K23 ["Hooks"]
       76 GETTABLEKS                       R13 R14 K24 ["useTokens"]
       78 GETTABLEKS                       R15 R6 K20 ["Util"]
       80 GETTABLEKS                       R14 R15 K25 ["uriToTestId"]
       82 DUPCLOSURE                       R15 K26 [PROTO_9]
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R9
       93 GETTABLEKS                       R16 R3 K27 ["memo"]
       95 MOVE                             R17 R15
       96 CALL                             R16 1 -1
       97 RETURN                           R16 -1
