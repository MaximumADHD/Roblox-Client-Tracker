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
       95 GETTABLEKS                       R2 R2 K15 ["EDIT_ACTION_BOOL"]
       97 JUMPIFNOTEQ                      R0 R2 ; [+32]
       99 GETIMPORT                        R2 K19 [Enum.InputActionType.Bool]
      101 GETUPVAL                         R3 7
      102 CALL                             R3 0 1
      103 JUMPIFNOT                        R3 ; [+3]
      104 GETUPVAL                         R3 8
      105 MOVE                             R4 R2
      106 CALL                             R3 1 0
      107 GETUPVAL                         R3 5
      108 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      110 GETUPVAL                         R4 2
      111 GETTABLEKS                       R4 R4 K9 ["uuid"]
      113 DUPTABLE                         R5 K21 [{"type"}]
      114 SETTABLEKS                       R2 R5 K20 ["type"]
      116 CALL                             R3 2 0
      117 GETUPVAL                         R3 9
      118 CALL                             R3 0 1
      119 JUMPIFNOT                        R3 ; [+6]
      120 GETUPVAL                         R3 10
      121 GETTABLEKS                       R3 R3 K22 ["countInputActionTypeSelected"]
      123 GETIMPORT                        R4 K19 [Enum.InputActionType.Bool]
      125 CALL                             R3 1 0
      126 GETUPVAL                         R3 6
      127 LOADK                            R4 K12 ["Keycode"]
      128 CALL                             R3 1 0
      129 RETURN                           R0 0
      130 GETUPVAL                         R2 0
      131 GETTABLEKS                       R2 R2 K23 ["EDIT_ACTION_DIRECTION1D"]
      133 JUMPIFNOTEQ                      R0 R2 ; [+29]
      135 GETIMPORT                        R2 K25 [Enum.InputActionType.Direction1D]
      137 GETUPVAL                         R3 7
      138 CALL                             R3 0 1
      139 JUMPIFNOT                        R3 ; [+3]
      140 GETUPVAL                         R3 8
      141 MOVE                             R4 R2
      142 CALL                             R3 1 0
      143 GETUPVAL                         R3 5
      144 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      146 GETUPVAL                         R4 2
      147 GETTABLEKS                       R4 R4 K9 ["uuid"]
      149 DUPTABLE                         R5 K21 [{"type"}]
      150 SETTABLEKS                       R2 R5 K20 ["type"]
      152 CALL                             R3 2 0
      153 GETUPVAL                         R3 9
      154 CALL                             R3 0 1
      155 JUMPIFNOT                        R3 ; [+6]
      156 GETUPVAL                         R3 10
      157 GETTABLEKS                       R3 R3 K22 ["countInputActionTypeSelected"]
      159 GETIMPORT                        R4 K25 [Enum.InputActionType.Direction1D]
      161 CALL                             R3 1 0
      162 RETURN                           R0 0
      163 GETUPVAL                         R2 0
      164 GETTABLEKS                       R2 R2 K26 ["EDIT_ACTION_DIRECTION2D"]
      166 JUMPIFNOTEQ                      R0 R2 ; [+29]
      168 GETIMPORT                        R2 K28 [Enum.InputActionType.Direction2D]
      170 GETUPVAL                         R3 7
      171 CALL                             R3 0 1
      172 JUMPIFNOT                        R3 ; [+3]
      173 GETUPVAL                         R3 8
      174 MOVE                             R4 R2
      175 CALL                             R3 1 0
      176 GETUPVAL                         R3 5
      177 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      179 GETUPVAL                         R4 2
      180 GETTABLEKS                       R4 R4 K9 ["uuid"]
      182 DUPTABLE                         R5 K21 [{"type"}]
      183 SETTABLEKS                       R2 R5 K20 ["type"]
      185 CALL                             R3 2 0
      186 GETUPVAL                         R3 9
      187 CALL                             R3 0 1
      188 JUMPIFNOT                        R3 ; [+6]
      189 GETUPVAL                         R3 10
      190 GETTABLEKS                       R3 R3 K22 ["countInputActionTypeSelected"]
      192 GETIMPORT                        R4 K28 [Enum.InputActionType.Direction2D]
      194 CALL                             R3 1 0
      195 RETURN                           R0 0
      196 GETUPVAL                         R2 0
      197 GETTABLEKS                       R2 R2 K29 ["EDIT_ACTION_DIRECTION3D"]
      199 JUMPIFNOTEQ                      R0 R2 ; [+29]
      201 GETIMPORT                        R2 K31 [Enum.InputActionType.Direction3D]
      203 GETUPVAL                         R3 7
      204 CALL                             R3 0 1
      205 JUMPIFNOT                        R3 ; [+3]
      206 GETUPVAL                         R3 8
      207 MOVE                             R4 R2
      208 CALL                             R3 1 0
      209 GETUPVAL                         R3 5
      210 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      212 GETUPVAL                         R4 2
      213 GETTABLEKS                       R4 R4 K9 ["uuid"]
      215 DUPTABLE                         R5 K21 [{"type"}]
      216 SETTABLEKS                       R2 R5 K20 ["type"]
      218 CALL                             R3 2 0
      219 GETUPVAL                         R3 9
      220 CALL                             R3 0 1
      221 JUMPIFNOT                        R3 ; [+6]
      222 GETUPVAL                         R3 10
      223 GETTABLEKS                       R3 R3 K22 ["countInputActionTypeSelected"]
      225 GETIMPORT                        R4 K31 [Enum.InputActionType.Direction3D]
      227 CALL                             R3 1 0
      228 RETURN                           R0 0
      229 RETURN                           R0 0

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
      123 CAPTURE                          VAL R16
      124 CAPTURE                          UPVAL U2
      125 CAPTURE                          VAL R2
      126 CALL                             R18 1 1
      127 GETUPVAL                         R19 12
      128 GETTABLEKS                       R19 R19 K10 ["createNextOrder"]
      130 CALL                             R19 0 1
      131 JUMPIFEQKNIL                     R3 ; [+3]
      133 JUMPIFNOTEQKNIL                  R4 ; [+3]
      135 LOADNIL                          R20
      136 RETURN                           R20 1
      137 JUMPIFNOTEQKNIL                  R6 ; [+80]
      139 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      141 LENGTH                           R20 R21
      142 LOADN                            R21 1
      143 JUMPIFNOTLE                      R20 R21 ; [+8]
      145 GETTABLEKS                       R21 R4 K5 ["Composite"]
      147 LENGTH                           R20 R21
      148 JUMPIFNOTEQKN                    R20 K11 [0] ; [+3]
      150 JUMPIFEQKNIL                     R12 ; [+3]
      152 JUMPIFNOTEQKS                    R12 K4 ["Keycode"] ; [+65]
      154 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      156 GETTABLEN                        R20 R21 1
      157 JUMPIF                           R20 ; [+2]
      158 NEWTABLE                         R20 0 0
      160 GETUPVAL                         R21 0
      161 GETTABLEKS                       R21 R21 K12 ["createElement"]
      163 GETUPVAL                         R22 16
      164 DUPTABLE                         R23 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      165 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      167 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      169 LOADK                            R25 K18 ["action-%*"]
      170 GETTABLEKS                       R27 R3 K19 ["name"]
      172 NAMECALL                         R25 R25 K20 ["format"]
      174 CALL                             R25 2 1
      175 MOVE                             R24 R25
      176 SETTABLEKS                       R24 R23 K16 ["testId"]
      178 DUPTABLE                         R24 K22 [{"HeaderRow"}]
      179 GETUPVAL                         R25 0
      180 GETTABLEKS                       R25 R25 K12 ["createElement"]
      182 GETUPVAL                         R26 17
      183 DUPTABLE                         R27 K33 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingEditCommand"], ["onCreateMenuItemSelected"], ["validBindingsBySchema"]}]
      184 SETTABLEKS                       R3 R27 K23 ["action"]
      186 SETTABLEKS                       R20 R27 K24 ["bindings"]
      188 SETTABLEKS                       R5 R27 K27 ["createMenu"]
      190 MOVE                             R28 R19
      191 CALL                             R28 0 1
      192 SETTABLEKS                       R28 R27 K13 ["LayoutOrder"]
      194 GETTABLEKS                       R28 R3 K19 ["name"]
      196 SETTABLEKS                       R28 R27 K19 ["name"]
      198 NEWCLOSURE                       R28 P4
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R20
      201 SETTABLEKS                       R28 R27 K30 ["onBindingEditCommand"]
      203 SETTABLEKS                       R7 R27 K31 ["onCreateMenuItemSelected"]
      205 GETUPVAL                         R29 9
      206 CALL                             R29 0 1
      207 JUMPIFNOT                        R29 ; [+2]
      208 MOVE                             R28 R15
      209 JUMP                             ; [+1]
      210 LOADNIL                          R28
      211 SETTABLEKS                       R28 R27 K32 ["validBindingsBySchema"]
      213 CALL                             R25 2 1
      214 SETTABLEKS                       R25 R24 K21 ["HeaderRow"]
      216 CALL                             R21 3 -1
      217 RETURN                           R21 -1
      218 JUMPIFNOTEQKNIL                  R6 ; [+86]
      220 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      222 LENGTH                           R20 R21
      223 JUMPIFNOTEQKN                    R20 K11 [0] ; [+9]
      225 GETTABLEKS                       R21 R4 K5 ["Composite"]
      227 LENGTH                           R20 R21
      228 LOADN                            R21 1
      229 JUMPIFNOTLE                      R20 R21 ; [+3]
      231 JUMPIFEQKNIL                     R12 ; [+3]
      233 JUMPIFNOTEQKS                    R12 K5 ["Composite"] ; [+71]
      235 GETTABLEKS                       R22 R4 K5 ["Composite"]
      237 LENGTH                           R21 R22
      238 LOADN                            R22 0
      239 JUMPIFNOTLT                      R22 R21 ; [+5]
      241 GETTABLEKS                       R21 R4 K5 ["Composite"]
      243 GETTABLEN                        R20 R21 1
      244 JUMP                             ; [+2]
      245 NEWTABLE                         R20 0 0
      247 GETUPVAL                         R21 0
      248 GETTABLEKS                       R21 R21 K12 ["createElement"]
      250 GETUPVAL                         R22 16
      251 DUPTABLE                         R23 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      252 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      254 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      256 LOADK                            R25 K18 ["action-%*"]
      257 GETTABLEKS                       R27 R3 K19 ["name"]
      259 NAMECALL                         R25 R25 K20 ["format"]
      261 CALL                             R25 2 1
      262 MOVE                             R24 R25
      263 SETTABLEKS                       R24 R23 K16 ["testId"]
      265 DUPTABLE                         R24 K22 [{"HeaderRow"}]
      266 GETUPVAL                         R25 0
      267 GETTABLEKS                       R25 R25 K12 ["createElement"]
      269 GETUPVAL                         R26 18
      270 DUPTABLE                         R27 K33 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingEditCommand"], ["onCreateMenuItemSelected"], ["validBindingsBySchema"]}]
      271 SETTABLEKS                       R3 R27 K23 ["action"]
      273 SETTABLEKS                       R20 R27 K24 ["bindings"]
      275 SETTABLEKS                       R5 R27 K27 ["createMenu"]
      277 MOVE                             R28 R19
      278 CALL                             R28 0 1
      279 SETTABLEKS                       R28 R27 K13 ["LayoutOrder"]
      281 GETTABLEKS                       R28 R3 K19 ["name"]
      283 SETTABLEKS                       R28 R27 K19 ["name"]
      285 NEWCLOSURE                       R28 P5
      286 CAPTURE                          VAL R18
      287 CAPTURE                          VAL R20
      288 SETTABLEKS                       R28 R27 K30 ["onBindingEditCommand"]
      290 SETTABLEKS                       R7 R27 K31 ["onCreateMenuItemSelected"]
      292 GETUPVAL                         R29 9
      293 CALL                             R29 0 1
      294 JUMPIFNOT                        R29 ; [+2]
      295 MOVE                             R28 R15
      296 JUMP                             ; [+1]
      297 LOADNIL                          R28
      298 SETTABLEKS                       R28 R27 K32 ["validBindingsBySchema"]
      300 CALL                             R25 2 1
      301 SETTABLEKS                       R25 R24 K21 ["HeaderRow"]
      303 CALL                             R21 3 -1
      304 RETURN                           R21 -1
      305 DUPTABLE                         R20 K36 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite"}]
      306 GETUPVAL                         R21 0
      307 GETTABLEKS                       R21 R21 K12 ["createElement"]
      309 GETUPVAL                         R22 19
      310 DUPTABLE                         R23 K38 [{"bindings", "LayoutOrder", "nodeProps"}]
      311 GETTABLEKS                       R24 R4 K39 ["All"]
      313 SETTABLEKS                       R24 R23 K24 ["bindings"]
      315 MOVE                             R24 R19
      316 CALL                             R24 0 1
      317 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      319 DUPTABLE                         R24 K47 [{["action"], ["createMenu"], ["depth"] = 1, ["editMenu"], ["expanded"], ["icon"] = "InputAction", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      320 SETTABLEKS                       R3 R24 K23 ["action"]
      322 SETTABLEKS                       R5 R24 K27 ["createMenu"]
      324 SETTABLEKS                       R17 R24 K41 ["editMenu"]
      326 SETTABLEKS                       R10 R24 K42 ["expanded"]
      328 GETTABLEKS                       R25 R3 K19 ["name"]
      330 SETTABLEKS                       R25 R24 K19 ["name"]
      332 SETTABLEKS                       R7 R24 K31 ["onCreateMenuItemSelected"]
      334 SETTABLEKS                       R18 R24 K45 ["onEditMenuItemSelected"]
      336 SETTABLEKS                       R11 R24 K46 ["setExpanded"]
      338 SETTABLEKS                       R24 R23 K37 ["nodeProps"]
      340 CALL                             R21 2 1
      341 SETTABLEKS                       R21 R20 K21 ["HeaderRow"]
      343 LOADB                            R21 0
      344 JUMPIFNOTEQKS                    R6 K4 ["Keycode"] ; [+39]
      346 GETUPVAL                         R21 0
      347 GETTABLEKS                       R21 R21 K12 ["createElement"]
      349 GETUPVAL                         R22 17
      350 DUPTABLE                         R23 K50 [{"action", "bindings", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      351 SETTABLEKS                       R3 R23 K23 ["action"]
      353 NEWTABLE                         R24 0 0
      355 SETTABLEKS                       R24 R23 K24 ["bindings"]
      357 GETTABLEKS                       R26 R4 K4 ["Keycode"]
      359 LENGTH                           R25 R26
      360 ADDK                             R24 R25 K29 [1]
      361 SETTABLEKS                       R24 R23 K28 ["index"]
      363 MOVE                             R24 R19
      364 CALL                             R24 0 1
      365 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      367 SETTABLEKS                       R8 R23 K48 ["onCreated"]
      369 SETTABLEKS                       R9 R23 K49 ["onCancelBinding"]
      371 NEWCLOSURE                       R24 P6
      372 CAPTURE                          VAL R18
      373 SETTABLEKS                       R24 R23 K30 ["onBindingEditCommand"]
      375 GETUPVAL                         R25 9
      376 CALL                             R25 0 1
      377 JUMPIFNOT                        R25 ; [+2]
      378 MOVE                             R24 R15
      379 JUMP                             ; [+1]
      380 LOADNIL                          R24
      381 SETTABLEKS                       R24 R23 K32 ["validBindingsBySchema"]
      383 CALL                             R21 2 1
      384 SETTABLEKS                       R21 R20 K34 ["CreatingKeyBind"]
      386 LOADB                            R21 0
      387 JUMPIFNOTEQKS                    R6 K5 ["Composite"] ; [+39]
      389 GETUPVAL                         R21 0
      390 GETTABLEKS                       R21 R21 K12 ["createElement"]
      392 GETUPVAL                         R22 18
      393 DUPTABLE                         R23 K50 [{"action", "bindings", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      394 SETTABLEKS                       R3 R23 K23 ["action"]
      396 NEWTABLE                         R24 0 0
      398 SETTABLEKS                       R24 R23 K24 ["bindings"]
      400 GETTABLEKS                       R26 R4 K5 ["Composite"]
      402 LENGTH                           R25 R26
      403 ADDK                             R24 R25 K29 [1]
      404 SETTABLEKS                       R24 R23 K28 ["index"]
      406 MOVE                             R24 R19
      407 CALL                             R24 0 1
      408 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      410 SETTABLEKS                       R8 R23 K48 ["onCreated"]
      412 SETTABLEKS                       R9 R23 K49 ["onCancelBinding"]
      414 NEWCLOSURE                       R24 P7
      415 CAPTURE                          VAL R18
      416 SETTABLEKS                       R24 R23 K30 ["onBindingEditCommand"]
      418 GETUPVAL                         R25 9
      419 CALL                             R25 0 1
      420 JUMPIFNOT                        R25 ; [+2]
      421 MOVE                             R24 R15
      422 JUMP                             ; [+1]
      423 LOADNIL                          R24
      424 SETTABLEKS                       R24 R23 K32 ["validBindingsBySchema"]
      426 CALL                             R21 2 1
      427 SETTABLEKS                       R21 R20 K35 ["CreatingComposite"]
      429 JUMPIFNOT                        R10 ; [+108]
      430 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      432 LOADNIL                          R22
      433 LOADNIL                          R23
      434 FORGPREP                         R21
      435 LOADK                            R27 K51 ["Keycode_%*"]
      436 MOVE                             R29 R24
      437 NAMECALL                         R27 R27 K20 ["format"]
      439 CALL                             R27 2 1
      440 MOVE                             R26 R27
      441 GETUPVAL                         R27 0
      442 GETTABLEKS                       R27 R27 K12 ["createElement"]
      444 GETUPVAL                         R28 17
      445 DUPTABLE                         R29 K53 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      446 SETTABLEKS                       R3 R29 K23 ["action"]
      448 SETTABLEKS                       R25 R29 K24 ["bindings"]
      450 SETTABLEKS                       R24 R29 K28 ["index"]
      452 MOVE                             R30 R19
      453 CALL                             R30 0 1
      454 SETTABLEKS                       R30 R29 K13 ["LayoutOrder"]
      456 NEWCLOSURE                       R30 P8
      457 CAPTURE                          VAL R18
      458 CAPTURE                          VAL R25
      459 SETTABLEKS                       R30 R29 K30 ["onBindingEditCommand"]
      461 LOADN                            R31 1
      462 JUMPIFNOTLT                      R31 R24 ; [+6]
      464 GETTABLEKS                       R31 R4 K4 ["Keycode"]
      466 SUBK                             R32 R24 K29 [1]
      467 GETTABLE                         R30 R31 R32
      468 JUMP                             ; [+1]
      469 LOADNIL                          R30
      470 SETTABLEKS                       R30 R29 K52 ["previousBindings"]
      472 GETUPVAL                         R31 9
      473 CALL                             R31 0 1
      474 JUMPIFNOT                        R31 ; [+2]
      475 MOVE                             R30 R15
      476 JUMP                             ; [+1]
      477 LOADNIL                          R30
      478 SETTABLEKS                       R30 R29 K32 ["validBindingsBySchema"]
      480 CALL                             R27 2 1
      481 SETTABLE                         R27 R20 R26
      482 FORGLOOP                         R21 2 ; [-48]
      484 GETTABLEKS                       R21 R4 K5 ["Composite"]
      486 LOADNIL                          R22
      487 LOADNIL                          R23
      488 FORGPREP                         R21
      489 LOADK                            R27 K54 ["Composite_%*"]
      490 MOVE                             R29 R24
      491 NAMECALL                         R27 R27 K20 ["format"]
      493 CALL                             R27 2 1
      494 MOVE                             R26 R27
      495 GETUPVAL                         R27 0
      496 GETTABLEKS                       R27 R27 K12 ["createElement"]
      498 GETUPVAL                         R28 18
      499 DUPTABLE                         R29 K53 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      500 SETTABLEKS                       R3 R29 K23 ["action"]
      502 SETTABLEKS                       R25 R29 K24 ["bindings"]
      504 SETTABLEKS                       R24 R29 K28 ["index"]
      506 MOVE                             R30 R19
      507 CALL                             R30 0 1
      508 SETTABLEKS                       R30 R29 K13 ["LayoutOrder"]
      510 NEWCLOSURE                       R30 P9
      511 CAPTURE                          VAL R18
      512 CAPTURE                          VAL R25
      513 SETTABLEKS                       R30 R29 K30 ["onBindingEditCommand"]
      515 LOADN                            R31 1
      516 JUMPIFNOTLT                      R31 R24 ; [+6]
      518 GETTABLEKS                       R31 R4 K5 ["Composite"]
      520 SUBK                             R32 R24 K29 [1]
      521 GETTABLE                         R30 R31 R32
      522 JUMP                             ; [+1]
      523 LOADNIL                          R30
      524 SETTABLEKS                       R30 R29 K52 ["previousBindings"]
      526 GETUPVAL                         R31 9
      527 CALL                             R31 0 1
      528 JUMPIFNOT                        R31 ; [+2]
      529 MOVE                             R30 R15
      530 JUMP                             ; [+1]
      531 LOADNIL                          R30
      532 SETTABLEKS                       R30 R29 K32 ["validBindingsBySchema"]
      534 CALL                             R27 2 1
      535 SETTABLE                         R27 R20 R26
      536 FORGLOOP                         R21 2 ; [-48]
      538 GETUPVAL                         R21 0
      539 GETTABLEKS                       R21 R21 K12 ["createElement"]
      541 GETUPVAL                         R22 16
      542 DUPTABLE                         R23 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      543 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      545 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      547 LOADK                            R25 K18 ["action-%*"]
      548 GETTABLEKS                       R27 R3 K19 ["name"]
      550 NAMECALL                         R25 R25 K20 ["format"]
      552 CALL                             R25 2 1
      553 MOVE                             R24 R25
      554 SETTABLEKS                       R24 R23 K16 ["testId"]
      556 MOVE                             R24 R20
      557 CALL                             R21 3 -1
      558 RETURN                           R21 -1

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
      191 GETTABLEKS                       R23 R21 K39 ["getFFlagIAMInputActionTypeFixes"]
      193 CALL                             R22 1 1
      194 GETIMPORT                        R23 K5 [require]
      196 GETTABLEKS                       R24 R0 K14 ["Src"]
      198 GETTABLEKS                       R24 R24 K38 ["Flags"]
      200 GETTABLEKS                       R24 R24 K40 ["getFFlagIAMIncorrectStatuses"]
      202 CALL                             R23 1 1
      203 GETIMPORT                        R24 K5 [require]
      205 GETTABLEKS                       R25 R21 K41 ["getFFlagIAMTelemetry"]
      207 CALL                             R24 1 1
      208 DUPCLOSURE                       R25 K42 [PROTO_10]
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R17
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R6
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R10
      228 CAPTURE                          VAL R9
      229 RETURN                           R25 1
