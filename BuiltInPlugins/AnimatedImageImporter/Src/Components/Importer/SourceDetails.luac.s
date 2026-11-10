PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["sourceIndexToClipNumbers"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 LOADB                            R7 1
        8 SETTABLE                         R7 R1 R6
        9 FORGLOOP                         R2 2 ; [-3]
       11 NEWTABLE                         R2 0 0
       13 GETTABLEKS                       R3 R0 K1 ["clips"]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETTABLEKS                       R9 R7 K2 ["number"]
       20 GETTABLE                         R8 R1 R9
       21 JUMPIFNOT                        R8 ; [+7]
       22 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       24 MOVE                             R9 R2
       25 MOVE                             R10 R7
       26 GETIMPORT                        R8 K5 [table.insert]
       28 CALL                             R8 2 0
       29 FORGLOOP                         R3 2 ; [-12]
       31 SETTABLEKS                       R2 R0 K1 ["clips"]
       33 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K2 [table.clone]
        7 GETTABLEKS                       R2 R0 K3 ["clips"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["clips"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R0 K4 ["selection"]
       15 CALL                             R1 1 2
       16 JUMPIFEQ                         R1 R2 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 JUMPIFNOT                        R3 ; [+11]
       21 GETTABLEKS                       R5 R0 K5 ["sourceIndexToClipNumbers"]
       23 GETTABLE                         R4 R5 R1
       24 GETTABLEKS                       R6 R0 K5 ["sourceIndexToClipNumbers"]
       26 ADDK                             R7 R2 K6 [1]
       27 GETTABLE                         R5 R6 R7
       28 JUMPIFNOTEQ                      R5 R4 ; [+3]
       30 ADDK                             R2 R2 K6 [1]
       31 JUMPBACK                         ; [-8]
       32 GETTABLEKS                       R5 R0 K5 ["sourceIndexToClipNumbers"]
       34 GETTABLE                         R4 R5 R2
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K7 ["defaultFps"]
       38 LOADN                            R6 0
       39 GETTABLEKS                       R7 R0 K3 ["clips"]
       41 LOADNIL                          R8
       42 LOADNIL                          R9
       43 FORGPREP                         R7
       44 GETTABLEKS                       R14 R11 K8 ["number"]
       46 FASTCALL2                        MATH_MAX R6 R14 ; [+4]
       48 MOVE                             R13 R6
       49 GETIMPORT                        R12 K11 [math.max]
       51 CALL                             R12 2 1
       52 MOVE                             R6 R12
       53 GETTABLEKS                       R12 R11 K8 ["number"]
       55 JUMPIFNOTEQ                      R12 R4 ; [+3]
       57 GETTABLEKS                       R5 R11 K12 ["fps"]
       59 FORGLOOP                         R7 2 ; [-16]
       61 GETTABLEKS                       R8 R0 K3 ["clips"]
       63 DUPTABLE                         R9 K14 [{"name", "number", "fps"}]
       64 LOADK                            R10 K15 ["Clip %*"]
       65 ADDK                             R12 R6 K6 [1]
       66 NAMECALL                         R10 R10 K16 ["format"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K13 ["name"]
       71 ADDK                             R10 R6 K6 [1]
       72 SETTABLEKS                       R10 R9 K8 ["number"]
       74 SETTABLEKS                       R5 R9 K12 ["fps"]
       76 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       78 GETIMPORT                        R7 K18 [table.insert]
       80 CALL                             R7 2 0
       81 GETIMPORT                        R7 K2 [table.clone]
       83 GETTABLEKS                       R8 R0 K5 ["sourceIndexToClipNumbers"]
       85 CALL                             R7 1 1
       86 SETTABLEKS                       R7 R0 K5 ["sourceIndexToClipNumbers"]
       88 MOVE                             R9 R1
       89 MOVE                             R7 R2
       90 LOADN                            R8 1
       91 FORNPREP                         R7
       92 GETTABLEKS                       R10 R0 K5 ["sourceIndexToClipNumbers"]
       94 ADDK                             R11 R6 K6 [1]
       95 SETTABLE                         R11 R10 R9
       96 FORNLOOP                         R7
       97 JUMPIFEQKN                       R1 K6 [1] ; [+48]
       99 JUMPIF                           R3 ; [+46]
      100 GETTABLEKS                       R8 R0 K5 ["sourceIndexToClipNumbers"]
      102 SUBK                             R9 R1 K6 [1]
      103 GETTABLE                         R7 R8 R9
      104 GETTABLEKS                       R9 R0 K5 ["sourceIndexToClipNumbers"]
      106 ADDK                             R10 R2 K6 [1]
      107 GETTABLE                         R8 R9 R10
      108 JUMPIFNOTEQ                      R8 R7 ; [+37]
      110 GETTABLEKS                       R9 R0 K3 ["clips"]
      112 DUPTABLE                         R10 K14 [{"name", "number", "fps"}]
      113 LOADK                            R11 K15 ["Clip %*"]
      114 ADDK                             R13 R6 K19 [2]
      115 NAMECALL                         R11 R11 K16 ["format"]
      117 CALL                             R11 2 1
      118 SETTABLEKS                       R11 R10 K13 ["name"]
      120 ADDK                             R11 R6 K19 [2]
      121 SETTABLEKS                       R11 R10 K8 ["number"]
      123 SETTABLEKS                       R5 R10 K12 ["fps"]
      125 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
      127 GETIMPORT                        R8 K18 [table.insert]
      129 CALL                             R8 2 0
      130 ADDK                             R10 R2 K6 [1]
      131 GETTABLEKS                       R11 R0 K20 ["sources"]
      133 LENGTH                           R8 R11
      134 LOADN                            R9 1
      135 FORNPREP                         R8
      136 GETTABLEKS                       R12 R0 K5 ["sourceIndexToClipNumbers"]
      138 GETTABLE                         R11 R12 R10
      139 JUMPIFNOTEQ                      R11 R7 ; [+6]
      141 GETTABLEKS                       R11 R0 K5 ["sourceIndexToClipNumbers"]
      143 ADDK                             R12 R6 K19 [2]
      144 SETTABLE                         R12 R11 R10
      145 FORNLOOP                         R8
      146 GETUPVAL                         R7 2
      147 MOVE                             R8 R0
      148 CALL                             R7 1 0
      149 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setImporterState"]
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["importerState"]
        4 GETTABLEKS                       R1 R1 K1 ["selection"]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["importerState"]
       10 GETTABLEKS                       R3 R3 K2 ["sourceIndexToClipNumbers"]
       12 GETTABLE                         R2 R3 R0
       13 ADDK                             R5 R0 K3 [1]
       14 MOVE                             R3 R1
       15 LOADN                            R4 1
       16 FORNPREP                         R3
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K0 ["importerState"]
       20 GETTABLEKS                       R7 R7 K2 ["sourceIndexToClipNumbers"]
       22 GETTABLE                         R6 R7 R5
       23 JUMPIFEQ                         R6 R2 ; [+3]
       25 LOADNIL                          R6
       26 RETURN                           R6 1
       27 FORNLOOP                         R3
       28 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["importerState"]
        5 GETTABLEKS                       R1 R1 K1 ["clips"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETTABLEKS                       R6 R5 K2 ["number"]
       12 GETTABLEKS                       R7 R5 K3 ["fps"]
       14 SETTABLE                         R7 R0 R6
       15 FORGLOOP                         R1 2 ; [-6]
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["importerState"]
       21 GETTABLEKS                       R2 R2 K4 ["selection"]
       23 CALL                             R1 1 2
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["importerState"]
       27 GETTABLEKS                       R5 R5 K5 ["sourceIndexToClipNumbers"]
       29 GETTABLE                         R4 R5 R1
       30 GETTABLE                         R3 R0 R4
       31 ADDK                             R6 R1 K6 [1]
       32 MOVE                             R4 R2
       33 LOADN                            R5 1
       34 FORNPREP                         R4
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K0 ["importerState"]
       38 GETTABLEKS                       R9 R9 K5 ["sourceIndexToClipNumbers"]
       40 GETTABLE                         R8 R9 R6
       41 GETTABLE                         R7 R0 R8
       42 JUMPIFEQ                         R7 R3 ; [+3]
       44 LOADNIL                          R7
       45 RETURN                           R7 1
       46 FORNLOOP                         R4
       47 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["importerState"]
        4 GETTABLEKS                       R1 R1 K1 ["selection"]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["importerState"]
       10 GETTABLEKS                       R3 R3 K2 ["sources"]
       12 GETTABLE                         R2 R3 R0
       13 GETTABLEKS                       R2 R2 K3 ["filename"]
       15 ADDK                             R5 R0 K4 [1]
       16 MOVE                             R3 R1
       17 LOADN                            R4 1
       18 FORNPREP                         R3
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K0 ["importerState"]
       22 GETTABLEKS                       R7 R7 K2 ["sources"]
       24 GETTABLE                         R6 R7 R5
       25 GETTABLEKS                       R6 R6 K3 ["filename"]
       27 JUMPIFEQ                         R6 R2 ; [+3]
       29 LOADNIL                          R6
       30 RETURN                           R6 1
       31 FORNLOOP                         R3
       32 RETURN                           R2 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K2 [table.clone]
        7 GETTABLEKS                       R2 R0 K3 ["sourceIndexToClipNumbers"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["sourceIndexToClipNumbers"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R0 K4 ["selection"]
       15 CALL                             R1 1 2
       16 MOVE                             R5 R1
       17 MOVE                             R3 R2
       18 LOADN                            R4 1
       19 FORNPREP                         R3
       20 GETTABLEKS                       R6 R0 K3 ["sourceIndexToClipNumbers"]
       22 GETUPVAL                         R7 1
       23 SETTABLE                         R7 R6 R5
       24 FORNLOOP                         R3
       25 GETUPVAL                         R3 2
       26 MOVE                             R4 R0
       27 CALL                             R3 1 0
       28 RETURN                           R0 1

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["UIBLOX-3576"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["setImporterState"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["importerState"]
        5 GETTABLEKS                       R1 R1 K1 ["clips"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 DUPTABLE                         R8 K4 [{"id", "text"}]
       11 GETTABLEKS                       R9 R5 K5 ["number"]
       13 SETTABLEKS                       R9 R8 K2 ["id"]
       15 GETTABLEKS                       R9 R5 K6 ["name"]
       17 SETTABLEKS                       R9 R8 K3 ["text"]
       19 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       21 MOVE                             R7 R0
       22 GETIMPORT                        R6 K9 [table.insert]
       24 CALL                             R6 2 0
       25 FORGLOOP                         R1 2 ; [-16]
       27 RETURN                           R0 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K2 [table.clone]
        7 GETTABLEKS                       R2 R0 K3 ["clips"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["clips"]
       12 NEWTABLE                         R1 0 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R3 R0 K4 ["selection"]
       17 CALL                             R2 1 2
       18 MOVE                             R6 R2
       19 MOVE                             R4 R3
       20 LOADN                            R5 1
       21 FORNPREP                         R4
       22 GETTABLEKS                       R8 R0 K5 ["sourceIndexToClipNumbers"]
       24 GETTABLE                         R7 R8 R6
       25 LOADB                            R8 1
       26 SETTABLE                         R8 R1 R7
       27 FORNLOOP                         R4
       28 GETTABLEKS                       R4 R0 K3 ["clips"]
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 GETTABLEKS                       R10 R8 K6 ["number"]
       35 GETTABLE                         R9 R1 R10
       36 JUMPIFNOT                        R9 ; [+15]
       37 GETTABLEKS                       R9 R0 K3 ["clips"]
       39 GETIMPORT                        R10 K2 [table.clone]
       41 GETTABLEKS                       R12 R0 K3 ["clips"]
       43 GETTABLE                         R11 R12 R7
       44 CALL                             R10 1 1
       45 SETTABLE                         R10 R9 R7
       46 GETTABLEKS                       R10 R0 K3 ["clips"]
       48 GETTABLE                         R9 R10 R7
       49 GETUPVAL                         R10 1
       50 SETTABLEKS                       R10 R9 K7 ["fps"]
       52 FORGLOOP                         R4 2 ; [-20]
       54 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setImporterState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Contexts"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETTABLEKS                       R2 R2 K3 ["Context"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R3 R0 K4 ["importerState"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["useEventCallback"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R6 0 3
       32 GETTABLEKS                       R7 R0 K4 ["importerState"]
       34 GETTABLEKS                       R7 R7 K7 ["clips"]
       36 GETTABLEKS                       R8 R0 K4 ["importerState"]
       38 GETTABLEKS                       R8 R8 K8 ["selection"]
       40 GETTABLEKS                       R9 R0 K4 ["importerState"]
       42 GETTABLEKS                       R9 R9 K9 ["sourceIndexToClipNumbers"]
       44 SETLIST                          R6 R7 3 [1]
       46 CALL                             R4 2 1
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       50 NEWCLOSURE                       R6 P2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U4
       53 NEWTABLE                         R7 0 3
       55 GETTABLEKS                       R8 R0 K4 ["importerState"]
       57 GETTABLEKS                       R8 R8 K7 ["clips"]
       59 GETTABLEKS                       R9 R0 K4 ["importerState"]
       61 GETTABLEKS                       R9 R9 K8 ["selection"]
       63 GETTABLEKS                       R10 R0 K4 ["importerState"]
       65 GETTABLEKS                       R10 R10 K9 ["sourceIndexToClipNumbers"]
       67 SETLIST                          R7 R8 3 [1]
       69 CALL                             R5 2 1
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       73 NEWCLOSURE                       R7 P3
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R8 0 2
       78 GETTABLEKS                       R9 R0 K4 ["importerState"]
       80 GETTABLEKS                       R9 R9 K10 ["sources"]
       82 GETTABLEKS                       R10 R0 K4 ["importerState"]
       84 GETTABLEKS                       R10 R10 K8 ["selection"]
       86 SETLIST                          R8 R9 2 [1]
       88 CALL                             R6 2 1
       89 GETUPVAL                         R7 3
       90 GETTABLEKS                       R7 R7 K5 ["useEventCallback"]
       92 NEWCLOSURE                       R8 P4
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U6
       96 CALL                             R7 1 1
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R8 R8 K6 ["useMemo"]
      100 NEWCLOSURE                       R9 P5
      101 CAPTURE                          VAL R0
      102 NEWTABLE                         R10 0 1
      104 GETTABLEKS                       R11 R0 K4 ["importerState"]
      106 GETTABLEKS                       R11 R11 K7 ["clips"]
      108 SETLIST                          R10 R11 1 [1]
      110 CALL                             R8 2 1
      111 GETUPVAL                         R9 3
      112 GETTABLEKS                       R9 R9 K5 ["useEventCallback"]
      114 NEWCLOSURE                       R10 P6
      115 CAPTURE                          VAL R0
      116 CAPTURE                          UPVAL U4
      117 CALL                             R9 1 1
      118 GETUPVAL                         R10 3
      119 GETTABLEKS                       R10 R10 K11 ["createNextOrder"]
      121 CALL                             R10 0 1
      122 GETUPVAL                         R11 0
      123 GETTABLEKS                       R11 R11 K12 ["createElement"]
      125 GETUPVAL                         R12 7
      126 GETTABLEKS                       R12 R12 K13 ["View"]
      128 DUPTABLE                         R13 K16 [{["tag"] = "col size-full-full"}]
      129 DUPTABLE                         R14 K26 [{"Preview", "Gap1", "PlaybackControls", "Gap2", "ClipControls", "Gap3", "MetadataDivider", "ClipFPS", "Filename"}]
      130 GETUPVAL                         R15 0
      131 GETTABLEKS                       R15 R15 K12 ["createElement"]
      133 GETUPVAL                         R16 8
      134 DUPTABLE                         R17 K29 [{"layoutOrder", "playback"}]
      135 MOVE                             R18 R10
      136 CALL                             R18 0 1
      137 SETTABLEKS                       R18 R17 K27 ["layoutOrder"]
      139 SETTABLEKS                       R2 R17 K28 ["playback"]
      141 CALL                             R15 2 1
      142 SETTABLEKS                       R15 R14 K17 ["Preview"]
      144 GETUPVAL                         R15 0
      145 GETTABLEKS                       R15 R15 K12 ["createElement"]
      147 GETUPVAL                         R16 7
      148 GETTABLEKS                       R16 R16 K13 ["View"]
      150 DUPTABLE                         R17 K32 [{["tag"] = "size-0-200", ["LayoutOrder"]}]
      151 MOVE                             R18 R10
      152 CALL                             R18 0 1
      153 SETTABLEKS                       R18 R17 K31 ["LayoutOrder"]
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K18 ["Gap1"]
      158 GETUPVAL                         R15 0
      159 GETTABLEKS                       R15 R15 K12 ["createElement"]
      161 GETUPVAL                         R16 9
      162 DUPTABLE                         R17 K33 [{"playback", "layoutOrder"}]
      163 SETTABLEKS                       R2 R17 K28 ["playback"]
      165 MOVE                             R18 R10
      166 CALL                             R18 0 1
      167 SETTABLEKS                       R18 R17 K27 ["layoutOrder"]
      169 CALL                             R15 2 1
      170 SETTABLEKS                       R15 R14 K19 ["PlaybackControls"]
      172 GETUPVAL                         R15 0
      173 GETTABLEKS                       R15 R15 K12 ["createElement"]
      175 GETUPVAL                         R16 7
      176 GETTABLEKS                       R16 R16 K13 ["View"]
      178 DUPTABLE                         R17 K32 [{["tag"] = "size-0-200", ["LayoutOrder"]}]
      179 MOVE                             R18 R10
      180 CALL                             R18 0 1
      181 SETTABLEKS                       R18 R17 K31 ["LayoutOrder"]
      183 CALL                             R15 2 1
      184 SETTABLEKS                       R15 R14 K20 ["Gap2"]
      186 GETUPVAL                         R15 0
      187 GETTABLEKS                       R15 R15 K12 ["createElement"]
      189 GETUPVAL                         R16 7
      190 GETTABLEKS                       R16 R16 K13 ["View"]
      192 DUPTABLE                         R17 K35 [{["tag"] = "row size-full-800 gap-small", ["LayoutOrder"]}]
      193 MOVE                             R18 R10
      194 CALL                             R18 0 1
      195 SETTABLEKS                       R18 R17 K31 ["LayoutOrder"]
      197 DUPTABLE                         R18 K38 [{"ClipSelector", "NewClipButton"}]
      198 GETUPVAL                         R19 0
      199 GETTABLEKS                       R19 R19 K12 ["createElement"]
      201 GETUPVAL                         R20 7
      202 GETTABLEKS                       R20 R20 K13 ["View"]
      204 DUPTABLE                         R21 K40 [{["tag"] = "size-0-full fill", ["LayoutOrder"]}]
      205 MOVE                             R22 R10
      206 CALL                             R22 0 1
      207 SETTABLEKS                       R22 R21 K31 ["LayoutOrder"]
      209 GETUPVAL                         R22 0
      210 GETTABLEKS                       R22 R22 K12 ["createElement"]
      212 GETUPVAL                         R23 7
      213 GETTABLEKS                       R23 R23 K41 ["Dropdown"]
      215 GETTABLEKS                       R23 R23 K42 ["Root"]
      217 DUPTABLE                         R24 K53 [{["label"] = "", ["testId"] = "ClipSelector", ["value"], ["placeholder"] = "Multiple", ["width"], ["size"], ["onItemChanged"], ["items"]}]
      218 SETTABLEKS                       R4 R24 K46 ["value"]
      220 GETIMPORT                        R25 K56 [UDim.new]
      222 LOADN                            R26 1
      223 LOADN                            R27 0
      224 CALL                             R25 2 1
      225 SETTABLEKS                       R25 R24 K49 ["width"]
      227 GETUPVAL                         R25 7
      228 GETTABLEKS                       R25 R25 K57 ["Enums"]
      230 GETTABLEKS                       R25 R25 K58 ["InputSize"]
      232 GETTABLEKS                       R25 R25 K59 ["Small"]
      234 SETTABLEKS                       R25 R24 K50 ["size"]
      236 SETTABLEKS                       R7 R24 K51 ["onItemChanged"]
      238 SETTABLEKS                       R8 R24 K52 ["items"]
      240 CALL                             R22 2 -1
      241 CALL                             R19 -1 1
      242 SETTABLEKS                       R19 R18 K36 ["ClipSelector"]
      244 GETUPVAL                         R19 0
      245 GETTABLEKS                       R19 R19 K12 ["createElement"]
      247 GETUPVAL                         R20 7
      248 GETTABLEKS                       R20 R20 K60 ["Button"]
      250 DUPTABLE                         R21 K66 [{"text", "icon", "variant", "size", "fillBehavior", "onActivated", "LayoutOrder"}]
      251 LOADK                            R24 K67 ["Importer"]
      252 LOADK                            R25 K68 ["NewClip"]
      253 NAMECALL                         R22 R1 K69 ["getText"]
      255 CALL                             R22 3 1
      256 SETTABLEKS                       R22 R21 K61 ["text"]
      258 GETUPVAL                         R22 7
      259 GETTABLEKS                       R22 R22 K57 ["Enums"]
      261 GETTABLEKS                       R22 R22 K70 ["IconName"]
      263 GETTABLEKS                       R22 R22 K71 ["PlusLarge"]
      265 SETTABLEKS                       R22 R21 K62 ["icon"]
      267 GETUPVAL                         R22 7
      268 GETTABLEKS                       R22 R22 K57 ["Enums"]
      270 GETTABLEKS                       R22 R22 K72 ["ButtonVariant"]
      272 GETTABLEKS                       R22 R22 K73 ["Standard"]
      274 SETTABLEKS                       R22 R21 K63 ["variant"]
      276 GETUPVAL                         R22 7
      277 GETTABLEKS                       R22 R22 K57 ["Enums"]
      279 GETTABLEKS                       R22 R22 K58 ["InputSize"]
      281 GETTABLEKS                       R22 R22 K59 ["Small"]
      283 SETTABLEKS                       R22 R21 K50 ["size"]
      285 GETUPVAL                         R22 7
      286 GETTABLEKS                       R22 R22 K57 ["Enums"]
      288 GETTABLEKS                       R22 R22 K74 ["FillBehavior"]
      290 GETTABLEKS                       R22 R22 K75 ["Fit"]
      292 SETTABLEKS                       R22 R21 K64 ["fillBehavior"]
      294 SETTABLEKS                       R3 R21 K65 ["onActivated"]
      296 MOVE                             R22 R10
      297 CALL                             R22 0 1
      298 SETTABLEKS                       R22 R21 K31 ["LayoutOrder"]
      300 CALL                             R19 2 1
      301 SETTABLEKS                       R19 R18 K37 ["NewClipButton"]
      303 CALL                             R15 3 1
      304 SETTABLEKS                       R15 R14 K21 ["ClipControls"]
      306 GETUPVAL                         R15 0
      307 GETTABLEKS                       R15 R15 K12 ["createElement"]
      309 GETUPVAL                         R16 7
      310 GETTABLEKS                       R16 R16 K13 ["View"]
      312 DUPTABLE                         R17 K77 [{["tag"] = "size-0-400", ["LayoutOrder"]}]
      313 MOVE                             R18 R10
      314 CALL                             R18 0 1
      315 SETTABLEKS                       R18 R17 K31 ["LayoutOrder"]
      317 CALL                             R15 2 1
      318 SETTABLEKS                       R15 R14 K22 ["Gap3"]
      320 GETUPVAL                         R15 0
      321 GETTABLEKS                       R15 R15 K12 ["createElement"]
      323 GETUPVAL                         R16 7
      324 GETTABLEKS                       R16 R16 K78 ["Divider"]
      326 DUPTABLE                         R17 K80 [{"orientation", "LayoutOrder"}]
      327 GETUPVAL                         R18 7
      328 GETTABLEKS                       R18 R18 K57 ["Enums"]
      330 GETTABLEKS                       R18 R18 K81 ["Orientation"]
      332 GETTABLEKS                       R18 R18 K82 ["Horizontal"]
      334 SETTABLEKS                       R18 R17 K79 ["orientation"]
      336 MOVE                             R18 R10
      337 CALL                             R18 0 1
      338 SETTABLEKS                       R18 R17 K31 ["LayoutOrder"]
      340 CALL                             R15 2 1
      341 SETTABLEKS                       R15 R14 K23 ["MetadataDivider"]
      343 GETUPVAL                         R15 0
      344 GETTABLEKS                       R15 R15 K12 ["createElement"]
      346 GETUPVAL                         R16 10
      347 DUPTABLE                         R17 K88 [{["text"], ["layoutOrder"], ["onChanged"], ["value"], ["suffix"] = "FPS", ["minimum"] = 1}]
      348 LOADK                            R20 K67 ["Importer"]
      349 LOADK                            R21 K24 ["ClipFPS"]
      350 NAMECALL                         R18 R1 K69 ["getText"]
      352 CALL                             R18 3 1
      353 SETTABLEKS                       R18 R17 K61 ["text"]
      355 MOVE                             R18 R10
      356 CALL                             R18 0 1
      357 SETTABLEKS                       R18 R17 K27 ["layoutOrder"]
      359 SETTABLEKS                       R9 R17 K83 ["onChanged"]
      361 SETTABLEKS                       R5 R17 K46 ["value"]
      363 CALL                             R15 2 1
      364 SETTABLEKS                       R15 R14 K24 ["ClipFPS"]
      366 GETUPVAL                         R15 0
      367 GETTABLEKS                       R15 R15 K12 ["createElement"]
      369 GETUPVAL                         R16 11
      370 DUPTABLE                         R17 K89 [{"text", "layoutOrder"}]
      371 LOADK                            R20 K67 ["Importer"]
      372 LOADK                            R21 K25 ["Filename"]
      373 NAMECALL                         R18 R1 K69 ["getText"]
      375 CALL                             R18 3 1
      376 SETTABLEKS                       R18 R17 K61 ["text"]
      378 MOVE                             R18 R10
      379 CALL                             R18 0 1
      380 SETTABLEKS                       R18 R17 K27 ["layoutOrder"]
      382 DUPTABLE                         R18 K91 [{"Label"}]
      383 GETUPVAL                         R19 0
      384 GETTABLEKS                       R19 R19 K12 ["createElement"]
      386 GETUPVAL                         R20 7
      387 GETTABLEKS                       R20 R20 K92 ["Text"]
      389 DUPTABLE                         R21 K94 [{["Text"], ["testId"] = "Filename", ["tag"] = "text-body-small auto-y size-full-0 text-truncate-split text-align-x-left"}]
      390 MOVE                             R22 R6
      391 JUMPIF                           R22 ; [+5]
      392 LOADK                            R24 K95 ["Common"]
      393 LOADK                            R25 K48 ["Multiple"]
      394 NAMECALL                         R22 R1 K69 ["getText"]
      396 CALL                             R22 3 1
      397 SETTABLEKS                       R22 R21 K92 ["Text"]
      399 CALL                             R19 2 1
      400 SETTABLEKS                       R19 R18 K90 ["Label"]
      402 CALL                             R15 3 1
      403 SETTABLEKS                       R15 R14 K25 ["Filename"]
      405 CALL                             R11 3 -1
      406 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["MetadataNumberInput"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Components"]
       36 GETTABLEKS                       R5 R5 K12 ["MetadataRow"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Components"]
       45 GETTABLEKS                       R6 R6 K13 ["Importer"]
       47 GETTABLEKS                       R6 R6 K14 ["PlaybackControls"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K10 ["Components"]
       56 GETTABLEKS                       R7 R7 K13 ["Importer"]
       58 GETTABLEKS                       R7 R7 K15 ["Preview"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K8 ["Packages"]
       65 GETTABLEKS                       R8 R8 K16 ["React"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Packages"]
       72 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K8 ["Packages"]
       79 GETTABLEKS                       R10 R10 K18 ["StudioFoundation"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K6 ["Src"]
       86 GETTABLEKS                       R11 R11 K19 ["Types"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K6 ["Src"]
       93 GETTABLEKS                       R12 R12 K20 ["Libraries"]
       95 GETTABLEKS                       R12 R12 K21 ["minMax"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K6 ["Src"]
      102 GETTABLEKS                       R13 R13 K10 ["Components"]
      104 GETTABLEKS                       R13 R13 K13 ["Importer"]
      106 GETTABLEKS                       R13 R13 K22 ["usePlayback"]
      108 CALL                             R12 1 1
      109 DUPCLOSURE                       R13 K23 [PROTO_0]
      110 DUPCLOSURE                       R14 K24 [PROTO_11]
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R4
      123 RETURN                           R14 1
