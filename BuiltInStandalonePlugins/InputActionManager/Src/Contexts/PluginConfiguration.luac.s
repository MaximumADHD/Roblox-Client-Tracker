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
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["Fire"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["current"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R6 K0 ["%*|%*|%*|%*|%*"]
        1 MOVE                             R8 R0
        2 ORK                              R9 R1 K1 [""]
        3 MOVE                             R10 R2
        4 MOVE                             R11 R3
        5 MOVE                             R12 R4
        6 NAMECALL                         R6 R6 K2 ["format"]
        8 CALL                             R6 6 1
        9 MOVE                             R5 R6
       10 RETURN                           R5 1

PROTO_9:
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
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K1 ["new"]
       27 CALL                             R5 0 -1
       28 CALL                             R4 -1 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K0 ["useRef"]
       32 GETIMPORT                        R6 K3 [Vector2.new]
       34 LOADN                            R7 640
       35 LOADN                            R8 480
       36 CALL                             R6 2 -1
       37 CALL                             R5 -1 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 NEWTABLE                         R8 0 0
       46 CALL                             R6 2 1
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       50 NEWCLOSURE                       R8 P1
       51 CAPTURE                          VAL R3
       52 NEWTABLE                         R9 0 0
       54 CALL                             R7 2 1
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       58 NEWCLOSURE                       R9 P2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 NEWTABLE                         R10 0 1
       63 MOVE                             R11 R5
       64 SETLIST                          R10 R11 1 [1]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K0 ["useRef"]
       70 NEWTABLE                         R10 0 0
       72 CALL                             R9 1 1
       73 GETUPVAL                         R10 0
       74 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       76 NEWCLOSURE                       R11 P3
       77 CAPTURE                          VAL R9
       78 NEWTABLE                         R12 0 1
       80 MOVE                             R13 R9
       81 SETLIST                          R12 R13 1 [1]
       83 CALL                             R10 2 1
       84 GETUPVAL                         R11 0
       85 GETTABLEKS                       R11 R11 K5 ["useContext"]
       87 GETUPVAL                         R12 2
       88 GETTABLEKS                       R12 R12 K6 ["Context"]
       90 CALL                             R11 1 1
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       94 NEWCLOSURE                       R13 P4
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R6
       97 NEWTABLE                         R14 0 1
       99 MOVE                             R15 R11
      100 SETLIST                          R14 R15 1 [1]
      102 CALL                             R12 2 0
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K7 ["useEffect"]
      106 NEWCLOSURE                       R13 P5
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R5
      109 NEWTABLE                         R14 0 0
      111 CALL                             R12 2 0
      112 GETUPVAL                         R12 0
      113 GETTABLEKS                       R12 R12 K4 ["useCallback"]
      115 DUPCLOSURE                       R13 K8 [PROTO_8]
      116 NEWTABLE                         R14 0 0
      118 CALL                             R12 2 1
      119 DUPTABLE                         R13 K20 [{"activeCellId", "activeCellIdChangedSignal", "formatCellId", "expansionsRef", "inputKeycodeSignal", "onExpansionsChanged", "onInputKeycode", "setActiveCellId", "size", "sizeChangedSignal", "onSizeChanged"}]
      120 GETTABLEKS                       R14 R1 K21 ["current"]
      122 SETTABLEKS                       R14 R13 K9 ["activeCellId"]
      124 GETTABLEKS                       R14 R2 K21 ["current"]
      126 SETTABLEKS                       R14 R13 K10 ["activeCellIdChangedSignal"]
      128 SETTABLEKS                       R12 R13 K11 ["formatCellId"]
      130 SETTABLEKS                       R9 R13 K12 ["expansionsRef"]
      132 GETTABLEKS                       R14 R3 K21 ["current"]
      134 SETTABLEKS                       R14 R13 K13 ["inputKeycodeSignal"]
      136 SETTABLEKS                       R10 R13 K14 ["onExpansionsChanged"]
      138 SETTABLEKS                       R7 R13 K15 ["onInputKeycode"]
      140 SETTABLEKS                       R6 R13 K16 ["setActiveCellId"]
      142 GETTABLEKS                       R14 R5 K21 ["current"]
      144 SETTABLEKS                       R14 R13 K17 ["size"]
      146 GETTABLEKS                       R14 R4 K21 ["current"]
      148 SETTABLEKS                       R14 R13 K18 ["sizeChangedSignal"]
      150 SETTABLEKS                       R8 R13 K19 ["onSizeChanged"]
      152 GETUPVAL                         R14 0
      153 GETTABLEKS                       R14 R14 K22 ["createElement"]
      155 GETUPVAL                         R15 3
      156 GETTABLEKS                       R15 R15 K23 ["Provider"]
      158 DUPTABLE                         R16 K25 [{"value"}]
      159 SETTABLEKS                       R13 R16 K24 ["value"]
      161 GETTABLEKS                       R17 R0 K26 ["children"]
      163 CALL                             R14 3 -1
      164 RETURN                           R14 -1

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
       32 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["DatamodelConfiguration"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 DUPTABLE                         R6 K26 [{["activeCellId"] = , ["activeCellIdChangedSignal"], ["formatCellId"], ["expansionsRef"], ["inputKeycodeSignal"], ["onExpansionsChanged"], ["onInputKeycode"], ["onSizeChanged"], ["setActiveCellId"], ["size"], ["sizeChangedSignal"]}]
       45 GETTABLEKS                       R7 R3 K27 ["new"]
       47 CALL                             R7 0 1
       48 SETTABLEKS                       R7 R6 K16 ["activeCellIdChangedSignal"]
       50 GETTABLEKS                       R7 R2 K28 ["createUnimplemented"]
       52 LOADK                            R8 K17 ["formatCellId"]
       53 CALL                             R7 1 1
       54 SETTABLEKS                       R7 R6 K17 ["formatCellId"]
       56 DUPTABLE                         R7 K30 [{"current"}]
       57 NEWTABLE                         R8 0 0
       59 SETTABLEKS                       R8 R7 K29 ["current"]
       61 SETTABLEKS                       R7 R6 K18 ["expansionsRef"]
       63 GETTABLEKS                       R7 R3 K27 ["new"]
       65 CALL                             R7 0 1
       66 SETTABLEKS                       R7 R6 K19 ["inputKeycodeSignal"]
       68 GETTABLEKS                       R7 R2 K28 ["createUnimplemented"]
       70 LOADK                            R8 K31 ["onExpansionChanged"]
       71 CALL                             R7 1 1
       72 SETTABLEKS                       R7 R6 K20 ["onExpansionsChanged"]
       74 GETTABLEKS                       R7 R2 K28 ["createUnimplemented"]
       76 LOADK                            R8 K21 ["onInputKeycode"]
       77 CALL                             R7 1 1
       78 SETTABLEKS                       R7 R6 K21 ["onInputKeycode"]
       80 GETTABLEKS                       R7 R2 K28 ["createUnimplemented"]
       82 LOADK                            R8 K22 ["onSizeChanged"]
       83 CALL                             R7 1 1
       84 SETTABLEKS                       R7 R6 K22 ["onSizeChanged"]
       86 GETTABLEKS                       R7 R2 K28 ["createUnimplemented"]
       88 LOADK                            R8 K23 ["setActiveCellId"]
       89 CALL                             R7 1 1
       90 SETTABLEKS                       R7 R6 K23 ["setActiveCellId"]
       92 GETIMPORT                        R7 K33 [Vector2.new]
       94 LOADN                            R8 640
       95 LOADN                            R9 480
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R6 K24 ["size"]
       99 GETTABLEKS                       R7 R3 K27 ["new"]
      101 CALL                             R7 0 1
      102 SETTABLEKS                       R7 R6 K25 ["sizeChangedSignal"]
      104 GETTABLEKS                       R7 R1 K34 ["createContext"]
      106 MOVE                             R8 R6
      107 CALL                             R7 1 1
      108 DUPCLOSURE                       R8 K35 [PROTO_9]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R7
      113 DUPTABLE                         R9 K38 [{"Context", "Provider"}]
      114 SETTABLEKS                       R7 R9 K36 ["Context"]
      116 SETTABLEKS                       R8 R9 K37 ["Provider"]
      118 RETURN                           R9 1
