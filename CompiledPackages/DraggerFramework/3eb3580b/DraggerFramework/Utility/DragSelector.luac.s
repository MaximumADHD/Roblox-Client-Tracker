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
       32 DUPTABLE                         R4 K12 [{"_isDragging", "_selectionBeforeDrag", "_dragStartLocation", "_dragCandidates", "_selectionWrapper", "_beginBoxSelect", "_updateBoxSelect", "_endBoxSelect", "_insertionOrder", "_insertionOrderNext"}]
       33 LOADB                            R5 0
       34 SETTABLEKS                       R5 R4 K2 ["_isDragging"]
       36 NEWTABLE                         R5 0 0
       38 SETTABLEKS                       R5 R4 K3 ["_selectionBeforeDrag"]
       40 LOADNIL                          R5
       41 SETTABLEKS                       R5 R4 K4 ["_dragStartLocation"]
       43 NEWTABLE                         R5 0 0
       45 SETTABLEKS                       R5 R4 K5 ["_dragCandidates"]
       47 SETTABLEKS                       R0 R4 K6 ["_selectionWrapper"]
       49 SETTABLEKS                       R1 R4 K7 ["_beginBoxSelect"]
       51 SETTABLEKS                       R2 R4 K8 ["_updateBoxSelect"]
       53 SETTABLEKS                       R3 R4 K9 ["_endBoxSelect"]
       55 NEWTABLE                         R5 0 0
       57 SETTABLEKS                       R5 R4 K10 ["_insertionOrder"]
       59 LOADN                            R5 1
       60 SETTABLEKS                       R5 R4 K11 ["_insertionOrderNext"]
       62 GETUPVAL                         R7 0
       63 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       65 MOVE                             R6 R4
       66 GETIMPORT                        R5 K14 [setmetatable]
       68 CALL                             R5 2 1
       69 RETURN                           R5 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [Rect.new]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 CALL                             R3 2 1
        5 GETIMPORT                        R6 K4 [Vector2.new]
        7 GETTABLEKS                       R8 R3 K5 ["Min"]
        9 GETTABLEKS                       R7 R8 K6 ["X"]
       11 GETTABLEKS                       R9 R3 K5 ["Min"]
       13 GETTABLEKS                       R8 R9 K7 ["Y"]
       15 CALL                             R6 2 -1
       16 NAMECALL                         R4 R0 K8 ["viewportPointToRay"]
       18 CALL                             R4 -1 1
       19 GETIMPORT                        R7 K4 [Vector2.new]
       21 GETTABLEKS                       R9 R3 K9 ["Max"]
       23 GETTABLEKS                       R8 R9 K6 ["X"]
       25 GETTABLEKS                       R10 R3 K5 ["Min"]
       27 GETTABLEKS                       R9 R10 K7 ["Y"]
       29 CALL                             R7 2 -1
       30 NAMECALL                         R5 R0 K8 ["viewportPointToRay"]
       32 CALL                             R5 -1 1
       33 GETIMPORT                        R8 K4 [Vector2.new]
       35 GETTABLEKS                       R10 R3 K9 ["Max"]
       37 GETTABLEKS                       R9 R10 K6 ["X"]
       39 GETTABLEKS                       R11 R3 K9 ["Max"]
       41 GETTABLEKS                       R10 R11 K7 ["Y"]
       43 CALL                             R8 2 -1
       44 NAMECALL                         R6 R0 K8 ["viewportPointToRay"]
       46 CALL                             R6 -1 1
       47 GETIMPORT                        R9 K4 [Vector2.new]
       49 GETTABLEKS                       R11 R3 K5 ["Min"]
       51 GETTABLEKS                       R10 R11 K6 ["X"]
       53 GETTABLEKS                       R12 R3 K9 ["Max"]
       55 GETTABLEKS                       R11 R12 K7 ["Y"]
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
       14 LOADNIL                          R4
       15 JUMPIF                           R2 ; [+7]
       16 GETTABLEKS                       R5 R0 K6 ["_selectionWrapper"]
       18 NAMECALL                         R5 R5 K7 ["get"]
       20 CALL                             R5 1 1
       21 MOVE                             R4 R5
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R4 R0 K8 ["_selectionBeforeDrag"]
       25 GETTABLEKS                       R5 R0 K9 ["_updateBoxSelect"]
       27 MOVE                             R6 R1
       28 GETTABLEKS                       R7 R0 K10 ["_dragStartLocation"]
       30 MOVE                             R8 R3
       31 CALL                             R5 3 0
       32 GETTABLEKS                       R6 R0 K10 ["_dragStartLocation"]
       34 SUB                              R5 R3 R6
       35 GETTABLEKS                       R6 R5 K11 ["Magnitude"]
       37 LOADN                            R7 3
       38 JUMPIFNOTLT                      R6 R7 ; [+2]
       40 RETURN                           R0 0
       41 GETUPVAL                         R6 0
       42 MOVE                             R7 R1
       43 GETTABLEKS                       R8 R0 K10 ["_dragStartLocation"]
       45 MOVE                             R9 R3
       46 CALL                             R6 3 1
       47 JUMPIF                           R6 ; [+1]
       48 RETURN                           R0 0
       49 NEWTABLE                         R7 0 0
       51 LOADB                            R8 0
       52 GETTABLEKS                       R9 R0 K12 ["_insertionOrder"]
       54 GETIMPORT                        R10 K14 [ipairs]
       56 GETTABLEKS                       R11 R0 K15 ["_dragCandidates"]
       58 CALL                             R10 1 3
       59 FORGPREP_INEXT                   R10
       60 LOADB                            R15 1
       61 GETIMPORT                        R16 K14 [ipairs]
       63 MOVE                             R17 R6
       64 CALL                             R16 1 3
       65 FORGPREP_INEXT                   R16
       66 GETTABLEKS                       R22 R14 K16 ["Center"]
       68 GETTABLEKS                       R23 R20 K17 ["origin"]
       70 SUB                              R21 R22 R23
       71 GETTABLEKS                       R23 R20 K18 ["normal"]
       73 NAMECALL                         R21 R21 K19 ["Dot"]
       75 CALL                             R21 2 1
       76 LOADN                            R22 0
       77 JUMPIFNOTLT                      R21 R22 ; [+3]
       79 LOADB                            R15 0
       80 JUMP                             ; [+2]
       81 FORGLOOP                         R16 2 [inext] ; [-16]
       83 GETTABLEKS                       R16 R14 K20 ["Selected"]
       85 JUMPIFEQ                         R15 R16 ; [+15]
       87 SETTABLEKS                       R15 R14 K20 ["Selected"]
       89 LOADB                            R8 1
       90 JUMPIFNOT                        R15 ; [+10]
       91 GETTABLEKS                       R16 R14 K21 ["Selectable"]
       93 GETTABLEKS                       R17 R0 K22 ["_insertionOrderNext"]
       95 SETTABLE                         R17 R9 R16
       96 GETTABLEKS                       R16 R0 K22 ["_insertionOrderNext"]
       98 ADDK                             R16 R16 K23 [1]
       99 SETTABLEKS                       R16 R0 K22 ["_insertionOrderNext"]
      101 JUMPIFNOT                        R15 ; [+8]
      102 GETTABLEKS                       R18 R14 K21 ["Selectable"]
      104 FASTCALL2                        TABLE_INSERT R7 R18 ; [+4]
      106 MOVE                             R17 R7
      107 GETIMPORT                        R16 K26 [table.insert]
      109 CALL                             R16 2 0
      110 FORGLOOP                         R10 2 [inext] ; [-51]
      112 JUMPIFNOT                        R8 ; [+23]
      113 GETIMPORT                        R10 K28 [table.sort]
      115 MOVE                             R11 R7
      116 NEWCLOSURE                       R12 P0
      117 CAPTURE                          VAL R9
      118 CALL                             R10 2 0
      119 LOADNIL                          R10
      120 GETUPVAL                         R12 1
      121 GETTABLEKS                       R11 R12 K29 ["updateSelectionWithMultipleSelectables"]
      123 MOVE                             R12 R7
      124 MOVE                             R13 R4
      125 MOVE                             R14 R2
      126 CALL                             R11 3 2
      127 MOVE                             R7 R11
      128 MOVE                             R10 R12
      129 GETTABLEKS                       R11 R0 K6 ["_selectionWrapper"]
      131 MOVE                             R13 R7
      132 MOVE                             R14 R10
      133 NAMECALL                         R11 R11 K30 ["set"]
      135 CALL                             R11 3 0
      136 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["Utility"]
       17 GETTABLEKS                       R3 R4 K10 ["SelectionHelper"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 8 0
       22 SETTABLEKS                       R3 R3 K11 ["__index"]
       24 DUPCLOSURE                       R4 K12 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R4 R3 K13 ["new"]
       28 DUPCLOSURE                       R4 K14 [PROTO_1]
       29 DUPCLOSURE                       R5 K15 [PROTO_2]
       30 SETTABLEKS                       R5 R3 K16 ["getStartLocation"]
       32 DUPCLOSURE                       R5 K17 [PROTO_3]
       33 SETTABLEKS                       R5 R3 K18 ["beginDrag"]
       35 DUPCLOSURE                       R5 K19 [PROTO_5]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R5 R3 K20 ["updateDrag"]
       40 DUPCLOSURE                       R5 K21 [PROTO_6]
       41 SETTABLEKS                       R5 R3 K22 ["commitDrag"]
       43 RETURN                           R3 1
