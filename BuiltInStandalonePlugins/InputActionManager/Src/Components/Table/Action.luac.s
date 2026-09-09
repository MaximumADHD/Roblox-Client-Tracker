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
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

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
      100 GETUPVAL                         R2 0
      101 GETTABLEKS                       R2 R2 K15 ["DUPLICATE"]
      103 JUMPIFNOTEQ                      R0 R2 ; [+12]
      105 GETUPVAL                         R2 7
      106 CALL                             R2 0 1
      107 JUMPIFNOT                        R2 ; [+8]
      108 GETUPVAL                         R2 5
      109 GETTABLEKS                       R2 R2 K16 ["duplicateAction"]
      111 GETUPVAL                         R3 2
      112 GETTABLEKS                       R3 R3 K9 ["uuid"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0
      116 GETUPVAL                         R2 0
      117 GETTABLEKS                       R2 R2 K17 ["EDIT_ACTION_BOOL"]
      119 JUMPIFNOTEQ                      R0 R2 ; [+27]
      121 GETIMPORT                        R2 K21 [Enum.InputActionType.Bool]
      123 GETUPVAL                         R3 8
      124 MOVE                             R4 R2
      125 CALL                             R3 1 1
      126 GETUPVAL                         R4 5
      127 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      129 GETUPVAL                         R5 2
      130 GETTABLEKS                       R5 R5 K9 ["uuid"]
      132 DUPTABLE                         R6 K23 [{"type"}]
      133 SETTABLEKS                       R2 R6 K22 ["type"]
      135 MOVE                             R7 R3
      136 CALL                             R4 3 0
      137 GETUPVAL                         R4 9
      138 GETTABLEKS                       R4 R4 K24 ["countInputActionTypeSelected"]
      140 GETIMPORT                        R5 K21 [Enum.InputActionType.Bool]
      142 CALL                             R4 1 0
      143 GETUPVAL                         R4 6
      144 LOADK                            R5 K12 ["Keycode"]
      145 CALL                             R4 1 0
      146 RETURN                           R0 0
      147 GETUPVAL                         R2 0
      148 GETTABLEKS                       R2 R2 K25 ["EDIT_ACTION_DIRECTION1D"]
      150 JUMPIFNOTEQ                      R0 R2 ; [+24]
      152 GETIMPORT                        R2 K27 [Enum.InputActionType.Direction1D]
      154 GETUPVAL                         R3 8
      155 MOVE                             R4 R2
      156 CALL                             R3 1 1
      157 GETUPVAL                         R4 5
      158 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      160 GETUPVAL                         R5 2
      161 GETTABLEKS                       R5 R5 K9 ["uuid"]
      163 DUPTABLE                         R6 K23 [{"type"}]
      164 SETTABLEKS                       R2 R6 K22 ["type"]
      166 MOVE                             R7 R3
      167 CALL                             R4 3 0
      168 GETUPVAL                         R4 9
      169 GETTABLEKS                       R4 R4 K24 ["countInputActionTypeSelected"]
      171 GETIMPORT                        R5 K27 [Enum.InputActionType.Direction1D]
      173 CALL                             R4 1 0
      174 RETURN                           R0 0
      175 GETUPVAL                         R2 0
      176 GETTABLEKS                       R2 R2 K28 ["EDIT_ACTION_DIRECTION2D"]
      178 JUMPIFNOTEQ                      R0 R2 ; [+24]
      180 GETIMPORT                        R2 K30 [Enum.InputActionType.Direction2D]
      182 GETUPVAL                         R3 8
      183 MOVE                             R4 R2
      184 CALL                             R3 1 1
      185 GETUPVAL                         R4 5
      186 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      188 GETUPVAL                         R5 2
      189 GETTABLEKS                       R5 R5 K9 ["uuid"]
      191 DUPTABLE                         R6 K23 [{"type"}]
      192 SETTABLEKS                       R2 R6 K22 ["type"]
      194 MOVE                             R7 R3
      195 CALL                             R4 3 0
      196 GETUPVAL                         R4 9
      197 GETTABLEKS                       R4 R4 K24 ["countInputActionTypeSelected"]
      199 GETIMPORT                        R5 K30 [Enum.InputActionType.Direction2D]
      201 CALL                             R4 1 0
      202 RETURN                           R0 0
      203 GETUPVAL                         R2 0
      204 GETTABLEKS                       R2 R2 K31 ["EDIT_ACTION_DIRECTION3D"]
      206 JUMPIFNOTEQ                      R0 R2 ; [+24]
      208 GETIMPORT                        R2 K33 [Enum.InputActionType.Direction3D]
      210 GETUPVAL                         R3 8
      211 MOVE                             R4 R2
      212 CALL                             R3 1 1
      213 GETUPVAL                         R4 5
      214 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      216 GETUPVAL                         R5 2
      217 GETTABLEKS                       R5 R5 K9 ["uuid"]
      219 DUPTABLE                         R6 K23 [{"type"}]
      220 SETTABLEKS                       R2 R6 K22 ["type"]
      222 MOVE                             R7 R3
      223 CALL                             R4 3 0
      224 GETUPVAL                         R4 9
      225 GETTABLEKS                       R4 R4 K24 ["countInputActionTypeSelected"]
      227 GETIMPORT                        R5 K33 [Enum.InputActionType.Direction3D]
      229 CALL                             R4 1 0
      230 RETURN                           R0 0
      231 GETUPVAL                         R2 10
      232 CALL                             R2 0 1
      233 JUMPIFNOT                        R2 ; [+31]
      234 GETUPVAL                         R2 0
      235 GETTABLEKS                       R2 R2 K34 ["EDIT_ACTION_VIEWPORT_POSITION"]
      237 JUMPIFNOTEQ                      R0 R2 ; [+27]
      239 GETIMPORT                        R2 K36 [Enum.InputActionType.ViewportPosition]
      241 GETUPVAL                         R3 8
      242 MOVE                             R4 R2
      243 CALL                             R3 1 1
      244 GETUPVAL                         R4 5
      245 GETTABLEKS                       R4 R4 K14 ["updateAction"]
      247 GETUPVAL                         R5 2
      248 GETTABLEKS                       R5 R5 K9 ["uuid"]
      250 DUPTABLE                         R6 K23 [{"type"}]
      251 SETTABLEKS                       R2 R6 K22 ["type"]
      253 MOVE                             R7 R3
      254 CALL                             R4 3 0
      255 GETUPVAL                         R4 9
      256 GETTABLEKS                       R4 R4 K24 ["countInputActionTypeSelected"]
      258 GETIMPORT                        R5 K36 [Enum.InputActionType.ViewportPosition]
      260 CALL                             R4 1 0
      261 GETUPVAL                         R4 6
      262 LOADK                            R5 K12 ["Keycode"]
      263 CALL                             R4 1 0
      264 RETURN                           R0 0
      265 RETURN                           R0 0

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
       28 GETUPVAL                         R7 6
       29 CALL                             R7 0 1
       30 JUMPIFNOT                        R7 ; [+4]
       31 GETUPVAL                         R6 7
       32 MOVE                             R7 R4
       33 CALL                             R6 1 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R6
       36 GETUPVAL                         R7 8
       37 JUMPIFNOT                        R4 ; [+3]
       38 GETTABLEKS                       R8 R4 K3 ["type"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R8
       42 CALL                             R7 1 5
       43 GETUPVAL                         R12 9
       44 GETTABLEKS                       R13 R0 K2 ["uuid"]
       46 JUMPIFNOT                        R5 ; [+16]
       47 LOADB                            R14 1
       48 GETTABLEKS                       R17 R5 K4 ["Keycode"]
       50 LENGTH                           R16 R17
       51 GETTABLEKS                       R18 R5 K5 ["Composite"]
       53 LENGTH                           R17 R18
       54 ADD                              R15 R16 R17
       55 LOADN                            R16 1
       56 JUMPIFLT                         R16 R15 ; [+7]
       58 JUMPIFNOTEQKNIL                  R8 ; [+2]
       60 LOADB                            R14 0 +1
       61 LOADB                            R14 1
       62 JUMP                             ; [+1]
       63 LOADB                            R14 0
       64 CALL                             R12 2 2
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R14 R14 K6 ["useState"]
       68 LOADNIL                          R15
       69 CALL                             R14 1 2
       70 GETUPVAL                         R16 0
       71 GETTABLEKS                       R16 R16 K7 ["useMemo"]
       73 NEWCLOSURE                       R17 P0
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 CAPTURE                          UPVAL U10
       77 NEWTABLE                         R18 0 2
       79 MOVE                             R19 R5
       80 MOVE                             R20 R4
       81 SETLIST                          R18 R19 2 [1]
       83 CALL                             R16 2 1
       84 GETUPVAL                         R17 0
       85 GETTABLEKS                       R17 R17 K8 ["useCallback"]
       87 NEWCLOSURE                       R18 P1
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R1
       91 CAPTURE                          UPVAL U11
       92 NEWTABLE                         R19 0 3
       94 MOVE                             R20 R4
       95 MOVE                             R21 R5
       96 MOVE                             R22 R1
       97 SETLIST                          R19 R20 3 [1]
       99 CALL                             R17 2 1
      100 GETUPVAL                         R18 0
      101 GETTABLEKS                       R18 R18 K7 ["useMemo"]
      103 NEWCLOSURE                       R19 P2
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R4
      107 NEWTABLE                         R20 0 2
      109 MOVE                             R21 R2
      110 MOVE                             R22 R4
      111 SETLIST                          R20 R21 2 [1]
      113 CALL                             R18 2 1
      114 GETUPVAL                         R19 13
      115 GETTABLEKS                       R19 R19 K9 ["useEventCallback"]
      117 NEWCLOSURE                       R20 P3
      118 CAPTURE                          UPVAL U14
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R5
      122 CAPTURE                          UPVAL U15
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R15
      125 CAPTURE                          UPVAL U16
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R3
      128 CAPTURE                          UPVAL U11
      129 CALL                             R19 1 1
      130 GETUPVAL                         R20 13
      131 GETTABLEKS                       R20 R20 K10 ["createNextOrder"]
      133 CALL                             R20 0 1
      134 JUMPIFEQKNIL                     R4 ; [+3]
      136 JUMPIFNOTEQKNIL                  R5 ; [+3]
      138 LOADNIL                          R21
      139 RETURN                           R21 1
      140 GETUPVAL                         R21 6
      141 CALL                             R21 0 1
      142 JUMPIFNOT                        R21 ; [+45]
      143 JUMPIFNOT                        R6 ; [+44]
      144 GETUPVAL                         R21 0
      145 GETTABLEKS                       R21 R21 K11 ["createElement"]
      147 GETUPVAL                         R22 17
      148 DUPTABLE                         R23 K16 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      149 GETTABLEKS                       R24 R0 K12 ["LayoutOrder"]
      151 SETTABLEKS                       R24 R23 K12 ["LayoutOrder"]
      153 LOADK                            R25 K17 ["action-%*"]
      154 GETTABLEKS                       R27 R4 K18 ["name"]
      156 NAMECALL                         R25 R25 K19 ["format"]
      158 CALL                             R25 2 1
      159 MOVE                             R24 R25
      160 SETTABLEKS                       R24 R23 K15 ["testId"]
      162 DUPTABLE                         R24 K21 [{"HeaderRow"}]
      163 GETUPVAL                         R25 0
      164 GETTABLEKS                       R25 R25 K11 ["createElement"]
      166 GETUPVAL                         R26 18
      167 DUPTABLE                         R27 K26 [{["bindings"], ["LayoutOrder"] = 1, ["nodeProps"], ["stateString"]}]
      168 GETTABLEKS                       R28 R5 K27 ["All"]
      170 SETTABLEKS                       R28 R27 K22 ["bindings"]
      172 DUPTABLE                         R28 K32 [{["action"], ["depth"] = 1, ["icon"] = "InputAction", ["name"]}]
      173 SETTABLEKS                       R4 R28 K28 ["action"]
      175 GETTABLEKS                       R29 R4 K18 ["name"]
      177 SETTABLEKS                       R29 R28 K18 ["name"]
      179 SETTABLEKS                       R28 R27 K24 ["nodeProps"]
      181 SETTABLEKS                       R6 R27 K25 ["stateString"]
      183 CALL                             R25 2 1
      184 SETTABLEKS                       R25 R24 K20 ["HeaderRow"]
      186 CALL                             R21 3 -1
      187 RETURN                           R21 -1
      188 JUMPIFNOTEQKNIL                  R8 ; [+74]
      190 GETTABLEKS                       R22 R5 K4 ["Keycode"]
      192 LENGTH                           R21 R22
      193 LOADN                            R22 1
      194 JUMPIFNOTLE                      R21 R22 ; [+8]
      196 GETTABLEKS                       R22 R5 K5 ["Composite"]
      198 LENGTH                           R21 R22
      199 JUMPIFNOTEQKN                    R21 K33 [0] ; [+3]
      201 JUMPIFEQKNIL                     R14 ; [+3]
      203 JUMPIFNOTEQKS                    R14 K4 ["Keycode"] ; [+59]
      205 GETTABLEKS                       R22 R5 K4 ["Keycode"]
      207 GETTABLEN                        R21 R22 1
      208 JUMPIF                           R21 ; [+2]
      209 NEWTABLE                         R21 0 0
      211 GETUPVAL                         R22 0
      212 GETTABLEKS                       R22 R22 K11 ["createElement"]
      214 GETUPVAL                         R23 17
      215 DUPTABLE                         R24 K16 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      216 GETTABLEKS                       R25 R0 K12 ["LayoutOrder"]
      218 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      220 LOADK                            R26 K17 ["action-%*"]
      221 GETTABLEKS                       R28 R4 K18 ["name"]
      223 NAMECALL                         R26 R26 K19 ["format"]
      225 CALL                             R26 2 1
      226 MOVE                             R25 R26
      227 SETTABLEKS                       R25 R24 K15 ["testId"]
      229 DUPTABLE                         R25 K21 [{"HeaderRow"}]
      230 GETUPVAL                         R26 0
      231 GETTABLEKS                       R26 R26 K11 ["createElement"]
      233 GETUPVAL                         R27 19
      234 DUPTABLE                         R28 K41 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingEditCommand"], ["onCreateMenuItemSelected"], ["validBindingsBySchema"]}]
      235 SETTABLEKS                       R4 R28 K28 ["action"]
      237 SETTABLEKS                       R21 R28 K22 ["bindings"]
      239 SETTABLEKS                       R7 R28 K36 ["createMenu"]
      241 MOVE                             R29 R20
      242 CALL                             R29 0 1
      243 SETTABLEKS                       R29 R28 K12 ["LayoutOrder"]
      245 GETTABLEKS                       R29 R4 K18 ["name"]
      247 SETTABLEKS                       R29 R28 K18 ["name"]
      249 NEWCLOSURE                       R29 P4
      250 CAPTURE                          VAL R19
      251 CAPTURE                          VAL R21
      252 SETTABLEKS                       R29 R28 K38 ["onBindingEditCommand"]
      254 SETTABLEKS                       R9 R28 K39 ["onCreateMenuItemSelected"]
      256 SETTABLEKS                       R16 R28 K40 ["validBindingsBySchema"]
      258 CALL                             R26 2 1
      259 SETTABLEKS                       R26 R25 K20 ["HeaderRow"]
      261 CALL                             R22 3 -1
      262 RETURN                           R22 -1
      263 JUMPIFNOTEQKNIL                  R8 ; [+80]
      265 GETTABLEKS                       R22 R5 K4 ["Keycode"]
      267 LENGTH                           R21 R22
      268 JUMPIFNOTEQKN                    R21 K33 [0] ; [+9]
      270 GETTABLEKS                       R22 R5 K5 ["Composite"]
      272 LENGTH                           R21 R22
      273 LOADN                            R22 1
      274 JUMPIFNOTLE                      R21 R22 ; [+3]
      276 JUMPIFEQKNIL                     R14 ; [+3]
      278 JUMPIFNOTEQKS                    R14 K5 ["Composite"] ; [+65]
      280 GETTABLEKS                       R23 R5 K5 ["Composite"]
      282 LENGTH                           R22 R23
      283 LOADN                            R23 0
      284 JUMPIFNOTLT                      R23 R22 ; [+5]
      286 GETTABLEKS                       R22 R5 K5 ["Composite"]
      288 GETTABLEN                        R21 R22 1
      289 JUMP                             ; [+2]
      290 NEWTABLE                         R21 0 0
      292 GETUPVAL                         R22 0
      293 GETTABLEKS                       R22 R22 K11 ["createElement"]
      295 GETUPVAL                         R23 17
      296 DUPTABLE                         R24 K16 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      297 GETTABLEKS                       R25 R0 K12 ["LayoutOrder"]
      299 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      301 LOADK                            R26 K17 ["action-%*"]
      302 GETTABLEKS                       R28 R4 K18 ["name"]
      304 NAMECALL                         R26 R26 K19 ["format"]
      306 CALL                             R26 2 1
      307 MOVE                             R25 R26
      308 SETTABLEKS                       R25 R24 K15 ["testId"]
      310 DUPTABLE                         R25 K21 [{"HeaderRow"}]
      311 GETUPVAL                         R26 0
      312 GETTABLEKS                       R26 R26 K11 ["createElement"]
      314 GETUPVAL                         R27 20
      315 DUPTABLE                         R28 K41 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingEditCommand"], ["onCreateMenuItemSelected"], ["validBindingsBySchema"]}]
      316 SETTABLEKS                       R4 R28 K28 ["action"]
      318 SETTABLEKS                       R21 R28 K22 ["bindings"]
      320 SETTABLEKS                       R7 R28 K36 ["createMenu"]
      322 MOVE                             R29 R20
      323 CALL                             R29 0 1
      324 SETTABLEKS                       R29 R28 K12 ["LayoutOrder"]
      326 GETTABLEKS                       R29 R4 K18 ["name"]
      328 SETTABLEKS                       R29 R28 K18 ["name"]
      330 NEWCLOSURE                       R29 P5
      331 CAPTURE                          VAL R19
      332 CAPTURE                          VAL R21
      333 SETTABLEKS                       R29 R28 K38 ["onBindingEditCommand"]
      335 SETTABLEKS                       R9 R28 K39 ["onCreateMenuItemSelected"]
      337 SETTABLEKS                       R16 R28 K40 ["validBindingsBySchema"]
      339 CALL                             R26 2 1
      340 SETTABLEKS                       R26 R25 K20 ["HeaderRow"]
      342 CALL                             R22 3 -1
      343 RETURN                           R22 -1
      344 DUPTABLE                         R21 K44 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite"}]
      345 GETUPVAL                         R22 0
      346 GETTABLEKS                       R22 R22 K11 ["createElement"]
      348 GETUPVAL                         R23 18
      349 DUPTABLE                         R24 K45 [{"bindings", "LayoutOrder", "nodeProps"}]
      350 GETTABLEKS                       R25 R5 K27 ["All"]
      352 SETTABLEKS                       R25 R24 K22 ["bindings"]
      354 MOVE                             R25 R20
      355 CALL                             R25 0 1
      356 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      358 DUPTABLE                         R25 K50 [{["action"], ["createMenu"], ["depth"] = 1, ["editMenu"], ["expanded"], ["icon"] = "InputAction", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      359 SETTABLEKS                       R4 R25 K28 ["action"]
      361 SETTABLEKS                       R7 R25 K36 ["createMenu"]
      363 SETTABLEKS                       R18 R25 K46 ["editMenu"]
      365 SETTABLEKS                       R12 R25 K47 ["expanded"]
      367 GETTABLEKS                       R26 R4 K18 ["name"]
      369 SETTABLEKS                       R26 R25 K18 ["name"]
      371 SETTABLEKS                       R9 R25 K39 ["onCreateMenuItemSelected"]
      373 SETTABLEKS                       R19 R25 K48 ["onEditMenuItemSelected"]
      375 SETTABLEKS                       R13 R25 K49 ["setExpanded"]
      377 SETTABLEKS                       R25 R24 K24 ["nodeProps"]
      379 CALL                             R22 2 1
      380 SETTABLEKS                       R22 R21 K20 ["HeaderRow"]
      382 LOADB                            R22 0
      383 JUMPIFNOTEQKS                    R8 K4 ["Keycode"] ; [+33]
      385 GETUPVAL                         R22 0
      386 GETTABLEKS                       R22 R22 K11 ["createElement"]
      388 GETUPVAL                         R23 19
      389 DUPTABLE                         R24 K53 [{"action", "bindings", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      390 SETTABLEKS                       R4 R24 K28 ["action"]
      392 NEWTABLE                         R25 0 0
      394 SETTABLEKS                       R25 R24 K22 ["bindings"]
      396 GETTABLEKS                       R27 R5 K4 ["Keycode"]
      398 LENGTH                           R26 R27
      399 ADDK                             R25 R26 K23 [1]
      400 SETTABLEKS                       R25 R24 K37 ["index"]
      402 MOVE                             R25 R20
      403 CALL                             R25 0 1
      404 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      406 SETTABLEKS                       R10 R24 K51 ["onCreated"]
      408 SETTABLEKS                       R11 R24 K52 ["onCancelBinding"]
      410 NEWCLOSURE                       R25 P6
      411 CAPTURE                          VAL R19
      412 SETTABLEKS                       R25 R24 K38 ["onBindingEditCommand"]
      414 SETTABLEKS                       R16 R24 K40 ["validBindingsBySchema"]
      416 CALL                             R22 2 1
      417 SETTABLEKS                       R22 R21 K42 ["CreatingKeyBind"]
      419 LOADB                            R22 0
      420 JUMPIFNOTEQKS                    R8 K5 ["Composite"] ; [+33]
      422 GETUPVAL                         R22 0
      423 GETTABLEKS                       R22 R22 K11 ["createElement"]
      425 GETUPVAL                         R23 20
      426 DUPTABLE                         R24 K53 [{"action", "bindings", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      427 SETTABLEKS                       R4 R24 K28 ["action"]
      429 NEWTABLE                         R25 0 0
      431 SETTABLEKS                       R25 R24 K22 ["bindings"]
      433 GETTABLEKS                       R27 R5 K5 ["Composite"]
      435 LENGTH                           R26 R27
      436 ADDK                             R25 R26 K23 [1]
      437 SETTABLEKS                       R25 R24 K37 ["index"]
      439 MOVE                             R25 R20
      440 CALL                             R25 0 1
      441 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      443 SETTABLEKS                       R10 R24 K51 ["onCreated"]
      445 SETTABLEKS                       R11 R24 K52 ["onCancelBinding"]
      447 NEWCLOSURE                       R25 P7
      448 CAPTURE                          VAL R19
      449 SETTABLEKS                       R25 R24 K38 ["onBindingEditCommand"]
      451 SETTABLEKS                       R16 R24 K40 ["validBindingsBySchema"]
      453 CALL                             R22 2 1
      454 SETTABLEKS                       R22 R21 K43 ["CreatingComposite"]
      456 JUMPIFNOT                        R12 ; [+96]
      457 GETTABLEKS                       R22 R5 K4 ["Keycode"]
      459 LOADNIL                          R23
      460 LOADNIL                          R24
      461 FORGPREP                         R22
      462 LOADK                            R28 K54 ["Keycode_%*"]
      463 MOVE                             R30 R25
      464 NAMECALL                         R28 R28 K19 ["format"]
      466 CALL                             R28 2 1
      467 MOVE                             R27 R28
      468 GETUPVAL                         R28 0
      469 GETTABLEKS                       R28 R28 K11 ["createElement"]
      471 GETUPVAL                         R29 19
      472 DUPTABLE                         R30 K56 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      473 SETTABLEKS                       R4 R30 K28 ["action"]
      475 SETTABLEKS                       R26 R30 K22 ["bindings"]
      477 SETTABLEKS                       R25 R30 K37 ["index"]
      479 MOVE                             R31 R20
      480 CALL                             R31 0 1
      481 SETTABLEKS                       R31 R30 K12 ["LayoutOrder"]
      483 NEWCLOSURE                       R31 P8
      484 CAPTURE                          VAL R19
      485 CAPTURE                          VAL R26
      486 SETTABLEKS                       R31 R30 K38 ["onBindingEditCommand"]
      488 LOADN                            R32 1
      489 JUMPIFNOTLT                      R32 R25 ; [+6]
      491 GETTABLEKS                       R32 R5 K4 ["Keycode"]
      493 SUBK                             R33 R25 K23 [1]
      494 GETTABLE                         R31 R32 R33
      495 JUMP                             ; [+1]
      496 LOADNIL                          R31
      497 SETTABLEKS                       R31 R30 K55 ["previousBindings"]
      499 SETTABLEKS                       R16 R30 K40 ["validBindingsBySchema"]
      501 CALL                             R28 2 1
      502 SETTABLE                         R28 R21 R27
      503 FORGLOOP                         R22 2 ; [-42]
      505 GETTABLEKS                       R22 R5 K5 ["Composite"]
      507 LOADNIL                          R23
      508 LOADNIL                          R24
      509 FORGPREP                         R22
      510 LOADK                            R28 K57 ["Composite_%*"]
      511 MOVE                             R30 R25
      512 NAMECALL                         R28 R28 K19 ["format"]
      514 CALL                             R28 2 1
      515 MOVE                             R27 R28
      516 GETUPVAL                         R28 0
      517 GETTABLEKS                       R28 R28 K11 ["createElement"]
      519 GETUPVAL                         R29 20
      520 DUPTABLE                         R30 K56 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      521 SETTABLEKS                       R4 R30 K28 ["action"]
      523 SETTABLEKS                       R26 R30 K22 ["bindings"]
      525 SETTABLEKS                       R25 R30 K37 ["index"]
      527 MOVE                             R31 R20
      528 CALL                             R31 0 1
      529 SETTABLEKS                       R31 R30 K12 ["LayoutOrder"]
      531 NEWCLOSURE                       R31 P9
      532 CAPTURE                          VAL R19
      533 CAPTURE                          VAL R26
      534 SETTABLEKS                       R31 R30 K38 ["onBindingEditCommand"]
      536 LOADN                            R32 1
      537 JUMPIFNOTLT                      R32 R25 ; [+6]
      539 GETTABLEKS                       R32 R5 K5 ["Composite"]
      541 SUBK                             R33 R25 K23 [1]
      542 GETTABLE                         R31 R32 R33
      543 JUMP                             ; [+1]
      544 LOADNIL                          R31
      545 SETTABLEKS                       R31 R30 K55 ["previousBindings"]
      547 SETTABLEKS                       R16 R30 K40 ["validBindingsBySchema"]
      549 CALL                             R28 2 1
      550 SETTABLE                         R28 R21 R27
      551 FORGLOOP                         R22 2 ; [-42]
      553 GETUPVAL                         R22 0
      554 GETTABLEKS                       R22 R22 K11 ["createElement"]
      556 GETUPVAL                         R23 17
      557 DUPTABLE                         R24 K16 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      558 GETTABLEKS                       R25 R0 K12 ["LayoutOrder"]
      560 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      562 LOADK                            R26 K17 ["action-%*"]
      563 GETTABLEKS                       R28 R4 K18 ["name"]
      565 NAMECALL                         R26 R26 K19 ["format"]
      567 CALL                             R26 2 1
      568 MOVE                             R25 R26
      569 SETTABLEKS                       R25 R24 K15 ["testId"]
      571 MOVE                             R25 R21
      572 CALL                             R22 3 -1
      573 RETURN                           R22 -1

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
      202 GETTABLEKS                       R24 R22 K40 ["getFFlagIAMDuplicate"]
      204 CALL                             R23 1 1
      205 GETIMPORT                        R24 K5 [require]
      207 GETTABLEKS                       R25 R22 K41 ["getFFlagIAMLiveDebugging"]
      209 CALL                             R24 1 1
      210 GETIMPORT                        R25 K5 [require]
      212 GETTABLEKS                       R26 R22 K42 ["getFFlagIAMViewportPositionType"]
      214 CALL                             R25 1 1
      215 DUPCLOSURE                       R26 K43 [PROTO_10]
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R24
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R19
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R15
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R2
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R23
      233 CAPTURE                          VAL R6
      234 CAPTURE                          VAL R9
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R10
      237 RETURN                           R26 1
