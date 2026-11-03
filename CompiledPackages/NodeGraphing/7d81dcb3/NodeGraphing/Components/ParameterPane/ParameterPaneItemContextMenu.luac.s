PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["close"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["parameterName"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["observeViewportRect"]
       12 LOADB                            R1 0
       13 CALL                             R0 1 1
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K3 ["getNodeInsertPosition"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K4 ["createExistingParameterAsync"]
       22 DUPTABLE                         R3 K6 [{"parameterName", "pinPosition"}]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K1 ["parameterName"]
       26 SETTABLEKS                       R4 R3 K1 ["parameterName"]
       28 SETTABLEKS                       R1 R3 K5 ["pinPosition"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["close"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["triggerRename"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["close"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["parameterName"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["removeParameter"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K1 ["parameterName"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["close"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["parameterName"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K3 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["number"] ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K5 ["setParameterNodeType"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K1 ["parameterName"]
       22 MOVE                             R3 R0
       23 LOADNIL                          R4
       24 CALL                             R1 3 0
       25 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 NEWTABLE                         R2 0 4
        5 DUPTABLE                         R3 K6 [{["id"] = "Insert", ["text"], ["onActivated"]}]
        6 GETUPVAL                         R5 0
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+9]
        9 GETUPVAL                         R4 1
       10 LOADK                            R6 K7 ["Common"]
       11 LOADK                            R7 K8 ["AnimationEditor"]
       12 LOADK                            R8 K9 ["ParameterPane"]
       13 LOADK                            R9 K3 ["Insert"]
       14 NAMECALL                         R4 R4 K10 ["getExternalText"]
       16 CALL                             R4 5 1
       17 JUMP                             ; [+1]
       18 LOADK                            R4 K3 ["Insert"]
       19 SETTABLEKS                       R4 R3 K4 ["text"]
       21 GETUPVAL                         R4 2
       22 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       24 DUPTABLE                         R4 K12 [{["id"] = "Rename", ["text"], ["onActivated"]}]
       25 GETUPVAL                         R6 0
       26 CALL                             R6 0 1
       27 JUMPIFNOT                        R6 ; [+9]
       28 GETUPVAL                         R5 1
       29 LOADK                            R7 K7 ["Common"]
       30 LOADK                            R8 K8 ["AnimationEditor"]
       31 LOADK                            R9 K13 ["Menu"]
       32 LOADK                            R10 K11 ["Rename"]
       33 NAMECALL                         R5 R5 K10 ["getExternalText"]
       35 CALL                             R5 5 1
       36 JUMP                             ; [+1]
       37 LOADK                            R5 K11 ["Rename"]
       38 SETTABLEKS                       R5 R4 K4 ["text"]
       40 GETUPVAL                         R5 3
       41 SETTABLEKS                       R5 R4 K5 ["onActivated"]
       43 DUPTABLE                         R5 K15 [{["id"] = "Delete", ["text"], ["onActivated"]}]
       44 GETUPVAL                         R7 0
       45 CALL                             R7 0 1
       46 JUMPIFNOT                        R7 ; [+9]
       47 GETUPVAL                         R6 1
       48 LOADK                            R8 K7 ["Common"]
       49 LOADK                            R9 K8 ["AnimationEditor"]
       50 LOADK                            R10 K13 ["Menu"]
       51 LOADK                            R11 K14 ["Delete"]
       52 NAMECALL                         R6 R6 K10 ["getExternalText"]
       54 CALL                             R6 5 1
       55 JUMP                             ; [+1]
       56 LOADK                            R6 K14 ["Delete"]
       57 SETTABLEKS                       R6 R5 K4 ["text"]
       59 GETUPVAL                         R6 4
       60 SETTABLEKS                       R6 R5 K5 ["onActivated"]
       62 DUPTABLE                         R6 K17 [{["id"] = "ChangeType", ["text"], [3], ["onActivated"]}]
       63 GETUPVAL                         R8 0
       64 CALL                             R8 0 1
       65 JUMPIFNOT                        R8 ; [+9]
       66 GETUPVAL                         R7 1
       67 LOADK                            R9 K7 ["Common"]
       68 LOADK                            R10 K8 ["AnimationEditor"]
       69 LOADK                            R11 K9 ["ParameterPane"]
       70 LOADK                            R12 K16 ["ChangeType"]
       71 NAMECALL                         R7 R7 K10 ["getExternalText"]
       73 CALL                             R7 5 1
       74 JUMP                             ; [+1]
       75 LOADK                            R7 K18 ["Change Type"]
       76 SETTABLEKS                       R7 R6 K4 ["text"]
       78 GETUPVAL                         R7 5
       79 GETTABLEKS                       R7 R7 K19 ["parameterMenuItems"]
       81 JUMPIF                           R7 ; [+3]
       82 GETUPVAL                         R7 6
       83 GETTABLEKS                       R7 R7 K20 ["PARAMETER_MENUITEM_TABLE"]
       85 SETTABLEKS                       R7 R6 K0 ["items"]
       87 DUPCLOSURE                       R7 K21 [PROTO_4]
       88 SETTABLEKS                       R7 R6 K5 ["onActivated"]
       90 SETLIST                          R2 R3 4 [1]
       92 SETTABLEKS                       R2 R1 K0 ["items"]
       94 SETLIST                          R0 R1 1 [1]
       96 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K2 ["ContextServices"]
       24 GETTABLEKS                       R4 R4 K3 ["Localization"]
       26 NAMECALL                         R4 R4 K4 ["use"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R1
       37 NEWTABLE                         R7 0 4
       39 GETTABLEKS                       R8 R0 K6 ["close"]
       41 GETTABLEKS                       R9 R0 K7 ["parameterName"]
       43 GETTABLEKS                       R10 R1 K8 ["createExistingParameterAsync"]
       45 GETTABLEKS                       R11 R3 K9 ["observeViewportRect"]
       47 SETLIST                          R7 R8 4 [1]
       49 CALL                             R5 2 1
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       53 NEWCLOSURE                       R7 P1
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R8 0 2
       57 GETTABLEKS                       R9 R0 K6 ["close"]
       59 GETTABLEKS                       R10 R0 K10 ["triggerRename"]
       61 SETLIST                          R8 R9 2 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       67 NEWCLOSURE                       R8 P2
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R1
       70 NEWTABLE                         R9 0 3
       72 GETTABLEKS                       R10 R0 K6 ["close"]
       74 GETTABLEKS                       R11 R0 K7 ["parameterName"]
       76 GETTABLEKS                       R12 R1 K11 ["removeParameter"]
       78 SETLIST                          R9 R10 3 [1]
       80 CALL                             R7 2 1
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       84 NEWCLOSURE                       R9 P3
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R1
       87 NEWTABLE                         R10 0 2
       89 GETTABLEKS                       R11 R0 K7 ["parameterName"]
       91 GETTABLEKS                       R12 R1 K12 ["setParameterNodeType"]
       93 SETLIST                          R10 R11 2 [1]
       95 CALL                             R8 2 1
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R9 R9 K13 ["useMemo"]
       99 NEWCLOSURE                       R10 P4
      100 CAPTURE                          UPVAL U6
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R2
      106 CAPTURE                          UPVAL U7
      107 NEWTABLE                         R11 0 5
      109 MOVE                             R12 R5
      110 MOVE                             R13 R6
      111 MOVE                             R14 R7
      112 GETTABLEKS                       R15 R2 K14 ["parameterMenuItems"]
      114 MOVE                             R16 R4
      115 SETLIST                          R11 R12 5 [1]
      117 CALL                             R9 2 1
      118 GETUPVAL                         R10 0
      119 GETTABLEKS                       R10 R10 K15 ["createElement"]
      121 GETUPVAL                         R11 8
      122 GETTABLEKS                       R11 R11 K16 ["Menu"]
      124 DUPTABLE                         R12 K25 [{"isOpen", "onPressedOutside", "onActivated", "items", "side", "size", "width", "anchorRef"}]
      125 GETTABLEKS                       R13 R0 K17 ["isOpen"]
      127 SETTABLEKS                       R13 R12 K17 ["isOpen"]
      129 GETTABLEKS                       R13 R0 K6 ["close"]
      131 SETTABLEKS                       R13 R12 K18 ["onPressedOutside"]
      133 SETTABLEKS                       R8 R12 K19 ["onActivated"]
      135 SETTABLEKS                       R9 R12 K20 ["items"]
      137 GETUPVAL                         R13 8
      138 GETTABLEKS                       R13 R13 K26 ["Enums"]
      140 GETTABLEKS                       R13 R13 K27 ["PopoverSide"]
      142 GETTABLEKS                       R13 R13 K28 ["Right"]
      144 SETTABLEKS                       R13 R12 K21 ["side"]
      146 GETUPVAL                         R13 8
      147 GETTABLEKS                       R13 R13 K26 ["Enums"]
      149 GETTABLEKS                       R13 R13 K29 ["InputSize"]
      151 GETTABLEKS                       R13 R13 K30 ["XSmall"]
      153 SETTABLEKS                       R13 R12 K22 ["size"]
      155 GETUPVAL                         R13 9
      156 SETTABLEKS                       R13 R12 K23 ["width"]
      158 GETTABLEKS                       R13 R0 K24 ["anchorRef"]
      160 SETTABLEKS                       R13 R12 K24 ["anchorRef"]
      162 CALL                             R10 2 -1
      163 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
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
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["GraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["ParameterContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["ParameterPane"]
       41 GETTABLEKS                       R6 R6 K13 ["Constants"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Components"]
       48 GETTABLEKS                       R7 R7 K12 ["ParameterPane"]
       50 GETTABLEKS                       R7 R7 K14 ["ParameterPaneUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Parent"]
       57 GETTABLEKS                       R8 R8 K15 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K9 ["Components"]
       64 GETTABLEKS                       R9 R9 K16 ["ViewportRectContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K17 ["Flags"]
       71 GETTABLEKS                       R10 R10 K18 ["getFFlagAnimGraphUI_Localization2"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K21 [UDim.new]
       76 LOADN                            R11 0
       77 GETTABLEKS                       R12 R5 K22 ["PARAMETER_ITEM_CONTEXT_MENU_WIDTH"]
       79 CALL                             R10 2 1
       80 DUPCLOSURE                       R11 K23 [PROTO_6]
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R10
       91 RETURN                           R11 1
