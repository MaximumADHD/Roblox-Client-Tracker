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
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["useContext"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K5 ["Contexts"]
       17 GETTABLEKS                       R3 R3 K6 ["Localization"]
       19 GETTABLEKS                       R3 R3 K7 ["Context"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K8 ["useMemo"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R5 0 1
       30 GETTABLEKS                       R6 R0 K9 ["initialSlicerState"]
       32 SETLIST                          R5 R6 1 [1]
       34 CALL                             R3 2 2
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K10 ["useState"]
       38 LOADB                            R6 0
       39 CALL                             R5 1 2
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K11 ["useRef"]
       43 LOADB                            R8 0
       44 CALL                             R7 1 1
       45 LOADB                            R8 0
       46 SETTABLEKS                       R8 R7 K12 ["current"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K13 ["useEffect"]
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R10 0 1
       55 GETTABLEKS                       R11 R0 K14 ["source"]
       57 SETLIST                          R10 R11 1 [1]
       59 CALL                             R8 2 0
       60 GETUPVAL                         R8 4
       61 GETTABLEKS                       R8 R8 K15 ["useEventCallback"]
       63 NEWCLOSURE                       R9 P2
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R3
       70 CAPTURE                          UPVAL U6
       71 CALL                             R8 1 1
       72 GETUPVAL                         R9 7
       73 GETTABLEKS                       R9 R9 K16 ["child"]
       75 NAMECALL                         R10 R1 K17 ["GetUri"]
       77 CALL                             R10 1 1
       78 LOADK                            R11 K18 ["Slicer"]
       79 CALL                             R9 2 1
       80 GETUPVAL                         R10 1
       81 GETTABLEKS                       R10 R10 K19 ["createElement"]
       83 GETUPVAL                         R11 8
       84 DUPTABLE                         R12 K26 [{["testId"] = "Slicer", ["uri"], ["primaryAction"], ["onClose"], ["left"], ["right"]}]
       85 SETTABLEKS                       R9 R12 K21 ["uri"]
       87 DUPTABLE                         R13 K30 [{"uri", "text", "disabled", "onActivated"}]
       88 GETUPVAL                         R14 7
       89 GETTABLEKS                       R14 R14 K16 ["child"]
       91 MOVE                             R15 R9
       92 LOADK                            R16 K31 ["SliceImage"]
       93 CALL                             R14 2 1
       94 SETTABLEKS                       R14 R13 K21 ["uri"]
       96 LOADK                            R16 K18 ["Slicer"]
       97 LOADK                            R17 K31 ["SliceImage"]
       98 NAMECALL                         R14 R2 K32 ["getText"]
      100 CALL                             R14 3 1
      101 SETTABLEKS                       R14 R13 K27 ["text"]
      103 SETTABLEKS                       R5 R13 K28 ["disabled"]
      105 SETTABLEKS                       R8 R13 K29 ["onActivated"]
      107 SETTABLEKS                       R13 R12 K22 ["primaryAction"]
      109 GETTABLEKS                       R13 R0 K33 ["close"]
      111 SETTABLEKS                       R13 R12 K23 ["onClose"]
      113 GETUPVAL                         R13 9
      114 GETUPVAL                         R14 1
      115 GETTABLEKS                       R14 R14 K19 ["createElement"]
      117 GETUPVAL                         R15 10
      118 DUPTABLE                         R16 K36 [{"observeSlicerState", "setSlicerState"}]
      119 SETTABLEKS                       R3 R16 K34 ["observeSlicerState"]
      121 SETTABLEKS                       R4 R16 K35 ["setSlicerState"]
      123 CALL                             R14 2 -1
      124 CALL                             R13 -1 1
      125 SETTABLEKS                       R13 R12 K24 ["left"]
      127 GETUPVAL                         R13 9
      128 GETUPVAL                         R14 1
      129 GETTABLEKS                       R14 R14 K19 ["createElement"]
      131 GETUPVAL                         R15 11
      132 DUPTABLE                         R16 K36 [{"observeSlicerState", "setSlicerState"}]
      133 SETTABLEKS                       R3 R16 K34 ["observeSlicerState"]
      135 SETTABLEKS                       R4 R16 K35 ["setSlicerState"]
      137 CALL                             R14 2 -1
      138 CALL                             R13 -1 1
      139 SETTABLEKS                       R13 R12 K25 ["right"]
      141 CALL                             R10 2 -1
      142 RETURN                           R10 -1

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
       29 DUPTABLE                         R4 K9 [{"source", "initialSlicerState", "setScreen", "close"}]
       30 GETTABLEKS                       R5 R0 K1 ["source"]
       32 SETTABLEKS                       R5 R4 K1 ["source"]
       34 GETTABLEKS                       R5 R1 K10 ["value"]
       36 SETTABLEKS                       R5 R4 K6 ["initialSlicerState"]
       38 GETTABLEKS                       R5 R0 K7 ["setScreen"]
       40 SETTABLEKS                       R5 R4 K7 ["setScreen"]
       42 GETTABLEKS                       R5 R0 K8 ["close"]
       44 SETTABLEKS                       R5 R4 K8 ["close"]
       46 CALL                             R2 2 -1
       47 RETURN                           R2 -1

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
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Components"]
       40 GETTABLEKS                       R6 R6 K16 ["Shell"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K10 ["Packages"]
       47 GETTABLEKS                       R7 R7 K17 ["Signals"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETIMPORT                        R8 K5 [script]
       54 GETTABLEKS                       R8 R8 K18 ["SlicerGrid"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETIMPORT                        R9 K5 [script]
       61 GETTABLEKS                       R9 R9 K19 ["SlicerParameters"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R1 K10 ["Packages"]
       68 GETTABLEKS                       R10 R10 K20 ["StudioFoundation"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R1 K14 ["Src"]
       75 GETTABLEKS                       R11 R11 K21 ["Types"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R12 R1 K14 ["Src"]
       82 GETTABLEKS                       R12 R12 K22 ["Libraries"]
       84 GETTABLEKS                       R12 R12 K23 ["as"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETIMPORT                        R13 K5 [script]
       91 GETTABLEKS                       R13 R13 K24 ["getInitialSlicerStateAsync"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETTABLEKS                       R14 R1 K14 ["Src"]
       98 GETTABLEKS                       R14 R14 K22 ["Libraries"]
      100 GETTABLEKS                       R14 R14 K25 ["isInvisible"]
      102 CALL                             R13 1 1
      103 GETTABLEKS                       R14 R9 K26 ["Util"]
      105 GETTABLEKS                       R14 R14 K27 ["StudioUri"]
      107 DUPCLOSURE                       R15 K28 [PROTO_7]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R8
      120 DUPCLOSURE                       R16 K29 [PROTO_9]
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R15
      125 RETURN                           R16 1
