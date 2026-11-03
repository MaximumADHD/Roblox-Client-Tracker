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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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
       15 GETTABLEKS                       R6 R2 K3 ["X"]
       17 SUB                              R5 R0 R6
       18 LOADN                            R6 0
       19 GETTABLEKS                       R7 R3 K3 ["X"]
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R4 K6 [math.clamp]
       24 CALL                             R4 3 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R8 R3 K3 ["X"]
       28 DIV                              R7 R4 R8
       29 GETUPVAL                         R8 2
       30 MUL                              R6 R7 R8
       31 CALL                             R5 1 0
       32 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["cancel"]
        6 CALL                             R2 0 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["beginScrub"]
       10 CALL                             R2 0 0
       11 GETUPVAL                         R2 3
       12 LOADNIL                          R3
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 4
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K2 ["current"]
       18 GETUPVAL                         R2 5
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
        6 GETIMPORT                        R2 K4 [Enum.UserInputType.MouseMovement]
        8 JUMPIFNOTEQ                      R1 R2 ; [+7]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R2 R0 K5 ["Position"]
       13 GETTABLEKS                       R2 R2 K6 ["X"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [-1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
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
      134 GETTABLEKS                       R15 R15 K20 ["useMemo"]
      136 NEWCLOSURE                       R16 P6
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R1
      139 NEWTABLE                         R17 0 2
      141 GETTABLEKS                       R18 R0 K21 ["markers"]
      143 MOVE                             R19 R1
      144 SETLIST                          R17 R18 2 [1]
      146 CALL                             R15 2 1
      147 GETUPVAL                         R16 0
      148 GETTABLEKS                       R16 R16 K3 ["useCallback"]
      150 NEWCLOSURE                       R17 P7
      151 CAPTURE                          VAL R12
      152 NEWTABLE                         R18 0 1
      154 MOVE                             R19 R12
      155 SETLIST                          R18 R19 1 [1]
      157 CALL                             R16 2 1
      158 GETUPVAL                         R17 3
      159 DUPTABLE                         R18 K29 [{"intervals", "fps", "trackRef", "duration", "disabled", "toolUseId", "revision", "onMove", "onResize", "onPause", "onSelect", "onActivate"}]
      160 SETTABLEKS                       R15 R18 K22 ["intervals"]
      162 SETTABLEKS                       R1 R18 K0 ["fps"]
      164 SETTABLEKS                       R3 R18 K23 ["trackRef"]
      166 SETTABLEKS                       R8 R18 K6 ["duration"]
      168 SETTABLEKS                       R9 R18 K7 ["disabled"]
      170 GETTABLEKS                       R19 R0 K5 ["toolUseId"]
      172 SETTABLEKS                       R19 R18 K5 ["toolUseId"]
      174 GETTABLEKS                       R19 R0 K16 ["revision"]
      176 SETTABLEKS                       R19 R18 K16 ["revision"]
      178 GETTABLEKS                       R19 R0 K30 ["onMarkerMoved"]
      180 SETTABLEKS                       R19 R18 K24 ["onMove"]
      182 GETTABLEKS                       R19 R0 K31 ["onMarkerResized"]
      184 SETTABLEKS                       R19 R18 K25 ["onResize"]
      186 SETTABLEKS                       R16 R18 K26 ["onPause"]
      188 SETTABLEKS                       R5 R18 K27 ["onSelect"]
      190 SETTABLEKS                       R14 R18 K28 ["onActivate"]
      192 CALL                             R17 1 1
      193 GETUPVAL                         R19 4
      194 GETTABLEKS                       R19 R19 K32 ["planInsertion"]
      196 MOVE                             R20 R10
      197 MOVE                             R21 R8
      198 MOVE                             R22 R15
      199 CALL                             R19 3 1
      200 JUMPIFNOTEQKNIL                  R19 ; [+2]
      202 LOADB                            R18 0 +1
      203 LOADB                            R18 1
      204 GETUPVAL                         R19 0
      205 GETTABLEKS                       R19 R19 K3 ["useCallback"]
      207 NEWCLOSURE                       R20 P8
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R5
      214 NEWTABLE                         R21 0 5
      216 MOVE                             R22 R9
      217 GETTABLEKS                       R23 R17 K33 ["busy"]
      219 MOVE                             R24 R18
      220 MOVE                             R25 R10
      221 GETTABLEKS                       R26 R0 K34 ["onMarkerInserted"]
      223 SETLIST                          R21 R22 5 [1]
      225 CALL                             R19 2 1
      226 GETUPVAL                         R20 0
      227 GETTABLEKS                       R20 R20 K3 ["useCallback"]
      229 NEWCLOSURE                       R21 P9
      230 CAPTURE                          VAL R17
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R0
      234 CAPTURE                          VAL R5
      235 NEWTABLE                         R22 0 4
      237 MOVE                             R23 R4
      238 MOVE                             R24 R12
      239 GETTABLEKS                       R25 R0 K35 ["onMarkerDeleted"]
      241 GETTABLEKS                       R26 R17 K36 ["cancel"]
      243 SETLIST                          R22 R23 4 [1]
      245 CALL                             R20 2 1
      246 GETUPVAL                         R21 0
      247 GETTABLEKS                       R21 R21 K3 ["useCallback"]
      249 NEWCLOSURE                       R22 P10
      250 CAPTURE                          VAL R17
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R8
      255 CAPTURE                          VAL R13
      256 NEWTABLE                         R23 0 6
      258 GETTABLEKS                       R24 R7 K37 ["isPlaying"]
      260 MOVE                             R25 R12
      261 MOVE                             R26 R10
      262 MOVE                             R27 R8
      263 MOVE                             R28 R13
      264 GETTABLEKS                       R29 R17 K36 ["cancel"]
      266 SETLIST                          R23 R24 6 [1]
      268 CALL                             R21 2 1
      269 GETUPVAL                         R22 0
      270 GETTABLEKS                       R22 R22 K3 ["useCallback"]
      272 NEWCLOSURE                       R23 P11
      273 CAPTURE                          VAL R17
      274 CAPTURE                          VAL R7
      275 CAPTURE                          VAL R5
      276 NEWTABLE                         R24 0 2
      278 MOVE                             R25 R7
      279 GETTABLEKS                       R26 R17 K36 ["cancel"]
      281 SETLIST                          R24 R25 2 [1]
      283 CALL                             R22 2 1
      284 GETUPVAL                         R23 0
      285 GETTABLEKS                       R23 R23 K3 ["useCallback"]
      287 NEWCLOSURE                       R24 P12
      288 CAPTURE                          VAL R3
      289 CAPTURE                          VAL R13
      290 CAPTURE                          VAL R8
      291 NEWTABLE                         R25 0 2
      293 MOVE                             R26 R8
      294 MOVE                             R27 R13
      295 SETLIST                          R25 R26 2 [1]
      297 CALL                             R23 2 1
      298 GETUPVAL                         R24 0
      299 GETTABLEKS                       R24 R24 K3 ["useCallback"]
      301 NEWCLOSURE                       R25 P13
      302 CAPTURE                          VAL R9
      303 CAPTURE                          VAL R17
      304 CAPTURE                          VAL R7
      305 CAPTURE                          VAL R5
      306 CAPTURE                          VAL R2
      307 CAPTURE                          VAL R23
      308 NEWTABLE                         R26 0 4
      310 MOVE                             R27 R9
      311 GETTABLEKS                       R28 R7 K38 ["beginScrub"]
      313 MOVE                             R29 R23
      314 GETTABLEKS                       R30 R17 K36 ["cancel"]
      316 SETLIST                          R26 R27 4 [1]
      318 CALL                             R24 2 1
      319 GETUPVAL                         R25 0
      320 GETTABLEKS                       R25 R25 K3 ["useCallback"]
      322 NEWCLOSURE                       R26 P14
      323 CAPTURE                          VAL R9
      324 CAPTURE                          VAL R4
      325 CAPTURE                          VAL R5
      326 CAPTURE                          VAL R13
      327 CAPTURE                          VAL R10
      328 NEWTABLE                         R27 0 4
      330 MOVE                             R28 R9
      331 MOVE                             R29 R4
      332 MOVE                             R30 R13
      333 MOVE                             R31 R10
      334 SETLIST                          R27 R28 4 [1]
      336 CALL                             R25 2 1
      337 GETUPVAL                         R26 5
      338 GETTABLEKS                       R27 R11 K39 ["inputChangedSignal"]
      340 NEWCLOSURE                       R28 P15
      341 CAPTURE                          VAL R2
      342 CAPTURE                          VAL R23
      343 NEWTABLE                         R29 0 1
      345 MOVE                             R30 R23
      346 SETLIST                          R29 R30 1 [1]
      348 CALL                             R26 3 0
      349 GETUPVAL                         R26 5
      350 GETTABLEKS                       R27 R11 K40 ["inputEndedSignal"]
      352 NEWCLOSURE                       R28 P16
      353 CAPTURE                          VAL R2
      354 CAPTURE                          VAL R7
      355 NEWTABLE                         R29 0 1
      357 GETTABLEKS                       R30 R7 K41 ["endScrub"]
      359 SETLIST                          R29 R30 1 [1]
      361 CALL                             R26 3 0
      362 GETUPVAL                         R26 0
      363 GETTABLEKS                       R26 R26 K14 ["useEffect"]
      365 NEWCLOSURE                       R27 P17
      366 CAPTURE                          VAL R0
      367 CAPTURE                          VAL R17
      368 CAPTURE                          VAL R5
      369 NEWTABLE                         R28 0 2
      371 GETTABLEKS                       R29 R0 K42 ["selectionClearedSignal"]
      373 GETTABLEKS                       R30 R17 K36 ["cancel"]
      375 SETLIST                          R28 R29 2 [1]
      377 CALL                             R26 2 0
      378 LOADN                            R27 0
      379 JUMPIFNOTLT                      R27 R8 ; [+3]
      381 DIV                              R26 R10 R8
      382 JUMP                             ; [+1]
      383 LOADN                            R26 0
      384 GETUPVAL                         R27 6
      385 CALL                             R27 0 1
      386 GETUPVAL                         R28 6
      387 CALL                             R28 0 1
      388 LOADB                            R29 0
      389 JUMPIFEQKNIL                     R4 ; [+18]
      391 GETTABLEKS                       R30 R0 K21 ["markers"]
      393 JUMPIFEQKNIL                     R30 ; [+14]
      395 GETTABLEKS                       R30 R0 K21 ["markers"]
      397 LOADNIL                          R31
      398 LOADNIL                          R32
      399 FORGPREP                         R30
      400 GETTABLEKS                       R35 R34 K43 ["frameIndex"]
      402 JUMPIFNOTEQ                      R35 R4 ; [+3]
      404 LOADB                            R29 1
      405 JUMP                             ; [+2]
      406 FORGLOOP                         R30 2 ; [-7]
      408 GETUPVAL                         R30 7
      409 CALL                             R30 0 1
      410 GETTABLEKS                       R31 R30 K44 ["Color"]
      412 GETTABLEKS                       R31 R31 K45 ["OverMedia"]
      414 GETTABLEKS                       R31 R31 K46 ["OverMedia_0"]
      416 GETTABLEKS                       R31 R31 K47 ["Color3"]
      418 GETTABLEKS                       R32 R30 K44 ["Color"]
      420 GETTABLEKS                       R32 R32 K45 ["OverMedia"]
      422 GETTABLEKS                       R32 R32 K46 ["OverMedia_0"]
      424 GETTABLEKS                       R32 R32 K48 ["Transparency"]
      426 GETUPVAL                         R33 8
      427 LOADK                            R34 K49 ["Frame"]
      428 DUPTABLE                         R35 K55 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      429 GETIMPORT                        R36 K58 [UDim2.fromScale]
      431 LOADN                            R37 1
      432 LOADN                            R38 0
      433 CALL                             R36 2 1
      434 SETTABLEKS                       R36 R35 K50 ["Size"]
      436 GETIMPORT                        R36 K61 [Enum.AutomaticSize.Y]
      438 SETTABLEKS                       R36 R35 K51 ["AutomaticSize"]
      440 GETTABLEKS                       R36 R0 K62 ["layoutOrder"]
      442 SETTABLEKS                       R36 R35 K54 ["LayoutOrder"]
      444 DUPTABLE                         R36 K65 [{"DeselectBackground", "Panel"}]
      445 GETUPVAL                         R37 8
      446 LOADK                            R38 K66 ["TextButton"]
      447 NEWTABLE                         R39 8 0
      449 GETIMPORT                        R40 K58 [UDim2.fromScale]
      451 LOADN                            R41 1
      452 LOADN                            R42 1
      453 CALL                             R40 2 1
      454 SETTABLEKS                       R40 R39 K50 ["Size"]
      456 LOADN                            R40 1
      457 SETTABLEKS                       R40 R39 K52 ["BackgroundTransparency"]
      459 LOADK                            R40 K67 [""]
      460 SETTABLEKS                       R40 R39 K68 ["Text"]
      462 LOADB                            R40 0
      463 SETTABLEKS                       R40 R39 K69 ["AutoButtonColor"]
      465 LOADN                            R40 0
      466 SETTABLEKS                       R40 R39 K70 ["ZIndex"]
      468 GETUPVAL                         R40 0
      469 GETTABLEKS                       R40 R40 K71 ["Event"]
      471 GETTABLEKS                       R40 R40 K72 ["MouseButton1Down"]
      473 SETTABLE                         R25 R39 R40
      474 CALL                             R37 2 1
      475 SETTABLEKS                       R37 R36 K63 ["DeselectBackground"]
      477 GETUPVAL                         R37 8
      478 GETUPVAL                         R38 9
      479 DUPTABLE                         R39 K75 [{["tag"] = "col gap-small size-full-0 auto-y padding-small radius-small bg-shift-200"}]
      480 DUPTABLE                         R40 K78 [{"ControlsRow", "TrackArea"}]
      481 GETUPVAL                         R41 8
      482 GETUPVAL                         R42 9
      483 DUPTABLE                         R43 K79 [{"LayoutOrder", "Size"}]
      484 MOVE                             R44 R27
      485 CALL                             R44 0 1
      486 SETTABLEKS                       R44 R43 K54 ["LayoutOrder"]
      488 GETIMPORT                        R44 K81 [UDim2.new]
      490 LOADN                            R45 1
      491 LOADN                            R46 0
      492 LOADN                            R47 0
      493 LOADN                            R48 24
      494 CALL                             R44 4 1
      495 SETTABLEKS                       R44 R43 K50 ["Size"]
      497 DUPTABLE                         R44 K84 [{"ButtonGroup", "Timestamp"}]
      498 GETUPVAL                         R45 8
      499 LOADK                            R46 K49 ["Frame"]
      500 DUPTABLE                         R47 K89 [{["AutomaticSize"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Active"] = True}]
      501 GETIMPORT                        R48 K91 [Enum.AutomaticSize.XY]
      503 SETTABLEKS                       R48 R47 K51 ["AutomaticSize"]
      505 GETIMPORT                        R48 K58 [UDim2.fromScale]
      507 LOADN                            R49 0
      508 LOADK                            R50 K92 [0.5]
      509 CALL                             R48 2 1
      510 SETTABLEKS                       R48 R47 K85 ["Position"]
      512 GETIMPORT                        R48 K94 [Vector2.new]
      514 LOADN                            R49 0
      515 LOADK                            R50 K92 [0.5]
      516 CALL                             R48 2 1
      517 SETTABLEKS                       R48 R47 K86 ["AnchorPoint"]
      519 DUPTABLE                         R48 K96 [{"Buttons"}]
      520 GETUPVAL                         R49 8
      521 GETUPVAL                         R50 9
      522 DUPTABLE                         R51 K98 [{["tag"] = "row align-y-center gap-xsmall auto-xy"}]
      523 DUPTABLE                         R52 K104 [{"BackButton", "PlayPauseButton", "ForwardButton", "InsertMarkerButton", "DeleteMarkerButton"}]
      524 GETUPVAL                         R53 8
      525 GETUPVAL                         R54 10
      526 DUPTABLE                         R55 K109 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      527 MOVE                             R56 R28
      528 CALL                             R56 0 1
      529 SETTABLEKS                       R56 R55 K54 ["LayoutOrder"]
      531 GETUPVAL                         R56 11
      532 GETTABLEKS                       R56 R56 K110 ["Enums"]
      534 GETTABLEKS                       R56 R56 K111 ["IconName"]
      536 GETTABLEKS                       R56 R56 K112 ["SkipStartSmall"]
      538 SETTABLEKS                       R56 R55 K105 ["icon"]
      540 GETUPVAL                         R56 11
      541 GETTABLEKS                       R56 R56 K110 ["Enums"]
      543 GETTABLEKS                       R56 R56 K113 ["IconSize"]
      545 GETTABLEKS                       R56 R56 K114 ["XSmall"]
      547 SETTABLEKS                       R56 R55 K106 ["size"]
      549 SETTABLEKS                       R9 R55 K107 ["isDisabled"]
      551 NEWCLOSURE                       R56 P18
      552 CAPTURE                          VAL R21
      553 CAPTURE                          VAL R1
      554 SETTABLEKS                       R56 R55 K108 ["onActivated"]
      556 CALL                             R53 2 1
      557 SETTABLEKS                       R53 R52 K99 ["BackButton"]
      559 GETUPVAL                         R53 8
      560 GETUPVAL                         R54 10
      561 DUPTABLE                         R55 K109 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      562 MOVE                             R56 R28
      563 CALL                             R56 0 1
      564 SETTABLEKS                       R56 R55 K54 ["LayoutOrder"]
      566 GETTABLEKS                       R57 R7 K37 ["isPlaying"]
      568 JUMPIFNOT                        R57 ; [+8]
      569 GETUPVAL                         R56 11
      570 GETTABLEKS                       R56 R56 K110 ["Enums"]
      572 GETTABLEKS                       R56 R56 K111 ["IconName"]
      574 GETTABLEKS                       R56 R56 K115 ["PauseLarge"]
      576 JUMP                             ; [+7]
      577 GETUPVAL                         R56 11
      578 GETTABLEKS                       R56 R56 K110 ["Enums"]
      580 GETTABLEKS                       R56 R56 K111 ["IconName"]
      582 GETTABLEKS                       R56 R56 K116 ["PlayLarge"]
      584 SETTABLEKS                       R56 R55 K105 ["icon"]
      586 GETUPVAL                         R56 11
      587 GETTABLEKS                       R56 R56 K110 ["Enums"]
      589 GETTABLEKS                       R56 R56 K113 ["IconSize"]
      591 GETTABLEKS                       R56 R56 K114 ["XSmall"]
      593 SETTABLEKS                       R56 R55 K106 ["size"]
      595 SETTABLEKS                       R9 R55 K107 ["isDisabled"]
      597 SETTABLEKS                       R22 R55 K108 ["onActivated"]
      599 CALL                             R53 2 1
      600 SETTABLEKS                       R53 R52 K100 ["PlayPauseButton"]
      602 GETUPVAL                         R53 8
      603 GETUPVAL                         R54 10
      604 DUPTABLE                         R55 K109 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      605 MOVE                             R56 R28
      606 CALL                             R56 0 1
      607 SETTABLEKS                       R56 R55 K54 ["LayoutOrder"]
      609 GETUPVAL                         R56 11
      610 GETTABLEKS                       R56 R56 K110 ["Enums"]
      612 GETTABLEKS                       R56 R56 K111 ["IconName"]
      614 GETTABLEKS                       R56 R56 K117 ["SkipEndSmall"]
      616 SETTABLEKS                       R56 R55 K105 ["icon"]
      618 GETUPVAL                         R56 11
      619 GETTABLEKS                       R56 R56 K110 ["Enums"]
      621 GETTABLEKS                       R56 R56 K113 ["IconSize"]
      623 GETTABLEKS                       R56 R56 K114 ["XSmall"]
      625 SETTABLEKS                       R56 R55 K106 ["size"]
      627 SETTABLEKS                       R9 R55 K107 ["isDisabled"]
      629 NEWCLOSURE                       R56 P19
      630 CAPTURE                          VAL R21
      631 CAPTURE                          VAL R1
      632 SETTABLEKS                       R56 R55 K108 ["onActivated"]
      634 CALL                             R53 2 1
      635 SETTABLEKS                       R53 R52 K101 ["ForwardButton"]
      637 GETTABLEKS                       R53 R0 K34 ["onMarkerInserted"]
      639 JUMPIFNOT                        R53 ; [+48]
      640 GETUPVAL                         R53 8
      641 GETUPVAL                         R54 10
      642 DUPTABLE                         R55 K109 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      643 MOVE                             R56 R28
      644 CALL                             R56 0 1
      645 SETTABLEKS                       R56 R55 K54 ["LayoutOrder"]
      647 DUPTABLE                         R56 K120 [{"name", "variant"}]
      648 GETUPVAL                         R57 11
      649 GETTABLEKS                       R57 R57 K110 ["Enums"]
      651 GETTABLEKS                       R57 R57 K111 ["IconName"]
      653 GETTABLEKS                       R57 R57 K121 ["DiamondSimplified"]
      655 SETTABLEKS                       R57 R56 K118 ["name"]
      657 GETUPVAL                         R57 11
      658 GETTABLEKS                       R57 R57 K110 ["Enums"]
      660 GETTABLEKS                       R57 R57 K122 ["IconVariant"]
      662 GETTABLEKS                       R57 R57 K123 ["Filled"]
      664 SETTABLEKS                       R57 R56 K119 ["variant"]
      666 SETTABLEKS                       R56 R55 K105 ["icon"]
      668 GETUPVAL                         R56 11
      669 GETTABLEKS                       R56 R56 K110 ["Enums"]
      671 GETTABLEKS                       R56 R56 K113 ["IconSize"]
      673 GETTABLEKS                       R56 R56 K114 ["XSmall"]
      675 SETTABLEKS                       R56 R55 K106 ["size"]
      677 MOVE                             R56 R9
      678 JUMPIF                           R56 ; [+4]
      679 GETTABLEKS                       R56 R17 K33 ["busy"]
      681 JUMPIF                           R56 ; [+1]
      682 NOT                              R56 R18
      683 SETTABLEKS                       R56 R55 K107 ["isDisabled"]
      685 SETTABLEKS                       R19 R55 K108 ["onActivated"]
      687 CALL                             R53 2 1
      688 SETTABLEKS                       R53 R52 K102 ["InsertMarkerButton"]
      690 GETTABLEKS                       R53 R0 K35 ["onMarkerDeleted"]
      692 JUMPIFNOT                        R53 ; [+36]
      693 GETUPVAL                         R53 8
      694 GETUPVAL                         R54 10
      695 DUPTABLE                         R55 K109 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      696 MOVE                             R56 R28
      697 CALL                             R56 0 1
      698 SETTABLEKS                       R56 R55 K54 ["LayoutOrder"]
      700 GETUPVAL                         R56 11
      701 GETTABLEKS                       R56 R56 K110 ["Enums"]
      703 GETTABLEKS                       R56 R56 K111 ["IconName"]
      705 GETTABLEKS                       R56 R56 K124 ["TrashCan"]
      707 SETTABLEKS                       R56 R55 K105 ["icon"]
      709 GETUPVAL                         R56 11
      710 GETTABLEKS                       R56 R56 K110 ["Enums"]
      712 GETTABLEKS                       R56 R56 K113 ["IconSize"]
      714 GETTABLEKS                       R56 R56 K114 ["XSmall"]
      716 SETTABLEKS                       R56 R55 K106 ["size"]
      718 MOVE                             R56 R9
      719 JUMPIF                           R56 ; [+4]
      720 GETTABLEKS                       R56 R17 K33 ["busy"]
      722 JUMPIF                           R56 ; [+1]
      723 NOT                              R56 R29
      724 SETTABLEKS                       R56 R55 K107 ["isDisabled"]
      726 SETTABLEKS                       R20 R55 K108 ["onActivated"]
      728 CALL                             R53 2 1
      729 SETTABLEKS                       R53 R52 K103 ["DeleteMarkerButton"]
      731 CALL                             R49 3 1
      732 SETTABLEKS                       R49 R48 K95 ["Buttons"]
      734 CALL                             R45 3 1
      735 SETTABLEKS                       R45 R44 K82 ["ButtonGroup"]
      737 GETUPVAL                         R45 8
      738 GETUPVAL                         R46 12
      739 DUPTABLE                         R47 K126 [{["tag"] = "auto-xy text-body-small content-muted position-center-right anchor-center-right", ["Text"]}]
      740 GETIMPORT                        R48 K129 [string.format]
      742 LOADK                            R49 K130 ["%.2f / %.2f seconds"]
      743 MOVE                             R50 R10
      744 MOVE                             R51 R8
      745 CALL                             R48 3 1
      746 SETTABLEKS                       R48 R47 K68 ["Text"]
      748 CALL                             R45 2 1
      749 SETTABLEKS                       R45 R44 K83 ["Timestamp"]
      751 CALL                             R41 3 1
      752 SETTABLEKS                       R41 R40 K76 ["ControlsRow"]
      754 GETUPVAL                         R41 8
      755 GETUPVAL                         R42 9
      756 DUPTABLE                         R43 K132 [{"LayoutOrder", "Size", "stroke"}]
      757 MOVE                             R44 R27
      758 CALL                             R44 0 1
      759 SETTABLEKS                       R44 R43 K54 ["LayoutOrder"]
      761 GETIMPORT                        R44 K81 [UDim2.new]
      763 LOADN                            R45 1
      764 LOADN                            R46 0
      765 LOADN                            R47 0
      766 LOADN                            R48 56
      767 CALL                             R44 4 1
      768 SETTABLEKS                       R44 R43 K50 ["Size"]
      770 DUPTABLE                         R44 K134 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      771 SETTABLEKS                       R31 R44 K44 ["Color"]
      773 SETTABLEKS                       R32 R44 K48 ["Transparency"]
      775 SETTABLEKS                       R44 R43 K131 ["stroke"]
      777 DUPTABLE                         R44 K138 [{"ScrubInput", "Track", "Head"}]
      778 GETUPVAL                         R45 8
      779 LOADK                            R46 K66 ["TextButton"]
      780 NEWTABLE                         R47 8 0
      782 GETIMPORT                        R48 K81 [UDim2.new]
      784 LOADN                            R49 1
      785 LOADN                            R50 0
      786 LOADN                            R51 0
      787 LOADN                            R52 28
      788 CALL                             R48 4 1
      789 SETTABLEKS                       R48 R47 K50 ["Size"]
      791 LOADN                            R48 1
      792 SETTABLEKS                       R48 R47 K52 ["BackgroundTransparency"]
      794 LOADK                            R48 K67 [""]
      795 SETTABLEKS                       R48 R47 K68 ["Text"]
      797 LOADB                            R48 0
      798 SETTABLEKS                       R48 R47 K69 ["AutoButtonColor"]
      800 NOT                              R48 R9
      801 SETTABLEKS                       R48 R47 K87 ["Active"]
      803 GETUPVAL                         R48 0
      804 GETTABLEKS                       R48 R48 K71 ["Event"]
      806 GETTABLEKS                       R48 R48 K72 ["MouseButton1Down"]
      808 SETTABLE                         R24 R47 R48
      809 SETTABLEKS                       R3 R47 K139 ["ref"]
      811 CALL                             R45 2 1
      812 SETTABLEKS                       R45 R44 K135 ["ScrubInput"]
      814 GETUPVAL                         R45 8
      815 GETUPVAL                         R46 13
      816 DUPTABLE                         R47 K153 [{["duration"], ["timelineHeight"] = 28, ["trackHeight"] = 56, ["keyframeAreaHeight"], ["borderColor"], ["borderTransparency"], ["getTickInterval"], ["formatTickLabel"], ["markers"], ["selectedFrameIndex"], ["onMarkerPressed"], ["dragPreview"], ["onResizePressed"]}]
      817 SETTABLEKS                       R8 R47 K6 ["duration"]
      819 GETTABLEKS                       R48 R0 K144 ["keyframeAreaHeight"]
      821 SETTABLEKS                       R48 R47 K144 ["keyframeAreaHeight"]
      823 SETTABLEKS                       R31 R47 K145 ["borderColor"]
      825 SETTABLEKS                       R32 R47 K146 ["borderTransparency"]
      827 GETTABLEKS                       R48 R0 K147 ["getTickInterval"]
      829 SETTABLEKS                       R48 R47 K147 ["getTickInterval"]
      831 GETTABLEKS                       R48 R0 K148 ["formatTickLabel"]
      833 SETTABLEKS                       R48 R47 K148 ["formatTickLabel"]
      835 GETTABLEKS                       R48 R0 K21 ["markers"]
      837 SETTABLEKS                       R48 R47 K21 ["markers"]
      839 SETTABLEKS                       R4 R47 K149 ["selectedFrameIndex"]
      841 JUMPIFNOT                        R9 ; [+2]
      842 LOADNIL                          R48
      843 JUMP                             ; [+2]
      844 GETTABLEKS                       R48 R17 K154 ["beginMove"]
      846 SETTABLEKS                       R48 R47 K150 ["onMarkerPressed"]
      848 GETTABLEKS                       R48 R17 K155 ["preview"]
      850 SETTABLEKS                       R48 R47 K151 ["dragPreview"]
      852 JUMPIF                           R9 ; [+6]
      853 GETTABLEKS                       R49 R0 K31 ["onMarkerResized"]
      855 JUMPIFNOT                        R49 ; [+3]
      856 GETTABLEKS                       R48 R17 K156 ["beginResize"]
      858 JUMP                             ; [+1]
      859 LOADNIL                          R48
      860 SETTABLEKS                       R48 R47 K152 ["onResizePressed"]
      862 CALL                             R45 2 1
      863 SETTABLEKS                       R45 R44 K136 ["Track"]
      865 GETUPVAL                         R45 8
      866 GETUPVAL                         R46 14
      867 DUPTABLE                         R47 K158 [{["normalizedPosition"], ["trackHeight"] = 56}]
      868 SETTABLEKS                       R26 R47 K157 ["normalizedPosition"]
      870 CALL                             R45 2 1
      871 SETTABLEKS                       R45 R44 K137 ["Head"]
      873 CALL                             R41 3 1
      874 SETTABLEKS                       R41 R40 K77 ["TrackArea"]
      876 CALL                             R37 3 1
      877 SETTABLEKS                       R37 R36 K64 ["Panel"]
      879 CALL                             R33 3 -1
      880 RETURN                           R33 -1

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
      105 DUPCLOSURE                       R20 K31 [PROTO_23]
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
