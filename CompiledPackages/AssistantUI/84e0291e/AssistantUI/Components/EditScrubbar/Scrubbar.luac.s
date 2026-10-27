PROTO_0:
        0 LOADN                            R4 0
        1 MUL                              R6 R0 R1
        2 FASTCALL1                        MATH_ROUND R6 ; [+2]
        3 GETIMPORT                        R5 K2 [math.round]
        5 CALL                             R5 1 1
        6 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
        8 GETIMPORT                        R3 K4 [math.max]
       10 CALL                             R3 2 1
       11 DIV                              R2 R3 R1
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onHidden"]
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["onHidden"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["activeFrameIndex"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPlaying"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADN                            R4 0
        2 MUL                              R6 R0 R2
        3 FASTCALL1                        MATH_ROUND R6 ; [+2]
        4 GETIMPORT                        R5 K2 [math.round]
        6 CALL                             R5 1 1
        7 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
        9 GETIMPORT                        R3 K4 [math.max]
       11 CALL                             R3 2 1
       12 DIV                              R1 R3 R2
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K5 ["seek"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onMarkerActivated"]
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["onMarkerActivated"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFEQKNIL                     R1 ; [+4]
       14 GETUPVAL                         R2 0
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K4 ["current"]
       10 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["markers"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R8 R6 K1 ["frameIndex"]
       14 GETUPVAL                         R9 1
       15 DIV                              R7 R8 R9
       16 GETTABLEKS                       R8 R6 K2 ["bounds"]
       18 SETTABLE                         R8 R0 R7
       19 FORGLOOP                         R2 2 ; [-8]
       21 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["busy"]
        5 JUMPIF                           R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["onMarkerInserted"]
       12 JUMPIFNOT                        R0 ; [+10]
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K1 ["onMarkerInserted"]
       16 GETUPVAL                         R1 4
       17 CALL                             R0 1 1
       18 JUMPIFEQKNIL                     R0 ; [+4]
       20 GETUPVAL                         R1 5
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["onMarkerDeleted"]
       14 JUMPIFNOT                        R0 ; [+5]
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K1 ["onMarkerDeleted"]
       18 GETUPVAL                         R1 1
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 4
       21 LOADNIL                          R1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cancel"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["isPlaying"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R3 3
       12 ADD                              R2 R3 R0
       13 LOADN                            R3 0
       14 GETUPVAL                         R4 4
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R1 K4 [math.clamp]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R2 5
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["isPlaying"]
        7 NOT                              R0 R1
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETUPVAL                         R1 2
       10 LOADNIL                          R2
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K2 ["togglePlaying"]
       15 CALL                             R1 0 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["AbsolutePosition"]
        7 GETTABLEKS                       R3 R1 K2 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R3 K3 ["X"]
       11 LOADN                            R5 0
       12 JUMPIFNOTLE                      R4 R5 ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R6 R0 K4 ["Position"]
       17 GETTABLEKS                       R6 R6 K3 ["X"]
       19 GETTABLEKS                       R7 R2 K3 ["X"]
       21 SUB                              R5 R6 R7
       22 LOADN                            R6 0
       23 GETTABLEKS                       R7 R3 K3 ["X"]
       25 FASTCALL                         MATH_CLAMP ; [+2]
       26 GETIMPORT                        R4 K7 [math.clamp]
       28 CALL                             R4 3 1
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R8 R3 K3 ["X"]
       32 DIV                              R7 R4 R8
       33 GETUPVAL                         R8 2
       34 MUL                              R6 R7 R8
       35 CALL                             R5 1 0
       36 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+26]
        6 GETUPVAL                         R2 0
        7 LOADNIL                          R3
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["cancel"]
       16 CALL                             R2 0 0
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K5 ["beginScrub"]
       20 CALL                             R2 0 0
       21 GETUPVAL                         R2 4
       22 LOADNIL                          R3
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 5
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K6 ["current"]
       28 GETUPVAL                         R2 6
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 4
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 JUMPIF                           R0 ; [+2]
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K6 [task.defer]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["beginMove"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 LOADNIL                          R4
        2 MOVE                             R5 R2
        3 CALL                             R3 2 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["beginResize"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
        6 GETIMPORT                        R2 K4 [Enum.UserInputType.MouseMovement]
        8 JUMPIFNOTEQ                      R1 R2 ; [+4]
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["current"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K4 ["current"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K5 ["endScrub"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionClearedSignal"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["selectionClearedSignal"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R0 R0 K1 ["Connect"]
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [-1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["fps"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useRef"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["useRef"]
       10 LOADNIL                          R4
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K2 ["useState"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 2
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R5
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R8 0 1
       25 GETTABLEKS                       R9 R0 K4 ["onHidden"]
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 1
       31 DUPTABLE                         R8 K8 [{"toolUseId", "duration", "disabled", "onHidden"}]
       32 GETTABLEKS                       R9 R0 K5 ["toolUseId"]
       34 SETTABLEKS                       R9 R8 K5 ["toolUseId"]
       36 GETTABLEKS                       R10 R0 K6 ["duration"]
       38 ORK                              R9 R10 K9 [10]
       39 SETTABLEKS                       R9 R8 K6 ["duration"]
       41 GETTABLEKS                       R9 R0 K7 ["disabled"]
       43 SETTABLEKS                       R9 R8 K7 ["disabled"]
       45 SETTABLEKS                       R6 R8 K4 ["onHidden"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K6 ["duration"]
       50 LOADB                            R9 1
       51 GETTABLEKS                       R10 R0 K7 ["disabled"]
       53 JUMPIFEQKB                       R10 TRUE ; [+4]
       55 GETTABLEKS                       R10 R7 K10 ["available"]
       57 NOT                              R9 R10
       58 GETTABLEKS                       R10 R7 K11 ["currentTime"]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K12 ["useContext"]
       63 GETUPVAL                         R12 2
       64 GETTABLEKS                       R12 R12 K13 ["Context"]
       66 CALL                             R11 1 1
       67 GETUPVAL                         R12 0
       68 GETTABLEKS                       R12 R12 K14 ["useEffect"]
       70 NEWCLOSURE                       R13 P1
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R2
       73 NEWTABLE                         R14 0 1
       75 MOVE                             R15 R9
       76 SETLIST                          R14 R15 1 [1]
       78 CALL                             R12 2 0
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K14 ["useEffect"]
       82 NEWCLOSURE                       R13 P2
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R0
       85 NEWTABLE                         R14 0 2
       87 GETTABLEKS                       R15 R0 K15 ["activeFrameIndex"]
       89 GETTABLEKS                       R16 R0 K16 ["revision"]
       91 SETLIST                          R14 R15 2 [1]
       93 CALL                             R12 2 0
       94 GETUPVAL                         R12 0
       95 GETTABLEKS                       R12 R12 K3 ["useCallback"]
       97 NEWCLOSURE                       R13 P3
       98 CAPTURE                          VAL R7
       99 NEWTABLE                         R14 0 1
      101 GETTABLEKS                       R15 R7 K17 ["setPlaying"]
      103 SETLIST                          R14 R15 1 [1]
      105 CALL                             R12 2 1
      106 GETUPVAL                         R13 0
      107 GETTABLEKS                       R13 R13 K3 ["useCallback"]
      109 NEWCLOSURE                       R14 P4
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R7
      112 NEWTABLE                         R15 0 2
      114 MOVE                             R16 R1
      115 GETTABLEKS                       R17 R7 K18 ["seek"]
      117 SETLIST                          R15 R16 2 [1]
      119 CALL                             R13 2 1
      120 GETUPVAL                         R14 0
      121 GETTABLEKS                       R14 R14 K3 ["useCallback"]
      123 NEWCLOSURE                       R15 P5
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R0
      126 NEWTABLE                         R16 0 1
      128 GETTABLEKS                       R17 R0 K19 ["onMarkerActivated"]
      130 SETLIST                          R16 R17 1 [1]
      132 CALL                             R14 2 1
      133 GETUPVAL                         R15 0
      134 GETTABLEKS                       R15 R15 K1 ["useRef"]
      136 LOADB                            R16 0
      137 CALL                             R15 1 1
      138 GETUPVAL                         R16 0
      139 GETTABLEKS                       R16 R16 K3 ["useCallback"]
      141 NEWCLOSURE                       R17 P6
      142 CAPTURE                          VAL R15
      143 NEWTABLE                         R18 0 0
      145 CALL                             R16 2 1
      146 GETUPVAL                         R17 0
      147 GETTABLEKS                       R17 R17 K20 ["useMemo"]
      149 NEWCLOSURE                       R18 P7
      150 CAPTURE                          VAL R0
      151 CAPTURE                          VAL R1
      152 NEWTABLE                         R19 0 2
      154 GETTABLEKS                       R20 R0 K21 ["markers"]
      156 MOVE                             R21 R1
      157 SETLIST                          R19 R20 2 [1]
      159 CALL                             R17 2 1
      160 GETUPVAL                         R18 0
      161 GETTABLEKS                       R18 R18 K3 ["useCallback"]
      163 NEWCLOSURE                       R19 P8
      164 CAPTURE                          VAL R12
      165 NEWTABLE                         R20 0 1
      167 MOVE                             R21 R12
      168 SETLIST                          R20 R21 1 [1]
      170 CALL                             R18 2 1
      171 GETUPVAL                         R19 3
      172 DUPTABLE                         R20 K29 [{"intervals", "fps", "trackRef", "duration", "disabled", "toolUseId", "revision", "onMove", "onResize", "onPause", "onSelect", "onActivate"}]
      173 SETTABLEKS                       R17 R20 K22 ["intervals"]
      175 SETTABLEKS                       R1 R20 K0 ["fps"]
      177 SETTABLEKS                       R3 R20 K23 ["trackRef"]
      179 SETTABLEKS                       R8 R20 K6 ["duration"]
      181 SETTABLEKS                       R9 R20 K7 ["disabled"]
      183 GETTABLEKS                       R21 R0 K5 ["toolUseId"]
      185 SETTABLEKS                       R21 R20 K5 ["toolUseId"]
      187 GETTABLEKS                       R21 R0 K16 ["revision"]
      189 SETTABLEKS                       R21 R20 K16 ["revision"]
      191 GETTABLEKS                       R21 R0 K30 ["onMarkerMoved"]
      193 SETTABLEKS                       R21 R20 K24 ["onMove"]
      195 GETTABLEKS                       R21 R0 K31 ["onMarkerResized"]
      197 SETTABLEKS                       R21 R20 K25 ["onResize"]
      199 SETTABLEKS                       R18 R20 K26 ["onPause"]
      201 SETTABLEKS                       R5 R20 K27 ["onSelect"]
      203 SETTABLEKS                       R14 R20 K28 ["onActivate"]
      205 CALL                             R19 1 1
      206 GETUPVAL                         R21 4
      207 GETTABLEKS                       R21 R21 K32 ["planInsertion"]
      209 MOVE                             R22 R10
      210 MOVE                             R23 R8
      211 MOVE                             R24 R17
      212 CALL                             R21 3 1
      213 JUMPIFNOTEQKNIL                  R21 ; [+2]
      215 LOADB                            R20 0 +1
      216 LOADB                            R20 1
      217 GETUPVAL                         R21 0
      218 GETTABLEKS                       R21 R21 K3 ["useCallback"]
      220 NEWCLOSURE                       R22 P9
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R20
      224 CAPTURE                          VAL R0
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R5
      227 NEWTABLE                         R23 0 5
      229 MOVE                             R24 R9
      230 GETTABLEKS                       R25 R19 K33 ["busy"]
      232 MOVE                             R26 R20
      233 MOVE                             R27 R10
      234 GETTABLEKS                       R28 R0 K34 ["onMarkerInserted"]
      236 SETLIST                          R23 R24 5 [1]
      238 CALL                             R21 2 1
      239 GETUPVAL                         R22 0
      240 GETTABLEKS                       R22 R22 K3 ["useCallback"]
      242 NEWCLOSURE                       R23 P10
      243 CAPTURE                          VAL R19
      244 CAPTURE                          VAL R4
      245 CAPTURE                          VAL R12
      246 CAPTURE                          VAL R0
      247 CAPTURE                          VAL R5
      248 NEWTABLE                         R24 0 4
      250 MOVE                             R25 R4
      251 MOVE                             R26 R12
      252 GETTABLEKS                       R27 R0 K35 ["onMarkerDeleted"]
      254 GETTABLEKS                       R28 R19 K36 ["cancel"]
      256 SETLIST                          R24 R25 4 [1]
      258 CALL                             R22 2 1
      259 GETUPVAL                         R23 0
      260 GETTABLEKS                       R23 R23 K3 ["useCallback"]
      262 NEWCLOSURE                       R24 P11
      263 CAPTURE                          VAL R19
      264 CAPTURE                          VAL R7
      265 CAPTURE                          VAL R12
      266 CAPTURE                          VAL R10
      267 CAPTURE                          VAL R8
      268 CAPTURE                          VAL R13
      269 NEWTABLE                         R25 0 6
      271 GETTABLEKS                       R26 R7 K37 ["isPlaying"]
      273 MOVE                             R27 R12
      274 MOVE                             R28 R10
      275 MOVE                             R29 R8
      276 MOVE                             R30 R13
      277 GETTABLEKS                       R31 R19 K36 ["cancel"]
      279 SETLIST                          R25 R26 6 [1]
      281 CALL                             R23 2 1
      282 GETUPVAL                         R24 0
      283 GETTABLEKS                       R24 R24 K3 ["useCallback"]
      285 NEWCLOSURE                       R25 P12
      286 CAPTURE                          VAL R19
      287 CAPTURE                          VAL R7
      288 CAPTURE                          VAL R5
      289 NEWTABLE                         R26 0 2
      291 MOVE                             R27 R7
      292 GETTABLEKS                       R28 R19 K36 ["cancel"]
      294 SETLIST                          R26 R27 2 [1]
      296 CALL                             R24 2 1
      297 GETUPVAL                         R25 0
      298 GETTABLEKS                       R25 R25 K3 ["useCallback"]
      300 NEWCLOSURE                       R26 P13
      301 CAPTURE                          VAL R3
      302 CAPTURE                          VAL R13
      303 CAPTURE                          VAL R8
      304 NEWTABLE                         R27 0 2
      306 MOVE                             R28 R8
      307 MOVE                             R29 R13
      308 SETLIST                          R27 R28 2 [1]
      310 CALL                             R25 2 1
      311 GETUPVAL                         R26 0
      312 GETTABLEKS                       R26 R26 K3 ["useCallback"]
      314 NEWCLOSURE                       R27 P14
      315 CAPTURE                          VAL R16
      316 CAPTURE                          VAL R9
      317 CAPTURE                          VAL R19
      318 CAPTURE                          VAL R7
      319 CAPTURE                          VAL R5
      320 CAPTURE                          VAL R2
      321 CAPTURE                          VAL R25
      322 NEWTABLE                         R28 0 5
      324 MOVE                             R29 R9
      325 GETTABLEKS                       R30 R7 K38 ["beginScrub"]
      327 MOVE                             R31 R25
      328 GETTABLEKS                       R32 R19 K36 ["cancel"]
      330 MOVE                             R33 R16
      331 SETLIST                          R28 R29 5 [1]
      333 CALL                             R26 2 1
      334 GETUPVAL                         R27 0
      335 GETTABLEKS                       R27 R27 K3 ["useCallback"]
      337 NEWCLOSURE                       R28 P15
      338 CAPTURE                          VAL R9
      339 CAPTURE                          VAL R4
      340 CAPTURE                          VAL R5
      341 CAPTURE                          VAL R13
      342 CAPTURE                          VAL R10
      343 NEWTABLE                         R29 0 4
      345 MOVE                             R30 R9
      346 MOVE                             R31 R4
      347 MOVE                             R32 R13
      348 MOVE                             R33 R10
      349 SETLIST                          R29 R30 4 [1]
      351 CALL                             R27 2 1
      352 GETUPVAL                         R28 0
      353 GETTABLEKS                       R28 R28 K3 ["useCallback"]
      355 NEWCLOSURE                       R29 P16
      356 CAPTURE                          VAL R15
      357 CAPTURE                          VAL R27
      358 NEWTABLE                         R30 0 1
      360 MOVE                             R31 R27
      361 SETLIST                          R30 R31 1 [1]
      363 CALL                             R28 2 1
      364 GETUPVAL                         R29 0
      365 GETTABLEKS                       R29 R29 K3 ["useCallback"]
      367 NEWCLOSURE                       R30 P17
      368 CAPTURE                          VAL R16
      369 CAPTURE                          VAL R19
      370 NEWTABLE                         R31 0 2
      372 MOVE                             R32 R16
      373 GETTABLEKS                       R33 R19 K39 ["beginMove"]
      375 SETLIST                          R31 R32 2 [1]
      377 CALL                             R29 2 1
      378 GETUPVAL                         R30 0
      379 GETTABLEKS                       R30 R30 K3 ["useCallback"]
      381 NEWCLOSURE                       R31 P18
      382 CAPTURE                          VAL R16
      383 CAPTURE                          VAL R19
      384 NEWTABLE                         R32 0 2
      386 MOVE                             R33 R16
      387 GETTABLEKS                       R34 R19 K40 ["beginResize"]
      389 SETLIST                          R32 R33 2 [1]
      391 CALL                             R30 2 1
      392 GETUPVAL                         R31 5
      393 GETTABLEKS                       R32 R11 K41 ["inputChangedSignal"]
      395 NEWCLOSURE                       R33 P19
      396 CAPTURE                          VAL R2
      397 CAPTURE                          VAL R25
      398 NEWTABLE                         R34 0 1
      400 MOVE                             R35 R25
      401 SETLIST                          R34 R35 1 [1]
      403 CALL                             R31 3 0
      404 GETUPVAL                         R31 5
      405 GETTABLEKS                       R32 R11 K42 ["inputEndedSignal"]
      407 NEWCLOSURE                       R33 P20
      408 CAPTURE                          VAL R2
      409 CAPTURE                          VAL R7
      410 NEWTABLE                         R34 0 1
      412 GETTABLEKS                       R35 R7 K43 ["endScrub"]
      414 SETLIST                          R34 R35 1 [1]
      416 CALL                             R31 3 0
      417 GETUPVAL                         R31 0
      418 GETTABLEKS                       R31 R31 K14 ["useEffect"]
      420 NEWCLOSURE                       R32 P21
      421 CAPTURE                          VAL R0
      422 CAPTURE                          VAL R19
      423 CAPTURE                          VAL R5
      424 NEWTABLE                         R33 0 2
      426 GETTABLEKS                       R34 R0 K44 ["selectionClearedSignal"]
      428 GETTABLEKS                       R35 R19 K36 ["cancel"]
      430 SETLIST                          R33 R34 2 [1]
      432 CALL                             R31 2 0
      433 LOADN                            R32 0
      434 JUMPIFNOTLT                      R32 R8 ; [+3]
      436 DIV                              R31 R10 R8
      437 JUMP                             ; [+1]
      438 LOADN                            R31 0
      439 GETUPVAL                         R32 6
      440 CALL                             R32 0 1
      441 GETUPVAL                         R33 6
      442 CALL                             R33 0 1
      443 LOADB                            R34 0
      444 JUMPIFEQKNIL                     R4 ; [+18]
      446 GETTABLEKS                       R35 R0 K21 ["markers"]
      448 JUMPIFEQKNIL                     R35 ; [+14]
      450 GETTABLEKS                       R35 R0 K21 ["markers"]
      452 LOADNIL                          R36
      453 LOADNIL                          R37
      454 FORGPREP                         R35
      455 GETTABLEKS                       R40 R39 K45 ["frameIndex"]
      457 JUMPIFNOTEQ                      R40 R4 ; [+3]
      459 LOADB                            R34 1
      460 JUMP                             ; [+2]
      461 FORGLOOP                         R35 2 ; [-7]
      463 GETUPVAL                         R35 7
      464 CALL                             R35 0 1
      465 GETTABLEKS                       R36 R35 K46 ["Color"]
      467 GETTABLEKS                       R36 R36 K47 ["OverMedia"]
      469 GETTABLEKS                       R36 R36 K48 ["OverMedia_0"]
      471 GETTABLEKS                       R36 R36 K49 ["Color3"]
      473 GETTABLEKS                       R37 R35 K46 ["Color"]
      475 GETTABLEKS                       R37 R37 K47 ["OverMedia"]
      477 GETTABLEKS                       R37 R37 K48 ["OverMedia_0"]
      479 GETTABLEKS                       R37 R37 K50 ["Transparency"]
      481 GETUPVAL                         R38 8
      482 LOADK                            R39 K51 ["Frame"]
      483 NEWTABLE                         R40 8 0
      485 GETIMPORT                        R41 K54 [UDim2.fromScale]
      487 LOADN                            R42 1
      488 LOADN                            R43 0
      489 CALL                             R41 2 1
      490 SETTABLEKS                       R41 R40 K55 ["Size"]
      492 GETIMPORT                        R41 K59 [Enum.AutomaticSize.Y]
      494 SETTABLEKS                       R41 R40 K57 ["AutomaticSize"]
      496 LOADN                            R41 1
      497 SETTABLEKS                       R41 R40 K60 ["BackgroundTransparency"]
      499 GETTABLEKS                       R41 R0 K61 ["layoutOrder"]
      501 SETTABLEKS                       R41 R40 K62 ["LayoutOrder"]
      503 GETUPVAL                         R41 0
      504 GETTABLEKS                       R41 R41 K63 ["Event"]
      506 GETTABLEKS                       R41 R41 K64 ["InputBegan"]
      508 SETTABLE                         R28 R40 R41
      509 DUPTABLE                         R41 K66 [{"Panel"}]
      510 GETUPVAL                         R42 8
      511 GETUPVAL                         R43 9
      512 DUPTABLE                         R44 K69 [{["tag"] = "col gap-small size-full-0 auto-y padding-small radius-small bg-shift-200"}]
      513 DUPTABLE                         R45 K72 [{"ControlsRow", "TrackArea"}]
      514 GETUPVAL                         R46 8
      515 GETUPVAL                         R47 9
      516 DUPTABLE                         R48 K73 [{"LayoutOrder", "Size"}]
      517 MOVE                             R49 R32
      518 CALL                             R49 0 1
      519 SETTABLEKS                       R49 R48 K62 ["LayoutOrder"]
      521 GETIMPORT                        R49 K75 [UDim2.new]
      523 LOADN                            R50 1
      524 LOADN                            R51 0
      525 LOADN                            R52 0
      526 LOADN                            R53 24
      527 CALL                             R49 4 1
      528 SETTABLEKS                       R49 R48 K55 ["Size"]
      530 DUPTABLE                         R49 K78 [{"ButtonGroup", "Timestamp"}]
      531 GETUPVAL                         R50 8
      532 LOADK                            R51 K51 ["Frame"]
      533 NEWTABLE                         R52 8 0
      535 GETIMPORT                        R53 K80 [Enum.AutomaticSize.XY]
      537 SETTABLEKS                       R53 R52 K57 ["AutomaticSize"]
      539 GETIMPORT                        R53 K54 [UDim2.fromScale]
      541 LOADN                            R54 0
      542 LOADK                            R55 K81 [0.5]
      543 CALL                             R53 2 1
      544 SETTABLEKS                       R53 R52 K82 ["Position"]
      546 GETIMPORT                        R53 K84 [Vector2.new]
      548 LOADN                            R54 0
      549 LOADK                            R55 K81 [0.5]
      550 CALL                             R53 2 1
      551 SETTABLEKS                       R53 R52 K85 ["AnchorPoint"]
      553 LOADN                            R53 1
      554 SETTABLEKS                       R53 R52 K60 ["BackgroundTransparency"]
      556 GETUPVAL                         R53 0
      557 GETTABLEKS                       R53 R53 K63 ["Event"]
      559 GETTABLEKS                       R53 R53 K64 ["InputBegan"]
      561 SETTABLE                         R16 R52 R53
      562 DUPTABLE                         R53 K87 [{"Buttons"}]
      563 GETUPVAL                         R54 8
      564 GETUPVAL                         R55 9
      565 DUPTABLE                         R56 K89 [{["tag"] = "row align-y-center gap-xsmall auto-xy"}]
      566 DUPTABLE                         R57 K95 [{"BackButton", "PlayPauseButton", "ForwardButton", "InsertMarkerButton", "DeleteMarkerButton"}]
      567 GETUPVAL                         R58 8
      568 GETUPVAL                         R59 10
      569 DUPTABLE                         R60 K100 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      570 MOVE                             R61 R33
      571 CALL                             R61 0 1
      572 SETTABLEKS                       R61 R60 K62 ["LayoutOrder"]
      574 GETUPVAL                         R61 11
      575 GETTABLEKS                       R61 R61 K101 ["Enums"]
      577 GETTABLEKS                       R61 R61 K102 ["IconName"]
      579 GETTABLEKS                       R61 R61 K103 ["SkipStartSmall"]
      581 SETTABLEKS                       R61 R60 K96 ["icon"]
      583 GETUPVAL                         R61 11
      584 GETTABLEKS                       R61 R61 K101 ["Enums"]
      586 GETTABLEKS                       R61 R61 K104 ["IconSize"]
      588 GETTABLEKS                       R61 R61 K105 ["XSmall"]
      590 SETTABLEKS                       R61 R60 K97 ["size"]
      592 SETTABLEKS                       R9 R60 K98 ["isDisabled"]
      594 NEWCLOSURE                       R61 P22
      595 CAPTURE                          VAL R23
      596 CAPTURE                          VAL R1
      597 SETTABLEKS                       R61 R60 K99 ["onActivated"]
      599 CALL                             R58 2 1
      600 SETTABLEKS                       R58 R57 K90 ["BackButton"]
      602 GETUPVAL                         R58 8
      603 GETUPVAL                         R59 10
      604 DUPTABLE                         R60 K100 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      605 MOVE                             R61 R33
      606 CALL                             R61 0 1
      607 SETTABLEKS                       R61 R60 K62 ["LayoutOrder"]
      609 GETTABLEKS                       R62 R7 K37 ["isPlaying"]
      611 JUMPIFNOT                        R62 ; [+8]
      612 GETUPVAL                         R61 11
      613 GETTABLEKS                       R61 R61 K101 ["Enums"]
      615 GETTABLEKS                       R61 R61 K102 ["IconName"]
      617 GETTABLEKS                       R61 R61 K106 ["PauseLarge"]
      619 JUMP                             ; [+7]
      620 GETUPVAL                         R61 11
      621 GETTABLEKS                       R61 R61 K101 ["Enums"]
      623 GETTABLEKS                       R61 R61 K102 ["IconName"]
      625 GETTABLEKS                       R61 R61 K107 ["PlayLarge"]
      627 SETTABLEKS                       R61 R60 K96 ["icon"]
      629 GETUPVAL                         R61 11
      630 GETTABLEKS                       R61 R61 K101 ["Enums"]
      632 GETTABLEKS                       R61 R61 K104 ["IconSize"]
      634 GETTABLEKS                       R61 R61 K105 ["XSmall"]
      636 SETTABLEKS                       R61 R60 K97 ["size"]
      638 SETTABLEKS                       R9 R60 K98 ["isDisabled"]
      640 SETTABLEKS                       R24 R60 K99 ["onActivated"]
      642 CALL                             R58 2 1
      643 SETTABLEKS                       R58 R57 K91 ["PlayPauseButton"]
      645 GETUPVAL                         R58 8
      646 GETUPVAL                         R59 10
      647 DUPTABLE                         R60 K100 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      648 MOVE                             R61 R33
      649 CALL                             R61 0 1
      650 SETTABLEKS                       R61 R60 K62 ["LayoutOrder"]
      652 GETUPVAL                         R61 11
      653 GETTABLEKS                       R61 R61 K101 ["Enums"]
      655 GETTABLEKS                       R61 R61 K102 ["IconName"]
      657 GETTABLEKS                       R61 R61 K108 ["SkipEndSmall"]
      659 SETTABLEKS                       R61 R60 K96 ["icon"]
      661 GETUPVAL                         R61 11
      662 GETTABLEKS                       R61 R61 K101 ["Enums"]
      664 GETTABLEKS                       R61 R61 K104 ["IconSize"]
      666 GETTABLEKS                       R61 R61 K105 ["XSmall"]
      668 SETTABLEKS                       R61 R60 K97 ["size"]
      670 SETTABLEKS                       R9 R60 K98 ["isDisabled"]
      672 NEWCLOSURE                       R61 P23
      673 CAPTURE                          VAL R23
      674 CAPTURE                          VAL R1
      675 SETTABLEKS                       R61 R60 K99 ["onActivated"]
      677 CALL                             R58 2 1
      678 SETTABLEKS                       R58 R57 K92 ["ForwardButton"]
      680 GETTABLEKS                       R58 R0 K34 ["onMarkerInserted"]
      682 JUMPIFNOT                        R58 ; [+48]
      683 GETUPVAL                         R58 8
      684 GETUPVAL                         R59 10
      685 DUPTABLE                         R60 K100 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      686 MOVE                             R61 R33
      687 CALL                             R61 0 1
      688 SETTABLEKS                       R61 R60 K62 ["LayoutOrder"]
      690 DUPTABLE                         R61 K111 [{"name", "variant"}]
      691 GETUPVAL                         R62 11
      692 GETTABLEKS                       R62 R62 K101 ["Enums"]
      694 GETTABLEKS                       R62 R62 K102 ["IconName"]
      696 GETTABLEKS                       R62 R62 K112 ["DiamondSimplified"]
      698 SETTABLEKS                       R62 R61 K109 ["name"]
      700 GETUPVAL                         R62 11
      701 GETTABLEKS                       R62 R62 K101 ["Enums"]
      703 GETTABLEKS                       R62 R62 K113 ["IconVariant"]
      705 GETTABLEKS                       R62 R62 K114 ["Filled"]
      707 SETTABLEKS                       R62 R61 K110 ["variant"]
      709 SETTABLEKS                       R61 R60 K96 ["icon"]
      711 GETUPVAL                         R61 11
      712 GETTABLEKS                       R61 R61 K101 ["Enums"]
      714 GETTABLEKS                       R61 R61 K104 ["IconSize"]
      716 GETTABLEKS                       R61 R61 K105 ["XSmall"]
      718 SETTABLEKS                       R61 R60 K97 ["size"]
      720 MOVE                             R61 R9
      721 JUMPIF                           R61 ; [+4]
      722 GETTABLEKS                       R61 R19 K33 ["busy"]
      724 JUMPIF                           R61 ; [+1]
      725 NOT                              R61 R20
      726 SETTABLEKS                       R61 R60 K98 ["isDisabled"]
      728 SETTABLEKS                       R21 R60 K99 ["onActivated"]
      730 CALL                             R58 2 1
      731 SETTABLEKS                       R58 R57 K93 ["InsertMarkerButton"]
      733 GETTABLEKS                       R58 R0 K35 ["onMarkerDeleted"]
      735 JUMPIFNOT                        R58 ; [+36]
      736 GETUPVAL                         R58 8
      737 GETUPVAL                         R59 10
      738 DUPTABLE                         R60 K100 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      739 MOVE                             R61 R33
      740 CALL                             R61 0 1
      741 SETTABLEKS                       R61 R60 K62 ["LayoutOrder"]
      743 GETUPVAL                         R61 11
      744 GETTABLEKS                       R61 R61 K101 ["Enums"]
      746 GETTABLEKS                       R61 R61 K102 ["IconName"]
      748 GETTABLEKS                       R61 R61 K115 ["TrashCan"]
      750 SETTABLEKS                       R61 R60 K96 ["icon"]
      752 GETUPVAL                         R61 11
      753 GETTABLEKS                       R61 R61 K101 ["Enums"]
      755 GETTABLEKS                       R61 R61 K104 ["IconSize"]
      757 GETTABLEKS                       R61 R61 K105 ["XSmall"]
      759 SETTABLEKS                       R61 R60 K97 ["size"]
      761 MOVE                             R61 R9
      762 JUMPIF                           R61 ; [+4]
      763 GETTABLEKS                       R61 R19 K33 ["busy"]
      765 JUMPIF                           R61 ; [+1]
      766 NOT                              R61 R34
      767 SETTABLEKS                       R61 R60 K98 ["isDisabled"]
      769 SETTABLEKS                       R22 R60 K99 ["onActivated"]
      771 CALL                             R58 2 1
      772 SETTABLEKS                       R58 R57 K94 ["DeleteMarkerButton"]
      774 CALL                             R54 3 1
      775 SETTABLEKS                       R54 R53 K86 ["Buttons"]
      777 CALL                             R50 3 1
      778 SETTABLEKS                       R50 R49 K76 ["ButtonGroup"]
      780 GETUPVAL                         R50 8
      781 GETUPVAL                         R51 12
      782 DUPTABLE                         R52 K118 [{["tag"] = "auto-xy text-body-small content-muted position-center-right anchor-center-right", ["Text"]}]
      783 GETIMPORT                        R53 K121 [string.format]
      785 LOADK                            R54 K122 ["%.2f / %.2f seconds"]
      786 MOVE                             R55 R10
      787 MOVE                             R56 R8
      788 CALL                             R53 3 1
      789 SETTABLEKS                       R53 R52 K117 ["Text"]
      791 CALL                             R50 2 1
      792 SETTABLEKS                       R50 R49 K77 ["Timestamp"]
      794 CALL                             R46 3 1
      795 SETTABLEKS                       R46 R45 K70 ["ControlsRow"]
      797 GETUPVAL                         R46 8
      798 GETUPVAL                         R47 9
      799 DUPTABLE                         R48 K124 [{"LayoutOrder", "Size", "stroke"}]
      800 MOVE                             R49 R32
      801 CALL                             R49 0 1
      802 SETTABLEKS                       R49 R48 K62 ["LayoutOrder"]
      804 GETIMPORT                        R49 K75 [UDim2.new]
      806 LOADN                            R50 1
      807 LOADN                            R51 0
      808 LOADN                            R52 0
      809 LOADN                            R53 56
      810 CALL                             R49 4 1
      811 SETTABLEKS                       R49 R48 K55 ["Size"]
      813 DUPTABLE                         R49 K127 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      814 SETTABLEKS                       R36 R49 K46 ["Color"]
      816 SETTABLEKS                       R37 R49 K50 ["Transparency"]
      818 SETTABLEKS                       R49 R48 K123 ["stroke"]
      820 DUPTABLE                         R49 K131 [{"ScrubInput", "Track", "Head"}]
      821 GETUPVAL                         R50 8
      822 LOADK                            R51 K51 ["Frame"]
      823 NEWTABLE                         R52 4 0
      825 GETIMPORT                        R53 K75 [UDim2.new]
      827 LOADN                            R54 1
      828 LOADN                            R55 0
      829 LOADN                            R56 0
      830 LOADN                            R57 28
      831 CALL                             R53 4 1
      832 SETTABLEKS                       R53 R52 K55 ["Size"]
      834 LOADN                            R53 1
      835 SETTABLEKS                       R53 R52 K60 ["BackgroundTransparency"]
      837 GETUPVAL                         R53 0
      838 GETTABLEKS                       R53 R53 K63 ["Event"]
      840 GETTABLEKS                       R53 R53 K64 ["InputBegan"]
      842 JUMPIF                           R9 ; [+2]
      843 MOVE                             R54 R26
      844 JUMP                             ; [+1]
      845 LOADNIL                          R54
      846 SETTABLE                         R54 R52 R53
      847 SETTABLEKS                       R3 R52 K132 ["ref"]
      849 CALL                             R50 2 1
      850 SETTABLEKS                       R50 R49 K128 ["ScrubInput"]
      852 GETUPVAL                         R50 8
      853 GETUPVAL                         R51 13
      854 DUPTABLE                         R52 K146 [{["duration"], ["timelineHeight"] = 28, ["trackHeight"] = 56, ["keyframeAreaHeight"], ["borderColor"], ["borderTransparency"], ["getTickInterval"], ["formatTickLabel"], ["markers"], ["selectedFrameIndex"], ["onMarkerInputBegan"], ["dragPreview"], ["onResizeInputBegan"]}]
      855 SETTABLEKS                       R8 R52 K6 ["duration"]
      857 GETTABLEKS                       R53 R0 K137 ["keyframeAreaHeight"]
      859 SETTABLEKS                       R53 R52 K137 ["keyframeAreaHeight"]
      861 SETTABLEKS                       R36 R52 K138 ["borderColor"]
      863 SETTABLEKS                       R37 R52 K139 ["borderTransparency"]
      865 GETTABLEKS                       R53 R0 K140 ["getTickInterval"]
      867 SETTABLEKS                       R53 R52 K140 ["getTickInterval"]
      869 GETTABLEKS                       R53 R0 K141 ["formatTickLabel"]
      871 SETTABLEKS                       R53 R52 K141 ["formatTickLabel"]
      873 GETTABLEKS                       R53 R0 K21 ["markers"]
      875 SETTABLEKS                       R53 R52 K21 ["markers"]
      877 SETTABLEKS                       R4 R52 K142 ["selectedFrameIndex"]
      879 JUMPIFNOT                        R9 ; [+2]
      880 LOADNIL                          R53
      881 JUMP                             ; [+1]
      882 MOVE                             R53 R29
      883 SETTABLEKS                       R53 R52 K143 ["onMarkerInputBegan"]
      885 GETTABLEKS                       R53 R19 K147 ["preview"]
      887 SETTABLEKS                       R53 R52 K144 ["dragPreview"]
      889 JUMPIF                           R9 ; [+5]
      890 GETTABLEKS                       R54 R0 K31 ["onMarkerResized"]
      892 JUMPIFNOT                        R54 ; [+2]
      893 MOVE                             R53 R30
      894 JUMP                             ; [+1]
      895 LOADNIL                          R53
      896 SETTABLEKS                       R53 R52 K145 ["onResizeInputBegan"]
      898 CALL                             R50 2 1
      899 SETTABLEKS                       R50 R49 K129 ["Track"]
      901 GETUPVAL                         R50 8
      902 GETUPVAL                         R51 14
      903 DUPTABLE                         R52 K149 [{["normalizedPosition"], ["trackHeight"] = 56}]
      904 SETTABLEKS                       R31 R52 K148 ["normalizedPosition"]
      906 CALL                             R50 2 1
      907 SETTABLEKS                       R50 R49 K130 ["Head"]
      909 CALL                             R46 3 1
      910 SETTABLEKS                       R46 R45 K71 ["TrackArea"]
      912 CALL                             R42 3 1
      913 SETTABLEKS                       R42 R41 K65 ["Panel"]
      915 CALL                             R38 3 -1
      916 RETURN                           R38 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["AnimationGen"]
       20 GETTABLEKS                       R4 R4 K10 ["Posing"]
       22 GETTABLEKS                       R4 R4 K11 ["PoseInterval"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K12 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K13 ["ReactUtils"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K14 ["ScrubbarHead"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K4 ["Parent"]
       50 GETTABLEKS                       R8 R8 K15 ["ScrubbarTrack"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R1 K16 ["Signal"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Components"]
       62 GETTABLEKS                       R10 R10 K18 ["Contexts"]
       64 GETTABLEKS                       R10 R10 K19 ["WindowInputContext"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K20 ["Hooks"]
       71 GETTABLEKS                       R11 R11 K21 ["useAnimationPlaybackController"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       78 GETTABLEKS                       R12 R12 K22 ["useEventConnection"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETIMPORT                        R13 K1 [script]
       85 GETTABLEKS                       R13 R13 K4 ["Parent"]
       87 GETTABLEKS                       R13 R13 K23 ["usePoseIntervalDrag"]
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R13 R2 K24 ["IconButton"]
       92 GETTABLEKS                       R14 R2 K25 ["Text"]
       94 GETTABLEKS                       R15 R2 K26 ["View"]
       96 GETTABLEKS                       R16 R5 K27 ["createNextOrder"]
       98 GETTABLEKS                       R17 R2 K20 ["Hooks"]
      100 GETTABLEKS                       R17 R17 K28 ["useTokens"]
      102 GETTABLEKS                       R18 R4 K29 ["createElement"]
      104 DUPCLOSURE                       R19 K30 [PROTO_0]
      105 DUPCLOSURE                       R20 K31 [PROTO_28]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R18
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R6
      121 RETURN                           R20 1
