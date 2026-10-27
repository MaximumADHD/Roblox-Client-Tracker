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
       30 GETUPVAL                         R2 4
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+13]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K7 ["SHOW_IN_EXPLORER"]
       36 JUMPIFNOTEQ                      R0 R2 ; [+9]
       38 GETUPVAL                         R2 5
       39 GETTABLEKS                       R2 R2 K8 ["showInExplorer"]
       41 GETUPVAL                         R3 2
       42 GETTABLEKS                       R3 R3 K9 ["uuid"]
       44 CALL                             R2 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K10 ["ROW_USE_COMPOSITE"]
       49 JUMPIFNOTEQ                      R0 R2 ; [+24]
       51 JUMPIFEQKNIL                     R1 ; [+22]
       53 LOADB                            R2 0
       54 GETUPVAL                         R3 6
       55 CALL                             R3 0 3
       56 FORGPREP                         R3
       57 GETTABLE                         R8 R1 R7
       58 JUMPIFNOT                        R8 ; [+9]
       59 GETUPVAL                         R9 5
       60 GETTABLEKS                       R9 R9 K11 ["updateBinding"]
       62 GETTABLEKS                       R10 R8 K9 ["uuid"]
       64 LOADNIL                          R11
       65 MOVE                             R12 R2
       66 CALL                             R9 3 0
       67 LOADB                            R2 1
       68 FORGLOOP                         R3 2 ; [-12]
       70 GETUPVAL                         R3 7
       71 LOADK                            R4 K12 ["Composite"]
       72 CALL                             R3 1 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R2 0
       75 GETTABLEKS                       R2 R2 K13 ["ROW_USE_KEYCODE"]
       77 JUMPIFNOTEQ                      R0 R2 ; [+24]
       79 JUMPIFEQKNIL                     R1 ; [+22]
       81 LOADB                            R2 0
       82 GETUPVAL                         R3 6
       83 CALL                             R3 0 3
       84 FORGPREP                         R3
       85 GETTABLE                         R8 R1 R7
       86 JUMPIFNOT                        R8 ; [+9]
       87 GETUPVAL                         R9 5
       88 GETTABLEKS                       R9 R9 K11 ["updateBinding"]
       90 GETTABLEKS                       R10 R8 K9 ["uuid"]
       92 LOADNIL                          R11
       93 MOVE                             R12 R2
       94 CALL                             R9 3 0
       95 LOADB                            R2 1
       96 FORGLOOP                         R3 2 ; [-12]
       98 GETUPVAL                         R3 7
       99 LOADK                            R4 K14 ["Keycode"]
      100 CALL                             R3 1 0
      101 RETURN                           R0 0
      102 GETUPVAL                         R2 0
      103 GETTABLEKS                       R2 R2 K15 ["DELETE"]
      105 JUMPIFNOTEQ                      R0 R2 ; [+10]
      107 GETUPVAL                         R2 5
      108 GETTABLEKS                       R2 R2 K16 ["updateAction"]
      110 GETUPVAL                         R3 2
      111 GETTABLEKS                       R3 R3 K9 ["uuid"]
      113 LOADNIL                          R4
      114 CALL                             R2 2 0
      115 RETURN                           R0 0
      116 GETUPVAL                         R2 0
      117 GETTABLEKS                       R2 R2 K17 ["ENABLED"]
      119 JUMPIFNOTEQ                      R0 R2 ; [+16]
      121 GETUPVAL                         R2 5
      122 GETTABLEKS                       R2 R2 K16 ["updateAction"]
      124 GETUPVAL                         R3 2
      125 GETTABLEKS                       R3 R3 K9 ["uuid"]
      127 DUPTABLE                         R4 K19 [{"enabled"}]
      128 GETUPVAL                         R6 2
      129 GETTABLEKS                       R6 R6 K18 ["enabled"]
      131 NOT                              R5 R6
      132 SETTABLEKS                       R5 R4 K18 ["enabled"]
      134 CALL                             R2 2 0
      135 RETURN                           R0 0
      136 GETUPVAL                         R2 0
      137 GETTABLEKS                       R2 R2 K20 ["SCRIPTABLE_ENABLED"]
      139 JUMPIFNOTEQ                      R0 R2 ; [+37]
      141 GETUPVAL                         R2 8
      142 JUMPIFNOT                        R2 ; [+9]
      143 GETUPVAL                         R2 5
      144 GETTABLEKS                       R2 R2 K11 ["updateBinding"]
      146 GETUPVAL                         R3 8
      147 GETTABLEKS                       R3 R3 K9 ["uuid"]
      149 LOADNIL                          R4
      150 CALL                             R2 2 0
      151 RETURN                           R0 0
      152 GETUPVAL                         R2 5
      153 GETTABLEKS                       R2 R2 K11 ["updateBinding"]
      155 LOADNIL                          R3
      156 DUPTABLE                         R4 K24 [{"name", "parentUuid", "type"}]
      157 LOADK                            R5 K25 ["%*Scriptable"]
      158 GETUPVAL                         R7 2
      159 GETTABLEKS                       R7 R7 K21 ["name"]
      161 NAMECALL                         R5 R5 K26 ["format"]
      163 CALL                             R5 2 1
      164 SETTABLEKS                       R5 R4 K21 ["name"]
      166 GETUPVAL                         R5 2
      167 GETTABLEKS                       R5 R5 K9 ["uuid"]
      169 SETTABLEKS                       R5 R4 K22 ["parentUuid"]
      171 GETIMPORT                        R5 K30 [Enum.InputBindingType.Scriptable]
      173 SETTABLEKS                       R5 R4 K23 ["type"]
      175 CALL                             R2 2 0
      176 RETURN                           R0 0
      177 GETUPVAL                         R2 0
      178 GETTABLEKS                       R2 R2 K31 ["SCRIPTABLE_RENAME"]
      180 JUMPIFNOTEQ                      R0 R2 ; [+7]
      182 GETUPVAL                         R2 8
      183 JUMPIFNOT                        R2 ; [+3]
      184 GETUPVAL                         R2 9
      185 MOVE                             R3 R0
      186 CALL                             R2 1 0
      187 RETURN                           R0 0
      188 GETUPVAL                         R2 4
      189 CALL                             R2 0 1
      190 JUMPIFNOT                        R2 ; [+15]
      191 GETUPVAL                         R2 0
      192 GETTABLEKS                       R2 R2 K32 ["SCRIPTABLE_SHOW_IN_EXPLORER"]
      194 JUMPIFNOTEQ                      R0 R2 ; [+11]
      196 GETUPVAL                         R2 8
      197 JUMPIFNOT                        R2 ; [+7]
      198 GETUPVAL                         R2 5
      199 GETTABLEKS                       R2 R2 K8 ["showInExplorer"]
      201 GETUPVAL                         R3 8
      202 GETTABLEKS                       R3 R3 K9 ["uuid"]
      204 CALL                             R2 1 0
      205 RETURN                           R0 0
      206 GETUPVAL                         R2 0
      207 GETTABLEKS                       R2 R2 K33 ["DUPLICATE"]
      209 JUMPIFNOTEQ                      R0 R2 ; [+9]
      211 GETUPVAL                         R2 5
      212 GETTABLEKS                       R2 R2 K34 ["duplicateAction"]
      214 GETUPVAL                         R3 2
      215 GETTABLEKS                       R3 R3 K9 ["uuid"]
      217 CALL                             R2 1 0
      218 RETURN                           R0 0
      219 GETUPVAL                         R2 0
      220 GETTABLEKS                       R2 R2 K35 ["EDIT_ACTION_BOOL"]
      222 JUMPIFNOTEQ                      R0 R2 ; [+27]
      224 GETIMPORT                        R2 K38 [Enum.InputActionType.Bool]
      226 GETUPVAL                         R3 10
      227 MOVE                             R4 R2
      228 CALL                             R3 1 1
      229 GETUPVAL                         R4 5
      230 GETTABLEKS                       R4 R4 K16 ["updateAction"]
      232 GETUPVAL                         R5 2
      233 GETTABLEKS                       R5 R5 K9 ["uuid"]
      235 DUPTABLE                         R6 K39 [{"type"}]
      236 SETTABLEKS                       R2 R6 K23 ["type"]
      238 MOVE                             R7 R3
      239 CALL                             R4 3 0
      240 GETUPVAL                         R4 11
      241 GETTABLEKS                       R4 R4 K40 ["countInputActionTypeSelected"]
      243 GETIMPORT                        R5 K38 [Enum.InputActionType.Bool]
      245 CALL                             R4 1 0
      246 GETUPVAL                         R4 7
      247 LOADK                            R5 K14 ["Keycode"]
      248 CALL                             R4 1 0
      249 RETURN                           R0 0
      250 GETUPVAL                         R2 0
      251 GETTABLEKS                       R2 R2 K41 ["EDIT_ACTION_DIRECTION1D"]
      253 JUMPIFNOTEQ                      R0 R2 ; [+24]
      255 GETIMPORT                        R2 K43 [Enum.InputActionType.Direction1D]
      257 GETUPVAL                         R3 10
      258 MOVE                             R4 R2
      259 CALL                             R3 1 1
      260 GETUPVAL                         R4 5
      261 GETTABLEKS                       R4 R4 K16 ["updateAction"]
      263 GETUPVAL                         R5 2
      264 GETTABLEKS                       R5 R5 K9 ["uuid"]
      266 DUPTABLE                         R6 K39 [{"type"}]
      267 SETTABLEKS                       R2 R6 K23 ["type"]
      269 MOVE                             R7 R3
      270 CALL                             R4 3 0
      271 GETUPVAL                         R4 11
      272 GETTABLEKS                       R4 R4 K40 ["countInputActionTypeSelected"]
      274 GETIMPORT                        R5 K43 [Enum.InputActionType.Direction1D]
      276 CALL                             R4 1 0
      277 RETURN                           R0 0
      278 GETUPVAL                         R2 0
      279 GETTABLEKS                       R2 R2 K44 ["EDIT_ACTION_DIRECTION2D"]
      281 JUMPIFNOTEQ                      R0 R2 ; [+24]
      283 GETIMPORT                        R2 K46 [Enum.InputActionType.Direction2D]
      285 GETUPVAL                         R3 10
      286 MOVE                             R4 R2
      287 CALL                             R3 1 1
      288 GETUPVAL                         R4 5
      289 GETTABLEKS                       R4 R4 K16 ["updateAction"]
      291 GETUPVAL                         R5 2
      292 GETTABLEKS                       R5 R5 K9 ["uuid"]
      294 DUPTABLE                         R6 K39 [{"type"}]
      295 SETTABLEKS                       R2 R6 K23 ["type"]
      297 MOVE                             R7 R3
      298 CALL                             R4 3 0
      299 GETUPVAL                         R4 11
      300 GETTABLEKS                       R4 R4 K40 ["countInputActionTypeSelected"]
      302 GETIMPORT                        R5 K46 [Enum.InputActionType.Direction2D]
      304 CALL                             R4 1 0
      305 RETURN                           R0 0
      306 GETUPVAL                         R2 0
      307 GETTABLEKS                       R2 R2 K47 ["EDIT_ACTION_DIRECTION3D"]
      309 JUMPIFNOTEQ                      R0 R2 ; [+24]
      311 GETIMPORT                        R2 K49 [Enum.InputActionType.Direction3D]
      313 GETUPVAL                         R3 10
      314 MOVE                             R4 R2
      315 CALL                             R3 1 1
      316 GETUPVAL                         R4 5
      317 GETTABLEKS                       R4 R4 K16 ["updateAction"]
      319 GETUPVAL                         R5 2
      320 GETTABLEKS                       R5 R5 K9 ["uuid"]
      322 DUPTABLE                         R6 K39 [{"type"}]
      323 SETTABLEKS                       R2 R6 K23 ["type"]
      325 MOVE                             R7 R3
      326 CALL                             R4 3 0
      327 GETUPVAL                         R4 11
      328 GETTABLEKS                       R4 R4 K40 ["countInputActionTypeSelected"]
      330 GETIMPORT                        R5 K49 [Enum.InputActionType.Direction3D]
      332 CALL                             R4 1 0
      333 RETURN                           R0 0
      334 GETUPVAL                         R2 0
      335 GETTABLEKS                       R2 R2 K50 ["EDIT_ACTION_VIEWPORT_POSITION"]
      337 JUMPIFNOTEQ                      R0 R2 ; [+27]
      339 GETIMPORT                        R2 K52 [Enum.InputActionType.ViewportPosition]
      341 GETUPVAL                         R3 10
      342 MOVE                             R4 R2
      343 CALL                             R3 1 1
      344 GETUPVAL                         R4 5
      345 GETTABLEKS                       R4 R4 K16 ["updateAction"]
      347 GETUPVAL                         R5 2
      348 GETTABLEKS                       R5 R5 K9 ["uuid"]
      350 DUPTABLE                         R6 K39 [{"type"}]
      351 SETTABLEKS                       R2 R6 K23 ["type"]
      353 MOVE                             R7 R3
      354 CALL                             R4 3 0
      355 GETUPVAL                         R4 11
      356 GETTABLEKS                       R4 R4 K40 ["countInputActionTypeSelected"]
      358 GETIMPORT                        R5 K52 [Enum.InputActionType.ViewportPosition]
      360 CALL                             R4 1 0
      361 GETUPVAL                         R4 7
      362 LOADK                            R5 K14 ["Keycode"]
      363 CALL                             R4 1 0
      364 RETURN                           R0 0
      365 RETURN                           R0 0

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
      159 CAPTURE                          UPVAL U15
      160 CAPTURE                          VAL R2
      161 CAPTURE                          UPVAL U16
      162 CAPTURE                          VAL R24
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R26
      166 CAPTURE                          VAL R4
      167 CALL                             R28 1 1
      168 GETUPVAL                         R29 13
      169 GETTABLEKS                       R29 R29 K13 ["useEventCallback"]
      171 NEWCLOSURE                       R30 P4
      172 CAPTURE                          VAL R13
      173 CALL                             R29 1 1
      174 MOVE                             R30 R14
      175 JUMPIFNOT                        R30 ; [+16]
      176 MOVE                             R30 R12
      177 JUMPIFNOT                        R30 ; [+14]
      178 GETUPVAL                         R30 0
      179 GETTABLEKS                       R30 R30 K14 ["createElement"]
      181 GETUPVAL                         R31 17
      182 DUPTABLE                         R32 K19 [{"anchorRef", "binding", "menuOption", "onClose"}]
      183 SETTABLEKS                       R11 R32 K15 ["anchorRef"]
      185 SETTABLEKS                       R14 R32 K16 ["binding"]
      187 SETTABLEKS                       R12 R32 K17 ["menuOption"]
      189 SETTABLEKS                       R29 R32 K18 ["onClose"]
      191 CALL                             R30 2 1
      192 GETUPVAL                         R31 13
      193 GETTABLEKS                       R31 R31 K20 ["createNextOrder"]
      195 CALL                             R31 0 1
      196 JUMPIFEQKNIL                     R5 ; [+3]
      198 JUMPIFNOTEQKNIL                  R6 ; [+3]
      200 LOADNIL                          R32
      201 RETURN                           R32 1
      202 JUMPIF                           R9 ; [+46]
      203 JUMPIFNOT                        R15 ; [+45]
      204 GETUPVAL                         R32 0
      205 GETTABLEKS                       R32 R32 K14 ["createElement"]
      207 GETUPVAL                         R33 18
      208 DUPTABLE                         R34 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      209 GETTABLEKS                       R35 R0 K21 ["LayoutOrder"]
      211 SETTABLEKS                       R35 R34 K21 ["LayoutOrder"]
      213 LOADK                            R35 K26 ["action-%*"]
      214 GETTABLEKS                       R37 R5 K27 ["name"]
      216 NAMECALL                         R35 R35 K28 ["format"]
      218 CALL                             R35 2 1
      219 SETTABLEKS                       R35 R34 K24 ["testId"]
      221 DUPTABLE                         R35 K30 [{"HeaderRow"}]
      222 GETUPVAL                         R36 0
      223 GETTABLEKS                       R36 R36 K14 ["createElement"]
      225 GETUPVAL                         R37 19
      226 DUPTABLE                         R38 K35 [{["bindings"], ["LayoutOrder"] = 1, ["nodeProps"], ["stateString"]}]
      227 GETTABLEKS                       R39 R6 K36 ["All"]
      229 SETTABLEKS                       R39 R38 K31 ["bindings"]
      231 DUPTABLE                         R39 K42 [{["action"], ["depth"] = 1, ["disabled"], ["icon"] = "InputAction", ["name"]}]
      232 SETTABLEKS                       R5 R39 K37 ["action"]
      234 SETTABLEKS                       R10 R39 K39 ["disabled"]
      236 GETTABLEKS                       R40 R5 K27 ["name"]
      238 SETTABLEKS                       R40 R39 K27 ["name"]
      240 SETTABLEKS                       R39 R38 K33 ["nodeProps"]
      242 SETTABLEKS                       R15 R38 K34 ["stateString"]
      244 CALL                             R36 2 1
      245 SETTABLEKS                       R36 R35 K29 ["HeaderRow"]
      247 CALL                             R32 3 -1
      248 RETURN                           R32 -1
      249 JUMPIFNOTEQKNIL                  R17 ; [+112]
      251 GETTABLEKS                       R33 R6 K9 ["Keycode"]
      253 LENGTH                           R32 R33
      254 LOADN                            R33 1
      255 JUMPIFNOTLE                      R32 R33 ; [+8]
      257 GETTABLEKS                       R33 R6 K10 ["Composite"]
      259 LENGTH                           R32 R33
      260 JUMPIFNOTEQKN                    R32 K43 [0] ; [+3]
      262 JUMPIFEQKNIL                     R23 ; [+3]
      264 JUMPIFNOTEQKS                    R23 K9 ["Keycode"] ; [+97]
      266 GETTABLEKS                       R33 R6 K9 ["Keycode"]
      268 GETTABLEN                        R32 R33 1
      269 JUMPIF                           R32 ; [+2]
      270 NEWTABLE                         R32 0 0
      272 GETUPVAL                         R33 0
      273 GETTABLEKS                       R33 R33 K14 ["createElement"]
      275 GETUPVAL                         R34 18
      276 DUPTABLE                         R35 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      277 GETTABLEKS                       R36 R0 K21 ["LayoutOrder"]
      279 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      281 LOADK                            R36 K26 ["action-%*"]
      282 GETTABLEKS                       R38 R5 K27 ["name"]
      284 NAMECALL                         R36 R36 K28 ["format"]
      286 CALL                             R36 2 1
      287 SETTABLEKS                       R36 R35 K24 ["testId"]
      289 DUPTABLE                         R36 K45 [{"HeaderRow", "PropertyPopover"}]
      290 GETUPVAL                         R37 0
      291 GETTABLEKS                       R37 R37 K14 ["createElement"]
      293 GETUPVAL                         R38 20
      294 DUPTABLE                         R39 K54 [{["action"], ["anchorRef"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["disabled"], ["context"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingCreateCommand"], ["onBindingEditCommand"], ["scriptableBinding"], ["validBindingsBySchema"]}]
      295 SETTABLEKS                       R5 R39 K37 ["action"]
      297 SETTABLEKS                       R11 R39 K15 ["anchorRef"]
      299 SETTABLEKS                       R32 R39 K31 ["bindings"]
      301 GETUPVAL                         R41 21
      302 CALL                             R41 0 1
      303 JUMPIFNOT                        R41 ; [+10]
      304 GETIMPORT                        R41 K56 [next]
      306 GETTABLEKS                       R42 R1 K57 ["instances"]
      308 CALL                             R41 1 1
      309 JUMPIFEQKNIL                     R41 ; [+4]
      311 NEWTABLE                         R40 0 0
      313 JUMP                             ; [+1]
      314 MOVE                             R40 R16
      315 SETTABLEKS                       R40 R39 K48 ["createMenu"]
      317 SETTABLEKS                       R10 R39 K39 ["disabled"]
      319 GETTABLEKS                       R40 R0 K4 ["context"]
      321 SETTABLEKS                       R40 R39 K4 ["context"]
      323 MOVE                             R40 R31
      324 CALL                             R40 0 1
      325 SETTABLEKS                       R40 R39 K21 ["LayoutOrder"]
      327 GETTABLEKS                       R40 R5 K27 ["name"]
      329 SETTABLEKS                       R40 R39 K27 ["name"]
      331 GETUPVAL                         R41 21
      332 CALL                             R41 0 1
      333 JUMPIFNOT                        R41 ; [+9]
      334 GETIMPORT                        R41 K56 [next]
      336 GETTABLEKS                       R42 R1 K57 ["instances"]
      338 CALL                             R41 1 1
      339 JUMPIFEQKNIL                     R41 ; [+3]
      341 LOADNIL                          R40
      342 JUMP                             ; [+1]
      343 MOVE                             R40 R18
      344 SETTABLEKS                       R40 R39 K50 ["onBindingCreateCommand"]
      346 NEWCLOSURE                       R40 P5
      347 CAPTURE                          VAL R28
      348 CAPTURE                          VAL R32
      349 SETTABLEKS                       R40 R39 K51 ["onBindingEditCommand"]
      351 SETTABLEKS                       R14 R39 K52 ["scriptableBinding"]
      353 SETTABLEKS                       R25 R39 K53 ["validBindingsBySchema"]
      355 CALL                             R37 2 1
      356 SETTABLEKS                       R37 R36 K29 ["HeaderRow"]
      358 SETTABLEKS                       R30 R36 K44 ["PropertyPopover"]
      360 CALL                             R33 3 -1
      361 RETURN                           R33 -1
      362 JUMPIFNOTEQKNIL                  R17 ; [+118]
      364 GETTABLEKS                       R33 R6 K9 ["Keycode"]
      366 LENGTH                           R32 R33
      367 JUMPIFNOTEQKN                    R32 K43 [0] ; [+9]
      369 GETTABLEKS                       R33 R6 K10 ["Composite"]
      371 LENGTH                           R32 R33
      372 LOADN                            R33 1
      373 JUMPIFNOTLE                      R32 R33 ; [+3]
      375 JUMPIFEQKNIL                     R23 ; [+3]
      377 JUMPIFNOTEQKS                    R23 K10 ["Composite"] ; [+103]
      379 GETTABLEKS                       R34 R6 K10 ["Composite"]
      381 LENGTH                           R33 R34
      382 LOADN                            R34 0
      383 JUMPIFNOTLT                      R34 R33 ; [+5]
      385 GETTABLEKS                       R33 R6 K10 ["Composite"]
      387 GETTABLEN                        R32 R33 1
      388 JUMP                             ; [+2]
      389 NEWTABLE                         R32 0 0
      391 GETUPVAL                         R33 0
      392 GETTABLEKS                       R33 R33 K14 ["createElement"]
      394 GETUPVAL                         R34 18
      395 DUPTABLE                         R35 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      396 GETTABLEKS                       R36 R0 K21 ["LayoutOrder"]
      398 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      400 LOADK                            R36 K26 ["action-%*"]
      401 GETTABLEKS                       R38 R5 K27 ["name"]
      403 NAMECALL                         R36 R36 K28 ["format"]
      405 CALL                             R36 2 1
      406 SETTABLEKS                       R36 R35 K24 ["testId"]
      408 DUPTABLE                         R36 K45 [{"HeaderRow", "PropertyPopover"}]
      409 GETUPVAL                         R37 0
      410 GETTABLEKS                       R37 R37 K14 ["createElement"]
      412 GETUPVAL                         R38 22
      413 DUPTABLE                         R39 K54 [{["action"], ["anchorRef"], ["bindings"], ["isRoot"] = True, ["createMenu"], ["disabled"], ["context"], ["index"] = 1, ["LayoutOrder"], ["name"], ["onBindingCreateCommand"], ["onBindingEditCommand"], ["scriptableBinding"], ["validBindingsBySchema"]}]
      414 SETTABLEKS                       R5 R39 K37 ["action"]
      416 SETTABLEKS                       R11 R39 K15 ["anchorRef"]
      418 SETTABLEKS                       R32 R39 K31 ["bindings"]
      420 GETUPVAL                         R41 21
      421 CALL                             R41 0 1
      422 JUMPIFNOT                        R41 ; [+10]
      423 GETIMPORT                        R41 K56 [next]
      425 GETTABLEKS                       R42 R1 K57 ["instances"]
      427 CALL                             R41 1 1
      428 JUMPIFEQKNIL                     R41 ; [+4]
      430 NEWTABLE                         R40 0 0
      432 JUMP                             ; [+1]
      433 MOVE                             R40 R16
      434 SETTABLEKS                       R40 R39 K48 ["createMenu"]
      436 SETTABLEKS                       R10 R39 K39 ["disabled"]
      438 GETTABLEKS                       R40 R0 K4 ["context"]
      440 SETTABLEKS                       R40 R39 K4 ["context"]
      442 MOVE                             R40 R31
      443 CALL                             R40 0 1
      444 SETTABLEKS                       R40 R39 K21 ["LayoutOrder"]
      446 GETTABLEKS                       R40 R5 K27 ["name"]
      448 SETTABLEKS                       R40 R39 K27 ["name"]
      450 GETUPVAL                         R41 21
      451 CALL                             R41 0 1
      452 JUMPIFNOT                        R41 ; [+9]
      453 GETIMPORT                        R41 K56 [next]
      455 GETTABLEKS                       R42 R1 K57 ["instances"]
      457 CALL                             R41 1 1
      458 JUMPIFEQKNIL                     R41 ; [+3]
      460 LOADNIL                          R40
      461 JUMP                             ; [+1]
      462 MOVE                             R40 R18
      463 SETTABLEKS                       R40 R39 K50 ["onBindingCreateCommand"]
      465 NEWCLOSURE                       R40 P6
      466 CAPTURE                          VAL R28
      467 CAPTURE                          VAL R32
      468 SETTABLEKS                       R40 R39 K51 ["onBindingEditCommand"]
      470 SETTABLEKS                       R14 R39 K52 ["scriptableBinding"]
      472 SETTABLEKS                       R25 R39 K53 ["validBindingsBySchema"]
      474 CALL                             R37 2 1
      475 SETTABLEKS                       R37 R36 K29 ["HeaderRow"]
      477 SETTABLEKS                       R30 R36 K44 ["PropertyPopover"]
      479 CALL                             R33 3 -1
      480 RETURN                           R33 -1
      481 DUPTABLE                         R32 K60 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite", "PropertyPopover"}]
      482 GETUPVAL                         R33 0
      483 GETTABLEKS                       R33 R33 K14 ["createElement"]
      485 GETUPVAL                         R34 19
      486 DUPTABLE                         R35 K61 [{"bindings", "LayoutOrder", "nodeProps"}]
      487 GETTABLEKS                       R36 R6 K36 ["All"]
      489 SETTABLEKS                       R36 R35 K31 ["bindings"]
      491 MOVE                             R36 R31
      492 CALL                             R36 0 1
      493 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      495 DUPTABLE                         R36 K67 [{["action"], ["anchorRef"], ["createMenu"], ["depth"] = 1, ["disabled"], ["editMenu"], ["expanded"], ["icon"] = "InputAction", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      496 SETTABLEKS                       R5 R36 K37 ["action"]
      498 SETTABLEKS                       R11 R36 K15 ["anchorRef"]
      500 GETUPVAL                         R38 21
      501 CALL                             R38 0 1
      502 JUMPIFNOT                        R38 ; [+9]
      503 GETIMPORT                        R38 K56 [next]
      505 GETTABLEKS                       R39 R1 K57 ["instances"]
      507 CALL                             R38 1 1
      508 JUMPIFEQKNIL                     R38 ; [+3]
      510 LOADNIL                          R37
      511 JUMP                             ; [+1]
      512 MOVE                             R37 R16
      513 SETTABLEKS                       R37 R36 K48 ["createMenu"]
      515 SETTABLEKS                       R10 R36 K39 ["disabled"]
      517 SETTABLEKS                       R27 R36 K62 ["editMenu"]
      519 SETTABLEKS                       R21 R36 K63 ["expanded"]
      521 GETTABLEKS                       R37 R5 K27 ["name"]
      523 SETTABLEKS                       R37 R36 K27 ["name"]
      525 GETUPVAL                         R38 21
      526 CALL                             R38 0 1
      527 JUMPIFNOT                        R38 ; [+9]
      528 GETIMPORT                        R38 K56 [next]
      530 GETTABLEKS                       R39 R1 K57 ["instances"]
      532 CALL                             R38 1 1
      533 JUMPIFEQKNIL                     R38 ; [+3]
      535 LOADNIL                          R37
      536 JUMP                             ; [+1]
      537 MOVE                             R37 R18
      538 SETTABLEKS                       R37 R36 K64 ["onCreateMenuItemSelected"]
      540 SETTABLEKS                       R28 R36 K65 ["onEditMenuItemSelected"]
      542 SETTABLEKS                       R22 R36 K66 ["setExpanded"]
      544 SETTABLEKS                       R36 R35 K33 ["nodeProps"]
      546 CALL                             R33 2 1
      547 SETTABLEKS                       R33 R32 K29 ["HeaderRow"]
      549 LOADB                            R33 0
      550 JUMPIFNOTEQKS                    R17 K9 ["Keycode"] ; [+39]
      552 GETUPVAL                         R33 0
      553 GETTABLEKS                       R33 R33 K14 ["createElement"]
      555 GETUPVAL                         R34 20
      556 DUPTABLE                         R35 K70 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      557 SETTABLEKS                       R5 R35 K37 ["action"]
      559 NEWTABLE                         R36 0 0
      561 SETTABLEKS                       R36 R35 K31 ["bindings"]
      563 SETTABLEKS                       R10 R35 K39 ["disabled"]
      565 GETTABLEKS                       R36 R0 K4 ["context"]
      567 SETTABLEKS                       R36 R35 K4 ["context"]
      569 GETTABLEKS                       R38 R6 K9 ["Keycode"]
      571 LENGTH                           R37 R38
      572 ADDK                             R36 R37 K32 [1]
      573 SETTABLEKS                       R36 R35 K49 ["index"]
      575 MOVE                             R36 R31
      576 CALL                             R36 0 1
      577 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      579 SETTABLEKS                       R19 R35 K68 ["onCreated"]
      581 SETTABLEKS                       R20 R35 K69 ["onCancelBinding"]
      583 NEWCLOSURE                       R36 P7
      584 CAPTURE                          VAL R28
      585 SETTABLEKS                       R36 R35 K51 ["onBindingEditCommand"]
      587 SETTABLEKS                       R25 R35 K53 ["validBindingsBySchema"]
      589 CALL                             R33 2 1
      590 SETTABLEKS                       R33 R32 K58 ["CreatingKeyBind"]
      592 LOADB                            R33 0
      593 JUMPIFNOTEQKS                    R17 K10 ["Composite"] ; [+39]
      595 GETUPVAL                         R33 0
      596 GETTABLEKS                       R33 R33 K14 ["createElement"]
      598 GETUPVAL                         R34 22
      599 DUPTABLE                         R35 K70 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onCreated", "onCancelBinding", "onBindingEditCommand", "validBindingsBySchema"}]
      600 SETTABLEKS                       R5 R35 K37 ["action"]
      602 NEWTABLE                         R36 0 0
      604 SETTABLEKS                       R36 R35 K31 ["bindings"]
      606 SETTABLEKS                       R10 R35 K39 ["disabled"]
      608 GETTABLEKS                       R36 R0 K4 ["context"]
      610 SETTABLEKS                       R36 R35 K4 ["context"]
      612 GETTABLEKS                       R38 R6 K10 ["Composite"]
      614 LENGTH                           R37 R38
      615 ADDK                             R36 R37 K32 [1]
      616 SETTABLEKS                       R36 R35 K49 ["index"]
      618 MOVE                             R36 R31
      619 CALL                             R36 0 1
      620 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      622 SETTABLEKS                       R19 R35 K68 ["onCreated"]
      624 SETTABLEKS                       R20 R35 K69 ["onCancelBinding"]
      626 NEWCLOSURE                       R36 P8
      627 CAPTURE                          VAL R28
      628 SETTABLEKS                       R36 R35 K51 ["onBindingEditCommand"]
      630 SETTABLEKS                       R25 R35 K53 ["validBindingsBySchema"]
      632 CALL                             R33 2 1
      633 SETTABLEKS                       R33 R32 K59 ["CreatingComposite"]
      635 SETTABLEKS                       R30 R32 K44 ["PropertyPopover"]
      637 JUMPIFNOT                        R21 ; [+106]
      638 GETTABLEKS                       R33 R6 K9 ["Keycode"]
      640 LOADNIL                          R34
      641 LOADNIL                          R35
      642 FORGPREP                         R33
      643 LOADK                            R38 K71 ["Keycode_%*"]
      644 MOVE                             R40 R36
      645 NAMECALL                         R38 R38 K28 ["format"]
      647 CALL                             R38 2 1
      648 GETUPVAL                         R39 0
      649 GETTABLEKS                       R39 R39 K14 ["createElement"]
      651 GETUPVAL                         R40 20
      652 DUPTABLE                         R41 K73 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      653 SETTABLEKS                       R5 R41 K37 ["action"]
      655 SETTABLEKS                       R37 R41 K31 ["bindings"]
      657 SETTABLEKS                       R10 R41 K39 ["disabled"]
      659 GETTABLEKS                       R42 R0 K4 ["context"]
      661 SETTABLEKS                       R42 R41 K4 ["context"]
      663 SETTABLEKS                       R36 R41 K49 ["index"]
      665 MOVE                             R42 R31
      666 CALL                             R42 0 1
      667 SETTABLEKS                       R42 R41 K21 ["LayoutOrder"]
      669 NEWCLOSURE                       R42 P9
      670 CAPTURE                          VAL R28
      671 CAPTURE                          VAL R37
      672 SETTABLEKS                       R42 R41 K51 ["onBindingEditCommand"]
      674 LOADN                            R43 1
      675 JUMPIFNOTLT                      R43 R36 ; [+6]
      677 GETTABLEKS                       R43 R6 K9 ["Keycode"]
      679 SUBK                             R44 R36 K32 [1]
      680 GETTABLE                         R42 R43 R44
      681 JUMP                             ; [+1]
      682 LOADNIL                          R42
      683 SETTABLEKS                       R42 R41 K72 ["previousBindings"]
      685 SETTABLEKS                       R25 R41 K53 ["validBindingsBySchema"]
      687 CALL                             R39 2 1
      688 SETTABLE                         R39 R32 R38
      689 FORGLOOP                         R33 2 ; [-47]
      691 GETTABLEKS                       R33 R6 K10 ["Composite"]
      693 LOADNIL                          R34
      694 LOADNIL                          R35
      695 FORGPREP                         R33
      696 LOADK                            R38 K74 ["Composite_%*"]
      697 MOVE                             R40 R36
      698 NAMECALL                         R38 R38 K28 ["format"]
      700 CALL                             R38 2 1
      701 GETUPVAL                         R39 0
      702 GETTABLEKS                       R39 R39 K14 ["createElement"]
      704 GETUPVAL                         R40 22
      705 DUPTABLE                         R41 K73 [{"action", "bindings", "disabled", "context", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings", "validBindingsBySchema"}]
      706 SETTABLEKS                       R5 R41 K37 ["action"]
      708 SETTABLEKS                       R37 R41 K31 ["bindings"]
      710 SETTABLEKS                       R10 R41 K39 ["disabled"]
      712 GETTABLEKS                       R42 R0 K4 ["context"]
      714 SETTABLEKS                       R42 R41 K4 ["context"]
      716 SETTABLEKS                       R36 R41 K49 ["index"]
      718 MOVE                             R42 R31
      719 CALL                             R42 0 1
      720 SETTABLEKS                       R42 R41 K21 ["LayoutOrder"]
      722 NEWCLOSURE                       R42 P10
      723 CAPTURE                          VAL R28
      724 CAPTURE                          VAL R37
      725 SETTABLEKS                       R42 R41 K51 ["onBindingEditCommand"]
      727 LOADN                            R43 1
      728 JUMPIFNOTLT                      R43 R36 ; [+6]
      730 GETTABLEKS                       R43 R6 K10 ["Composite"]
      732 SUBK                             R44 R36 K32 [1]
      733 GETTABLE                         R42 R43 R44
      734 JUMP                             ; [+1]
      735 LOADNIL                          R42
      736 SETTABLEKS                       R42 R41 K72 ["previousBindings"]
      738 SETTABLEKS                       R25 R41 K53 ["validBindingsBySchema"]
      740 CALL                             R39 2 1
      741 SETTABLE                         R39 R32 R38
      742 FORGLOOP                         R33 2 ; [-47]
      744 GETUPVAL                         R33 0
      745 GETTABLEKS                       R33 R33 K14 ["createElement"]
      747 GETUPVAL                         R34 18
      748 DUPTABLE                         R35 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      749 GETTABLEKS                       R36 R0 K21 ["LayoutOrder"]
      751 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      753 LOADK                            R36 K26 ["action-%*"]
      754 GETTABLEKS                       R38 R5 K27 ["name"]
      756 NAMECALL                         R36 R36 K28 ["format"]
      758 CALL                             R36 2 1
      759 SETTABLEKS                       R36 R35 K24 ["testId"]
      761 MOVE                             R36 R32
      762 CALL                             R33 3 -1
      763 RETURN                           R33 -1

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
      225 GETTABLEKS                       R25 R0 K14 ["Src"]
      227 GETTABLEKS                       R25 R25 K42 ["Flags"]
      229 GETIMPORT                        R26 K5 [require]
      231 GETTABLEKS                       R27 R25 K43 ["getFFlagIAMShowInExplorer"]
      233 CALL                             R26 1 1
      234 GETIMPORT                        R27 K5 [require]
      236 GETTABLEKS                       R28 R25 K44 ["getFFlagIAMOpenFromProperties"]
      238 CALL                             R27 1 1
      239 DUPCLOSURE                       R28 K45 [PROTO_11]
      240 CAPTURE                          VAL R1
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R8
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R9
      245 CAPTURE                          VAL R18
      246 CAPTURE                          VAL R20
      247 CAPTURE                          VAL R23
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R21
      250 CAPTURE                          VAL R22
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R16
      253 CAPTURE                          VAL R2
      254 CAPTURE                          VAL R24
      255 CAPTURE                          VAL R26
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R13
      258 CAPTURE                          VAL R6
      259 CAPTURE                          VAL R10
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R27
      262 CAPTURE                          VAL R11
      263 RETURN                           R28 1
