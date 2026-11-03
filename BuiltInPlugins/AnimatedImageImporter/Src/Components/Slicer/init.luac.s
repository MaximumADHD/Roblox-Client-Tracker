PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["initialSlicerState"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["source"]
        3 GETTABLEKS                       R0 R0 K1 ["editableImage"]
        5 JUMPIFEQKNIL                     R0 ; [+9]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["source"]
       10 GETTABLEKS                       R0 R0 K1 ["editableImage"]
       12 NAMECALL                         R0 R0 K2 ["Destroy"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["source"]
        4 GETTABLEKS                       R2 R2 K1 ["content"]
        6 NAMECALL                         R0 R0 K2 ["CreateEditableImageAsync"]
        8 CALL                             R0 2 1
        9 SETUPVAL                         R0 2
       10 NEWTABLE                         R1 0 0
       12 GETUPVAL                         R2 3
       13 LOADB                            R3 0
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R4 R2 K3 ["sheetSize"]
       17 GETTABLEKS                       R5 R2 K4 ["grid"]
       19 DIV                              R3 R4 R5
       20 LOADN                            R6 1
       21 GETTABLEKS                       R4 R2 K4 ["grid"]
       23 GETTABLEKS                       R4 R4 K5 ["Y"]
       25 LOADN                            R5 1
       26 FORNPREP                         R4
       27 LOADN                            R9 1
       28 GETTABLEKS                       R7 R2 K4 ["grid"]
       30 GETTABLEKS                       R7 R7 K6 ["X"]
       32 LOADN                            R8 1
       33 FORNPREP                         R7
       34 GETTABLEKS                       R11 R2 K7 ["offset"]
       36 GETIMPORT                        R13 K10 [Vector2.new]
       38 SUBK                             R14 R9 K11 [1]
       39 SUBK                             R15 R6 K11 [1]
       40 CALL                             R13 2 1
       41 MUL                              R12 R3 R13
       42 ADD                              R10 R11 R12
       43 MOVE                             R13 R10
       44 MOVE                             R14 R3
       45 NAMECALL                         R11 R0 K12 ["ReadPixelsBuffer"]
       47 CALL                             R11 3 1
       48 GETUPVAL                         R12 4
       49 MOVE                             R13 R11
       50 CALL                             R12 1 1
       51 JUMPIF                           R12 ; [+36]
       52 GETUPVAL                         R12 0
       53 DUPTABLE                         R14 K14 [{"Size"}]
       54 SETTABLEKS                       R3 R14 K13 ["Size"]
       56 NAMECALL                         R12 R12 K15 ["CreateEditableImage"]
       58 CALL                             R12 2 1
       59 GETIMPORT                        R15 K17 [Vector2.zero]
       61 MOVE                             R16 R3
       62 MOVE                             R17 R11
       63 NAMECALL                         R13 R12 K18 ["WritePixelsBuffer"]
       65 CALL                             R13 4 0
       66 DUPTABLE                         R15 K21 [{"content", "filename", "editableImage"}]
       67 GETIMPORT                        R16 K24 [Content.fromObject]
       69 MOVE                             R17 R12
       70 CALL                             R16 1 1
       71 SETTABLEKS                       R16 R15 K1 ["content"]
       73 GETUPVAL                         R16 1
       74 GETTABLEKS                       R16 R16 K0 ["source"]
       76 GETTABLEKS                       R16 R16 K19 ["filename"]
       78 SETTABLEKS                       R16 R15 K19 ["filename"]
       80 SETTABLEKS                       R12 R15 K20 ["editableImage"]
       82 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       84 MOVE                             R14 R1
       85 GETIMPORT                        R13 K27 [table.insert]
       87 CALL                             R13 2 0
       88 FORNLOOP                         R7
       89 FORNLOOP                         R4
       90 GETUPVAL                         R4 1
       91 GETTABLEKS                       R4 R4 K28 ["setScreen"]
       93 DUPTABLE                         R5 K32 [{["type"] = "importer", ["sources"]}]
       94 SETTABLEKS                       R1 R5 K31 ["sources"]
       96 CALL                             R4 1 0
       97 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error slicing: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [xpcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          REF R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          UPVAL U4
       11 CALL                             R1 2 0
       12 JUMPIFEQKNIL                     R0 ; [+4]
       14 NAMECALL                         R1 R0 K2 ["Destroy"]
       16 CALL                             R1 1 0
       17 CLOSEUPVALS                      R0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K0 ["current"]
       11 GETUPVAL                         R0 2
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K3 [task.spawn]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U2
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["initialSlicerState"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 2
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["useState"]
       16 LOADB                            R4 0
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K3 ["useRef"]
       21 LOADB                            R6 0
       22 CALL                             R5 1 1
       23 LOADB                            R6 0
       24 SETTABLEKS                       R6 R5 K4 ["current"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R8 0 1
       33 GETTABLEKS                       R9 R0 K6 ["source"]
       35 SETLIST                          R8 R9 1 [1]
       37 CALL                             R6 2 0
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K7 ["useEventCallback"]
       41 NEWCLOSURE                       R7 P2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U4
       49 CALL                             R6 1 1
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K8 ["createElement"]
       53 GETUPVAL                         R8 5
       54 DUPTABLE                         R9 K13 [{["testId"] = "Slicer", ["left"], ["right"]}]
       55 GETUPVAL                         R10 6
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K8 ["createElement"]
       59 GETUPVAL                         R12 7
       60 DUPTABLE                         R13 K16 [{"observeSlicerState", "setSlicerState"}]
       61 SETTABLEKS                       R1 R13 K14 ["observeSlicerState"]
       63 SETTABLEKS                       R2 R13 K15 ["setSlicerState"]
       65 CALL                             R11 2 -1
       66 CALL                             R10 -1 1
       67 SETTABLEKS                       R10 R9 K11 ["left"]
       69 GETUPVAL                         R10 6
       70 GETUPVAL                         R11 0
       71 GETTABLEKS                       R11 R11 K8 ["createElement"]
       73 GETUPVAL                         R12 8
       74 DUPTABLE                         R13 K19 [{"observeSlicerState", "setSlicerState", "onFinish", "finishing"}]
       75 SETTABLEKS                       R1 R13 K14 ["observeSlicerState"]
       77 SETTABLEKS                       R2 R13 K15 ["setSlicerState"]
       79 SETTABLEKS                       R6 R13 K17 ["onFinish"]
       81 SETTABLEKS                       R3 R13 K18 ["finishing"]
       83 CALL                             R11 2 -1
       84 CALL                             R10 -1 1
       85 SETTABLEKS                       R10 R9 K12 ["right"]
       87 CALL                             R7 2 -1
       88 RETURN                           R7 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["source"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useAsync"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["source"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K2 ["status"]
       15 JUMPIFNOTEQKS                    R2 K3 ["error"] ; [+3]
       17 LOADNIL                          R2
       18 RETURN                           R2 1
       19 GETTABLEKS                       R2 R1 K2 ["status"]
       21 JUMPIFNOTEQKS                    R2 K4 ["loading"] ; [+3]
       23 LOADNIL                          R2
       24 RETURN                           R2 1
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K5 ["createElement"]
       28 GETUPVAL                         R3 3
       29 DUPTABLE                         R4 K8 [{"source", "initialSlicerState", "setScreen"}]
       30 GETTABLEKS                       R5 R0 K1 ["source"]
       32 SETTABLEKS                       R5 R4 K1 ["source"]
       34 GETTABLEKS                       R5 R1 K9 ["value"]
       36 SETTABLEKS                       R5 R4 K6 ["initialSlicerState"]
       38 GETTABLEKS                       R5 R0 K7 ["setScreen"]
       40 SETTABLEKS                       R5 R4 K7 ["setScreen"]
       42 CALL                             R2 2 -1
       43 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimatedImageImporter"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Components"]
       33 GETTABLEKS                       R5 R5 K15 ["Shell"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K10 ["Packages"]
       40 GETTABLEKS                       R6 R6 K16 ["Signals"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETIMPORT                        R7 K5 [script]
       47 GETTABLEKS                       R7 R7 K17 ["SlicerGrid"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETIMPORT                        R8 K5 [script]
       54 GETTABLEKS                       R8 R8 K18 ["SlicerParameters"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R1 K13 ["Src"]
       61 GETTABLEKS                       R9 R9 K19 ["Types"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R1 K13 ["Src"]
       68 GETTABLEKS                       R10 R10 K20 ["Libraries"]
       70 GETTABLEKS                       R10 R10 K21 ["as"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETIMPORT                        R11 K5 [script]
       77 GETTABLEKS                       R11 R11 K22 ["getInitialSlicerStateAsync"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R1 K13 ["Src"]
       84 GETTABLEKS                       R12 R12 K20 ["Libraries"]
       86 GETTABLEKS                       R12 R12 K23 ["isInvisible"]
       88 CALL                             R11 1 1
       89 DUPCLOSURE                       R12 K24 [PROTO_7]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R7
       99 DUPCLOSURE                       R13 K25 [PROTO_9]
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R12
      104 RETURN                           R13 1
