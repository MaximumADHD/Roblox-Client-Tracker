PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+4]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+3]
        9 NEWTABLE                         R0 0 0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 3
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K0 ["type"]
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+72]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["type"]
        7 GETIMPORT                        R3 K4 [Enum.InputActionType.Bool]
        9 JUMPIFNOTEQ                      R1 R3 ; [+6]
       11 LOADB                            R2 1
       12 GETIMPORT                        R3 K6 [Enum.InputActionType.Direction1D]
       14 JUMPIFEQ                         R0 R3 ; [+12]
       16 LOADB                            R2 0
       17 GETIMPORT                        R3 K6 [Enum.InputActionType.Direction1D]
       19 JUMPIFNOTEQ                      R1 R3 ; [+7]
       21 GETIMPORT                        R3 K4 [Enum.InputActionType.Bool]
       23 JUMPIFEQ                         R0 R3 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 JUMPIF                           R2 ; [+21]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K7 ["Keycode"]
       31 LOADNIL                          R4
       32 LOADNIL                          R5
       33 FORGPREP                         R3
       34 MOVE                             R8 R7
       35 LOADNIL                          R9
       36 LOADNIL                          R10
       37 FORGPREP                         R8
       38 GETUPVAL                         R13 2
       39 GETTABLEKS                       R13 R13 K8 ["updateBinding"]
       41 GETTABLEKS                       R14 R12 K9 ["uuid"]
       43 LOADNIL                          R15
       44 CALL                             R13 2 0
       45 FORGLOOP                         R8 2 ; [-8]
       47 FORGLOOP                         R3 2 ; [-14]
       49 GETIMPORT                        R3 K4 [Enum.InputActionType.Bool]
       51 JUMPIFNOTEQ                      R0 R3 ; [+22]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K10 ["Composite"]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 MOVE                             R8 R7
       60 LOADNIL                          R9
       61 LOADNIL                          R10
       62 FORGPREP                         R8
       63 GETUPVAL                         R13 2
       64 GETTABLEKS                       R13 R13 K8 ["updateBinding"]
       66 GETTABLEKS                       R14 R12 K9 ["uuid"]
       68 LOADNIL                          R15
       69 CALL                             R13 2 0
       70 FORGLOOP                         R8 2 ; [-8]
       72 FORGLOOP                         R3 2 ; [-14]
       74 RETURN                           R0 0

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
       33 JUMPIFNOTEQ                      R0 R2 ; [+21]
       35 JUMPIFEQKNIL                     R1 ; [+19]
       37 GETUPVAL                         R2 4
       38 CALL                             R2 0 3
       39 FORGPREP                         R2
       40 GETTABLE                         R7 R1 R6
       41 JUMPIFNOT                        R7 ; [+7]
       42 GETUPVAL                         R8 5
       43 GETTABLEKS                       R8 R8 K8 ["updateBinding"]
       45 GETTABLEKS                       R9 R7 K9 ["uuid"]
       47 LOADNIL                          R10
       48 CALL                             R8 2 0
       49 FORGLOOP                         R2 2 ; [-10]
       51 GETUPVAL                         R2 6
       52 LOADK                            R3 K10 ["Composite"]
       53 CALL                             R2 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K11 ["ROW_USE_KEYCODE"]
       58 JUMPIFNOTEQ                      R0 R2 ; [+21]
       60 JUMPIFEQKNIL                     R1 ; [+19]
       62 GETUPVAL                         R2 4
       63 CALL                             R2 0 3
       64 FORGPREP                         R2
       65 GETTABLE                         R7 R1 R6
       66 JUMPIFNOT                        R7 ; [+7]
       67 GETUPVAL                         R8 5
       68 GETTABLEKS                       R8 R8 K8 ["updateBinding"]
       70 GETTABLEKS                       R9 R7 K9 ["uuid"]
       72 LOADNIL                          R10
       73 CALL                             R8 2 0
       74 FORGLOOP                         R2 2 ; [-10]
       76 GETUPVAL                         R2 6
       77 LOADK                            R3 K12 ["Keycode"]
       78 CALL                             R2 1 0
       79 RETURN                           R0 0
       80 GETUPVAL                         R2 0
       81 GETTABLEKS                       R2 R2 K13 ["DELETE"]
       83 JUMPIFNOTEQ                      R0 R2 ; [+10]
       85 GETUPVAL                         R2 5
       86 GETTABLEKS                       R2 R2 K14 ["updateAction"]
       88 GETUPVAL                         R3 2
       89 GETTABLEKS                       R3 R3 K9 ["uuid"]
       91 LOADNIL                          R4
       92 CALL                             R2 2 0
       93 RETURN                           R0 0
       94 GETUPVAL                         R2 0
       95 GETTABLEKS                       R2 R2 K15 ["DUPLICATE"]
       97 JUMPIFNOTEQ                      R0 R2 ; [+12]
       99 GETUPVAL                         R2 7
      100 CALL                             R2 0 1
      101 JUMPIFNOT                        R2 ; [+8]
      102 GETUPVAL                         R2 5
      103 GETTABLEKS                       R2 R2 K16 ["duplicateAction"]
      105 GETUPVAL                         R3 2
      106 GETTABLEKS                       R3 R3 K9 ["uuid"]
      108 CALL                             R2 1 0
      109 RETURN                           R0 0
      110 GETUPVAL                         R2 0
      111 GETTABLEKS                       R2 R2 K17 ["EDIT_ACTION_BOOL"]
      113 JUMPIFNOTEQ                      R0 R2 ; [+32]
      115 GETIMPORT                        R2 K21 [Enum.InputActionType.Bool]
      117 GETUPVAL                         R3 8
      118 CALL                             R3 0 1
      119 JUMPIFNOT                        R3 ; [+3]
      120 GETUPVAL                         R3 9
      121 MOVE                             R4 R2
      122 CALL                             R3 1 0
      123 GETUPVAL                         R3 5
      124 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      126 GETUPVAL                         R4 2
      127 GETTABLEKS                       R4 R4 K9 ["uuid"]
      129 DUPTABLE                         R5 K23 [{"type"}]
      130 SETTABLEKS                       R2 R5 K22 ["type"]
      132 CALL                             R3 2 0
      133 GETUPVAL                         R3 10
      134 CALL                             R3 0 1
      135 JUMPIFNOT                        R3 ; [+6]
      136 GETUPVAL                         R3 11
      137 GETTABLEKS                       R3 R3 K24 ["countInputActionTypeSelected"]
      139 GETIMPORT                        R4 K21 [Enum.InputActionType.Bool]
      141 CALL                             R3 1 0
      142 GETUPVAL                         R3 6
      143 LOADK                            R4 K12 ["Keycode"]
      144 CALL                             R3 1 0
      145 RETURN                           R0 0
      146 GETUPVAL                         R2 0
      147 GETTABLEKS                       R2 R2 K25 ["EDIT_ACTION_DIRECTION1D"]
      149 JUMPIFNOTEQ                      R0 R2 ; [+29]
      151 GETIMPORT                        R2 K27 [Enum.InputActionType.Direction1D]
      153 GETUPVAL                         R3 8
      154 CALL                             R3 0 1
      155 JUMPIFNOT                        R3 ; [+3]
      156 GETUPVAL                         R3 9
      157 MOVE                             R4 R2
      158 CALL                             R3 1 0
      159 GETUPVAL                         R3 5
      160 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      162 GETUPVAL                         R4 2
      163 GETTABLEKS                       R4 R4 K9 ["uuid"]
      165 DUPTABLE                         R5 K23 [{"type"}]
      166 SETTABLEKS                       R2 R5 K22 ["type"]
      168 CALL                             R3 2 0
      169 GETUPVAL                         R3 10
      170 CALL                             R3 0 1
      171 JUMPIFNOT                        R3 ; [+6]
      172 GETUPVAL                         R3 11
      173 GETTABLEKS                       R3 R3 K24 ["countInputActionTypeSelected"]
      175 GETIMPORT                        R4 K27 [Enum.InputActionType.Direction1D]
      177 CALL                             R3 1 0
      178 RETURN                           R0 0
      179 GETUPVAL                         R2 0
      180 GETTABLEKS                       R2 R2 K28 ["EDIT_ACTION_DIRECTION2D"]
      182 JUMPIFNOTEQ                      R0 R2 ; [+29]
      184 GETIMPORT                        R2 K30 [Enum.InputActionType.Direction2D]
      186 GETUPVAL                         R3 8
      187 CALL                             R3 0 1
      188 JUMPIFNOT                        R3 ; [+3]
      189 GETUPVAL                         R3 9
      190 MOVE                             R4 R2
      191 CALL                             R3 1 0
      192 GETUPVAL                         R3 5
      193 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      195 GETUPVAL                         R4 2
      196 GETTABLEKS                       R4 R4 K9 ["uuid"]
      198 DUPTABLE                         R5 K23 [{"type"}]
      199 SETTABLEKS                       R2 R5 K22 ["type"]
      201 CALL                             R3 2 0
      202 GETUPVAL                         R3 10
      203 CALL                             R3 0 1
      204 JUMPIFNOT                        R3 ; [+6]
      205 GETUPVAL                         R3 11
      206 GETTABLEKS                       R3 R3 K24 ["countInputActionTypeSelected"]
      208 GETIMPORT                        R4 K30 [Enum.InputActionType.Direction2D]
      210 CALL                             R3 1 0
      211 RETURN                           R0 0
      212 GETUPVAL                         R2 0
      213 GETTABLEKS                       R2 R2 K31 ["EDIT_ACTION_DIRECTION3D"]
      215 JUMPIFNOTEQ                      R0 R2 ; [+29]
      217 GETIMPORT                        R2 K33 [Enum.InputActionType.Direction3D]
      219 GETUPVAL                         R3 8
      220 CALL                             R3 0 1
      221 JUMPIFNOT                        R3 ; [+3]
      222 GETUPVAL                         R3 9
      223 MOVE                             R4 R2
      224 CALL                             R3 1 0
      225 GETUPVAL                         R3 5
      226 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      228 GETUPVAL                         R4 2
      229 GETTABLEKS                       R4 R4 K9 ["uuid"]
      231 DUPTABLE                         R5 K23 [{"type"}]
      232 SETTABLEKS                       R2 R5 K22 ["type"]
      234 CALL                             R3 2 0
      235 GETUPVAL                         R3 10
      236 CALL                             R3 0 1
      237 JUMPIFNOT                        R3 ; [+6]
      238 GETUPVAL                         R3 11
      239 GETTABLEKS                       R3 R3 K24 ["countInputActionTypeSelected"]
      241 GETIMPORT                        R4 K33 [Enum.InputActionType.Direction3D]
      243 CALL                             R3 1 0
      244 RETURN                           R0 0
      245 RETURN                           R0 0

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
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Context"]
       16 CALL                             R2 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R4 R0 K2 ["uuid"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 5
       24 MOVE                             R5 R3
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 6
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETTABLEKS                       R6 R3 K3 ["type"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R6
       32 CALL                             R5 1 5
       33 GETUPVAL                         R10 7
       34 GETTABLEKS                       R11 R0 K2 ["uuid"]
       36 JUMPIFNOT                        R4 ; [+16]
       37 LOADB                            R12 1
       38 GETTABLEKS                       R15 R4 K4 ["Keycode"]
       40 LENGTH                           R14 R15
       41 GETTABLEKS                       R16 R4 K5 ["Composite"]
       43 LENGTH                           R15 R16
       44 ADD                              R13 R14 R15
       45 LOADN                            R14 1
       46 JUMPIFLT                         R14 R13 ; [+7]
       48 JUMPIFNOTEQKNIL                  R6 ; [+2]
       50 LOADB                            R12 0 +1
       51 LOADB                            R12 1
       52 JUMP                             ; [+1]
       53 LOADB                            R12 0
       54 CALL                             R10 2 2
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R12 R12 K6 ["useState"]
       58 LOADNIL                          R13
       59 CALL                             R12 1 2
       60 GETUPVAL                         R14 0
       61 GETTABLEKS                       R14 R14 K0 ["useContext"]
       63 GETUPVAL                         R15 8
       64 GETTABLEKS                       R15 R15 K1 ["Context"]
       66 CALL                             R14 1 1
       67 GETUPVAL                         R15 0
       68 GETTABLEKS                       R15 R15 K7 ["useMemo"]
       70 NEWCLOSURE                       R16 P0
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          UPVAL U9
       74 CAPTURE                          UPVAL U10
       75 NEWTABLE                         R17 0 2
       77 MOVE                             R18 R4
       78 MOVE                             R19 R3
       79 SETLIST                          R17 R18 2 [1]
       81 CALL                             R15 2 1
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R16 R16 K8 ["useCallback"]
       85 NEWCLOSURE                       R17 P1
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R14
       89 NEWTABLE                         R18 0 3
       91 MOVE                             R19 R3
       92 MOVE                             R20 R4
       93 MOVE                             R21 R14
       94 SETLIST                          R18 R19 3 [1]
       96 CALL                             R16 2 1
       97 GETUPVAL                         R17 0
       98 GETTABLEKS                       R17 R17 K7 ["useMemo"]
      100 NEWCLOSURE                       R18 P2
      101 CAPTURE                          UPVAL U11
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R3
      104 NEWTABLE                         R19 0 2
      106 MOVE                             R20 R1
      107 MOVE                             R21 R3
      108 SETLIST                          R19 R20 2 [1]
      110 CALL                             R17 2 1
      111 GETUPVAL                         R18 12
      112 GETTABLEKS                       R18 R18 K9 ["useEventCallback"]
      114 NEWCLOSURE                       R19 P3
      115 CAPTURE                          UPVAL U13
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R4
      119 CAPTURE                          UPVAL U14
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R13
      122 CAPTURE                          UPVAL U15
      123 CAPTURE                          UPVAL U16
      124 CAPTURE                          VAL R16
      125 CAPTURE                          UPVAL U2
      126 CAPTURE                          VAL R2
      127 CALL                             R18 1 1
      128 GETUPVAL                         R19 12
      129 GETTABLEKS                       R19 R19 K10 ["createNextOrder"]
      131 CALL                             R19 0 1
      132 JUMPIFEQKNIL                     R3 ; [+3]
      134 JUMPIFNOTEQKNIL                  R4 ; [+3]
      136 LOADNIL                          R20
      137 RETURN                           R20 1
      138 JUMPIFNOTEQKNIL                  R6 ; [+80]
      140 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      142 LENGTH                           R20 R21
      143 LOADN                            R21 1
      144 JUMPIFNOTLE                      R20 R21 ; [+8]
      146 GETTABLEKS                       R21 R4 K5 ["Composite"]
      148 LENGTH                           R20 R21
      149 JUMPIFNOTEQKN                    R20 K11 [0] ; [+3]
      151 JUMPIFEQKNIL                     R12 ; [+3]
      153 JUMPIFNOTEQKS                    R12 K4 ["Keycode"] ; [+65]
      155 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      157 GETTABLEN                        R20 R21 1
      158 JUMPIF                           R20 ; [+2]
      159 NEWTABLE                         R20 0 0
      161 GETUPVAL                         R21 0
      162 GETTABLEKS                       R21 R21 K12 ["createElement"]
      164 GETUPVAL                         R22 17
      165 DUPTABLE                         R23 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      166 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      168 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      170 LOADK                            R25 K18 ["action-%*"]
      171 GETTABLEKS                       R27 R3 K19 ["name"]
      173 NAMECALL                         R25 R25 K20 ["format"]
      175 CALL                             R25 2 1
      176 MOVE                             R24 R25
      177 SETTABLEKS                       R24 R23 K16 ["testId"]
      179 DUPTABLE                         R24 K22 [{"HeaderRow"}]
      180 GETUPVAL                         R25 0
      181 GETTABLEKS                       R25 R25 K12 ["createElement"]
      183 GETUPVAL                         R26 18
      184 DUPTABLE                         R27 K33 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingEditCommand"], ["onCreateMenuItemSelected"], ["validBindingsBySchema"]}]
      185 SETTABLEKS                       R3 R27 K23 ["action"]
      187 SETTABLEKS                       R20 R27 K24 ["bindings"]
      189 SETTABLEKS                       R5 R27 K27 ["createMenu"]
      191 MOVE                             R28 R19
      192 CALL                             R28 0 1
      193 SETTABLEKS                       R28 R27 K13 ["LayoutOrder"]
      195 GETTABLEKS                       R28 R3 K19 ["name"]
      197 SETTABLEKS                       R28 R27 K19 ["name"]
      199 NEWCLOSURE                       R28 P4
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R20
      202 SETTABLEKS                       R28 R27 K30 ["onBindingEditCommand"]
      204 SETTABLEKS                       R7 R27 K31 ["onCreateMenuItemSelected"]
      206 GETUPVAL                         R29 9
      207 CALL                             R29 0 1
      208 JUMPIFNOT                        R29 ; [+2]
      209 MOVE                             R28 R15
      210 JUMP                             ; [+1]
      211 LOADNIL                          R28
      212 SETTABLEKS                       R28 R27 K32 ["validBindingsBySchema"]
      214 CALL                             R25 2 1
      215 SETTABLEKS                       R25 R24 K21 ["HeaderRow"]
      217 CALL                             R21 3 -1
      218 RETURN                           R21 -1
      219 JUMPIFNOTEQKNIL                  R6 ; [+86]
      221 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      223 LENGTH                           R20 R21
      224 JUMPIFNOTEQKN                    R20 K11 [0] ; [+9]
      226 GETTABLEKS                       R21 R4 K5 ["Composite"]
      228 LENGTH                           R20 R21
      229 LOADN                            R21 1
      230 JUMPIFNOTLE                      R20 R21 ; [+3]
      232 JUMPIFEQKNIL                     R12 ; [+3]
      234 JUMPIFNOTEQKS                    R12 K5 ["Composite"] ; [+71]
      236 GETTABLEKS                       R22 R4 K5 ["Composite"]
      238 LENGTH                           R21 R22
      239 LOADN                            R22 0
      240 JUMPIFNOTLT                      R22 R21 ; [+5]
      242 GETTABLEKS                       R21 R4 K5 ["Composite"]
      244 GETTABLEN                        R20 R21 1
      245 JUMP                             ; [+2]
      246 NEWTABLE                         R20 0 0
      248 GETUPVAL                         R21 0
      249 GETTABLEKS                       R21 R21 K12 ["createElement"]
      251 GETUPVAL                         R22 17
      252 DUPTABLE                         R23 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      253 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      255 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      257 LOADK                            R25 K18 ["action-%*"]
      258 GETTABLEKS                       R27 R3 K19 ["name"]
      260 NAMECALL                         R25 R25 K20 ["format"]
      262 CALL                             R25 2 1
      263 MOVE                             R24 R25
      264 SETTABLEKS                       R24 R23 K16 ["testId"]
      266 DUPTABLE                         R24 K22 [{"HeaderRow"}]
      267 GETUPVAL                         R25 0
      268 GETTABLEKS                       R25 R25 K12 ["createElement"]
      270 GETUPVAL                         R26 19
      271 DUPTABLE                         R27 K33 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingEditCommand"], ["onCreateMenuItemSelected"], ["validBindingsBySchema"]}]
      272 SETTABLEKS                       R3 R27 K23 ["action"]
      274 SETTABLEKS                       R20 R27 K24 ["bindings"]
      276 SETTABLEKS                       R5 R27 K27 ["createMenu"]
      278 MOVE                             R28 R19
      279 CALL                             R28 0 1
      280 SETTABLEKS                       R28 R27 K13 ["LayoutOrder"]
      282 GETTABLEKS                       R28 R3 K19 ["name"]
      284 SETTABLEKS                       R28 R27 K19 ["name"]
      286 NEWCLOSURE                       R28 P5
      287 CAPTURE                          VAL R18
      288 CAPTURE                          VAL R20
      289 SETTABLEKS                       R28 R27 K30 ["onBindingEditCommand"]
      291 SETTABLEKS                       R7 R27 K31 ["onCreateMenuItemSelected"]
      293 GETUPVAL                         R29 9
      294 CALL                             R29 0 1
      295 JUMPIFNOT                        R29 ; [+2]
      296 MOVE                             R28 R15
      297 JUMP                             ; [+1]
      298 LOADNIL                          R28
      299 SETTABLEKS                       R28 R27 K32 ["validBindingsBySchema"]
      301 CALL                             R25 2 1
      302 SETTABLEKS                       R25 R24 K21 ["HeaderRow"]
      304 CALL                             R21 3 -1
      305 RETURN                           R21 -1
      306 DUPTABLE                         R20 K36 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite"}]
      307 GETUPVAL                         R21 0
      308 GETTABLEKS                       R21 R21 K12 ["createElement"]
      310 GETUPVAL                         R22 20
      311 DUPTABLE                         R23 K38 [{"bindings", "LayoutOrder", "nodeProps"}]
      312 GETTABLEKS                       R24 R4 K39 ["All"]
      314 SETTABLEKS                       R24 R23 K24 ["bindings"]
      316 MOVE                             R24 R19
      317 CALL                             R24 0 1
      318 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      320 DUPTABLE                         R24 K47 [{["action"], ["createMenu"], ["depth"] = 1, ["editMenu"], ["expanded"], ["icon"] = "InputAction", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      321 SETTABLEKS                       R3 R24 K23 ["action"]
      323 SETTABLEKS                       R5 R24 K27 ["createMenu"]
      325 SETTABLEKS                       R17 R24 K41 ["editMenu"]
      327 SETTABLEKS                       R10 R24 K42 ["expanded"]
      329 GETTABLEKS                       R25 R3 K19 ["name"]
      331 SETTABLEKS                       R25 R24 K19 ["name"]
      333 SETTABLEKS                       R7 R24 K31 ["onCreateMenuItemSelected"]
      335 SETTABLEKS                       R18 R24 K45 ["onEditMenuItemSelected"]
      337 SETTABLEKS                       R11 R24 K46 ["setExpanded"]
      339 SETTABLEKS                       R24 R23 K37 ["nodeProps"]
      341 CALL                             R21 2 1
      342 SETTABLEKS                       R21 R20 K21 ["HeaderRow"]
      344 LOADB                            R21 0
      345 JUMPIFNOTEQKS                    R6 K4 ["Keycode"] ; [+39]
      347 GETUPVAL                         R21 0
      348 GETTABLEKS                       R21 R21 K12 ["createElement"]
      350 GETUPVAL                         R22 18
      351 DUPTABLE                         R23 K50 [{"action", "bindings", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      352 SETTABLEKS                       R3 R23 K23 ["action"]
      354 NEWTABLE                         R24 0 0
      356 SETTABLEKS                       R24 R23 K24 ["bindings"]
      358 GETTABLEKS                       R26 R4 K4 ["Keycode"]
      360 LENGTH                           R25 R26
      361 ADDK                             R24 R25 K29 [1]
      362 SETTABLEKS                       R24 R23 K28 ["index"]
      364 MOVE                             R24 R19
      365 CALL                             R24 0 1
      366 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      368 SETTABLEKS                       R8 R23 K48 ["onCreated"]
      370 SETTABLEKS                       R9 R23 K49 ["onCancelBinding"]
      372 NEWCLOSURE                       R24 P6
      373 CAPTURE                          VAL R18
      374 SETTABLEKS                       R24 R23 K30 ["onBindingEditCommand"]
      376 GETUPVAL                         R25 9
      377 CALL                             R25 0 1
      378 JUMPIFNOT                        R25 ; [+2]
      379 MOVE                             R24 R15
      380 JUMP                             ; [+1]
      381 LOADNIL                          R24
      382 SETTABLEKS                       R24 R23 K32 ["validBindingsBySchema"]
      384 CALL                             R21 2 1
      385 SETTABLEKS                       R21 R20 K34 ["CreatingKeyBind"]
      387 LOADB                            R21 0
      388 JUMPIFNOTEQKS                    R6 K5 ["Composite"] ; [+39]
      390 GETUPVAL                         R21 0
      391 GETTABLEKS                       R21 R21 K12 ["createElement"]
      393 GETUPVAL                         R22 19
      394 DUPTABLE                         R23 K50 [{"action", "bindings", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      395 SETTABLEKS                       R3 R23 K23 ["action"]
      397 NEWTABLE                         R24 0 0
      399 SETTABLEKS                       R24 R23 K24 ["bindings"]
      401 GETTABLEKS                       R26 R4 K5 ["Composite"]
      403 LENGTH                           R25 R26
      404 ADDK                             R24 R25 K29 [1]
      405 SETTABLEKS                       R24 R23 K28 ["index"]
      407 MOVE                             R24 R19
      408 CALL                             R24 0 1
      409 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      411 SETTABLEKS                       R8 R23 K48 ["onCreated"]
      413 SETTABLEKS                       R9 R23 K49 ["onCancelBinding"]
      415 NEWCLOSURE                       R24 P7
      416 CAPTURE                          VAL R18
      417 SETTABLEKS                       R24 R23 K30 ["onBindingEditCommand"]
      419 GETUPVAL                         R25 9
      420 CALL                             R25 0 1
      421 JUMPIFNOT                        R25 ; [+2]
      422 MOVE                             R24 R15
      423 JUMP                             ; [+1]
      424 LOADNIL                          R24
      425 SETTABLEKS                       R24 R23 K32 ["validBindingsBySchema"]
      427 CALL                             R21 2 1
      428 SETTABLEKS                       R21 R20 K35 ["CreatingComposite"]
      430 JUMPIFNOT                        R10 ; [+108]
      431 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      433 LOADNIL                          R22
      434 LOADNIL                          R23
      435 FORGPREP                         R21
      436 LOADK                            R27 K51 ["Keycode_%*"]
      437 MOVE                             R29 R24
      438 NAMECALL                         R27 R27 K20 ["format"]
      440 CALL                             R27 2 1
      441 MOVE                             R26 R27
      442 GETUPVAL                         R27 0
      443 GETTABLEKS                       R27 R27 K12 ["createElement"]
      445 GETUPVAL                         R28 18
      446 DUPTABLE                         R29 K53 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      447 SETTABLEKS                       R3 R29 K23 ["action"]
      449 SETTABLEKS                       R25 R29 K24 ["bindings"]
      451 SETTABLEKS                       R24 R29 K28 ["index"]
      453 MOVE                             R30 R19
      454 CALL                             R30 0 1
      455 SETTABLEKS                       R30 R29 K13 ["LayoutOrder"]
      457 NEWCLOSURE                       R30 P8
      458 CAPTURE                          VAL R18
      459 CAPTURE                          VAL R25
      460 SETTABLEKS                       R30 R29 K30 ["onBindingEditCommand"]
      462 LOADN                            R31 1
      463 JUMPIFNOTLT                      R31 R24 ; [+6]
      465 GETTABLEKS                       R31 R4 K4 ["Keycode"]
      467 SUBK                             R32 R24 K29 [1]
      468 GETTABLE                         R30 R31 R32
      469 JUMP                             ; [+1]
      470 LOADNIL                          R30
      471 SETTABLEKS                       R30 R29 K52 ["previousBindings"]
      473 GETUPVAL                         R31 9
      474 CALL                             R31 0 1
      475 JUMPIFNOT                        R31 ; [+2]
      476 MOVE                             R30 R15
      477 JUMP                             ; [+1]
      478 LOADNIL                          R30
      479 SETTABLEKS                       R30 R29 K32 ["validBindingsBySchema"]
      481 CALL                             R27 2 1
      482 SETTABLE                         R27 R20 R26
      483 FORGLOOP                         R21 2 ; [-48]
      485 GETTABLEKS                       R21 R4 K5 ["Composite"]
      487 LOADNIL                          R22
      488 LOADNIL                          R23
      489 FORGPREP                         R21
      490 LOADK                            R27 K54 ["Composite_%*"]
      491 MOVE                             R29 R24
      492 NAMECALL                         R27 R27 K20 ["format"]
      494 CALL                             R27 2 1
      495 MOVE                             R26 R27
      496 GETUPVAL                         R27 0
      497 GETTABLEKS                       R27 R27 K12 ["createElement"]
      499 GETUPVAL                         R28 19
      500 DUPTABLE                         R29 K53 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      501 SETTABLEKS                       R3 R29 K23 ["action"]
      503 SETTABLEKS                       R25 R29 K24 ["bindings"]
      505 SETTABLEKS                       R24 R29 K28 ["index"]
      507 MOVE                             R30 R19
      508 CALL                             R30 0 1
      509 SETTABLEKS                       R30 R29 K13 ["LayoutOrder"]
      511 NEWCLOSURE                       R30 P9
      512 CAPTURE                          VAL R18
      513 CAPTURE                          VAL R25
      514 SETTABLEKS                       R30 R29 K30 ["onBindingEditCommand"]
      516 LOADN                            R31 1
      517 JUMPIFNOTLT                      R31 R24 ; [+6]
      519 GETTABLEKS                       R31 R4 K5 ["Composite"]
      521 SUBK                             R32 R24 K29 [1]
      522 GETTABLE                         R30 R31 R32
      523 JUMP                             ; [+1]
      524 LOADNIL                          R30
      525 SETTABLEKS                       R30 R29 K52 ["previousBindings"]
      527 GETUPVAL                         R31 9
      528 CALL                             R31 0 1
      529 JUMPIFNOT                        R31 ; [+2]
      530 MOVE                             R30 R15
      531 JUMP                             ; [+1]
      532 LOADNIL                          R30
      533 SETTABLEKS                       R30 R29 K32 ["validBindingsBySchema"]
      535 CALL                             R27 2 1
      536 SETTABLE                         R27 R20 R26
      537 FORGLOOP                         R21 2 ; [-48]
      539 GETUPVAL                         R21 0
      540 GETTABLEKS                       R21 R21 K12 ["createElement"]
      542 GETUPVAL                         R22 17
      543 DUPTABLE                         R23 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      544 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      546 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      548 LOADK                            R25 K18 ["action-%*"]
      549 GETTABLEKS                       R27 R3 K19 ["name"]
      551 NAMECALL                         R25 R25 K20 ["format"]
      553 CALL                             R25 2 1
      554 MOVE                             R24 R25
      555 SETTABLEKS                       R24 R23 K16 ["testId"]
      557 MOVE                             R24 R20
      558 CALL                             R21 3 -1
      559 RETURN                           R21 -1

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
      149 GETTABLEKS                       R18 R18 K28 ["Binding"]
      151 GETTABLEKS                       R18 R18 K33 ["useBindings"]
      153 CALL                             R17 1 1
      154 GETIMPORT                        R18 K5 [require]
      156 GETTABLEKS                       R19 R0 K14 ["Src"]
      158 GETTABLEKS                       R19 R19 K30 ["Hooks"]
      160 GETTABLEKS                       R19 R19 K28 ["Binding"]
      162 GETTABLEKS                       R19 R19 K34 ["useCreateBinding"]
      164 CALL                             R18 1 1
      165 GETIMPORT                        R19 K5 [require]
      167 GETTABLEKS                       R20 R0 K14 ["Src"]
      169 GETTABLEKS                       R20 R20 K30 ["Hooks"]
      171 GETTABLEKS                       R20 R20 K35 ["useExpanded"]
      173 CALL                             R19 1 1
      174 GETIMPORT                        R20 K5 [require]
      176 GETTABLEKS                       R21 R0 K14 ["Src"]
      178 GETTABLEKS                       R21 R21 K24 ["Util"]
      180 GETTABLEKS                       R21 R21 K36 ["Constants"]
      182 GETTABLEKS                       R21 R21 K37 ["MenuIdentifiers"]
      184 CALL                             R20 1 1
      185 GETTABLEKS                       R21 R0 K14 ["Src"]
      187 GETTABLEKS                       R21 R21 K38 ["Flags"]
      189 GETIMPORT                        R22 K5 [require]
      191 GETTABLEKS                       R23 R21 K39 ["getFFlagIAMDuplicate"]
      193 CALL                             R22 1 1
      194 GETIMPORT                        R23 K5 [require]
      196 GETTABLEKS                       R24 R21 K40 ["getFFlagIAMInputActionTypeFixes"]
      198 CALL                             R23 1 1
      199 GETIMPORT                        R24 K5 [require]
      201 GETTABLEKS                       R25 R0 K14 ["Src"]
      203 GETTABLEKS                       R25 R25 K38 ["Flags"]
      205 GETTABLEKS                       R25 R25 K41 ["getFFlagIAMIncorrectStatuses"]
      207 CALL                             R24 1 1
      208 GETIMPORT                        R25 K5 [require]
      210 GETTABLEKS                       R26 R21 K42 ["getFFlagIAMTelemetry"]
      212 CALL                             R25 1 1
      213 DUPCLOSURE                       R26 K43 [PROTO_10]
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R18
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R13
      229 CAPTURE                          VAL R22
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R11
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R9
      235 RETURN                           R26 1
