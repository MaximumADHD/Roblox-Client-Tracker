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
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
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
       34 LOADN                            R7 128
       35 LOADN                            R8 224
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
       85 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       87 NEWCLOSURE                       R12 P4
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 NEWTABLE                         R13 0 0
       92 CALL                             R11 2 0
       93 GETUPVAL                         R11 0
       94 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       96 DUPCLOSURE                       R12 K6 [PROTO_7]
       97 NEWTABLE                         R13 0 0
       99 CALL                             R11 2 1
      100 DUPTABLE                         R12 K18 [{"activeCellId", "activeCellIdChangedSignal", "formatCellId", "expansionsRef", "inputKeycodeSignal", "onExpansionsChanged", "onInputKeycode", "setActiveCellId", "size", "sizeChangedSignal", "onSizeChanged"}]
      101 GETTABLEKS                       R13 R1 K19 ["current"]
      103 SETTABLEKS                       R13 R12 K7 ["activeCellId"]
      105 GETTABLEKS                       R13 R2 K19 ["current"]
      107 SETTABLEKS                       R13 R12 K8 ["activeCellIdChangedSignal"]
      109 SETTABLEKS                       R11 R12 K9 ["formatCellId"]
      111 SETTABLEKS                       R9 R12 K10 ["expansionsRef"]
      113 GETTABLEKS                       R13 R3 K19 ["current"]
      115 SETTABLEKS                       R13 R12 K11 ["inputKeycodeSignal"]
      117 SETTABLEKS                       R10 R12 K12 ["onExpansionsChanged"]
      119 SETTABLEKS                       R7 R12 K13 ["onInputKeycode"]
      121 SETTABLEKS                       R6 R12 K14 ["setActiveCellId"]
      123 GETTABLEKS                       R13 R5 K19 ["current"]
      125 SETTABLEKS                       R13 R12 K15 ["size"]
      127 GETTABLEKS                       R13 R4 K19 ["current"]
      129 SETTABLEKS                       R13 R12 K16 ["sizeChangedSignal"]
      131 SETTABLEKS                       R8 R12 K17 ["onSizeChanged"]
      133 GETUPVAL                         R13 0
      134 GETTABLEKS                       R13 R13 K20 ["createElement"]
      136 GETUPVAL                         R14 2
      137 GETTABLEKS                       R14 R14 K21 ["Provider"]
      139 DUPTABLE                         R15 K23 [{"value"}]
      140 SETTABLEKS                       R12 R15 K22 ["value"]
      142 GETTABLEKS                       R16 R0 K24 ["children"]
      144 CALL                             R13 3 -1
      145 RETURN                           R13 -1

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
       35 DUPTABLE                         R5 K23 [{"activeCellId", "activeCellIdChangedSignal", "formatCellId", "expansionsRef", "inputKeycodeSignal", "onExpansionsChanged", "onInputKeycode", "onSizeChanged", "setActiveCellId", "size", "sizeChangedSignal"}]
       36 LOADNIL                          R6
       37 SETTABLEKS                       R6 R5 K12 ["activeCellId"]
       39 GETTABLEKS                       R6 R3 K24 ["new"]
       41 CALL                             R6 0 1
       42 SETTABLEKS                       R6 R5 K13 ["activeCellIdChangedSignal"]
       44 GETTABLEKS                       R6 R2 K25 ["createUnimplemented"]
       46 LOADK                            R7 K14 ["formatCellId"]
       47 CALL                             R6 1 1
       48 SETTABLEKS                       R6 R5 K14 ["formatCellId"]
       50 DUPTABLE                         R6 K27 [{"current"}]
       51 NEWTABLE                         R7 0 0
       53 SETTABLEKS                       R7 R6 K26 ["current"]
       55 SETTABLEKS                       R6 R5 K15 ["expansionsRef"]
       57 GETTABLEKS                       R6 R3 K24 ["new"]
       59 CALL                             R6 0 1
       60 SETTABLEKS                       R6 R5 K16 ["inputKeycodeSignal"]
       62 GETTABLEKS                       R6 R2 K25 ["createUnimplemented"]
       64 LOADK                            R7 K28 ["onExpansionChanged"]
       65 CALL                             R6 1 1
       66 SETTABLEKS                       R6 R5 K17 ["onExpansionsChanged"]
       68 GETTABLEKS                       R6 R2 K25 ["createUnimplemented"]
       70 LOADK                            R7 K18 ["onInputKeycode"]
       71 CALL                             R6 1 1
       72 SETTABLEKS                       R6 R5 K18 ["onInputKeycode"]
       74 GETTABLEKS                       R6 R2 K25 ["createUnimplemented"]
       76 LOADK                            R7 K19 ["onSizeChanged"]
       77 CALL                             R6 1 1
       78 SETTABLEKS                       R6 R5 K19 ["onSizeChanged"]
       80 GETTABLEKS                       R6 R2 K25 ["createUnimplemented"]
       82 LOADK                            R7 K20 ["setActiveCellId"]
       83 CALL                             R6 1 1
       84 SETTABLEKS                       R6 R5 K20 ["setActiveCellId"]
       86 GETIMPORT                        R6 K30 [Vector2.new]
       88 LOADN                            R7 128
       89 LOADN                            R8 224
       90 CALL                             R6 2 1
       91 SETTABLEKS                       R6 R5 K21 ["size"]
       93 GETTABLEKS                       R6 R3 K24 ["new"]
       95 CALL                             R6 0 1
       96 SETTABLEKS                       R6 R5 K22 ["sizeChangedSignal"]
       98 GETTABLEKS                       R6 R1 K31 ["createContext"]
      100 MOVE                             R7 R5
      101 CALL                             R6 1 1
      102 DUPCLOSURE                       R7 K32 [PROTO_8]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R6
      106 DUPTABLE                         R8 K35 [{"Context", "Provider"}]
      107 SETTABLEKS                       R6 R8 K33 ["Context"]
      109 SETTABLEKS                       R7 R8 K34 ["Provider"]
      111 RETURN                           R8 1
