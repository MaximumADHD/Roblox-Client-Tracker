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
        2 JUMPIFNOT                        R2 ; [+83]
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
       54 JUMPIFEQ                         R0 R4 ; [+8]
       56 GETUPVAL                         R4 3
       57 CALL                             R4 0 1
       58 JUMPIFNOT                        R4 ; [+27]
       59 GETIMPORT                        R4 K11 [Enum.InputActionType.ViewportPosition]
       61 JUMPIFNOTEQ                      R0 R4 ; [+24]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K12 ["Composite"]
       66 LOADNIL                          R5
       67 LOADNIL                          R6
       68 FORGPREP                         R4
       69 MOVE                             R9 R8
       70 LOADNIL                          R10
       71 LOADNIL                          R11
       72 FORGPREP                         R9
       73 GETUPVAL                         R14 2
       74 GETTABLEKS                       R14 R14 K8 ["updateBinding"]
       76 GETTABLEKS                       R15 R13 K9 ["uuid"]
       78 LOADNIL                          R16
       79 MOVE                             R17 R1
       80 CALL                             R14 3 0
       81 LOADB                            R1 1
       82 FORGLOOP                         R9 2 ; [-10]
       84 FORGLOOP                         R4 2 ; [-16]
       86 RETURN                           R1 1

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
       11 CALL                             R0 4 -1
       12 RETURN                           R0 -1

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
      123 GETUPVAL                         R2 0
      124 GETTABLEKS                       R2 R2 K18 ["DUPLICATE"]
      126 JUMPIFNOTEQ                      R0 R2 ; [+12]
      128 GETUPVAL                         R2 8
      129 CALL                             R2 0 1
      130 JUMPIFNOT                        R2 ; [+8]
      131 GETUPVAL                         R2 5
      132 GETTABLEKS                       R2 R2 K19 ["duplicateAction"]
      134 GETUPVAL                         R3 2
      135 GETTABLEKS                       R3 R3 K9 ["uuid"]
      137 CALL                             R2 1 0
      138 RETURN                           R0 0
      139 GETUPVAL                         R2 0
      140 GETTABLEKS                       R2 R2 K20 ["EDIT_ACTION_BOOL"]
      142 JUMPIFNOTEQ                      R0 R2 ; [+27]
      144 GETIMPORT                        R2 K24 [Enum.InputActionType.Bool]
      146 GETUPVAL                         R3 9
      147 MOVE                             R4 R2
      148 CALL                             R3 1 1
      149 GETUPVAL                         R4 5
      150 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      152 GETUPVAL                         R5 2
      153 GETTABLEKS                       R5 R5 K9 ["uuid"]
      155 DUPTABLE                         R6 K26 [{"type"}]
      156 SETTABLEKS                       R2 R6 K25 ["type"]
      158 MOVE                             R7 R3
      159 CALL                             R4 3 0
      160 GETUPVAL                         R4 10
      161 GETTABLEKS                       R4 R4 K27 ["countInputActionTypeSelected"]
      163 GETIMPORT                        R5 K24 [Enum.InputActionType.Bool]
      165 CALL                             R4 1 0
      166 GETUPVAL                         R4 6
      167 LOADK                            R5 K12 ["Keycode"]
      168 CALL                             R4 1 0
      169 RETURN                           R0 0
      170 GETUPVAL                         R2 0
      171 GETTABLEKS                       R2 R2 K28 ["EDIT_ACTION_DIRECTION1D"]
      173 JUMPIFNOTEQ                      R0 R2 ; [+24]
      175 GETIMPORT                        R2 K30 [Enum.InputActionType.Direction1D]
      177 GETUPVAL                         R3 9
      178 MOVE                             R4 R2
      179 CALL                             R3 1 1
      180 GETUPVAL                         R4 5
      181 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      183 GETUPVAL                         R5 2
      184 GETTABLEKS                       R5 R5 K9 ["uuid"]
      186 DUPTABLE                         R6 K26 [{"type"}]
      187 SETTABLEKS                       R2 R6 K25 ["type"]
      189 MOVE                             R7 R3
      190 CALL                             R4 3 0
      191 GETUPVAL                         R4 10
      192 GETTABLEKS                       R4 R4 K27 ["countInputActionTypeSelected"]
      194 GETIMPORT                        R5 K30 [Enum.InputActionType.Direction1D]
      196 CALL                             R4 1 0
      197 RETURN                           R0 0
      198 GETUPVAL                         R2 0
      199 GETTABLEKS                       R2 R2 K31 ["EDIT_ACTION_DIRECTION2D"]
      201 JUMPIFNOTEQ                      R0 R2 ; [+24]
      203 GETIMPORT                        R2 K33 [Enum.InputActionType.Direction2D]
      205 GETUPVAL                         R3 9
      206 MOVE                             R4 R2
      207 CALL                             R3 1 1
      208 GETUPVAL                         R4 5
      209 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      211 GETUPVAL                         R5 2
      212 GETTABLEKS                       R5 R5 K9 ["uuid"]
      214 DUPTABLE                         R6 K26 [{"type"}]
      215 SETTABLEKS                       R2 R6 K25 ["type"]
      217 MOVE                             R7 R3
      218 CALL                             R4 3 0
      219 GETUPVAL                         R4 10
      220 GETTABLEKS                       R4 R4 K27 ["countInputActionTypeSelected"]
      222 GETIMPORT                        R5 K33 [Enum.InputActionType.Direction2D]
      224 CALL                             R4 1 0
      225 RETURN                           R0 0
      226 GETUPVAL                         R2 0
      227 GETTABLEKS                       R2 R2 K34 ["EDIT_ACTION_DIRECTION3D"]
      229 JUMPIFNOTEQ                      R0 R2 ; [+24]
      231 GETIMPORT                        R2 K36 [Enum.InputActionType.Direction3D]
      233 GETUPVAL                         R3 9
      234 MOVE                             R4 R2
      235 CALL                             R3 1 1
      236 GETUPVAL                         R4 5
      237 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      239 GETUPVAL                         R5 2
      240 GETTABLEKS                       R5 R5 K9 ["uuid"]
      242 DUPTABLE                         R6 K26 [{"type"}]
      243 SETTABLEKS                       R2 R6 K25 ["type"]
      245 MOVE                             R7 R3
      246 CALL                             R4 3 0
      247 GETUPVAL                         R4 10
      248 GETTABLEKS                       R4 R4 K27 ["countInputActionTypeSelected"]
      250 GETIMPORT                        R5 K36 [Enum.InputActionType.Direction3D]
      252 CALL                             R4 1 0
      253 RETURN                           R0 0
      254 GETUPVAL                         R2 11
      255 CALL                             R2 0 1
      256 JUMPIFNOT                        R2 ; [+31]
      257 GETUPVAL                         R2 0
      258 GETTABLEKS                       R2 R2 K37 ["EDIT_ACTION_VIEWPORT_POSITION"]
      260 JUMPIFNOTEQ                      R0 R2 ; [+27]
      262 GETIMPORT                        R2 K39 [Enum.InputActionType.ViewportPosition]
      264 GETUPVAL                         R3 9
      265 MOVE                             R4 R2
      266 CALL                             R3 1 1
      267 GETUPVAL                         R4 5
      268 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      270 GETUPVAL                         R5 2
      271 GETTABLEKS                       R5 R5 K9 ["uuid"]
      273 DUPTABLE                         R6 K26 [{"type"}]
      274 SETTABLEKS                       R2 R6 K25 ["type"]
      276 MOVE                             R7 R3
      277 CALL                             R4 3 0
      278 GETUPVAL                         R4 10
      279 GETTABLEKS                       R4 R4 K27 ["countInputActionTypeSelected"]
      281 GETIMPORT                        R5 K39 [Enum.InputActionType.ViewportPosition]
      283 CALL                             R4 1 0
      284 GETUPVAL                         R4 6
      285 LOADK                            R5 K12 ["Keycode"]
      286 CALL                             R4 1 0
      287 RETURN                           R0 0
      288 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_10:
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
       40 NOT                              R8 R7
       41 JUMPIF                           R8 ; [+3]
       42 NOT                              R8 R6
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 GETUPVAL                         R10 7
       46 CALL                             R10 0 1
       47 JUMPIFNOT                        R10 ; [+4]
       48 GETUPVAL                         R9 8
       49 MOVE                             R10 R4
       50 CALL                             R9 1 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R9
       53 GETUPVAL                         R10 9
       54 JUMPIFNOT                        R4 ; [+3]
       55 GETTABLEKS                       R11 R4 K5 ["type"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R11
       59 CALL                             R10 1 5
       60 GETUPVAL                         R15 10
       61 GETTABLEKS                       R16 R0 K2 ["uuid"]
       63 JUMPIFNOT                        R5 ; [+16]
       64 LOADB                            R17 1
       65 GETTABLEKS                       R20 R5 K6 ["Keycode"]
       67 LENGTH                           R19 R20
       68 GETTABLEKS                       R21 R5 K7 ["Composite"]
       70 LENGTH                           R20 R21
       71 ADD                              R18 R19 R20
       72 LOADN                            R19 1
       73 JUMPIFLT                         R19 R18 ; [+7]
       75 JUMPIFNOTEQKNIL                  R11 ; [+2]
       77 LOADB                            R17 0 +1
       78 LOADB                            R17 1
       79 JUMP                             ; [+1]
       80 LOADB                            R17 0
       81 CALL                             R15 2 2
       82 GETUPVAL                         R17 0
       83 GETTABLEKS                       R17 R17 K8 ["useState"]
       85 LOADNIL                          R18
       86 CALL                             R17 1 2
       87 GETUPVAL                         R19 0
       88 GETTABLEKS                       R19 R19 K9 ["useMemo"]
       90 NEWCLOSURE                       R20 P0
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R4
       93 CAPTURE                          UPVAL U11
       94 NEWTABLE                         R21 0 2
       96 MOVE                             R22 R5
       97 MOVE                             R23 R4
       98 SETLIST                          R21 R22 2 [1]
      100 CALL                             R19 2 1
      101 GETUPVAL                         R20 0
      102 GETTABLEKS                       R20 R20 K10 ["useCallback"]
      104 NEWCLOSURE                       R21 P1
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R1
      108 CAPTURE                          UPVAL U12
      109 NEWTABLE                         R22 0 3
      111 MOVE                             R23 R4
      112 MOVE                             R24 R5
      113 MOVE                             R25 R1
      114 SETLIST                          R22 R23 3 [1]
      116 CALL                             R20 2 1
      117 GETUPVAL                         R21 0
      118 GETTABLEKS                       R21 R21 K9 ["useMemo"]
      120 NEWCLOSURE                       R22 P2
      121 CAPTURE                          UPVAL U13
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R7
      126 NEWTABLE                         R23 0 4
      128 MOVE                             R24 R2
      129 MOVE                             R25 R4
      130 MOVE                             R26 R6
      131 MOVE                             R27 R7
      132 SETLIST                          R23 R24 4 [1]
      134 CALL                             R21 2 1
      135 GETUPVAL                         R22 14
      136 GETTABLEKS                       R22 R22 K11 ["useEventCallback"]
      138 NEWCLOSURE                       R23 P3
      139 CAPTURE                          UPVAL U15
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R5
      143 CAPTURE                          UPVAL U16
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R18
      146 CAPTURE                          UPVAL U6
      147 CAPTURE                          UPVAL U17
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R3
      150 CAPTURE                          UPVAL U12
      151 CALL                             R22 1 1
      152 GETUPVAL                         R23 14
      153 GETTABLEKS                       R23 R23 K12 ["createNextOrder"]
      155 CALL                             R23 0 1
      156 JUMPIFEQKNIL                     R4 ; [+3]
      158 JUMPIFNOTEQKNIL                  R5 ; [+3]
      160 LOADNIL                          R24
      161 RETURN                           R24 1
      162 GETUPVAL                         R24 7
      163 CALL                             R24 0 1
      164 JUMPIFNOT                        R24 ; [+46]
      165 JUMPIFNOT                        R9 ; [+45]
      166 GETUPVAL                         R24 0
      167 GETTABLEKS                       R24 R24 K13 ["createElement"]
      169 GETUPVAL                         R25 18
      170 DUPTABLE                         R26 K18 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      171 GETTABLEKS                       R27 R0 K14 ["LayoutOrder"]
      173 SETTABLEKS                       R27 R26 K14 ["LayoutOrder"]
      175 LOADK                            R27 K19 ["action-%*"]
      176 GETTABLEKS                       R29 R4 K20 ["name"]
      178 NAMECALL                         R27 R27 K21 ["format"]
      180 CALL                             R27 2 1
      181 SETTABLEKS                       R27 R26 K17 ["testId"]
      183 DUPTABLE                         R27 K23 [{"HeaderRow"}]
      184 GETUPVAL                         R28 0
      185 GETTABLEKS                       R28 R28 K13 ["createElement"]
      187 GETUPVAL                         R29 19
      188 DUPTABLE                         R30 K28 [{["bindings"], ["LayoutOrder"] = 1, ["nodeProps"], ["stateString"]}]
      189 GETTABLEKS                       R31 R5 K29 ["All"]
      191 SETTABLEKS                       R31 R30 K24 ["bindings"]
      193 DUPTABLE                         R31 K35 [{["action"], ["depth"] = 1, ["disabled"], ["icon"] = "InputAction", ["name"]}]
      194 SETTABLEKS                       R4 R31 K30 ["action"]
      196 SETTABLEKS                       R8 R31 K32 ["disabled"]
      198 GETTABLEKS                       R32 R4 K20 ["name"]
      200 SETTABLEKS                       R32 R31 K20 ["name"]
      202 SETTABLEKS                       R31 R30 K26 ["nodeProps"]
      204 SETTABLEKS                       R9 R30 K27 ["stateString"]
      206 CALL                             R28 2 1
      207 SETTABLEKS                       R28 R27 K22 ["HeaderRow"]
      209 CALL                             R24 3 -1
      210 RETURN                           R24 -1
      211 JUMPIFNOTEQKNIL                  R11 ; [+79]
      213 GETTABLEKS                       R25 R5 K6 ["Keycode"]
      215 LENGTH                           R24 R25
      216 LOADN                            R25 1
      217 JUMPIFNOTLE                      R24 R25 ; [+8]
      219 GETTABLEKS                       R25 R5 K7 ["Composite"]
      221 LENGTH                           R24 R25
      222 JUMPIFNOTEQKN                    R24 K36 [0] ; [+3]
      224 JUMPIFEQKNIL                     R17 ; [+3]
      226 JUMPIFNOTEQKS                    R17 K6 ["Keycode"] ; [+64]
      228 GETTABLEKS                       R25 R5 K6 ["Keycode"]
      230 GETTABLEN                        R24 R25 1
      231 JUMPIF                           R24 ; [+2]
      232 NEWTABLE                         R24 0 0
      234 GETUPVAL                         R25 0
      235 GETTABLEKS                       R25 R25 K13 ["createElement"]
      237 GETUPVAL                         R26 18
      238 DUPTABLE                         R27 K18 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      239 GETTABLEKS                       R28 R0 K14 ["LayoutOrder"]
      241 SETTABLEKS                       R28 R27 K14 ["LayoutOrder"]
      243 LOADK                            R28 K19 ["action-%*"]
      244 GETTABLEKS                       R30 R4 K20 ["name"]
      246 NAMECALL                         R28 R28 K21 ["format"]
      248 CALL                             R28 2 1
      249 SETTABLEKS                       R28 R27 K17 ["testId"]
      251 DUPTABLE                         R28 K23 [{"HeaderRow"}]
      252 GETUPVAL                         R29 0
      253 GETTABLEKS                       R29 R29 K13 ["createElement"]
      255 GETUPVAL                         R30 20
      256 DUPTABLE                         R31 K44 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["disabled"], ["context"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingCreateCommand"], ["onBindingEditCommand"], ["validBindingsBySchema"]}]
      257 SETTABLEKS                       R4 R31 K30 ["action"]
      259 SETTABLEKS                       R24 R31 K24 ["bindings"]
      261 SETTABLEKS                       R10 R31 K39 ["createMenu"]
      263 SETTABLEKS                       R8 R31 K32 ["disabled"]
      265 GETTABLEKS                       R32 R0 K4 ["context"]
      267 SETTABLEKS                       R32 R31 K4 ["context"]
      269 MOVE                             R32 R23
      270 CALL                             R32 0 1
      271 SETTABLEKS                       R32 R31 K14 ["LayoutOrder"]
      273 GETTABLEKS                       R32 R4 K20 ["name"]
      275 SETTABLEKS                       R32 R31 K20 ["name"]
      277 SETTABLEKS                       R12 R31 K41 ["onBindingCreateCommand"]
      279 NEWCLOSURE                       R32 P4
      280 CAPTURE                          VAL R22
      281 CAPTURE                          VAL R24
      282 SETTABLEKS                       R32 R31 K42 ["onBindingEditCommand"]
      284 SETTABLEKS                       R19 R31 K43 ["validBindingsBySchema"]
      286 CALL                             R29 2 1
      287 SETTABLEKS                       R29 R28 K22 ["HeaderRow"]
      289 CALL                             R25 3 -1
      290 RETURN                           R25 -1
      291 JUMPIFNOTEQKNIL                  R11 ; [+85]
      293 GETTABLEKS                       R25 R5 K6 ["Keycode"]
      295 LENGTH                           R24 R25
      296 JUMPIFNOTEQKN                    R24 K36 [0] ; [+9]
      298 GETTABLEKS                       R25 R5 K7 ["Composite"]
      300 LENGTH                           R24 R25
      301 LOADN                            R25 1
      302 JUMPIFNOTLE                      R24 R25 ; [+3]
      304 JUMPIFEQKNIL                     R17 ; [+3]
      306 JUMPIFNOTEQKS                    R17 K7 ["Composite"] ; [+70]
      308 GETTABLEKS                       R26 R5 K7 ["Composite"]
      310 LENGTH                           R25 R26
      311 LOADN                            R26 0
      312 JUMPIFNOTLT                      R26 R25 ; [+5]
      314 GETTABLEKS                       R25 R5 K7 ["Composite"]
      316 GETTABLEN                        R24 R25 1
      317 JUMP                             ; [+2]
      318 NEWTABLE                         R24 0 0
      320 GETUPVAL                         R25 0
      321 GETTABLEKS                       R25 R25 K13 ["createElement"]
      323 GETUPVAL                         R26 18
      324 DUPTABLE                         R27 K18 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      325 GETTABLEKS                       R28 R0 K14 ["LayoutOrder"]
      327 SETTABLEKS                       R28 R27 K14 ["LayoutOrder"]
      329 LOADK                            R28 K19 ["action-%*"]
      330 GETTABLEKS                       R30 R4 K20 ["name"]
      332 NAMECALL                         R28 R28 K21 ["format"]
      334 CALL                             R28 2 1
      335 SETTABLEKS                       R28 R27 K17 ["testId"]
      337 DUPTABLE                         R28 K23 [{"HeaderRow"}]
      338 GETUPVAL                         R29 0
      339 GETTABLEKS                       R29 R29 K13 ["createElement"]
      341 GETUPVAL                         R30 21
      342 DUPTABLE                         R31 K44 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["disabled"], ["context"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingCreateCommand"], ["onBindingEditCommand"], ["validBindingsBySchema"]}]
      343 SETTABLEKS                       R4 R31 K30 ["action"]
      345 SETTABLEKS                       R24 R31 K24 ["bindings"]
      347 SETTABLEKS                       R10 R31 K39 ["createMenu"]
      349 SETTABLEKS                       R8 R31 K32 ["disabled"]
      351 GETTABLEKS                       R32 R0 K4 ["context"]
      353 SETTABLEKS                       R32 R31 K4 ["context"]
      355 MOVE                             R32 R23
      356 CALL                             R32 0 1
      357 SETTABLEKS                       R32 R31 K14 ["LayoutOrder"]
      359 GETTABLEKS                       R32 R4 K20 ["name"]
      361 SETTABLEKS                       R32 R31 K20 ["name"]
      363 SETTABLEKS                       R12 R31 K41 ["onBindingCreateCommand"]
      365 NEWCLOSURE                       R32 P5
      366 CAPTURE                          VAL R22
      367 CAPTURE                          VAL R24
      368 SETTABLEKS                       R32 R31 K42 ["onBindingEditCommand"]
      370 SETTABLEKS                       R19 R31 K43 ["validBindingsBySchema"]
      372 CALL                             R29 2 1
      373 SETTABLEKS                       R29 R28 K22 ["HeaderRow"]
      375 CALL                             R25 3 -1
      376 RETURN                           R25 -1
      377 DUPTABLE                         R24 K47 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite"}]
      378 GETUPVAL                         R25 0
      379 GETTABLEKS                       R25 R25 K13 ["createElement"]
      381 GETUPVAL                         R26 19
      382 DUPTABLE                         R27 K48 [{"bindings", "LayoutOrder", "nodeProps"}]
      383 GETTABLEKS                       R28 R5 K29 ["All"]
      385 SETTABLEKS                       R28 R27 K24 ["bindings"]
      387 MOVE                             R28 R23
      388 CALL                             R28 0 1
      389 SETTABLEKS                       R28 R27 K14 ["LayoutOrder"]
      391 DUPTABLE                         R28 K54 [{["action"], ["createMenu"], ["depth"] = 1, ["disabled"], ["editMenu"], ["expanded"], ["icon"] = "InputAction", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      392 SETTABLEKS                       R4 R28 K30 ["action"]
      394 SETTABLEKS                       R10 R28 K39 ["createMenu"]
      396 SETTABLEKS                       R8 R28 K32 ["disabled"]
      398 SETTABLEKS                       R21 R28 K49 ["editMenu"]
      400 SETTABLEKS                       R15 R28 K50 ["expanded"]
      402 GETTABLEKS                       R29 R4 K20 ["name"]
      404 SETTABLEKS                       R29 R28 K20 ["name"]
      406 SETTABLEKS                       R12 R28 K51 ["onCreateMenuItemSelected"]
      408 SETTABLEKS                       R22 R28 K52 ["onEditMenuItemSelected"]
      410 SETTABLEKS                       R16 R28 K53 ["setExpanded"]
      412 SETTABLEKS                       R28 R27 K26 ["nodeProps"]
      414 CALL                             R25 2 1
      415 SETTABLEKS                       R25 R24 K22 ["HeaderRow"]
      417 LOADB                            R25 0
      418 JUMPIFNOTEQKS                    R11 K6 ["Keycode"] ; [+39]
      420 GETUPVAL                         R25 0
      421 GETTABLEKS                       R25 R25 K13 ["createElement"]
      423 GETUPVAL                         R26 20
      424 DUPTABLE                         R27 K57 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      425 SETTABLEKS                       R4 R27 K30 ["action"]
      427 NEWTABLE                         R28 0 0
      429 SETTABLEKS                       R28 R27 K24 ["bindings"]
      431 SETTABLEKS                       R8 R27 K32 ["disabled"]
      433 GETTABLEKS                       R28 R0 K4 ["context"]
      435 SETTABLEKS                       R28 R27 K4 ["context"]
      437 GETTABLEKS                       R30 R5 K6 ["Keycode"]
      439 LENGTH                           R29 R30
      440 ADDK                             R28 R29 K25 [1]
      441 SETTABLEKS                       R28 R27 K40 ["index"]
      443 MOVE                             R28 R23
      444 CALL                             R28 0 1
      445 SETTABLEKS                       R28 R27 K14 ["LayoutOrder"]
      447 SETTABLEKS                       R13 R27 K55 ["onCreated"]
      449 SETTABLEKS                       R14 R27 K56 ["onCancelBinding"]
      451 NEWCLOSURE                       R28 P6
      452 CAPTURE                          VAL R22
      453 SETTABLEKS                       R28 R27 K42 ["onBindingEditCommand"]
      455 SETTABLEKS                       R19 R27 K43 ["validBindingsBySchema"]
      457 CALL                             R25 2 1
      458 SETTABLEKS                       R25 R24 K45 ["CreatingKeyBind"]
      460 LOADB                            R25 0
      461 JUMPIFNOTEQKS                    R11 K7 ["Composite"] ; [+39]
      463 GETUPVAL                         R25 0
      464 GETTABLEKS                       R25 R25 K13 ["createElement"]
      466 GETUPVAL                         R26 21
      467 DUPTABLE                         R27 K57 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      468 SETTABLEKS                       R4 R27 K30 ["action"]
      470 NEWTABLE                         R28 0 0
      472 SETTABLEKS                       R28 R27 K24 ["bindings"]
      474 SETTABLEKS                       R8 R27 K32 ["disabled"]
      476 GETTABLEKS                       R28 R0 K4 ["context"]
      478 SETTABLEKS                       R28 R27 K4 ["context"]
      480 GETTABLEKS                       R30 R5 K7 ["Composite"]
      482 LENGTH                           R29 R30
      483 ADDK                             R28 R29 K25 [1]
      484 SETTABLEKS                       R28 R27 K40 ["index"]
      486 MOVE                             R28 R23
      487 CALL                             R28 0 1
      488 SETTABLEKS                       R28 R27 K14 ["LayoutOrder"]
      490 SETTABLEKS                       R13 R27 K55 ["onCreated"]
      492 SETTABLEKS                       R14 R27 K56 ["onCancelBinding"]
      494 NEWCLOSURE                       R28 P7
      495 CAPTURE                          VAL R22
      496 SETTABLEKS                       R28 R27 K42 ["onBindingEditCommand"]
      498 SETTABLEKS                       R19 R27 K43 ["validBindingsBySchema"]
      500 CALL                             R25 2 1
      501 SETTABLEKS                       R25 R24 K46 ["CreatingComposite"]
      503 JUMPIFNOT                        R15 ; [+106]
      504 GETTABLEKS                       R25 R5 K6 ["Keycode"]
      506 LOADNIL                          R26
      507 LOADNIL                          R27
      508 FORGPREP                         R25
      509 LOADK                            R30 K58 ["Keycode_%*"]
      510 MOVE                             R32 R28
      511 NAMECALL                         R30 R30 K21 ["format"]
      513 CALL                             R30 2 1
      514 GETUPVAL                         R31 0
      515 GETTABLEKS                       R31 R31 K13 ["createElement"]
      517 GETUPVAL                         R32 20
      518 DUPTABLE                         R33 K60 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      519 SETTABLEKS                       R4 R33 K30 ["action"]
      521 SETTABLEKS                       R29 R33 K24 ["bindings"]
      523 SETTABLEKS                       R8 R33 K32 ["disabled"]
      525 GETTABLEKS                       R34 R0 K4 ["context"]
      527 SETTABLEKS                       R34 R33 K4 ["context"]
      529 SETTABLEKS                       R28 R33 K40 ["index"]
      531 MOVE                             R34 R23
      532 CALL                             R34 0 1
      533 SETTABLEKS                       R34 R33 K14 ["LayoutOrder"]
      535 NEWCLOSURE                       R34 P8
      536 CAPTURE                          VAL R22
      537 CAPTURE                          VAL R29
      538 SETTABLEKS                       R34 R33 K42 ["onBindingEditCommand"]
      540 LOADN                            R35 1
      541 JUMPIFNOTLT                      R35 R28 ; [+6]
      543 GETTABLEKS                       R35 R5 K6 ["Keycode"]
      545 SUBK                             R36 R28 K25 [1]
      546 GETTABLE                         R34 R35 R36
      547 JUMP                             ; [+1]
      548 LOADNIL                          R34
      549 SETTABLEKS                       R34 R33 K59 ["previousBindings"]
      551 SETTABLEKS                       R19 R33 K43 ["validBindingsBySchema"]
      553 CALL                             R31 2 1
      554 SETTABLE                         R31 R24 R30
      555 FORGLOOP                         R25 2 ; [-47]
      557 GETTABLEKS                       R25 R5 K7 ["Composite"]
      559 LOADNIL                          R26
      560 LOADNIL                          R27
      561 FORGPREP                         R25
      562 LOADK                            R30 K61 ["Composite_%*"]
      563 MOVE                             R32 R28
      564 NAMECALL                         R30 R30 K21 ["format"]
      566 CALL                             R30 2 1
      567 GETUPVAL                         R31 0
      568 GETTABLEKS                       R31 R31 K13 ["createElement"]
      570 GETUPVAL                         R32 21
      571 DUPTABLE                         R33 K60 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      572 SETTABLEKS                       R4 R33 K30 ["action"]
      574 SETTABLEKS                       R29 R33 K24 ["bindings"]
      576 SETTABLEKS                       R8 R33 K32 ["disabled"]
      578 GETTABLEKS                       R34 R0 K4 ["context"]
      580 SETTABLEKS                       R34 R33 K4 ["context"]
      582 SETTABLEKS                       R28 R33 K40 ["index"]
      584 MOVE                             R34 R23
      585 CALL                             R34 0 1
      586 SETTABLEKS                       R34 R33 K14 ["LayoutOrder"]
      588 NEWCLOSURE                       R34 P9
      589 CAPTURE                          VAL R22
      590 CAPTURE                          VAL R29
      591 SETTABLEKS                       R34 R33 K42 ["onBindingEditCommand"]
      593 LOADN                            R35 1
      594 JUMPIFNOTLT                      R35 R28 ; [+6]
      596 GETTABLEKS                       R35 R5 K7 ["Composite"]
      598 SUBK                             R36 R28 K25 [1]
      599 GETTABLE                         R34 R35 R36
      600 JUMP                             ; [+1]
      601 LOADNIL                          R34
      602 SETTABLEKS                       R34 R33 K59 ["previousBindings"]
      604 SETTABLEKS                       R19 R33 K43 ["validBindingsBySchema"]
      606 CALL                             R31 2 1
      607 SETTABLE                         R31 R24 R30
      608 FORGLOOP                         R25 2 ; [-47]
      610 GETUPVAL                         R25 0
      611 GETTABLEKS                       R25 R25 K13 ["createElement"]
      613 GETUPVAL                         R26 18
      614 DUPTABLE                         R27 K18 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      615 GETTABLEKS                       R28 R0 K14 ["LayoutOrder"]
      617 SETTABLEKS                       R28 R27 K14 ["LayoutOrder"]
      619 LOADK                            R28 K19 ["action-%*"]
      620 GETTABLEKS                       R30 R4 K20 ["name"]
      622 NAMECALL                         R28 R28 K21 ["format"]
      624 CALL                             R28 2 1
      625 SETTABLEKS                       R28 R27 K17 ["testId"]
      627 MOVE                             R28 R24
      628 CALL                             R25 3 -1
      629 RETURN                           R25 -1

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
       98 GETTABLEKS                       R13 R13 K23 ["Types"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K14 ["Src"]
      105 GETTABLEKS                       R14 R14 K24 ["Util"]
      107 GETTABLEKS                       R14 R14 K25 ["getSchemas"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K14 ["Src"]
      114 GETTABLEKS                       R15 R15 K24 ["Util"]
      116 GETTABLEKS                       R15 R15 K26 ["Menus"]
      118 GETTABLEKS                       R15 R15 K27 ["getSummaryMenu"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K14 ["Src"]
      125 GETTABLEKS                       R16 R16 K24 ["Util"]
      127 GETTABLEKS                       R16 R16 K28 ["Binding"]
      129 GETTABLEKS                       R16 R16 K29 ["getValidBindingsBySchema"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K5 [require]
      134 GETTABLEKS                       R17 R0 K14 ["Src"]
      136 GETTABLEKS                       R17 R17 K30 ["Hooks"]
      138 GETTABLEKS                       R17 R17 K31 ["Action"]
      140 GETTABLEKS                       R17 R17 K32 ["useAction"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K14 ["Src"]
      147 GETTABLEKS                       R18 R18 K30 ["Hooks"]
      149 GETTABLEKS                       R18 R18 K31 ["Action"]
      151 GETTABLEKS                       R18 R18 K33 ["useActionState"]
      153 CALL                             R17 1 1
      154 GETIMPORT                        R18 K5 [require]
      156 GETTABLEKS                       R19 R0 K14 ["Src"]
      158 GETTABLEKS                       R19 R19 K30 ["Hooks"]
      160 GETTABLEKS                       R19 R19 K28 ["Binding"]
      162 GETTABLEKS                       R19 R19 K34 ["useBindings"]
      164 CALL                             R18 1 1
      165 GETIMPORT                        R19 K5 [require]
      167 GETTABLEKS                       R20 R0 K14 ["Src"]
      169 GETTABLEKS                       R20 R20 K30 ["Hooks"]
      171 GETTABLEKS                       R20 R20 K28 ["Binding"]
      173 GETTABLEKS                       R20 R20 K35 ["useCreateBinding"]
      175 CALL                             R19 1 1
      176 GETIMPORT                        R20 K5 [require]
      178 GETTABLEKS                       R21 R0 K14 ["Src"]
      180 GETTABLEKS                       R21 R21 K30 ["Hooks"]
      182 GETTABLEKS                       R21 R21 K36 ["useExpanded"]
      184 CALL                             R20 1 1
      185 GETIMPORT                        R21 K5 [require]
      187 GETTABLEKS                       R22 R0 K14 ["Src"]
      189 GETTABLEKS                       R22 R22 K24 ["Util"]
      191 GETTABLEKS                       R22 R22 K37 ["Constants"]
      193 GETTABLEKS                       R22 R22 K38 ["MenuIdentifiers"]
      195 CALL                             R21 1 1
      196 GETTABLEKS                       R22 R0 K14 ["Src"]
      198 GETTABLEKS                       R22 R22 K39 ["Flags"]
      200 GETIMPORT                        R23 K5 [require]
      202 GETTABLEKS                       R24 R22 K40 ["getFFlagIAMBooleanProperties"]
      204 CALL                             R23 1 1
      205 GETIMPORT                        R24 K5 [require]
      207 GETTABLEKS                       R25 R22 K41 ["getFFlagIAMDuplicate"]
      209 CALL                             R24 1 1
      210 GETIMPORT                        R25 K5 [require]
      212 GETTABLEKS                       R26 R22 K42 ["getFFlagIAMLiveDebugging"]
      214 CALL                             R25 1 1
      215 GETIMPORT                        R26 K5 [require]
      217 GETTABLEKS                       R27 R22 K43 ["getFFlagIAMViewportPositionType"]
      219 CALL                             R26 1 1
      220 DUPCLOSURE                       R27 K44 [PROTO_10]
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R8
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R23
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R26
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R21
      237 CAPTURE                          VAL R13
      238 CAPTURE                          VAL R24
      239 CAPTURE                          VAL R6
      240 CAPTURE                          VAL R9
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R10
      243 RETURN                           R27 1
