PROTO_0:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 LOADNIL                          R1
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K1 ["get"]
       12 CALL                             R7 0 1
       13 GETTABLEKS                       R8 R7 K2 ["datum"]
       15 GETTABLEKS                       R8 R8 K3 ["id"]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K4 ["nilId"]
       20 JUMPIFEQ                         R8 R9 ; [+10]
       22 JUMPIFEQKNIL                     R1 ; [+7]
       24 GETTABLEKS                       R8 R1 K5 ["yPixels"]
       26 GETTABLEKS                       R9 R7 K5 ["yPixels"]
       28 JUMPIFNOTLT                      R9 R8 ; [+2]
       30 MOVE                             R1 R7
       31 FORGLOOP                         R2 2 ; [-22]
       33 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 LOADNIL                          R1
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K1 ["get"]
       12 CALL                             R7 0 1
       13 GETTABLEKS                       R8 R7 K2 ["datum"]
       15 GETTABLEKS                       R8 R8 K3 ["id"]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K4 ["nilId"]
       20 JUMPIFEQ                         R8 R9 ; [+10]
       22 JUMPIFEQKNIL                     R1 ; [+7]
       24 GETTABLEKS                       R8 R1 K5 ["yPixels"]
       26 GETTABLEKS                       R9 R7 K5 ["yPixels"]
       28 JUMPIFNOTLT                      R8 R9 ; [+2]
       30 MOVE                             R1 R7
       31 FORGLOOP                         R2 2 ; [-22]
       33 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["Y"]
        2 GETTABLEKS                       R5 R2 K1 ["AbsolutePosition"]
        4 GETTABLEKS                       R5 R5 K0 ["Y"]
        6 SUB                              R3 R4 R5
        7 GETTABLEKS                       R5 R2 K2 ["CanvasPosition"]
        9 GETTABLEKS                       R5 R5 K0 ["Y"]
       11 ADD                              R4 R3 R5
       12 MOVE                             R5 R0
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETTABLEKS                       R10 R9 K3 ["get"]
       18 CALL                             R10 0 1
       19 GETTABLEKS                       R11 R10 K4 ["yPixels"]
       21 GETUPVAL                         R13 0
       22 GETTABLEKS                       R13 R13 K5 ["explorerRowHeight"]
       24 SUB                              R12 R4 R13
       25 JUMPIFNOTLE                      R12 R11 ; [+10]
       27 GETTABLEKS                       R11 R10 K4 ["yPixels"]
       29 JUMPIFNOTLE                      R11 R4 ; [+6]
       31 GETTABLEKS                       R11 R10 K6 ["datum"]
       33 GETTABLEKS                       R11 R11 K7 ["id"]
       35 RETURN                           R11 1
       36 FORGLOOP                         R5 2 ; [-21]
       38 LOADNIL                          R5
       39 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isMouseDown"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+4]
        5 GETIMPORT                        R0 K3 [task.wait]
        7 CALL                             R0 0 0
        8 JUMPBACK                         ; [-9]
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DEPRECATED_inputObjectResponsibleForClick"]
        3 GETTABLEKS                       R0 R0 K1 ["UserInputState"]
        5 GETIMPORT                        R1 K4 [Enum.UserInputState.End]
        7 JUMPIFEQ                         R0 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K5 ["current"]
       13 JUMPIFEQKNIL                     R0 ; [+5]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K5 ["current"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+21]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 GETUPVAL                         R2 2
        6 JUMPIFEQ                         R1 R2 ; [+16]
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K1 ["logCounter"]
       11 GETUPVAL                         R2 4
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 5
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 JUMPIFEQKNIL                     R1 ; [+5]
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K0 ["current"]
       21 CALL                             R1 0 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 6
       24 GETTABLEKS                       R1 R1 K0 ["current"]
       26 GETUPVAL                         R2 7
       27 MOVE                             R3 R1
       28 MOVE                             R4 R0
       29 GETUPVAL                         R5 8
       30 CALL                             R2 3 1
       31 JUMPIFNOTEQKNIL                  R2 ; [+31]
       33 GETTABLEKS                       R3 R0 K2 ["Y"]
       35 GETUPVAL                         R4 8
       36 GETTABLEKS                       R4 R4 K3 ["AbsolutePosition"]
       38 GETTABLEKS                       R4 R4 K2 ["Y"]
       40 JUMPIFNOTLE                      R3 R4 ; [+12]
       42 GETUPVAL                         R3 9
       43 MOVE                             R4 R1
       44 CALL                             R3 1 1
       45 JUMPIFNOTEQKNIL                  R3 ; [+2]
       47 RETURN                           R0 0
       48 GETTABLEKS                       R4 R3 K4 ["datum"]
       50 GETTABLEKS                       R2 R4 K5 ["id"]
       52 JUMP                             ; [+10]
       53 GETUPVAL                         R3 10
       54 MOVE                             R4 R1
       55 CALL                             R3 1 1
       56 JUMPIFNOTEQKNIL                  R3 ; [+2]
       58 RETURN                           R0 0
       59 GETTABLEKS                       R4 R3 K4 ["datum"]
       61 GETTABLEKS                       R2 R4 K5 ["id"]
       63 JUMPIFNOTEQKNIL                  R2 ; [+2]
       65 LOADB                            R4 0 +1
       66 LOADB                            R4 1
       67 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       69 LOADK                            R5 K6 ["Couldn't figure out hoveringNodeId"]
       70 GETIMPORT                        R3 K8 [assert]
       72 CALL                             R3 2 0
       73 GETUPVAL                         R3 2
       74 GETTABLEKS                       R3 R3 K9 ["getExplorerNodeById"]
       76 GETUPVAL                         R4 11
       77 CALL                             R3 1 1
       78 JUMPIFEQKNIL                     R3 ; [+5]
       80 GETTABLEKS                       R4 R3 K10 ["parent"]
       82 JUMPIFNOTEQKNIL                  R4 ; [+22]
       84 GETUPVAL                         R4 2
       85 GETTABLEKS                       R4 R4 K11 ["selectedIdsArrayObservable"]
       87 GETTABLEKS                       R4 R4 K12 ["get"]
       89 CALL                             R4 0 1
       90 LENGTH                           R5 R4
       91 JUMPIFNOTEQKN                    R5 K13 [0] ; [+11]
       93 GETUPVAL                         R5 5
       94 GETTABLEKS                       R5 R5 K0 ["current"]
       96 JUMPIFEQKNIL                     R5 ; [+5]
       98 GETUPVAL                         R5 5
       99 GETTABLEKS                       R5 R5 K0 ["current"]
      101 CALL                             R5 0 0
      102 RETURN                           R0 0
      103 GETTABLEN                        R5 R4 1
      104 SETUPVAL                         R5 11
      105 GETUPVAL                         R4 12
      106 GETTABLEKS                       R4 R4 K14 ["isFromBlankSpace"]
      108 JUMPIFNOT                        R4 ; [+50]
      109 GETUPVAL                         R4 2
      110 GETTABLEKS                       R4 R4 K15 ["getIndexOfInstanceId"]
      112 GETUPVAL                         R5 11
      113 CALL                             R4 1 1
      114 JUMPIFNOTEQKNIL                  R4 ; [+2]
      116 LOADB                            R6 0 +1
      117 LOADB                            R6 1
      118 FASTCALL2K                       ASSERT R6 K16 ; [+4]
      120 LOADK                            R7 K16 ["Index of last node is somehow nil"]
      121 GETIMPORT                        R5 K8 [assert]
      123 CALL                             R5 2 0
      124 GETTABLEKS                       R7 R0 K2 ["Y"]
      126 GETUPVAL                         R8 8
      127 GETTABLEKS                       R8 R8 K3 ["AbsolutePosition"]
      129 GETTABLEKS                       R8 R8 K2 ["Y"]
      131 SUB                              R6 R7 R8
      132 GETUPVAL                         R7 8
      133 GETTABLEKS                       R7 R7 K17 ["CanvasPosition"]
      135 GETTABLEKS                       R7 R7 K2 ["Y"]
      137 ADD                              R5 R6 R7
      138 GETUPVAL                         R7 13
      139 GETTABLEKS                       R7 R7 K18 ["explorerRowHeight"]
      141 MUL                              R6 R7 R4
      142 SUB                              R8 R5 R6
      143 LOADN                            R9 0
      144 JUMPIFLT                         R9 R8 ; [+2]
      146 LOADB                            R7 0 +1
      147 LOADB                            R7 1
      148 JUMPIFNOT                        R7 ; [+10]
      149 GETUPVAL                         R8 2
      150 GETTABLEKS                       R8 R8 K19 ["selectIds"]
      152 GETIMPORT                        R9 K22 [table.freeze]
      154 NEWTABLE                         R10 0 0
      156 CALL                             R9 1 -1
      157 CALL                             R8 -1 0
      158 RETURN                           R0 0
      159 GETUPVAL                         R4 2
      160 GETTABLEKS                       R4 R4 K23 ["selectRange"]
      162 GETUPVAL                         R5 11
      163 MOVE                             R6 R2
      164 CALL                             R4 2 0
      165 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["getMousePosition"]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 LOADNIL                          R1
       14 CALL                             R0 1 0
       15 GETIMPORT                        R0 K3 [task.cancel]
       17 GETUPVAL                         R1 4
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 5
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K4 ["current"]
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 JUMPIFEQKNIL                     R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 JUMPIFNOTEQKNIL                  R1 ; [+2]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R4 R0 K1 ["startPosition"]
       19 GETTABLEKS                       R4 R4 K2 ["Y"]
       21 GETTABLEKS                       R5 R1 K3 ["AbsolutePosition"]
       23 GETTABLEKS                       R5 R5 K2 ["Y"]
       25 SUB                              R3 R4 R5
       26 LOADN                            R4 0
       27 JUMPIFLT                         R4 R3 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 JUMPIF                           R2 ; [+1]
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 3
       34 DUPTABLE                         R4 K6 [{"scrollingFrameRef", "position"}]
       35 GETUPVAL                         R5 2
       36 SETTABLEKS                       R5 R4 K4 ["scrollingFrameRef"]
       38 GETTABLEKS                       R5 R0 K1 ["startPosition"]
       40 SETTABLEKS                       R5 R4 K5 ["position"]
       42 CALL                             R3 1 1
       43 JUMPIFEQKNIL                     R3 ; [+2]
       45 RETURN                           R0 0
       46 LOADNIL                          R3
       47 GETTABLEKS                       R4 R0 K7 ["isFromBlankSpace"]
       49 JUMPIFNOT                        R4 ; [+14]
       50 GETUPVAL                         R4 4
       51 GETUPVAL                         R5 5
       52 GETTABLEKS                       R5 R5 K0 ["current"]
       54 CALL                             R4 1 1
       55 JUMPIFNOTEQKNIL                  R4 ; [+3]
       57 CLOSEUPVALS                      R3
       58 RETURN                           R0 0
       59 GETTABLEKS                       R5 R4 K8 ["datum"]
       61 GETTABLEKS                       R3 R5 K9 ["id"]
       63 JUMP                             ; [+19]
       64 GETUPVAL                         R4 6
       65 GETUPVAL                         R5 5
       66 GETTABLEKS                       R5 R5 K0 ["current"]
       68 GETTABLEKS                       R6 R0 K1 ["startPosition"]
       70 MOVE                             R7 R1
       71 CALL                             R4 3 1
       72 JUMPIF                           R4 ; [+9]
       73 GETIMPORT                        R4 K11 [next]
       75 GETUPVAL                         R5 7
       76 GETTABLEKS                       R5 R5 K12 ["selectedIdsObservable"]
       78 GETTABLEKS                       R5 R5 K13 ["get"]
       80 CALL                             R5 0 -1
       81 CALL                             R4 -1 1
       82 MOVE                             R3 R4
       83 JUMPIFNOTEQKNIL                  R3 ; [+2]
       85 LOADB                            R5 0 +1
       86 LOADB                            R5 1
       87 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       89 LOADK                            R6 K14 ["Could not figure out start hovering node ID"]
       90 GETIMPORT                        R4 K16 [assert]
       92 CALL                             R4 2 0
       93 GETIMPORT                        R4 K19 [task.spawn]
       95 NEWCLOSURE                       R5 P0
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          UPVAL U9
       98 CALL                             R4 1 1
       99 GETUPVAL                         R6 0
      100 JUMPIFNOT                        R6 ; [+9]
      101 GETUPVAL                         R5 8
      102 GETTABLEKS                       R5 R5 K20 ["mouseDownChanged"]
      104 NEWCLOSURE                       R7 P1
      105 CAPTURE                          UPVAL U1
      106 NAMECALL                         R5 R5 K21 ["Connect"]
      108 CALL                             R5 2 1
      109 JUMP                             ; [+12]
      110 GETTABLEKS                       R5 R0 K22 ["DEPRECATED_inputObjectResponsibleForClick"]
      112 LOADK                            R7 K23 ["UserInputState"]
      113 NAMECALL                         R5 R5 K24 ["GetPropertyChangedSignal"]
      115 CALL                             R5 2 1
      116 NEWCLOSURE                       R7 P2
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U1
      119 NAMECALL                         R5 R5 K21 ["Connect"]
      121 CALL                             R5 2 1
      122 NEWCLOSURE                       R6 P3
      123 CAPTURE                          UPVAL U10
      124 CAPTURE                          UPVAL U11
      125 CAPTURE                          UPVAL U7
      126 CAPTURE                          UPVAL U12
      127 CAPTURE                          UPVAL U13
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          UPVAL U5
      130 CAPTURE                          UPVAL U6
      131 CAPTURE                          VAL R1
      132 CAPTURE                          UPVAL U14
      133 CAPTURE                          UPVAL U4
      134 CAPTURE                          REF R3
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U15
      137 GETUPVAL                         R7 8
      138 GETTABLEKS                       R7 R7 K25 ["mouseMoved"]
      140 MOVE                             R9 R6
      141 NAMECALL                         R7 R7 K21 ["Connect"]
      143 CALL                             R7 2 1
      144 GETUPVAL                         R8 16
      145 GETTABLEKS                       R8 R8 K26 ["changedSignal"]
      147 NEWCLOSURE                       R10 P4
      148 CAPTURE                          VAL R6
      149 CAPTURE                          UPVAL U8
      150 NAMECALL                         R8 R8 K21 ["Connect"]
      152 CALL                             R8 2 1
      153 MOVE                             R9 R6
      154 GETUPVAL                         R10 8
      155 GETTABLEKS                       R10 R10 K27 ["getMousePosition"]
      157 CALL                             R10 0 -1
      158 CALL                             R9 -1 0
      159 GETUPVAL                         R9 1
      160 NEWCLOSURE                       R10 P5
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R8
      164 CAPTURE                          UPVAL U17
      165 CAPTURE                          VAL R4
      166 CAPTURE                          UPVAL U1
      167 SETTABLEKS                       R10 R9 K0 ["current"]
      169 GETUPVAL                         R9 9
      170 CALL                             R9 0 0
      171 GETUPVAL                         R9 17
      172 DUPTABLE                         R10 K29 [{"start"}]
      173 DUPTABLE                         R11 K33 [{"absolutePosition", "canvasPosition", "mouseLocation"}]
      174 GETTABLEKS                       R12 R1 K3 ["AbsolutePosition"]
      176 SETTABLEKS                       R12 R11 K30 ["absolutePosition"]
      178 GETTABLEKS                       R12 R1 K34 ["CanvasPosition"]
      180 SETTABLEKS                       R12 R11 K31 ["canvasPosition"]
      182 GETTABLEKS                       R12 R0 K1 ["startPosition"]
      184 SETTABLEKS                       R12 R11 K32 ["mouseLocation"]
      186 SETTABLEKS                       R11 R10 K28 ["start"]
      188 CALL                             R9 1 0
      189 CLOSEUPVALS                      R3
      190 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R6 0
        1 JUMPIFNOT                        R6 ; [+8]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K0 ["useContext"]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K1 ["AnalyticsContext"]
        8 CALL                             R5 1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R5
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K0 ["useContext"]
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R7 R7 K2 ["Context"]
       17 CALL                             R6 1 1
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R7 R7 K3 ["useRefToState"]
       21 MOVE                             R8 R1
       22 CALL                             R7 1 1
       23 GETUPVAL                         R9 0
       24 JUMPIFNOT                        R9 ; [+6]
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R8 R8 K3 ["useRefToState"]
       28 MOVE                             R9 R0
       29 CALL                             R8 1 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R8
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K4 ["useState"]
       35 LOADNIL                          R10
       36 CALL                             R9 1 2
       37 GETUPVAL                         R11 1
       38 GETTABLEKS                       R11 R11 K5 ["useRef"]
       40 LOADNIL                          R12
       41 CALL                             R11 1 1
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R12 R12 K6 ["useCallback"]
       45 NEWCLOSURE                       R13 P0
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R11
       48 CAPTURE                          VAL R2
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          VAL R7
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R5
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          UPVAL U10
       61 CAPTURE                          UPVAL U11
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R10
       64 NEWTABLE                         R14 0 6
       66 GETTABLEKS                       R15 R0 K7 ["selectRange"]
       68 GETTABLEKS                       R16 R0 K8 ["getExplorerNodeById"]
       70 MOVE                             R17 R4
       71 GETTABLEKS                       R18 R6 K9 ["isMouseDown"]
       73 GETTABLEKS                       R19 R6 K10 ["mouseMoved"]
       75 MOVE                             R20 R3
       76 SETLIST                          R14 R15 6 [1]
       78 CALL                             R12 2 1
       79 GETUPVAL                         R13 1
       80 GETTABLEKS                       R13 R13 K11 ["useEffect"]
       82 NEWCLOSURE                       R14 P1
       83 CAPTURE                          VAL R11
       84 NEWTABLE                         R15 0 1
       86 MOVE                             R16 R0
       87 SETLIST                          R15 R16 1 [1]
       89 CALL                             R13 2 0
       90 DUPTABLE                         R13 K14 [{"start", "activeBoxSelect"}]
       91 SETTABLEKS                       R12 R13 K12 ["start"]
       93 SETTABLEKS                       R9 R13 K13 ["activeBoxSelect"]
       95 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["MouseContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["Observable"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["RpcTypes"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["getScrollBarOrientation"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K18 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K19 ["useVisibleExplorerNodeRange"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K21 [game]
       72 LOADK                            R12 K22 ["ExplorerBoxSelectAggressiveMouseDownCheck2"]
       73 LOADB                            R13 0
       74 NAMECALL                         R10 R10 K23 ["DefineFastFlag"]
       76 CALL                             R10 3 1
       77 GETIMPORT                        R11 K21 [game]
       79 LOADK                            R13 K24 ["FixExplorerBoxSelectBetweenDataModels"]
       80 LOADB                            R14 0
       81 NAMECALL                         R11 R11 K23 ["DefineFastFlag"]
       83 CALL                             R11 3 1
       84 DUPTABLE                         R12 K33 [{["eventName"] = "LuaExplorerBoxSelectBetweenDataModels", ["backends"], ["throttlingPercentage"], ["description"] = "Fires when a box select is stopped because the session changed between renders.", ["lastUpdated"] = "2026-04-27"}]
       85 NEWTABLE                         R13 0 1
       87 LOADK                            R14 K34 ["RobloxTelemetryCounter"]
       88 SETLIST                          R13 R14 1 [1]
       90 SETTABLEKS                       R13 R12 K27 ["backends"]
       92 GETIMPORT                        R13 K21 [game]
       94 LOADK                            R15 K35 ["LuaExplorerBoxSelectBetweenDataModelsThrottlingHundredthsPercent"]
       95 LOADN                            R16 10000
       96 NAMECALL                         R13 R13 K36 ["DefineFastInt"]
       98 CALL                             R13 3 1
       99 SETTABLEKS                       R13 R12 K28 ["throttlingPercentage"]
      101 DUPCLOSURE                       R13 K37 [PROTO_0]
      102 CAPTURE                          VAL R2
      103 DUPCLOSURE                       R14 K38 [PROTO_1]
      104 CAPTURE                          VAL R2
      105 DUPCLOSURE                       R15 K39 [PROTO_2]
      106 CAPTURE                          VAL R2
      107 DUPCLOSURE                       R16 K40 [PROTO_12]
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R2
      120 RETURN                           R16 1
