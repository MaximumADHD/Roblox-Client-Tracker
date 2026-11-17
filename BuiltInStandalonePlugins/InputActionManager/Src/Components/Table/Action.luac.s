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
       31 GETTABLEKS                       R2 R2 K7 ["SHOW_IN_EXPLORER"]
       33 JUMPIFNOTEQ                      R0 R2 ; [+9]
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R2 R2 K8 ["showInExplorer"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K9 ["uuid"]
       41 CALL                             R2 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K10 ["ROW_USE_COMPOSITE"]
       46 JUMPIFNOTEQ                      R0 R2 ; [+24]
       48 JUMPIFEQKNIL                     R1 ; [+22]
       50 LOADB                            R2 0
       51 GETUPVAL                         R3 5
       52 CALL                             R3 0 3
       53 FORGPREP                         R3
       54 GETTABLE                         R8 R1 R7
       55 JUMPIFNOT                        R8 ; [+9]
       56 GETUPVAL                         R9 4
       57 GETTABLEKS                       R9 R9 K11 ["updateBinding"]
       59 GETTABLEKS                       R10 R8 K9 ["uuid"]
       61 LOADNIL                          R11
       62 MOVE                             R12 R2
       63 CALL                             R9 3 0
       64 LOADB                            R2 1
       65 FORGLOOP                         R3 2 ; [-12]
       67 GETUPVAL                         R3 6
       68 LOADK                            R4 K12 ["Composite"]
       69 CALL                             R3 1 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R2 0
       72 GETTABLEKS                       R2 R2 K13 ["ROW_USE_KEYCODE"]
       74 JUMPIFNOTEQ                      R0 R2 ; [+24]
       76 JUMPIFEQKNIL                     R1 ; [+22]
       78 LOADB                            R2 0
       79 GETUPVAL                         R3 5
       80 CALL                             R3 0 3
       81 FORGPREP                         R3
       82 GETTABLE                         R8 R1 R7
       83 JUMPIFNOT                        R8 ; [+9]
       84 GETUPVAL                         R9 4
       85 GETTABLEKS                       R9 R9 K11 ["updateBinding"]
       87 GETTABLEKS                       R10 R8 K9 ["uuid"]
       89 LOADNIL                          R11
       90 MOVE                             R12 R2
       91 CALL                             R9 3 0
       92 LOADB                            R2 1
       93 FORGLOOP                         R3 2 ; [-12]
       95 GETUPVAL                         R3 6
       96 LOADK                            R4 K14 ["Keycode"]
       97 CALL                             R3 1 0
       98 RETURN                           R0 0
       99 GETUPVAL                         R2 0
      100 GETTABLEKS                       R2 R2 K15 ["DELETE"]
      102 JUMPIFNOTEQ                      R0 R2 ; [+10]
      104 GETUPVAL                         R2 4
      105 GETTABLEKS                       R2 R2 K16 ["updateAction"]
      107 GETUPVAL                         R3 2
      108 GETTABLEKS                       R3 R3 K9 ["uuid"]
      110 LOADNIL                          R4
      111 CALL                             R2 2 0
      112 RETURN                           R0 0
      113 GETUPVAL                         R2 0
      114 GETTABLEKS                       R2 R2 K17 ["ENABLED"]
      116 JUMPIFNOTEQ                      R0 R2 ; [+16]
      118 GETUPVAL                         R2 4
      119 GETTABLEKS                       R2 R2 K16 ["updateAction"]
      121 GETUPVAL                         R3 2
      122 GETTABLEKS                       R3 R3 K9 ["uuid"]
      124 DUPTABLE                         R4 K19 [{"enabled"}]
      125 GETUPVAL                         R6 2
      126 GETTABLEKS                       R6 R6 K18 ["enabled"]
      128 NOT                              R5 R6
      129 SETTABLEKS                       R5 R4 K18 ["enabled"]
      131 CALL                             R2 2 0
      132 RETURN                           R0 0
      133 GETUPVAL                         R2 0
      134 GETTABLEKS                       R2 R2 K20 ["SCRIPTABLE_ENABLED"]
      136 JUMPIFNOTEQ                      R0 R2 ; [+37]
      138 GETUPVAL                         R2 7
      139 JUMPIFNOT                        R2 ; [+9]
      140 GETUPVAL                         R2 4
      141 GETTABLEKS                       R2 R2 K11 ["updateBinding"]
      143 GETUPVAL                         R3 7
      144 GETTABLEKS                       R3 R3 K9 ["uuid"]
      146 LOADNIL                          R4
      147 CALL                             R2 2 0
      148 RETURN                           R0 0
      149 GETUPVAL                         R2 4
      150 GETTABLEKS                       R2 R2 K11 ["updateBinding"]
      152 LOADNIL                          R3
      153 DUPTABLE                         R4 K24 [{"name", "parentUuid", "type"}]
      154 LOADK                            R5 K25 ["%*Scriptable"]
      155 GETUPVAL                         R7 2
      156 GETTABLEKS                       R7 R7 K21 ["name"]
      158 NAMECALL                         R5 R5 K26 ["format"]
      160 CALL                             R5 2 1
      161 SETTABLEKS                       R5 R4 K21 ["name"]
      163 GETUPVAL                         R5 2
      164 GETTABLEKS                       R5 R5 K9 ["uuid"]
      166 SETTABLEKS                       R5 R4 K22 ["parentUuid"]
      168 GETIMPORT                        R5 K30 [Enum.InputBindingType.Scriptable]
      170 SETTABLEKS                       R5 R4 K23 ["type"]
      172 CALL                             R2 2 0
      173 RETURN                           R0 0
      174 GETUPVAL                         R2 0
      175 GETTABLEKS                       R2 R2 K31 ["SCRIPTABLE_RENAME"]
      177 JUMPIFNOTEQ                      R0 R2 ; [+7]
      179 GETUPVAL                         R2 7
      180 JUMPIFNOT                        R2 ; [+3]
      181 GETUPVAL                         R2 8
      182 MOVE                             R3 R0
      183 CALL                             R2 1 0
      184 RETURN                           R0 0
      185 GETUPVAL                         R2 0
      186 GETTABLEKS                       R2 R2 K32 ["SCRIPTABLE_SHOW_IN_EXPLORER"]
      188 JUMPIFNOTEQ                      R0 R2 ; [+11]
      190 GETUPVAL                         R2 7
      191 JUMPIFNOT                        R2 ; [+7]
      192 GETUPVAL                         R2 4
      193 GETTABLEKS                       R2 R2 K8 ["showInExplorer"]
      195 GETUPVAL                         R3 7
      196 GETTABLEKS                       R3 R3 K9 ["uuid"]
      198 CALL                             R2 1 0
      199 RETURN                           R0 0
      200 GETUPVAL                         R2 0
      201 GETTABLEKS                       R2 R2 K33 ["DUPLICATE"]
      203 JUMPIFNOTEQ                      R0 R2 ; [+9]
      205 GETUPVAL                         R2 4
      206 GETTABLEKS                       R2 R2 K34 ["duplicateAction"]
      208 GETUPVAL                         R3 2
      209 GETTABLEKS                       R3 R3 K9 ["uuid"]
      211 CALL                             R2 1 0
      212 RETURN                           R0 0
      213 GETUPVAL                         R2 0
      214 GETTABLEKS                       R2 R2 K35 ["EDIT_ACTION_BOOL"]
      216 JUMPIFNOTEQ                      R0 R2 ; [+27]
      218 GETIMPORT                        R2 K38 [Enum.InputActionType.Bool]
      220 GETUPVAL                         R3 9
      221 MOVE                             R4 R2
      222 CALL                             R3 1 1
      223 GETUPVAL                         R4 4
      224 GETTABLEKS                       R4 R4 K16 ["updateAction"]
      226 GETUPVAL                         R5 2
      227 GETTABLEKS                       R5 R5 K9 ["uuid"]
      229 DUPTABLE                         R6 K39 [{"type"}]
      230 SETTABLEKS                       R2 R6 K23 ["type"]
      232 MOVE                             R7 R3
      233 CALL                             R4 3 0
      234 GETUPVAL                         R4 10
      235 GETTABLEKS                       R4 R4 K40 ["countInputActionTypeSelected"]
      237 GETIMPORT                        R5 K38 [Enum.InputActionType.Bool]
      239 CALL                             R4 1 0
      240 GETUPVAL                         R4 6
      241 LOADK                            R5 K14 ["Keycode"]
      242 CALL                             R4 1 0
      243 RETURN                           R0 0
      244 GETUPVAL                         R2 0
      245 GETTABLEKS                       R2 R2 K41 ["EDIT_ACTION_DIRECTION1D"]
      247 JUMPIFNOTEQ                      R0 R2 ; [+24]
      249 GETIMPORT                        R2 K43 [Enum.InputActionType.Direction1D]
      251 GETUPVAL                         R3 9
      252 MOVE                             R4 R2
      253 CALL                             R3 1 1
      254 GETUPVAL                         R4 4
      255 GETTABLEKS                       R4 R4 K16 ["updateAction"]
      257 GETUPVAL                         R5 2
      258 GETTABLEKS                       R5 R5 K9 ["uuid"]
      260 DUPTABLE                         R6 K39 [{"type"}]
      261 SETTABLEKS                       R2 R6 K23 ["type"]
      263 MOVE                             R7 R3
      264 CALL                             R4 3 0
      265 GETUPVAL                         R4 10
      266 GETTABLEKS                       R4 R4 K40 ["countInputActionTypeSelected"]
      268 GETIMPORT                        R5 K43 [Enum.InputActionType.Direction1D]
      270 CALL                             R4 1 0
      271 RETURN                           R0 0
      272 GETUPVAL                         R2 0
      273 GETTABLEKS                       R2 R2 K44 ["EDIT_ACTION_DIRECTION2D"]
      275 JUMPIFNOTEQ                      R0 R2 ; [+24]
      277 GETIMPORT                        R2 K46 [Enum.InputActionType.Direction2D]
      279 GETUPVAL                         R3 9
      280 MOVE                             R4 R2
      281 CALL                             R3 1 1
      282 GETUPVAL                         R4 4
      283 GETTABLEKS                       R4 R4 K16 ["updateAction"]
      285 GETUPVAL                         R5 2
      286 GETTABLEKS                       R5 R5 K9 ["uuid"]
      288 DUPTABLE                         R6 K39 [{"type"}]
      289 SETTABLEKS                       R2 R6 K23 ["type"]
      291 MOVE                             R7 R3
      292 CALL                             R4 3 0
      293 GETUPVAL                         R4 10
      294 GETTABLEKS                       R4 R4 K40 ["countInputActionTypeSelected"]
      296 GETIMPORT                        R5 K46 [Enum.InputActionType.Direction2D]
      298 CALL                             R4 1 0
      299 RETURN                           R0 0
      300 GETUPVAL                         R2 0
      301 GETTABLEKS                       R2 R2 K47 ["EDIT_ACTION_DIRECTION3D"]
      303 JUMPIFNOTEQ                      R0 R2 ; [+24]
      305 GETIMPORT                        R2 K49 [Enum.InputActionType.Direction3D]
      307 GETUPVAL                         R3 9
      308 MOVE                             R4 R2
      309 CALL                             R3 1 1
      310 GETUPVAL                         R4 4
      311 GETTABLEKS                       R4 R4 K16 ["updateAction"]
      313 GETUPVAL                         R5 2
      314 GETTABLEKS                       R5 R5 K9 ["uuid"]
      316 DUPTABLE                         R6 K39 [{"type"}]
      317 SETTABLEKS                       R2 R6 K23 ["type"]
      319 MOVE                             R7 R3
      320 CALL                             R4 3 0
      321 GETUPVAL                         R4 10
      322 GETTABLEKS                       R4 R4 K40 ["countInputActionTypeSelected"]
      324 GETIMPORT                        R5 K49 [Enum.InputActionType.Direction3D]
      326 CALL                             R4 1 0
      327 RETURN                           R0 0
      328 GETUPVAL                         R2 0
      329 GETTABLEKS                       R2 R2 K50 ["EDIT_ACTION_VIEWPORT_POSITION"]
      331 JUMPIFNOTEQ                      R0 R2 ; [+27]
      333 GETIMPORT                        R2 K52 [Enum.InputActionType.ViewportPosition]
      335 GETUPVAL                         R3 9
      336 MOVE                             R4 R2
      337 CALL                             R3 1 1
      338 GETUPVAL                         R4 4
      339 GETTABLEKS                       R4 R4 K16 ["updateAction"]
      341 GETUPVAL                         R5 2
      342 GETTABLEKS                       R5 R5 K9 ["uuid"]
      344 DUPTABLE                         R6 K39 [{"type"}]
      345 SETTABLEKS                       R2 R6 K23 ["type"]
      347 MOVE                             R7 R3
      348 CALL                             R4 3 0
      349 GETUPVAL                         R4 10
      350 GETTABLEKS                       R4 R4 K40 ["countInputActionTypeSelected"]
      352 GETIMPORT                        R5 K52 [Enum.InputActionType.ViewportPosition]
      354 CALL                             R4 1 0
      355 GETUPVAL                         R4 6
      356 LOADK                            R5 K14 ["Keycode"]
      357 CALL                             R4 1 0
      358 RETURN                           R0 0
      359 RETURN                           R0 0

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
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R6 R0 K2 ["uuid"]
       31 CALL                             R5 1 1
       32 GETUPVAL                         R6 6
       33 MOVE                             R7 R5
       34 CALL                             R6 1 1
       35 LOADB                            R7 1
       36 JUMPIFEQKNIL                     R5 ; [+3]
       38 GETTABLEKS                       R7 R5 K3 ["enabled"]
       40 GETTABLEKS                       R8 R0 K4 ["context"]
       42 GETTABLEKS                       R8 R8 K3 ["enabled"]
       44 JUMPIFNOT                        R5 ; [+3]
       45 GETTABLEKS                       R9 R5 K5 ["defaultPlayerScript"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R9
       49 NOT                              R10 R8
       50 JUMPIF                           R10 ; [+1]
       51 NOT                              R10 R7
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R11 R11 K6 ["useRef"]
       55 LOADNIL                          R12
       56 CALL                             R11 1 1
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R12 R12 K7 ["useState"]
       60 LOADNIL                          R13
       61 CALL                             R12 1 2
       62 GETUPVAL                         R14 7
       63 MOVE                             R15 R5
       64 CALL                             R14 1 1
       65 GETUPVAL                         R15 8
       66 MOVE                             R16 R5
       67 CALL                             R15 1 1
       68 GETUPVAL                         R16 9
       69 JUMPIFNOT                        R5 ; [+3]
       70 GETTABLEKS                       R17 R5 K8 ["type"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R17
       74 CALL                             R16 1 5
       75 GETUPVAL                         R21 10
       76 GETTABLEKS                       R22 R0 K2 ["uuid"]
       78 JUMPIFNOT                        R6 ; [+16]
       79 LOADB                            R23 1
       80 GETTABLEKS                       R26 R6 K9 ["Keycode"]
       82 LENGTH                           R25 R26
       83 GETTABLEKS                       R27 R6 K10 ["Composite"]
       85 LENGTH                           R26 R27
       86 ADD                              R24 R25 R26
       87 LOADN                            R25 1
       88 JUMPIFLT                         R25 R24 ; [+7]
       90 JUMPIFNOTEQKNIL                  R17 ; [+2]
       92 LOADB                            R23 0 +1
       93 LOADB                            R23 1
       94 JUMP                             ; [+1]
       95 LOADB                            R23 0
       96 CALL                             R21 2 2
       97 GETUPVAL                         R23 0
       98 GETTABLEKS                       R23 R23 K7 ["useState"]
      100 LOADNIL                          R24
      101 CALL                             R23 1 2
      102 GETUPVAL                         R25 0
      103 GETTABLEKS                       R25 R25 K11 ["useMemo"]
      105 NEWCLOSURE                       R26 P0
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R5
      108 CAPTURE                          UPVAL U11
      109 NEWTABLE                         R27 0 2
      111 MOVE                             R28 R6
      112 MOVE                             R29 R5
      113 SETLIST                          R27 R28 2 [1]
      115 CALL                             R25 2 1
      116 GETUPVAL                         R26 0
      117 GETTABLEKS                       R26 R26 K12 ["useCallback"]
      119 NEWCLOSURE                       R27 P1
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R2
      123 NEWTABLE                         R28 0 3
      125 MOVE                             R29 R5
      126 MOVE                             R30 R6
      127 MOVE                             R31 R2
      128 SETLIST                          R28 R29 3 [1]
      130 CALL                             R26 2 1
      131 GETUPVAL                         R27 0
      132 GETTABLEKS                       R27 R27 K11 ["useMemo"]
      134 NEWCLOSURE                       R28 P2
      135 CAPTURE                          UPVAL U12
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R14
      141 NEWTABLE                         R29 0 5
      143 MOVE                             R30 R3
      144 MOVE                             R31 R5
      145 MOVE                             R32 R7
      146 MOVE                             R33 R8
      147 MOVE                             R34 R14
      148 SETLIST                          R29 R30 5 [1]
      150 CALL                             R27 2 1
      151 GETUPVAL                         R28 13
      152 GETTABLEKS                       R28 R28 K13 ["useEventCallback"]
      154 NEWCLOSURE                       R29 P3
      155 CAPTURE                          UPVAL U14
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R2
      160 CAPTURE                          UPVAL U15
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R26
      165 CAPTURE                          VAL R4
      166 CALL                             R28 1 1
      167 GETUPVAL                         R29 13
      168 GETTABLEKS                       R29 R29 K13 ["useEventCallback"]
      170 NEWCLOSURE                       R30 P4
      171 CAPTURE                          VAL R13
      172 CALL                             R29 1 1
      173 MOVE                             R30 R14
      174 JUMPIFNOT                        R30 ; [+16]
      175 MOVE                             R30 R12
      176 JUMPIFNOT                        R30 ; [+14]
      177 GETUPVAL                         R30 0
      178 GETTABLEKS                       R30 R30 K14 ["createElement"]
      180 GETUPVAL                         R31 16
      181 DUPTABLE                         R32 K19 [{"anchorRef", "binding", "menuOption", "onClose"}]
      182 SETTABLEKS                       R11 R32 K15 ["anchorRef"]
      184 SETTABLEKS                       R14 R32 K16 ["binding"]
      186 SETTABLEKS                       R12 R32 K17 ["menuOption"]
      188 SETTABLEKS                       R29 R32 K18 ["onClose"]
      190 CALL                             R30 2 1
      191 GETUPVAL                         R31 13
      192 GETTABLEKS                       R31 R31 K20 ["createNextOrder"]
      194 CALL                             R31 0 1
      195 JUMPIFEQKNIL                     R5 ; [+3]
      197 JUMPIFNOTEQKNIL                  R6 ; [+3]
      199 LOADNIL                          R32
      200 RETURN                           R32 1
      201 JUMPIF                           R9 ; [+46]
      202 JUMPIFNOT                        R15 ; [+45]
      203 GETUPVAL                         R32 0
      204 GETTABLEKS                       R32 R32 K14 ["createElement"]
      206 GETUPVAL                         R33 17
      207 DUPTABLE                         R34 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      208 GETTABLEKS                       R35 R0 K21 ["LayoutOrder"]
      210 SETTABLEKS                       R35 R34 K21 ["LayoutOrder"]
      212 LOADK                            R35 K26 ["action-%*"]
      213 GETTABLEKS                       R37 R5 K27 ["name"]
      215 NAMECALL                         R35 R35 K28 ["format"]
      217 CALL                             R35 2 1
      218 SETTABLEKS                       R35 R34 K24 ["testId"]
      220 DUPTABLE                         R35 K30 [{"HeaderRow"}]
      221 GETUPVAL                         R36 0
      222 GETTABLEKS                       R36 R36 K14 ["createElement"]
      224 GETUPVAL                         R37 18
      225 DUPTABLE                         R38 K35 [{["bindings"], ["LayoutOrder"] = 1, ["nodeProps"], ["stateString"]}]
      226 GETTABLEKS                       R39 R6 K36 ["All"]
      228 SETTABLEKS                       R39 R38 K31 ["bindings"]
      230 DUPTABLE                         R39 K42 [{["action"], ["depth"] = 1, ["disabled"], ["icon"] = "InputAction", ["name"]}]
      231 SETTABLEKS                       R5 R39 K37 ["action"]
      233 SETTABLEKS                       R10 R39 K39 ["disabled"]
      235 GETTABLEKS                       R40 R5 K27 ["name"]
      237 SETTABLEKS                       R40 R39 K27 ["name"]
      239 SETTABLEKS                       R39 R38 K33 ["nodeProps"]
      241 SETTABLEKS                       R15 R38 K34 ["stateString"]
      243 CALL                             R36 2 1
      244 SETTABLEKS                       R36 R35 K29 ["HeaderRow"]
      246 CALL                             R32 3 -1
      247 RETURN                           R32 -1
      248 JUMPIFNOTEQKNIL                  R17 ; [+106]
      250 GETTABLEKS                       R33 R6 K9 ["Keycode"]
      252 LENGTH                           R32 R33
      253 LOADN                            R33 1
      254 JUMPIFNOTLE                      R32 R33 ; [+8]
      256 GETTABLEKS                       R33 R6 K10 ["Composite"]
      258 LENGTH                           R32 R33
      259 JUMPIFNOTEQKN                    R32 K43 [0] ; [+3]
      261 JUMPIFEQKNIL                     R23 ; [+3]
      263 JUMPIFNOTEQKS                    R23 K9 ["Keycode"] ; [+91]
      265 GETTABLEKS                       R33 R6 K9 ["Keycode"]
      267 GETTABLEN                        R32 R33 1
      268 JUMPIF                           R32 ; [+2]
      269 NEWTABLE                         R32 0 0
      271 GETUPVAL                         R33 0
      272 GETTABLEKS                       R33 R33 K14 ["createElement"]
      274 GETUPVAL                         R34 17
      275 DUPTABLE                         R35 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      276 GETTABLEKS                       R36 R0 K21 ["LayoutOrder"]
      278 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      280 LOADK                            R36 K26 ["action-%*"]
      281 GETTABLEKS                       R38 R5 K27 ["name"]
      283 NAMECALL                         R36 R36 K28 ["format"]
      285 CALL                             R36 2 1
      286 SETTABLEKS                       R36 R35 K24 ["testId"]
      288 DUPTABLE                         R36 K45 [{"HeaderRow", "PropertyPopover"}]
      289 GETUPVAL                         R37 0
      290 GETTABLEKS                       R37 R37 K14 ["createElement"]
      292 GETUPVAL                         R38 19
      293 DUPTABLE                         R39 K54 [{["action"], ["anchorRef"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["disabled"], ["context"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingCreateCommand"], ["onBindingEditCommand"], ["scriptableBinding"], ["validBindingsBySchema"]}]
      294 SETTABLEKS                       R5 R39 K37 ["action"]
      296 SETTABLEKS                       R11 R39 K15 ["anchorRef"]
      298 SETTABLEKS                       R32 R39 K31 ["bindings"]
      300 GETIMPORT                        R41 K56 [next]
      302 GETTABLEKS                       R42 R1 K57 ["instances"]
      304 CALL                             R41 1 1
      305 JUMPIFEQKNIL                     R41 ; [+4]
      307 NEWTABLE                         R40 0 0
      309 JUMP                             ; [+1]
      310 MOVE                             R40 R16
      311 SETTABLEKS                       R40 R39 K48 ["createMenu"]
      313 SETTABLEKS                       R10 R39 K39 ["disabled"]
      315 GETTABLEKS                       R40 R0 K4 ["context"]
      317 SETTABLEKS                       R40 R39 K4 ["context"]
      319 MOVE                             R40 R31
      320 CALL                             R40 0 1
      321 SETTABLEKS                       R40 R39 K21 ["LayoutOrder"]
      323 GETTABLEKS                       R40 R5 K27 ["name"]
      325 SETTABLEKS                       R40 R39 K27 ["name"]
      327 GETIMPORT                        R41 K56 [next]
      329 GETTABLEKS                       R42 R1 K57 ["instances"]
      331 CALL                             R41 1 1
      332 JUMPIFEQKNIL                     R41 ; [+3]
      334 LOADNIL                          R40
      335 JUMP                             ; [+1]
      336 MOVE                             R40 R18
      337 SETTABLEKS                       R40 R39 K50 ["onBindingCreateCommand"]
      339 NEWCLOSURE                       R40 P5
      340 CAPTURE                          VAL R28
      341 CAPTURE                          VAL R32
      342 SETTABLEKS                       R40 R39 K51 ["onBindingEditCommand"]
      344 SETTABLEKS                       R14 R39 K52 ["scriptableBinding"]
      346 SETTABLEKS                       R25 R39 K53 ["validBindingsBySchema"]
      348 CALL                             R37 2 1
      349 SETTABLEKS                       R37 R36 K29 ["HeaderRow"]
      351 SETTABLEKS                       R30 R36 K44 ["PropertyPopover"]
      353 CALL                             R33 3 -1
      354 RETURN                           R33 -1
      355 JUMPIFNOTEQKNIL                  R17 ; [+112]
      357 GETTABLEKS                       R33 R6 K9 ["Keycode"]
      359 LENGTH                           R32 R33
      360 JUMPIFNOTEQKN                    R32 K43 [0] ; [+9]
      362 GETTABLEKS                       R33 R6 K10 ["Composite"]
      364 LENGTH                           R32 R33
      365 LOADN                            R33 1
      366 JUMPIFNOTLE                      R32 R33 ; [+3]
      368 JUMPIFEQKNIL                     R23 ; [+3]
      370 JUMPIFNOTEQKS                    R23 K10 ["Composite"] ; [+97]
      372 GETTABLEKS                       R34 R6 K10 ["Composite"]
      374 LENGTH                           R33 R34
      375 LOADN                            R34 0
      376 JUMPIFNOTLT                      R34 R33 ; [+5]
      378 GETTABLEKS                       R33 R6 K10 ["Composite"]
      380 GETTABLEN                        R32 R33 1
      381 JUMP                             ; [+2]
      382 NEWTABLE                         R32 0 0
      384 GETUPVAL                         R33 0
      385 GETTABLEKS                       R33 R33 K14 ["createElement"]
      387 GETUPVAL                         R34 17
      388 DUPTABLE                         R35 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      389 GETTABLEKS                       R36 R0 K21 ["LayoutOrder"]
      391 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      393 LOADK                            R36 K26 ["action-%*"]
      394 GETTABLEKS                       R38 R5 K27 ["name"]
      396 NAMECALL                         R36 R36 K28 ["format"]
      398 CALL                             R36 2 1
      399 SETTABLEKS                       R36 R35 K24 ["testId"]
      401 DUPTABLE                         R36 K45 [{"HeaderRow", "PropertyPopover"}]
      402 GETUPVAL                         R37 0
      403 GETTABLEKS                       R37 R37 K14 ["createElement"]
      405 GETUPVAL                         R38 20
      406 DUPTABLE                         R39 K54 [{["action"], ["anchorRef"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["disabled"], ["context"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingCreateCommand"], ["onBindingEditCommand"], ["scriptableBinding"], ["validBindingsBySchema"]}]
      407 SETTABLEKS                       R5 R39 K37 ["action"]
      409 SETTABLEKS                       R11 R39 K15 ["anchorRef"]
      411 SETTABLEKS                       R32 R39 K31 ["bindings"]
      413 GETIMPORT                        R41 K56 [next]
      415 GETTABLEKS                       R42 R1 K57 ["instances"]
      417 CALL                             R41 1 1
      418 JUMPIFEQKNIL                     R41 ; [+4]
      420 NEWTABLE                         R40 0 0
      422 JUMP                             ; [+1]
      423 MOVE                             R40 R16
      424 SETTABLEKS                       R40 R39 K48 ["createMenu"]
      426 SETTABLEKS                       R10 R39 K39 ["disabled"]
      428 GETTABLEKS                       R40 R0 K4 ["context"]
      430 SETTABLEKS                       R40 R39 K4 ["context"]
      432 MOVE                             R40 R31
      433 CALL                             R40 0 1
      434 SETTABLEKS                       R40 R39 K21 ["LayoutOrder"]
      436 GETTABLEKS                       R40 R5 K27 ["name"]
      438 SETTABLEKS                       R40 R39 K27 ["name"]
      440 GETIMPORT                        R41 K56 [next]
      442 GETTABLEKS                       R42 R1 K57 ["instances"]
      444 CALL                             R41 1 1
      445 JUMPIFEQKNIL                     R41 ; [+3]
      447 LOADNIL                          R40
      448 JUMP                             ; [+1]
      449 MOVE                             R40 R18
      450 SETTABLEKS                       R40 R39 K50 ["onBindingCreateCommand"]
      452 NEWCLOSURE                       R40 P6
      453 CAPTURE                          VAL R28
      454 CAPTURE                          VAL R32
      455 SETTABLEKS                       R40 R39 K51 ["onBindingEditCommand"]
      457 SETTABLEKS                       R14 R39 K52 ["scriptableBinding"]
      459 SETTABLEKS                       R25 R39 K53 ["validBindingsBySchema"]
      461 CALL                             R37 2 1
      462 SETTABLEKS                       R37 R36 K29 ["HeaderRow"]
      464 SETTABLEKS                       R30 R36 K44 ["PropertyPopover"]
      466 CALL                             R33 3 -1
      467 RETURN                           R33 -1
      468 DUPTABLE                         R32 K60 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite", "PropertyPopover"}]
      469 GETUPVAL                         R33 0
      470 GETTABLEKS                       R33 R33 K14 ["createElement"]
      472 GETUPVAL                         R34 18
      473 DUPTABLE                         R35 K61 [{"bindings", "LayoutOrder", "nodeProps"}]
      474 GETTABLEKS                       R36 R6 K36 ["All"]
      476 SETTABLEKS                       R36 R35 K31 ["bindings"]
      478 MOVE                             R36 R31
      479 CALL                             R36 0 1
      480 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      482 DUPTABLE                         R36 K67 [{["action"], ["anchorRef"], ["createMenu"], ["defaultPlayerScript"], ["depth"] = 1, ["disabled"], ["editMenu"], ["expanded"], ["icon"] = "InputAction", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      483 SETTABLEKS                       R5 R36 K37 ["action"]
      485 SETTABLEKS                       R11 R36 K15 ["anchorRef"]
      487 GETIMPORT                        R38 K56 [next]
      489 GETTABLEKS                       R39 R1 K57 ["instances"]
      491 CALL                             R38 1 1
      492 JUMPIFEQKNIL                     R38 ; [+3]
      494 LOADNIL                          R37
      495 JUMP                             ; [+1]
      496 MOVE                             R37 R16
      497 SETTABLEKS                       R37 R36 K48 ["createMenu"]
      499 GETTABLEKS                       R37 R5 K5 ["defaultPlayerScript"]
      501 SETTABLEKS                       R37 R36 K5 ["defaultPlayerScript"]
      503 SETTABLEKS                       R10 R36 K39 ["disabled"]
      505 SETTABLEKS                       R27 R36 K62 ["editMenu"]
      507 SETTABLEKS                       R21 R36 K63 ["expanded"]
      509 GETTABLEKS                       R37 R5 K27 ["name"]
      511 SETTABLEKS                       R37 R36 K27 ["name"]
      513 GETIMPORT                        R38 K56 [next]
      515 GETTABLEKS                       R39 R1 K57 ["instances"]
      517 CALL                             R38 1 1
      518 JUMPIFEQKNIL                     R38 ; [+3]
      520 LOADNIL                          R37
      521 JUMP                             ; [+1]
      522 MOVE                             R37 R18
      523 SETTABLEKS                       R37 R36 K64 ["onCreateMenuItemSelected"]
      525 SETTABLEKS                       R28 R36 K65 ["onEditMenuItemSelected"]
      527 SETTABLEKS                       R22 R36 K66 ["setExpanded"]
      529 SETTABLEKS                       R36 R35 K33 ["nodeProps"]
      531 CALL                             R33 2 1
      532 SETTABLEKS                       R33 R32 K29 ["HeaderRow"]
      534 LOADB                            R33 0
      535 JUMPIFNOTEQKS                    R17 K9 ["Keycode"] ; [+39]
      537 GETUPVAL                         R33 0
      538 GETTABLEKS                       R33 R33 K14 ["createElement"]
      540 GETUPVAL                         R34 19
      541 DUPTABLE                         R35 K70 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      542 SETTABLEKS                       R5 R35 K37 ["action"]
      544 NEWTABLE                         R36 0 0
      546 SETTABLEKS                       R36 R35 K31 ["bindings"]
      548 SETTABLEKS                       R10 R35 K39 ["disabled"]
      550 GETTABLEKS                       R36 R0 K4 ["context"]
      552 SETTABLEKS                       R36 R35 K4 ["context"]
      554 GETTABLEKS                       R38 R6 K9 ["Keycode"]
      556 LENGTH                           R37 R38
      557 ADDK                             R36 R37 K32 [1]
      558 SETTABLEKS                       R36 R35 K49 ["index"]
      560 MOVE                             R36 R31
      561 CALL                             R36 0 1
      562 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      564 SETTABLEKS                       R19 R35 K68 ["onCreated"]
      566 SETTABLEKS                       R20 R35 K69 ["onCancelBinding"]
      568 NEWCLOSURE                       R36 P7
      569 CAPTURE                          VAL R28
      570 SETTABLEKS                       R36 R35 K51 ["onBindingEditCommand"]
      572 SETTABLEKS                       R25 R35 K53 ["validBindingsBySchema"]
      574 CALL                             R33 2 1
      575 SETTABLEKS                       R33 R32 K58 ["CreatingKeyBind"]
      577 LOADB                            R33 0
      578 JUMPIFNOTEQKS                    R17 K10 ["Composite"] ; [+39]
      580 GETUPVAL                         R33 0
      581 GETTABLEKS                       R33 R33 K14 ["createElement"]
      583 GETUPVAL                         R34 20
      584 DUPTABLE                         R35 K70 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      585 SETTABLEKS                       R5 R35 K37 ["action"]
      587 NEWTABLE                         R36 0 0
      589 SETTABLEKS                       R36 R35 K31 ["bindings"]
      591 SETTABLEKS                       R10 R35 K39 ["disabled"]
      593 GETTABLEKS                       R36 R0 K4 ["context"]
      595 SETTABLEKS                       R36 R35 K4 ["context"]
      597 GETTABLEKS                       R38 R6 K10 ["Composite"]
      599 LENGTH                           R37 R38
      600 ADDK                             R36 R37 K32 [1]
      601 SETTABLEKS                       R36 R35 K49 ["index"]
      603 MOVE                             R36 R31
      604 CALL                             R36 0 1
      605 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      607 SETTABLEKS                       R19 R35 K68 ["onCreated"]
      609 SETTABLEKS                       R20 R35 K69 ["onCancelBinding"]
      611 NEWCLOSURE                       R36 P8
      612 CAPTURE                          VAL R28
      613 SETTABLEKS                       R36 R35 K51 ["onBindingEditCommand"]
      615 SETTABLEKS                       R25 R35 K53 ["validBindingsBySchema"]
      617 CALL                             R33 2 1
      618 SETTABLEKS                       R33 R32 K59 ["CreatingComposite"]
      620 SETTABLEKS                       R30 R32 K44 ["PropertyPopover"]
      622 JUMPIFNOT                        R21 ; [+106]
      623 GETTABLEKS                       R33 R6 K9 ["Keycode"]
      625 LOADNIL                          R34
      626 LOADNIL                          R35
      627 FORGPREP                         R33
      628 LOADK                            R38 K71 ["Keycode_%*"]
      629 MOVE                             R40 R36
      630 NAMECALL                         R38 R38 K28 ["format"]
      632 CALL                             R38 2 1
      633 GETUPVAL                         R39 0
      634 GETTABLEKS                       R39 R39 K14 ["createElement"]
      636 GETUPVAL                         R40 19
      637 DUPTABLE                         R41 K73 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      638 SETTABLEKS                       R5 R41 K37 ["action"]
      640 SETTABLEKS                       R37 R41 K31 ["bindings"]
      642 SETTABLEKS                       R10 R41 K39 ["disabled"]
      644 GETTABLEKS                       R42 R0 K4 ["context"]
      646 SETTABLEKS                       R42 R41 K4 ["context"]
      648 SETTABLEKS                       R36 R41 K49 ["index"]
      650 MOVE                             R42 R31
      651 CALL                             R42 0 1
      652 SETTABLEKS                       R42 R41 K21 ["LayoutOrder"]
      654 NEWCLOSURE                       R42 P9
      655 CAPTURE                          VAL R28
      656 CAPTURE                          VAL R37
      657 SETTABLEKS                       R42 R41 K51 ["onBindingEditCommand"]
      659 LOADN                            R43 1
      660 JUMPIFNOTLT                      R43 R36 ; [+6]
      662 GETTABLEKS                       R43 R6 K9 ["Keycode"]
      664 SUBK                             R44 R36 K32 [1]
      665 GETTABLE                         R42 R43 R44
      666 JUMP                             ; [+1]
      667 LOADNIL                          R42
      668 SETTABLEKS                       R42 R41 K72 ["previousBindings"]
      670 SETTABLEKS                       R25 R41 K53 ["validBindingsBySchema"]
      672 CALL                             R39 2 1
      673 SETTABLE                         R39 R32 R38
      674 FORGLOOP                         R33 2 ; [-47]
      676 GETTABLEKS                       R33 R6 K10 ["Composite"]
      678 LOADNIL                          R34
      679 LOADNIL                          R35
      680 FORGPREP                         R33
      681 LOADK                            R38 K74 ["Composite_%*"]
      682 MOVE                             R40 R36
      683 NAMECALL                         R38 R38 K28 ["format"]
      685 CALL                             R38 2 1
      686 GETUPVAL                         R39 0
      687 GETTABLEKS                       R39 R39 K14 ["createElement"]
      689 GETUPVAL                         R40 20
      690 DUPTABLE                         R41 K73 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      691 SETTABLEKS                       R5 R41 K37 ["action"]
      693 SETTABLEKS                       R37 R41 K31 ["bindings"]
      695 SETTABLEKS                       R10 R41 K39 ["disabled"]
      697 GETTABLEKS                       R42 R0 K4 ["context"]
      699 SETTABLEKS                       R42 R41 K4 ["context"]
      701 SETTABLEKS                       R36 R41 K49 ["index"]
      703 MOVE                             R42 R31
      704 CALL                             R42 0 1
      705 SETTABLEKS                       R42 R41 K21 ["LayoutOrder"]
      707 NEWCLOSURE                       R42 P10
      708 CAPTURE                          VAL R28
      709 CAPTURE                          VAL R37
      710 SETTABLEKS                       R42 R41 K51 ["onBindingEditCommand"]
      712 LOADN                            R43 1
      713 JUMPIFNOTLT                      R43 R36 ; [+6]
      715 GETTABLEKS                       R43 R6 K10 ["Composite"]
      717 SUBK                             R44 R36 K32 [1]
      718 GETTABLE                         R42 R43 R44
      719 JUMP                             ; [+1]
      720 LOADNIL                          R42
      721 SETTABLEKS                       R42 R41 K72 ["previousBindings"]
      723 SETTABLEKS                       R25 R41 K53 ["validBindingsBySchema"]
      725 CALL                             R39 2 1
      726 SETTABLE                         R39 R32 R38
      727 FORGLOOP                         R33 2 ; [-47]
      729 GETUPVAL                         R33 0
      730 GETTABLEKS                       R33 R33 K14 ["createElement"]
      732 GETUPVAL                         R34 17
      733 DUPTABLE                         R35 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      734 GETTABLEKS                       R36 R0 K21 ["LayoutOrder"]
      736 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      738 LOADK                            R36 K26 ["action-%*"]
      739 GETTABLEKS                       R38 R5 K27 ["name"]
      741 NAMECALL                         R36 R36 K28 ["format"]
      743 CALL                             R36 2 1
      744 SETTABLEKS                       R36 R35 K24 ["testId"]
      746 MOVE                             R36 R32
      747 CALL                             R33 3 -1
      748 RETURN                           R33 -1

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
       47 GETTABLEKS                       R8 R8 K15 ["FilterConfiguration"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K14 ["Src"]
       54 GETTABLEKS                       R9 R9 K11 ["Contexts"]
       56 GETTABLEKS                       R9 R9 K16 ["InputConfiguration"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K14 ["Src"]
       63 GETTABLEKS                       R10 R10 K11 ["Contexts"]
       65 GETTABLEKS                       R10 R10 K17 ["Telemetry"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K14 ["Src"]
       72 GETTABLEKS                       R11 R11 K18 ["Components"]
       74 GETTABLEKS                       R11 R11 K19 ["Table"]
       76 GETTABLEKS                       R11 R11 K20 ["Row"]
       78 GETTABLEKS                       R11 R11 K21 ["Summary"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K14 ["Src"]
       85 GETTABLEKS                       R12 R12 K18 ["Components"]
       87 GETTABLEKS                       R12 R12 K19 ["Table"]
       89 GETTABLEKS                       R12 R12 K22 ["CompositeBinding"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K14 ["Src"]
       96 GETTABLEKS                       R13 R13 K18 ["Components"]
       98 GETTABLEKS                       R13 R13 K19 ["Table"]
      100 GETTABLEKS                       R13 R13 K23 ["KeycodeBinding"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K14 ["Src"]
      107 GETTABLEKS                       R14 R14 K18 ["Components"]
      109 GETTABLEKS                       R14 R14 K24 ["Property"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K14 ["Src"]
      116 GETTABLEKS                       R15 R15 K25 ["Types"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K14 ["Src"]
      123 GETTABLEKS                       R16 R16 K26 ["Util"]
      125 GETTABLEKS                       R16 R16 K27 ["getSchemas"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R17 R0 K14 ["Src"]
      132 GETTABLEKS                       R17 R17 K26 ["Util"]
      134 GETTABLEKS                       R17 R17 K28 ["Menus"]
      136 GETTABLEKS                       R17 R17 K29 ["getSummaryMenu"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R18 R0 K14 ["Src"]
      143 GETTABLEKS                       R18 R18 K26 ["Util"]
      145 GETTABLEKS                       R18 R18 K30 ["Binding"]
      147 GETTABLEKS                       R18 R18 K31 ["getValidBindingsBySchema"]
      149 CALL                             R17 1 1
      150 GETIMPORT                        R18 K5 [require]
      152 GETTABLEKS                       R19 R0 K14 ["Src"]
      154 GETTABLEKS                       R19 R19 K32 ["Hooks"]
      156 GETTABLEKS                       R19 R19 K33 ["Action"]
      158 GETTABLEKS                       R19 R19 K34 ["useAction"]
      160 CALL                             R18 1 1
      161 GETIMPORT                        R19 K5 [require]
      163 GETTABLEKS                       R20 R0 K14 ["Src"]
      165 GETTABLEKS                       R20 R20 K32 ["Hooks"]
      167 GETTABLEKS                       R20 R20 K33 ["Action"]
      169 GETTABLEKS                       R20 R20 K35 ["useActionState"]
      171 CALL                             R19 1 1
      172 GETIMPORT                        R20 K5 [require]
      174 GETTABLEKS                       R21 R0 K14 ["Src"]
      176 GETTABLEKS                       R21 R21 K32 ["Hooks"]
      178 GETTABLEKS                       R21 R21 K30 ["Binding"]
      180 GETTABLEKS                       R21 R21 K36 ["useBindings"]
      182 CALL                             R20 1 1
      183 GETIMPORT                        R21 K5 [require]
      185 GETTABLEKS                       R22 R0 K14 ["Src"]
      187 GETTABLEKS                       R22 R22 K32 ["Hooks"]
      189 GETTABLEKS                       R22 R22 K30 ["Binding"]
      191 GETTABLEKS                       R22 R22 K37 ["useCreateBinding"]
      193 CALL                             R21 1 1
      194 GETIMPORT                        R22 K5 [require]
      196 GETTABLEKS                       R23 R0 K14 ["Src"]
      198 GETTABLEKS                       R23 R23 K32 ["Hooks"]
      200 GETTABLEKS                       R23 R23 K38 ["useExpanded"]
      202 CALL                             R22 1 1
      203 GETIMPORT                        R23 K5 [require]
      205 GETTABLEKS                       R24 R0 K14 ["Src"]
      207 GETTABLEKS                       R24 R24 K32 ["Hooks"]
      209 GETTABLEKS                       R24 R24 K33 ["Action"]
      211 GETTABLEKS                       R24 R24 K39 ["useScriptableBinding"]
      213 CALL                             R23 1 1
      214 GETIMPORT                        R24 K5 [require]
      216 GETTABLEKS                       R25 R0 K14 ["Src"]
      218 GETTABLEKS                       R25 R25 K26 ["Util"]
      220 GETTABLEKS                       R25 R25 K40 ["Constants"]
      222 GETTABLEKS                       R25 R25 K41 ["MenuIdentifiers"]
      224 CALL                             R24 1 1
      225 DUPCLOSURE                       R25 K42 [PROTO_11]
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R8
      229 CAPTURE                          VAL R5
      230 CAPTURE                          VAL R9
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R19
      235 CAPTURE                          VAL R21
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R17
      238 CAPTURE                          VAL R16
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R24
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R13
      243 CAPTURE                          VAL R6
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R12
      246 CAPTURE                          VAL R11
      247 RETURN                           R25 1
