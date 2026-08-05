PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R5 0 +1
        3 LOADB                            R5 1
        4 FASTCALL1                        ASSERT R5 ; [+2]
        5 GETIMPORT                        R4 K1 [assert]
        7 CALL                             R4 1 0
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 LOADB                            R5 0 +1
       11 LOADB                            R5 1
       12 FASTCALL1                        ASSERT R5 ; [+2]
       13 GETIMPORT                        R4 K1 [assert]
       15 CALL                             R4 1 0
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 FASTCALL1                        ASSERT R5 ; [+2]
       21 GETIMPORT                        R4 K1 [assert]
       23 CALL                             R4 1 0
       24 JUMPIFNOTEQKNIL                  R3 ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 FASTCALL1                        ASSERT R5 ; [+2]
       29 GETIMPORT                        R4 K1 [assert]
       31 CALL                             R4 1 0
       32 DUPTABLE                         R4 K15 [{["_isDragging"] = False, ["_selectionBeforeDrag"], ["_dragStartLocation"] = , ["_dragCandidates"], ["_selectionWrapper"], ["_beginBoxSelect"], ["_updateBoxSelect"], ["_endBoxSelect"], ["_insertionOrder"], ["_insertionOrderNext"] = 1}]
       33 NEWTABLE                         R5 0 0
       35 SETTABLEKS                       R5 R4 K4 ["_selectionBeforeDrag"]
       37 NEWTABLE                         R5 0 0
       39 SETTABLEKS                       R5 R4 K7 ["_dragCandidates"]
       41 SETTABLEKS                       R0 R4 K8 ["_selectionWrapper"]
       43 SETTABLEKS                       R1 R4 K9 ["_beginBoxSelect"]
       45 SETTABLEKS                       R2 R4 K10 ["_updateBoxSelect"]
       47 SETTABLEKS                       R3 R4 K11 ["_endBoxSelect"]
       49 NEWTABLE                         R5 0 0
       51 SETTABLEKS                       R5 R4 K12 ["_insertionOrder"]
       53 GETUPVAL                         R7 0
       54 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       56 MOVE                             R6 R4
       57 GETIMPORT                        R5 K17 [setmetatable]
       59 CALL                             R5 2 1
       60 RETURN                           R5 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [Rect.new]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 CALL                             R3 2 1
        5 GETIMPORT                        R6 K4 [Vector2.new]
        7 GETTABLEKS                       R7 R3 K5 ["Min"]
        9 GETTABLEKS                       R7 R7 K6 ["X"]
       11 GETTABLEKS                       R8 R3 K5 ["Min"]
       13 GETTABLEKS                       R8 R8 K7 ["Y"]
       15 CALL                             R6 2 -1
       16 NAMECALL                         R4 R0 K8 ["viewportPointToRay"]
       18 CALL                             R4 -1 1
       19 GETIMPORT                        R7 K4 [Vector2.new]
       21 GETTABLEKS                       R8 R3 K9 ["Max"]
       23 GETTABLEKS                       R8 R8 K6 ["X"]
       25 GETTABLEKS                       R9 R3 K5 ["Min"]
       27 GETTABLEKS                       R9 R9 K7 ["Y"]
       29 CALL                             R7 2 -1
       30 NAMECALL                         R5 R0 K8 ["viewportPointToRay"]
       32 CALL                             R5 -1 1
       33 GETIMPORT                        R8 K4 [Vector2.new]
       35 GETTABLEKS                       R9 R3 K9 ["Max"]
       37 GETTABLEKS                       R9 R9 K6 ["X"]
       39 GETTABLEKS                       R10 R3 K9 ["Max"]
       41 GETTABLEKS                       R10 R10 K7 ["Y"]
       43 CALL                             R8 2 -1
       44 NAMECALL                         R6 R0 K8 ["viewportPointToRay"]
       46 CALL                             R6 -1 1
       47 GETIMPORT                        R9 K4 [Vector2.new]
       49 GETTABLEKS                       R10 R3 K5 ["Min"]
       51 GETTABLEKS                       R10 R10 K6 ["X"]
       53 GETTABLEKS                       R11 R3 K9 ["Max"]
       55 GETTABLEKS                       R11 R11 K7 ["Y"]
       57 CALL                             R9 2 -1
       58 NAMECALL                         R7 R0 K8 ["viewportPointToRay"]
       60 CALL                             R7 -1 1
       61 GETTABLEKS                       R8 R5 K10 ["Direction"]
       63 GETTABLEKS                       R10 R4 K10 ["Direction"]
       65 NAMECALL                         R8 R8 K11 ["FuzzyEq"]
       67 CALL                             R8 2 1
       68 JUMPIFNOT                        R8 ; [+73]
       69 GETTABLEKS                       R9 R5 K12 ["Origin"]
       71 GETTABLEKS                       R10 R4 K12 ["Origin"]
       73 SUB                              R8 R9 R10
       74 GETTABLEKS                       R10 R5 K10 ["Direction"]
       76 NAMECALL                         R8 R8 K13 ["Cross"]
       78 CALL                             R8 2 1
       79 GETTABLEKS                       R10 R6 K12 ["Origin"]
       81 GETTABLEKS                       R11 R5 K12 ["Origin"]
       83 SUB                              R9 R10 R11
       84 GETTABLEKS                       R11 R6 K10 ["Direction"]
       86 NAMECALL                         R9 R9 K13 ["Cross"]
       88 CALL                             R9 2 1
       89 GETTABLEKS                       R11 R7 K12 ["Origin"]
       91 GETTABLEKS                       R12 R6 K12 ["Origin"]
       93 SUB                              R10 R11 R12
       94 GETTABLEKS                       R12 R7 K10 ["Direction"]
       96 NAMECALL                         R10 R10 K13 ["Cross"]
       98 CALL                             R10 2 1
       99 GETTABLEKS                       R12 R4 K12 ["Origin"]
      101 GETTABLEKS                       R13 R7 K12 ["Origin"]
      103 SUB                              R11 R12 R13
      104 GETTABLEKS                       R13 R4 K10 ["Direction"]
      106 NAMECALL                         R11 R11 K13 ["Cross"]
      108 CALL                             R11 2 1
      109 NEWTABLE                         R12 0 4
      111 DUPTABLE                         R13 K16 [{"origin", "normal"}]
      112 GETTABLEKS                       R14 R4 K12 ["Origin"]
      114 SETTABLEKS                       R14 R13 K14 ["origin"]
      116 SETTABLEKS                       R8 R13 K15 ["normal"]
      118 DUPTABLE                         R14 K16 [{"origin", "normal"}]
      119 GETTABLEKS                       R15 R5 K12 ["Origin"]
      121 SETTABLEKS                       R15 R14 K14 ["origin"]
      123 SETTABLEKS                       R9 R14 K15 ["normal"]
      125 DUPTABLE                         R15 K16 [{"origin", "normal"}]
      126 GETTABLEKS                       R16 R6 K12 ["Origin"]
      128 SETTABLEKS                       R16 R15 K14 ["origin"]
      130 SETTABLEKS                       R10 R15 K15 ["normal"]
      132 DUPTABLE                         R16 K16 [{"origin", "normal"}]
      133 GETTABLEKS                       R17 R7 K12 ["Origin"]
      135 SETTABLEKS                       R17 R16 K14 ["origin"]
      137 SETTABLEKS                       R11 R16 K15 ["normal"]
      139 SETLIST                          R12 R13 4 [1]
      141 RETURN                           R12 1
      142 GETTABLEKS                       R8 R7 K10 ["Direction"]
      144 GETTABLEKS                       R10 R4 K10 ["Direction"]
      146 NAMECALL                         R8 R8 K13 ["Cross"]
      148 CALL                             R8 2 1
      149 GETTABLEKS                       R9 R4 K10 ["Direction"]
      151 GETTABLEKS                       R11 R5 K10 ["Direction"]
      153 NAMECALL                         R9 R9 K13 ["Cross"]
      155 CALL                             R9 2 1
      156 GETTABLEKS                       R10 R5 K10 ["Direction"]
      158 GETTABLEKS                       R12 R6 K10 ["Direction"]
      160 NAMECALL                         R10 R10 K13 ["Cross"]
      162 CALL                             R10 2 1
      163 GETTABLEKS                       R11 R6 K10 ["Direction"]
      165 GETTABLEKS                       R13 R7 K10 ["Direction"]
      167 NAMECALL                         R11 R11 K13 ["Cross"]
      169 CALL                             R11 2 1
      170 NEWTABLE                         R12 0 4
      172 DUPTABLE                         R13 K16 [{"origin", "normal"}]
      173 GETTABLEKS                       R14 R4 K12 ["Origin"]
      175 SETTABLEKS                       R14 R13 K14 ["origin"]
      177 SETTABLEKS                       R9 R13 K15 ["normal"]
      179 DUPTABLE                         R14 K16 [{"origin", "normal"}]
      180 GETTABLEKS                       R15 R5 K12 ["Origin"]
      182 SETTABLEKS                       R15 R14 K14 ["origin"]
      184 SETTABLEKS                       R10 R14 K15 ["normal"]
      186 DUPTABLE                         R15 K16 [{"origin", "normal"}]
      187 GETTABLEKS                       R16 R6 K12 ["Origin"]
      189 SETTABLEKS                       R16 R15 K14 ["origin"]
      191 SETTABLEKS                       R11 R15 K15 ["normal"]
      193 DUPTABLE                         R16 K16 [{"origin", "normal"}]
      194 GETTABLEKS                       R17 R7 K12 ["Origin"]
      196 SETTABLEKS                       R17 R16 K14 ["origin"]
      198 SETTABLEKS                       R8 R16 K15 ["normal"]
      200 SETLIST                          R12 R13 4 [1]
      202 RETURN                           R12 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_dragStartLocation"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R5 R0 K0 ["_isDragging"]
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        5 LOADK                            R5 K1 ["Cannot begin drag when already dragging."]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R0 K0 ["_isDragging"]
       12 GETTABLEKS                       R3 R0 K4 ["_beginBoxSelect"]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R0 K5 ["_dragCandidates"]
       18 GETTABLEKS                       R3 R0 K6 ["_selectionWrapper"]
       20 NAMECALL                         R3 R3 K7 ["get"]
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R0 K8 ["_selectionBeforeDrag"]
       25 MOVE                             R3 R2
       26 JUMPIF                           R3 ; [+3]
       27 NAMECALL                         R3 R1 K9 ["getMouseLocation"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R0 K10 ["_dragStartLocation"]
       32 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 ORK                              R3 R4 K0 [0]
        3 GETUPVAL                         R6 0
        4 GETTABLE                         R5 R6 R1
        5 ORK                              R4 R5 K0 [0]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_isDragging"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Cannot update drag when no drag in progress."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 NAMECALL                         R2 R1 K4 ["shouldExtendSelection"]
       10 CALL                             R2 1 1
       11 NAMECALL                         R3 R1 K5 ["getMouseLocation"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R0 K6 ["_dragStartLocation"]
       16 LOADNIL                          R5
       17 JUMPIF                           R2 ; [+7]
       18 GETTABLEKS                       R6 R0 K7 ["_selectionWrapper"]
       20 NAMECALL                         R6 R6 K8 ["get"]
       22 CALL                             R6 1 1
       23 MOVE                             R5 R6
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R5 R0 K9 ["_selectionBeforeDrag"]
       27 GETTABLEKS                       R6 R0 K10 ["_updateBoxSelect"]
       29 MOVE                             R7 R1
       30 MOVE                             R8 R4
       31 MOVE                             R9 R3
       32 CALL                             R6 3 0
       33 SUB                              R6 R3 R4
       34 GETTABLEKS                       R7 R6 K11 ["Magnitude"]
       36 LOADN                            R8 3
       37 JUMPIFNOTLT                      R7 R8 ; [+2]
       39 RETURN                           R0 0
       40 GETUPVAL                         R7 0
       41 MOVE                             R8 R1
       42 MOVE                             R9 R4
       43 MOVE                             R10 R3
       44 CALL                             R7 3 1
       45 JUMPIF                           R7 ; [+1]
       46 RETURN                           R0 0
       47 NEWTABLE                         R8 0 0
       49 LOADB                            R9 0
       50 GETTABLEKS                       R10 R0 K12 ["_insertionOrder"]
       52 GETIMPORT                        R11 K14 [ipairs]
       54 GETTABLEKS                       R12 R0 K15 ["_dragCandidates"]
       56 CALL                             R11 1 3
       57 FORGPREP_INEXT                   R11
       58 LOADB                            R16 1
       59 GETIMPORT                        R17 K14 [ipairs]
       61 MOVE                             R18 R7
       62 CALL                             R17 1 3
       63 FORGPREP_INEXT                   R17
       64 GETTABLEKS                       R23 R15 K16 ["Center"]
       66 GETTABLEKS                       R24 R21 K17 ["origin"]
       68 SUB                              R22 R23 R24
       69 GETTABLEKS                       R24 R21 K18 ["normal"]
       71 NAMECALL                         R22 R22 K19 ["Dot"]
       73 CALL                             R22 2 1
       74 LOADN                            R23 0
       75 JUMPIFNOTLT                      R22 R23 ; [+3]
       77 LOADB                            R16 0
       78 JUMP                             ; [+2]
       79 FORGLOOP                         R17 2 [inext] ; [-16]
       81 GETTABLEKS                       R17 R15 K20 ["Selected"]
       83 JUMPIFEQ                         R16 R17 ; [+15]
       85 SETTABLEKS                       R16 R15 K20 ["Selected"]
       87 LOADB                            R9 1
       88 JUMPIFNOT                        R16 ; [+10]
       89 GETTABLEKS                       R17 R15 K21 ["Selectable"]
       91 GETTABLEKS                       R18 R0 K22 ["_insertionOrderNext"]
       93 SETTABLE                         R18 R10 R17
       94 GETTABLEKS                       R17 R0 K22 ["_insertionOrderNext"]
       96 ADDK                             R17 R17 K23 [1]
       97 SETTABLEKS                       R17 R0 K22 ["_insertionOrderNext"]
       99 JUMPIFNOT                        R16 ; [+8]
      100 GETTABLEKS                       R19 R15 K21 ["Selectable"]
      102 FASTCALL2                        TABLE_INSERT R8 R19 ; [+4]
      104 MOVE                             R18 R8
      105 GETIMPORT                        R17 K26 [table.insert]
      107 CALL                             R17 2 0
      108 FORGLOOP                         R11 2 [inext] ; [-51]
      110 JUMPIFNOT                        R9 ; [+23]
      111 GETIMPORT                        R11 K28 [table.sort]
      113 MOVE                             R12 R8
      114 NEWCLOSURE                       R13 P0
      115 CAPTURE                          VAL R10
      116 CALL                             R11 2 0
      117 LOADNIL                          R11
      118 GETUPVAL                         R12 1
      119 GETTABLEKS                       R12 R12 K29 ["updateSelectionWithMultipleSelectables"]
      121 MOVE                             R13 R8
      122 MOVE                             R14 R5
      123 MOVE                             R15 R2
      124 CALL                             R12 3 2
      125 MOVE                             R8 R12
      126 MOVE                             R11 R13
      127 GETTABLEKS                       R12 R0 K7 ["_selectionWrapper"]
      129 MOVE                             R14 R8
      130 MOVE                             R15 R11
      131 NAMECALL                         R12 R12 K30 ["set"]
      133 CALL                             R12 3 0
      134 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["updateDrag"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["_endBoxSelect"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K2 ["_selectionBeforeDrag"]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R0 K3 ["_dragStartLocation"]
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R0 K4 ["_isDragging"]
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Utility"]
       11 GETTABLEKS                       R2 R2 K6 ["SelectionHelper"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 8 0
       21 SETTABLEKS                       R3 R3 K8 ["__index"]
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R4 R3 K10 ["new"]
       27 DUPCLOSURE                       R4 K11 [PROTO_1]
       28 DUPCLOSURE                       R5 K12 [PROTO_2]
       29 SETTABLEKS                       R5 R3 K13 ["getStartLocation"]
       31 DUPCLOSURE                       R5 K14 [PROTO_3]
       32 SETTABLEKS                       R5 R3 K15 ["beginDrag"]
       34 DUPCLOSURE                       R5 K16 [PROTO_5]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R5 R3 K17 ["updateDrag"]
       39 DUPCLOSURE                       R5 K18 [PROTO_6]
       40 SETTABLEKS                       R5 R3 K19 ["commitDrag"]
       42 RETURN                           R3 1
