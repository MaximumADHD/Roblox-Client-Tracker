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
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 NEWTABLE                         R2 0 2
        5 GETUPVAL                         R3 0
        6 DUPTABLE                         R4 K4 [{"id", "text", "items"}]
        7 LOADK                            R5 K5 ["insertNode"]
        8 SETTABLEKS                       R5 R4 K2 ["id"]
       10 LOADK                            R5 K6 ["Insert Node"]
       11 SETTABLEKS                       R5 R4 K3 ["text"]
       13 GETUPVAL                         R5 1
       14 SETTABLEKS                       R5 R4 K0 ["items"]
       16 CALL                             R3 1 1
       17 DUPTABLE                         R4 K4 [{"id", "text", "items"}]
       18 LOADK                            R5 K7 ["insertParameter"]
       19 SETTABLEKS                       R5 R4 K2 ["id"]
       21 LOADK                            R5 K8 ["Insert Parameter"]
       22 SETTABLEKS                       R5 R4 K3 ["text"]
       24 GETUPVAL                         R5 2
       25 SETTABLEKS                       R5 R4 K0 ["items"]
       27 SETLIST                          R2 R3 2 [1]
       29 SETTABLEKS                       R2 R1 K0 ["items"]
       31 DUPTABLE                         R2 K1 [{"items"}]
       32 NEWTABLE                         R3 0 2
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K9 ["duplicate"]
       37 GETTABLEKS                       R4 R4 K10 ["menuItem"]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R5 R5 K11 ["delete"]
       42 GETTABLEKS                       R5 R5 K10 ["menuItem"]
       44 SETLIST                          R3 R4 2 [1]
       46 SETTABLEKS                       R3 R2 K0 ["items"]
       48 DUPTABLE                         R3 K1 [{"items"}]
       49 NEWTABLE                         R4 0 1
       51 DUPTABLE                         R5 K13 [{"id", "text", "onActivated"}]
       52 LOADK                            R6 K14 ["frameSelection"]
       53 SETTABLEKS                       R6 R5 K2 ["id"]
       55 LOADK                            R6 K15 ["Frame Selection"]
       56 SETTABLEKS                       R6 R5 K3 ["text"]
       58 GETUPVAL                         R6 4
       59 GETTABLEKS                       R6 R6 K14 ["frameSelection"]
       61 SETTABLEKS                       R6 R5 K12 ["onActivated"]
       63 SETLIST                          R4 R5 1 [1]
       65 SETTABLEKS                       R4 R3 K0 ["items"]
       67 SETLIST                          R0 R1 3 [1]
       69 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ViewportRectContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["useInsertNodeMenuItems"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["useParameterMenuItems"]
       16 GETTABLEKS                       R4 R0 K5 ["close"]
       18 LOADB                            R5 1
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["useContextMenuOnActivated"]
       23 GETTABLEKS                       R5 R0 K5 ["close"]
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K7 ["useContextMenuInsertMode"]
       29 CALL                             R5 0 1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K8 ["useExistingParameterMenuItems"]
       33 GETTABLEKS                       R7 R0 K5 ["close"]
       35 CALL                             R6 1 1
       36 DUPTABLE                         R7 K11 [{"duplicate", "delete"}]
       37 GETUPVAL                         R8 2
       38 GETUPVAL                         R9 3
       39 LOADK                            R10 K12 ["Common"]
       40 LOADK                            R11 K13 ["Duplicate"]
       41 CALL                             R9 2 -1
       42 CALL                             R8 -1 1
       43 SETTABLEKS                       R8 R7 K9 ["duplicate"]
       45 GETUPVAL                         R8 2
       46 GETUPVAL                         R9 3
       47 LOADK                            R10 K12 ["Common"]
       48 LOADK                            R11 K14 ["Delete"]
       49 CALL                             R9 2 -1
       50 CALL                             R8 -1 1
       51 SETTABLEKS                       R8 R7 K10 ["delete"]
       53 GETUPVAL                         R8 4
       54 GETTABLEKS                       R8 R8 K15 ["useEventCallback"]
       56 NEWCLOSURE                       R9 P0
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R4
       60 CALL                             R8 1 1
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K16 ["useMemo"]
       64 NEWCLOSURE                       R10 P1
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R1
       70 NEWTABLE                         R11 0 5
       72 MOVE                             R12 R2
       73 MOVE                             R13 R3
       74 GETTABLEKS                       R14 R1 K17 ["frameSelection"]
       76 GETTABLEKS                       R15 R7 K9 ["duplicate"]
       78 GETTABLEKS                       R15 R15 K18 ["menuItem"]
       80 GETTABLEKS                       R16 R7 K10 ["delete"]
       82 GETTABLEKS                       R16 R16 K18 ["menuItem"]
       84 SETLIST                          R11 R12 5 [1]
       86 CALL                             R9 2 1
       87 GETTABLEKS                       R10 R0 K19 ["isOpen"]
       89 JUMPIF                           R10 ; [+2]
       90 LOADNIL                          R10
       91 RETURN                           R10 1
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K20 ["createElement"]
       95 GETUPVAL                         R11 6
       96 GETTABLEKS                       R11 R11 K21 ["Menu"]
       98 DUPTABLE                         R12 K26 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
       99 GETTABLEKS                       R13 R0 K19 ["isOpen"]
      101 SETTABLEKS                       R13 R12 K19 ["isOpen"]
      103 GETTABLEKS                       R14 R5 K27 ["isParameterOnlyInsertMenu"]
      105 JUMPIFNOT                        R14 ; [+2]
      106 MOVE                             R13 R6
      107 JUMP                             ; [+6]
      108 GETTABLEKS                       R14 R5 K28 ["isDataOnlyInsertMenu"]
      110 JUMPIFNOT                        R14 ; [+2]
      111 MOVE                             R13 R2
      112 JUMP                             ; [+1]
      113 MOVE                             R13 R9
      114 SETTABLEKS                       R13 R12 K22 ["items"]
      116 SETTABLEKS                       R8 R12 K23 ["onActivated"]
      118 GETTABLEKS                       R13 R0 K5 ["close"]
      120 SETTABLEKS                       R13 R12 K24 ["onPressedOutside"]
      122 GETUPVAL                         R13 6
      123 GETTABLEKS                       R13 R13 K29 ["Enums"]
      125 GETTABLEKS                       R13 R13 K30 ["InputSize"]
      127 GETTABLEKS                       R13 R13 K31 ["XSmall"]
      129 SETTABLEKS                       R13 R12 K25 ["size"]
      131 CALL                             R10 2 -1
      132 RETURN                           R10 -1

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
       44 GETTABLEKS                       R7 R0 K12 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K13 ["useActionMenuItem"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K14 [PROTO_0]
       50 DUPCLOSURE                       R8 K15 [PROTO_2]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 DUPCLOSURE                       R9 K16 [PROTO_5]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R1
       61 RETURN                           R9 1
