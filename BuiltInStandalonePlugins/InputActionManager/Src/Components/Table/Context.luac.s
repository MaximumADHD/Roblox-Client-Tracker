PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["searchString"]
        8 NEWTABLE                         R1 0 0
       10 GETIMPORT                        R2 K2 [next]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["instances"]
       15 CALL                             R2 1 1
       16 JUMPIFEQKNIL                     R2 ; [+22]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["actions"]
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K3 ["instances"]
       27 GETTABLE                         R7 R8 R6
       28 JUMPIFNOT                        R7 ; [+7]
       29 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       31 MOVE                             R8 R1
       32 MOVE                             R9 R6
       33 GETIMPORT                        R7 K7 [table.insert]
       35 CALL                             R7 2 0
       36 FORGLOOP                         R2 2 ; [-13]
       38 JUMP                             ; [+3]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R1 R2 K4 ["actions"]
       42 JUMPIFEQKS                       R0 K8 [""] ; [+8]
       44 GETUPVAL                         R2 2
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K9 ["name"]
       48 MOVE                             R4 R0
       49 CALL                             R2 2 1
       50 JUMPIFNOT                        R2 ; [+1]
       51 RETURN                           R1 1
       52 NEWTABLE                         R2 0 0
       54 MOVE                             R3 R1
       55 LOADNIL                          R4
       56 LOADNIL                          R5
       57 FORGPREP                         R3
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K10 ["getAction"]
       61 MOVE                             R9 R7
       62 CALL                             R8 1 1
       63 JUMPIFNOT                        R8 ; [+13]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R10 R8 K9 ["name"]
       67 MOVE                             R11 R0
       68 CALL                             R9 2 1
       69 JUMPIFNOT                        R9 ; [+7]
       70 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       72 MOVE                             R10 R2
       73 MOVE                             R11 R7
       74 GETIMPORT                        R9 K7 [table.insert]
       76 CALL                             R9 2 0
       77 FORGLOOP                         R3 2 ; [-20]
       79 LENGTH                           R3 R2
       80 JUMPIFNOTEQKN                    R3 K11 [0] ; [+3]
       82 LOADNIL                          R3
       83 RETURN                           R3 1
       84 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+4]
        6 NEWTABLE                         R0 0 0
        8 RETURN                           R0 1
        9 NEWTABLE                         R0 0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
       14 CALL                             R1 0 1
       15 GETUPVAL                         R2 0
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K1 ["createElement"]
       22 GETUPVAL                         R8 4
       23 DUPTABLE                         R9 K5 [{"context", "LayoutOrder", "uuid"}]
       24 GETUPVAL                         R10 1
       25 SETTABLEKS                       R10 R9 K2 ["context"]
       27 MOVE                             R10 R1
       28 CALL                             R10 0 1
       29 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       31 SETTABLEKS                       R6 R9 K4 ["uuid"]
       33 CALL                             R7 2 1
       34 SETTABLE                         R7 R0 R6
       35 FORGLOOP                         R2 2 ; [-17]
       37 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["name"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["searchString"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 JUMPIF                           R0 ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["parentUuid"]
        8 JUMPIFNOTEQKS                    R0 K1 ["DefaultContext"] ; [+3]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["enabled"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K3 ["sink"]
       20 CALL                             R0 3 -1
       21 RETURN                           R0 -1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["id must be a string or number"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K6 ["DELETE"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+9]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K7 ["updateContext"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["uuid"]
       29 LOADNIL                          R3
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K9 ["ENABLED"]
       34 JUMPIFNOTEQ                      R0 R1 ; [+15]
       36 GETUPVAL                         R1 2
       37 GETTABLEKS                       R1 R1 K7 ["updateContext"]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K8 ["uuid"]
       42 DUPTABLE                         R3 K11 [{"enabled"}]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K10 ["enabled"]
       46 NOT                              R4 R5
       47 SETTABLEKS                       R4 R3 K10 ["enabled"]
       49 CALL                             R1 2 0
       50 GETUPVAL                         R1 1
       51 GETTABLEKS                       R1 R1 K12 ["SINK"]
       53 JUMPIFNOTEQ                      R0 R1 ; [+15]
       55 GETUPVAL                         R1 2
       56 GETTABLEKS                       R1 R1 K7 ["updateContext"]
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K8 ["uuid"]
       61 DUPTABLE                         R3 K14 [{"sink"}]
       62 GETUPVAL                         R5 0
       63 GETTABLEKS                       R5 R5 K13 ["sink"]
       65 NOT                              R4 R5
       66 SETTABLEKS                       R4 R3 K13 ["sink"]
       68 CALL                             R1 2 0
       69 GETUPVAL                         R1 1
       70 GETTABLEKS                       R1 R1 K15 ["DUPLICATE"]
       72 JUMPIFNOTEQ                      R0 R1 ; [+8]
       74 GETUPVAL                         R1 2
       75 GETTABLEKS                       R1 R1 K16 ["duplicateContext"]
       77 GETUPVAL                         R2 0
       78 GETTABLEKS                       R2 R2 K8 ["uuid"]
       80 CALL                             R1 1 0
       81 GETUPVAL                         R1 1
       82 GETTABLEKS                       R1 R1 K17 ["SHOW_IN_EXPLORER"]
       84 JUMPIFNOTEQ                      R0 R1 ; [+8]
       86 GETUPVAL                         R1 2
       87 GETTABLEKS                       R1 R1 K18 ["showInExplorer"]
       89 GETUPVAL                         R2 0
       90 GETTABLEKS                       R2 R2 K8 ["uuid"]
       92 CALL                             R1 1 0
       93 GETUPVAL                         R1 1
       94 GETTABLEKS                       R1 R1 K19 ["PRIORITY"]
       96 JUMPIFNOTEQ                      R0 R1 ; [+4]
       98 GETUPVAL                         R1 3
       99 MOVE                             R2 R0
      100 CALL                             R1 1 0
      101 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
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
       22 GETTABLEKS                       R4 R4 K2 ["createNextOrder"]
       24 CALL                             R4 0 1
       25 MOVE                             R5 R4
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K3 ["useRef"]
       30 LOADNIL                          R7
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K4 ["useState"]
       35 LOADNIL                          R8
       36 CALL                             R7 1 2
       37 GETUPVAL                         R9 5
       38 GETTABLEKS                       R10 R0 K5 ["uuid"]
       40 CALL                             R9 1 1
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K0 ["useContext"]
       44 GETUPVAL                         R11 6
       45 GETTABLEKS                       R11 R11 K1 ["Context"]
       47 CALL                             R10 1 1
       48 GETUPVAL                         R11 7
       49 GETTABLEKS                       R12 R0 K5 ["uuid"]
       51 LOADB                            R13 0
       52 JUMPIFEQKNIL                     R9 ; [+9]
       54 GETTABLEKS                       R15 R9 K6 ["actions"]
       56 LENGTH                           R14 R15
       57 LOADN                            R15 0
       58 JUMPIFLT                         R15 R14 ; [+2]
       60 LOADB                            R13 0 +1
       61 LOADB                            R13 1
       62 CALL                             R11 2 2
       63 GETUPVAL                         R13 8
       64 GETTABLEKS                       R14 R0 K5 ["uuid"]
       66 CALL                             R13 1 4
       67 JUMPIFNOT                        R9 ; [+3]
       68 GETTABLEKS                       R17 R9 K7 ["defaultPlayerScript"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R17
       72 GETUPVAL                         R19 9
       73 CALL                             R19 0 1
       74 NOT                              R18 R19
       75 JUMPIFNOT                        R18 ; [+4]
       76 JUMPIFEQKB                       R17 TRUE ; [+2]
       78 LOADB                            R18 0 +1
       79 LOADB                            R18 1
       80 GETUPVAL                         R19 0
       81 GETTABLEKS                       R19 R19 K8 ["useMemo"]
       83 NEWCLOSURE                       R20 P0
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R3
       86 CAPTURE                          UPVAL U10
       87 CAPTURE                          VAL R10
       88 NEWTABLE                         R21 0 4
       90 MOVE                             R22 R9
       91 GETTABLEKS                       R23 R3 K9 ["searchString"]
       93 GETTABLEKS                       R24 R3 K10 ["instances"]
       95 GETTABLEKS                       R25 R10 K11 ["getAction"]
       97 SETLIST                          R21 R22 4 [1]
       99 CALL                             R19 2 1
      100 GETUPVAL                         R20 0
      101 GETTABLEKS                       R20 R20 K8 ["useMemo"]
      103 NEWCLOSURE                       R21 P1
      104 CAPTURE                          VAL R19
      105 CAPTURE                          VAL R9
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          UPVAL U11
      109 NEWTABLE                         R22 0 2
      111 MOVE                             R23 R19
      112 MOVE                             R24 R9
      113 SETLIST                          R22 R23 2 [1]
      115 CALL                             R20 2 1
      116 GETUPVAL                         R21 0
      117 GETTABLEKS                       R21 R21 K8 ["useMemo"]
      119 NEWCLOSURE                       R22 P2
      120 CAPTURE                          VAL R9
      121 CAPTURE                          UPVAL U10
      122 CAPTURE                          VAL R3
      123 NEWTABLE                         R23 0 2
      125 MOVE                             R24 R9
      126 GETTABLEKS                       R25 R3 K9 ["searchString"]
      128 SETLIST                          R23 R24 2 [1]
      130 CALL                             R21 2 1
      131 GETUPVAL                         R22 0
      132 GETTABLEKS                       R22 R22 K8 ["useMemo"]
      134 NEWCLOSURE                       R23 P3
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R18
      137 CAPTURE                          UPVAL U12
      138 CAPTURE                          VAL R1
      139 NEWTABLE                         R24 0 3
      141 MOVE                             R25 R1
      142 MOVE                             R26 R9
      143 MOVE                             R27 R18
      144 SETLIST                          R24 R25 3 [1]
      146 CALL                             R22 2 1
      147 GETUPVAL                         R23 0
      148 GETTABLEKS                       R23 R23 K12 ["useCallback"]
      150 NEWCLOSURE                       R24 P4
      151 CAPTURE                          VAL R9
      152 CAPTURE                          UPVAL U13
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R8
      155 NEWTABLE                         R25 0 1
      157 MOVE                             R26 R9
      158 SETLIST                          R25 R26 1 [1]
      160 CALL                             R23 2 1
      161 GETUPVAL                         R24 4
      162 GETTABLEKS                       R24 R24 K13 ["useEventCallback"]
      164 NEWCLOSURE                       R25 P5
      165 CAPTURE                          VAL R8
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K15 [next]
      169 GETTABLEKS                       R26 R3 K10 ["instances"]
      171 CALL                             R25 1 1
      172 JUMPIFEQKNIL                     R25 ; [+9]
      174 GETTABLEKS                       R26 R3 K10 ["instances"]
      176 GETTABLEKS                       R27 R0 K5 ["uuid"]
      178 GETTABLE                         R25 R26 R27
      179 JUMPIF                           R25 ; [+2]
      180 LOADNIL                          R25
      181 RETURN                           R25 1
      182 JUMPIFNOTEQKNIL                  R9 ; [+3]
      184 LOADNIL                          R25
      185 RETURN                           R25 1
      186 GETTABLEKS                       R27 R3 K17 ["builtin"]
      188 GETTABLEKS                       R26 R27 K16 ["PlayerScripts"]
      190 JUMPIFEQKB                       R26 FALSE ; [+2]
      192 LOADB                            R25 0 +1
      193 LOADB                            R25 1
      194 GETTABLEKS                       R27 R3 K18 ["contexts"]
      196 GETTABLEKS                       R28 R0 K5 ["uuid"]
      198 GETTABLE                         R26 R27 R28
      199 JUMPIFEQKB                       R26 FALSE ; [+10]
      201 JUMPIFNOT                        R9 ; [+10]
      202 GETTABLEKS                       R26 R9 K7 ["defaultPlayerScript"]
      204 JUMPIFNOT                        R26 ; [+7]
      205 JUMPIF                           R25 ; [+4]
      206 GETTABLEKS                       R26 R2 K19 ["createDefaultPlayerModule"]
      208 JUMPIFNOTEQKB                    R26 FALSE ; [+3]
      210 LOADNIL                          R26
      211 RETURN                           R26 1
      212 GETTABLEKS                       R26 R9 K7 ["defaultPlayerScript"]
      214 JUMPIFNOT                        R26 ; [+11]
      215 GETTABLEKS                       R26 R2 K20 ["datamodelType"]
      217 GETIMPORT                        R27 K24 [Enum.StudioDataModelType.Edit]
      219 JUMPIFNOTEQ                      R26 R27 ; [+4]
      221 GETTABLEKS                       R26 R2 K19 ["createDefaultPlayerModule"]
      223 JUMPIF                           R26 ; [+2]
      224 LOADNIL                          R26
      225 RETURN                           R26 1
      226 GETIMPORT                        R26 K15 [next]
      228 MOVE                             R27 R20
      229 CALL                             R26 1 1
      230 JUMPIF                           R26 ; [+3]
      231 JUMPIF                           R21 ; [+2]
      232 LOADNIL                          R26
      233 RETURN                           R26 1
      234 FASTCALL2K                       ASSERT R9 K25 ; [+5]
      236 MOVE                             R27 R9
      237 LOADK                            R28 K25 ["Context is nil"]
      238 GETIMPORT                        R26 K27 [assert]
      240 CALL                             R26 2 0
      241 GETTABLEKS                       R27 R9 K28 ["enabled"]
      243 NOT                              R26 R27
      244 GETUPVAL                         R27 0
      245 GETTABLEKS                       R27 R27 K29 ["createElement"]
      247 GETUPVAL                         R28 14
      248 DUPTABLE                         R29 K34 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      249 GETTABLEKS                       R30 R0 K30 ["LayoutOrder"]
      251 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      253 LOADK                            R30 K35 ["context-%*"]
      254 JUMPIFNOT                        R9 ; [+3]
      255 GETTABLEKS                       R32 R9 K36 ["name"]
      257 JUMPIF                           R32 ; [+1]
      258 LOADK                            R32 K37 ["nil"]
      259 NAMECALL                         R30 R30 K38 ["format"]
      261 CALL                             R30 2 1
      262 SETTABLEKS                       R30 R29 K33 ["testId"]
      264 DUPTABLE                         R30 K43 [{"Row", "Creating", "Actions", "PropertyPopover"}]
      265 GETUPVAL                         R31 0
      266 GETTABLEKS                       R31 R31 K29 ["createElement"]
      268 GETUPVAL                         R32 15
      269 DUPTABLE                         R33 K45 [{"LayoutOrder", "nodeProps"}]
      270 SETTABLEKS                       R5 R33 K30 ["LayoutOrder"]
      272 DUPTABLE                         R34 K59 [{["anchorRef"], ["context"], ["createMenu"], ["defaultPlayerScript"], ["depth"] = 0, ["disabled"], ["editMenu"], ["expanded"], ["icon"] = "InputContext", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      273 SETTABLEKS                       R6 R34 K46 ["anchorRef"]
      275 SETTABLEKS                       R9 R34 K47 ["context"]
      277 JUMPIF                           R18 ; [+7]
      278 GETIMPORT                        R36 K15 [next]
      280 GETTABLEKS                       R37 R3 K10 ["instances"]
      282 CALL                             R36 1 1
      283 JUMPIFEQKNIL                     R36 ; [+3]
      285 LOADNIL                          R35
      286 JUMP                             ; [+1]
      287 MOVE                             R35 R13
      288 SETTABLEKS                       R35 R34 K48 ["createMenu"]
      290 SETTABLEKS                       R17 R34 K7 ["defaultPlayerScript"]
      292 SETTABLEKS                       R26 R34 K51 ["disabled"]
      294 SETTABLEKS                       R22 R34 K52 ["editMenu"]
      296 SETTABLEKS                       R11 R34 K53 ["expanded"]
      298 GETTABLEKS                       R35 R9 K36 ["name"]
      300 SETTABLEKS                       R35 R34 K36 ["name"]
      302 JUMPIF                           R18 ; [+7]
      303 GETIMPORT                        R36 K15 [next]
      305 GETTABLEKS                       R37 R3 K10 ["instances"]
      307 CALL                             R36 1 1
      308 JUMPIFEQKNIL                     R36 ; [+3]
      310 LOADNIL                          R35
      311 JUMP                             ; [+1]
      312 MOVE                             R35 R15
      313 SETTABLEKS                       R35 R34 K56 ["onCreateMenuItemSelected"]
      315 SETTABLEKS                       R23 R34 K57 ["onEditMenuItemSelected"]
      317 SETTABLEKS                       R12 R34 K58 ["setExpanded"]
      319 SETTABLEKS                       R34 R33 K44 ["nodeProps"]
      321 CALL                             R31 2 1
      322 SETTABLEKS                       R31 R30 K39 ["Row"]
      324 NOT                              R31 R17
      325 JUMPIFNOT                        R31 ; [+19]
      326 MOVE                             R31 R14
      327 JUMPIFNOT                        R31 ; [+17]
      328 GETUPVAL                         R31 0
      329 GETTABLEKS                       R31 R31 K29 ["createElement"]
      331 GETUPVAL                         R32 15
      332 DUPTABLE                         R33 K45 [{"LayoutOrder", "nodeProps"}]
      333 MOVE                             R34 R4
      334 CALL                             R34 0 1
      335 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      337 DUPTABLE                         R34 K63 [{["depth"] = 1, ["disabled"], ["icon"] = "InputAction", ["name"] = "InputAction", ["onCreated"]}]
      338 SETTABLEKS                       R26 R34 K51 ["disabled"]
      340 SETTABLEKS                       R16 R34 K62 ["onCreated"]
      342 SETTABLEKS                       R34 R33 K44 ["nodeProps"]
      344 CALL                             R31 2 1
      345 SETTABLEKS                       R31 R30 K40 ["Creating"]
      347 MOVE                             R31 R11
      348 JUMPIFNOT                        R31 ; [+11]
      349 GETUPVAL                         R31 0
      350 GETTABLEKS                       R31 R31 K29 ["createElement"]
      352 GETUPVAL                         R32 14
      353 DUPTABLE                         R33 K64 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y"}]
      354 MOVE                             R34 R4
      355 CALL                             R34 0 1
      356 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      358 MOVE                             R34 R20
      359 CALL                             R31 3 1
      360 SETTABLEKS                       R31 R30 K41 ["Actions"]
      362 MOVE                             R31 R7
      363 JUMPIFNOT                        R31 ; [+14]
      364 GETUPVAL                         R31 0
      365 GETTABLEKS                       R31 R31 K29 ["createElement"]
      367 GETUPVAL                         R32 16
      368 DUPTABLE                         R33 K67 [{"anchorRef", "context", "menuOption", "onClose"}]
      369 SETTABLEKS                       R6 R33 K46 ["anchorRef"]
      371 SETTABLEKS                       R9 R33 K47 ["context"]
      373 SETTABLEKS                       R7 R33 K65 ["menuOption"]
      375 SETTABLEKS                       R24 R33 K66 ["onClose"]
      377 CALL                             R31 2 1
      378 SETTABLEKS                       R31 R30 K42 ["PropertyPopover"]
      380 CALL                             R27 3 -1
      381 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETTABLEKS                       R6 R1 K13 ["View"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K14 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Components"]
       47 GETTABLEKS                       R8 R8 K16 ["Table"]
       49 GETTABLEKS                       R8 R8 K17 ["Action"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K14 ["Src"]
       56 GETTABLEKS                       R9 R9 K15 ["Components"]
       58 GETTABLEKS                       R9 R9 K16 ["Table"]
       60 GETTABLEKS                       R9 R9 K18 ["Row"]
       62 GETTABLEKS                       R9 R9 K19 ["Empty"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K14 ["Src"]
       69 GETTABLEKS                       R10 R10 K15 ["Components"]
       71 GETTABLEKS                       R10 R10 K20 ["Property"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K14 ["Src"]
       78 GETTABLEKS                       R11 R11 K21 ["Types"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K14 ["Src"]
       85 GETTABLEKS                       R12 R12 K22 ["Hooks"]
       87 GETTABLEKS                       R12 R12 K17 ["Action"]
       89 GETTABLEKS                       R12 R12 K23 ["useCreateAction"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K14 ["Src"]
       96 GETTABLEKS                       R13 R13 K22 ["Hooks"]
       98 GETTABLEKS                       R13 R13 K24 ["Context"]
      100 GETTABLEKS                       R13 R13 K25 ["useContext"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K14 ["Src"]
      107 GETTABLEKS                       R14 R14 K22 ["Hooks"]
      109 GETTABLEKS                       R14 R14 K26 ["useExpanded"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K14 ["Src"]
      116 GETTABLEKS                       R15 R15 K11 ["Contexts"]
      118 GETTABLEKS                       R15 R15 K27 ["DatamodelConfiguration"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K14 ["Src"]
      125 GETTABLEKS                       R16 R16 K11 ["Contexts"]
      127 GETTABLEKS                       R16 R16 K28 ["FilterConfiguration"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R17 R0 K14 ["Src"]
      134 GETTABLEKS                       R17 R17 K11 ["Contexts"]
      136 GETTABLEKS                       R17 R17 K29 ["InputConfiguration"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R18 R0 K14 ["Src"]
      143 GETTABLEKS                       R18 R18 K30 ["Util"]
      145 GETTABLEKS                       R18 R18 K31 ["Menus"]
      147 GETTABLEKS                       R18 R18 K32 ["getContextMenu"]
      149 CALL                             R17 1 1
      150 GETIMPORT                        R18 K5 [require]
      152 GETTABLEKS                       R19 R0 K14 ["Src"]
      154 GETTABLEKS                       R19 R19 K30 ["Util"]
      156 GETTABLEKS                       R19 R19 K33 ["Filter"]
      158 GETTABLEKS                       R19 R19 K34 ["matchesSearch"]
      160 CALL                             R18 1 1
      161 GETIMPORT                        R19 K5 [require]
      163 GETTABLEKS                       R20 R0 K14 ["Src"]
      165 GETTABLEKS                       R20 R20 K30 ["Util"]
      167 GETTABLEKS                       R20 R20 K35 ["Constants"]
      169 GETTABLEKS                       R20 R20 K36 ["MenuIdentifiers"]
      171 CALL                             R19 1 1
      172 GETTABLEKS                       R20 R0 K14 ["Src"]
      174 GETTABLEKS                       R20 R20 K37 ["Flags"]
      176 GETIMPORT                        R21 K5 [require]
      178 GETTABLEKS                       R22 R20 K38 ["getFFlagIAMEditOnlyInEditDatamodel"]
      180 CALL                             R21 1 1
      181 DUPCLOSURE                       R22 K39 [PROTO_6]
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R9
      199 RETURN                           R22 1
