PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R0 R1 K0 ["current"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K1 ["Fire"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["Fire"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R5 K0 ["%*|%*|%*|%*"]
        1 MOVE                             R7 R0
        2 ORK                              R8 R1 K1 [""]
        3 MOVE                             R9 R2
        4 MOVE                             R10 R3
        5 NAMECALL                         R5 R5 K2 ["format"]
        7 CALL                             R5 5 1
        8 MOVE                             R4 R5
        9 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["new"]
       11 CALL                             R3 0 -1
       12 CALL                             R2 -1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["useRef"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K1 ["new"]
       19 CALL                             R4 0 -1
       20 CALL                             R3 -1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useRef"]
       24 GETIMPORT                        R5 K3 [Vector2.new]
       26 LOADN                            R6 128
       27 LOADN                            R7 224
       28 CALL                             R5 2 -1
       29 CALL                             R4 -1 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R7 0 0
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R8 0 1
       47 MOVE                             R9 R4
       48 SETLIST                          R8 R9 1 [1]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K0 ["useRef"]
       54 NEWTABLE                         R8 0 0
       56 CALL                             R7 1 1
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       60 NEWCLOSURE                       R9 P2
       61 CAPTURE                          VAL R7
       62 NEWTABLE                         R10 0 1
       64 MOVE                             R11 R7
       65 SETLIST                          R10 R11 1 [1]
       67 CALL                             R8 2 1
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R9 R9 K5 ["useEffect"]
       71 NEWCLOSURE                       R10 P3
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 NEWTABLE                         R11 0 0
       76 CALL                             R9 2 0
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       80 DUPCLOSURE                       R10 K6 [PROTO_6]
       81 NEWTABLE                         R11 0 0
       83 CALL                             R9 2 1
       84 DUPTABLE                         R10 K16 [{"activeCellId", "activeCellIdChangedSignal", "formatCellId", "expansionsRef", "onExpansionsChanged", "setActiveCellId", "size", "sizeChangedSignal", "onSizeChanged"}]
       85 GETTABLEKS                       R11 R1 K17 ["current"]
       87 SETTABLEKS                       R11 R10 K7 ["activeCellId"]
       89 GETTABLEKS                       R11 R2 K17 ["current"]
       91 SETTABLEKS                       R11 R10 K8 ["activeCellIdChangedSignal"]
       93 SETTABLEKS                       R9 R10 K9 ["formatCellId"]
       95 SETTABLEKS                       R7 R10 K10 ["expansionsRef"]
       97 SETTABLEKS                       R8 R10 K11 ["onExpansionsChanged"]
       99 SETTABLEKS                       R5 R10 K12 ["setActiveCellId"]
      101 GETTABLEKS                       R11 R4 K17 ["current"]
      103 SETTABLEKS                       R11 R10 K13 ["size"]
      105 GETTABLEKS                       R11 R3 K17 ["current"]
      107 SETTABLEKS                       R11 R10 K14 ["sizeChangedSignal"]
      109 SETTABLEKS                       R6 R10 K15 ["onSizeChanged"]
      111 GETUPVAL                         R11 0
      112 GETTABLEKS                       R11 R11 K18 ["createElement"]
      114 GETUPVAL                         R12 2
      115 GETTABLEKS                       R12 R12 K19 ["Provider"]
      117 DUPTABLE                         R13 K21 [{"value"}]
      118 SETTABLEKS                       R10 R13 K20 ["value"]
      120 GETTABLEKS                       R14 R0 K22 ["children"]
      122 CALL                             R11 3 -1
      123 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 DUPTABLE                         R5 K21 [{"activeCellId", "activeCellIdChangedSignal", "formatCellId", "expansionsRef", "onExpansionsChanged", "onSizeChanged", "setActiveCellId", "size", "sizeChangedSignal"}]
       36 LOADNIL                          R6
       37 SETTABLEKS                       R6 R5 K12 ["activeCellId"]
       39 GETTABLEKS                       R6 R3 K22 ["new"]
       41 CALL                             R6 0 1
       42 SETTABLEKS                       R6 R5 K13 ["activeCellIdChangedSignal"]
       44 GETTABLEKS                       R6 R2 K23 ["createUnimplemented"]
       46 LOADK                            R7 K14 ["formatCellId"]
       47 CALL                             R6 1 1
       48 SETTABLEKS                       R6 R5 K14 ["formatCellId"]
       50 DUPTABLE                         R6 K25 [{"current"}]
       51 NEWTABLE                         R7 0 0
       53 SETTABLEKS                       R7 R6 K24 ["current"]
       55 SETTABLEKS                       R6 R5 K15 ["expansionsRef"]
       57 GETTABLEKS                       R6 R2 K23 ["createUnimplemented"]
       59 LOADK                            R7 K26 ["onExpansionChanged"]
       60 CALL                             R6 1 1
       61 SETTABLEKS                       R6 R5 K16 ["onExpansionsChanged"]
       63 GETTABLEKS                       R6 R2 K23 ["createUnimplemented"]
       65 LOADK                            R7 K17 ["onSizeChanged"]
       66 CALL                             R6 1 1
       67 SETTABLEKS                       R6 R5 K17 ["onSizeChanged"]
       69 GETTABLEKS                       R6 R2 K23 ["createUnimplemented"]
       71 LOADK                            R7 K18 ["setActiveCellId"]
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R6 R5 K18 ["setActiveCellId"]
       75 GETIMPORT                        R6 K28 [Vector2.new]
       77 LOADN                            R7 128
       78 LOADN                            R8 224
       79 CALL                             R6 2 1
       80 SETTABLEKS                       R6 R5 K19 ["size"]
       82 GETTABLEKS                       R6 R3 K22 ["new"]
       84 CALL                             R6 0 1
       85 SETTABLEKS                       R6 R5 K20 ["sizeChangedSignal"]
       87 GETTABLEKS                       R6 R1 K29 ["createContext"]
       89 MOVE                             R7 R5
       90 CALL                             R6 1 1
       91 DUPCLOSURE                       R7 K30 [PROTO_7]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R6
       95 DUPTABLE                         R8 K33 [{"Context", "Provider"}]
       96 SETTABLEKS                       R6 R8 K31 ["Context"]
       98 SETTABLEKS                       R7 R8 K32 ["Provider"]
      100 RETURN                           R8 1
