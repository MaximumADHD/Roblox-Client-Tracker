PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ObservedContexts"]
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 CALL                             R1 1 2
       10 GETUPVAL                         R3 2
       11 SETTABLEKS                       R2 R3 K2 ["_setContextList"]
       13 MOVE                             R3 R1
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R8 R8 K3 ["_lastContextMap"]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K4 ["useContext"]
       23 MOVE                             R10 R7
       24 CALL                             R9 1 1
       25 SETTABLE                         R9 R8 R7
       26 FORGLOOP                         R3 2 ; [-10]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K5 ["createElement"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K6 ["Fragment"]
       34 NEWTABLE                         R5 0 0
       36 GETTABLEKS                       R6 R0 K7 ["children"]
       38 CALL                             R3 3 -1
       39 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_root"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Component"]
        7 DUPTABLE                         R4 K4 [{"PreProviders", "Providers"}]
        8 GETUPVAL                         R5 3
        9 SETTABLEKS                       R5 R4 K2 ["PreProviders"]
       11 GETUPVAL                         R5 4
       12 SETTABLEKS                       R5 R4 K3 ["Providers"]
       14 CALL                             R2 2 -1
       15 NAMECALL                         R0 R0 K5 ["render"]
       17 CALL                             R0 -1 0
       18 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["new"]
       11 DUPTABLE                         R3 K5 [{["MockMDI"] = True}]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K6 ["_testPlugin"]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K2 ["new"]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K7 ["_testSelection"]
       21 GETIMPORT                        R2 K9 [Instance.new]
       23 LOADK                            R3 K10 ["ScreenGui"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K11 ["_layerCollector"]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K12 ["createRoot"]
       30 GETTABLEKS                       R3 R1 K11 ["_layerCollector"]
       32 CALL                             R2 1 1
       33 SETTABLEKS                       R2 R1 K13 ["_root"]
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R2 R2 K14 ["createUnimplemented"]
       38 LOADK                            R3 K15 ["setContextList"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R1 K16 ["_setContextList"]
       42 NEWTABLE                         R2 0 0
       44 SETTABLEKS                       R2 R1 K17 ["_lastContextMap"]
       46 NEWTABLE                         R2 0 1
       48 GETUPVAL                         R3 5
       49 GETTABLEKS                       R3 R3 K18 ["createElement"]
       51 GETUPVAL                         R4 6
       52 GETTABLEKS                       R4 R4 K19 ["Provider"]
       54 DUPTABLE                         R5 K21 [{"selectionService"}]
       55 GETTABLEKS                       R6 R1 K7 ["_testSelection"]
       57 SETTABLEKS                       R6 R5 K20 ["selectionService"]
       59 CALL                             R3 2 -1
       60 SETLIST                          R2 R3 -1 [1]
       62 NEWTABLE                         R3 0 0
       64 GETTABLEKS                       R4 R0 K22 ["Providers"]
       66 JUMPIFNOT                        R4 ; [+14]
       67 GETTABLEKS                       R4 R0 K22 ["Providers"]
       69 LOADNIL                          R5
       70 LOADNIL                          R6
       71 FORGPREP                         R4
       72 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       74 MOVE                             R10 R3
       75 MOVE                             R11 R8
       76 GETIMPORT                        R9 K25 [table.insert]
       78 CALL                             R9 2 0
       79 FORGLOOP                         R4 2 ; [-8]
       81 NEWCLOSURE                       R4 P0
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R1
       85 MOVE                             R6 R3
       86 GETUPVAL                         R7 5
       87 GETTABLEKS                       R7 R7 K18 ["createElement"]
       89 MOVE                             R8 R4
       90 CALL                             R7 1 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R5 K25 [table.insert]
       94 CALL                             R5 -1 0
       95 GETUPVAL                         R5 3
       96 GETTABLEKS                       R5 R5 K26 ["act"]
       98 NEWCLOSURE                       R6 P1
       99 CAPTURE                          VAL R1
      100 CAPTURE                          UPVAL U7
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R3
      104 CALL                             R5 1 0
      105 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [table.find]
        6 MOVE                             R3 R1
        7 GETUPVAL                         R4 0
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+7]
       10 GETUPVAL                         R4 0
       11 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K6 [table.insert]
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_setContextList"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R3 R0 K1 ["_lastContextMap"]
        9 GETTABLE                         R2 R3 R1
       10 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_layerCollector"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_testSelection"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Set"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_testSelection"]
        2 NAMECALL                         R1 R1 K1 ["Get"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_root"]
        3 NAMECALL                         R0 R0 K1 ["unmount"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["_layerCollector"]
        9 NAMECALL                         R0 R0 K3 ["Destroy"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K4 ["_testSelection"]
       15 NAMECALL                         R0 R0 K3 ["Destroy"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["act"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["SelectionServiceContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["Tests"]
       41 GETTABLEKS                       R6 R6 K14 ["TestPlugin"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Util"]
       48 GETTABLEKS                       R7 R7 K13 ["Tests"]
       50 GETTABLEKS                       R7 R7 K15 ["TestSelection"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Util"]
       57 GETTABLEKS                       R8 R8 K13 ["Tests"]
       59 GETTABLEKS                       R8 R8 K16 ["mockContext"]
       61 CALL                             R7 1 1
       62 NEWTABLE                         R8 8 0
       64 SETTABLEKS                       R8 R8 K17 ["__index"]
       66 DUPCLOSURE                       R9 K18 [PROTO_2]
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R9 R8 K19 ["new"]
       77 DUPCLOSURE                       R9 K20 [PROTO_5]
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R9 R8 K21 ["getLatestContext"]
       81 DUPCLOSURE                       R9 K22 [PROTO_6]
       82 SETTABLEKS                       R9 R8 K23 ["getLayerCollector"]
       84 DUPCLOSURE                       R9 K24 [PROTO_8]
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R9 R8 K25 ["setSelection"]
       88 DUPCLOSURE                       R9 K26 [PROTO_9]
       89 SETTABLEKS                       R9 R8 K27 ["getSelection"]
       91 DUPCLOSURE                       R9 K28 [PROTO_11]
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R9 R8 K29 ["destroy"]
       95 RETURN                           R8 1
