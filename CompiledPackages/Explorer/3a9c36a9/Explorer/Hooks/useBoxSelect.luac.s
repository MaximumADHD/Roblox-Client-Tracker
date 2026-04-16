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
       13 GETTABLEKS                       R9 R7 K2 ["datum"]
       15 GETTABLEKS                       R8 R9 K3 ["id"]
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R9 R10 K4 ["nilId"]
       20 JUMPIFEQ                         R8 R9 ; [+10]
       22 JUMPIFEQKNIL                     R1 ; [+7]
       24 GETTABLEKS                       R8 R1 K5 ["yPixels"]
       26 GETTABLEKS                       R9 R7 K5 ["yPixels"]
       28 JUMPIFNOTLT                      R9 R8 ; [+2]
       30 MOVE                             R1 R7
       31 FORGLOOP                         R2 2 ; [-22]
       33 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+34]
        3 LENGTH                           R1 R0
        4 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R6 K1 ["get"]
       15 CALL                             R7 0 1
       16 GETTABLEKS                       R9 R7 K2 ["datum"]
       18 GETTABLEKS                       R8 R9 K3 ["id"]
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R9 R10 K4 ["nilId"]
       23 JUMPIFEQ                         R8 R9 ; [+10]
       25 JUMPIFEQKNIL                     R1 ; [+7]
       27 GETTABLEKS                       R8 R1 K5 ["yPixels"]
       29 GETTABLEKS                       R9 R7 K5 ["yPixels"]
       31 JUMPIFNOTLT                      R8 R9 ; [+2]
       33 MOVE                             R1 R7
       34 FORGLOOP                         R2 2 ; [-22]
       36 RETURN                           R1 1
       37 LENGTH                           R3 R0
       38 LOADN                            R1 1
       39 LOADN                            R2 255
       40 FORNPREP                         R1
       41 GETTABLE                         R5 R0 R3
       42 GETTABLEKS                       R4 R5 K1 ["get"]
       44 CALL                             R4 0 1
       45 GETTABLEKS                       R6 R4 K2 ["datum"]
       47 GETTABLEKS                       R5 R6 K3 ["id"]
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R6 R7 K4 ["nilId"]
       52 JUMPIFEQ                         R5 R6 ; [+2]
       54 RETURN                           R4 1
       55 FORNLOOP                         R1
       56 LOADNIL                          R1
       57 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["Y"]
        2 GETTABLEKS                       R6 R2 K1 ["AbsolutePosition"]
        4 GETTABLEKS                       R5 R6 K0 ["Y"]
        6 SUB                              R3 R4 R5
        7 GETTABLEKS                       R6 R2 K2 ["CanvasPosition"]
        9 GETTABLEKS                       R5 R6 K0 ["Y"]
       11 ADD                              R4 R3 R5
       12 MOVE                             R5 R0
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETTABLEKS                       R10 R9 K3 ["get"]
       18 CALL                             R10 0 1
       19 GETTABLEKS                       R11 R10 K4 ["yPixels"]
       21 GETUPVAL                         R14 0
       22 GETTABLEKS                       R13 R14 K5 ["explorerRowHeight"]
       24 SUB                              R12 R4 R13
       25 JUMPIFNOTLE                      R12 R11 ; [+10]
       27 GETTABLEKS                       R11 R10 K4 ["yPixels"]
       29 JUMPIFNOTLE                      R11 R4 ; [+6]
       31 GETTABLEKS                       R12 R10 K6 ["datum"]
       33 GETTABLEKS                       R11 R12 K7 ["id"]
       35 RETURN                           R11 1
       36 FORGLOOP                         R5 2 ; [-21]
       38 LOADNIL                          R5
       39 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isMouseDown"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+4]
        5 GETIMPORT                        R0 K3 [task.wait]
        7 CALL                             R0 0 0
        8 JUMPBACK                         ; [-9]
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputObjectResponsibleForClick"]
        3 GETTABLEKS                       R0 R1 K1 ["UserInputState"]
        5 GETIMPORT                        R1 K4 [Enum.UserInputState.End]
        7 JUMPIFEQ                         R0 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K5 ["current"]
       13 JUMPIFEQKNIL                     R0 ; [+5]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R0 R1 K5 ["current"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 GETUPVAL                         R5 2
        7 CALL                             R2 3 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+43]
       10 GETTABLEKS                       R3 R0 K1 ["Y"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K2 ["AbsolutePosition"]
       15 GETTABLEKS                       R4 R5 K1 ["Y"]
       17 JUMPIFNOTLE                      R3 R4 ; [+24]
       19 GETUPVAL                         R3 3
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+11]
       22 GETUPVAL                         R3 4
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKNIL                  R3 ; [+2]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R4 R3 K3 ["datum"]
       30 GETTABLEKS                       R2 R4 K4 ["id"]
       32 JUMP                             ; [+19]
       33 GETTABLEN                        R5 R1 1
       34 GETTABLEKS                       R4 R5 K5 ["get"]
       36 CALL                             R4 0 1
       37 GETTABLEKS                       R3 R4 K3 ["datum"]
       39 GETTABLEKS                       R2 R3 K4 ["id"]
       41 JUMP                             ; [+10]
       42 GETUPVAL                         R3 5
       43 MOVE                             R4 R1
       44 CALL                             R3 1 1
       45 JUMPIFNOTEQKNIL                  R3 ; [+2]
       47 RETURN                           R0 0
       48 GETTABLEKS                       R4 R3 K3 ["datum"]
       50 GETTABLEKS                       R2 R4 K4 ["id"]
       52 JUMPIFNOTEQKNIL                  R2 ; [+2]
       54 LOADB                            R4 0 +1
       55 LOADB                            R4 1
       56 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       58 LOADK                            R5 K6 ["Couldn't figure out hoveringNodeId"]
       59 GETIMPORT                        R3 K8 [assert]
       61 CALL                             R3 2 0
       62 GETUPVAL                         R4 6
       63 GETTABLEKS                       R3 R4 K9 ["getExplorerNodeById"]
       65 GETUPVAL                         R4 7
       66 CALL                             R3 1 1
       67 JUMPIFEQKNIL                     R3 ; [+5]
       69 GETTABLEKS                       R4 R3 K10 ["parent"]
       71 JUMPIFNOTEQKNIL                  R4 ; [+22]
       73 GETUPVAL                         R6 6
       74 GETTABLEKS                       R5 R6 K11 ["selectedIdsArrayObservable"]
       76 GETTABLEKS                       R4 R5 K5 ["get"]
       78 CALL                             R4 0 1
       79 LENGTH                           R5 R4
       80 JUMPIFNOTEQKN                    R5 K12 [0] ; [+11]
       82 GETUPVAL                         R6 8
       83 GETTABLEKS                       R5 R6 K0 ["current"]
       85 JUMPIFEQKNIL                     R5 ; [+5]
       87 GETUPVAL                         R6 8
       88 GETTABLEKS                       R5 R6 K0 ["current"]
       90 CALL                             R5 0 0
       91 RETURN                           R0 0
       92 GETTABLEN                        R5 R4 1
       93 SETUPVAL                         R5 7
       94 GETUPVAL                         R5 9
       95 GETTABLEKS                       R4 R5 K13 ["isFromBlankSpace"]
       97 JUMPIFNOT                        R4 ; [+50]
       98 GETUPVAL                         R5 6
       99 GETTABLEKS                       R4 R5 K14 ["getIndexOfInstanceId"]
      101 GETUPVAL                         R5 7
      102 CALL                             R4 1 1
      103 JUMPIFNOTEQKNIL                  R4 ; [+2]
      105 LOADB                            R6 0 +1
      106 LOADB                            R6 1
      107 FASTCALL2K                       ASSERT R6 K15 ; [+4]
      109 LOADK                            R7 K15 ["Index of last node is somehow nil"]
      110 GETIMPORT                        R5 K8 [assert]
      112 CALL                             R5 2 0
      113 GETTABLEKS                       R7 R0 K1 ["Y"]
      115 GETUPVAL                         R10 2
      116 GETTABLEKS                       R9 R10 K2 ["AbsolutePosition"]
      118 GETTABLEKS                       R8 R9 K1 ["Y"]
      120 SUB                              R6 R7 R8
      121 GETUPVAL                         R9 2
      122 GETTABLEKS                       R8 R9 K16 ["CanvasPosition"]
      124 GETTABLEKS                       R7 R8 K1 ["Y"]
      126 ADD                              R5 R6 R7
      127 GETUPVAL                         R8 10
      128 GETTABLEKS                       R7 R8 K17 ["explorerRowHeight"]
      130 MUL                              R6 R7 R4
      131 SUB                              R8 R5 R6
      132 LOADN                            R9 0
      133 JUMPIFLT                         R9 R8 ; [+2]
      135 LOADB                            R7 0 +1
      136 LOADB                            R7 1
      137 JUMPIFNOT                        R7 ; [+10]
      138 GETUPVAL                         R9 6
      139 GETTABLEKS                       R8 R9 K18 ["selectIds"]
      141 GETIMPORT                        R9 K21 [table.freeze]
      143 NEWTABLE                         R10 0 0
      145 CALL                             R9 1 -1
      146 CALL                             R8 -1 0
      147 RETURN                           R0 0
      148 GETUPVAL                         R5 6
      149 GETTABLEKS                       R4 R5 K22 ["selectRange"]
      151 GETUPVAL                         R5 7
      152 MOVE                             R6 R2
      153 CALL                             R4 2 0
      154 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["getMousePosition"]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R5 R0 K1 ["startPosition"]
        8 GETTABLEKS                       R4 R5 K2 ["Y"]
       10 GETTABLEKS                       R6 R1 K3 ["AbsolutePosition"]
       12 GETTABLEKS                       R5 R6 K2 ["Y"]
       14 SUB                              R3 R4 R5
       15 LOADN                            R4 0
       16 JUMPIFLT                         R4 R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 JUMPIF                           R2 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 1
       23 DUPTABLE                         R4 K6 [{"scrollingFrameRef", "position"}]
       24 GETUPVAL                         R5 0
       25 SETTABLEKS                       R5 R4 K4 ["scrollingFrameRef"]
       27 GETTABLEKS                       R5 R0 K1 ["startPosition"]
       29 SETTABLEKS                       R5 R4 K5 ["position"]
       31 CALL                             R3 1 1
       32 JUMPIFEQKNIL                     R3 ; [+2]
       34 RETURN                           R0 0
       35 LOADNIL                          R3
       36 GETTABLEKS                       R4 R0 K7 ["isFromBlankSpace"]
       38 JUMPIFNOT                        R4 ; [+14]
       39 GETUPVAL                         R4 2
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R5 R6 K0 ["current"]
       43 CALL                             R4 1 1
       44 JUMPIFNOTEQKNIL                  R4 ; [+3]
       46 CLOSEUPVALS                      R3
       47 RETURN                           R0 0
       48 GETTABLEKS                       R5 R4 K8 ["datum"]
       50 GETTABLEKS                       R3 R5 K9 ["id"]
       52 JUMP                             ; [+19]
       53 GETUPVAL                         R4 4
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R5 R6 K0 ["current"]
       57 GETTABLEKS                       R6 R0 K1 ["startPosition"]
       59 MOVE                             R7 R1
       60 CALL                             R4 3 1
       61 JUMPIF                           R4 ; [+9]
       62 GETIMPORT                        R4 K11 [next]
       64 GETUPVAL                         R7 5
       65 GETTABLEKS                       R6 R7 K12 ["selectedIdsObservable"]
       67 GETTABLEKS                       R5 R6 K13 ["get"]
       69 CALL                             R5 0 -1
       70 CALL                             R4 -1 1
       71 MOVE                             R3 R4
       72 JUMPIFNOTEQKNIL                  R3 ; [+2]
       74 LOADB                            R5 0 +1
       75 LOADB                            R5 1
       76 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       78 LOADK                            R6 K14 ["Could not figure out start hovering node ID"]
       79 GETIMPORT                        R4 K16 [assert]
       81 CALL                             R4 2 0
       82 GETIMPORT                        R4 K19 [task.spawn]
       84 NEWCLOSURE                       R5 P0
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          UPVAL U7
       87 CALL                             R4 1 1
       88 GETTABLEKS                       R5 R0 K20 ["inputObjectResponsibleForClick"]
       90 LOADK                            R7 K21 ["UserInputState"]
       91 NAMECALL                         R5 R5 K22 ["GetPropertyChangedSignal"]
       93 CALL                             R5 2 1
       94 NEWCLOSURE                       R7 P1
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U8
       97 NAMECALL                         R5 R5 K23 ["Connect"]
       99 CALL                             R5 2 1
      100 NEWCLOSURE                       R6 P2
      101 CAPTURE                          UPVAL U3
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          VAL R1
      104 CAPTURE                          UPVAL U9
      105 CAPTURE                          UPVAL U10
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          UPVAL U5
      108 CAPTURE                          REF R3
      109 CAPTURE                          UPVAL U8
      110 CAPTURE                          VAL R0
      111 CAPTURE                          UPVAL U11
      112 GETUPVAL                         R8 6
      113 GETTABLEKS                       R7 R8 K24 ["mouseMoved"]
      115 MOVE                             R9 R6
      116 NAMECALL                         R7 R7 K23 ["Connect"]
      118 CALL                             R7 2 1
      119 GETUPVAL                         R9 12
      120 GETTABLEKS                       R8 R9 K25 ["changedSignal"]
      122 NEWCLOSURE                       R10 P3
      123 CAPTURE                          VAL R6
      124 CAPTURE                          UPVAL U6
      125 NAMECALL                         R8 R8 K23 ["Connect"]
      127 CALL                             R8 2 1
      128 MOVE                             R9 R6
      129 GETUPVAL                         R11 6
      130 GETTABLEKS                       R10 R11 K26 ["getMousePosition"]
      132 CALL                             R10 0 -1
      133 CALL                             R9 -1 0
      134 GETUPVAL                         R9 8
      135 NEWCLOSURE                       R10 P4
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R8
      139 CAPTURE                          UPVAL U13
      140 CAPTURE                          VAL R4
      141 CAPTURE                          UPVAL U8
      142 SETTABLEKS                       R10 R9 K0 ["current"]
      144 GETUPVAL                         R9 7
      145 CALL                             R9 0 0
      146 GETUPVAL                         R9 13
      147 DUPTABLE                         R10 K28 [{"start"}]
      148 DUPTABLE                         R11 K32 [{"absolutePosition", "canvasPosition", "mouseLocation"}]
      149 GETTABLEKS                       R12 R1 K3 ["AbsolutePosition"]
      151 SETTABLEKS                       R12 R11 K29 ["absolutePosition"]
      153 GETTABLEKS                       R12 R1 K33 ["CanvasPosition"]
      155 SETTABLEKS                       R12 R11 K30 ["canvasPosition"]
      157 GETTABLEKS                       R12 R0 K1 ["startPosition"]
      159 SETTABLEKS                       R12 R11 K31 ["mouseLocation"]
      161 SETTABLEKS                       R11 R10 K27 ["start"]
      163 CALL                             R9 1 0
      164 CLOSEUPVALS                      R3
      165 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["current"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["useContext"]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R6 R7 K1 ["Context"]
        6 CALL                             R5 1 1
        7 GETUPVAL                         R7 2
        8 GETTABLEKS                       R6 R7 K2 ["useRefToState"]
       10 MOVE                             R7 R1
       11 CALL                             R6 1 1
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K3 ["useState"]
       15 LOADNIL                          R8
       16 CALL                             R7 1 2
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R9 R10 K4 ["useRef"]
       20 LOADNIL                          R10
       21 CALL                             R9 1 1
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R10 R11 K5 ["useCallback"]
       25 NEWCLOSURE                       R11 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R6
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R9
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R8
       40 NEWTABLE                         R12 0 6
       42 GETTABLEKS                       R13 R0 K6 ["selectRange"]
       44 GETTABLEKS                       R14 R0 K7 ["getExplorerNodeById"]
       46 MOVE                             R15 R4
       47 GETTABLEKS                       R16 R5 K8 ["isMouseDown"]
       49 GETTABLEKS                       R17 R5 K9 ["mouseMoved"]
       51 MOVE                             R18 R3
       52 SETLIST                          R12 R13 6 [1]
       54 CALL                             R10 2 1
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R11 R12 K10 ["useEffect"]
       58 NEWCLOSURE                       R12 P1
       59 CAPTURE                          VAL R9
       60 NEWTABLE                         R13 0 1
       62 MOVE                             R14 R0
       63 SETLIST                          R13 R14 1 [1]
       65 CALL                             R11 2 0
       66 DUPTABLE                         R11 K13 [{"start", "activeBoxSelect"}]
       67 SETTABLEKS                       R10 R11 K11 ["start"]
       69 SETTABLEKS                       R7 R11 K12 ["activeBoxSelect"]
       71 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["MouseContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["Observable"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K12 ["Parent"]
       41 GETTABLEKS                       R6 R7 K14 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["RpcTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Flags"]
       53 GETTABLEKS                       R8 R9 K17 ["getFFlagExplorerEfficientVirtualizationDiffing"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Util"]
       60 GETTABLEKS                       R9 R10 K18 ["getScrollBarOrientation"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       67 GETTABLEKS                       R10 R11 K20 ["useVisibleExplorerNodeRange"]
       69 CALL                             R9 1 1
       70 DUPCLOSURE                       R10 K21 [PROTO_0]
       71 CAPTURE                          VAL R1
       72 DUPCLOSURE                       R11 K22 [PROTO_1]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R1
       75 DUPCLOSURE                       R12 K23 [PROTO_2]
       76 CAPTURE                          VAL R1
       77 DUPCLOSURE                       R13 K24 [PROTO_11]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R1
       87 RETURN                           R13 1
