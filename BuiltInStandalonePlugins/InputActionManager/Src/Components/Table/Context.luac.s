PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["searchString"]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+29]
       13 GETIMPORT                        R2 K2 [next]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["instances"]
       18 CALL                             R2 1 1
       19 JUMPIFEQKNIL                     R2 ; [+22]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K4 ["actions"]
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 FORGPREP                         R2
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K3 ["instances"]
       30 GETTABLE                         R7 R8 R6
       31 JUMPIFNOT                        R7 ; [+7]
       32 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       34 MOVE                             R8 R1
       35 MOVE                             R9 R6
       36 GETIMPORT                        R7 K7 [table.insert]
       38 CALL                             R7 2 0
       39 FORGLOOP                         R2 2 ; [-13]
       41 JUMP                             ; [+3]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R1 R2 K4 ["actions"]
       45 JUMPIFEQKS                       R0 K8 [""] ; [+8]
       47 GETUPVAL                         R2 3
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K9 ["name"]
       51 MOVE                             R4 R0
       52 CALL                             R2 2 1
       53 JUMPIFNOT                        R2 ; [+1]
       54 RETURN                           R1 1
       55 NEWTABLE                         R2 0 0
       57 MOVE                             R3 R1
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 GETUPVAL                         R8 4
       62 GETTABLEKS                       R8 R8 K10 ["getAction"]
       64 MOVE                             R9 R7
       65 CALL                             R8 1 1
       66 JUMPIFNOT                        R8 ; [+13]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R10 R8 K9 ["name"]
       70 MOVE                             R11 R0
       71 CALL                             R9 2 1
       72 JUMPIFNOT                        R9 ; [+7]
       73 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       75 MOVE                             R10 R2
       76 MOVE                             R11 R7
       77 GETIMPORT                        R9 K7 [table.insert]
       79 CALL                             R9 2 0
       80 FORGLOOP                         R3 2 ; [-20]
       82 LENGTH                           R3 R2
       83 JUMPIFNOTEQKN                    R3 K11 [0] ; [+3]
       85 LOADNIL                          R3
       86 RETURN                           R3 1
       87 RETURN                           R2 1

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
       81 GETUPVAL                         R1 3
       82 CALL                             R1 0 1
       83 JUMPIFNOT                        R1 ; [+12]
       84 GETUPVAL                         R1 1
       85 GETTABLEKS                       R1 R1 K17 ["SHOW_IN_EXPLORER"]
       87 JUMPIFNOTEQ                      R0 R1 ; [+8]
       89 GETUPVAL                         R1 2
       90 GETTABLEKS                       R1 R1 K18 ["showInExplorer"]
       92 GETUPVAL                         R2 0
       93 GETTABLEKS                       R2 R2 K8 ["uuid"]
       95 CALL                             R1 1 0
       96 GETUPVAL                         R1 1
       97 GETTABLEKS                       R1 R1 K19 ["PRIORITY"]
       99 JUMPIFNOTEQ                      R0 R1 ; [+4]
      101 GETUPVAL                         R1 4
      102 MOVE                             R2 R0
      103 CALL                             R1 1 0
      104 RETURN                           R0 0

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
       87 CAPTURE                          UPVAL U11
       88 CAPTURE                          VAL R10
       89 NEWTABLE                         R21 0 4
       91 MOVE                             R22 R9
       92 GETTABLEKS                       R23 R3 K9 ["searchString"]
       94 GETTABLEKS                       R24 R3 K10 ["instances"]
       96 GETTABLEKS                       R25 R10 K11 ["getAction"]
       98 SETLIST                          R21 R22 4 [1]
      100 CALL                             R19 2 1
      101 GETUPVAL                         R20 0
      102 GETTABLEKS                       R20 R20 K8 ["useMemo"]
      104 NEWCLOSURE                       R21 P1
      105 CAPTURE                          VAL R19
      106 CAPTURE                          VAL R9
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          UPVAL U12
      110 NEWTABLE                         R22 0 2
      112 MOVE                             R23 R19
      113 MOVE                             R24 R9
      114 SETLIST                          R22 R23 2 [1]
      116 CALL                             R20 2 1
      117 GETUPVAL                         R21 0
      118 GETTABLEKS                       R21 R21 K8 ["useMemo"]
      120 NEWCLOSURE                       R22 P2
      121 CAPTURE                          VAL R9
      122 CAPTURE                          UPVAL U11
      123 CAPTURE                          VAL R3
      124 NEWTABLE                         R23 0 2
      126 MOVE                             R24 R9
      127 GETTABLEKS                       R25 R3 K9 ["searchString"]
      129 SETLIST                          R23 R24 2 [1]
      131 CALL                             R21 2 1
      132 GETUPVAL                         R22 0
      133 GETTABLEKS                       R22 R22 K8 ["useMemo"]
      135 NEWCLOSURE                       R23 P3
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R18
      138 CAPTURE                          UPVAL U13
      139 CAPTURE                          VAL R1
      140 NEWTABLE                         R24 0 3
      142 MOVE                             R25 R1
      143 MOVE                             R26 R9
      144 MOVE                             R27 R18
      145 SETLIST                          R24 R25 3 [1]
      147 CALL                             R22 2 1
      148 GETUPVAL                         R23 0
      149 GETTABLEKS                       R23 R23 K12 ["useCallback"]
      151 NEWCLOSURE                       R24 P4
      152 CAPTURE                          VAL R9
      153 CAPTURE                          UPVAL U14
      154 CAPTURE                          VAL R10
      155 CAPTURE                          UPVAL U15
      156 CAPTURE                          VAL R8
      157 NEWTABLE                         R25 0 1
      159 MOVE                             R26 R9
      160 SETLIST                          R25 R26 1 [1]
      162 CALL                             R23 2 1
      163 GETUPVAL                         R24 4
      164 GETTABLEKS                       R24 R24 K13 ["useEventCallback"]
      166 NEWCLOSURE                       R25 P5
      167 CAPTURE                          VAL R8
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K15 [next]
      171 GETTABLEKS                       R26 R3 K10 ["instances"]
      173 CALL                             R25 1 1
      174 JUMPIFEQKNIL                     R25 ; [+9]
      176 GETTABLEKS                       R26 R3 K10 ["instances"]
      178 GETTABLEKS                       R27 R0 K5 ["uuid"]
      180 GETTABLE                         R25 R26 R27
      181 JUMPIF                           R25 ; [+2]
      182 LOADNIL                          R25
      183 RETURN                           R25 1
      184 JUMPIFNOTEQKNIL                  R9 ; [+3]
      186 LOADNIL                          R25
      187 RETURN                           R25 1
      188 GETUPVAL                         R26 16
      189 CALL                             R26 0 1
      190 JUMPIFNOT                        R26 ; [+9]
      191 GETTABLEKS                       R27 R3 K17 ["builtin"]
      193 GETTABLEKS                       R26 R27 K16 ["PlayerScripts"]
      195 JUMPIFEQKB                       R26 FALSE ; [+2]
      197 LOADB                            R25 0 +1
      198 LOADB                            R25 1
      199 JUMP                             ; [+8]
      200 GETTABLEKS                       R27 R3 K18 ["contexts"]
      202 GETTABLEKS                       R26 R27 K16 ["PlayerScripts"]
      204 JUMPIFEQKB                       R26 FALSE ; [+2]
      206 LOADB                            R25 0 +1
      207 LOADB                            R25 1
      208 GETTABLEKS                       R27 R3 K18 ["contexts"]
      210 GETTABLEKS                       R28 R0 K5 ["uuid"]
      212 GETTABLE                         R26 R27 R28
      213 JUMPIFEQKB                       R26 FALSE ; [+10]
      215 JUMPIFNOT                        R9 ; [+10]
      216 GETTABLEKS                       R26 R9 K7 ["defaultPlayerScript"]
      218 JUMPIFNOT                        R26 ; [+7]
      219 JUMPIF                           R25 ; [+4]
      220 GETTABLEKS                       R26 R2 K19 ["createDefaultPlayerModule"]
      222 JUMPIFNOTEQKB                    R26 FALSE ; [+3]
      224 LOADNIL                          R26
      225 RETURN                           R26 1
      226 GETTABLEKS                       R26 R9 K7 ["defaultPlayerScript"]
      228 JUMPIFNOT                        R26 ; [+11]
      229 GETTABLEKS                       R26 R2 K20 ["datamodelType"]
      231 GETIMPORT                        R27 K24 [Enum.StudioDataModelType.Edit]
      233 JUMPIFNOTEQ                      R26 R27 ; [+4]
      235 GETTABLEKS                       R26 R2 K19 ["createDefaultPlayerModule"]
      237 JUMPIF                           R26 ; [+2]
      238 LOADNIL                          R26
      239 RETURN                           R26 1
      240 GETIMPORT                        R26 K15 [next]
      242 MOVE                             R27 R20
      243 CALL                             R26 1 1
      244 JUMPIF                           R26 ; [+3]
      245 JUMPIF                           R21 ; [+2]
      246 LOADNIL                          R26
      247 RETURN                           R26 1
      248 FASTCALL2K                       ASSERT R9 K25 ; [+5]
      250 MOVE                             R27 R9
      251 LOADK                            R28 K25 ["Context is nil"]
      252 GETIMPORT                        R26 K27 [assert]
      254 CALL                             R26 2 0
      255 GETTABLEKS                       R27 R9 K28 ["enabled"]
      257 NOT                              R26 R27
      258 GETUPVAL                         R27 0
      259 GETTABLEKS                       R27 R27 K29 ["createElement"]
      261 GETUPVAL                         R28 17
      262 DUPTABLE                         R29 K34 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      263 GETTABLEKS                       R30 R0 K30 ["LayoutOrder"]
      265 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      267 LOADK                            R30 K35 ["context-%*"]
      268 JUMPIFNOT                        R9 ; [+3]
      269 GETTABLEKS                       R32 R9 K36 ["name"]
      271 JUMPIF                           R32 ; [+1]
      272 LOADK                            R32 K37 ["nil"]
      273 NAMECALL                         R30 R30 K38 ["format"]
      275 CALL                             R30 2 1
      276 SETTABLEKS                       R30 R29 K33 ["testId"]
      278 DUPTABLE                         R30 K43 [{"Row", "Creating", "Actions", "PropertyPopover"}]
      279 GETUPVAL                         R31 0
      280 GETTABLEKS                       R31 R31 K29 ["createElement"]
      282 GETUPVAL                         R32 18
      283 DUPTABLE                         R33 K45 [{"LayoutOrder", "nodeProps"}]
      284 SETTABLEKS                       R5 R33 K30 ["LayoutOrder"]
      286 DUPTABLE                         R34 K59 [{["anchorRef"], ["context"], ["createMenu"], ["defaultPlayerScript"], ["depth"] = 0, ["disabled"], ["editMenu"], ["expanded"], ["icon"] = "InputContext", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      287 SETTABLEKS                       R6 R34 K46 ["anchorRef"]
      289 SETTABLEKS                       R9 R34 K47 ["context"]
      291 JUMPIF                           R18 ; [+7]
      292 GETIMPORT                        R36 K15 [next]
      294 GETTABLEKS                       R37 R3 K10 ["instances"]
      296 CALL                             R36 1 1
      297 JUMPIFEQKNIL                     R36 ; [+3]
      299 LOADNIL                          R35
      300 JUMP                             ; [+1]
      301 MOVE                             R35 R13
      302 SETTABLEKS                       R35 R34 K48 ["createMenu"]
      304 SETTABLEKS                       R17 R34 K7 ["defaultPlayerScript"]
      306 SETTABLEKS                       R26 R34 K51 ["disabled"]
      308 SETTABLEKS                       R22 R34 K52 ["editMenu"]
      310 SETTABLEKS                       R11 R34 K53 ["expanded"]
      312 GETTABLEKS                       R35 R9 K36 ["name"]
      314 SETTABLEKS                       R35 R34 K36 ["name"]
      316 JUMPIF                           R18 ; [+7]
      317 GETIMPORT                        R36 K15 [next]
      319 GETTABLEKS                       R37 R3 K10 ["instances"]
      321 CALL                             R36 1 1
      322 JUMPIFEQKNIL                     R36 ; [+3]
      324 LOADNIL                          R35
      325 JUMP                             ; [+1]
      326 MOVE                             R35 R15
      327 SETTABLEKS                       R35 R34 K56 ["onCreateMenuItemSelected"]
      329 SETTABLEKS                       R23 R34 K57 ["onEditMenuItemSelected"]
      331 SETTABLEKS                       R12 R34 K58 ["setExpanded"]
      333 SETTABLEKS                       R34 R33 K44 ["nodeProps"]
      335 CALL                             R31 2 1
      336 SETTABLEKS                       R31 R30 K39 ["Row"]
      338 NOT                              R31 R17
      339 JUMPIFNOT                        R31 ; [+19]
      340 MOVE                             R31 R14
      341 JUMPIFNOT                        R31 ; [+17]
      342 GETUPVAL                         R31 0
      343 GETTABLEKS                       R31 R31 K29 ["createElement"]
      345 GETUPVAL                         R32 18
      346 DUPTABLE                         R33 K45 [{"LayoutOrder", "nodeProps"}]
      347 MOVE                             R34 R4
      348 CALL                             R34 0 1
      349 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      351 DUPTABLE                         R34 K63 [{["depth"] = 1, ["disabled"], ["icon"] = "InputAction", ["name"] = "InputAction", ["onCreated"]}]
      352 SETTABLEKS                       R26 R34 K51 ["disabled"]
      354 SETTABLEKS                       R16 R34 K62 ["onCreated"]
      356 SETTABLEKS                       R34 R33 K44 ["nodeProps"]
      358 CALL                             R31 2 1
      359 SETTABLEKS                       R31 R30 K40 ["Creating"]
      361 MOVE                             R31 R11
      362 JUMPIFNOT                        R31 ; [+11]
      363 GETUPVAL                         R31 0
      364 GETTABLEKS                       R31 R31 K29 ["createElement"]
      366 GETUPVAL                         R32 17
      367 DUPTABLE                         R33 K64 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y"}]
      368 MOVE                             R34 R4
      369 CALL                             R34 0 1
      370 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      372 MOVE                             R34 R20
      373 CALL                             R31 3 1
      374 SETTABLEKS                       R31 R30 K41 ["Actions"]
      376 MOVE                             R31 R7
      377 JUMPIFNOT                        R31 ; [+14]
      378 GETUPVAL                         R31 0
      379 GETTABLEKS                       R31 R31 K29 ["createElement"]
      381 GETUPVAL                         R32 19
      382 DUPTABLE                         R33 K67 [{"anchorRef", "context", "menuOption", "onClose"}]
      383 SETTABLEKS                       R6 R33 K46 ["anchorRef"]
      385 SETTABLEKS                       R9 R33 K47 ["context"]
      387 SETTABLEKS                       R7 R33 K65 ["menuOption"]
      389 SETTABLEKS                       R24 R33 K66 ["onClose"]
      391 CALL                             R31 2 1
      392 SETTABLEKS                       R31 R30 K42 ["PropertyPopover"]
      394 CALL                             R27 3 -1
      395 RETURN                           R27 -1

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
      178 GETTABLEKS                       R22 R20 K38 ["getFFlagIAMSavedFilters"]
      180 CALL                             R21 1 1
      181 GETIMPORT                        R22 K5 [require]
      183 GETTABLEKS                       R23 R20 K39 ["getFFlagIAMEditOnlyInEditDatamodel"]
      185 CALL                             R22 1 1
      186 GETIMPORT                        R23 K5 [require]
      188 GETTABLEKS                       R24 R20 K40 ["getFFlagIAMShowInExplorer"]
      190 CALL                             R23 1 1
      191 GETIMPORT                        R24 K5 [require]
      193 GETTABLEKS                       R25 R20 K41 ["getFFlagIAMOpenFromProperties"]
      195 CALL                             R24 1 1
      196 DUPCLOSURE                       R25 K42 [PROTO_6]
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R22
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R19
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R9
      217 RETURN                           R25 1
