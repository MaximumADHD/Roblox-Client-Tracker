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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+79]
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
       51 JUMPIFEQ                         R0 R3 ; [+8]
       53 GETUPVAL                         R3 3
       54 CALL                             R3 0 1
       55 JUMPIFNOT                        R3 ; [+25]
       56 GETIMPORT                        R3 K11 [Enum.InputActionType.ViewportPosition]
       58 JUMPIFNOTEQ                      R0 R3 ; [+22]
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K12 ["Composite"]
       63 LOADNIL                          R4
       64 LOADNIL                          R5
       65 FORGPREP                         R3
       66 MOVE                             R8 R7
       67 LOADNIL                          R9
       68 LOADNIL                          R10
       69 FORGPREP                         R8
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R13 R13 K8 ["updateBinding"]
       73 GETTABLEKS                       R14 R12 K9 ["uuid"]
       75 LOADNIL                          R15
       76 CALL                             R13 2 0
       77 FORGLOOP                         R8 2 ; [-8]
       79 FORGLOOP                         R3 2 ; [-14]
       81 RETURN                           R0 0

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
      113 JUMPIFNOTEQ                      R0 R2 ; [+26]
      115 GETIMPORT                        R2 K21 [Enum.InputActionType.Bool]
      117 GETUPVAL                         R3 8
      118 MOVE                             R4 R2
      119 CALL                             R3 1 0
      120 GETUPVAL                         R3 5
      121 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      123 GETUPVAL                         R4 2
      124 GETTABLEKS                       R4 R4 K9 ["uuid"]
      126 DUPTABLE                         R5 K23 [{"type"}]
      127 SETTABLEKS                       R2 R5 K22 ["type"]
      129 CALL                             R3 2 0
      130 GETUPVAL                         R3 9
      131 GETTABLEKS                       R3 R3 K24 ["countInputActionTypeSelected"]
      133 GETIMPORT                        R4 K21 [Enum.InputActionType.Bool]
      135 CALL                             R3 1 0
      136 GETUPVAL                         R3 6
      137 LOADK                            R4 K12 ["Keycode"]
      138 CALL                             R3 1 0
      139 RETURN                           R0 0
      140 GETUPVAL                         R2 0
      141 GETTABLEKS                       R2 R2 K25 ["EDIT_ACTION_DIRECTION1D"]
      143 JUMPIFNOTEQ                      R0 R2 ; [+23]
      145 GETIMPORT                        R2 K27 [Enum.InputActionType.Direction1D]
      147 GETUPVAL                         R3 8
      148 MOVE                             R4 R2
      149 CALL                             R3 1 0
      150 GETUPVAL                         R3 5
      151 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      153 GETUPVAL                         R4 2
      154 GETTABLEKS                       R4 R4 K9 ["uuid"]
      156 DUPTABLE                         R5 K23 [{"type"}]
      157 SETTABLEKS                       R2 R5 K22 ["type"]
      159 CALL                             R3 2 0
      160 GETUPVAL                         R3 9
      161 GETTABLEKS                       R3 R3 K24 ["countInputActionTypeSelected"]
      163 GETIMPORT                        R4 K27 [Enum.InputActionType.Direction1D]
      165 CALL                             R3 1 0
      166 RETURN                           R0 0
      167 GETUPVAL                         R2 0
      168 GETTABLEKS                       R2 R2 K28 ["EDIT_ACTION_DIRECTION2D"]
      170 JUMPIFNOTEQ                      R0 R2 ; [+23]
      172 GETIMPORT                        R2 K30 [Enum.InputActionType.Direction2D]
      174 GETUPVAL                         R3 8
      175 MOVE                             R4 R2
      176 CALL                             R3 1 0
      177 GETUPVAL                         R3 5
      178 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      180 GETUPVAL                         R4 2
      181 GETTABLEKS                       R4 R4 K9 ["uuid"]
      183 DUPTABLE                         R5 K23 [{"type"}]
      184 SETTABLEKS                       R2 R5 K22 ["type"]
      186 CALL                             R3 2 0
      187 GETUPVAL                         R3 9
      188 GETTABLEKS                       R3 R3 K24 ["countInputActionTypeSelected"]
      190 GETIMPORT                        R4 K30 [Enum.InputActionType.Direction2D]
      192 CALL                             R3 1 0
      193 RETURN                           R0 0
      194 GETUPVAL                         R2 0
      195 GETTABLEKS                       R2 R2 K31 ["EDIT_ACTION_DIRECTION3D"]
      197 JUMPIFNOTEQ                      R0 R2 ; [+23]
      199 GETIMPORT                        R2 K33 [Enum.InputActionType.Direction3D]
      201 GETUPVAL                         R3 8
      202 MOVE                             R4 R2
      203 CALL                             R3 1 0
      204 GETUPVAL                         R3 5
      205 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      207 GETUPVAL                         R4 2
      208 GETTABLEKS                       R4 R4 K9 ["uuid"]
      210 DUPTABLE                         R5 K23 [{"type"}]
      211 SETTABLEKS                       R2 R5 K22 ["type"]
      213 CALL                             R3 2 0
      214 GETUPVAL                         R3 9
      215 GETTABLEKS                       R3 R3 K24 ["countInputActionTypeSelected"]
      217 GETIMPORT                        R4 K33 [Enum.InputActionType.Direction3D]
      219 CALL                             R3 1 0
      220 RETURN                           R0 0
      221 GETUPVAL                         R2 10
      222 CALL                             R2 0 1
      223 JUMPIFNOT                        R2 ; [+30]
      224 GETUPVAL                         R2 0
      225 GETTABLEKS                       R2 R2 K34 ["EDIT_ACTION_VIEWPORT_POSITION"]
      227 JUMPIFNOTEQ                      R0 R2 ; [+26]
      229 GETIMPORT                        R2 K36 [Enum.InputActionType.ViewportPosition]
      231 GETUPVAL                         R3 8
      232 MOVE                             R4 R2
      233 CALL                             R3 1 0
      234 GETUPVAL                         R3 5
      235 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      237 GETUPVAL                         R4 2
      238 GETTABLEKS                       R4 R4 K9 ["uuid"]
      240 DUPTABLE                         R5 K23 [{"type"}]
      241 SETTABLEKS                       R2 R5 K22 ["type"]
      243 CALL                             R3 2 0
      244 GETUPVAL                         R3 9
      245 GETTABLEKS                       R3 R3 K24 ["countInputActionTypeSelected"]
      247 GETIMPORT                        R4 K36 [Enum.InputActionType.ViewportPosition]
      249 CALL                             R3 1 0
      250 GETUPVAL                         R3 6
      251 LOADK                            R4 K12 ["Keycode"]
      252 CALL                             R3 1 0
      253 RETURN                           R0 0
      254 RETURN                           R0 0

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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R4 R0 K2 ["uuid"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 4
       19 MOVE                             R5 R3
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 5
       22 JUMPIFNOT                        R3 ; [+3]
       23 GETTABLEKS                       R6 R3 K3 ["type"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R6
       27 CALL                             R5 1 5
       28 GETUPVAL                         R10 6
       29 GETTABLEKS                       R11 R0 K2 ["uuid"]
       31 JUMPIFNOT                        R4 ; [+16]
       32 LOADB                            R12 1
       33 GETTABLEKS                       R15 R4 K4 ["Keycode"]
       35 LENGTH                           R14 R15
       36 GETTABLEKS                       R16 R4 K5 ["Composite"]
       38 LENGTH                           R15 R16
       39 ADD                              R13 R14 R15
       40 LOADN                            R14 1
       41 JUMPIFLT                         R14 R13 ; [+7]
       43 JUMPIFNOTEQKNIL                  R6 ; [+2]
       45 LOADB                            R12 0 +1
       46 LOADB                            R12 1
       47 JUMP                             ; [+1]
       48 LOADB                            R12 0
       49 CALL                             R10 2 2
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K6 ["useState"]
       53 LOADNIL                          R13
       54 CALL                             R12 1 2
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R14 R14 K0 ["useContext"]
       58 GETUPVAL                         R15 7
       59 GETTABLEKS                       R15 R15 K1 ["Context"]
       61 CALL                             R14 1 1
       62 GETUPVAL                         R15 0
       63 GETTABLEKS                       R15 R15 K7 ["useMemo"]
       65 NEWCLOSURE                       R16 P0
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R3
       68 CAPTURE                          UPVAL U8
       69 NEWTABLE                         R17 0 2
       71 MOVE                             R18 R4
       72 MOVE                             R19 R3
       73 SETLIST                          R17 R18 2 [1]
       75 CALL                             R15 2 1
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R16 R16 K8 ["useCallback"]
       79 NEWCLOSURE                       R17 P1
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R14
       83 CAPTURE                          UPVAL U9
       84 NEWTABLE                         R18 0 3
       86 MOVE                             R19 R3
       87 MOVE                             R20 R4
       88 MOVE                             R21 R14
       89 SETLIST                          R18 R19 3 [1]
       91 CALL                             R16 2 1
       92 GETUPVAL                         R17 0
       93 GETTABLEKS                       R17 R17 K7 ["useMemo"]
       95 NEWCLOSURE                       R18 P2
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R19 0 2
      101 MOVE                             R20 R1
      102 MOVE                             R21 R3
      103 SETLIST                          R19 R20 2 [1]
      105 CALL                             R17 2 1
      106 GETUPVAL                         R18 11
      107 GETTABLEKS                       R18 R18 K9 ["useEventCallback"]
      109 NEWCLOSURE                       R19 P3
      110 CAPTURE                          UPVAL U12
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R4
      114 CAPTURE                          UPVAL U13
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R13
      117 CAPTURE                          UPVAL U14
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R2
      120 CAPTURE                          UPVAL U9
      121 CALL                             R18 1 1
      122 GETUPVAL                         R19 11
      123 GETTABLEKS                       R19 R19 K10 ["createNextOrder"]
      125 CALL                             R19 0 1
      126 JUMPIFEQKNIL                     R3 ; [+3]
      128 JUMPIFNOTEQKNIL                  R4 ; [+3]
      130 LOADNIL                          R20
      131 RETURN                           R20 1
      132 JUMPIFNOTEQKNIL                  R6 ; [+74]
      134 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      136 LENGTH                           R20 R21
      137 LOADN                            R21 1
      138 JUMPIFNOTLE                      R20 R21 ; [+8]
      140 GETTABLEKS                       R21 R4 K5 ["Composite"]
      142 LENGTH                           R20 R21
      143 JUMPIFNOTEQKN                    R20 K11 [0] ; [+3]
      145 JUMPIFEQKNIL                     R12 ; [+3]
      147 JUMPIFNOTEQKS                    R12 K4 ["Keycode"] ; [+59]
      149 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      151 GETTABLEN                        R20 R21 1
      152 JUMPIF                           R20 ; [+2]
      153 NEWTABLE                         R20 0 0
      155 GETUPVAL                         R21 0
      156 GETTABLEKS                       R21 R21 K12 ["createElement"]
      158 GETUPVAL                         R22 15
      159 DUPTABLE                         R23 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      160 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      162 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      164 LOADK                            R25 K18 ["action-%*"]
      165 GETTABLEKS                       R27 R3 K19 ["name"]
      167 NAMECALL                         R25 R25 K20 ["format"]
      169 CALL                             R25 2 1
      170 MOVE                             R24 R25
      171 SETTABLEKS                       R24 R23 K16 ["testId"]
      173 DUPTABLE                         R24 K22 [{"HeaderRow"}]
      174 GETUPVAL                         R25 0
      175 GETTABLEKS                       R25 R25 K12 ["createElement"]
      177 GETUPVAL                         R26 16
      178 DUPTABLE                         R27 K33 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingEditCommand"], ["onCreateMenuItemSelected"], ["validBindingsBySchema"]}]
      179 SETTABLEKS                       R3 R27 K23 ["action"]
      181 SETTABLEKS                       R20 R27 K24 ["bindings"]
      183 SETTABLEKS                       R5 R27 K27 ["createMenu"]
      185 MOVE                             R28 R19
      186 CALL                             R28 0 1
      187 SETTABLEKS                       R28 R27 K13 ["LayoutOrder"]
      189 GETTABLEKS                       R28 R3 K19 ["name"]
      191 SETTABLEKS                       R28 R27 K19 ["name"]
      193 NEWCLOSURE                       R28 P4
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R20
      196 SETTABLEKS                       R28 R27 K30 ["onBindingEditCommand"]
      198 SETTABLEKS                       R7 R27 K31 ["onCreateMenuItemSelected"]
      200 SETTABLEKS                       R15 R27 K32 ["validBindingsBySchema"]
      202 CALL                             R25 2 1
      203 SETTABLEKS                       R25 R24 K21 ["HeaderRow"]
      205 CALL                             R21 3 -1
      206 RETURN                           R21 -1
      207 JUMPIFNOTEQKNIL                  R6 ; [+80]
      209 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      211 LENGTH                           R20 R21
      212 JUMPIFNOTEQKN                    R20 K11 [0] ; [+9]
      214 GETTABLEKS                       R21 R4 K5 ["Composite"]
      216 LENGTH                           R20 R21
      217 LOADN                            R21 1
      218 JUMPIFNOTLE                      R20 R21 ; [+3]
      220 JUMPIFEQKNIL                     R12 ; [+3]
      222 JUMPIFNOTEQKS                    R12 K5 ["Composite"] ; [+65]
      224 GETTABLEKS                       R22 R4 K5 ["Composite"]
      226 LENGTH                           R21 R22
      227 LOADN                            R22 0
      228 JUMPIFNOTLT                      R22 R21 ; [+5]
      230 GETTABLEKS                       R21 R4 K5 ["Composite"]
      232 GETTABLEN                        R20 R21 1
      233 JUMP                             ; [+2]
      234 NEWTABLE                         R20 0 0
      236 GETUPVAL                         R21 0
      237 GETTABLEKS                       R21 R21 K12 ["createElement"]
      239 GETUPVAL                         R22 15
      240 DUPTABLE                         R23 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      241 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      243 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      245 LOADK                            R25 K18 ["action-%*"]
      246 GETTABLEKS                       R27 R3 K19 ["name"]
      248 NAMECALL                         R25 R25 K20 ["format"]
      250 CALL                             R25 2 1
      251 MOVE                             R24 R25
      252 SETTABLEKS                       R24 R23 K16 ["testId"]
      254 DUPTABLE                         R24 K22 [{"HeaderRow"}]
      255 GETUPVAL                         R25 0
      256 GETTABLEKS                       R25 R25 K12 ["createElement"]
      258 GETUPVAL                         R26 17
      259 DUPTABLE                         R27 K33 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingEditCommand"], ["onCreateMenuItemSelected"], ["validBindingsBySchema"]}]
      260 SETTABLEKS                       R3 R27 K23 ["action"]
      262 SETTABLEKS                       R20 R27 K24 ["bindings"]
      264 SETTABLEKS                       R5 R27 K27 ["createMenu"]
      266 MOVE                             R28 R19
      267 CALL                             R28 0 1
      268 SETTABLEKS                       R28 R27 K13 ["LayoutOrder"]
      270 GETTABLEKS                       R28 R3 K19 ["name"]
      272 SETTABLEKS                       R28 R27 K19 ["name"]
      274 NEWCLOSURE                       R28 P5
      275 CAPTURE                          VAL R18
      276 CAPTURE                          VAL R20
      277 SETTABLEKS                       R28 R27 K30 ["onBindingEditCommand"]
      279 SETTABLEKS                       R7 R27 K31 ["onCreateMenuItemSelected"]
      281 SETTABLEKS                       R15 R27 K32 ["validBindingsBySchema"]
      283 CALL                             R25 2 1
      284 SETTABLEKS                       R25 R24 K21 ["HeaderRow"]
      286 CALL                             R21 3 -1
      287 RETURN                           R21 -1
      288 DUPTABLE                         R20 K36 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite"}]
      289 GETUPVAL                         R21 0
      290 GETTABLEKS                       R21 R21 K12 ["createElement"]
      292 GETUPVAL                         R22 18
      293 DUPTABLE                         R23 K38 [{"bindings", "LayoutOrder", "nodeProps"}]
      294 GETTABLEKS                       R24 R4 K39 ["All"]
      296 SETTABLEKS                       R24 R23 K24 ["bindings"]
      298 MOVE                             R24 R19
      299 CALL                             R24 0 1
      300 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      302 DUPTABLE                         R24 K47 [{["action"], ["createMenu"], ["depth"] = 1, ["editMenu"], ["expanded"], ["icon"] = "InputAction", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      303 SETTABLEKS                       R3 R24 K23 ["action"]
      305 SETTABLEKS                       R5 R24 K27 ["createMenu"]
      307 SETTABLEKS                       R17 R24 K41 ["editMenu"]
      309 SETTABLEKS                       R10 R24 K42 ["expanded"]
      311 GETTABLEKS                       R25 R3 K19 ["name"]
      313 SETTABLEKS                       R25 R24 K19 ["name"]
      315 SETTABLEKS                       R7 R24 K31 ["onCreateMenuItemSelected"]
      317 SETTABLEKS                       R18 R24 K45 ["onEditMenuItemSelected"]
      319 SETTABLEKS                       R11 R24 K46 ["setExpanded"]
      321 SETTABLEKS                       R24 R23 K37 ["nodeProps"]
      323 CALL                             R21 2 1
      324 SETTABLEKS                       R21 R20 K21 ["HeaderRow"]
      326 LOADB                            R21 0
      327 JUMPIFNOTEQKS                    R6 K4 ["Keycode"] ; [+33]
      329 GETUPVAL                         R21 0
      330 GETTABLEKS                       R21 R21 K12 ["createElement"]
      332 GETUPVAL                         R22 16
      333 DUPTABLE                         R23 K50 [{"action", "bindings", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      334 SETTABLEKS                       R3 R23 K23 ["action"]
      336 NEWTABLE                         R24 0 0
      338 SETTABLEKS                       R24 R23 K24 ["bindings"]
      340 GETTABLEKS                       R26 R4 K4 ["Keycode"]
      342 LENGTH                           R25 R26
      343 ADDK                             R24 R25 K29 [1]
      344 SETTABLEKS                       R24 R23 K28 ["index"]
      346 MOVE                             R24 R19
      347 CALL                             R24 0 1
      348 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      350 SETTABLEKS                       R8 R23 K48 ["onCreated"]
      352 SETTABLEKS                       R9 R23 K49 ["onCancelBinding"]
      354 NEWCLOSURE                       R24 P6
      355 CAPTURE                          VAL R18
      356 SETTABLEKS                       R24 R23 K30 ["onBindingEditCommand"]
      358 SETTABLEKS                       R15 R23 K32 ["validBindingsBySchema"]
      360 CALL                             R21 2 1
      361 SETTABLEKS                       R21 R20 K34 ["CreatingKeyBind"]
      363 LOADB                            R21 0
      364 JUMPIFNOTEQKS                    R6 K5 ["Composite"] ; [+33]
      366 GETUPVAL                         R21 0
      367 GETTABLEKS                       R21 R21 K12 ["createElement"]
      369 GETUPVAL                         R22 17
      370 DUPTABLE                         R23 K50 [{"action", "bindings", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      371 SETTABLEKS                       R3 R23 K23 ["action"]
      373 NEWTABLE                         R24 0 0
      375 SETTABLEKS                       R24 R23 K24 ["bindings"]
      377 GETTABLEKS                       R26 R4 K5 ["Composite"]
      379 LENGTH                           R25 R26
      380 ADDK                             R24 R25 K29 [1]
      381 SETTABLEKS                       R24 R23 K28 ["index"]
      383 MOVE                             R24 R19
      384 CALL                             R24 0 1
      385 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      387 SETTABLEKS                       R8 R23 K48 ["onCreated"]
      389 SETTABLEKS                       R9 R23 K49 ["onCancelBinding"]
      391 NEWCLOSURE                       R24 P7
      392 CAPTURE                          VAL R18
      393 SETTABLEKS                       R24 R23 K30 ["onBindingEditCommand"]
      395 SETTABLEKS                       R15 R23 K32 ["validBindingsBySchema"]
      397 CALL                             R21 2 1
      398 SETTABLEKS                       R21 R20 K35 ["CreatingComposite"]
      400 JUMPIFNOT                        R10 ; [+96]
      401 GETTABLEKS                       R21 R4 K4 ["Keycode"]
      403 LOADNIL                          R22
      404 LOADNIL                          R23
      405 FORGPREP                         R21
      406 LOADK                            R27 K51 ["Keycode_%*"]
      407 MOVE                             R29 R24
      408 NAMECALL                         R27 R27 K20 ["format"]
      410 CALL                             R27 2 1
      411 MOVE                             R26 R27
      412 GETUPVAL                         R27 0
      413 GETTABLEKS                       R27 R27 K12 ["createElement"]
      415 GETUPVAL                         R28 16
      416 DUPTABLE                         R29 K53 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      417 SETTABLEKS                       R3 R29 K23 ["action"]
      419 SETTABLEKS                       R25 R29 K24 ["bindings"]
      421 SETTABLEKS                       R24 R29 K28 ["index"]
      423 MOVE                             R30 R19
      424 CALL                             R30 0 1
      425 SETTABLEKS                       R30 R29 K13 ["LayoutOrder"]
      427 NEWCLOSURE                       R30 P8
      428 CAPTURE                          VAL R18
      429 CAPTURE                          VAL R25
      430 SETTABLEKS                       R30 R29 K30 ["onBindingEditCommand"]
      432 LOADN                            R31 1
      433 JUMPIFNOTLT                      R31 R24 ; [+6]
      435 GETTABLEKS                       R31 R4 K4 ["Keycode"]
      437 SUBK                             R32 R24 K29 [1]
      438 GETTABLE                         R30 R31 R32
      439 JUMP                             ; [+1]
      440 LOADNIL                          R30
      441 SETTABLEKS                       R30 R29 K52 ["previousBindings"]
      443 SETTABLEKS                       R15 R29 K32 ["validBindingsBySchema"]
      445 CALL                             R27 2 1
      446 SETTABLE                         R27 R20 R26
      447 FORGLOOP                         R21 2 ; [-42]
      449 GETTABLEKS                       R21 R4 K5 ["Composite"]
      451 LOADNIL                          R22
      452 LOADNIL                          R23
      453 FORGPREP                         R21
      454 LOADK                            R27 K54 ["Composite_%*"]
      455 MOVE                             R29 R24
      456 NAMECALL                         R27 R27 K20 ["format"]
      458 CALL                             R27 2 1
      459 MOVE                             R26 R27
      460 GETUPVAL                         R27 0
      461 GETTABLEKS                       R27 R27 K12 ["createElement"]
      463 GETUPVAL                         R28 17
      464 DUPTABLE                         R29 K53 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      465 SETTABLEKS                       R3 R29 K23 ["action"]
      467 SETTABLEKS                       R25 R29 K24 ["bindings"]
      469 SETTABLEKS                       R24 R29 K28 ["index"]
      471 MOVE                             R30 R19
      472 CALL                             R30 0 1
      473 SETTABLEKS                       R30 R29 K13 ["LayoutOrder"]
      475 NEWCLOSURE                       R30 P9
      476 CAPTURE                          VAL R18
      477 CAPTURE                          VAL R25
      478 SETTABLEKS                       R30 R29 K30 ["onBindingEditCommand"]
      480 LOADN                            R31 1
      481 JUMPIFNOTLT                      R31 R24 ; [+6]
      483 GETTABLEKS                       R31 R4 K5 ["Composite"]
      485 SUBK                             R32 R24 K29 [1]
      486 GETTABLE                         R30 R31 R32
      487 JUMP                             ; [+1]
      488 LOADNIL                          R30
      489 SETTABLEKS                       R30 R29 K52 ["previousBindings"]
      491 SETTABLEKS                       R15 R29 K32 ["validBindingsBySchema"]
      493 CALL                             R27 2 1
      494 SETTABLE                         R27 R20 R26
      495 FORGLOOP                         R21 2 ; [-42]
      497 GETUPVAL                         R21 0
      498 GETTABLEKS                       R21 R21 K12 ["createElement"]
      500 GETUPVAL                         R22 15
      501 DUPTABLE                         R23 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      502 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      504 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      506 LOADK                            R25 K18 ["action-%*"]
      507 GETTABLEKS                       R27 R3 K19 ["name"]
      509 NAMECALL                         R25 R25 K20 ["format"]
      511 CALL                             R25 2 1
      512 MOVE                             R24 R25
      513 SETTABLEKS                       R24 R23 K16 ["testId"]
      515 MOVE                             R24 R20
      516 CALL                             R21 3 -1
      517 RETURN                           R21 -1

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
      196 GETTABLEKS                       R24 R21 K40 ["getFFlagIAMViewportPositionType"]
      198 CALL                             R23 1 1
      199 DUPCLOSURE                       R24 K41 [PROTO_10]
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R5
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R9
      219 RETURN                           R24 1
