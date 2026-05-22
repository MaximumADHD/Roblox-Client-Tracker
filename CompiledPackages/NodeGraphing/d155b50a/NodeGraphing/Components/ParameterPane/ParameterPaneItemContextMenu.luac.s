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
        5 DUPTABLE                         R3 K5 [{"id", "text", "onActivated"}]
        6 LOADK                            R4 K6 ["Insert"]
        7 SETTABLEKS                       R4 R3 K2 ["id"]
        9 LOADK                            R4 K6 ["Insert"]
       10 SETTABLEKS                       R4 R3 K3 ["text"]
       12 GETUPVAL                         R4 0
       13 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       15 DUPTABLE                         R4 K5 [{"id", "text", "onActivated"}]
       16 LOADK                            R5 K7 ["Rename"]
       17 SETTABLEKS                       R5 R4 K2 ["id"]
       19 LOADK                            R5 K7 ["Rename"]
       20 SETTABLEKS                       R5 R4 K3 ["text"]
       22 GETUPVAL                         R5 1
       23 SETTABLEKS                       R5 R4 K4 ["onActivated"]
       25 DUPTABLE                         R5 K5 [{"id", "text", "onActivated"}]
       26 LOADK                            R6 K8 ["Delete"]
       27 SETTABLEKS                       R6 R5 K2 ["id"]
       29 LOADK                            R6 K8 ["Delete"]
       30 SETTABLEKS                       R6 R5 K3 ["text"]
       32 GETUPVAL                         R6 2
       33 SETTABLEKS                       R6 R5 K4 ["onActivated"]
       35 DUPTABLE                         R6 K9 [{"id", "text", "items", "onActivated"}]
       36 LOADK                            R7 K10 ["ChangeType"]
       37 SETTABLEKS                       R7 R6 K2 ["id"]
       39 LOADK                            R7 K11 ["Change Type"]
       40 SETTABLEKS                       R7 R6 K3 ["text"]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R7 R7 K12 ["parameterMenuItems"]
       45 JUMPIF                           R7 ; [+3]
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R7 R7 K13 ["PARAMETER_MENUITEM_TABLE"]
       49 SETTABLEKS                       R7 R6 K0 ["items"]
       51 DUPCLOSURE                       R7 K14 [PROTO_4]
       52 SETTABLEKS                       R7 R6 K4 ["onActivated"]
       54 SETLIST                          R2 R3 4 [1]
       56 SETTABLEKS                       R2 R1 K0 ["items"]
       58 SETLIST                          R0 R1 1 [1]
       60 RETURN                           R0 1

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
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R6 0 4
       31 GETTABLEKS                       R7 R0 K3 ["close"]
       33 GETTABLEKS                       R8 R0 K4 ["parameterName"]
       35 GETTABLEKS                       R9 R1 K5 ["createExistingParameterAsync"]
       37 GETTABLEKS                       R10 R3 K6 ["observeViewportRect"]
       39 SETLIST                          R6 R7 4 [1]
       41 CALL                             R4 2 1
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       45 NEWCLOSURE                       R6 P1
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R7 0 2
       49 GETTABLEKS                       R8 R0 K3 ["close"]
       51 GETTABLEKS                       R9 R0 K7 ["triggerRename"]
       53 SETLIST                          R7 R8 2 [1]
       55 CALL                             R5 2 1
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       59 NEWCLOSURE                       R7 P2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R1
       62 NEWTABLE                         R8 0 3
       64 GETTABLEKS                       R9 R0 K3 ["close"]
       66 GETTABLEKS                       R10 R0 K4 ["parameterName"]
       68 GETTABLEKS                       R11 R1 K8 ["removeParameter"]
       70 SETLIST                          R8 R9 3 [1]
       72 CALL                             R6 2 1
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       76 NEWCLOSURE                       R8 P3
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R1
       79 NEWTABLE                         R9 0 2
       81 GETTABLEKS                       R10 R0 K4 ["parameterName"]
       83 GETTABLEKS                       R11 R1 K9 ["setParameterNodeType"]
       85 SETLIST                          R9 R10 2 [1]
       87 CALL                             R7 2 1
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       91 NEWCLOSURE                       R9 P4
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R2
       96 CAPTURE                          UPVAL U5
       97 NEWTABLE                         R10 0 4
       99 MOVE                             R11 R4
      100 MOVE                             R12 R5
      101 MOVE                             R13 R6
      102 GETTABLEKS                       R14 R2 K11 ["parameterMenuItems"]
      104 SETLIST                          R10 R11 4 [1]
      106 CALL                             R8 2 1
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R9 R9 K12 ["createElement"]
      110 GETUPVAL                         R10 6
      111 GETTABLEKS                       R10 R10 K13 ["Menu"]
      113 DUPTABLE                         R11 K22 [{"isOpen", "onPressedOutside", "onActivated", "items", "side", "size", "width", "anchorRef"}]
      114 GETTABLEKS                       R12 R0 K14 ["isOpen"]
      116 SETTABLEKS                       R12 R11 K14 ["isOpen"]
      118 GETTABLEKS                       R12 R0 K3 ["close"]
      120 SETTABLEKS                       R12 R11 K15 ["onPressedOutside"]
      122 SETTABLEKS                       R7 R11 K16 ["onActivated"]
      124 SETTABLEKS                       R8 R11 K17 ["items"]
      126 GETUPVAL                         R12 6
      127 GETTABLEKS                       R12 R12 K23 ["Enums"]
      129 GETTABLEKS                       R12 R12 K24 ["PopoverSide"]
      131 GETTABLEKS                       R12 R12 K25 ["Right"]
      133 SETTABLEKS                       R12 R11 K18 ["side"]
      135 GETUPVAL                         R12 6
      136 GETTABLEKS                       R12 R12 K23 ["Enums"]
      138 GETTABLEKS                       R12 R12 K26 ["InputSize"]
      140 GETTABLEKS                       R12 R12 K27 ["XSmall"]
      142 SETTABLEKS                       R12 R11 K19 ["size"]
      144 GETUPVAL                         R12 7
      145 SETTABLEKS                       R12 R11 K20 ["width"]
      147 GETTABLEKS                       R12 R0 K21 ["anchorRef"]
      149 SETTABLEKS                       R12 R11 K21 ["anchorRef"]
      151 CALL                             R9 2 -1
      152 RETURN                           R9 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["GraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ParameterContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["ParameterPane"]
       34 GETTABLEKS                       R5 R5 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Components"]
       41 GETTABLEKS                       R6 R6 K11 ["ParameterPane"]
       43 GETTABLEKS                       R6 R6 K13 ["ParameterPaneUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Parent"]
       50 GETTABLEKS                       R7 R7 K14 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Components"]
       57 GETTABLEKS                       R8 R8 K15 ["ViewportRectContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K18 [UDim.new]
       62 LOADN                            R9 0
       63 GETTABLEKS                       R10 R4 K19 ["PARAMETER_ITEM_CONTEXT_MENU_WIDTH"]
       65 CALL                             R8 2 1
       66 DUPCLOSURE                       R9 K20 [PROTO_6]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R8
       75 RETURN                           R9 1
