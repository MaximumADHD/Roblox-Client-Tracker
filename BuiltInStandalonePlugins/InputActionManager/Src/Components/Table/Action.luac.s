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
       97 JUMPIFNOTEQ                      R0 R2 ; [+23]
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
      117 GETUPVAL                         R3 6
      118 LOADK                            R4 K12 ["Keycode"]
      119 CALL                             R3 1 0
      120 RETURN                           R0 0
      121 GETUPVAL                         R2 0
      122 GETTABLEKS                       R2 R2 K22 ["EDIT_ACTION_DIRECTION1D"]
      124 JUMPIFNOTEQ                      R0 R2 ; [+20]
      126 GETIMPORT                        R2 K24 [Enum.InputActionType.Direction1D]
      128 GETUPVAL                         R3 7
      129 CALL                             R3 0 1
      130 JUMPIFNOT                        R3 ; [+3]
      131 GETUPVAL                         R3 8
      132 MOVE                             R4 R2
      133 CALL                             R3 1 0
      134 GETUPVAL                         R3 5
      135 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      137 GETUPVAL                         R4 2
      138 GETTABLEKS                       R4 R4 K9 ["uuid"]
      140 DUPTABLE                         R5 K21 [{"type"}]
      141 SETTABLEKS                       R2 R5 K20 ["type"]
      143 CALL                             R3 2 0
      144 RETURN                           R0 0
      145 GETUPVAL                         R2 0
      146 GETTABLEKS                       R2 R2 K25 ["EDIT_ACTION_DIRECTION2D"]
      148 JUMPIFNOTEQ                      R0 R2 ; [+20]
      150 GETIMPORT                        R2 K27 [Enum.InputActionType.Direction2D]
      152 GETUPVAL                         R3 7
      153 CALL                             R3 0 1
      154 JUMPIFNOT                        R3 ; [+3]
      155 GETUPVAL                         R3 8
      156 MOVE                             R4 R2
      157 CALL                             R3 1 0
      158 GETUPVAL                         R3 5
      159 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      161 GETUPVAL                         R4 2
      162 GETTABLEKS                       R4 R4 K9 ["uuid"]
      164 DUPTABLE                         R5 K21 [{"type"}]
      165 SETTABLEKS                       R2 R5 K20 ["type"]
      167 CALL                             R3 2 0
      168 RETURN                           R0 0
      169 GETUPVAL                         R2 0
      170 GETTABLEKS                       R2 R2 K28 ["EDIT_ACTION_DIRECTION3D"]
      172 JUMPIFNOTEQ                      R0 R2 ; [+20]
      174 GETIMPORT                        R2 K30 [Enum.InputActionType.Direction3D]
      176 GETUPVAL                         R3 7
      177 CALL                             R3 0 1
      178 JUMPIFNOT                        R3 ; [+3]
      179 GETUPVAL                         R3 8
      180 MOVE                             R4 R2
      181 CALL                             R3 1 0
      182 GETUPVAL                         R3 5
      183 GETTABLEKS                       R3 R3 K14 ["updateAction"]
      185 GETUPVAL                         R4 2
      186 GETTABLEKS                       R4 R4 K9 ["uuid"]
      188 DUPTABLE                         R5 K21 [{"type"}]
      189 SETTABLEKS                       R2 R5 K20 ["type"]
      191 CALL                             R3 2 0
      192 RETURN                           R0 0
      193 RETURN                           R0 0

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
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R3 R0 K2 ["uuid"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 3
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 4
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETTABLEKS                       R5 R2 K3 ["type"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R5
       20 CALL                             R4 1 5
       21 GETUPVAL                         R9 5
       22 GETTABLEKS                       R10 R0 K2 ["uuid"]
       24 JUMPIFNOT                        R3 ; [+16]
       25 LOADB                            R11 1
       26 GETTABLEKS                       R14 R3 K4 ["Keycode"]
       28 LENGTH                           R13 R14
       29 GETTABLEKS                       R15 R3 K5 ["Composite"]
       31 LENGTH                           R14 R15
       32 ADD                              R12 R13 R14
       33 LOADN                            R13 1
       34 JUMPIFLT                         R13 R12 ; [+7]
       36 JUMPIFNOTEQKNIL                  R5 ; [+2]
       38 LOADB                            R11 0 +1
       39 LOADB                            R11 1
       40 JUMP                             ; [+1]
       41 LOADB                            R11 0
       42 CALL                             R9 2 2
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K6 ["useState"]
       46 LOADNIL                          R12
       47 CALL                             R11 1 2
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R13 R13 K0 ["useContext"]
       51 GETUPVAL                         R14 6
       52 GETTABLEKS                       R14 R14 K1 ["Context"]
       54 CALL                             R13 1 1
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R14 R14 K7 ["useMemo"]
       58 NEWCLOSURE                       R15 P0
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 NEWTABLE                         R16 0 2
       65 MOVE                             R17 R3
       66 MOVE                             R18 R2
       67 SETLIST                          R16 R17 2 [1]
       69 CALL                             R14 2 1
       70 GETUPVAL                         R15 0
       71 GETTABLEKS                       R15 R15 K8 ["useCallback"]
       73 NEWCLOSURE                       R16 P1
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R13
       77 NEWTABLE                         R17 0 3
       79 MOVE                             R18 R2
       80 MOVE                             R19 R3
       81 MOVE                             R20 R13
       82 SETLIST                          R17 R18 3 [1]
       84 CALL                             R15 2 1
       85 GETUPVAL                         R16 0
       86 GETTABLEKS                       R16 R16 K7 ["useMemo"]
       88 NEWCLOSURE                       R17 P2
       89 CAPTURE                          UPVAL U9
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 NEWTABLE                         R18 0 2
       94 MOVE                             R19 R1
       95 MOVE                             R20 R2
       96 SETLIST                          R18 R19 2 [1]
       98 CALL                             R16 2 1
       99 GETUPVAL                         R17 10
      100 GETTABLEKS                       R17 R17 K9 ["useEventCallback"]
      102 NEWCLOSURE                       R18 P3
      103 CAPTURE                          UPVAL U11
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 CAPTURE                          UPVAL U12
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R12
      110 CAPTURE                          UPVAL U13
      111 CAPTURE                          VAL R15
      112 CALL                             R17 1 1
      113 GETUPVAL                         R18 10
      114 GETTABLEKS                       R18 R18 K10 ["createNextOrder"]
      116 CALL                             R18 0 1
      117 JUMPIFEQKNIL                     R2 ; [+3]
      119 JUMPIFNOTEQKNIL                  R3 ; [+3]
      121 LOADNIL                          R19
      122 RETURN                           R19 1
      123 JUMPIFNOTEQKNIL                  R5 ; [+80]
      125 GETTABLEKS                       R20 R3 K4 ["Keycode"]
      127 LENGTH                           R19 R20
      128 LOADN                            R20 1
      129 JUMPIFNOTLE                      R19 R20 ; [+8]
      131 GETTABLEKS                       R20 R3 K5 ["Composite"]
      133 LENGTH                           R19 R20
      134 JUMPIFNOTEQKN                    R19 K11 [0] ; [+3]
      136 JUMPIFEQKNIL                     R11 ; [+3]
      138 JUMPIFNOTEQKS                    R11 K4 ["Keycode"] ; [+65]
      140 GETTABLEKS                       R20 R3 K4 ["Keycode"]
      142 GETTABLEN                        R19 R20 1
      143 JUMPIF                           R19 ; [+2]
      144 NEWTABLE                         R19 0 0
      146 GETUPVAL                         R20 0
      147 GETTABLEKS                       R20 R20 K12 ["createElement"]
      149 GETUPVAL                         R21 14
      150 DUPTABLE                         R22 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      151 GETTABLEKS                       R23 R0 K13 ["LayoutOrder"]
      153 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      155 LOADK                            R24 K18 ["action-%*"]
      156 GETTABLEKS                       R26 R2 K19 ["name"]
      158 NAMECALL                         R24 R24 K20 ["format"]
      160 CALL                             R24 2 1
      161 MOVE                             R23 R24
      162 SETTABLEKS                       R23 R22 K16 ["testId"]
      164 DUPTABLE                         R23 K22 [{"HeaderRow"}]
      165 GETUPVAL                         R24 0
      166 GETTABLEKS                       R24 R24 K12 ["createElement"]
      168 GETUPVAL                         R25 15
      169 DUPTABLE                         R26 K33 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingEditCommand"], ["onCreateMenuItemSelected"], ["validBindingsBySchema"]}]
      170 SETTABLEKS                       R2 R26 K23 ["action"]
      172 SETTABLEKS                       R19 R26 K24 ["bindings"]
      174 SETTABLEKS                       R4 R26 K27 ["createMenu"]
      176 MOVE                             R27 R18
      177 CALL                             R27 0 1
      178 SETTABLEKS                       R27 R26 K13 ["LayoutOrder"]
      180 GETTABLEKS                       R27 R2 K19 ["name"]
      182 SETTABLEKS                       R27 R26 K19 ["name"]
      184 NEWCLOSURE                       R27 P4
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R19
      187 SETTABLEKS                       R27 R26 K30 ["onBindingEditCommand"]
      189 SETTABLEKS                       R6 R26 K31 ["onCreateMenuItemSelected"]
      191 GETUPVAL                         R28 7
      192 CALL                             R28 0 1
      193 JUMPIFNOT                        R28 ; [+2]
      194 MOVE                             R27 R14
      195 JUMP                             ; [+1]
      196 LOADNIL                          R27
      197 SETTABLEKS                       R27 R26 K32 ["validBindingsBySchema"]
      199 CALL                             R24 2 1
      200 SETTABLEKS                       R24 R23 K21 ["HeaderRow"]
      202 CALL                             R20 3 -1
      203 RETURN                           R20 -1
      204 JUMPIFNOTEQKNIL                  R5 ; [+86]
      206 GETTABLEKS                       R20 R3 K4 ["Keycode"]
      208 LENGTH                           R19 R20
      209 JUMPIFNOTEQKN                    R19 K11 [0] ; [+9]
      211 GETTABLEKS                       R20 R3 K5 ["Composite"]
      213 LENGTH                           R19 R20
      214 LOADN                            R20 1
      215 JUMPIFNOTLE                      R19 R20 ; [+3]
      217 JUMPIFEQKNIL                     R11 ; [+3]
      219 JUMPIFNOTEQKS                    R11 K5 ["Composite"] ; [+71]
      221 GETTABLEKS                       R21 R3 K5 ["Composite"]
      223 LENGTH                           R20 R21
      224 LOADN                            R21 0
      225 JUMPIFNOTLT                      R21 R20 ; [+5]
      227 GETTABLEKS                       R20 R3 K5 ["Composite"]
      229 GETTABLEN                        R19 R20 1
      230 JUMP                             ; [+2]
      231 NEWTABLE                         R19 0 0
      233 GETUPVAL                         R20 0
      234 GETTABLEKS                       R20 R20 K12 ["createElement"]
      236 GETUPVAL                         R21 14
      237 DUPTABLE                         R22 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      238 GETTABLEKS                       R23 R0 K13 ["LayoutOrder"]
      240 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      242 LOADK                            R24 K18 ["action-%*"]
      243 GETTABLEKS                       R26 R2 K19 ["name"]
      245 NAMECALL                         R24 R24 K20 ["format"]
      247 CALL                             R24 2 1
      248 MOVE                             R23 R24
      249 SETTABLEKS                       R23 R22 K16 ["testId"]
      251 DUPTABLE                         R23 K22 [{"HeaderRow"}]
      252 GETUPVAL                         R24 0
      253 GETTABLEKS                       R24 R24 K12 ["createElement"]
      255 GETUPVAL                         R25 16
      256 DUPTABLE                         R26 K33 [{["action"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingEditCommand"], ["onCreateMenuItemSelected"], ["validBindingsBySchema"]}]
      257 SETTABLEKS                       R2 R26 K23 ["action"]
      259 SETTABLEKS                       R19 R26 K24 ["bindings"]
      261 SETTABLEKS                       R4 R26 K27 ["createMenu"]
      263 MOVE                             R27 R18
      264 CALL                             R27 0 1
      265 SETTABLEKS                       R27 R26 K13 ["LayoutOrder"]
      267 GETTABLEKS                       R27 R2 K19 ["name"]
      269 SETTABLEKS                       R27 R26 K19 ["name"]
      271 NEWCLOSURE                       R27 P5
      272 CAPTURE                          VAL R17
      273 CAPTURE                          VAL R19
      274 SETTABLEKS                       R27 R26 K30 ["onBindingEditCommand"]
      276 SETTABLEKS                       R6 R26 K31 ["onCreateMenuItemSelected"]
      278 GETUPVAL                         R28 7
      279 CALL                             R28 0 1
      280 JUMPIFNOT                        R28 ; [+2]
      281 MOVE                             R27 R14
      282 JUMP                             ; [+1]
      283 LOADNIL                          R27
      284 SETTABLEKS                       R27 R26 K32 ["validBindingsBySchema"]
      286 CALL                             R24 2 1
      287 SETTABLEKS                       R24 R23 K21 ["HeaderRow"]
      289 CALL                             R20 3 -1
      290 RETURN                           R20 -1
      291 DUPTABLE                         R19 K36 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite"}]
      292 GETUPVAL                         R20 0
      293 GETTABLEKS                       R20 R20 K12 ["createElement"]
      295 GETUPVAL                         R21 17
      296 DUPTABLE                         R22 K38 [{"bindings", "LayoutOrder", "nodeProps"}]
      297 GETTABLEKS                       R23 R3 K39 ["All"]
      299 SETTABLEKS                       R23 R22 K24 ["bindings"]
      301 MOVE                             R23 R18
      302 CALL                             R23 0 1
      303 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      305 DUPTABLE                         R23 K47 [{["action"], ["createMenu"], ["depth"] = 1, ["editMenu"], ["expanded"], ["icon"] = "InputAction", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      306 SETTABLEKS                       R2 R23 K23 ["action"]
      308 SETTABLEKS                       R4 R23 K27 ["createMenu"]
      310 SETTABLEKS                       R16 R23 K41 ["editMenu"]
      312 SETTABLEKS                       R9 R23 K42 ["expanded"]
      314 GETTABLEKS                       R24 R2 K19 ["name"]
      316 SETTABLEKS                       R24 R23 K19 ["name"]
      318 SETTABLEKS                       R6 R23 K31 ["onCreateMenuItemSelected"]
      320 SETTABLEKS                       R17 R23 K45 ["onEditMenuItemSelected"]
      322 SETTABLEKS                       R10 R23 K46 ["setExpanded"]
      324 SETTABLEKS                       R23 R22 K37 ["nodeProps"]
      326 CALL                             R20 2 1
      327 SETTABLEKS                       R20 R19 K21 ["HeaderRow"]
      329 LOADB                            R20 0
      330 JUMPIFNOTEQKS                    R5 K4 ["Keycode"] ; [+39]
      332 GETUPVAL                         R20 0
      333 GETTABLEKS                       R20 R20 K12 ["createElement"]
      335 GETUPVAL                         R21 15
      336 DUPTABLE                         R22 K50 [{"action", "bindings", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      337 SETTABLEKS                       R2 R22 K23 ["action"]
      339 NEWTABLE                         R23 0 0
      341 SETTABLEKS                       R23 R22 K24 ["bindings"]
      343 GETTABLEKS                       R25 R3 K4 ["Keycode"]
      345 LENGTH                           R24 R25
      346 ADDK                             R23 R24 K29 [1]
      347 SETTABLEKS                       R23 R22 K28 ["index"]
      349 MOVE                             R23 R18
      350 CALL                             R23 0 1
      351 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      353 SETTABLEKS                       R7 R22 K48 ["onCreated"]
      355 SETTABLEKS                       R8 R22 K49 ["onCancelBinding"]
      357 NEWCLOSURE                       R23 P6
      358 CAPTURE                          VAL R17
      359 SETTABLEKS                       R23 R22 K30 ["onBindingEditCommand"]
      361 GETUPVAL                         R24 7
      362 CALL                             R24 0 1
      363 JUMPIFNOT                        R24 ; [+2]
      364 MOVE                             R23 R14
      365 JUMP                             ; [+1]
      366 LOADNIL                          R23
      367 SETTABLEKS                       R23 R22 K32 ["validBindingsBySchema"]
      369 CALL                             R20 2 1
      370 SETTABLEKS                       R20 R19 K34 ["CreatingKeyBind"]
      372 LOADB                            R20 0
      373 JUMPIFNOTEQKS                    R5 K5 ["Composite"] ; [+39]
      375 GETUPVAL                         R20 0
      376 GETTABLEKS                       R20 R20 K12 ["createElement"]
      378 GETUPVAL                         R21 16
      379 DUPTABLE                         R22 K50 [{"action", "bindings", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      380 SETTABLEKS                       R2 R22 K23 ["action"]
      382 NEWTABLE                         R23 0 0
      384 SETTABLEKS                       R23 R22 K24 ["bindings"]
      386 GETTABLEKS                       R25 R3 K5 ["Composite"]
      388 LENGTH                           R24 R25
      389 ADDK                             R23 R24 K29 [1]
      390 SETTABLEKS                       R23 R22 K28 ["index"]
      392 MOVE                             R23 R18
      393 CALL                             R23 0 1
      394 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      396 SETTABLEKS                       R7 R22 K48 ["onCreated"]
      398 SETTABLEKS                       R8 R22 K49 ["onCancelBinding"]
      400 NEWCLOSURE                       R23 P7
      401 CAPTURE                          VAL R17
      402 SETTABLEKS                       R23 R22 K30 ["onBindingEditCommand"]
      404 GETUPVAL                         R24 7
      405 CALL                             R24 0 1
      406 JUMPIFNOT                        R24 ; [+2]
      407 MOVE                             R23 R14
      408 JUMP                             ; [+1]
      409 LOADNIL                          R23
      410 SETTABLEKS                       R23 R22 K32 ["validBindingsBySchema"]
      412 CALL                             R20 2 1
      413 SETTABLEKS                       R20 R19 K35 ["CreatingComposite"]
      415 JUMPIFNOT                        R9 ; [+108]
      416 GETTABLEKS                       R20 R3 K4 ["Keycode"]
      418 LOADNIL                          R21
      419 LOADNIL                          R22
      420 FORGPREP                         R20
      421 LOADK                            R26 K51 ["Keycode_%*"]
      422 MOVE                             R28 R23
      423 NAMECALL                         R26 R26 K20 ["format"]
      425 CALL                             R26 2 1
      426 MOVE                             R25 R26
      427 GETUPVAL                         R26 0
      428 GETTABLEKS                       R26 R26 K12 ["createElement"]
      430 GETUPVAL                         R27 15
      431 DUPTABLE                         R28 K53 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      432 SETTABLEKS                       R2 R28 K23 ["action"]
      434 SETTABLEKS                       R24 R28 K24 ["bindings"]
      436 SETTABLEKS                       R23 R28 K28 ["index"]
      438 MOVE                             R29 R18
      439 CALL                             R29 0 1
      440 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      442 NEWCLOSURE                       R29 P8
      443 CAPTURE                          VAL R17
      444 CAPTURE                          VAL R24
      445 SETTABLEKS                       R29 R28 K30 ["onBindingEditCommand"]
      447 LOADN                            R30 1
      448 JUMPIFNOTLT                      R30 R23 ; [+6]
      450 GETTABLEKS                       R30 R3 K4 ["Keycode"]
      452 SUBK                             R31 R23 K29 [1]
      453 GETTABLE                         R29 R30 R31
      454 JUMP                             ; [+1]
      455 LOADNIL                          R29
      456 SETTABLEKS                       R29 R28 K52 ["previousBindings"]
      458 GETUPVAL                         R30 7
      459 CALL                             R30 0 1
      460 JUMPIFNOT                        R30 ; [+2]
      461 MOVE                             R29 R14
      462 JUMP                             ; [+1]
      463 LOADNIL                          R29
      464 SETTABLEKS                       R29 R28 K32 ["validBindingsBySchema"]
      466 CALL                             R26 2 1
      467 SETTABLE                         R26 R19 R25
      468 FORGLOOP                         R20 2 ; [-48]
      470 GETTABLEKS                       R20 R3 K5 ["Composite"]
      472 LOADNIL                          R21
      473 LOADNIL                          R22
      474 FORGPREP                         R20
      475 LOADK                            R26 K54 ["Composite_%*"]
      476 MOVE                             R28 R23
      477 NAMECALL                         R26 R26 K20 ["format"]
      479 CALL                             R26 2 1
      480 MOVE                             R25 R26
      481 GETUPVAL                         R26 0
      482 GETTABLEKS                       R26 R26 K12 ["createElement"]
      484 GETUPVAL                         R27 16
      485 DUPTABLE                         R28 K53 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      486 SETTABLEKS                       R2 R28 K23 ["action"]
      488 SETTABLEKS                       R24 R28 K24 ["bindings"]
      490 SETTABLEKS                       R23 R28 K28 ["index"]
      492 MOVE                             R29 R18
      493 CALL                             R29 0 1
      494 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      496 NEWCLOSURE                       R29 P9
      497 CAPTURE                          VAL R17
      498 CAPTURE                          VAL R24
      499 SETTABLEKS                       R29 R28 K30 ["onBindingEditCommand"]
      501 LOADN                            R30 1
      502 JUMPIFNOTLT                      R30 R23 ; [+6]
      504 GETTABLEKS                       R30 R3 K5 ["Composite"]
      506 SUBK                             R31 R23 K29 [1]
      507 GETTABLE                         R29 R30 R31
      508 JUMP                             ; [+1]
      509 LOADNIL                          R29
      510 SETTABLEKS                       R29 R28 K52 ["previousBindings"]
      512 GETUPVAL                         R30 7
      513 CALL                             R30 0 1
      514 JUMPIFNOT                        R30 ; [+2]
      515 MOVE                             R29 R14
      516 JUMP                             ; [+1]
      517 LOADNIL                          R29
      518 SETTABLEKS                       R29 R28 K32 ["validBindingsBySchema"]
      520 CALL                             R26 2 1
      521 SETTABLE                         R26 R19 R25
      522 FORGLOOP                         R20 2 ; [-48]
      524 GETUPVAL                         R20 0
      525 GETTABLEKS                       R20 R20 K12 ["createElement"]
      527 GETUPVAL                         R21 14
      528 DUPTABLE                         R22 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      529 GETTABLEKS                       R23 R0 K13 ["LayoutOrder"]
      531 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      533 LOADK                            R24 K18 ["action-%*"]
      534 GETTABLEKS                       R26 R2 K19 ["name"]
      536 NAMECALL                         R24 R24 K20 ["format"]
      538 CALL                             R24 2 1
      539 MOVE                             R23 R24
      540 SETTABLEKS                       R23 R22 K16 ["testId"]
      542 MOVE                             R23 R19
      543 CALL                             R20 3 -1
      544 RETURN                           R20 -1

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
       54 GETTABLEKS                       R9 R9 K16 ["Components"]
       56 GETTABLEKS                       R9 R9 K17 ["Table"]
       58 GETTABLEKS                       R9 R9 K18 ["Row"]
       60 GETTABLEKS                       R9 R9 K19 ["Summary"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K14 ["Src"]
       67 GETTABLEKS                       R10 R10 K16 ["Components"]
       69 GETTABLEKS                       R10 R10 K17 ["Table"]
       71 GETTABLEKS                       R10 R10 K20 ["CompositeBinding"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K14 ["Src"]
       78 GETTABLEKS                       R11 R11 K16 ["Components"]
       80 GETTABLEKS                       R11 R11 K17 ["Table"]
       82 GETTABLEKS                       R11 R11 K21 ["KeycodeBinding"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K14 ["Src"]
       89 GETTABLEKS                       R12 R12 K22 ["Types"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K14 ["Src"]
       96 GETTABLEKS                       R13 R13 K23 ["Util"]
       98 GETTABLEKS                       R13 R13 K24 ["getSchemas"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K14 ["Src"]
      105 GETTABLEKS                       R14 R14 K23 ["Util"]
      107 GETTABLEKS                       R14 R14 K25 ["Menus"]
      109 GETTABLEKS                       R14 R14 K26 ["getSummaryMenu"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K14 ["Src"]
      116 GETTABLEKS                       R15 R15 K23 ["Util"]
      118 GETTABLEKS                       R15 R15 K27 ["Binding"]
      120 GETTABLEKS                       R15 R15 K28 ["getValidBindingsBySchema"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K5 [require]
      125 GETTABLEKS                       R16 R0 K14 ["Src"]
      127 GETTABLEKS                       R16 R16 K29 ["Hooks"]
      129 GETTABLEKS                       R16 R16 K30 ["Action"]
      131 GETTABLEKS                       R16 R16 K31 ["useAction"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K14 ["Src"]
      138 GETTABLEKS                       R17 R17 K29 ["Hooks"]
      140 GETTABLEKS                       R17 R17 K27 ["Binding"]
      142 GETTABLEKS                       R17 R17 K32 ["useBindings"]
      144 CALL                             R16 1 1
      145 GETIMPORT                        R17 K5 [require]
      147 GETTABLEKS                       R18 R0 K14 ["Src"]
      149 GETTABLEKS                       R18 R18 K29 ["Hooks"]
      151 GETTABLEKS                       R18 R18 K27 ["Binding"]
      153 GETTABLEKS                       R18 R18 K33 ["useCreateBinding"]
      155 CALL                             R17 1 1
      156 GETIMPORT                        R18 K5 [require]
      158 GETTABLEKS                       R19 R0 K14 ["Src"]
      160 GETTABLEKS                       R19 R19 K29 ["Hooks"]
      162 GETTABLEKS                       R19 R19 K34 ["useExpanded"]
      164 CALL                             R18 1 1
      165 GETIMPORT                        R19 K5 [require]
      167 GETTABLEKS                       R20 R0 K14 ["Src"]
      169 GETTABLEKS                       R20 R20 K23 ["Util"]
      171 GETTABLEKS                       R20 R20 K35 ["Constants"]
      173 GETTABLEKS                       R20 R20 K36 ["MenuIdentifiers"]
      175 CALL                             R19 1 1
      176 GETTABLEKS                       R20 R0 K14 ["Src"]
      178 GETTABLEKS                       R20 R20 K37 ["Flags"]
      180 GETIMPORT                        R21 K5 [require]
      182 GETTABLEKS                       R22 R20 K38 ["getFFlagIAMInputActionTypeFixes"]
      184 CALL                             R21 1 1
      185 GETIMPORT                        R22 K5 [require]
      187 GETTABLEKS                       R23 R0 K14 ["Src"]
      189 GETTABLEKS                       R23 R23 K37 ["Flags"]
      191 GETTABLEKS                       R23 R23 K39 ["getFFlagIAMIncorrectStatuses"]
      193 CALL                             R22 1 1
      194 DUPCLOSURE                       R23 K40 [PROTO_10]
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R21
      209 CAPTURE                          VAL R6
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R8
      213 RETURN                           R23 1
