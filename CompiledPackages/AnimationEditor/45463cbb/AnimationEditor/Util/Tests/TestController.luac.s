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
       11 DUPTABLE                         R3 K4 [{"MockMDI"}]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K3 ["MockMDI"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K5 ["_testPlugin"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K2 ["new"]
       21 CALL                             R2 0 1
       22 SETTABLEKS                       R2 R1 K6 ["_testSelection"]
       24 GETIMPORT                        R2 K8 [Instance.new]
       26 LOADK                            R3 K9 ["ScreenGui"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K10 ["_layerCollector"]
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K11 ["createRoot"]
       33 GETTABLEKS                       R3 R1 K10 ["_layerCollector"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R1 K12 ["_root"]
       38 GETUPVAL                         R2 4
       39 GETTABLEKS                       R2 R2 K13 ["createUnimplemented"]
       41 LOADK                            R3 K14 ["setContextList"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K15 ["_setContextList"]
       45 NEWTABLE                         R2 0 0
       47 SETTABLEKS                       R2 R1 K16 ["_lastContextMap"]
       49 NEWTABLE                         R2 0 1
       51 GETUPVAL                         R3 5
       52 GETTABLEKS                       R3 R3 K17 ["createElement"]
       54 GETUPVAL                         R4 6
       55 GETTABLEKS                       R4 R4 K18 ["Provider"]
       57 DUPTABLE                         R5 K20 [{"selectionService"}]
       58 GETTABLEKS                       R6 R1 K6 ["_testSelection"]
       60 SETTABLEKS                       R6 R5 K19 ["selectionService"]
       62 CALL                             R3 2 -1
       63 SETLIST                          R2 R3 -1 [1]
       65 NEWTABLE                         R3 0 0
       67 GETTABLEKS                       R4 R0 K21 ["Providers"]
       69 JUMPIFNOT                        R4 ; [+14]
       70 GETTABLEKS                       R4 R0 K21 ["Providers"]
       72 LOADNIL                          R5
       73 LOADNIL                          R6
       74 FORGPREP                         R4
       75 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       77 MOVE                             R10 R3
       78 MOVE                             R11 R8
       79 GETIMPORT                        R9 K24 [table.insert]
       81 CALL                             R9 2 0
       82 FORGLOOP                         R4 2 ; [-8]
       84 NEWCLOSURE                       R4 P0
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R1
       88 MOVE                             R6 R3
       89 GETUPVAL                         R7 5
       90 GETTABLEKS                       R7 R7 K17 ["createElement"]
       92 MOVE                             R8 R4
       93 CALL                             R7 1 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R5 K24 [table.insert]
       97 CALL                             R5 -1 0
       98 GETUPVAL                         R5 3
       99 GETTABLEKS                       R5 R5 K25 ["act"]
      101 NEWCLOSURE                       R6 P1
      102 CAPTURE                          VAL R1
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 CALL                             R5 1 0
      108 RETURN                           R1 1

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
