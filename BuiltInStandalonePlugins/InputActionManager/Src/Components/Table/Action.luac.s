PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+4]
        6 NEWTABLE                         R0 0 0
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K0 ["type"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_1:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+80]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["type"]
        8 GETIMPORT                        R4 K4 [Enum.InputActionType.Bool]
       10 JUMPIFNOTEQ                      R2 R4 ; [+6]
       12 LOADB                            R3 1
       13 GETIMPORT                        R4 K6 [Enum.InputActionType.Direction1D]
       15 JUMPIFEQ                         R0 R4 ; [+12]
       17 LOADB                            R3 0
       18 GETIMPORT                        R4 K6 [Enum.InputActionType.Direction1D]
       20 JUMPIFNOTEQ                      R2 R4 ; [+7]
       22 GETIMPORT                        R4 K4 [Enum.InputActionType.Bool]
       24 JUMPIFEQ                         R0 R4 ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 JUMPIF                           R3 ; [+23]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K7 ["Keycode"]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 MOVE                             R9 R8
       36 LOADNIL                          R10
       37 LOADNIL                          R11
       38 FORGPREP                         R9
       39 GETUPVAL                         R14 2
       40 GETTABLEKS                       R14 R14 K8 ["updateBinding"]
       42 GETTABLEKS                       R15 R13 K9 ["uuid"]
       44 LOADNIL                          R16
       45 MOVE                             R17 R1
       46 CALL                             R14 3 0
       47 LOADB                            R1 1
       48 FORGLOOP                         R9 2 ; [-10]
       50 FORGLOOP                         R4 2 ; [-16]
       52 GETIMPORT                        R4 K4 [Enum.InputActionType.Bool]
       54 JUMPIFEQ                         R0 R4 ; [+5]
       56 GETIMPORT                        R4 K11 [Enum.InputActionType.ViewportPosition]
       58 JUMPIFNOTEQ                      R0 R4 ; [+24]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K12 ["Composite"]
       63 LOADNIL                          R5
       64 LOADNIL                          R6
       65 FORGPREP                         R4
       66 MOVE                             R9 R8
       67 LOADNIL                          R10
       68 LOADNIL                          R11
       69 FORGPREP                         R9
       70 GETUPVAL                         R14 2
       71 GETTABLEKS                       R14 R14 K8 ["updateBinding"]
       73 GETTABLEKS                       R15 R13 K9 ["uuid"]
       75 LOADNIL                          R16
       76 MOVE                             R17 R1
       77 CALL                             R14 3 0
       78 LOADB                            R1 1
       79 FORGLOOP                         R9 2 ; [-10]
       81 FORGLOOP                         R4 2 ; [-16]
       83 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["type"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R4 4
       11 GETUPVAL                         R5 5
       12 CALL                             R0 5 -1
       13 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CANCEL"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+4]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 2
        9 JUMPIFEQKNIL                     R2 ; [+4]
       11 GETUPVAL                         R2 3
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 RETURN                           R0 0
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K2 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K3 ["string"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       26 LOADK                            R4 K4 ["Expected id to be a string"]
       27 GETIMPORT                        R2 K6 [assert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K7 ["ROW_USE_COMPOSITE"]
       33 JUMPIFNOTEQ                      R0 R2 ; [+24]
       35 JUMPIFEQKNIL                     R1 ; [+22]
       37 LOADB                            R2 0
       38 GETUPVAL                         R3 4
       39 CALL                             R3 0 3
       40 FORGPREP                         R3
       41 GETTABLE                         R8 R1 R7
       42 JUMPIFNOT                        R8 ; [+9]
       43 GETUPVAL                         R9 5
       44 GETTABLEKS                       R9 R9 K8 ["updateBinding"]
       46 GETTABLEKS                       R10 R8 K9 ["uuid"]
       48 LOADNIL                          R11
       49 MOVE                             R12 R2
       50 CALL                             R9 3 0
       51 LOADB                            R2 1
       52 FORGLOOP                         R3 2 ; [-12]
       54 GETUPVAL                         R3 6
       55 LOADK                            R4 K10 ["Composite"]
       56 CALL                             R3 1 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K11 ["ROW_USE_KEYCODE"]
       61 JUMPIFNOTEQ                      R0 R2 ; [+24]
       63 JUMPIFEQKNIL                     R1 ; [+22]
       65 LOADB                            R2 0
       66 GETUPVAL                         R3 4
       67 CALL                             R3 0 3
       68 FORGPREP                         R3
       69 GETTABLE                         R8 R1 R7
       70 JUMPIFNOT                        R8 ; [+9]
       71 GETUPVAL                         R9 5
       72 GETTABLEKS                       R9 R9 K8 ["updateBinding"]
       74 GETTABLEKS                       R10 R8 K9 ["uuid"]
       76 LOADNIL                          R11
       77 MOVE                             R12 R2
       78 CALL                             R9 3 0
       79 LOADB                            R2 1
       80 FORGLOOP                         R3 2 ; [-12]
       82 GETUPVAL                         R3 6
       83 LOADK                            R4 K12 ["Keycode"]
       84 CALL                             R3 1 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R2 0
       87 GETTABLEKS                       R2 R2 K13 ["DELETE"]
       89 JUMPIFNOTEQ                      R0 R2 ; [+10]
       91 GETUPVAL                         R2 5
       92 GETTABLEKS                       R2 R2 K14 ["updateAction"]
       94 GETUPVAL                         R3 2
       95 GETTABLEKS                       R3 R3 K9 ["uuid"]
       97 LOADNIL                          R4
       98 CALL                             R2 2 0
       99 RETURN                           R0 0
      100 GETUPVAL                         R2 7
      101 CALL                             R2 0 1
      102 JUMPIFNOT                        R2 ; [+20]
      103 GETUPVAL                         R2 0
      104 GETTABLEKS                       R2 R2 K15 ["ENABLED"]
      106 JUMPIFNOTEQ                      R0 R2 ; [+16]
      108 GETUPVAL                         R2 5
      109 GETTABLEKS                       R2 R2 K14 ["updateAction"]
      111 GETUPVAL                         R3 2
      112 GETTABLEKS                       R3 R3 K9 ["uuid"]
      114 DUPTABLE                         R4 K17 [{"enabled"}]
      115 GETUPVAL                         R6 2
      116 GETTABLEKS                       R6 R6 K16 ["enabled"]
      118 NOT                              R5 R6
      119 SETTABLEKS                       R5 R4 K16 ["enabled"]
      121 CALL                             R2 2 0
      122 RETURN                           R0 0
      123 GETUPVAL                         R2 8
      124 CALL                             R2 0 1
      125 JUMPIFNOT                        R2 ; [+41]
      126 GETUPVAL                         R2 0
      127 GETTABLEKS                       R2 R2 K18 ["SCRIPTABLE_ENABLED"]
      129 JUMPIFNOTEQ                      R0 R2 ; [+37]
      131 GETUPVAL                         R2 9
      132 JUMPIFNOT                        R2 ; [+9]
      133 GETUPVAL                         R2 5
      134 GETTABLEKS                       R2 R2 K8 ["updateBinding"]
      136 GETUPVAL                         R3 9
      137 GETTABLEKS                       R3 R3 K9 ["uuid"]
      139 LOADNIL                          R4
      140 CALL                             R2 2 0
      141 RETURN                           R0 0
      142 GETUPVAL                         R2 5
      143 GETTABLEKS                       R2 R2 K8 ["updateBinding"]
      145 LOADNIL                          R3
      146 DUPTABLE                         R4 K22 [{"name", "parentUuid", "type"}]
      147 LOADK                            R5 K23 ["%*Scriptable"]
      148 GETUPVAL                         R7 2
      149 GETTABLEKS                       R7 R7 K19 ["name"]
      151 NAMECALL                         R5 R5 K24 ["format"]
      153 CALL                             R5 2 1
      154 SETTABLEKS                       R5 R4 K19 ["name"]
      156 GETUPVAL                         R5 2
      157 GETTABLEKS                       R5 R5 K9 ["uuid"]
      159 SETTABLEKS                       R5 R4 K20 ["parentUuid"]
      161 GETIMPORT                        R5 K28 [Enum.InputBindingType.Scriptable]
      163 SETTABLEKS                       R5 R4 K21 ["type"]
      165 CALL                             R2 2 0
      166 RETURN                           R0 0
      167 GETUPVAL                         R2 8
      168 CALL                             R2 0 1
      169 JUMPIFNOT                        R2 ; [+11]
      170 GETUPVAL                         R2 0
      171 GETTABLEKS                       R2 R2 K29 ["SCRIPTABLE_RENAME"]
      173 JUMPIFNOTEQ                      R0 R2 ; [+7]
      175 GETUPVAL                         R2 9
      176 JUMPIFNOT                        R2 ; [+3]
      177 GETUPVAL                         R2 10
      178 MOVE                             R3 R0
      179 CALL                             R2 1 0
      180 RETURN                           R0 0
      181 GETUPVAL                         R2 0
      182 GETTABLEKS                       R2 R2 K30 ["DUPLICATE"]
      184 JUMPIFNOTEQ                      R0 R2 ; [+9]
      186 GETUPVAL                         R2 5
      187 GETTABLEKS                       R2 R2 K31 ["duplicateAction"]
      189 GETUPVAL                         R3 2
      190 GETTABLEKS                       R3 R3 K9 ["uuid"]
      192 CALL                             R2 1 0
      193 RETURN                           R0 0
      194 GETUPVAL                         R2 0
      195 GETTABLEKS                       R2 R2 K32 ["EDIT_ACTION_BOOL"]
      197 JUMPIFNOTEQ                      R0 R2 ; [+27]
      199 GETIMPORT                        R2 K35 [Enum.InputActionType.Bool]
      201 GETUPVAL                         R3 11
      202 MOVE                             R4 R2
      203 CALL                             R3 1 1
      204 GETUPVAL                         R4 5
      205 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      207 GETUPVAL                         R5 2
      208 GETTABLEKS                       R5 R5 K9 ["uuid"]
      210 DUPTABLE                         R6 K36 [{"type"}]
      211 SETTABLEKS                       R2 R6 K21 ["type"]
      213 MOVE                             R7 R3
      214 CALL                             R4 3 0
      215 GETUPVAL                         R4 12
      216 GETTABLEKS                       R4 R4 K37 ["countInputActionTypeSelected"]
      218 GETIMPORT                        R5 K35 [Enum.InputActionType.Bool]
      220 CALL                             R4 1 0
      221 GETUPVAL                         R4 6
      222 LOADK                            R5 K12 ["Keycode"]
      223 CALL                             R4 1 0
      224 RETURN                           R0 0
      225 GETUPVAL                         R2 0
      226 GETTABLEKS                       R2 R2 K38 ["EDIT_ACTION_DIRECTION1D"]
      228 JUMPIFNOTEQ                      R0 R2 ; [+24]
      230 GETIMPORT                        R2 K40 [Enum.InputActionType.Direction1D]
      232 GETUPVAL                         R3 11
      233 MOVE                             R4 R2
      234 CALL                             R3 1 1
      235 GETUPVAL                         R4 5
      236 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      238 GETUPVAL                         R5 2
      239 GETTABLEKS                       R5 R5 K9 ["uuid"]
      241 DUPTABLE                         R6 K36 [{"type"}]
      242 SETTABLEKS                       R2 R6 K21 ["type"]
      244 MOVE                             R7 R3
      245 CALL                             R4 3 0
      246 GETUPVAL                         R4 12
      247 GETTABLEKS                       R4 R4 K37 ["countInputActionTypeSelected"]
      249 GETIMPORT                        R5 K40 [Enum.InputActionType.Direction1D]
      251 CALL                             R4 1 0
      252 RETURN                           R0 0
      253 GETUPVAL                         R2 0
      254 GETTABLEKS                       R2 R2 K41 ["EDIT_ACTION_DIRECTION2D"]
      256 JUMPIFNOTEQ                      R0 R2 ; [+24]
      258 GETIMPORT                        R2 K43 [Enum.InputActionType.Direction2D]
      260 GETUPVAL                         R3 11
      261 MOVE                             R4 R2
      262 CALL                             R3 1 1
      263 GETUPVAL                         R4 5
      264 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      266 GETUPVAL                         R5 2
      267 GETTABLEKS                       R5 R5 K9 ["uuid"]
      269 DUPTABLE                         R6 K36 [{"type"}]
      270 SETTABLEKS                       R2 R6 K21 ["type"]
      272 MOVE                             R7 R3
      273 CALL                             R4 3 0
      274 GETUPVAL                         R4 12
      275 GETTABLEKS                       R4 R4 K37 ["countInputActionTypeSelected"]
      277 GETIMPORT                        R5 K43 [Enum.InputActionType.Direction2D]
      279 CALL                             R4 1 0
      280 RETURN                           R0 0
      281 GETUPVAL                         R2 0
      282 GETTABLEKS                       R2 R2 K44 ["EDIT_ACTION_DIRECTION3D"]
      284 JUMPIFNOTEQ                      R0 R2 ; [+24]
      286 GETIMPORT                        R2 K46 [Enum.InputActionType.Direction3D]
      288 GETUPVAL                         R3 11
      289 MOVE                             R4 R2
      290 CALL                             R3 1 1
      291 GETUPVAL                         R4 5
      292 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      294 GETUPVAL                         R5 2
      295 GETTABLEKS                       R5 R5 K9 ["uuid"]
      297 DUPTABLE                         R6 K36 [{"type"}]
      298 SETTABLEKS                       R2 R6 K21 ["type"]
      300 MOVE                             R7 R3
      301 CALL                             R4 3 0
      302 GETUPVAL                         R4 12
      303 GETTABLEKS                       R4 R4 K37 ["countInputActionTypeSelected"]
      305 GETIMPORT                        R5 K46 [Enum.InputActionType.Direction3D]
      307 CALL                             R4 1 0
      308 RETURN                           R0 0
      309 GETUPVAL                         R2 0
      310 GETTABLEKS                       R2 R2 K47 ["EDIT_ACTION_VIEWPORT_POSITION"]
      312 JUMPIFNOTEQ                      R0 R2 ; [+27]
      314 GETIMPORT                        R2 K49 [Enum.InputActionType.ViewportPosition]
      316 GETUPVAL                         R3 11
      317 MOVE                             R4 R2
      318 CALL                             R3 1 1
      319 GETUPVAL                         R4 5
      320 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      322 GETUPVAL                         R5 2
      323 GETTABLEKS                       R5 R5 K9 ["uuid"]
      325 DUPTABLE                         R6 K36 [{"type"}]
      326 SETTABLEKS                       R2 R6 K21 ["type"]
      328 MOVE                             R7 R3
      329 CALL                             R4 3 0
      330 GETUPVAL                         R4 12
      331 GETTABLEKS                       R4 R4 K37 ["countInputActionTypeSelected"]
      333 GETIMPORT                        R5 K49 [Enum.InputActionType.ViewportPosition]
      335 CALL                             R4 1 0
      336 GETUPVAL                         R4 6
      337 LOADK                            R5 K12 ["Keycode"]
      338 CALL                             R4 1 0
      339 RETURN                           R0 0
      340 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R5 R0 K2 ["uuid"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 5
       26 MOVE                             R6 R4
       27 CALL                             R5 1 1
       28 LOADB                            R6 1
       29 JUMPIFEQKNIL                     R4 ; [+3]
       31 GETTABLEKS                       R6 R4 K3 ["enabled"]
       33 GETTABLEKS                       R7 R0 K4 ["context"]
       35 GETTABLEKS                       R7 R7 K3 ["enabled"]
       37 GETUPVAL                         R9 6
       38 CALL                             R9 0 1
       39 JUMPIFNOT                        R9 ; [+4]
       40 JUMPIFNOT                        R4 ; [+3]
       41 GETTABLEKS                       R8 R4 K5 ["defaultPlayerScript"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 GETUPVAL                         R10 7
       46 CALL                             R10 0 1
       47 JUMPIFNOT                        R10 ; [+4]
       48 NOT                              R9 R7
       49 JUMPIF                           R9 ; [+3]
       50 NOT                              R9 R6
       51 JUMP                             ; [+1]
       52 LOADNIL                          R9
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K6 ["useRef"]
       56 LOADNIL                          R11
       57 CALL                             R10 1 1
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R11 R11 K7 ["useState"]
       61 LOADNIL                          R12
       62 CALL                             R11 1 2
       63 GETUPVAL                         R13 8
       64 MOVE                             R14 R4
       65 CALL                             R13 1 1
       66 GETUPVAL                         R14 9
       67 MOVE                             R15 R4
       68 CALL                             R14 1 1
       69 GETUPVAL                         R15 10
       70 JUMPIFNOT                        R4 ; [+3]
       71 GETTABLEKS                       R16 R4 K8 ["type"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R16
       75 CALL                             R15 1 5
       76 GETUPVAL                         R20 11
       77 GETTABLEKS                       R21 R0 K2 ["uuid"]
       79 JUMPIFNOT                        R5 ; [+16]
       80 LOADB                            R22 1
       81 GETTABLEKS                       R25 R5 K9 ["Keycode"]
       83 LENGTH                           R24 R25
       84 GETTABLEKS                       R26 R5 K10 ["Composite"]
       86 LENGTH                           R25 R26
       87 ADD                              R23 R24 R25
       88 LOADN                            R24 1
       89 JUMPIFLT                         R24 R23 ; [+7]
       91 JUMPIFNOTEQKNIL                  R16 ; [+2]
       93 LOADB                            R22 0 +1
       94 LOADB                            R22 1
       95 JUMP                             ; [+1]
       96 LOADB                            R22 0
       97 CALL                             R20 2 2
       98 GETUPVAL                         R22 0
       99 GETTABLEKS                       R22 R22 K7 ["useState"]
      101 LOADNIL                          R23
      102 CALL                             R22 1 2
      103 GETUPVAL                         R24 0
      104 GETTABLEKS                       R24 R24 K11 ["useMemo"]
      106 NEWCLOSURE                       R25 P0
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R4
      109 CAPTURE                          UPVAL U12
      110 NEWTABLE                         R26 0 2
      112 MOVE                             R27 R5
      113 MOVE                             R28 R4
      114 SETLIST                          R26 R27 2 [1]
      116 CALL                             R24 2 1
      117 GETUPVAL                         R25 0
      118 GETTABLEKS                       R25 R25 K12 ["useCallback"]
      120 NEWCLOSURE                       R26 P1
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R1
      124 NEWTABLE                         R27 0 3
      126 MOVE                             R28 R4
      127 MOVE                             R29 R5
      128 MOVE                             R30 R1
      129 SETLIST                          R27 R28 3 [1]
      131 CALL                             R25 2 1
      132 GETUPVAL                         R26 0
      133 GETTABLEKS                       R26 R26 K11 ["useMemo"]
      135 NEWCLOSURE                       R27 P2
      136 CAPTURE                          UPVAL U13
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R13
      142 NEWTABLE                         R28 0 5
      144 MOVE                             R29 R2
      145 MOVE                             R30 R4
      146 MOVE                             R31 R6
      147 MOVE                             R32 R7
      148 MOVE                             R33 R13
      149 SETLIST                          R28 R29 5 [1]
      151 CALL                             R26 2 1
      152 GETUPVAL                         R27 14
      153 GETTABLEKS                       R27 R27 K13 ["useEventCallback"]
      155 NEWCLOSURE                       R28 P3
      156 CAPTURE                          UPVAL U15
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R5
      160 CAPTURE                          UPVAL U16
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R23
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          UPVAL U17
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R25
      168 CAPTURE                          VAL R3
      169 CALL                             R27 1 1
      170 GETUPVAL                         R28 14
      171 GETTABLEKS                       R28 R28 K13 ["useEventCallback"]
      173 NEWCLOSURE                       R29 P4
      174 CAPTURE                          VAL R12
      175 CALL                             R28 1 1
      176 GETUPVAL                         R29 17
      177 CALL                             R29 0 1
      178 JUMPIFNOT                        R29 ; [+21]
      179 GETUPVAL                         R29 18
      180 CALL                             R29 0 1
      181 JUMPIFNOT                        R29 ; [+18]
      182 MOVE                             R29 R13
      183 JUMPIFNOT                        R29 ; [+16]
      184 MOVE                             R29 R11
      185 JUMPIFNOT                        R29 ; [+14]
      186 GETUPVAL                         R29 0
      187 GETTABLEKS                       R29 R29 K14 ["createElement"]
      189 GETUPVAL                         R30 19
      190 DUPTABLE                         R31 K19 [{"anchorRef", "binding", "menuOption", "onClose"}]
      191 SETTABLEKS                       R10 R31 K15 ["anchorRef"]
      193 SETTABLEKS                       R13 R31 K16 ["binding"]
      195 SETTABLEKS                       R11 R31 K17 ["menuOption"]
      197 SETTABLEKS                       R28 R31 K18 ["onClose"]
      199 CALL                             R29 2 1
      200 GETUPVAL                         R30 14
      201 GETTABLEKS                       R30 R30 K20 ["createNextOrder"]
      203 CALL                             R30 0 1
      204 JUMPIFEQKNIL                     R4 ; [+3]
      206 JUMPIFNOTEQKNIL                  R5 ; [+3]
      208 LOADNIL                          R31
      209 RETURN                           R31 1
      210 JUMPIF                           R8 ; [+46]
      211 JUMPIFNOT                        R14 ; [+45]
      212 GETUPVAL                         R31 0
      213 GETTABLEKS                       R31 R31 K14 ["createElement"]
      215 GETUPVAL                         R32 20
      216 DUPTABLE                         R33 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      217 GETTABLEKS                       R34 R0 K21 ["LayoutOrder"]
      219 SETTABLEKS                       R34 R33 K21 ["LayoutOrder"]
      221 LOADK                            R34 K26 ["action-%*"]
      222 GETTABLEKS                       R36 R4 K27 ["name"]
      224 NAMECALL                         R34 R34 K28 ["format"]
      226 CALL                             R34 2 1
      227 SETTABLEKS                       R34 R33 K24 ["testId"]
      229 DUPTABLE                         R34 K30 [{"HeaderRow"}]
      230 GETUPVAL                         R35 0
      231 GETTABLEKS                       R35 R35 K14 ["createElement"]
      233 GETUPVAL                         R36 21
      234 DUPTABLE                         R37 K35 [{["bindings"], ["LayoutOrder"] = 1, ["nodeProps"], ["stateString"]}]
      235 GETTABLEKS                       R38 R5 K36 ["All"]
      237 SETTABLEKS                       R38 R37 K31 ["bindings"]
      239 DUPTABLE                         R38 K42 [{["action"], ["depth"] = 1, ["disabled"], ["icon"] = "InputAction", ["name"]}]
      240 SETTABLEKS                       R4 R38 K37 ["action"]
      242 SETTABLEKS                       R9 R38 K39 ["disabled"]
      244 GETTABLEKS                       R39 R4 K27 ["name"]
      246 SETTABLEKS                       R39 R38 K27 ["name"]
      248 SETTABLEKS                       R38 R37 K33 ["nodeProps"]
      250 SETTABLEKS                       R14 R37 K34 ["stateString"]
      252 CALL                             R35 2 1
      253 SETTABLEKS                       R35 R34 K29 ["HeaderRow"]
      255 CALL                             R31 3 -1
      256 RETURN                           R31 -1
      257 JUMPIFNOTEQKNIL                  R16 ; [+85]
      259 GETTABLEKS                       R32 R5 K9 ["Keycode"]
      261 LENGTH                           R31 R32
      262 LOADN                            R32 1
      263 JUMPIFNOTLE                      R31 R32 ; [+8]
      265 GETTABLEKS                       R32 R5 K10 ["Composite"]
      267 LENGTH                           R31 R32
      268 JUMPIFNOTEQKN                    R31 K43 [0] ; [+3]
      270 JUMPIFEQKNIL                     R22 ; [+3]
      272 JUMPIFNOTEQKS                    R22 K9 ["Keycode"] ; [+70]
      274 GETTABLEKS                       R32 R5 K9 ["Keycode"]
      276 GETTABLEN                        R31 R32 1
      277 JUMPIF                           R31 ; [+2]
      278 NEWTABLE                         R31 0 0
      280 GETUPVAL                         R32 0
      281 GETTABLEKS                       R32 R32 K14 ["createElement"]
      283 GETUPVAL                         R33 20
      284 DUPTABLE                         R34 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      285 GETTABLEKS                       R35 R0 K21 ["LayoutOrder"]
      287 SETTABLEKS                       R35 R34 K21 ["LayoutOrder"]
      289 LOADK                            R35 K26 ["action-%*"]
      290 GETTABLEKS                       R37 R4 K27 ["name"]
      292 NAMECALL                         R35 R35 K28 ["format"]
      294 CALL                             R35 2 1
      295 SETTABLEKS                       R35 R34 K24 ["testId"]
      297 DUPTABLE                         R35 K45 [{"HeaderRow", "PropertyPopover"}]
      298 GETUPVAL                         R36 0
      299 GETTABLEKS                       R36 R36 K14 ["createElement"]
      301 GETUPVAL                         R37 22
      302 DUPTABLE                         R38 K54 [{["action"], ["anchorRef"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["disabled"], ["context"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingCreateCommand"], ["onBindingEditCommand"], ["scriptableBinding"], ["validBindingsBySchema"]}]
      303 SETTABLEKS                       R4 R38 K37 ["action"]
      305 SETTABLEKS                       R10 R38 K15 ["anchorRef"]
      307 SETTABLEKS                       R31 R38 K31 ["bindings"]
      309 SETTABLEKS                       R15 R38 K48 ["createMenu"]
      311 SETTABLEKS                       R9 R38 K39 ["disabled"]
      313 GETTABLEKS                       R39 R0 K4 ["context"]
      315 SETTABLEKS                       R39 R38 K4 ["context"]
      317 MOVE                             R39 R30
      318 CALL                             R39 0 1
      319 SETTABLEKS                       R39 R38 K21 ["LayoutOrder"]
      321 GETTABLEKS                       R39 R4 K27 ["name"]
      323 SETTABLEKS                       R39 R38 K27 ["name"]
      325 SETTABLEKS                       R17 R38 K50 ["onBindingCreateCommand"]
      327 NEWCLOSURE                       R39 P5
      328 CAPTURE                          VAL R27
      329 CAPTURE                          VAL R31
      330 SETTABLEKS                       R39 R38 K51 ["onBindingEditCommand"]
      332 SETTABLEKS                       R13 R38 K52 ["scriptableBinding"]
      334 SETTABLEKS                       R24 R38 K53 ["validBindingsBySchema"]
      336 CALL                             R36 2 1
      337 SETTABLEKS                       R36 R35 K29 ["HeaderRow"]
      339 SETTABLEKS                       R29 R35 K44 ["PropertyPopover"]
      341 CALL                             R32 3 -1
      342 RETURN                           R32 -1
      343 JUMPIFNOTEQKNIL                  R16 ; [+91]
      345 GETTABLEKS                       R32 R5 K9 ["Keycode"]
      347 LENGTH                           R31 R32
      348 JUMPIFNOTEQKN                    R31 K43 [0] ; [+9]
      350 GETTABLEKS                       R32 R5 K10 ["Composite"]
      352 LENGTH                           R31 R32
      353 LOADN                            R32 1
      354 JUMPIFNOTLE                      R31 R32 ; [+3]
      356 JUMPIFEQKNIL                     R22 ; [+3]
      358 JUMPIFNOTEQKS                    R22 K10 ["Composite"] ; [+76]
      360 GETTABLEKS                       R33 R5 K10 ["Composite"]
      362 LENGTH                           R32 R33
      363 LOADN                            R33 0
      364 JUMPIFNOTLT                      R33 R32 ; [+5]
      366 GETTABLEKS                       R32 R5 K10 ["Composite"]
      368 GETTABLEN                        R31 R32 1
      369 JUMP                             ; [+2]
      370 NEWTABLE                         R31 0 0
      372 GETUPVAL                         R32 0
      373 GETTABLEKS                       R32 R32 K14 ["createElement"]
      375 GETUPVAL                         R33 20
      376 DUPTABLE                         R34 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      377 GETTABLEKS                       R35 R0 K21 ["LayoutOrder"]
      379 SETTABLEKS                       R35 R34 K21 ["LayoutOrder"]
      381 LOADK                            R35 K26 ["action-%*"]
      382 GETTABLEKS                       R37 R4 K27 ["name"]
      384 NAMECALL                         R35 R35 K28 ["format"]
      386 CALL                             R35 2 1
      387 SETTABLEKS                       R35 R34 K24 ["testId"]
      389 DUPTABLE                         R35 K45 [{"HeaderRow", "PropertyPopover"}]
      390 GETUPVAL                         R36 0
      391 GETTABLEKS                       R36 R36 K14 ["createElement"]
      393 GETUPVAL                         R37 23
      394 DUPTABLE                         R38 K54 [{["action"], ["anchorRef"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["disabled"], ["context"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingCreateCommand"], ["onBindingEditCommand"], ["scriptableBinding"], ["validBindingsBySchema"]}]
      395 SETTABLEKS                       R4 R38 K37 ["action"]
      397 SETTABLEKS                       R10 R38 K15 ["anchorRef"]
      399 SETTABLEKS                       R31 R38 K31 ["bindings"]
      401 SETTABLEKS                       R15 R38 K48 ["createMenu"]
      403 SETTABLEKS                       R9 R38 K39 ["disabled"]
      405 GETTABLEKS                       R39 R0 K4 ["context"]
      407 SETTABLEKS                       R39 R38 K4 ["context"]
      409 MOVE                             R39 R30
      410 CALL                             R39 0 1
      411 SETTABLEKS                       R39 R38 K21 ["LayoutOrder"]
      413 GETTABLEKS                       R39 R4 K27 ["name"]
      415 SETTABLEKS                       R39 R38 K27 ["name"]
      417 SETTABLEKS                       R17 R38 K50 ["onBindingCreateCommand"]
      419 NEWCLOSURE                       R39 P6
      420 CAPTURE                          VAL R27
      421 CAPTURE                          VAL R31
      422 SETTABLEKS                       R39 R38 K51 ["onBindingEditCommand"]
      424 SETTABLEKS                       R13 R38 K52 ["scriptableBinding"]
      426 SETTABLEKS                       R24 R38 K53 ["validBindingsBySchema"]
      428 CALL                             R36 2 1
      429 SETTABLEKS                       R36 R35 K29 ["HeaderRow"]
      431 SETTABLEKS                       R29 R35 K44 ["PropertyPopover"]
      433 CALL                             R32 3 -1
      434 RETURN                           R32 -1
      435 DUPTABLE                         R31 K57 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite", "PropertyPopover"}]
      436 GETUPVAL                         R32 0
      437 GETTABLEKS                       R32 R32 K14 ["createElement"]
      439 GETUPVAL                         R33 21
      440 DUPTABLE                         R34 K58 [{"bindings", "LayoutOrder", "nodeProps"}]
      441 GETTABLEKS                       R35 R5 K36 ["All"]
      443 SETTABLEKS                       R35 R34 K31 ["bindings"]
      445 MOVE                             R35 R30
      446 CALL                             R35 0 1
      447 SETTABLEKS                       R35 R34 K21 ["LayoutOrder"]
      449 DUPTABLE                         R35 K64 [{["action"], ["anchorRef"], ["createMenu"], ["depth"] = 1, ["disabled"], ["editMenu"], ["expanded"], ["icon"] = "InputAction", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      450 SETTABLEKS                       R4 R35 K37 ["action"]
      452 SETTABLEKS                       R10 R35 K15 ["anchorRef"]
      454 SETTABLEKS                       R15 R35 K48 ["createMenu"]
      456 SETTABLEKS                       R9 R35 K39 ["disabled"]
      458 SETTABLEKS                       R26 R35 K59 ["editMenu"]
      460 SETTABLEKS                       R20 R35 K60 ["expanded"]
      462 GETTABLEKS                       R36 R4 K27 ["name"]
      464 SETTABLEKS                       R36 R35 K27 ["name"]
      466 SETTABLEKS                       R17 R35 K61 ["onCreateMenuItemSelected"]
      468 SETTABLEKS                       R27 R35 K62 ["onEditMenuItemSelected"]
      470 SETTABLEKS                       R21 R35 K63 ["setExpanded"]
      472 SETTABLEKS                       R35 R34 K33 ["nodeProps"]
      474 CALL                             R32 2 1
      475 SETTABLEKS                       R32 R31 K29 ["HeaderRow"]
      477 LOADB                            R32 0
      478 JUMPIFNOTEQKS                    R16 K9 ["Keycode"] ; [+39]
      480 GETUPVAL                         R32 0
      481 GETTABLEKS                       R32 R32 K14 ["createElement"]
      483 GETUPVAL                         R33 22
      484 DUPTABLE                         R34 K67 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      485 SETTABLEKS                       R4 R34 K37 ["action"]
      487 NEWTABLE                         R35 0 0
      489 SETTABLEKS                       R35 R34 K31 ["bindings"]
      491 SETTABLEKS                       R9 R34 K39 ["disabled"]
      493 GETTABLEKS                       R35 R0 K4 ["context"]
      495 SETTABLEKS                       R35 R34 K4 ["context"]
      497 GETTABLEKS                       R37 R5 K9 ["Keycode"]
      499 LENGTH                           R36 R37
      500 ADDK                             R35 R36 K32 [1]
      501 SETTABLEKS                       R35 R34 K49 ["index"]
      503 MOVE                             R35 R30
      504 CALL                             R35 0 1
      505 SETTABLEKS                       R35 R34 K21 ["LayoutOrder"]
      507 SETTABLEKS                       R18 R34 K65 ["onCreated"]
      509 SETTABLEKS                       R19 R34 K66 ["onCancelBinding"]
      511 NEWCLOSURE                       R35 P7
      512 CAPTURE                          VAL R27
      513 SETTABLEKS                       R35 R34 K51 ["onBindingEditCommand"]
      515 SETTABLEKS                       R24 R34 K53 ["validBindingsBySchema"]
      517 CALL                             R32 2 1
      518 SETTABLEKS                       R32 R31 K55 ["CreatingKeyBind"]
      520 LOADB                            R32 0
      521 JUMPIFNOTEQKS                    R16 K10 ["Composite"] ; [+39]
      523 GETUPVAL                         R32 0
      524 GETTABLEKS                       R32 R32 K14 ["createElement"]
      526 GETUPVAL                         R33 23
      527 DUPTABLE                         R34 K67 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      528 SETTABLEKS                       R4 R34 K37 ["action"]
      530 NEWTABLE                         R35 0 0
      532 SETTABLEKS                       R35 R34 K31 ["bindings"]
      534 SETTABLEKS                       R9 R34 K39 ["disabled"]
      536 GETTABLEKS                       R35 R0 K4 ["context"]
      538 SETTABLEKS                       R35 R34 K4 ["context"]
      540 GETTABLEKS                       R37 R5 K10 ["Composite"]
      542 LENGTH                           R36 R37
      543 ADDK                             R35 R36 K32 [1]
      544 SETTABLEKS                       R35 R34 K49 ["index"]
      546 MOVE                             R35 R30
      547 CALL                             R35 0 1
      548 SETTABLEKS                       R35 R34 K21 ["LayoutOrder"]
      550 SETTABLEKS                       R18 R34 K65 ["onCreated"]
      552 SETTABLEKS                       R19 R34 K66 ["onCancelBinding"]
      554 NEWCLOSURE                       R35 P8
      555 CAPTURE                          VAL R27
      556 SETTABLEKS                       R35 R34 K51 ["onBindingEditCommand"]
      558 SETTABLEKS                       R24 R34 K53 ["validBindingsBySchema"]
      560 CALL                             R32 2 1
      561 SETTABLEKS                       R32 R31 K56 ["CreatingComposite"]
      563 SETTABLEKS                       R29 R31 K44 ["PropertyPopover"]
      565 JUMPIFNOT                        R20 ; [+106]
      566 GETTABLEKS                       R32 R5 K9 ["Keycode"]
      568 LOADNIL                          R33
      569 LOADNIL                          R34
      570 FORGPREP                         R32
      571 LOADK                            R37 K68 ["Keycode_%*"]
      572 MOVE                             R39 R35
      573 NAMECALL                         R37 R37 K28 ["format"]
      575 CALL                             R37 2 1
      576 GETUPVAL                         R38 0
      577 GETTABLEKS                       R38 R38 K14 ["createElement"]
      579 GETUPVAL                         R39 22
      580 DUPTABLE                         R40 K70 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      581 SETTABLEKS                       R4 R40 K37 ["action"]
      583 SETTABLEKS                       R36 R40 K31 ["bindings"]
      585 SETTABLEKS                       R9 R40 K39 ["disabled"]
      587 GETTABLEKS                       R41 R0 K4 ["context"]
      589 SETTABLEKS                       R41 R40 K4 ["context"]
      591 SETTABLEKS                       R35 R40 K49 ["index"]
      593 MOVE                             R41 R30
      594 CALL                             R41 0 1
      595 SETTABLEKS                       R41 R40 K21 ["LayoutOrder"]
      597 NEWCLOSURE                       R41 P9
      598 CAPTURE                          VAL R27
      599 CAPTURE                          VAL R36
      600 SETTABLEKS                       R41 R40 K51 ["onBindingEditCommand"]
      602 LOADN                            R42 1
      603 JUMPIFNOTLT                      R42 R35 ; [+6]
      605 GETTABLEKS                       R42 R5 K9 ["Keycode"]
      607 SUBK                             R43 R35 K32 [1]
      608 GETTABLE                         R41 R42 R43
      609 JUMP                             ; [+1]
      610 LOADNIL                          R41
      611 SETTABLEKS                       R41 R40 K69 ["previousBindings"]
      613 SETTABLEKS                       R24 R40 K53 ["validBindingsBySchema"]
      615 CALL                             R38 2 1
      616 SETTABLE                         R38 R31 R37
      617 FORGLOOP                         R32 2 ; [-47]
      619 GETTABLEKS                       R32 R5 K10 ["Composite"]
      621 LOADNIL                          R33
      622 LOADNIL                          R34
      623 FORGPREP                         R32
      624 LOADK                            R37 K71 ["Composite_%*"]
      625 MOVE                             R39 R35
      626 NAMECALL                         R37 R37 K28 ["format"]
      628 CALL                             R37 2 1
      629 GETUPVAL                         R38 0
      630 GETTABLEKS                       R38 R38 K14 ["createElement"]
      632 GETUPVAL                         R39 23
      633 DUPTABLE                         R40 K70 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      634 SETTABLEKS                       R4 R40 K37 ["action"]
      636 SETTABLEKS                       R36 R40 K31 ["bindings"]
      638 SETTABLEKS                       R9 R40 K39 ["disabled"]
      640 GETTABLEKS                       R41 R0 K4 ["context"]
      642 SETTABLEKS                       R41 R40 K4 ["context"]
      644 SETTABLEKS                       R35 R40 K49 ["index"]
      646 MOVE                             R41 R30
      647 CALL                             R41 0 1
      648 SETTABLEKS                       R41 R40 K21 ["LayoutOrder"]
      650 NEWCLOSURE                       R41 P10
      651 CAPTURE                          VAL R27
      652 CAPTURE                          VAL R36
      653 SETTABLEKS                       R41 R40 K51 ["onBindingEditCommand"]
      655 LOADN                            R42 1
      656 JUMPIFNOTLT                      R42 R35 ; [+6]
      658 GETTABLEKS                       R42 R5 K10 ["Composite"]
      660 SUBK                             R43 R35 K32 [1]
      661 GETTABLE                         R41 R42 R43
      662 JUMP                             ; [+1]
      663 LOADNIL                          R41
      664 SETTABLEKS                       R41 R40 K69 ["previousBindings"]
      666 SETTABLEKS                       R24 R40 K53 ["validBindingsBySchema"]
      668 CALL                             R38 2 1
      669 SETTABLE                         R38 R31 R37
      670 FORGLOOP                         R32 2 ; [-47]
      672 GETUPVAL                         R32 0
      673 GETTABLEKS                       R32 R32 K14 ["createElement"]
      675 GETUPVAL                         R33 20
      676 DUPTABLE                         R34 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      677 GETTABLEKS                       R35 R0 K21 ["LayoutOrder"]
      679 SETTABLEKS                       R35 R34 K21 ["LayoutOrder"]
      681 LOADK                            R35 K26 ["action-%*"]
      682 GETTABLEKS                       R37 R4 K27 ["name"]
      684 NAMECALL                         R35 R35 K28 ["format"]
      686 CALL                             R35 2 1
      687 SETTABLEKS                       R35 R34 K24 ["testId"]
      689 MOVE                             R35 R31
      690 CALL                             R32 3 -1
      691 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETTABLEKS                       R6 R3 K13 ["View"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K14 ["Src"]
       45 GETTABLEKS                       R8 R8 K11 ["Contexts"]
       47 GETTABLEKS                       R8 R8 K15 ["InputConfiguration"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K14 ["Src"]
       54 GETTABLEKS                       R9 R9 K11 ["Contexts"]
       56 GETTABLEKS                       R9 R9 K16 ["Telemetry"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K14 ["Src"]
       63 GETTABLEKS                       R10 R10 K17 ["Components"]
       65 GETTABLEKS                       R10 R10 K18 ["Table"]
       67 GETTABLEKS                       R10 R10 K19 ["Row"]
       69 GETTABLEKS                       R10 R10 K20 ["Summary"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K14 ["Src"]
       76 GETTABLEKS                       R11 R11 K17 ["Components"]
       78 GETTABLEKS                       R11 R11 K18 ["Table"]
       80 GETTABLEKS                       R11 R11 K21 ["CompositeBinding"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K14 ["Src"]
       87 GETTABLEKS                       R12 R12 K17 ["Components"]
       89 GETTABLEKS                       R12 R12 K18 ["Table"]
       91 GETTABLEKS                       R12 R12 K22 ["KeycodeBinding"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K14 ["Src"]
       98 GETTABLEKS                       R13 R13 K17 ["Components"]
      100 GETTABLEKS                       R13 R13 K23 ["Property"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K14 ["Src"]
      107 GETTABLEKS                       R14 R14 K24 ["Types"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K14 ["Src"]
      114 GETTABLEKS                       R15 R15 K25 ["Util"]
      116 GETTABLEKS                       R15 R15 K26 ["getSchemas"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K14 ["Src"]
      123 GETTABLEKS                       R16 R16 K25 ["Util"]
      125 GETTABLEKS                       R16 R16 K27 ["Menus"]
      127 GETTABLEKS                       R16 R16 K28 ["getSummaryMenu"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R17 R0 K14 ["Src"]
      134 GETTABLEKS                       R17 R17 K25 ["Util"]
      136 GETTABLEKS                       R17 R17 K29 ["Binding"]
      138 GETTABLEKS                       R17 R17 K30 ["getValidBindingsBySchema"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K5 [require]
      143 GETTABLEKS                       R18 R0 K14 ["Src"]
      145 GETTABLEKS                       R18 R18 K31 ["Hooks"]
      147 GETTABLEKS                       R18 R18 K32 ["Action"]
      149 GETTABLEKS                       R18 R18 K33 ["useAction"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R19 R0 K14 ["Src"]
      156 GETTABLEKS                       R19 R19 K31 ["Hooks"]
      158 GETTABLEKS                       R19 R19 K32 ["Action"]
      160 GETTABLEKS                       R19 R19 K34 ["useActionState"]
      162 CALL                             R18 1 1
      163 GETIMPORT                        R19 K5 [require]
      165 GETTABLEKS                       R20 R0 K14 ["Src"]
      167 GETTABLEKS                       R20 R20 K31 ["Hooks"]
      169 GETTABLEKS                       R20 R20 K29 ["Binding"]
      171 GETTABLEKS                       R20 R20 K35 ["useBindings"]
      173 CALL                             R19 1 1
      174 GETIMPORT                        R20 K5 [require]
      176 GETTABLEKS                       R21 R0 K14 ["Src"]
      178 GETTABLEKS                       R21 R21 K31 ["Hooks"]
      180 GETTABLEKS                       R21 R21 K29 ["Binding"]
      182 GETTABLEKS                       R21 R21 K36 ["useCreateBinding"]
      184 CALL                             R20 1 1
      185 GETIMPORT                        R21 K5 [require]
      187 GETTABLEKS                       R22 R0 K14 ["Src"]
      189 GETTABLEKS                       R22 R22 K31 ["Hooks"]
      191 GETTABLEKS                       R22 R22 K37 ["useExpanded"]
      193 CALL                             R21 1 1
      194 GETIMPORT                        R22 K5 [require]
      196 GETTABLEKS                       R23 R0 K14 ["Src"]
      198 GETTABLEKS                       R23 R23 K31 ["Hooks"]
      200 GETTABLEKS                       R23 R23 K32 ["Action"]
      202 GETTABLEKS                       R23 R23 K38 ["useScriptableBinding"]
      204 CALL                             R22 1 1
      205 GETIMPORT                        R23 K5 [require]
      207 GETTABLEKS                       R24 R0 K14 ["Src"]
      209 GETTABLEKS                       R24 R24 K25 ["Util"]
      211 GETTABLEKS                       R24 R24 K39 ["Constants"]
      213 GETTABLEKS                       R24 R24 K40 ["MenuIdentifiers"]
      215 CALL                             R23 1 1
      216 GETTABLEKS                       R24 R0 K14 ["Src"]
      218 GETTABLEKS                       R24 R24 K41 ["Flags"]
      220 GETIMPORT                        R25 K5 [require]
      222 GETTABLEKS                       R26 R24 K42 ["getFFlagIAMBooleanProperties"]
      224 CALL                             R25 1 1
      225 GETIMPORT                        R26 K5 [require]
      227 GETTABLEKS                       R27 R24 K43 ["getFFlagIAMNodePropertyMenu"]
      229 CALL                             R26 1 1
      230 GETIMPORT                        R27 K5 [require]
      232 GETTABLEKS                       R28 R24 K44 ["getFFlagIAMPlayerScripts"]
      234 CALL                             R27 1 1
      235 GETIMPORT                        R28 K5 [require]
      237 GETTABLEKS                       R29 R24 K45 ["getFFlagIAMBindingMenu"]
      239 CALL                             R28 1 1
      240 DUPCLOSURE                       R29 K46 [PROTO_11]
      241 CAPTURE                          VAL R1
      242 CAPTURE                          VAL R7
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R8
      245 CAPTURE                          VAL R17
      246 CAPTURE                          VAL R19
      247 CAPTURE                          VAL R27
      248 CAPTURE                          VAL R25
      249 CAPTURE                          VAL R22
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R20
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R16
      254 CAPTURE                          VAL R15
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R23
      257 CAPTURE                          VAL R14
      258 CAPTURE                          VAL R26
      259 CAPTURE                          VAL R28
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R6
      262 CAPTURE                          VAL R9
      263 CAPTURE                          VAL R11
      264 CAPTURE                          VAL R10
      265 RETURN                           R29 1
