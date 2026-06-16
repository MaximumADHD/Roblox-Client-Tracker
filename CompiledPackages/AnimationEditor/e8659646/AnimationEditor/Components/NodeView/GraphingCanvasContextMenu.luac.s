PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["StudioUri"]
        5 GETTABLEKS                       R0 R0 K2 ["fromAction"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 2
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 SETLIST                          R4 R5 2 [1]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R5 K3 ["tryActivate"]
       13 MOVE                             R7 R0
       14 CALL                             R6 1 1
       15 JUMPIFNOT                        R6 ; [+5]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K4 ["close"]
       19 CALL                             R6 0 0
       20 RETURN                           R0 0
       21 FORGLOOP                         R1 2 ; [-11]
       23 GETUPVAL                         R1 2
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameSelection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 NEWTABLE                         R2 0 2
        5 GETUPVAL                         R3 0
        6 DUPTABLE                         R4 K4 [{"id", "text", "items"}]
        7 LOADK                            R5 K5 ["insertNode"]
        8 SETTABLEKS                       R5 R4 K2 ["id"]
       10 GETUPVAL                         R6 1
       11 CALL                             R6 0 1
       12 JUMPIFNOT                        R6 ; [+9]
       13 GETUPVAL                         R5 2
       14 LOADK                            R7 K6 ["Common"]
       15 LOADK                            R8 K7 ["AnimationEditor"]
       16 LOADK                            R9 K8 ["Menu"]
       17 LOADK                            R10 K9 ["InsertNode"]
       18 NAMECALL                         R5 R5 K10 ["getExternalText"]
       20 CALL                             R5 5 1
       21 JUMP                             ; [+1]
       22 LOADK                            R5 K11 ["Insert Node"]
       23 SETTABLEKS                       R5 R4 K3 ["text"]
       25 GETUPVAL                         R5 3
       26 SETTABLEKS                       R5 R4 K0 ["items"]
       28 CALL                             R3 1 1
       29 DUPTABLE                         R4 K4 [{"id", "text", "items"}]
       30 LOADK                            R5 K12 ["insertParameter"]
       31 SETTABLEKS                       R5 R4 K2 ["id"]
       33 GETUPVAL                         R6 1
       34 CALL                             R6 0 1
       35 JUMPIFNOT                        R6 ; [+9]
       36 GETUPVAL                         R5 2
       37 LOADK                            R7 K6 ["Common"]
       38 LOADK                            R8 K7 ["AnimationEditor"]
       39 LOADK                            R9 K8 ["Menu"]
       40 LOADK                            R10 K13 ["InsertParameter"]
       41 NAMECALL                         R5 R5 K10 ["getExternalText"]
       43 CALL                             R5 5 1
       44 JUMP                             ; [+1]
       45 LOADK                            R5 K14 ["Insert Parameter"]
       46 SETTABLEKS                       R5 R4 K3 ["text"]
       48 GETUPVAL                         R5 4
       49 SETTABLEKS                       R5 R4 K0 ["items"]
       51 SETLIST                          R2 R3 2 [1]
       53 SETTABLEKS                       R2 R1 K0 ["items"]
       55 DUPTABLE                         R2 K1 [{"items"}]
       56 NEWTABLE                         R3 0 2
       58 GETUPVAL                         R4 5
       59 GETTABLEKS                       R4 R4 K15 ["duplicate"]
       61 GETTABLEKS                       R4 R4 K16 ["menuItem"]
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R5 R5 K17 ["delete"]
       66 GETTABLEKS                       R5 R5 K16 ["menuItem"]
       68 SETLIST                          R3 R4 2 [1]
       70 SETTABLEKS                       R3 R2 K0 ["items"]
       72 DUPTABLE                         R3 K1 [{"items"}]
       73 NEWTABLE                         R4 0 1
       75 DUPTABLE                         R5 K19 [{"id", "text", "onActivated"}]
       76 LOADK                            R6 K20 ["frameSelection"]
       77 SETTABLEKS                       R6 R5 K2 ["id"]
       79 GETUPVAL                         R7 1
       80 CALL                             R7 0 1
       81 JUMPIFNOT                        R7 ; [+20]
       82 GETUPVAL                         R7 6
       83 JUMPIFNOT                        R7 ; [+9]
       84 GETUPVAL                         R6 2
       85 LOADK                            R8 K6 ["Common"]
       86 LOADK                            R9 K7 ["AnimationEditor"]
       87 LOADK                            R10 K8 ["Menu"]
       88 LOADK                            R11 K21 ["FrameSelection"]
       89 NAMECALL                         R6 R6 K10 ["getExternalText"]
       91 CALL                             R6 5 1
       92 JUMP                             ; [+10]
       93 GETUPVAL                         R6 2
       94 LOADK                            R8 K6 ["Common"]
       95 LOADK                            R9 K7 ["AnimationEditor"]
       96 LOADK                            R10 K8 ["Menu"]
       97 LOADK                            R11 K22 ["FrameAll"]
       98 NAMECALL                         R6 R6 K10 ["getExternalText"]
      100 CALL                             R6 5 1
      101 JUMP                             ; [+1]
      102 LOADK                            R6 K23 ["Frame Selection"]
      103 SETTABLEKS                       R6 R5 K3 ["text"]
      105 GETUPVAL                         R7 1
      106 CALL                             R7 0 1
      107 JUMPIFNOT                        R7 ; [+2]
      108 GETUPVAL                         R6 7
      109 JUMP                             ; [+3]
      110 GETUPVAL                         R6 8
      111 GETTABLEKS                       R6 R6 K20 ["frameSelection"]
      113 SETTABLEKS                       R6 R5 K18 ["onActivated"]
      115 SETLIST                          R4 R5 1 [1]
      117 SETTABLEKS                       R4 R3 K0 ["items"]
      119 SETLIST                          R0 R1 3 [1]
      121 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ViewportRectContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["ContextServices"]
       12 GETTABLEKS                       R2 R2 K4 ["Localization"]
       14 NAMECALL                         R2 R2 K5 ["use"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K6 ["useInsertNodeMenuItems"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K7 ["useParameterMenuItems"]
       24 GETTABLEKS                       R5 R0 K8 ["close"]
       26 LOADB                            R6 1
       27 CALL                             R4 2 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K9 ["useContextMenuOnActivated"]
       31 GETTABLEKS                       R6 R0 K8 ["close"]
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K10 ["useContextMenuInsertMode"]
       37 CALL                             R6 0 1
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K11 ["useExistingParameterMenuItems"]
       41 GETTABLEKS                       R8 R0 K8 ["close"]
       43 CALL                             R7 1 1
       44 DUPTABLE                         R8 K14 [{"duplicate", "delete"}]
       45 GETUPVAL                         R9 3
       46 GETUPVAL                         R10 4
       47 LOADK                            R11 K15 ["Common"]
       48 LOADK                            R12 K16 ["Duplicate"]
       49 CALL                             R10 2 -1
       50 CALL                             R9 -1 1
       51 SETTABLEKS                       R9 R8 K12 ["duplicate"]
       53 GETUPVAL                         R9 3
       54 GETUPVAL                         R10 4
       55 LOADK                            R11 K15 ["Common"]
       56 LOADK                            R12 K17 ["Delete"]
       57 CALL                             R10 2 -1
       58 CALL                             R9 -1 1
       59 SETTABLEKS                       R9 R8 K13 ["delete"]
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R9 R9 K18 ["useEventCallback"]
       64 NEWCLOSURE                       R10 P0
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R5
       68 CALL                             R9 1 1
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R10 R10 K19 ["useCallback"]
       72 NEWCLOSURE                       R11 P1
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R0
       75 NEWTABLE                         R12 0 2
       77 MOVE                             R13 R1
       78 GETTABLEKS                       R14 R0 K8 ["close"]
       80 SETLIST                          R12 R13 2 [1]
       82 CALL                             R10 2 1
       83 GETUPVAL                         R12 6
       84 CALL                             R12 0 1
       85 JUMPIFNOT                        R12 ; [+7]
       86 GETUPVAL                         R11 7
       87 GETTABLEKS                       R11 R11 K20 ["useSignalState"]
       89 GETTABLEKS                       R12 R1 K21 ["observeSelectionRect"]
       91 CALL                             R11 1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R11
       94 GETUPVAL                         R12 0
       95 GETTABLEKS                       R12 R12 K22 ["useMemo"]
       97 NEWCLOSURE                       R13 P2
       98 CAPTURE                          UPVAL U8
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R1
      107 NEWTABLE                         R14 0 7
      109 MOVE                             R15 R3
      110 MOVE                             R16 R4
      111 GETUPVAL                         R18 6
      112 CALL                             R18 0 1
      113 JUMPIFNOT                        R18 ; [+2]
      114 MOVE                             R17 R10
      115 JUMP                             ; [+2]
      116 GETTABLEKS                       R17 R1 K23 ["frameSelection"]
      118 GETUPVAL                         R19 6
      119 CALL                             R19 0 1
      120 JUMPIFNOT                        R19 ; [+2]
      121 MOVE                             R18 R11
      122 JUMP                             ; [+1]
      123 LOADNIL                          R18
      124 MOVE                             R19 R2
      125 GETTABLEKS                       R20 R8 K12 ["duplicate"]
      127 GETTABLEKS                       R20 R20 K24 ["menuItem"]
      129 GETTABLEKS                       R21 R8 K13 ["delete"]
      131 GETTABLEKS                       R21 R21 K24 ["menuItem"]
      133 SETLIST                          R14 R15 7 [1]
      135 CALL                             R12 2 1
      136 GETTABLEKS                       R13 R0 K25 ["isOpen"]
      138 JUMPIF                           R13 ; [+2]
      139 LOADNIL                          R13
      140 RETURN                           R13 1
      141 GETUPVAL                         R13 0
      142 GETTABLEKS                       R13 R13 K26 ["createElement"]
      144 GETUPVAL                         R14 9
      145 GETTABLEKS                       R14 R14 K27 ["Menu"]
      147 DUPTABLE                         R15 K32 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
      148 GETTABLEKS                       R16 R0 K25 ["isOpen"]
      150 SETTABLEKS                       R16 R15 K25 ["isOpen"]
      152 GETTABLEKS                       R17 R6 K33 ["isParameterOnlyInsertMenu"]
      154 JUMPIFNOT                        R17 ; [+2]
      155 MOVE                             R16 R7
      156 JUMP                             ; [+6]
      157 GETTABLEKS                       R17 R6 K34 ["isDataOnlyInsertMenu"]
      159 JUMPIFNOT                        R17 ; [+2]
      160 MOVE                             R16 R3
      161 JUMP                             ; [+1]
      162 MOVE                             R16 R12
      163 SETTABLEKS                       R16 R15 K28 ["items"]
      165 SETTABLEKS                       R9 R15 K29 ["onActivated"]
      167 GETTABLEKS                       R16 R0 K8 ["close"]
      169 SETTABLEKS                       R16 R15 K30 ["onPressedOutside"]
      171 GETUPVAL                         R16 9
      172 GETTABLEKS                       R16 R16 K35 ["Enums"]
      174 GETTABLEKS                       R16 R16 K36 ["InputSize"]
      176 GETTABLEKS                       R16 R16 K37 ["XSmall"]
      178 SETTABLEKS                       R16 R15 K31 ["size"]
      180 CALL                             R13 2 -1
      181 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K12 ["SignalsReact"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Flags"]
       53 GETTABLEKS                       R8 R8 K14 ["getFFlagAnimGraphUI_RunTimeDebug"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Hooks"]
       60 GETTABLEKS                       R9 R9 K16 ["useActionMenuItem"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K17 [PROTO_0]
       64 DUPCLOSURE                       R10 K18 [PROTO_2]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 DUPCLOSURE                       R11 K19 [PROTO_6]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R1
       78 RETURN                           R11 1
