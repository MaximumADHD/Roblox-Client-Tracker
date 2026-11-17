PROTO_0:
        0 LOADK                            R0 K0 ["Dialog_%*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["uri"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R0 R0 K2 ["format"]
        8 CALL                             R0 2 1
        9 GETUPVAL                         R2 2
       10 JUMPIFEQKNIL                     R2 ; [+8]
       12 LOADK                            R1 K3 ["%*_%*"]
       13 MOVE                             R3 R0
       14 GETUPVAL                         R4 2
       15 NAMECALL                         R1 R1 K2 ["format"]
       17 CALL                             R1 3 1
       18 RETURN                           R1 1
       19 MOVE                             R1 R0
       20 RETURN                           R1 1

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
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 DUPTABLE                         R0 K2 [{"id", "pluginGui"}]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K0 ["id"]
        8 GETUPVAL                         R1 0
        9 SETTABLEKS                       R1 R0 K1 ["pluginGui"]
       11 RETURN                           R0 1

PROTO_10:
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
       18 GETTABLEKS                       R4 R4 K6 ["useContext"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K7 ["Context"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R6 R0 K8 ["dmId"]
       26 OR                               R5 R6 R4
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R8 0 2
       36 GETTABLEKS                       R9 R0 K10 ["uri"]
       38 MOVE                             R10 R5
       39 SETLIST                          R8 R9 2 [1]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R1
       47 NEWTABLE                         R9 0 1
       49 MOVE                             R10 R1
       50 SETLIST                          R9 R10 1 [1]
       52 CALL                             R7 2 1
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       56 NEWCLOSURE                       R9 P2
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R6
       60 NEWTABLE                         R10 0 2
       62 MOVE                             R11 R1
       63 MOVE                             R12 R6
       64 SETLIST                          R10 R11 2 [1]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 2
       68 GETTABLEKS                       R9 R9 K11 ["useState"]
       70 LOADNIL                          R10
       71 CALL                             R9 1 2
       72 GETUPVAL                         R11 2
       73 GETTABLEKS                       R11 R11 K12 ["useEffect"]
       75 NEWCLOSURE                       R12 P3
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R10
       82 NEWTABLE                         R13 0 5
       84 MOVE                             R14 R1
       85 MOVE                             R15 R6
       86 GETTABLEKS                       R16 R0 K13 ["getSize"]
       88 MOVE                             R17 R10
       89 MOVE                             R18 R3
       90 SETLIST                          R13 R14 5 [1]
       92 CALL                             R11 2 0
       93 GETUPVAL                         R11 2
       94 GETTABLEKS                       R11 R11 K12 ["useEffect"]
       96 NEWCLOSURE                       R12 P4
       97 CAPTURE                          VAL R9
       98 CAPTURE                          UPVAL U7
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R8
      102 NEWTABLE                         R13 0 4
      104 MOVE                             R14 R9
      105 GETTABLEKS                       R15 R0 K13 ["getSize"]
      107 MOVE                             R16 R7
      108 MOVE                             R17 R8
      109 SETLIST                          R13 R14 4 [1]
      111 CALL                             R11 2 0
      112 GETUPVAL                         R12 8
      113 JUMPIFNOT                        R12 ; [+14]
      114 GETUPVAL                         R11 2
      115 GETTABLEKS                       R11 R11 K9 ["useMemo"]
      117 NEWCLOSURE                       R12 P5
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R6
      120 NEWTABLE                         R13 0 2
      122 MOVE                             R14 R6
      123 MOVE                             R15 R9
      124 SETLIST                          R13 R14 2 [1]
      126 CALL                             R11 2 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R11
      129 JUMPIF                           R9 ; [+2]
      130 LOADNIL                          R12
      131 RETURN                           R12 1
      132 GETUPVAL                         R12 8
      133 JUMPIFNOT                        R12 ; [+22]
      134 GETUPVAL                         R12 9
      135 GETTABLEKS                       R12 R12 K14 ["createPortal"]
      137 GETUPVAL                         R13 10
      138 GETUPVAL                         R14 11
      139 GETTABLEKS                       R14 R14 K15 ["Provider"]
      141 DUPTABLE                         R15 K17 [{"value"}]
      142 SETTABLEKS                       R11 R15 K16 ["value"]
      144 GETUPVAL                         R16 10
      145 GETUPVAL                         R17 12
      146 DUPTABLE                         R18 K19 [{"overlayGui"}]
      147 SETTABLEKS                       R9 R18 K18 ["overlayGui"]
      149 GETTABLEKS                       R19 R0 K20 ["children"]
      151 CALL                             R16 3 -1
      152 CALL                             R13 -1 1
      153 MOVE                             R14 R9
      154 CALL                             R12 2 -1
      155 RETURN                           R12 -1
      156 GETUPVAL                         R12 9
      157 GETTABLEKS                       R12 R12 K14 ["createPortal"]
      159 GETUPVAL                         R13 10
      160 GETUPVAL                         R14 12
      161 DUPTABLE                         R15 K19 [{"overlayGui"}]
      162 SETTABLEKS                       R9 R15 K18 ["overlayGui"]
      164 GETTABLEKS                       R16 R0 K20 ["children"]
      166 CALL                             R13 3 1
      167 MOVE                             R14 R9
      168 CALL                             R12 2 -1
      169 RETURN                           R12 -1

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
       36 GETTABLEKS                       R8 R0 K12 ["Contexts"]
       38 GETTABLEKS                       R8 R8 K13 ["DialogContext"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K12 ["Contexts"]
       45 GETTABLEKS                       R9 R9 K14 ["DialogDmIdContext"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R10 R0 K15 ["Components"]
       52 GETTABLEKS                       R10 R10 K16 ["FoundationProviderAdapter"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R11 R0 K17 ["Util"]
       59 GETTABLEKS                       R11 R11 K18 ["StudioUri"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K6 [require]
       64 GETTABLEKS                       R12 R0 K17 ["Util"]
       66 GETTABLEKS                       R12 R12 K19 ["uriToTestId"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K6 [require]
       71 GETTABLEKS                       R13 R0 K20 ["SharedFlags"]
       73 GETTABLEKS                       R13 R13 K21 ["getFFlagDevFrameworkUsesFoundationDialog"]
       75 CALL                             R12 1 1
       76 CALL                             R12 0 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETTABLEKS                       R14 R0 K20 ["SharedFlags"]
       81 GETTABLEKS                       R14 R14 K22 ["getFFlagStudioFoundationDialogContext"]
       83 CALL                             R13 1 1
       84 CALL                             R13 0 1
       85 GETTABLEKS                       R14 R3 K23 ["ContextServices"]
       87 GETTABLEKS                       R14 R14 K24 ["Plugin"]
       89 GETTABLEKS                       R15 R4 K25 ["createElement"]
       91 GETTABLEKS                       R16 R2 K26 ["Hooks"]
       93 GETTABLEKS                       R16 R16 K27 ["useTokens"]
       95 DUPCLOSURE                       R17 K28 [PROTO_10]
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R9
      109 GETTABLEKS                       R18 R4 K29 ["memo"]
      111 MOVE                             R19 R17
      112 CALL                             R18 1 -1
      113 RETURN                           R18 -1
