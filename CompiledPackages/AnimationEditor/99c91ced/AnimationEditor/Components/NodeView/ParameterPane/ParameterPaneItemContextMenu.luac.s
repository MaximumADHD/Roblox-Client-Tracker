PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["close"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["parameterName"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K2 ["observeViewportRect"]
       12 LOADB                            R1 0
       13 CALL                             R0 1 1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K3 ["getNodeInsertPosition"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K4 ["createExistingParameterAsync"]
       22 DUPTABLE                         R3 K6 [{"parameterName", "pinPosition"}]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K1 ["parameterName"]
       26 SETTABLEKS                       R4 R3 K1 ["parameterName"]
       28 SETTABLEKS                       R1 R3 K5 ["pinPosition"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["close"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["triggerRename"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["close"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["parameterName"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K2 ["removeParameterAsync"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K1 ["parameterName"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setParameterNodeTypeAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["parameterName"]
        6 GETUPVAL                         R2 2
        7 LOADNIL                          R3
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["close"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["parameterName"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K3 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["number"] ; [+2]
       15 RETURN                           R0 0
       16 GETIMPORT                        R1 K7 [task.spawn]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 NEWTABLE                         R1 0 1
        4 GETIMPORT                        R2 K2 [table.freeze]
        6 DUPTABLE                         R3 K4 [{"items"}]
        7 GETIMPORT                        R4 K2 [table.freeze]
        9 NEWTABLE                         R5 0 4
       11 GETIMPORT                        R6 K2 [table.freeze]
       13 DUPTABLE                         R7 K8 [{"id", "text", "onActivated"}]
       14 LOADK                            R8 K9 ["Insert"]
       15 SETTABLEKS                       R8 R7 K5 ["id"]
       17 LOADK                            R8 K9 ["Insert"]
       18 SETTABLEKS                       R8 R7 K6 ["text"]
       20 GETUPVAL                         R8 0
       21 SETTABLEKS                       R8 R7 K7 ["onActivated"]
       23 CALL                             R6 1 1
       24 GETIMPORT                        R7 K2 [table.freeze]
       26 DUPTABLE                         R8 K8 [{"id", "text", "onActivated"}]
       27 LOADK                            R9 K10 ["Rename"]
       28 SETTABLEKS                       R9 R8 K5 ["id"]
       30 LOADK                            R9 K10 ["Rename"]
       31 SETTABLEKS                       R9 R8 K6 ["text"]
       33 GETUPVAL                         R9 1
       34 SETTABLEKS                       R9 R8 K7 ["onActivated"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K2 [table.freeze]
       39 DUPTABLE                         R9 K8 [{"id", "text", "onActivated"}]
       40 LOADK                            R10 K11 ["Delete"]
       41 SETTABLEKS                       R10 R9 K5 ["id"]
       43 LOADK                            R10 K11 ["Delete"]
       44 SETTABLEKS                       R10 R9 K6 ["text"]
       46 GETUPVAL                         R10 2
       47 SETTABLEKS                       R10 R9 K7 ["onActivated"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K2 [table.freeze]
       52 DUPTABLE                         R10 K12 [{"id", "text", "items", "onActivated"}]
       53 LOADK                            R11 K13 ["ChangeType"]
       54 SETTABLEKS                       R11 R10 K5 ["id"]
       56 LOADK                            R11 K14 ["Change Type"]
       57 SETTABLEKS                       R11 R10 K6 ["text"]
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R11 R12 K15 ["PARAMETER_MENUITEM_TABLE"]
       62 SETTABLEKS                       R11 R10 K3 ["items"]
       64 DUPCLOSURE                       R11 K16 [PROTO_5]
       65 SETTABLEKS                       R11 R10 K7 ["onActivated"]
       67 CALL                             R9 1 -1
       68 SETLIST                          R5 R6 -1 [1]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K3 ["items"]
       73 CALL                             R2 1 -1
       74 SETLIST                          R1 R2 -1 [1]
       76 CALL                             R0 1 -1
       77 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R5 0 4
       24 GETTABLEKS                       R6 R0 K3 ["close"]
       26 GETTABLEKS                       R7 R0 K4 ["parameterName"]
       28 GETTABLEKS                       R8 R1 K5 ["createExistingParameterAsync"]
       30 GETTABLEKS                       R9 R2 K6 ["observeViewportRect"]
       32 SETLIST                          R5 R6 4 [1]
       34 CALL                             R3 2 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       38 NEWCLOSURE                       R5 P1
       39 CAPTURE                          VAL R0
       40 NEWTABLE                         R6 0 2
       42 GETTABLEKS                       R7 R0 K3 ["close"]
       44 GETTABLEKS                       R8 R0 K7 ["triggerRename"]
       46 SETLIST                          R6 R7 2 [1]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       52 NEWCLOSURE                       R6 P2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 NEWTABLE                         R7 0 3
       57 GETTABLEKS                       R8 R0 K3 ["close"]
       59 GETTABLEKS                       R9 R0 K4 ["parameterName"]
       61 GETTABLEKS                       R10 R1 K8 ["removeParameterAsync"]
       63 SETLIST                          R7 R8 3 [1]
       65 CALL                             R5 2 1
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       69 NEWCLOSURE                       R7 P3
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R1
       72 NEWTABLE                         R8 0 2
       74 GETTABLEKS                       R9 R0 K4 ["parameterName"]
       76 GETTABLEKS                       R10 R1 K9 ["setParameterNodeTypeAsync"]
       78 SETLIST                          R8 R9 2 [1]
       80 CALL                             R6 2 1
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R7 R8 K10 ["useMemo"]
       84 NEWCLOSURE                       R8 P4
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          UPVAL U4
       89 NEWTABLE                         R9 0 3
       91 MOVE                             R10 R3
       92 MOVE                             R11 R4
       93 MOVE                             R12 R5
       94 SETLIST                          R9 R10 3 [1]
       96 CALL                             R7 2 1
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R8 R9 K11 ["createElement"]
      100 GETUPVAL                         R10 5
      101 GETTABLEKS                       R9 R10 K12 ["Menu"]
      103 DUPTABLE                         R10 K21 [{"isOpen", "onPressedOutside", "onActivated", "items", "side", "size", "width", "anchorRef"}]
      104 GETTABLEKS                       R11 R0 K13 ["isOpen"]
      106 SETTABLEKS                       R11 R10 K13 ["isOpen"]
      108 GETTABLEKS                       R11 R0 K3 ["close"]
      110 SETTABLEKS                       R11 R10 K14 ["onPressedOutside"]
      112 SETTABLEKS                       R6 R10 K15 ["onActivated"]
      114 SETTABLEKS                       R7 R10 K16 ["items"]
      116 GETUPVAL                         R14 5
      117 GETTABLEKS                       R13 R14 K22 ["Enums"]
      119 GETTABLEKS                       R12 R13 K23 ["PopoverSide"]
      121 GETTABLEKS                       R11 R12 K24 ["Right"]
      123 SETTABLEKS                       R11 R10 K17 ["side"]
      125 GETUPVAL                         R14 5
      126 GETTABLEKS                       R13 R14 K22 ["Enums"]
      128 GETTABLEKS                       R12 R13 K25 ["InputSize"]
      130 GETTABLEKS                       R11 R12 K26 ["XSmall"]
      132 SETTABLEKS                       R11 R10 K18 ["size"]
      134 GETUPVAL                         R11 6
      135 SETTABLEKS                       R11 R10 K19 ["width"]
      137 GETTABLEKS                       R11 R0 K20 ["anchorRef"]
      139 SETTABLEKS                       R11 R10 K20 ["anchorRef"]
      141 CALL                             R8 2 -1
      142 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["NativeGraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R7 K11 ["NodeView"]
       27 GETTABLEKS                       R5 R6 K12 ["ParameterPane"]
       29 GETTABLEKS                       R4 R5 K13 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Components"]
       36 GETTABLEKS                       R7 R8 K11 ["NodeView"]
       38 GETTABLEKS                       R6 R7 K12 ["ParameterPane"]
       40 GETTABLEKS                       R5 R6 K14 ["ParameterPaneUtils"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K6 ["Parent"]
       47 GETTABLEKS                       R6 R7 K15 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K8 ["Contexts"]
       54 GETTABLEKS                       R7 R8 K16 ["ViewportRectContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K19 [UDim.new]
       59 LOADN                            R8 0
       60 GETTABLEKS                       R9 R3 K20 ["PARAMETER_ITEM_CONTEXT_MENU_WIDTH"]
       62 CALL                             R7 2 1
       63 DUPCLOSURE                       R8 K21 [PROTO_7]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 RETURN                           R8 1
