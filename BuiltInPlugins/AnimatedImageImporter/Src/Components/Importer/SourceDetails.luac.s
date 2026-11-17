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
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["selection"]
       16 CALL                             R1 1 2
       17 JUMPIFEQ                         R1 R2 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 JUMPIFNOT                        R3 ; [+17]
       22 GETTABLEKS                       R5 R0 K5 ["sourceIndexToClipNumbers"]
       24 GETTABLE                         R4 R5 R1
       25 ADDK                             R5 R2 K6 [1]
       26 GETTABLEKS                       R7 R0 K7 ["sources"]
       28 LENGTH                           R6 R7
       29 JUMPIFNOTLE                      R5 R6 ; [+9]
       31 GETTABLEKS                       R6 R0 K5 ["sourceIndexToClipNumbers"]
       33 ADDK                             R7 R2 K6 [1]
       34 GETTABLE                         R5 R6 R7
       35 JUMPIFNOTEQ                      R5 R4 ; [+3]
       37 ADDK                             R2 R2 K6 [1]
       38 JUMPBACK                         ; [-14]
       39 GETTABLEKS                       R5 R0 K5 ["sourceIndexToClipNumbers"]
       41 GETTABLE                         R4 R5 R2
       42 JUMPIFNOTEQKNIL                  R4 ; [+4]
       44 GETTABLEKS                       R5 R0 K8 ["unclippedFps"]
       46 JUMP                             ; [+3]
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R5 R5 K9 ["defaultFps"]
       50 LOADN                            R6 0
       51 GETTABLEKS                       R7 R0 K3 ["clips"]
       53 LOADNIL                          R8
       54 LOADNIL                          R9
       55 FORGPREP                         R7
       56 GETTABLEKS                       R14 R11 K10 ["number"]
       58 FASTCALL2                        MATH_MAX R6 R14 ; [+4]
       60 MOVE                             R13 R6
       61 GETIMPORT                        R12 K13 [math.max]
       63 CALL                             R12 2 1
       64 MOVE                             R6 R12
       65 GETTABLEKS                       R12 R11 K10 ["number"]
       67 JUMPIFNOTEQ                      R12 R4 ; [+3]
       69 GETTABLEKS                       R5 R11 K14 ["fps"]
       71 FORGLOOP                         R7 2 ; [-16]
       73 GETTABLEKS                       R8 R0 K3 ["clips"]
       75 DUPTABLE                         R9 K16 [{"name", "number", "fps"}]
       76 LOADK                            R10 K17 ["Clip %*"]
       77 ADDK                             R12 R6 K6 [1]
       78 NAMECALL                         R10 R10 K18 ["format"]
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K15 ["name"]
       83 ADDK                             R10 R6 K6 [1]
       84 SETTABLEKS                       R10 R9 K10 ["number"]
       86 SETTABLEKS                       R5 R9 K14 ["fps"]
       88 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       90 GETIMPORT                        R7 K20 [table.insert]
       92 CALL                             R7 2 0
       93 GETIMPORT                        R7 K2 [table.clone]
       95 GETTABLEKS                       R8 R0 K5 ["sourceIndexToClipNumbers"]
       97 CALL                             R7 1 1
       98 SETTABLEKS                       R7 R0 K5 ["sourceIndexToClipNumbers"]
      100 MOVE                             R9 R1
      101 MOVE                             R7 R2
      102 LOADN                            R8 1
      103 FORNPREP                         R7
      104 GETTABLEKS                       R10 R0 K5 ["sourceIndexToClipNumbers"]
      106 ADDK                             R11 R6 K6 [1]
      107 SETTABLE                         R11 R10 R9
      108 FORNLOOP                         R7
      109 GETUPVAL                         R7 3
      110 MOVE                             R8 R0
      111 CALL                             R7 1 0
      112 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["importerStateHistory"]
        3 GETTABLEKS                       R0 R0 K1 ["set"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["selection"]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["importerState"]
        8 GETTABLEKS                       R3 R3 K2 ["sourceIndexToClipNumbers"]
       10 GETTABLE                         R2 R3 R0
       11 ADDK                             R5 R0 K3 [1]
       12 MOVE                             R3 R1
       13 LOADN                            R4 1
       14 FORNPREP                         R3
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K1 ["importerState"]
       18 GETTABLEKS                       R7 R7 K2 ["sourceIndexToClipNumbers"]
       20 GETTABLE                         R6 R7 R5
       21 JUMPIFEQ                         R6 R2 ; [+3]
       23 DUPTABLE                         R6 K6 [{["type"] = "multiple"}]
       24 RETURN                           R6 1
       25 FORNLOOP                         R3
       26 JUMPIFNOTEQKNIL                  R2 ; [+3]
       28 DUPTABLE                         R3 K8 [{["type"] = "none"}]
       29 RETURN                           R3 1
       30 DUPTABLE                         R3 K11 [{["type"] = "single", ["number"]}]
       31 SETTABLEKS                       R2 R3 K10 ["number"]
       33 RETURN                           R3 1

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
       19 GETTABLEKS                       R2 R2 K4 ["selection"]
       21 CALL                             R1 1 2
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K0 ["importerState"]
       25 GETTABLEKS                       R4 R4 K5 ["sourceIndexToClipNumbers"]
       27 GETTABLE                         R3 R4 R1
       28 JUMPIFNOT                        R3 ; [+2]
       29 GETTABLE                         R4 R0 R3
       30 JUMP                             ; [+5]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["importerState"]
       34 GETTABLEKS                       R4 R4 K6 ["unclippedFps"]
       36 ADDK                             R7 R1 K7 [1]
       37 MOVE                             R5 R2
       38 LOADN                            R6 1
       39 FORNPREP                         R5
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K0 ["importerState"]
       43 GETTABLEKS                       R9 R9 K5 ["sourceIndexToClipNumbers"]
       45 GETTABLE                         R8 R9 R7
       46 JUMPIFNOTEQKNIL                  R8 ; [+11]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K0 ["importerState"]
       51 GETTABLEKS                       R9 R9 K6 ["unclippedFps"]
       53 JUMPIFEQ                         R4 R9 ; [+9]
       55 LOADNIL                          R9
       56 RETURN                           R9 1
       57 JUMP                             ; [+5]
       58 GETTABLE                         R9 R0 R8
       59 JUMPIFEQ                         R9 R4 ; [+3]
       61 LOADNIL                          R9
       62 RETURN                           R9 1
       63 FORNLOOP                         R5
       64 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["selection"]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["importerState"]
        8 GETTABLEKS                       R3 R3 K2 ["sources"]
       10 GETTABLE                         R2 R3 R0
       11 GETTABLEKS                       R2 R2 K3 ["filename"]
       13 ADDK                             R5 R0 K4 [1]
       14 MOVE                             R3 R1
       15 LOADN                            R4 1
       16 FORNPREP                         R3
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K1 ["importerState"]
       20 GETTABLEKS                       R7 R7 K2 ["sources"]
       22 GETTABLE                         R6 R7 R5
       23 GETTABLEKS                       R6 R6 K3 ["filename"]
       25 JUMPIFEQ                         R6 R2 ; [+3]
       27 LOADNIL                          R6
       28 RETURN                           R6 1
       29 FORNLOOP                         R3
       30 RETURN                           R2 1

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
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["selection"]
       16 CALL                             R1 1 2
       17 MOVE                             R5 R1
       18 MOVE                             R3 R2
       19 LOADN                            R4 1
       20 FORNPREP                         R3
       21 GETTABLEKS                       R6 R0 K3 ["sourceIndexToClipNumbers"]
       23 GETUPVAL                         R7 2
       24 SETTABLE                         R7 R6 R5
       25 FORNLOOP                         R3
       26 GETUPVAL                         R3 3
       27 MOVE                             R4 R0
       28 CALL                             R3 1 0
       29 RETURN                           R0 1

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
       16 GETTABLEKS                       R1 R1 K6 ["importerStateHistory"]
       18 GETTABLEKS                       R1 R1 K7 ["set"]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

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
        0 MOVE                             R2 R0
        1 GETIMPORT                        R3 K2 [table.clone]
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 MOVE                             R2 R3
        6 GETIMPORT                        R3 K2 [table.clone]
        8 GETTABLEKS                       R4 R2 K3 ["clips"]
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R3 R2 K3 ["clips"]
       13 NEWTABLE                         R3 0 0
       15 GETUPVAL                         R4 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K4 ["selection"]
       19 CALL                             R4 1 2
       20 LOADB                            R6 0
       21 MOVE                             R9 R4
       22 MOVE                             R7 R5
       23 LOADN                            R8 1
       24 FORNPREP                         R7
       25 GETTABLEKS                       R11 R2 K5 ["sourceIndexToClipNumbers"]
       27 GETTABLE                         R10 R11 R9
       28 JUMPIFNOTEQKNIL                  R10 ; [+3]
       30 LOADB                            R6 1
       31 JUMP                             ; [+2]
       32 LOADB                            R11 1
       33 SETTABLE                         R11 R3 R10
       34 FORNLOOP                         R7
       35 LOADB                            R7 0
       36 GETTABLEKS                       R8 R2 K3 ["clips"]
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 GETTABLEKS                       R14 R12 K6 ["number"]
       43 GETTABLE                         R13 R3 R14
       44 JUMPIFNOT                        R13 ; [+22]
       45 GETTABLEKS                       R14 R2 K3 ["clips"]
       47 GETTABLE                         R13 R14 R11
       48 GETTABLEKS                       R13 R13 K7 ["fps"]
       50 JUMPIFEQ                         R13 R1 ; [+16]
       52 LOADB                            R7 1
       53 GETTABLEKS                       R13 R2 K3 ["clips"]
       55 GETIMPORT                        R14 K2 [table.clone]
       57 GETTABLEKS                       R16 R2 K3 ["clips"]
       59 GETTABLE                         R15 R16 R11
       60 CALL                             R14 1 1
       61 SETTABLE                         R14 R13 R11
       62 GETTABLEKS                       R14 R2 K3 ["clips"]
       64 GETTABLE                         R13 R14 R11
       65 SETTABLEKS                       R1 R13 K7 ["fps"]
       67 FORGLOOP                         R8 2 ; [-27]
       69 JUMPIFNOT                        R6 ; [+7]
       70 GETTABLEKS                       R8 R2 K8 ["unclippedFps"]
       72 JUMPIFEQ                         R8 R1 ; [+4]
       74 LOADB                            R7 1
       75 SETTABLEKS                       R1 R2 K8 ["unclippedFps"]
       77 JUMPIF                           R7 ; [+1]
       78 RETURN                           R0 1
       79 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Contexts"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETTABLEKS                       R2 R2 K3 ["Context"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R3 R0 K4 ["importerState"]
       14 GETTABLEKS                       R4 R0 K5 ["selection"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K6 ["useEventCallback"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K7 ["useMemo"]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R6 0 3
       34 GETTABLEKS                       R7 R0 K4 ["importerState"]
       36 GETTABLEKS                       R7 R7 K8 ["clips"]
       38 GETTABLEKS                       R8 R0 K5 ["selection"]
       40 GETTABLEKS                       R9 R0 K4 ["importerState"]
       42 GETTABLEKS                       R9 R9 K9 ["sourceIndexToClipNumbers"]
       44 SETLIST                          R6 R7 3 [1]
       46 CALL                             R4 2 1
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K7 ["useMemo"]
       50 NEWCLOSURE                       R6 P2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U4
       53 NEWTABLE                         R7 0 4
       55 GETTABLEKS                       R8 R0 K4 ["importerState"]
       57 GETTABLEKS                       R8 R8 K8 ["clips"]
       59 GETTABLEKS                       R9 R0 K5 ["selection"]
       61 GETTABLEKS                       R10 R0 K4 ["importerState"]
       63 GETTABLEKS                       R10 R10 K9 ["sourceIndexToClipNumbers"]
       65 GETTABLEKS                       R11 R0 K4 ["importerState"]
       67 GETTABLEKS                       R11 R11 K10 ["unclippedFps"]
       69 SETLIST                          R7 R8 4 [1]
       71 CALL                             R5 2 1
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       75 NEWCLOSURE                       R7 P3
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          VAL R0
       78 NEWTABLE                         R8 0 2
       80 GETTABLEKS                       R9 R0 K4 ["importerState"]
       82 GETTABLEKS                       R9 R9 K11 ["sources"]
       84 GETTABLEKS                       R10 R0 K5 ["selection"]
       86 SETLIST                          R8 R9 2 [1]
       88 CALL                             R6 2 1
       89 GETUPVAL                         R7 3
       90 GETTABLEKS                       R7 R7 K6 ["useEventCallback"]
       92 NEWCLOSURE                       R8 P4
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U6
       96 CALL                             R7 1 1
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R8 R8 K7 ["useMemo"]
      100 NEWCLOSURE                       R9 P5
      101 CAPTURE                          VAL R0
      102 NEWTABLE                         R10 0 1
      104 GETTABLEKS                       R11 R0 K4 ["importerState"]
      106 GETTABLEKS                       R11 R11 K8 ["clips"]
      108 SETLIST                          R10 R11 1 [1]
      110 CALL                             R8 2 1
      111 GETUPVAL                         R9 3
      112 GETTABLEKS                       R9 R9 K6 ["useEventCallback"]
      114 NEWCLOSURE                       R10 P6
      115 CAPTURE                          UPVAL U4
      116 CAPTURE                          VAL R0
      117 CALL                             R9 1 1
      118 GETUPVAL                         R10 3
      119 GETTABLEKS                       R10 R10 K12 ["createNextOrder"]
      121 CALL                             R10 0 1
      122 GETUPVAL                         R11 0
      123 GETTABLEKS                       R11 R11 K13 ["createElement"]
      125 GETUPVAL                         R12 7
      126 GETTABLEKS                       R12 R12 K14 ["View"]
      128 DUPTABLE                         R13 K17 [{["tag"] = "col size-full-full"}]
      129 DUPTABLE                         R14 K27 [{"Preview", "Gap1", "PlaybackControls", "Gap2", "ClipControls", "Gap3", "MetadataDivider", "ClipFPS", "Filename"}]
      130 GETUPVAL                         R15 0
      131 GETTABLEKS                       R15 R15 K13 ["createElement"]
      133 GETUPVAL                         R16 8
      134 DUPTABLE                         R17 K30 [{"layoutOrder", "playback"}]
      135 MOVE                             R18 R10
      136 CALL                             R18 0 1
      137 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      139 SETTABLEKS                       R2 R17 K29 ["playback"]
      141 CALL                             R15 2 1
      142 SETTABLEKS                       R15 R14 K18 ["Preview"]
      144 GETUPVAL                         R15 0
      145 GETTABLEKS                       R15 R15 K13 ["createElement"]
      147 GETUPVAL                         R16 7
      148 GETTABLEKS                       R16 R16 K14 ["View"]
      150 DUPTABLE                         R17 K33 [{["tag"] = "size-0-200", ["LayoutOrder"]}]
      151 MOVE                             R18 R10
      152 CALL                             R18 0 1
      153 SETTABLEKS                       R18 R17 K32 ["LayoutOrder"]
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K19 ["Gap1"]
      158 GETUPVAL                         R15 0
      159 GETTABLEKS                       R15 R15 K13 ["createElement"]
      161 GETUPVAL                         R16 9
      162 DUPTABLE                         R17 K34 [{"playback", "layoutOrder"}]
      163 SETTABLEKS                       R2 R17 K29 ["playback"]
      165 MOVE                             R18 R10
      166 CALL                             R18 0 1
      167 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      169 CALL                             R15 2 1
      170 SETTABLEKS                       R15 R14 K20 ["PlaybackControls"]
      172 GETUPVAL                         R15 0
      173 GETTABLEKS                       R15 R15 K13 ["createElement"]
      175 GETUPVAL                         R16 7
      176 GETTABLEKS                       R16 R16 K14 ["View"]
      178 DUPTABLE                         R17 K33 [{["tag"] = "size-0-200", ["LayoutOrder"]}]
      179 MOVE                             R18 R10
      180 CALL                             R18 0 1
      181 SETTABLEKS                       R18 R17 K32 ["LayoutOrder"]
      183 CALL                             R15 2 1
      184 SETTABLEKS                       R15 R14 K21 ["Gap2"]
      186 GETUPVAL                         R15 0
      187 GETTABLEKS                       R15 R15 K13 ["createElement"]
      189 GETUPVAL                         R16 7
      190 GETTABLEKS                       R16 R16 K14 ["View"]
      192 DUPTABLE                         R17 K36 [{["tag"] = "row size-full-800 gap-small", ["LayoutOrder"]}]
      193 MOVE                             R18 R10
      194 CALL                             R18 0 1
      195 SETTABLEKS                       R18 R17 K32 ["LayoutOrder"]
      197 DUPTABLE                         R18 K39 [{"ClipSelector", "NewClipButton"}]
      198 GETUPVAL                         R19 0
      199 GETTABLEKS                       R19 R19 K13 ["createElement"]
      201 GETUPVAL                         R20 7
      202 GETTABLEKS                       R20 R20 K14 ["View"]
      204 DUPTABLE                         R21 K41 [{["tag"] = "size-0-full fill", ["LayoutOrder"]}]
      205 MOVE                             R22 R10
      206 CALL                             R22 0 1
      207 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      209 GETUPVAL                         R22 0
      210 GETTABLEKS                       R22 R22 K13 ["createElement"]
      212 GETUPVAL                         R23 7
      213 GETTABLEKS                       R23 R23 K42 ["Dropdown"]
      215 GETTABLEKS                       R23 R23 K43 ["Root"]
      217 DUPTABLE                         R24 K53 [{["label"] = "", ["testId"] = "ClipSelector", ["value"], ["placeholder"], ["width"], ["size"], ["onItemChanged"], ["items"]}]
      218 GETTABLEKS                       R26 R4 K54 ["type"]
      220 JUMPIFNOTEQKS                    R26 K55 ["single"] ; [+4]
      222 GETTABLEKS                       R25 R4 K56 ["number"]
      224 JUMP                             ; [+1]
      225 LOADNIL                          R25
      226 SETTABLEKS                       R25 R24 K47 ["value"]
      228 GETTABLEKS                       R26 R4 K54 ["type"]
      230 JUMPIFNOTEQKS                    R26 K57 ["multiple"] ; [+7]
      232 LOADK                            R27 K58 ["Common"]
      233 LOADK                            R28 K59 ["Multiple"]
      234 NAMECALL                         R25 R1 K60 ["getText"]
      236 CALL                             R25 3 1
      237 JUMP                             ; [+1]
      238 LOADK                            R25 K45 [""]
      239 SETTABLEKS                       R25 R24 K48 ["placeholder"]
      241 GETIMPORT                        R25 K63 [UDim.new]
      243 LOADN                            R26 1
      244 LOADN                            R27 0
      245 CALL                             R25 2 1
      246 SETTABLEKS                       R25 R24 K49 ["width"]
      248 GETUPVAL                         R25 7
      249 GETTABLEKS                       R25 R25 K64 ["Enums"]
      251 GETTABLEKS                       R25 R25 K65 ["InputSize"]
      253 GETTABLEKS                       R25 R25 K66 ["Small"]
      255 SETTABLEKS                       R25 R24 K50 ["size"]
      257 SETTABLEKS                       R7 R24 K51 ["onItemChanged"]
      259 SETTABLEKS                       R8 R24 K52 ["items"]
      261 CALL                             R22 2 -1
      262 CALL                             R19 -1 1
      263 SETTABLEKS                       R19 R18 K37 ["ClipSelector"]
      265 GETUPVAL                         R19 0
      266 GETTABLEKS                       R19 R19 K13 ["createElement"]
      268 GETUPVAL                         R20 7
      269 GETTABLEKS                       R20 R20 K67 ["Button"]
      271 DUPTABLE                         R21 K73 [{"text", "icon", "variant", "size", "fillBehavior", "onActivated", "LayoutOrder"}]
      272 LOADK                            R24 K74 ["Importer"]
      273 LOADK                            R25 K75 ["NewClip"]
      274 NAMECALL                         R22 R1 K60 ["getText"]
      276 CALL                             R22 3 1
      277 SETTABLEKS                       R22 R21 K68 ["text"]
      279 GETUPVAL                         R22 7
      280 GETTABLEKS                       R22 R22 K64 ["Enums"]
      282 GETTABLEKS                       R22 R22 K76 ["IconName"]
      284 GETTABLEKS                       R22 R22 K77 ["PlusLarge"]
      286 SETTABLEKS                       R22 R21 K69 ["icon"]
      288 GETUPVAL                         R22 7
      289 GETTABLEKS                       R22 R22 K64 ["Enums"]
      291 GETTABLEKS                       R22 R22 K78 ["ButtonVariant"]
      293 GETTABLEKS                       R22 R22 K79 ["Standard"]
      295 SETTABLEKS                       R22 R21 K70 ["variant"]
      297 GETUPVAL                         R22 7
      298 GETTABLEKS                       R22 R22 K64 ["Enums"]
      300 GETTABLEKS                       R22 R22 K65 ["InputSize"]
      302 GETTABLEKS                       R22 R22 K66 ["Small"]
      304 SETTABLEKS                       R22 R21 K50 ["size"]
      306 GETUPVAL                         R22 7
      307 GETTABLEKS                       R22 R22 K64 ["Enums"]
      309 GETTABLEKS                       R22 R22 K80 ["FillBehavior"]
      311 GETTABLEKS                       R22 R22 K81 ["Fit"]
      313 SETTABLEKS                       R22 R21 K71 ["fillBehavior"]
      315 SETTABLEKS                       R3 R21 K72 ["onActivated"]
      317 MOVE                             R22 R10
      318 CALL                             R22 0 1
      319 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      321 CALL                             R19 2 1
      322 SETTABLEKS                       R19 R18 K38 ["NewClipButton"]
      324 CALL                             R15 3 1
      325 SETTABLEKS                       R15 R14 K22 ["ClipControls"]
      327 GETUPVAL                         R15 0
      328 GETTABLEKS                       R15 R15 K13 ["createElement"]
      330 GETUPVAL                         R16 7
      331 GETTABLEKS                       R16 R16 K14 ["View"]
      333 DUPTABLE                         R17 K83 [{["tag"] = "size-0-400", ["LayoutOrder"]}]
      334 MOVE                             R18 R10
      335 CALL                             R18 0 1
      336 SETTABLEKS                       R18 R17 K32 ["LayoutOrder"]
      338 CALL                             R15 2 1
      339 SETTABLEKS                       R15 R14 K23 ["Gap3"]
      341 GETUPVAL                         R15 0
      342 GETTABLEKS                       R15 R15 K13 ["createElement"]
      344 GETUPVAL                         R16 7
      345 GETTABLEKS                       R16 R16 K84 ["Divider"]
      347 DUPTABLE                         R17 K86 [{"orientation", "LayoutOrder"}]
      348 GETUPVAL                         R18 7
      349 GETTABLEKS                       R18 R18 K64 ["Enums"]
      351 GETTABLEKS                       R18 R18 K87 ["Orientation"]
      353 GETTABLEKS                       R18 R18 K88 ["Horizontal"]
      355 SETTABLEKS                       R18 R17 K85 ["orientation"]
      357 MOVE                             R18 R10
      358 CALL                             R18 0 1
      359 SETTABLEKS                       R18 R17 K32 ["LayoutOrder"]
      361 CALL                             R15 2 1
      362 SETTABLEKS                       R15 R14 K24 ["MetadataDivider"]
      364 GETUPVAL                         R15 0
      365 GETTABLEKS                       R15 R15 K13 ["createElement"]
      367 GETUPVAL                         R16 10
      368 DUPTABLE                         R17 K95 [{["text"], ["layoutOrder"], ["historyState"], ["getNextState"], ["value"], ["suffix"] = "FPS", ["minimum"] = 1}]
      369 LOADK                            R20 K74 ["Importer"]
      370 LOADK                            R21 K25 ["ClipFPS"]
      371 NAMECALL                         R18 R1 K60 ["getText"]
      373 CALL                             R18 3 1
      374 SETTABLEKS                       R18 R17 K68 ["text"]
      376 MOVE                             R18 R10
      377 CALL                             R18 0 1
      378 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      380 GETTABLEKS                       R18 R0 K96 ["importerStateHistory"]
      382 SETTABLEKS                       R18 R17 K89 ["historyState"]
      384 SETTABLEKS                       R9 R17 K90 ["getNextState"]
      386 SETTABLEKS                       R5 R17 K47 ["value"]
      388 CALL                             R15 2 1
      389 SETTABLEKS                       R15 R14 K25 ["ClipFPS"]
      391 GETUPVAL                         R15 0
      392 GETTABLEKS                       R15 R15 K13 ["createElement"]
      394 GETUPVAL                         R16 11
      395 DUPTABLE                         R17 K97 [{"text", "layoutOrder"}]
      396 LOADK                            R20 K74 ["Importer"]
      397 LOADK                            R21 K26 ["Filename"]
      398 NAMECALL                         R18 R1 K60 ["getText"]
      400 CALL                             R18 3 1
      401 SETTABLEKS                       R18 R17 K68 ["text"]
      403 MOVE                             R18 R10
      404 CALL                             R18 0 1
      405 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      407 DUPTABLE                         R18 K99 [{"Label"}]
      408 GETUPVAL                         R19 0
      409 GETTABLEKS                       R19 R19 K13 ["createElement"]
      411 GETUPVAL                         R20 7
      412 GETTABLEKS                       R20 R20 K100 ["Text"]
      414 DUPTABLE                         R21 K102 [{["Text"], ["testId"] = "Filename", ["tag"] = "text-body-small auto-y size-full-0 text-truncate-split text-align-x-left"}]
      415 MOVE                             R22 R6
      416 JUMPIF                           R22 ; [+5]
      417 LOADK                            R24 K58 ["Common"]
      418 LOADK                            R25 K59 ["Multiple"]
      419 NAMECALL                         R22 R1 K60 ["getText"]
      421 CALL                             R22 3 1
      422 SETTABLEKS                       R22 R21 K100 ["Text"]
      424 CALL                             R19 2 1
      425 SETTABLEKS                       R19 R18 K98 ["Label"]
      427 CALL                             R15 3 1
      428 SETTABLEKS                       R15 R14 K26 ["Filename"]
      430 CALL                             R11 3 -1
      431 RETURN                           R11 -1

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
      102 GETTABLEKS                       R13 R13 K20 ["Libraries"]
      104 GETTABLEKS                       R13 R13 K22 ["useHistoryState"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K6 ["Src"]
      111 GETTABLEKS                       R14 R14 K10 ["Components"]
      113 GETTABLEKS                       R14 R14 K13 ["Importer"]
      115 GETTABLEKS                       R14 R14 K23 ["usePlayback"]
      117 CALL                             R13 1 1
      118 DUPCLOSURE                       R14 K24 [PROTO_0]
      119 DUPCLOSURE                       R15 K25 [PROTO_10]
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R4
      132 RETURN                           R15 1
