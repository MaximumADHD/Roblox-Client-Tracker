PROTO_0:
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

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["source"]
        4 GETTABLEKS                       R2 R2 K1 ["content"]
        6 NAMECALL                         R0 R0 K2 ["CreateEditableImageAsync"]
        8 CALL                             R0 2 1
        9 SETUPVAL                         R0 2
       10 NEWTABLE                         R1 0 0
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K3 ["observeValue"]
       15 LOADB                            R3 0
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R4 R2 K4 ["sheetSize"]
       19 GETTABLEKS                       R5 R2 K5 ["grid"]
       21 DIV                              R3 R4 R5
       22 LOADN                            R6 1
       23 GETTABLEKS                       R4 R2 K5 ["grid"]
       25 GETTABLEKS                       R4 R4 K6 ["Y"]
       27 LOADN                            R5 1
       28 FORNPREP                         R4
       29 LOADN                            R9 1
       30 GETTABLEKS                       R7 R2 K5 ["grid"]
       32 GETTABLEKS                       R7 R7 K7 ["X"]
       34 LOADN                            R8 1
       35 FORNPREP                         R7
       36 GETTABLEKS                       R11 R2 K8 ["offset"]
       38 GETIMPORT                        R13 K11 [Vector2.new]
       40 SUBK                             R14 R9 K12 [1]
       41 SUBK                             R15 R6 K12 [1]
       42 CALL                             R13 2 1
       43 MUL                              R12 R3 R13
       44 ADD                              R10 R11 R12
       45 MOVE                             R13 R10
       46 MOVE                             R14 R3
       47 NAMECALL                         R11 R0 K13 ["ReadPixelsBuffer"]
       49 CALL                             R11 3 1
       50 GETUPVAL                         R12 4
       51 MOVE                             R13 R11
       52 CALL                             R12 1 1
       53 JUMPIF                           R12 ; [+36]
       54 GETUPVAL                         R12 0
       55 DUPTABLE                         R14 K15 [{"Size"}]
       56 SETTABLEKS                       R3 R14 K14 ["Size"]
       58 NAMECALL                         R12 R12 K16 ["CreateEditableImage"]
       60 CALL                             R12 2 1
       61 GETIMPORT                        R15 K18 [Vector2.zero]
       63 MOVE                             R16 R3
       64 MOVE                             R17 R11
       65 NAMECALL                         R13 R12 K19 ["WritePixelsBuffer"]
       67 CALL                             R13 4 0
       68 DUPTABLE                         R15 K22 [{"content", "filename", "editableImage"}]
       69 GETIMPORT                        R16 K25 [Content.fromObject]
       71 MOVE                             R17 R12
       72 CALL                             R16 1 1
       73 SETTABLEKS                       R16 R15 K1 ["content"]
       75 GETUPVAL                         R16 1
       76 GETTABLEKS                       R16 R16 K0 ["source"]
       78 GETTABLEKS                       R16 R16 K20 ["filename"]
       80 SETTABLEKS                       R16 R15 K20 ["filename"]
       82 SETTABLEKS                       R12 R15 K21 ["editableImage"]
       84 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       86 MOVE                             R14 R1
       87 GETIMPORT                        R13 K28 [table.insert]
       89 CALL                             R13 2 0
       90 FORNLOOP                         R7
       91 FORNLOOP                         R4
       92 GETUPVAL                         R4 1
       93 GETTABLEKS                       R4 R4 K29 ["setScreen"]
       95 DUPTABLE                         R5 K33 [{["type"] = "importer", ["sources"]}]
       96 SETTABLEKS                       R1 R5 K32 ["sources"]
       98 CALL                             R4 1 0
       99 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U4
        9 FASTPCALL                        xpcall 2 ; [+2]
       10 GETIMPORT                        R1 K1 [xpcall]
       12 CALL                             R1 2 0
       13 JUMPIFEQKNIL                     R0 ; [+4]
       15 NAMECALL                         R1 R0 K2 ["Destroy"]
       17 CALL                             R1 1 0
       18 CLOSEUPVALS                      R0
       19 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R4 R0 K8 ["initialSlicerState"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K9 ["useState"]
       29 LOADB                            R5 0
       30 CALL                             R4 1 2
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K10 ["useRef"]
       34 LOADB                            R7 0
       35 CALL                             R6 1 1
       36 LOADB                            R7 0
       37 SETTABLEKS                       R7 R6 K11 ["current"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K12 ["useEffect"]
       42 NEWCLOSURE                       R8 P0
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R9 0 1
       46 GETTABLEKS                       R10 R0 K13 ["source"]
       48 SETLIST                          R9 R10 1 [1]
       50 CALL                             R7 2 0
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K14 ["useEventCallback"]
       54 NEWCLOSURE                       R8 P1
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U6
       62 CALL                             R7 1 1
       63 GETUPVAL                         R8 7
       64 GETTABLEKS                       R8 R8 K15 ["child"]
       66 NAMECALL                         R9 R1 K16 ["GetUri"]
       68 CALL                             R9 1 1
       69 LOADK                            R10 K17 ["Slicer"]
       70 CALL                             R8 2 1
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K18 ["createElement"]
       74 GETUPVAL                         R10 8
       75 DUPTABLE                         R11 K27 [{["testId"] = "Slicer", ["uri"], ["primaryAction"], ["onClose"], ["undo"], ["redo"], ["left"], ["right"]}]
       76 SETTABLEKS                       R8 R11 K20 ["uri"]
       78 DUPTABLE                         R12 K31 [{"uri", "text", "disabled", "onActivated"}]
       79 GETUPVAL                         R13 7
       80 GETTABLEKS                       R13 R13 K15 ["child"]
       82 MOVE                             R14 R8
       83 LOADK                            R15 K32 ["SliceImage"]
       84 CALL                             R13 2 1
       85 SETTABLEKS                       R13 R12 K20 ["uri"]
       87 LOADK                            R15 K17 ["Slicer"]
       88 LOADK                            R16 K32 ["SliceImage"]
       89 NAMECALL                         R13 R2 K33 ["getText"]
       91 CALL                             R13 3 1
       92 SETTABLEKS                       R13 R12 K28 ["text"]
       94 SETTABLEKS                       R4 R12 K29 ["disabled"]
       96 SETTABLEKS                       R7 R12 K30 ["onActivated"]
       98 SETTABLEKS                       R12 R11 K21 ["primaryAction"]
      100 GETTABLEKS                       R12 R0 K34 ["close"]
      102 SETTABLEKS                       R12 R11 K22 ["onClose"]
      104 GETTABLEKS                       R12 R3 K23 ["undo"]
      106 SETTABLEKS                       R12 R11 K23 ["undo"]
      108 GETTABLEKS                       R12 R3 K24 ["redo"]
      110 SETTABLEKS                       R12 R11 K24 ["redo"]
      112 GETUPVAL                         R12 9
      113 GETUPVAL                         R13 1
      114 GETTABLEKS                       R13 R13 K18 ["createElement"]
      116 GETUPVAL                         R14 10
      117 DUPTABLE                         R15 K36 [{"observeSlicerState"}]
      118 GETTABLEKS                       R16 R3 K37 ["observeValue"]
      120 SETTABLEKS                       R16 R15 K35 ["observeSlicerState"]
      122 CALL                             R13 2 -1
      123 CALL                             R12 -1 1
      124 SETTABLEKS                       R12 R11 K25 ["left"]
      126 GETUPVAL                         R12 9
      127 GETUPVAL                         R13 1
      128 GETTABLEKS                       R13 R13 K18 ["createElement"]
      130 GETUPVAL                         R14 11
      131 DUPTABLE                         R15 K39 [{"slicerStateHistory"}]
      132 SETTABLEKS                       R3 R15 K38 ["slicerStateHistory"]
      134 CALL                             R13 2 -1
      135 CALL                             R12 -1 1
      136 SETTABLEKS                       R12 R11 K26 ["right"]
      138 CALL                             R9 2 -1
      139 RETURN                           R9 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["source"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_8:
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
       45 GETIMPORT                        R7 K5 [script]
       47 GETTABLEKS                       R7 R7 K17 ["SlicerGrid"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETIMPORT                        R8 K5 [script]
       54 GETTABLEKS                       R8 R8 K18 ["SlicerParameters"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R1 K10 ["Packages"]
       61 GETTABLEKS                       R9 R9 K19 ["StudioFoundation"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R1 K14 ["Src"]
       68 GETTABLEKS                       R10 R10 K20 ["Types"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R1 K14 ["Src"]
       75 GETTABLEKS                       R11 R11 K21 ["Libraries"]
       77 GETTABLEKS                       R11 R11 K22 ["as"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETIMPORT                        R12 K5 [script]
       84 GETTABLEKS                       R12 R12 K23 ["getInitialSlicerStateAsync"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R13 R1 K14 ["Src"]
       91 GETTABLEKS                       R13 R13 K21 ["Libraries"]
       93 GETTABLEKS                       R13 R13 K24 ["isInvisible"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K9 [require]
       98 GETTABLEKS                       R14 R1 K14 ["Src"]
      100 GETTABLEKS                       R14 R14 K21 ["Libraries"]
      102 GETTABLEKS                       R14 R14 K25 ["useHistoryState"]
      104 CALL                             R13 1 1
      105 GETTABLEKS                       R14 R8 K26 ["Util"]
      107 GETTABLEKS                       R14 R14 K27 ["StudioUri"]
      109 DUPCLOSURE                       R15 K28 [PROTO_6]
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R7
      122 DUPCLOSURE                       R16 K29 [PROTO_8]
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R15
      127 RETURN                           R16 1
