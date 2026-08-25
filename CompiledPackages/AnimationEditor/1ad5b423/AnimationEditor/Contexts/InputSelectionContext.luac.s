PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 NEWTABLE                         R1 0 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 JUMPIFEQ                         R4 R0 ; [+14]
        3 GETUPVAL                         R4 1
        4 NEWTABLE                         R5 1 0
        6 LOADB                            R6 1
        7 SETTABLE                         R6 R5 R1
        8 CALL                             R4 1 0
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R1
       11 CALL                             R4 1 0
       12 GETUPVAL                         R4 3
       13 MOVE                             R5 R0
       14 CALL                             R4 1 0
       15 RETURN                           R0 0
       16 JUMPIFNOT                        R2 ; [+39]
       17 GETUPVAL                         R4 4
       18 JUMPIF                           R4 ; [+10]
       19 GETUPVAL                         R4 1
       20 NEWTABLE                         R5 1 0
       22 LOADB                            R6 1
       23 SETTABLE                         R6 R5 R1
       24 CALL                             R4 1 0
       25 GETUPVAL                         R4 2
       26 MOVE                             R5 R1
       27 CALL                             R4 1 0
       28 RETURN                           R0 0
       29 NEWTABLE                         R4 0 0
       31 GETUPVAL                         R6 4
       32 FASTCALL2                        MATH_MIN R6 R1 ; [+4]
       34 MOVE                             R7 R1
       35 GETIMPORT                        R5 K2 [math.min]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R7 4
       39 FASTCALL2                        MATH_MAX R7 R1 ; [+4]
       41 MOVE                             R8 R1
       42 GETIMPORT                        R6 K4 [math.max]
       44 CALL                             R6 2 1
       45 MOVE                             R9 R5
       46 MOVE                             R7 R6
       47 LOADN                            R8 1
       48 FORNPREP                         R7
       49 LOADB                            R10 1
       50 SETTABLE                         R10 R4 R9
       51 FORNLOOP                         R7
       52 GETUPVAL                         R7 1
       53 MOVE                             R8 R4
       54 CALL                             R7 1 0
       55 RETURN                           R0 0
       56 JUMPIFNOT                        R3 ; [+20]
       57 GETIMPORT                        R4 K7 [table.clone]
       59 GETUPVAL                         R5 5
       60 CALL                             R4 1 1
       61 JUMPIF                           R4 ; [+2]
       62 NEWTABLE                         R4 0 0
       64 GETTABLE                         R6 R4 R1
       65 JUMPIFNOT                        R6 ; [+2]
       66 LOADNIL                          R5
       67 JUMP                             ; [+1]
       68 LOADB                            R5 1
       69 SETTABLE                         R5 R4 R1
       70 GETUPVAL                         R5 1
       71 MOVE                             R6 R4
       72 CALL                             R5 1 0
       73 GETUPVAL                         R5 2
       74 MOVE                             R6 R1
       75 CALL                             R5 1 0
       76 RETURN                           R0 0
       77 GETUPVAL                         R5 5
       78 GETTABLE                         R4 R5 R1
       79 JUMPIF                           R4 ; [+10]
       80 GETUPVAL                         R4 1
       81 NEWTABLE                         R5 1 0
       83 LOADB                            R6 1
       84 SETTABLE                         R6 R5 R1
       85 CALL                             R4 1 0
       86 GETUPVAL                         R4 2
       87 MOVE                             R5 R1
       88 CALL                             R4 1 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R4 6
       91 LOADB                            R5 1
       92 CALL                             R4 1 0
       93 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+12]
        2 GETUPVAL                         R4 1
        3 NEWTABLE                         R5 1 0
        5 LOADB                            R6 1
        6 SETTABLE                         R6 R5 R1
        7 CALL                             R4 1 0
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R1
       10 CALL                             R4 1 0
       11 GETUPVAL                         R4 3
       12 LOADB                            R5 0
       13 CALL                             R4 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R2 0
        1 GETUPVAL                         R3 0
        2 JUMPIFNOTEQ                      R3 R0 ; [+7]
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R3 R4 R1
        6 JUMPIFEQKB                       R3 TRUE ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["keys"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K3 [table.sort]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observe"]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 LOADB                            R2 0
       10 JUMPIFEQKNIL                     R1 ; [+3]
       12 GETTABLEKS                       R2 R1 K2 ["isSelected"]
       14 GETUPVAL                         R3 2
       15 JUMPIFNOT                        R3 ; [+3]
       16 JUMPIF                           R2 ; [+2]
       17 GETUPVAL                         R3 3
       18 CALL                             R3 0 0
       19 SETUPVAL                         R2 2
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["createEffect"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R1
       13 CAPTURE                          UPVAL U3
       14 CALL                             R2 1 -1
       15 CLOSEUPVALS                      R1
       16 RETURN                           R2 -1

PROTO_7:
        0 DUPTABLE                         R0 K6 [{"clearSelection", "isInputSelected", "inputDown", "inputUp", "selectionNodeId", "getSelectedIndices"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["clearSelection"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["isInputSelected"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["inputDown"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["inputUp"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["selectionNodeId"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["getSelectedIndices"]
       19 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["useState"]
       12 LOADNIL                          R3
       13 CALL                             R2 1 2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["useState"]
       17 NEWTABLE                         R5 0 0
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K3 ["useState"]
       23 LOADB                            R7 0
       24 CALL                             R6 1 2
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K3 ["useState"]
       28 LOADNIL                          R9
       29 CALL                             R8 1 2
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       33 NEWCLOSURE                       R11 P0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R9
       37 NEWTABLE                         R12 0 3
       39 MOVE                             R13 R3
       40 MOVE                             R14 R5
       41 MOVE                             R15 R9
       42 SETLIST                          R12 R13 3 [1]
       44 CALL                             R10 2 1
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       48 NEWCLOSURE                       R12 P1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R7
       56 NEWTABLE                         R13 0 5
       58 MOVE                             R14 R2
       59 MOVE                             R15 R4
       60 MOVE                             R16 R3
       61 MOVE                             R17 R5
       62 MOVE                             R18 R7
       63 SETLIST                          R13 R14 5 [1]
       65 CALL                             R11 2 1
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K4 ["useCallback"]
       69 NEWCLOSURE                       R13 P2
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R7
       74 NEWTABLE                         R14 0 4
       76 MOVE                             R15 R6
       77 MOVE                             R16 R5
       78 MOVE                             R17 R9
       79 MOVE                             R18 R7
       80 SETLIST                          R14 R15 4 [1]
       82 CALL                             R12 2 1
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K4 ["useCallback"]
       86 NEWCLOSURE                       R14 P3
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 NEWTABLE                         R15 0 2
       91 MOVE                             R16 R2
       92 MOVE                             R17 R4
       93 SETLIST                          R15 R16 2 [1]
       95 CALL                             R13 2 1
       96 GETUPVAL                         R14 0
       97 GETTABLEKS                       R14 R14 K4 ["useCallback"]
       99 NEWCLOSURE                       R15 P4
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          VAL R4
      102 NEWTABLE                         R16 0 1
      104 MOVE                             R17 R4
      105 SETLIST                          R16 R17 1 [1]
      107 CALL                             R14 2 1
      108 GETUPVAL                         R15 0
      109 GETTABLEKS                       R15 R15 K5 ["useEffect"]
      111 NEWCLOSURE                       R16 P5
      112 CAPTURE                          VAL R2
      113 CAPTURE                          UPVAL U3
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R10
      116 NEWTABLE                         R17 0 3
      118 MOVE                             R18 R2
      119 MOVE                             R19 R10
      120 GETTABLEKS                       R20 R1 K6 ["nodeRenderInfoDispatcher"]
      122 SETLIST                          R17 R18 3 [1]
      124 CALL                             R15 2 0
      125 GETUPVAL                         R15 0
      126 GETTABLEKS                       R15 R15 K7 ["useMemo"]
      128 NEWCLOSURE                       R16 P6
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R14
      135 NEWTABLE                         R17 0 6
      137 MOVE                             R18 R10
      138 MOVE                             R19 R13
      139 MOVE                             R20 R11
      140 MOVE                             R21 R12
      141 MOVE                             R22 R2
      142 MOVE                             R23 R14
      143 SETLIST                          R17 R18 6 [1]
      145 CALL                             R15 2 1
      146 GETUPVAL                         R16 0
      147 GETTABLEKS                       R16 R16 K8 ["createElement"]
      149 GETUPVAL                         R17 4
      150 GETTABLEKS                       R17 R17 K9 ["Provider"]
      152 DUPTABLE                         R18 K11 [{"value"}]
      153 SETTABLEKS                       R15 R18 K10 ["value"]
      155 GETTABLEKS                       R19 R0 K12 ["children"]
      157 CALL                             R16 3 -1
      158 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["Signals"]
       41 CALL                             R5 1 1
       42 DUPTABLE                         R6 K20 [{["selectionNodeId"] = , ["selectionInputIndices"], ["clearSelection"], ["isInputSelected"], ["inputDown"], ["inputUp"], ["getSelectedIndices"]}]
       43 NEWTABLE                         R7 0 0
       45 SETTABLEKS                       R7 R6 K14 ["selectionInputIndices"]
       47 GETTABLEKS                       R7 R4 K21 ["createUnimplemented"]
       49 LOADK                            R8 K15 ["clearSelection"]
       50 CALL                             R7 1 1
       51 SETTABLEKS                       R7 R6 K15 ["clearSelection"]
       53 GETTABLEKS                       R7 R4 K21 ["createUnimplemented"]
       55 LOADK                            R8 K16 ["isInputSelected"]
       56 CALL                             R7 1 1
       57 SETTABLEKS                       R7 R6 K16 ["isInputSelected"]
       59 GETTABLEKS                       R7 R4 K21 ["createUnimplemented"]
       61 LOADK                            R8 K17 ["inputDown"]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K17 ["inputDown"]
       65 GETTABLEKS                       R7 R4 K21 ["createUnimplemented"]
       67 LOADK                            R8 K18 ["inputUp"]
       68 CALL                             R7 1 1
       69 SETTABLEKS                       R7 R6 K18 ["inputUp"]
       71 GETTABLEKS                       R7 R4 K21 ["createUnimplemented"]
       73 LOADK                            R8 K19 ["getSelectedIndices"]
       74 CALL                             R7 1 1
       75 SETTABLEKS                       R7 R6 K19 ["getSelectedIndices"]
       77 GETTABLEKS                       R7 R3 K22 ["createContext"]
       79 MOVE                             R8 R6
       80 CALL                             R7 1 1
       81 DUPCLOSURE                       R8 K23 [PROTO_8]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R7
       87 DUPTABLE                         R9 K26 [{"Context", "Provider"}]
       88 SETTABLEKS                       R7 R9 K24 ["Context"]
       90 SETTABLEKS                       R8 R9 K25 ["Provider"]
       92 RETURN                           R9 1
