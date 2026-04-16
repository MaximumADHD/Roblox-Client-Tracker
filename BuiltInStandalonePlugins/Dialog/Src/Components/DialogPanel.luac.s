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
        2 DUPTABLE                         R3 K5 [{"Id", "InitialEnabled", "Modal", "Size", "DisableTitleBar"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["Id"]
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R3 K1 ["InitialEnabled"]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K2 ["Modal"]
       12 GETIMPORT                        R4 K8 [Vector2.max]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K9 ["getSize"]
       17 LOADB                            R6 0
       18 CALL                             R5 1 1
       19 GETIMPORT                        R6 K11 [Vector2.new]
       21 LOADN                            R7 1
       22 LOADN                            R8 1
       23 CALL                             R6 2 -1
       24 CALL                             R4 -1 1
       25 SETTABLEKS                       R4 R3 K3 ["Size"]
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K4 ["DisableTitleBar"]
       30 NAMECALL                         R0 R0 K12 ["CreateQWidgetPluginGui"]
       32 CALL                             R0 3 1
       33 SETUPVAL                         R0 0
       34 GETUPVAL                         R0 4
       35 GETUPVAL                         R1 0
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

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
        9 CALL                             R1 1 1
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          REF R0
       13 CAPTURE                          UPVAL U3
       14 CLOSEUPVALS                      R0
       15 RETURN                           R2 1

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
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 1
       15 GETTABLEKS                       R5 R0 K3 ["uri"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R5 0 1
       27 MOVE                             R6 R1
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       34 NEWCLOSURE                       R5 P2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 NEWTABLE                         R6 0 2
       40 MOVE                             R7 R1
       41 MOVE                             R8 R2
       42 SETLIST                          R6 R7 2 [1]
       44 CALL                             R4 2 1
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R5 R6 K4 ["useState"]
       48 LOADNIL                          R6
       49 CALL                             R5 1 2
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K5 ["useEffect"]
       53 NEWCLOSURE                       R8 P3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R6
       58 NEWTABLE                         R9 0 4
       60 MOVE                             R10 R1
       61 MOVE                             R11 R2
       62 GETTABLEKS                       R12 R0 K6 ["getSize"]
       64 MOVE                             R13 R6
       65 SETLIST                          R9 R10 4 [1]
       67 CALL                             R7 2 0
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R7 R8 K5 ["useEffect"]
       71 NEWCLOSURE                       R8 P4
       72 CAPTURE                          VAL R5
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R4
       77 NEWTABLE                         R9 0 4
       79 MOVE                             R10 R5
       80 GETTABLEKS                       R11 R0 K6 ["getSize"]
       82 MOVE                             R12 R3
       83 MOVE                             R13 R4
       84 SETLIST                          R9 R10 4 [1]
       86 CALL                             R7 2 0
       87 JUMPIF                           R5 ; [+2]
       88 LOADNIL                          R7
       89 RETURN                           R7 1
       90 GETUPVAL                         R8 5
       91 GETTABLEKS                       R7 R8 K7 ["createPortal"]
       93 GETUPVAL                         R8 6
       94 GETUPVAL                         R9 7
       95 DUPTABLE                         R10 K9 [{"overlayGui"}]
       96 SETTABLEKS                       R5 R10 K8 ["overlayGui"]
       98 GETTABLEKS                       R11 R0 K10 ["children"]
      100 CALL                             R8 3 1
      101 MOVE                             R9 R5
      102 CALL                             R7 2 -1
      103 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Signals"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R7 R5 K12 ["Components"]
       44 GETTABLEKS                       R6 R7 K13 ["FoundationProviderAdapter"]
       46 GETTABLEKS                       R8 R1 K14 ["ContextServices"]
       48 GETTABLEKS                       R7 R8 K15 ["Plugin"]
       50 GETTABLEKS                       R9 R5 K16 ["Util"]
       52 GETTABLEKS                       R8 R9 K17 ["StudioUri"]
       54 GETTABLEKS                       R9 R2 K18 ["createElement"]
       56 GETTABLEKS                       R11 R5 K16 ["Util"]
       58 GETTABLEKS                       R10 R11 K19 ["uriToTestId"]
       60 DUPCLOSURE                       R11 K20 [PROTO_9]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R6
       69 GETTABLEKS                       R12 R2 K21 ["memo"]
       71 MOVE                             R13 R11
       72 CALL                             R12 1 -1
       73 RETURN                           R12 -1
