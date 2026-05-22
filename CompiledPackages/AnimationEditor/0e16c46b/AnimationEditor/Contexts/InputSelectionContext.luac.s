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
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K0 ["useState"]
       14 LOADB                            R6 0
       15 CALL                             R5 1 2
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K0 ["useState"]
       19 LOADNIL                          R8
       20 CALL                             R7 1 2
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K1 ["useCallback"]
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R8
       28 NEWTABLE                         R11 0 3
       30 MOVE                             R12 R2
       31 MOVE                             R13 R4
       32 MOVE                             R14 R8
       33 SETLIST                          R11 R12 3 [1]
       35 CALL                             R9 2 1
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K1 ["useCallback"]
       39 NEWCLOSURE                       R11 P1
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R8
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 NEWTABLE                         R12 0 5
       49 MOVE                             R13 R1
       50 MOVE                             R14 R3
       51 MOVE                             R15 R2
       52 MOVE                             R16 R4
       53 MOVE                             R17 R6
       54 SETLIST                          R12 R13 5 [1]
       56 CALL                             R10 2 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K1 ["useCallback"]
       60 NEWCLOSURE                       R12 P2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R6
       65 NEWTABLE                         R13 0 4
       67 MOVE                             R14 R5
       68 MOVE                             R15 R4
       69 MOVE                             R16 R8
       70 MOVE                             R17 R6
       71 SETLIST                          R13 R14 4 [1]
       73 CALL                             R11 2 1
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R12 R12 K1 ["useCallback"]
       77 NEWCLOSURE                       R13 P3
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R3
       80 NEWTABLE                         R14 0 2
       82 MOVE                             R15 R1
       83 MOVE                             R16 R3
       84 SETLIST                          R14 R15 2 [1]
       86 CALL                             R12 2 1
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R13 R13 K1 ["useCallback"]
       90 NEWCLOSURE                       R14 P4
       91 CAPTURE                          UPVAL U1
       92 CAPTURE                          VAL R3
       93 NEWTABLE                         R15 0 1
       95 MOVE                             R16 R3
       96 SETLIST                          R15 R16 1 [1]
       98 CALL                             R13 2 1
       99 DUPTABLE                         R14 K8 [{"clearSelection", "isInputSelected", "inputDown", "inputUp", "selectionNodeId", "getSelectedIndices"}]
      100 SETTABLEKS                       R9 R14 K2 ["clearSelection"]
      102 SETTABLEKS                       R12 R14 K3 ["isInputSelected"]
      104 SETTABLEKS                       R10 R14 K4 ["inputDown"]
      106 SETTABLEKS                       R11 R14 K5 ["inputUp"]
      108 SETTABLEKS                       R1 R14 K6 ["selectionNodeId"]
      110 SETTABLEKS                       R13 R14 K7 ["getSelectedIndices"]
      112 GETUPVAL                         R15 0
      113 GETTABLEKS                       R15 R15 K9 ["createElement"]
      115 GETUPVAL                         R16 2
      116 GETTABLEKS                       R16 R16 K10 ["Provider"]
      118 DUPTABLE                         R17 K12 [{"value"}]
      119 SETTABLEKS                       R14 R17 K11 ["value"]
      121 GETTABLEKS                       R18 R0 K13 ["children"]
      123 CALL                             R15 3 -1
      124 RETURN                           R15 -1

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
       35 DUPTABLE                         R5 K18 [{"selectionNodeId", "selectionInputIndices", "clearSelection", "isInputSelected", "inputDown", "inputUp", "getSelectedIndices"}]
       36 LOADNIL                          R6
       37 SETTABLEKS                       R6 R5 K11 ["selectionNodeId"]
       39 NEWTABLE                         R6 0 0
       41 SETTABLEKS                       R6 R5 K12 ["selectionInputIndices"]
       43 GETTABLEKS                       R6 R4 K19 ["createUnimplemented"]
       45 LOADK                            R7 K13 ["clearSelection"]
       46 CALL                             R6 1 1
       47 SETTABLEKS                       R6 R5 K13 ["clearSelection"]
       49 GETTABLEKS                       R6 R4 K19 ["createUnimplemented"]
       51 LOADK                            R7 K14 ["isInputSelected"]
       52 CALL                             R6 1 1
       53 SETTABLEKS                       R6 R5 K14 ["isInputSelected"]
       55 GETTABLEKS                       R6 R4 K19 ["createUnimplemented"]
       57 LOADK                            R7 K15 ["inputDown"]
       58 CALL                             R6 1 1
       59 SETTABLEKS                       R6 R5 K15 ["inputDown"]
       61 GETTABLEKS                       R6 R4 K19 ["createUnimplemented"]
       63 LOADK                            R7 K16 ["inputUp"]
       64 CALL                             R6 1 1
       65 SETTABLEKS                       R6 R5 K16 ["inputUp"]
       67 GETTABLEKS                       R6 R4 K19 ["createUnimplemented"]
       69 LOADK                            R7 K17 ["getSelectedIndices"]
       70 CALL                             R6 1 1
       71 SETTABLEKS                       R6 R5 K17 ["getSelectedIndices"]
       73 GETTABLEKS                       R6 R3 K20 ["createContext"]
       75 MOVE                             R7 R5
       76 CALL                             R6 1 1
       77 DUPCLOSURE                       R7 K21 [PROTO_5]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R6
       81 DUPTABLE                         R8 K24 [{"Context", "Provider"}]
       82 SETTABLEKS                       R6 R8 K22 ["Context"]
       84 SETTABLEKS                       R7 R8 K23 ["Provider"]
       86 RETURN                           R8 1
