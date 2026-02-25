PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+11]
        5 GETIMPORT                        R0 K3 [task.cancel]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["current"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["current"]
       15 GETUPVAL                         R0 1
       16 LOADK                            R1 K4 [-∞]
       17 SETTABLEKS                       R1 R0 K0 ["current"]
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["get"]
        4 CALL                             R4 0 1
        5 GETTABLEKS                       R3 R4 K1 ["datum"]
        7 GETTABLEKS                       R2 R3 K2 ["id"]
        9 GETTABLE                         R0 R1 R2
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 1
       14 JUMPIF                           R0 ; [+19]
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R0 R1 K3 ["current"]
       18 JUMPIFEQKNIL                     R0 ; [+11]
       20 GETIMPORT                        R0 K6 [task.cancel]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K3 ["current"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 3
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K3 ["current"]
       30 GETUPVAL                         R0 4
       31 LOADK                            R1 K7 [-∞]
       32 SETTABLEKS                       R1 R0 K3 ["current"]
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["rightClick called without streaming"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["get"]
       11 CALL                             R0 0 1
       12 GETTABLEKS                       R2 R0 K4 ["datum"]
       14 GETTABLEKS                       R1 R2 K5 ["isGhost"]
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K6 ["showStreamingContextMenu"]
       20 GETTABLEKS                       R3 R0 K4 ["datum"]
       22 GETTABLEKS                       R2 R3 K7 ["id"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R2 R0 K4 ["datum"]
       28 GETTABLEKS                       R1 R2 K7 ["id"]
       30 GETUPVAL                         R3 3
       31 GETTABLE                         R2 R3 R1
       32 JUMPIF                           R2 ; [+12]
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R2 R3 K8 ["selectIds"]
       36 GETIMPORT                        R3 K11 [table.freeze]
       38 NEWTABLE                         R4 0 1
       40 MOVE                             R5 R1
       41 SETLIST                          R4 R5 1 [1]
       43 CALL                             R3 1 -1
       44 CALL                             R2 -1 0
       45 GETUPVAL                         R3 4
       46 GETTABLEKS                       R2 R3 K12 ["openContextMenuAsync"]
       48 CALL                             R2 0 1
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R3 R4 K13 ["showContextMenu"]
       52 MOVE                             R4 R2
       53 CALL                             R3 1 0
       54 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+11]
        3 GETIMPORT                        R0 K1 [next]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["selectedIdsArrayObservable"]
        8 GETTABLEKS                       R1 R2 K3 ["get"]
       10 CALL                             R1 0 -1
       11 CALL                             R0 -1 1
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R0 R1 K4 ["startSelectionDrag"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["get"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R1 R2 K2 ["datum"]
       10 GETTABLEKS                       R0 R1 K3 ["id"]
       12 GETUPVAL                         R1 2
       13 JUMPIFEQ                         R0 R1 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 LOADK                            R1 K4 ["Opening rename box"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 4
       20 JUMPIFNOT                        R0 ; [+4]
       21 GETUPVAL                         R1 5
       22 GETTABLEKS                       R0 R1 K5 ["enable"]
       24 CALL                             R0 0 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R2 R0 K1 ["datum"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 GETUPVAL                         R2 1
        9 JUMPIFEQ                         R1 R2 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 2
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+10]
       15 GETTABLEKS                       R2 R0 K1 ["datum"]
       17 GETTABLEKS                       R1 R2 K3 ["isGhost"]
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R1 R2 K4 ["showStreamingContextMenu"]
       23 GETUPVAL                         R2 1
       24 CALL                             R1 1 0
       25 GETUPVAL                         R3 5
       26 GETTABLEKS                       R2 R3 K5 ["selectedIdsObservable"]
       28 GETTABLEKS                       R1 R2 K0 ["get"]
       30 CALL                             R1 0 1
       31 SETUPVAL                         R1 4
       32 GETUPVAL                         R2 6
       33 GETTABLEKS                       R1 R2 K6 ["getMouseDoubleClickTime"]
       35 CALL                             R1 0 1
       36 GETIMPORT                        R3 K9 [os.clock]
       38 CALL                             R3 0 1
       39 GETUPVAL                         R5 7
       40 GETTABLEKS                       R4 R5 K10 ["current"]
       42 SUB                              R2 R3 R4
       43 JUMPIFNOTLT                      R2 R1 ; [+12]
       45 GETUPVAL                         R2 8
       46 GETIMPORT                        R3 K9 [os.clock]
       48 CALL                             R3 0 1
       49 SETTABLEKS                       R3 R2 K10 ["current"]
       51 GETUPVAL                         R2 7
       52 LOADK                            R3 K11 [-∞]
       53 SETTABLEKS                       R3 R2 K10 ["current"]
       55 RETURN                           R0 0
       56 GETUPVAL                         R2 9
       57 GETUPVAL                         R3 4
       58 CALL                             R2 1 1
       59 JUMPIFNOT                        R2 ; [+54]
       60 GETIMPORT                        R3 K9 [os.clock]
       62 CALL                             R3 0 1
       63 GETUPVAL                         R5 8
       64 GETTABLEKS                       R4 R5 K10 ["current"]
       66 SUB                              R2 R3 R4
       67 JUMPIFNOTLT                      R2 R1 ; [+46]
       69 GETUPVAL                         R2 7
       70 GETIMPORT                        R3 K9 [os.clock]
       72 CALL                             R3 0 1
       73 SETTABLEKS                       R3 R2 K10 ["current"]
       75 GETIMPORT                        R2 K13 [next]
       77 GETUPVAL                         R3 4
       78 CALL                             R2 1 1
       79 JUMPIFNOTEQKNIL                  R2 ; [+2]
       81 LOADB                            R4 0 +1
       82 LOADB                            R4 1
       83 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       85 LOADK                            R5 K14 ["currentSelectedIds should have one ID"]
       86 GETIMPORT                        R3 K16 [assert]
       88 CALL                             R3 2 0
       89 GETUPVAL                         R4 5
       90 GETTABLEKS                       R3 R4 K17 ["doubleClick"]
       92 MOVE                             R4 R2
       93 CALL                             R3 1 0
       94 GETUPVAL                         R4 10
       95 GETTABLEKS                       R3 R4 K10 ["current"]
       97 JUMPIFEQKNIL                     R3 ; [+11]
       99 GETIMPORT                        R3 K20 [task.cancel]
      101 GETUPVAL                         R5 10
      102 GETTABLEKS                       R4 R5 K10 ["current"]
      104 CALL                             R3 1 0
      105 GETUPVAL                         R3 10
      106 LOADNIL                          R4
      107 SETTABLEKS                       R4 R3 K10 ["current"]
      109 GETUPVAL                         R3 8
      110 LOADK                            R4 K11 [-∞]
      111 SETTABLEKS                       R4 R3 K10 ["current"]
      113 RETURN                           R0 0
      114 GETUPVAL                         R2 8
      115 GETIMPORT                        R3 K9 [os.clock]
      117 CALL                             R3 0 1
      118 SETTABLEKS                       R3 R2 K10 ["current"]
      120 GETUPVAL                         R2 7
      121 LOADK                            R3 K11 [-∞]
      122 SETTABLEKS                       R3 R2 K10 ["current"]
      124 GETUPVAL                         R2 11
      125 JUMPIFNOT                        R2 ; [+65]
      126 GETUPVAL                         R2 12
      127 LOADK                            R3 K21 ["Already selected, waiting double click interval..."]
      128 CALL                             R2 1 0
      129 GETUPVAL                         R3 5
      130 GETTABLEKS                       R2 R3 K22 ["selectIds"]
      132 GETIMPORT                        R3 K25 [table.freeze]
      134 NEWTABLE                         R4 0 1
      136 GETUPVAL                         R5 1
      137 SETLIST                          R4 R5 1 [1]
      139 CALL                             R3 1 -1
      140 CALL                             R2 -1 0
      141 GETUPVAL                         R3 13
      142 GETTABLEKS                       R2 R3 K10 ["current"]
      144 LOADB                            R3 0
      145 JUMPIFEQKNIL                     R2 ; [+31]
      147 LOADB                            R3 0
      148 GETUPVAL                         R6 14
      149 GETTABLEKS                       R5 R6 K26 ["Position"]
      151 GETTABLEKS                       R4 R5 K27 ["X"]
      153 GETTABLEKS                       R6 R2 K28 ["AbsolutePosition"]
      155 GETTABLEKS                       R5 R6 K27 ["X"]
      157 JUMPIFNOTLE                      R5 R4 ; [+19]
      159 GETUPVAL                         R6 14
      160 GETTABLEKS                       R5 R6 K26 ["Position"]
      162 GETTABLEKS                       R4 R5 K27 ["X"]
      164 GETTABLEKS                       R7 R2 K28 ["AbsolutePosition"]
      166 GETTABLEKS                       R6 R7 K27 ["X"]
      168 GETTABLEKS                       R8 R2 K29 ["AbsoluteSize"]
      170 GETTABLEKS                       R7 R8 K27 ["X"]
      172 ADD                              R5 R6 R7
      173 JUMPIFLE                         R4 R5 ; [+2]
      175 LOADB                            R3 0 +1
      176 LOADB                            R3 1
      177 GETUPVAL                         R4 10
      178 GETIMPORT                        R5 K31 [task.delay]
      180 MOVE                             R6 R1
      181 NEWCLOSURE                       R7 P0
      182 CAPTURE                          UPVAL U10
      183 CAPTURE                          UPVAL U0
      184 CAPTURE                          UPVAL U1
      185 CAPTURE                          UPVAL U12
      186 CAPTURE                          VAL R3
      187 CAPTURE                          UPVAL U15
      188 CALL                             R5 2 1
      189 SETTABLEKS                       R5 R4 K10 ["current"]
      191 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R1 K2 [{"inputObjectResponsibleForClick", "startPosition"}]
        4 GETUPVAL                         R2 2
        5 SETTABLEKS                       R2 R1 K0 ["inputObjectResponsibleForClick"]
        7 GETUPVAL                         R2 3
        8 SETTABLEKS                       R2 R1 K1 ["startPosition"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 4
       13 CALL                             R0 0 0
       14 GETUPVAL                         R0 5
       15 CALL                             R0 0 1
       16 JUMPIFNOT                        R0 ; [+11]
       17 GETIMPORT                        R0 K4 [next]
       19 GETUPVAL                         R3 6
       20 GETTABLEKS                       R2 R3 K5 ["selectedIdsArrayObservable"]
       22 GETTABLEKS                       R1 R2 K6 ["get"]
       24 CALL                             R1 0 -1
       25 CALL                             R0 -1 1
       26 JUMPIF                           R0 ; [+1]
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 7
       29 GETTABLEKS                       R0 R1 K7 ["startSelectionDrag"]
       31 CALL                             R0 0 0
       32 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        5 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        7 JUMPIFNOTEQ                      R2 R3 ; [+4]
        9 GETUPVAL                         R2 1
       10 CALL                             R2 0 0
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       14 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       16 JUMPIFEQ                         R2 R3 ; [+8]
       18 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       20 GETIMPORT                        R3 K7 [Enum.UserInputType.Touch]
       22 JUMPIFEQ                         R2 R3 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R2 R3 K8 ["get"]
       28 CALL                             R2 0 1
       29 GETTABLEKS                       R4 R2 K9 ["datum"]
       31 GETTABLEKS                       R3 R4 K10 ["id"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R5 R6 K11 ["instancePickerActiveObservable"]
       36 GETTABLEKS                       R4 R5 K8 ["get"]
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+20]
       40 GETUPVAL                         R4 0
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+11]
       43 GETTABLEKS                       R5 R2 K9 ["datum"]
       45 GETTABLEKS                       R4 R5 K12 ["isGhost"]
       47 JUMPIFNOT                        R4 ; [+6]
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R4 R5 K13 ["instancePickerSubmitInstance"]
       51 LOADNIL                          R5
       52 CALL                             R4 1 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R5 3
       55 GETTABLEKS                       R4 R5 K13 ["instancePickerSubmitInstance"]
       57 MOVE                             R5 R3
       58 CALL                             R4 1 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R4 4
       61 DUPTABLE                         R5 K16 [{"scrollingFrameRef", "position"}]
       62 GETUPVAL                         R6 5
       63 SETTABLEKS                       R6 R5 K14 ["scrollingFrameRef"]
       65 GETTABLEKS                       R6 R1 K17 ["Position"]
       67 SETTABLEKS                       R6 R5 K15 ["position"]
       69 CALL                             R4 1 1
       70 JUMPIFEQKNIL                     R4 ; [+2]
       72 RETURN                           R0 0
       73 GETUPVAL                         R6 3
       74 GETTABLEKS                       R5 R6 K18 ["selectedIdsObservable"]
       76 GETTABLEKS                       R4 R5 K8 ["get"]
       78 CALL                             R4 0 1
       79 GETTABLE                         R7 R4 R3
       80 NOT                              R6 R7
       81 NOT                              R5 R6
       82 LOADB                            R6 0
       83 GETIMPORT                        R9 K21 [Enum.ModifierKey.Shift]
       85 NAMECALL                         R7 R1 K22 ["IsModifierKeyDown"]
       87 CALL                             R7 2 1
       88 JUMPIFNOT                        R7 ; [+7]
       89 LOADB                            R6 1
       90 GETUPVAL                         R8 3
       91 GETTABLEKS                       R7 R8 K23 ["shiftClick"]
       93 MOVE                             R8 R3
       94 CALL                             R7 1 0
       95 JUMP                             ; [+59]
       96 GETIMPORT                        R9 K25 [Enum.ModifierKey.Ctrl]
       98 NAMECALL                         R7 R1 K22 ["IsModifierKeyDown"]
      100 CALL                             R7 2 1
      101 JUMPIFNOT                        R7 ; [+53]
      102 LOADB                            R6 1
      103 GETUPVAL                         R9 3
      104 GETTABLEKS                       R8 R9 K26 ["selectedIdsArrayObservable"]
      106 GETTABLEKS                       R7 R8 K8 ["get"]
      108 CALL                             R7 0 1
      109 JUMPIFNOT                        R5 ; [+26]
      110 NEWTABLE                         R8 0 0
      112 MOVE                             R9 R7
      113 LOADNIL                          R10
      114 LOADNIL                          R11
      115 FORGPREP                         R9
      116 JUMPIFEQ                         R13 R3 ; [+8]
      118 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      120 MOVE                             R15 R8
      121 MOVE                             R16 R13
      122 GETIMPORT                        R14 K29 [table.insert]
      124 CALL                             R14 2 0
      125 FORGLOOP                         R9 2 ; [-10]
      127 GETUPVAL                         R10 3
      128 GETTABLEKS                       R9 R10 K30 ["selectIds"]
      130 GETIMPORT                        R10 K32 [table.freeze]
      132 MOVE                             R11 R8
      133 CALL                             R10 1 -1
      134 CALL                             R9 -1 0
      135 JUMP                             ; [+19]
      136 GETIMPORT                        R8 K34 [table.clone]
      138 MOVE                             R9 R7
      139 CALL                             R8 1 1
      140 FASTCALL2                        TABLE_INSERT R8 R3 ; [+5]
      142 MOVE                             R10 R8
      143 MOVE                             R11 R3
      144 GETIMPORT                        R9 K29 [table.insert]
      146 CALL                             R9 2 0
      147 GETUPVAL                         R10 3
      148 GETTABLEKS                       R9 R10 K30 ["selectIds"]
      150 GETIMPORT                        R10 K32 [table.freeze]
      152 MOVE                             R11 R8
      153 CALL                             R10 1 -1
      154 CALL                             R9 -1 0
      155 JUMPIFNOT                        R6 ; [+2]
      156 CLOSEUPVALS                      R4
      157 RETURN                           R0 0
      158 JUMPIF                           R5 ; [+5]
      159 GETUPVAL                         R8 3
      160 GETTABLEKS                       R7 R8 K35 ["unselectedInstanceClicked"]
      162 MOVE                             R8 R3
      163 CALL                             R7 1 0
      164 LOADB                            R7 0
      165 GETUPVAL                         R9 6
      166 GETTABLEKS                       R8 R9 K36 ["current"]
      168 JUMPIFEQKNIL                     R8 ; [+24]
      170 GETTABLEKS                       R9 R1 K17 ["Position"]
      172 GETTABLEKS                       R8 R9 K37 ["X"]
      174 GETUPVAL                         R13 6
      175 GETTABLEKS                       R12 R13 K36 ["current"]
      177 GETTABLEKS                       R11 R12 K38 ["AbsolutePosition"]
      179 GETTABLEKS                       R10 R11 K37 ["X"]
      181 GETUPVAL                         R14 6
      182 GETTABLEKS                       R13 R14 K36 ["current"]
      184 GETTABLEKS                       R12 R13 K39 ["AbsoluteSize"]
      186 GETTABLEKS                       R11 R12 K37 ["X"]
      188 ADD                              R9 R10 R11
      189 JUMPIFLT                         R9 R8 ; [+2]
      191 LOADB                            R7 0 +1
      192 LOADB                            R7 1
      193 NEWCLOSURE                       R8 P0
      194 CAPTURE                          UPVAL U0
      195 CAPTURE                          UPVAL U3
      196 CAPTURE                          UPVAL U7
      197 NEWCLOSURE                       R9 P1
      198 CAPTURE                          UPVAL U2
      199 CAPTURE                          VAL R3
      200 CAPTURE                          UPVAL U0
      201 CAPTURE                          UPVAL U8
      202 CAPTURE                          REF R4
      203 CAPTURE                          UPVAL U3
      204 CAPTURE                          UPVAL U9
      205 CAPTURE                          UPVAL U10
      206 CAPTURE                          UPVAL U11
      207 CAPTURE                          UPVAL U12
      208 CAPTURE                          UPVAL U13
      209 CAPTURE                          VAL R5
      210 CAPTURE                          UPVAL U14
      211 CAPTURE                          UPVAL U6
      212 CAPTURE                          VAL R1
      213 CAPTURE                          UPVAL U15
      214 GETIMPORT                        R10 K42 [Vector2.new]
      216 GETTABLEKS                       R12 R1 K17 ["Position"]
      218 GETTABLEKS                       R11 R12 K37 ["X"]
      220 GETTABLEKS                       R13 R1 K17 ["Position"]
      222 GETTABLEKS                       R12 R13 K43 ["Y"]
      224 CALL                             R10 2 1
      225 GETUPVAL                         R11 16
      226 MOVE                             R12 R1
      227 MOVE                             R13 R9
      228 NEWCLOSURE                       R14 P2
      229 CAPTURE                          VAL R7
      230 CAPTURE                          UPVAL U17
      231 CAPTURE                          VAL R1
      232 CAPTURE                          VAL R10
      233 CAPTURE                          UPVAL U18
      234 CAPTURE                          UPVAL U0
      235 CAPTURE                          UPVAL U3
      236 CAPTURE                          UPVAL U7
      237 CALL                             R11 3 0
      238 CLOSEUPVALS                      R4
      239 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 CALL                             R6 1 1
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R7 R8 K0 ["use"]
        6 GETTABLEKS                       R8 R1 K1 ["selectedIdsObservable"]
        8 CALL                             R7 1 1
        9 GETUPVAL                         R9 2
       10 GETTABLEKS                       R8 R9 K2 ["useContext"]
       12 GETUPVAL                         R10 3
       13 GETTABLEKS                       R9 R10 K3 ["Context"]
       15 CALL                             R8 1 1
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R9 R10 K2 ["useContext"]
       19 GETUPVAL                         R11 4
       20 GETTABLEKS                       R10 R11 K3 ["Context"]
       22 CALL                             R9 1 1
       23 GETUPVAL                         R11 2
       24 GETTABLEKS                       R10 R11 K2 ["useContext"]
       26 GETUPVAL                         R12 5
       27 GETTABLEKS                       R11 R12 K3 ["Context"]
       29 CALL                             R10 1 1
       30 GETUPVAL                         R12 2
       31 GETTABLEKS                       R11 R12 K4 ["useRef"]
       33 LOADK                            R12 K5 [-∞]
       34 CALL                             R11 1 1
       35 GETTABLEKS                       R14 R11 K6 ["current"]
       37 JUMPIFNOTEQKNIL                  R14 ; [+2]
       39 LOADB                            R13 0 +1
       40 LOADB                            R13 1
       41 FASTCALL2K                       ASSERT R13 K7 ; [+4]
       43 LOADK                            R14 K7 ["Luau"]
       44 GETIMPORT                        R12 K9 [assert]
       46 CALL                             R12 2 0
       47 GETUPVAL                         R13 2
       48 GETTABLEKS                       R12 R13 K4 ["useRef"]
       50 LOADK                            R13 K5 [-∞]
       51 CALL                             R12 1 1
       52 GETUPVAL                         R14 2
       53 GETTABLEKS                       R13 R14 K4 ["useRef"]
       55 LOADNIL                          R14
       56 CALL                             R13 1 1
       57 NEWCLOSURE                       R14 P0
       58 CAPTURE                          VAL R13
       59 CAPTURE                          VAL R11
       60 GETUPVAL                         R16 2
       61 GETTABLEKS                       R15 R16 K10 ["useEffect"]
       63 NEWCLOSURE                       R16 P1
       64 CAPTURE                          VAL R14
       65 NEWTABLE                         R17 0 0
       67 CALL                             R15 2 0
       68 GETUPVAL                         R16 2
       69 GETTABLEKS                       R15 R16 K10 ["useEffect"]
       71 NEWCLOSURE                       R16 P2
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R11
       77 NEWTABLE                         R17 0 2
       79 MOVE                             R18 R7
       80 MOVE                             R19 R0
       81 SETLIST                          R17 R18 2 [1]
       83 CALL                             R15 2 0
       84 GETUPVAL                         R15 7
       85 CALL                             R15 0 1
       86 GETUPVAL                         R17 2
       87 GETTABLEKS                       R16 R17 K11 ["useCallback"]
       89 NEWCLOSURE                       R17 P3
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R1
       95 NEWTABLE                         R18 0 7
       97 MOVE                             R19 R0
       98 MOVE                             R20 R7
       99 GETTABLEKS                       R21 R1 K12 ["selectIds"]
      101 GETTABLEKS                       R22 R1 K13 ["openContextMenuAsync"]
      103 GETTABLEKS                       R23 R1 K14 ["performContextMenuAction"]
      105 GETTABLEKS                       R24 R8 K15 ["showContextMenu"]
      107 GETTABLEKS                       R25 R8 K16 ["showStreamingContextMenu"]
      109 SETLIST                          R18 R19 7 [1]
      111 CALL                             R16 2 1
      112 GETUPVAL                         R18 2
      113 GETTABLEKS                       R17 R18 K11 ["useCallback"]
      115 NEWCLOSURE                       R18 P4
      116 CAPTURE                          UPVAL U8
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R1
      120 CAPTURE                          UPVAL U9
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R11
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          VAL R13
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R4
      135 NEWTABLE                         R19 0 8
      137 MOVE                             R20 R5
      138 MOVE                             R21 R0
      139 GETTABLEKS                       R22 R1 K12 ["selectIds"]
      141 MOVE                             R23 R15
      142 GETTABLEKS                       R24 R9 K17 ["startSelectionDrag"]
      144 GETTABLEKS                       R25 R8 K16 ["showStreamingContextMenu"]
      146 MOVE                             R26 R16
      147 GETTABLEKS                       R27 R10 K18 ["getMouseDoubleClickTime"]
      149 SETLIST                          R19 R20 8 [1]
      151 CALL                             R17 2 1
      152 DUPTABLE                         R18 K21 [{"inputBegan", "textLabelRef"}]
      153 SETTABLEKS                       R17 R18 K19 ["inputBegan"]
      155 SETTABLEKS                       R3 R18 K20 ["textLabelRef"]
      157 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ContextMenuContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Components"]
       20 GETTABLEKS                       R4 R5 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R4 K9 ["DragDropContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Components"]
       29 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       31 GETTABLEKS                       R4 R5 K10 ["MouseContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["Observable"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K13 ["Parent"]
       45 GETTABLEKS                       R6 R7 K14 ["React"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K15 ["RpcTypes"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K11 ["Util"]
       57 GETTABLEKS                       R8 R9 K16 ["createDebugLogger"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K17 ["Flags"]
       64 GETTABLEKS                       R9 R10 K18 ["getFFlagExplorerStreaming"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K11 ["Util"]
       71 GETTABLEKS                       R10 R11 K19 ["getScrollBarOrientation"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K11 ["Util"]
       78 GETTABLEKS                       R11 R12 K20 ["hasOneItem"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R13 R0 K11 ["Util"]
       85 GETTABLEKS                       R12 R13 K21 ["profile"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R14 R0 K22 ["Hooks"]
       92 GETTABLEKS                       R13 R14 K23 ["useBoxSelect"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R15 R0 K22 ["Hooks"]
       99 GETTABLEKS                       R14 R15 K24 ["useRenameBoxActivity"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R16 R0 K22 ["Hooks"]
      106 GETTABLEKS                       R15 R16 K25 ["useVisibleExplorerNodeRange"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R17 R0 K22 ["Hooks"]
      113 GETTABLEKS                       R16 R17 K26 ["useWatchForClickOrDrag"]
      115 CALL                             R15 1 1
      116 MOVE                             R16 R7
      117 LOADK                            R17 K27 ["useExplorerNodeClicking"]
      118 CALL                             R16 1 1
      119 DUPCLOSURE                       R17 K28 [PROTO_9]
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R16
      131 MOVE                             R18 R11
      132 MOVE                             R19 R17
      133 CALL                             R18 1 -1
      134 RETURN                           R18 -1
