PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+86]
        2 NEWTABLE                         R0 0 1
        4 DUPTABLE                         R1 K4 [{[1] = "insertNode", ["text"], ["items"]}]
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+9]
        8 GETUPVAL                         R2 2
        9 LOADK                            R4 K5 ["Common"]
       10 LOADK                            R5 K6 ["AnimationEditor"]
       11 LOADK                            R6 K7 ["Menu"]
       12 LOADK                            R7 K8 ["InsertNode"]
       13 NAMECALL                         R2 R2 K9 ["getExternalText"]
       15 CALL                             R2 5 1
       16 JUMP                             ; [+1]
       17 LOADK                            R2 K10 ["Insert Node"]
       18 SETTABLEKS                       R2 R1 K2 ["text"]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K3 ["items"]
       23 SETLIST                          R0 R1 1 [1]
       25 GETUPVAL                         R1 4
       26 JUMPIFNOT                        R1 ; [+25]
       27 DUPTABLE                         R3 K12 [{[1] = "insertParameter", ["text"], ["items"]}]
       28 GETUPVAL                         R5 1
       29 CALL                             R5 0 1
       30 JUMPIFNOT                        R5 ; [+9]
       31 GETUPVAL                         R4 2
       32 LOADK                            R6 K5 ["Common"]
       33 LOADK                            R7 K6 ["AnimationEditor"]
       34 LOADK                            R8 K7 ["Menu"]
       35 LOADK                            R9 K13 ["InsertParameter"]
       36 NAMECALL                         R4 R4 K9 ["getExternalText"]
       38 CALL                             R4 5 1
       39 JUMP                             ; [+1]
       40 LOADK                            R4 K14 ["Insert Parameter"]
       41 SETTABLEKS                       R4 R3 K2 ["text"]
       43 GETUPVAL                         R4 5
       44 SETTABLEKS                       R4 R3 K3 ["items"]
       46 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       48 MOVE                             R2 R0
       49 GETIMPORT                        R1 K17 [table.insert]
       51 CALL                             R1 2 0
       52 NEWTABLE                         R1 0 2
       54 DUPTABLE                         R2 K18 [{"items"}]
       55 SETTABLEKS                       R0 R2 K3 ["items"]
       57 DUPTABLE                         R3 K18 [{"items"}]
       58 NEWTABLE                         R4 0 1
       60 DUPTABLE                         R5 K21 [{[1] = "frameSelection", ["text"], ["onActivated"]}]
       61 GETUPVAL                         R7 1
       62 CALL                             R7 0 1
       63 JUMPIFNOT                        R7 ; [+9]
       64 GETUPVAL                         R6 2
       65 LOADK                            R8 K5 ["Common"]
       66 LOADK                            R9 K6 ["AnimationEditor"]
       67 LOADK                            R10 K7 ["Menu"]
       68 LOADK                            R11 K22 ["FrameSelection"]
       69 NAMECALL                         R6 R6 K9 ["getExternalText"]
       71 CALL                             R6 5 1
       72 JUMP                             ; [+1]
       73 LOADK                            R6 K23 ["Frame Selection"]
       74 SETTABLEKS                       R6 R5 K2 ["text"]
       76 GETUPVAL                         R6 6
       77 GETTABLEKS                       R6 R6 K19 ["frameSelection"]
       79 SETTABLEKS                       R6 R5 K20 ["onActivated"]
       81 SETLIST                          R4 R5 1 [1]
       83 SETTABLEKS                       R4 R3 K3 ["items"]
       85 SETLIST                          R1 R2 2 [1]
       87 RETURN                           R1 1
       88 NEWTABLE                         R0 0 2
       90 DUPTABLE                         R1 K18 [{"items"}]
       91 NEWTABLE                         R2 0 2
       93 DUPTABLE                         R4 K4 [{[1] = "insertNode", ["text"], ["items"]}]
       94 GETUPVAL                         R6 1
       95 CALL                             R6 0 1
       96 JUMPIFNOT                        R6 ; [+9]
       97 GETUPVAL                         R5 2
       98 LOADK                            R7 K5 ["Common"]
       99 LOADK                            R8 K6 ["AnimationEditor"]
      100 LOADK                            R9 K7 ["Menu"]
      101 LOADK                            R10 K8 ["InsertNode"]
      102 NAMECALL                         R5 R5 K9 ["getExternalText"]
      104 CALL                             R5 5 1
      105 JUMP                             ; [+1]
      106 LOADK                            R5 K10 ["Insert Node"]
      107 SETTABLEKS                       R5 R4 K2 ["text"]
      109 GETUPVAL                         R5 3
      110 SETTABLEKS                       R5 R4 K3 ["items"]
      112 MOVE                             R3 R4
      113 DUPTABLE                         R4 K12 [{[1] = "insertParameter", ["text"], ["items"]}]
      114 GETUPVAL                         R6 1
      115 CALL                             R6 0 1
      116 JUMPIFNOT                        R6 ; [+9]
      117 GETUPVAL                         R5 2
      118 LOADK                            R7 K5 ["Common"]
      119 LOADK                            R8 K6 ["AnimationEditor"]
      120 LOADK                            R9 K7 ["Menu"]
      121 LOADK                            R10 K13 ["InsertParameter"]
      122 NAMECALL                         R5 R5 K9 ["getExternalText"]
      124 CALL                             R5 5 1
      125 JUMP                             ; [+1]
      126 LOADK                            R5 K14 ["Insert Parameter"]
      127 SETTABLEKS                       R5 R4 K2 ["text"]
      129 GETUPVAL                         R5 5
      130 SETTABLEKS                       R5 R4 K3 ["items"]
      132 SETLIST                          R2 R3 2 [1]
      134 SETTABLEKS                       R2 R1 K3 ["items"]
      136 DUPTABLE                         R2 K18 [{"items"}]
      137 NEWTABLE                         R3 0 1
      139 DUPTABLE                         R4 K21 [{[1] = "frameSelection", ["text"], ["onActivated"]}]
      140 GETUPVAL                         R6 1
      141 CALL                             R6 0 1
      142 JUMPIFNOT                        R6 ; [+9]
      143 GETUPVAL                         R5 2
      144 LOADK                            R7 K5 ["Common"]
      145 LOADK                            R8 K6 ["AnimationEditor"]
      146 LOADK                            R9 K7 ["Menu"]
      147 LOADK                            R10 K22 ["FrameSelection"]
      148 NAMECALL                         R5 R5 K9 ["getExternalText"]
      150 CALL                             R5 5 1
      151 JUMP                             ; [+1]
      152 LOADK                            R5 K23 ["Frame Selection"]
      153 SETTABLEKS                       R5 R4 K2 ["text"]
      155 GETUPVAL                         R5 6
      156 GETTABLEKS                       R5 R5 K19 ["frameSelection"]
      158 SETTABLEKS                       R5 R4 K20 ["onActivated"]
      160 SETLIST                          R3 R4 1 [1]
      162 SETTABLEKS                       R3 R2 K3 ["items"]
      164 SETLIST                          R0 R1 2 [1]
      166 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["ContextServices"]
       10 GETTABLEKS                       R2 R2 K3 ["Localization"]
       12 NAMECALL                         R2 R2 K4 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 3
       16 JUMPIFNOT                        R4 ; [+5]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K5 ["useConsumerHasParameters"]
       20 CALL                             R3 0 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 GETUPVAL                         R4 5
       24 CALL                             R4 0 1
       25 GETUPVAL                         R5 6
       26 GETTABLEKS                       R6 R0 K6 ["close"]
       28 LOADB                            R7 1
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 7
       31 GETTABLEKS                       R7 R0 K6 ["close"]
       33 CALL                             R6 1 1
       34 GETUPVAL                         R7 8
       35 CALL                             R7 0 1
       36 GETUPVAL                         R8 9
       37 GETTABLEKS                       R9 R0 K6 ["close"]
       39 CALL                             R8 1 1
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K7 ["useMemo"]
       43 NEWCLOSURE                       R10 P0
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U10
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 NEWTABLE                         R11 0 5
       53 MOVE                             R12 R4
       54 MOVE                             R13 R5
       55 GETTABLEKS                       R14 R1 K8 ["frameSelection"]
       57 MOVE                             R15 R2
       58 GETUPVAL                         R17 3
       59 JUMPIFNOT                        R17 ; [+2]
       60 MOVE                             R16 R3
       61 JUMP                             ; [+1]
       62 LOADNIL                          R16
       63 SETLIST                          R11 R12 5 [1]
       65 CALL                             R9 2 1
       66 GETTABLEKS                       R10 R0 K9 ["isOpen"]
       68 JUMPIF                           R10 ; [+2]
       69 LOADNIL                          R10
       70 RETURN                           R10 1
       71 GETUPVAL                         R10 3
       72 JUMPIFNOT                        R10 ; [+6]
       73 GETTABLEKS                       R10 R7 K10 ["isParameterOnlyInsertMenu"]
       75 JUMPIFNOT                        R10 ; [+3]
       76 JUMPIF                           R3 ; [+2]
       77 LOADNIL                          R10
       78 RETURN                           R10 1
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K11 ["createElement"]
       82 GETUPVAL                         R11 11
       83 GETTABLEKS                       R11 R11 K12 ["Menu"]
       85 DUPTABLE                         R12 K17 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
       86 GETTABLEKS                       R13 R0 K9 ["isOpen"]
       88 SETTABLEKS                       R13 R12 K9 ["isOpen"]
       90 GETTABLEKS                       R14 R7 K10 ["isParameterOnlyInsertMenu"]
       92 JUMPIFNOT                        R14 ; [+2]
       93 MOVE                             R13 R8
       94 JUMP                             ; [+6]
       95 GETTABLEKS                       R14 R7 K18 ["isDataOnlyInsertMenu"]
       97 JUMPIFNOT                        R14 ; [+2]
       98 MOVE                             R13 R4
       99 JUMP                             ; [+1]
      100 MOVE                             R13 R9
      101 SETTABLEKS                       R13 R12 K13 ["items"]
      103 SETTABLEKS                       R6 R12 K14 ["onActivated"]
      105 GETTABLEKS                       R13 R0 K6 ["close"]
      107 SETTABLEKS                       R13 R12 K15 ["onPressedOutside"]
      109 GETUPVAL                         R13 11
      110 GETTABLEKS                       R13 R13 K19 ["Enums"]
      112 GETTABLEKS                       R13 R13 K20 ["InputSize"]
      114 GETTABLEKS                       R13 R13 K21 ["XSmall"]
      116 SETTABLEKS                       R13 R12 K16 ["size"]
      118 CALL                             R10 2 -1
      119 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_AllowNoParameters"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["ParameterContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["ViewportRectContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUI_Localization2"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Hooks"]
       60 GETTABLEKS                       R9 R9 K17 ["useContextMenuInsertMode"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K16 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K18 ["useContextMenuOnActivated"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K16 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K19 ["useExistingParameterMenuItems"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K16 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K20 ["useInsertNodeMenuItems"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K16 ["Hooks"]
       88 GETTABLEKS                       R13 R13 K21 ["useParameterMenuItems"]
       90 CALL                             R12 1 1
       91 DUPCLOSURE                       R13 K22 [PROTO_0]
       92 DUPCLOSURE                       R14 K23 [PROTO_2]
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R2
      105 RETURN                           R14 1
