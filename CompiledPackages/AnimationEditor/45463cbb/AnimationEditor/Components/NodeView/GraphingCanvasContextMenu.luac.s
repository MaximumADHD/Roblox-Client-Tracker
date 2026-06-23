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
        6 DUPTABLE                         R4 K5 [{"id", "text", "items", "isDisabled"}]
        7 LOADK                            R5 K6 ["insertNode"]
        8 SETTABLEKS                       R5 R4 K2 ["id"]
       10 GETUPVAL                         R6 1
       11 CALL                             R6 0 1
       12 JUMPIFNOT                        R6 ; [+9]
       13 GETUPVAL                         R5 2
       14 LOADK                            R7 K7 ["Common"]
       15 LOADK                            R8 K8 ["AnimationEditor"]
       16 LOADK                            R9 K9 ["Menu"]
       17 LOADK                            R10 K10 ["InsertNode"]
       18 NAMECALL                         R5 R5 K11 ["getExternalText"]
       20 CALL                             R5 5 1
       21 JUMP                             ; [+1]
       22 LOADK                            R5 K12 ["Insert Node"]
       23 SETTABLEKS                       R5 R4 K3 ["text"]
       25 GETUPVAL                         R5 3
       26 SETTABLEKS                       R5 R4 K0 ["items"]
       28 GETUPVAL                         R6 1
       29 CALL                             R6 0 1
       30 JUMPIFNOT                        R6 ; [+2]
       31 GETUPVAL                         R5 4
       32 JUMP                             ; [+1]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K4 ["isDisabled"]
       36 CALL                             R3 1 1
       37 DUPTABLE                         R4 K5 [{"id", "text", "items", "isDisabled"}]
       38 LOADK                            R5 K13 ["insertParameter"]
       39 SETTABLEKS                       R5 R4 K2 ["id"]
       41 GETUPVAL                         R6 1
       42 CALL                             R6 0 1
       43 JUMPIFNOT                        R6 ; [+9]
       44 GETUPVAL                         R5 2
       45 LOADK                            R7 K7 ["Common"]
       46 LOADK                            R8 K8 ["AnimationEditor"]
       47 LOADK                            R9 K9 ["Menu"]
       48 LOADK                            R10 K14 ["InsertParameter"]
       49 NAMECALL                         R5 R5 K11 ["getExternalText"]
       51 CALL                             R5 5 1
       52 JUMP                             ; [+1]
       53 LOADK                            R5 K15 ["Insert Parameter"]
       54 SETTABLEKS                       R5 R4 K3 ["text"]
       56 GETUPVAL                         R5 5
       57 SETTABLEKS                       R5 R4 K0 ["items"]
       59 GETUPVAL                         R6 1
       60 CALL                             R6 0 1
       61 JUMPIFNOT                        R6 ; [+2]
       62 GETUPVAL                         R5 4
       63 JUMP                             ; [+1]
       64 LOADNIL                          R5
       65 SETTABLEKS                       R5 R4 K4 ["isDisabled"]
       67 SETLIST                          R2 R3 2 [1]
       69 SETTABLEKS                       R2 R1 K0 ["items"]
       71 DUPTABLE                         R2 K1 [{"items"}]
       72 NEWTABLE                         R3 0 2
       74 GETUPVAL                         R4 6
       75 GETTABLEKS                       R4 R4 K16 ["duplicate"]
       77 GETTABLEKS                       R4 R4 K17 ["menuItem"]
       79 GETUPVAL                         R5 6
       80 GETTABLEKS                       R5 R5 K18 ["delete"]
       82 GETTABLEKS                       R5 R5 K17 ["menuItem"]
       84 SETLIST                          R3 R4 2 [1]
       86 SETTABLEKS                       R3 R2 K0 ["items"]
       88 DUPTABLE                         R3 K1 [{"items"}]
       89 NEWTABLE                         R4 0 1
       91 DUPTABLE                         R5 K20 [{"id", "text", "onActivated"}]
       92 LOADK                            R6 K21 ["frameSelection"]
       93 SETTABLEKS                       R6 R5 K2 ["id"]
       95 GETUPVAL                         R7 1
       96 CALL                             R7 0 1
       97 JUMPIFNOT                        R7 ; [+20]
       98 GETUPVAL                         R7 7
       99 JUMPIFNOT                        R7 ; [+9]
      100 GETUPVAL                         R6 2
      101 LOADK                            R8 K7 ["Common"]
      102 LOADK                            R9 K8 ["AnimationEditor"]
      103 LOADK                            R10 K9 ["Menu"]
      104 LOADK                            R11 K22 ["FrameSelection"]
      105 NAMECALL                         R6 R6 K11 ["getExternalText"]
      107 CALL                             R6 5 1
      108 JUMP                             ; [+10]
      109 GETUPVAL                         R6 2
      110 LOADK                            R8 K7 ["Common"]
      111 LOADK                            R9 K8 ["AnimationEditor"]
      112 LOADK                            R10 K9 ["Menu"]
      113 LOADK                            R11 K23 ["FrameAll"]
      114 NAMECALL                         R6 R6 K11 ["getExternalText"]
      116 CALL                             R6 5 1
      117 JUMP                             ; [+1]
      118 LOADK                            R6 K24 ["Frame Selection"]
      119 SETTABLEKS                       R6 R5 K3 ["text"]
      121 GETUPVAL                         R7 1
      122 CALL                             R7 0 1
      123 JUMPIFNOT                        R7 ; [+2]
      124 GETUPVAL                         R6 8
      125 JUMP                             ; [+3]
      126 GETUPVAL                         R6 9
      127 GETTABLEKS                       R6 R6 K21 ["frameSelection"]
      129 SETTABLEKS                       R6 R5 K19 ["onActivated"]
      131 SETLIST                          R4 R5 1 [1]
      133 SETTABLEKS                       R4 R3 K0 ["items"]
      135 SETLIST                          R0 R1 3 [1]
      137 RETURN                           R0 1

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
       44 GETUPVAL                         R9 3
       45 CALL                             R9 0 1
       46 JUMPIFNOT                        R9 ; [+8]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K0 ["useContext"]
       50 GETUPVAL                         R9 4
       51 GETTABLEKS                       R9 R9 K2 ["Context"]
       53 CALL                             R8 1 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R8
       56 DUPTABLE                         R9 K14 [{"duplicate", "delete"}]
       57 GETUPVAL                         R10 5
       58 GETUPVAL                         R11 6
       59 LOADK                            R12 K15 ["Common"]
       60 LOADK                            R13 K16 ["Duplicate"]
       61 CALL                             R11 2 -1
       62 CALL                             R10 -1 1
       63 SETTABLEKS                       R10 R9 K12 ["duplicate"]
       65 GETUPVAL                         R10 5
       66 GETUPVAL                         R11 6
       67 LOADK                            R12 K15 ["Common"]
       68 LOADK                            R13 K17 ["Delete"]
       69 CALL                             R11 2 -1
       70 CALL                             R10 -1 1
       71 SETTABLEKS                       R10 R9 K13 ["delete"]
       73 GETUPVAL                         R10 7
       74 GETTABLEKS                       R10 R10 K18 ["useEventCallback"]
       76 NEWCLOSURE                       R11 P0
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R5
       80 CALL                             R10 1 1
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K19 ["useCallback"]
       84 NEWCLOSURE                       R12 P1
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R0
       87 NEWTABLE                         R13 0 2
       89 MOVE                             R14 R1
       90 GETTABLEKS                       R15 R0 K8 ["close"]
       92 SETLIST                          R13 R14 2 [1]
       94 CALL                             R11 2 1
       95 GETUPVAL                         R13 3
       96 CALL                             R13 0 1
       97 JUMPIFNOT                        R13 ; [+7]
       98 GETUPVAL                         R12 8
       99 GETTABLEKS                       R12 R12 K20 ["useSignalState"]
      101 GETTABLEKS                       R13 R1 K21 ["observeSelectionRect"]
      103 CALL                             R12 1 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R12
      106 GETUPVAL                         R14 3
      107 CALL                             R14 0 1
      108 JUMPIFNOT                        R14 ; [+7]
      109 GETUPVAL                         R13 8
      110 GETTABLEKS                       R13 R13 K20 ["useSignalState"]
      112 GETTABLEKS                       R14 R8 K22 ["observeSelectedGraphIsEphemeral"]
      114 CALL                             R13 1 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R13
      117 GETUPVAL                         R14 0
      118 GETTABLEKS                       R14 R14 K23 ["useMemo"]
      120 NEWCLOSURE                       R15 P2
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          UPVAL U3
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R1
      131 NEWTABLE                         R16 0 8
      133 MOVE                             R17 R3
      134 MOVE                             R18 R4
      135 GETUPVAL                         R20 3
      136 CALL                             R20 0 1
      137 JUMPIFNOT                        R20 ; [+2]
      138 MOVE                             R19 R11
      139 JUMP                             ; [+2]
      140 GETTABLEKS                       R19 R1 K24 ["frameSelection"]
      142 GETUPVAL                         R21 3
      143 CALL                             R21 0 1
      144 JUMPIFNOT                        R21 ; [+2]
      145 MOVE                             R20 R12
      146 JUMP                             ; [+1]
      147 LOADNIL                          R20
      148 GETUPVAL                         R22 3
      149 CALL                             R22 0 1
      150 JUMPIFNOT                        R22 ; [+2]
      151 MOVE                             R21 R13
      152 JUMP                             ; [+1]
      153 LOADNIL                          R21
      154 MOVE                             R22 R2
      155 GETTABLEKS                       R23 R9 K12 ["duplicate"]
      157 GETTABLEKS                       R23 R23 K25 ["menuItem"]
      159 GETTABLEKS                       R24 R9 K13 ["delete"]
      161 GETTABLEKS                       R24 R24 K25 ["menuItem"]
      163 SETLIST                          R16 R17 8 [1]
      165 CALL                             R14 2 1
      166 GETTABLEKS                       R15 R0 K26 ["isOpen"]
      168 JUMPIF                           R15 ; [+2]
      169 LOADNIL                          R15
      170 RETURN                           R15 1
      171 GETUPVAL                         R15 0
      172 GETTABLEKS                       R15 R15 K27 ["createElement"]
      174 GETUPVAL                         R16 10
      175 GETTABLEKS                       R16 R16 K28 ["Menu"]
      177 DUPTABLE                         R17 K33 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
      178 GETTABLEKS                       R18 R0 K26 ["isOpen"]
      180 SETTABLEKS                       R18 R17 K26 ["isOpen"]
      182 GETTABLEKS                       R19 R6 K34 ["isParameterOnlyInsertMenu"]
      184 JUMPIFNOT                        R19 ; [+2]
      185 MOVE                             R18 R7
      186 JUMP                             ; [+6]
      187 GETTABLEKS                       R19 R6 K35 ["isDataOnlyInsertMenu"]
      189 JUMPIFNOT                        R19 ; [+2]
      190 MOVE                             R18 R3
      191 JUMP                             ; [+1]
      192 MOVE                             R18 R14
      193 SETTABLEKS                       R18 R17 K29 ["items"]
      195 SETTABLEKS                       R10 R17 K30 ["onActivated"]
      197 GETTABLEKS                       R18 R0 K8 ["close"]
      199 SETTABLEKS                       R18 R17 K31 ["onPressedOutside"]
      201 GETUPVAL                         R18 10
      202 GETTABLEKS                       R18 R18 K36 ["Enums"]
      204 GETTABLEKS                       R18 R18 K37 ["InputSize"]
      206 GETTABLEKS                       R18 R18 K38 ["XSmall"]
      208 SETTABLEKS                       R18 R17 K32 ["size"]
      210 CALL                             R15 2 -1
      211 RETURN                           R15 -1

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
       44 GETTABLEKS                       R7 R0 K12 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K13 ["SelectedGraphContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["SignalsReact"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Flags"]
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUI_RunTimeDebug"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K18 ["useActionMenuItem"]
       69 CALL                             R9 1 1
       70 DUPCLOSURE                       R10 K19 [PROTO_0]
       71 DUPCLOSURE                       R11 K20 [PROTO_2]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R2
       74 DUPCLOSURE                       R12 K21 [PROTO_6]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R1
       86 RETURN                           R12 1
