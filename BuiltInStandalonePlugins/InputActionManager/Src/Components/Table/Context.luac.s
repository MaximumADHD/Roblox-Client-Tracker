PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["searchString"]
        8 JUMPIFEQKS                       R0 K1 [""] ; [+8]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["name"]
       14 MOVE                             R3 R0
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+4]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K3 ["actions"]
       20 RETURN                           R1 1
       21 NEWTABLE                         R1 0 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K3 ["actions"]
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K4 ["getAction"]
       32 MOVE                             R8 R6
       33 CALL                             R7 1 1
       34 JUMPIFNOT                        R7 ; [+13]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R9 R7 K2 ["name"]
       38 MOVE                             R10 R0
       39 CALL                             R8 2 1
       40 JUMPIFNOT                        R8 ; [+7]
       41 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       43 MOVE                             R9 R1
       44 MOVE                             R10 R6
       45 GETIMPORT                        R8 K7 [table.insert]
       47 CALL                             R8 2 0
       48 FORGLOOP                         R2 2 ; [-20]
       50 LENGTH                           R2 R1
       51 JUMPIFNOTEQKN                    R2 K8 [0] ; [+3]
       53 LOADNIL                          R2
       54 RETURN                           R2 1
       55 RETURN                           R1 1

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+22]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+8]
        6 GETUPVAL                         R0 2
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["parentUuid"]
       11 JUMPIFNOTEQKS                    R0 K1 ["DefaultContext"] ; [+3]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 3
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K2 ["enabled"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K3 ["sink"]
       23 CALL                             R0 3 -1
       24 RETURN                           R0 -1
       25 GETUPVAL                         R0 1
       26 JUMPIFNOT                        R0 ; [+7]
       27 GETUPVAL                         R0 1
       28 GETTABLEKS                       R0 R0 K0 ["parentUuid"]
       30 JUMPIFNOTEQKS                    R0 K1 ["DefaultContext"] ; [+3]
       32 LOADNIL                          R0
       33 RETURN                           R0 1
       34 GETUPVAL                         R1 1
       35 JUMPIFNOT                        R1 ; [+10]
       36 GETUPVAL                         R0 3
       37 GETUPVAL                         R1 4
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K2 ["enabled"]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K3 ["sink"]
       44 CALL                             R0 3 1
       45 RETURN                           R0 1
       46 LOADNIL                          R0
       47 RETURN                           R0 1

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
       31 GETUPVAL                         R1 3
       32 CALL                             R1 0 1
       33 JUMPIFNOT                        R1 ; [+19]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K9 ["ENABLED"]
       37 JUMPIFNOTEQ                      R0 R1 ; [+15]
       39 GETUPVAL                         R1 2
       40 GETTABLEKS                       R1 R1 K7 ["updateContext"]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K8 ["uuid"]
       45 DUPTABLE                         R3 K11 [{"enabled"}]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K10 ["enabled"]
       49 NOT                              R4 R5
       50 SETTABLEKS                       R4 R3 K10 ["enabled"]
       52 CALL                             R1 2 0
       53 GETUPVAL                         R1 3
       54 CALL                             R1 0 1
       55 JUMPIFNOT                        R1 ; [+19]
       56 GETUPVAL                         R1 1
       57 GETTABLEKS                       R1 R1 K12 ["SINK"]
       59 JUMPIFNOTEQ                      R0 R1 ; [+15]
       61 GETUPVAL                         R1 2
       62 GETTABLEKS                       R1 R1 K7 ["updateContext"]
       64 GETUPVAL                         R2 0
       65 GETTABLEKS                       R2 R2 K8 ["uuid"]
       67 DUPTABLE                         R3 K14 [{"sink"}]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K13 ["sink"]
       71 NOT                              R4 R5
       72 SETTABLEKS                       R4 R3 K13 ["sink"]
       74 CALL                             R1 2 0
       75 GETUPVAL                         R1 1
       76 GETTABLEKS                       R1 R1 K15 ["DUPLICATE"]
       78 JUMPIFNOTEQ                      R0 R1 ; [+8]
       80 GETUPVAL                         R1 2
       81 GETTABLEKS                       R1 R1 K16 ["duplicateContext"]
       83 GETUPVAL                         R2 0
       84 GETTABLEKS                       R2 R2 K8 ["uuid"]
       86 CALL                             R1 1 0
       87 GETUPVAL                         R1 4
       88 CALL                             R1 0 1
       89 JUMPIFNOT                        R1 ; [+8]
       90 GETUPVAL                         R1 1
       91 GETTABLEKS                       R1 R1 K17 ["PRIORITY"]
       93 JUMPIFNOTEQ                      R0 R1 ; [+4]
       95 GETUPVAL                         R1 5
       96 MOVE                             R2 R0
       97 CALL                             R1 1 0
       98 RETURN                           R0 0

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
       67 GETUPVAL                         R18 9
       68 CALL                             R18 0 1
       69 JUMPIFNOT                        R18 ; [+4]
       70 JUMPIFNOT                        R9 ; [+3]
       71 GETTABLEKS                       R17 R9 K7 ["defaultPlayerScript"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R17
       75 GETUPVAL                         R18 0
       76 GETTABLEKS                       R18 R18 K8 ["useMemo"]
       78 NEWCLOSURE                       R19 P0
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R3
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          VAL R10
       83 NEWTABLE                         R20 0 3
       85 MOVE                             R21 R9
       86 GETTABLEKS                       R22 R3 K9 ["searchString"]
       88 GETTABLEKS                       R23 R10 K10 ["getAction"]
       90 SETLIST                          R20 R21 3 [1]
       92 CALL                             R18 2 1
       93 GETUPVAL                         R19 0
       94 GETTABLEKS                       R19 R19 K8 ["useMemo"]
       96 NEWCLOSURE                       R20 P1
       97 CAPTURE                          VAL R18
       98 CAPTURE                          VAL R9
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          UPVAL U11
      102 NEWTABLE                         R21 0 2
      104 MOVE                             R22 R18
      105 MOVE                             R23 R9
      106 SETLIST                          R21 R22 2 [1]
      108 CALL                             R19 2 1
      109 GETUPVAL                         R20 0
      110 GETTABLEKS                       R20 R20 K8 ["useMemo"]
      112 NEWCLOSURE                       R21 P2
      113 CAPTURE                          VAL R9
      114 CAPTURE                          UPVAL U10
      115 CAPTURE                          VAL R3
      116 NEWTABLE                         R22 0 2
      118 MOVE                             R23 R9
      119 GETTABLEKS                       R24 R3 K9 ["searchString"]
      121 SETLIST                          R22 R23 2 [1]
      123 CALL                             R20 2 1
      124 GETUPVAL                         R21 0
      125 GETTABLEKS                       R21 R21 K8 ["useMemo"]
      127 NEWCLOSURE                       R22 P3
      128 CAPTURE                          UPVAL U9
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R17
      131 CAPTURE                          UPVAL U12
      132 CAPTURE                          VAL R1
      133 NEWTABLE                         R23 0 3
      135 MOVE                             R24 R1
      136 MOVE                             R25 R9
      137 MOVE                             R26 R17
      138 SETLIST                          R23 R24 3 [1]
      140 CALL                             R21 2 1
      141 GETUPVAL                         R22 0
      142 GETTABLEKS                       R22 R22 K11 ["useCallback"]
      144 NEWCLOSURE                       R23 P4
      145 CAPTURE                          VAL R9
      146 CAPTURE                          UPVAL U13
      147 CAPTURE                          VAL R10
      148 CAPTURE                          UPVAL U14
      149 CAPTURE                          UPVAL U15
      150 CAPTURE                          VAL R8
      151 NEWTABLE                         R24 0 1
      153 MOVE                             R25 R9
      154 SETLIST                          R24 R25 1 [1]
      156 CALL                             R22 2 1
      157 GETUPVAL                         R23 4
      158 GETTABLEKS                       R23 R23 K12 ["useEventCallback"]
      160 NEWCLOSURE                       R24 P5
      161 CAPTURE                          VAL R8
      162 CALL                             R23 1 1
      163 JUMPIFNOTEQKNIL                  R9 ; [+3]
      165 LOADNIL                          R24
      166 RETURN                           R24 1
      167 GETTABLEKS                       R25 R3 K13 ["contexts"]
      169 GETTABLEKS                       R26 R0 K5 ["uuid"]
      171 GETTABLE                         R24 R25 R26
      172 JUMPIFEQKB                       R24 FALSE ; [+18]
      174 GETUPVAL                         R24 9
      175 CALL                             R24 0 1
      176 JUMPIFNOT                        R24 ; [+16]
      177 JUMPIFNOT                        R9 ; [+15]
      178 GETTABLEKS                       R24 R9 K7 ["defaultPlayerScript"]
      180 JUMPIFNOT                        R24 ; [+12]
      181 GETTABLEKS                       R25 R3 K13 ["contexts"]
      183 GETTABLEKS                       R24 R25 K14 ["PlayerScripts"]
      185 JUMPIFEQKB                       R24 FALSE ; [+5]
      187 GETTABLEKS                       R24 R2 K15 ["createDefaultPlayerModule"]
      189 JUMPIFNOTEQKB                    R24 FALSE ; [+3]
      191 LOADNIL                          R24
      192 RETURN                           R24 1
      193 GETUPVAL                         R24 9
      194 CALL                             R24 0 1
      195 JUMPIFNOT                        R24 ; [+14]
      196 GETTABLEKS                       R24 R9 K7 ["defaultPlayerScript"]
      198 JUMPIFNOT                        R24 ; [+11]
      199 GETTABLEKS                       R24 R2 K16 ["datamodelType"]
      201 GETIMPORT                        R25 K20 [Enum.StudioDataModelType.Edit]
      203 JUMPIFNOTEQ                      R24 R25 ; [+4]
      205 GETTABLEKS                       R24 R2 K15 ["createDefaultPlayerModule"]
      207 JUMPIF                           R24 ; [+2]
      208 LOADNIL                          R24
      209 RETURN                           R24 1
      210 GETIMPORT                        R24 K22 [next]
      212 MOVE                             R25 R19
      213 CALL                             R24 1 1
      214 JUMPIF                           R24 ; [+3]
      215 JUMPIF                           R20 ; [+2]
      216 LOADNIL                          R24
      217 RETURN                           R24 1
      218 GETUPVAL                         R25 14
      219 CALL                             R25 0 1
      220 JUMPIFNOT                        R25 ; [+4]
      221 GETTABLEKS                       R25 R9 K23 ["enabled"]
      223 NOT                              R24 R25
      224 JUMP                             ; [+1]
      225 LOADNIL                          R24
      226 GETUPVAL                         R25 0
      227 GETTABLEKS                       R25 R25 K24 ["createElement"]
      229 GETUPVAL                         R26 16
      230 DUPTABLE                         R27 K29 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      231 GETTABLEKS                       R28 R0 K25 ["LayoutOrder"]
      233 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      235 LOADK                            R28 K30 ["context-%*"]
      236 GETTABLEKS                       R30 R9 K31 ["name"]
      238 NAMECALL                         R28 R28 K32 ["format"]
      240 CALL                             R28 2 1
      241 SETTABLEKS                       R28 R27 K28 ["testId"]
      243 DUPTABLE                         R28 K37 [{"Row", "Creating", "Actions", "PropertyPopover"}]
      244 GETUPVAL                         R29 0
      245 GETTABLEKS                       R29 R29 K24 ["createElement"]
      247 GETUPVAL                         R30 17
      248 DUPTABLE                         R31 K39 [{"LayoutOrder", "nodeProps"}]
      249 SETTABLEKS                       R5 R31 K25 ["LayoutOrder"]
      251 DUPTABLE                         R32 K53 [{["anchorRef"], ["context"], ["createMenu"], ["depth"] = 0, ["disabled"], ["editMenu"], ["expanded"], ["icon"] = "InputContext", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      252 GETUPVAL                         R34 15
      253 CALL                             R34 0 1
      254 JUMPIFNOT                        R34 ; [+2]
      255 MOVE                             R33 R6
      256 JUMP                             ; [+1]
      257 LOADNIL                          R33
      258 SETTABLEKS                       R33 R32 K40 ["anchorRef"]
      260 SETTABLEKS                       R9 R32 K41 ["context"]
      262 JUMPIFNOT                        R17 ; [+2]
      263 LOADNIL                          R33
      264 JUMP                             ; [+1]
      265 MOVE                             R33 R13
      266 SETTABLEKS                       R33 R32 K42 ["createMenu"]
      268 SETTABLEKS                       R24 R32 K45 ["disabled"]
      270 SETTABLEKS                       R21 R32 K46 ["editMenu"]
      272 SETTABLEKS                       R11 R32 K47 ["expanded"]
      274 GETTABLEKS                       R33 R9 K31 ["name"]
      276 SETTABLEKS                       R33 R32 K31 ["name"]
      278 JUMPIFNOT                        R17 ; [+2]
      279 LOADNIL                          R33
      280 JUMP                             ; [+1]
      281 MOVE                             R33 R15
      282 SETTABLEKS                       R33 R32 K50 ["onCreateMenuItemSelected"]
      284 SETTABLEKS                       R22 R32 K51 ["onEditMenuItemSelected"]
      286 SETTABLEKS                       R12 R32 K52 ["setExpanded"]
      288 SETTABLEKS                       R32 R31 K38 ["nodeProps"]
      290 CALL                             R29 2 1
      291 SETTABLEKS                       R29 R28 K33 ["Row"]
      293 NOT                              R29 R17
      294 JUMPIFNOT                        R29 ; [+19]
      295 MOVE                             R29 R14
      296 JUMPIFNOT                        R29 ; [+17]
      297 GETUPVAL                         R29 0
      298 GETTABLEKS                       R29 R29 K24 ["createElement"]
      300 GETUPVAL                         R30 17
      301 DUPTABLE                         R31 K39 [{"LayoutOrder", "nodeProps"}]
      302 MOVE                             R32 R4
      303 CALL                             R32 0 1
      304 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      306 DUPTABLE                         R32 K57 [{["depth"] = 1, ["disabled"], ["icon"] = "InputAction", ["name"] = "InputAction", ["onCreated"]}]
      307 SETTABLEKS                       R24 R32 K45 ["disabled"]
      309 SETTABLEKS                       R16 R32 K56 ["onCreated"]
      311 SETTABLEKS                       R32 R31 K38 ["nodeProps"]
      313 CALL                             R29 2 1
      314 SETTABLEKS                       R29 R28 K34 ["Creating"]
      316 MOVE                             R29 R11
      317 JUMPIFNOT                        R29 ; [+11]
      318 GETUPVAL                         R29 0
      319 GETTABLEKS                       R29 R29 K24 ["createElement"]
      321 GETUPVAL                         R30 16
      322 DUPTABLE                         R31 K58 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y"}]
      323 MOVE                             R32 R4
      324 CALL                             R32 0 1
      325 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      327 MOVE                             R32 R19
      328 CALL                             R29 3 1
      329 SETTABLEKS                       R29 R28 K35 ["Actions"]
      331 GETUPVAL                         R29 15
      332 CALL                             R29 0 1
      333 JUMPIFNOT                        R29 ; [+19]
      334 GETUPVAL                         R29 18
      335 CALL                             R29 0 1
      336 JUMPIFNOT                        R29 ; [+16]
      337 MOVE                             R29 R7
      338 JUMPIFNOT                        R29 ; [+14]
      339 GETUPVAL                         R29 0
      340 GETTABLEKS                       R29 R29 K24 ["createElement"]
      342 GETUPVAL                         R30 19
      343 DUPTABLE                         R31 K61 [{"anchorRef", "context", "menuOption", "onClose"}]
      344 SETTABLEKS                       R6 R31 K40 ["anchorRef"]
      346 SETTABLEKS                       R9 R31 K41 ["context"]
      348 SETTABLEKS                       R7 R31 K59 ["menuOption"]
      350 SETTABLEKS                       R23 R31 K60 ["onClose"]
      352 CALL                             R29 2 1
      353 SETTABLEKS                       R29 R28 K36 ["PropertyPopover"]
      355 CALL                             R25 3 -1
      356 RETURN                           R25 -1

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
      178 GETTABLEKS                       R22 R20 K38 ["getFFlagIAMBooleanProperties"]
      180 CALL                             R21 1 1
      181 GETIMPORT                        R22 K5 [require]
      183 GETTABLEKS                       R23 R20 K39 ["getFFlagIAMPlayerScripts"]
      185 CALL                             R22 1 1
      186 GETIMPORT                        R23 K5 [require]
      188 GETTABLEKS                       R24 R20 K40 ["getFFlagIAMNodePropertyMenu"]
      190 CALL                             R23 1 1
      191 GETIMPORT                        R24 K5 [require]
      193 GETTABLEKS                       R25 R20 K41 ["getFFlagIAMBindingMenu"]
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
      207 CAPTURE                          VAL R18
      208 CAPTURE                          VAL R7
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R24
      216 CAPTURE                          VAL R9
      217 RETURN                           R25 1
