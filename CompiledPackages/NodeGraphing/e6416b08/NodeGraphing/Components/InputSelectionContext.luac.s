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
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-8]
       15 GETIMPORT                        R1 K4 [table.sort]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 1

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
       91 CAPTURE                          VAL R3
       92 NEWTABLE                         R15 0 1
       94 MOVE                             R16 R3
       95 SETLIST                          R15 R16 1 [1]
       97 CALL                             R13 2 1
       98 DUPTABLE                         R14 K8 [{"clearSelection", "isInputSelected", "inputDown", "inputUp", "selectionNodeId", "getSelectedIndices"}]
       99 SETTABLEKS                       R9 R14 K2 ["clearSelection"]
      101 SETTABLEKS                       R12 R14 K3 ["isInputSelected"]
      103 SETTABLEKS                       R10 R14 K4 ["inputDown"]
      105 SETTABLEKS                       R11 R14 K5 ["inputUp"]
      107 SETTABLEKS                       R1 R14 K6 ["selectionNodeId"]
      109 SETTABLEKS                       R13 R14 K7 ["getSelectedIndices"]
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R15 R15 K9 ["createElement"]
      114 GETUPVAL                         R16 1
      115 GETTABLEKS                       R16 R16 K10 ["Provider"]
      117 DUPTABLE                         R17 K12 [{"value"}]
      118 SETTABLEKS                       R14 R17 K11 ["value"]
      120 GETTABLEKS                       R18 R0 K13 ["children"]
      122 CALL                             R15 3 -1
      123 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K17 [{"selectionNodeId", "selectionInputIndices", "clearSelection", "isInputSelected", "inputDown", "inputUp", "getSelectedIndices"}]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K10 ["selectionNodeId"]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K11 ["selectionInputIndices"]
       34 GETTABLEKS                       R5 R3 K18 ["createUnimplemented"]
       36 LOADK                            R6 K12 ["clearSelection"]
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K12 ["clearSelection"]
       40 GETTABLEKS                       R5 R3 K18 ["createUnimplemented"]
       42 LOADK                            R6 K13 ["isInputSelected"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K13 ["isInputSelected"]
       46 GETTABLEKS                       R5 R3 K18 ["createUnimplemented"]
       48 LOADK                            R6 K14 ["inputDown"]
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R4 K14 ["inputDown"]
       52 GETTABLEKS                       R5 R3 K18 ["createUnimplemented"]
       54 LOADK                            R6 K15 ["inputUp"]
       55 CALL                             R5 1 1
       56 SETTABLEKS                       R5 R4 K15 ["inputUp"]
       58 GETTABLEKS                       R5 R3 K18 ["createUnimplemented"]
       60 LOADK                            R6 K16 ["getSelectedIndices"]
       61 CALL                             R5 1 1
       62 SETTABLEKS                       R5 R4 K16 ["getSelectedIndices"]
       64 GETTABLEKS                       R5 R2 K19 ["createContext"]
       66 MOVE                             R6 R4
       67 CALL                             R5 1 1
       68 DUPCLOSURE                       R6 K20 [PROTO_5]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 DUPTABLE                         R7 K23 [{"Context", "Provider"}]
       72 SETTABLEKS                       R5 R7 K21 ["Context"]
       74 SETTABLEKS                       R6 R7 K22 ["Provider"]
       76 RETURN                           R7 1
