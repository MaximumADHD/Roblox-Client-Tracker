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
        0 LOADK                            R5 K0 ["%*|%*|%*|%*|%*"]
        1 MOVE                             R7 R0
        2 ORK                              R8 R1 K1 [""]
        3 MOVE                             R9 R2
        4 MOVE                             R10 R3
        5 MOVE                             R11 R4
        6 NAMECALL                         R5 R5 K2 ["format"]
        8 CALL                             R5 6 1
        9 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["PluginConfiguration is deprecated with the flag"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["useRef"]
       12 LOADNIL                          R2
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["useRef"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K4 ["new"]
       20 CALL                             R3 0 -1
       21 CALL                             R2 -1 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K3 ["useRef"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K4 ["new"]
       28 CALL                             R4 0 -1
       29 CALL                             R3 -1 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K3 ["useRef"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K4 ["new"]
       36 CALL                             R5 0 -1
       37 CALL                             R4 -1 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K3 ["useRef"]
       41 GETIMPORT                        R6 K6 [Vector2.new]
       43 LOADN                            R7 640
       44 LOADN                            R8 480
       45 CALL                             R6 2 -1
       46 CALL                             R5 -1 1
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R8 0 0
       55 CALL                             R6 2 1
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       59 NEWCLOSURE                       R8 P1
       60 CAPTURE                          VAL R3
       61 NEWTABLE                         R9 0 0
       63 CALL                             R7 2 1
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       67 NEWCLOSURE                       R9 P2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 NEWTABLE                         R10 0 1
       72 MOVE                             R11 R5
       73 SETLIST                          R10 R11 1 [1]
       75 CALL                             R8 2 1
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K3 ["useRef"]
       79 NEWTABLE                         R10 0 0
       81 CALL                             R9 1 1
       82 GETUPVAL                         R10 1
       83 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       85 NEWCLOSURE                       R11 P3
       86 CAPTURE                          VAL R9
       87 NEWTABLE                         R12 0 1
       89 MOVE                             R13 R9
       90 SETLIST                          R12 R13 1 [1]
       92 CALL                             R10 2 1
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R11 R11 K8 ["useContext"]
       96 GETUPVAL                         R12 3
       97 GETTABLEKS                       R12 R12 K9 ["Context"]
       99 CALL                             R11 1 1
      100 GETUPVAL                         R12 1
      101 GETTABLEKS                       R12 R12 K10 ["useEffect"]
      103 NEWCLOSURE                       R13 P4
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R6
      106 NEWTABLE                         R14 0 1
      108 MOVE                             R15 R11
      109 SETLIST                          R14 R15 1 [1]
      111 CALL                             R12 2 0
      112 GETUPVAL                         R12 1
      113 GETTABLEKS                       R12 R12 K10 ["useEffect"]
      115 NEWCLOSURE                       R13 P5
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R5
      118 NEWTABLE                         R14 0 0
      120 CALL                             R12 2 0
      121 GETUPVAL                         R12 1
      122 GETTABLEKS                       R12 R12 K7 ["useCallback"]
      124 DUPCLOSURE                       R13 K11 [PROTO_8]
      125 NEWTABLE                         R14 0 0
      127 CALL                             R12 2 1
      128 DUPTABLE                         R13 K23 [{"activeCellId", "activeCellIdChangedSignal", "formatCellId", "expansionsRef", "inputKeycodeSignal", "onExpansionsChanged", "onInputKeycode", "setActiveCellId", "size", "sizeChangedSignal", "onSizeChanged"}]
      129 GETTABLEKS                       R14 R1 K24 ["current"]
      131 SETTABLEKS                       R14 R13 K12 ["activeCellId"]
      133 GETTABLEKS                       R14 R2 K24 ["current"]
      135 SETTABLEKS                       R14 R13 K13 ["activeCellIdChangedSignal"]
      137 SETTABLEKS                       R12 R13 K14 ["formatCellId"]
      139 SETTABLEKS                       R9 R13 K15 ["expansionsRef"]
      141 GETTABLEKS                       R14 R3 K24 ["current"]
      143 SETTABLEKS                       R14 R13 K16 ["inputKeycodeSignal"]
      145 SETTABLEKS                       R10 R13 K17 ["onExpansionsChanged"]
      147 SETTABLEKS                       R7 R13 K18 ["onInputKeycode"]
      149 SETTABLEKS                       R6 R13 K19 ["setActiveCellId"]
      151 GETTABLEKS                       R14 R5 K24 ["current"]
      153 SETTABLEKS                       R14 R13 K20 ["size"]
      155 GETTABLEKS                       R14 R4 K24 ["current"]
      157 SETTABLEKS                       R14 R13 K21 ["sizeChangedSignal"]
      159 SETTABLEKS                       R8 R13 K22 ["onSizeChanged"]
      161 GETUPVAL                         R14 1
      162 GETTABLEKS                       R14 R14 K25 ["createElement"]
      164 GETUPVAL                         R15 4
      165 GETTABLEKS                       R15 R15 K26 ["Provider"]
      167 DUPTABLE                         R16 K28 [{"value"}]
      168 SETTABLEKS                       R13 R16 K27 ["value"]
      170 GETTABLEKS                       R17 R0 K29 ["children"]
      172 CALL                             R14 3 -1
      173 RETURN                           R14 -1

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
       44 GETTABLEKS                       R6 R0 K10 ["Src"]
       46 GETTABLEKS                       R6 R6 K14 ["Flags"]
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R6 K15 ["getFFlagIAMRefactorPluginConfiguration"]
       52 CALL                             R7 1 1
       53 DUPTABLE                         R8 K28 [{["activeCellId"] = , ["activeCellIdChangedSignal"], ["formatCellId"], ["expansionsRef"], ["inputKeycodeSignal"], ["onExpansionsChanged"], ["onInputKeycode"], ["onSizeChanged"], ["setActiveCellId"], ["size"], ["sizeChangedSignal"]}]
       54 GETTABLEKS                       R9 R3 K29 ["new"]
       56 CALL                             R9 0 1
       57 SETTABLEKS                       R9 R8 K18 ["activeCellIdChangedSignal"]
       59 GETTABLEKS                       R9 R2 K30 ["createUnimplemented"]
       61 LOADK                            R10 K19 ["formatCellId"]
       62 CALL                             R9 1 1
       63 SETTABLEKS                       R9 R8 K19 ["formatCellId"]
       65 DUPTABLE                         R9 K32 [{"current"}]
       66 NEWTABLE                         R10 0 0
       68 SETTABLEKS                       R10 R9 K31 ["current"]
       70 SETTABLEKS                       R9 R8 K20 ["expansionsRef"]
       72 GETTABLEKS                       R9 R3 K29 ["new"]
       74 CALL                             R9 0 1
       75 SETTABLEKS                       R9 R8 K21 ["inputKeycodeSignal"]
       77 GETTABLEKS                       R9 R2 K30 ["createUnimplemented"]
       79 LOADK                            R10 K33 ["onExpansionChanged"]
       80 CALL                             R9 1 1
       81 SETTABLEKS                       R9 R8 K22 ["onExpansionsChanged"]
       83 GETTABLEKS                       R9 R2 K30 ["createUnimplemented"]
       85 LOADK                            R10 K23 ["onInputKeycode"]
       86 CALL                             R9 1 1
       87 SETTABLEKS                       R9 R8 K23 ["onInputKeycode"]
       89 GETTABLEKS                       R9 R2 K30 ["createUnimplemented"]
       91 LOADK                            R10 K24 ["onSizeChanged"]
       92 CALL                             R9 1 1
       93 SETTABLEKS                       R9 R8 K24 ["onSizeChanged"]
       95 GETTABLEKS                       R9 R2 K30 ["createUnimplemented"]
       97 LOADK                            R10 K25 ["setActiveCellId"]
       98 CALL                             R9 1 1
       99 SETTABLEKS                       R9 R8 K25 ["setActiveCellId"]
      101 GETIMPORT                        R9 K35 [Vector2.new]
      103 LOADN                            R10 640
      104 LOADN                            R11 480
      105 CALL                             R9 2 1
      106 SETTABLEKS                       R9 R8 K26 ["size"]
      108 GETTABLEKS                       R9 R3 K29 ["new"]
      110 CALL                             R9 0 1
      111 SETTABLEKS                       R9 R8 K27 ["sizeChangedSignal"]
      113 GETTABLEKS                       R9 R1 K36 ["createContext"]
      115 MOVE                             R10 R8
      116 CALL                             R9 1 1
      117 DUPCLOSURE                       R10 K37 [PROTO_9]
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R9
      123 DUPTABLE                         R11 K40 [{"Context", "Provider"}]
      124 SETTABLEKS                       R9 R11 K38 ["Context"]
      126 SETTABLEKS                       R10 R11 K39 ["Provider"]
      128 RETURN                           R11 1
