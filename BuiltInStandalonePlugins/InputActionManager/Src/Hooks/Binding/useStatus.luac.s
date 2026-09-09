PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIF                           R1 ; [+23]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETUPVAL                         R1 2
        7 JUMPIFEQKS                       R1 K0 ["primaryModifier"] ; [+15]
        9 GETUPVAL                         R1 2
       10 JUMPIFEQKS                       R1 K1 ["secondaryModifier"] ; [+12]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R4 4
       15 LOADK                            R5 K2 ["NO_KEYCODE"]
       16 LOADNIL                          R6
       17 GETUPVAL                         R7 2
       18 CALL                             R3 4 -1
       19 FASTCALL                         TABLE_INSERT ; [+2]
       20 GETIMPORT                        R1 K5 [table.insert]
       22 CALL                             R1 -1 0
       23 GETUPVAL                         R1 5
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 2
       28 JUMPIFEQKS                       R1 K0 ["primaryModifier"] ; [+4]
       30 GETUPVAL                         R1 2
       31 JUMPIFNOTEQKS                    R1 K1 ["secondaryModifier"] ; [+28]
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K0 ["primaryModifier"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K1 ["secondaryModifier"]
       39 JUMPIFNOTEQ                      R1 R2 ; [+88]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K0 ["primaryModifier"]
       44 GETIMPORT                        R2 K9 [Enum.KeyCode.None]
       46 JUMPIFEQ                         R1 R2 ; [+81]
       48 MOVE                             R2 R0
       49 GETUPVAL                         R3 3
       50 GETUPVAL                         R4 4
       51 LOADK                            R5 K10 ["MODIFIER_KEYCODE"]
       52 LOADNIL                          R6
       53 GETUPVAL                         R7 2
       54 CALL                             R3 4 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R1 K5 [table.insert]
       58 CALL                             R1 -1 0
       59 JUMP                             ; [+68]
       60 GETUPVAL                         R1 0
       61 GETTABLEKS                       R1 R1 K0 ["primaryModifier"]
       63 GETUPVAL                         R3 0
       64 GETUPVAL                         R4 2
       65 GETTABLE                         R2 R3 R4
       66 JUMPIFEQ                         R1 R2 ; [+9]
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R1 R1 K1 ["secondaryModifier"]
       71 GETUPVAL                         R3 0
       72 GETUPVAL                         R4 2
       73 GETTABLE                         R2 R3 R4
       74 JUMPIFNOTEQ                      R1 R2 ; [+19]
       76 GETUPVAL                         R2 0
       77 GETUPVAL                         R3 2
       78 GETTABLE                         R1 R2 R3
       79 GETIMPORT                        R2 K9 [Enum.KeyCode.None]
       81 JUMPIFEQ                         R1 R2 ; [+12]
       83 MOVE                             R2 R0
       84 GETUPVAL                         R3 3
       85 GETUPVAL                         R4 4
       86 LOADK                            R5 K10 ["MODIFIER_KEYCODE"]
       87 LOADNIL                          R6
       88 GETUPVAL                         R7 2
       89 CALL                             R3 4 -1
       90 FASTCALL                         TABLE_INSERT ; [+2]
       91 GETIMPORT                        R1 K5 [table.insert]
       93 CALL                             R1 -1 0
       94 GETUPVAL                         R1 6
       95 CALL                             R1 0 1
       96 JUMPIFNOT                        R1 ; [+31]
       97 GETUPVAL                         R1 0
       98 GETTABLEKS                       R1 R1 K11 ["uiButton"]
      100 JUMPIFNOT                        R1 ; [+27]
      101 GETUPVAL                         R1 0
      102 GETTABLEKS                       R1 R1 K12 ["uiModifier"]
      104 JUMPIFNOT                        R1 ; [+23]
      105 GETUPVAL                         R1 0
      106 GETTABLEKS                       R1 R1 K11 ["uiButton"]
      108 GETTABLEKS                       R1 R1 K13 ["uuid"]
      110 GETUPVAL                         R2 0
      111 GETTABLEKS                       R2 R2 K12 ["uiModifier"]
      113 GETTABLEKS                       R2 R2 K13 ["uuid"]
      115 JUMPIFNOTEQ                      R1 R2 ; [+12]
      117 MOVE                             R2 R0
      118 GETUPVAL                         R3 3
      119 GETUPVAL                         R4 4
      120 LOADK                            R5 K14 ["MODIFIER_BUTTON"]
      121 LOADNIL                          R6
      122 GETUPVAL                         R7 2
      123 CALL                             R3 4 -1
      124 FASTCALL                         TABLE_INSERT ; [+2]
      125 GETIMPORT                        R1 K5 [table.insert]
      127 CALL                             R1 -1 0
      128 GETIMPORT                        R1 K16 [table.find]
      130 GETUPVAL                         R2 7
      131 GETUPVAL                         R3 2
      132 CALL                             R1 2 1
      133 JUMPIFEQKNIL                     R1 ; [+36]
      135 GETUPVAL                         R2 0
      136 GETUPVAL                         R3 2
      137 GETTABLE                         R1 R2 R3
      138 GETIMPORT                        R2 K9 [Enum.KeyCode.None]
      140 JUMPIFEQ                         R1 R2 ; [+29]
      142 GETUPVAL                         R1 7
      143 LOADNIL                          R2
      144 LOADNIL                          R3
      145 FORGPREP                         R1
      146 GETUPVAL                         R6 2
      147 JUMPIFEQ                         R5 R6 ; [+20]
      149 GETUPVAL                         R7 0
      150 GETTABLE                         R6 R7 R5
      151 GETUPVAL                         R8 0
      152 GETUPVAL                         R9 2
      153 GETTABLE                         R7 R8 R9
      154 JUMPIFNOTEQ                      R6 R7 ; [+13]
      156 MOVE                             R7 R0
      157 GETUPVAL                         R8 3
      158 GETUPVAL                         R9 4
      159 LOADK                            R10 K17 ["COMPOSITE_KEYCODE"]
      160 LOADNIL                          R11
      161 GETUPVAL                         R12 2
      162 CALL                             R8 4 -1
      163 FASTCALL                         TABLE_INSERT ; [+2]
      164 GETIMPORT                        R6 K5 [table.insert]
      166 CALL                             R6 -1 0
      167 JUMP                             ; [+2]
      168 FORGLOOP                         R1 2 ; [-23]
      170 GETUPVAL                         R2 0
      171 GETUPVAL                         R3 2
      172 GETTABLE                         R1 R2 R3
      173 GETUPVAL                         R2 8
      174 JUMPIFNOTEQKS                    R2 K18 ["Touch"] ; [+31]
      176 GETUPVAL                         R2 2
      177 JUMPIFEQKS                       R2 K19 ["keyCode"] ; [+4]
      179 GETUPVAL                         R2 6
      180 CALL                             R2 0 1
      181 JUMPIF                           R2 ; [+48]
      182 GETUPVAL                         R2 1
      183 JUMPIFNOT                        R2 ; [+46]
      184 GETUPVAL                         R2 9
      185 GETIMPORT                        R3 K22 [Enum.InputActionType.Bool]
      187 JUMPIFNOTEQ                      R2 R3 ; [+42]
      189 GETUPVAL                         R2 0
      190 GETTABLEKS                       R2 R2 K11 ["uiButton"]
      192 JUMPIFNOTEQKNIL                  R2 ; [+37]
      194 MOVE                             R3 R0
      195 GETUPVAL                         R4 3
      196 GETUPVAL                         R5 4
      197 LOADK                            R6 K2 ["NO_KEYCODE"]
      198 LOADNIL                          R7
      199 GETUPVAL                         R8 2
      200 CALL                             R4 4 -1
      201 FASTCALL                         TABLE_INSERT ; [+2]
      202 GETIMPORT                        R2 K5 [table.insert]
      204 CALL                             R2 -1 0
      205 JUMP                             ; [+24]
      206 GETUPVAL                         R2 1
      207 JUMPIFNOT                        R2 ; [+22]
      208 JUMPIFNOT                        R1 ; [+4]
      209 GETIMPORT                        R2 K24 [Enum.KeyCode.Unknown]
      211 JUMPIFNOTEQ                      R1 R2 ; [+18]
      213 GETUPVAL                         R2 2
      214 JUMPIFEQKS                       R2 K0 ["primaryModifier"] ; [+15]
      216 GETUPVAL                         R2 2
      217 JUMPIFEQKS                       R2 K1 ["secondaryModifier"] ; [+12]
      219 MOVE                             R3 R0
      220 GETUPVAL                         R4 3
      221 GETUPVAL                         R5 4
      222 LOADK                            R6 K2 ["NO_KEYCODE"]
      223 LOADNIL                          R7
      224 GETUPVAL                         R8 2
      225 CALL                             R4 4 -1
      226 FASTCALL                         TABLE_INSERT ; [+2]
      227 GETIMPORT                        R2 K5 [table.insert]
      229 CALL                             R2 -1 0
      230 GETUPVAL                         R2 10
      231 GETUPVAL                         R3 0
      232 GETUPVAL                         R4 2
      233 GETUPVAL                         R5 8
      234 CALL                             R2 3 1
      235 JUMPIFNOT                        R2 ; [+103]
      236 GETUPVAL                         R3 11
      237 GETTABLEKS                       R3 R3 K25 ["getBindingUsage"]
      239 GETUPVAL                         R4 12
      240 MOVE                             R5 R2
      241 CALL                             R3 2 1
      242 NEWTABLE                         R4 0 0
      244 NEWTABLE                         R5 0 0
      246 MOVE                             R6 R3
      247 LOADNIL                          R7
      248 LOADNIL                          R8
      249 FORGPREP                         R6
      250 GETUPVAL                         R11 0
      251 GETTABLEKS                       R11 R11 K13 ["uuid"]
      253 JUMPIFEQ                         R10 R11 ; [+30]
      255 GETUPVAL                         R11 13
      256 GETTABLEKS                       R11 R11 K26 ["getBinding"]
      258 MOVE                             R12 R10
      259 CALL                             R11 1 1
      260 JUMPIFNOT                        R11 ; [+23]
      261 GETUPVAL                         R12 13
      262 GETTABLEKS                       R12 R12 K27 ["getAction"]
      264 GETTABLEKS                       R13 R11 K28 ["parentUuid"]
      266 CALL                             R12 1 1
      267 JUMPIFNOT                        R12 ; [+16]
      268 GETTABLEKS                       R14 R12 K29 ["name"]
      270 GETTABLE                         R13 R5 R14
      271 JUMPIF                           R13 ; [+12]
      272 GETTABLEKS                       R13 R12 K29 ["name"]
      274 LOADB                            R14 1
      275 SETTABLE                         R14 R5 R13
      276 GETTABLEKS                       R15 R12 K29 ["name"]
      278 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
      280 MOVE                             R14 R4
      281 GETIMPORT                        R13 K5 [table.insert]
      283 CALL                             R13 2 0
      284 FORGLOOP                         R6 2 ; [-35]
      286 LENGTH                           R6 R4
      287 LOADN                            R7 0
      288 JUMPIFNOTLT                      R7 R6 ; [+50]
      290 GETUPVAL                         R6 14
      291 GETUPVAL                         R7 0
      292 MOVE                             R8 R2
      293 CALL                             R6 2 2
      294 JUMPIFNOTEQKS                    R6 K30 ["DUPLICATE_KEYCODE"] ; [+22]
      296 MOVE                             R9 R0
      297 GETUPVAL                         R10 3
      298 GETUPVAL                         R11 4
      299 MOVE                             R12 R6
      300 DUPTABLE                         R13 K33 [{"keycode", "actions"}]
      301 SETTABLEKS                       R7 R13 K31 ["keycode"]
      303 GETIMPORT                        R14 K35 [table.concat]
      305 MOVE                             R15 R4
      306 LOADK                            R16 K36 [", "]
      307 CALL                             R14 2 1
      308 SETTABLEKS                       R14 R13 K32 ["actions"]
      310 GETUPVAL                         R14 2
      311 CALL                             R10 4 -1
      312 FASTCALL                         TABLE_INSERT ; [+2]
      313 GETIMPORT                        R8 K5 [table.insert]
      315 CALL                             R8 -1 0
      316 JUMP                             ; [+22]
      317 JUMPIFNOTEQKS                    R6 K37 ["DUPLICATE_UI_BUTTON"] ; [+21]
      319 MOVE                             R9 R0
      320 GETUPVAL                         R10 3
      321 GETUPVAL                         R11 4
      322 MOVE                             R12 R6
      323 DUPTABLE                         R13 K38 [{"uiButton", "actions"}]
      324 SETTABLEKS                       R7 R13 K11 ["uiButton"]
      326 GETIMPORT                        R14 K35 [table.concat]
      328 MOVE                             R15 R4
      329 LOADK                            R16 K36 [", "]
      330 CALL                             R14 2 1
      331 SETTABLEKS                       R14 R13 K32 ["actions"]
      333 GETUPVAL                         R14 2
      334 CALL                             R10 4 -1
      335 FASTCALL                         TABLE_INSERT ; [+2]
      336 GETIMPORT                        R8 K5 [table.insert]
      338 CALL                             R8 -1 0
      339 GETUPVAL                         R3 5
      340 MOVE                             R4 R0
      341 CALL                             R3 1 0
      342 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["removeBindingUsage"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 GETTABLEKS                       R3 R3 K1 ["uuid"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 LOADNIL                          R0
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+2]
        5 CLOSEUPVALS                      R0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R4 4
       11 CALL                             R1 3 1
       12 MOVE                             R0 R1
       13 JUMPIF                           R0 ; [+2]
       14 CLOSEUPVALS                      R0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K0 ["addBindingUsage"]
       19 GETUPVAL                         R2 6
       20 MOVE                             R3 R0
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K1 ["uuid"]
       24 CALL                             R1 3 0
       25 GETUPVAL                         R1 5
       26 GETTABLEKS                       R1 R1 K2 ["onBindingUsageChanged"]
       28 GETUPVAL                         R2 6
       29 MOVE                             R3 R0
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          UPVAL U0
       32 CALL                             R1 3 1
       33 NEWCLOSURE                       R2 P1
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          REF R0
       38 CAPTURE                          UPVAL U1
       39 CLOSEUPVALS                      R0
       40 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["useContext"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R8 R8 K1 ["Context"]
        6 CALL                             R7 1 1
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K0 ["useContext"]
       10 GETUPVAL                         R9 2
       11 GETTABLEKS                       R9 R9 K1 ["Context"]
       13 CALL                             R8 1 1
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K0 ["useContext"]
       17 GETUPVAL                         R10 3
       18 GETTABLEKS                       R10 R10 K1 ["Context"]
       20 CALL                             R9 1 1
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K2 ["useState"]
       24 NEWTABLE                         R11 0 0
       26 CALL                             R10 1 2
       27 JUMPIFEQKNIL                     R5 ; [+5]
       29 LOADB                            R12 0
       30 LOADN                            R13 1
       31 JUMPIFNOTLE                      R5 R13 ; [+2]
       33 NOT                              R12 R6
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R13 R13 K3 ["useCallback"]
       37 NEWCLOSURE                       R14 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R12
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R11
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R9
       52 CAPTURE                          UPVAL U8
       53 NEWTABLE                         R15 0 8
       55 MOVE                             R16 R0
       56 MOVE                             R17 R1
       57 MOVE                             R18 R2
       58 MOVE                             R19 R3
       59 MOVE                             R20 R12
       60 MOVE                             R21 R8
       61 MOVE                             R22 R9
       62 MOVE                             R23 R6
       63 SETLIST                          R15 R16 8 [1]
       65 CALL                             R13 2 1
       66 GETUPVAL                         R14 0
       67 GETTABLEKS                       R14 R14 K4 ["useEffect"]
       69 NEWCLOSURE                       R15 P1
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R1
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R0
       77 NEWTABLE                         R16 0 7
       79 MOVE                             R17 R0
       80 MOVE                             R18 R1
       81 MOVE                             R19 R2
       82 MOVE                             R20 R3
       83 MOVE                             R21 R8
       84 MOVE                             R22 R9
       85 MOVE                             R23 R13
       86 SETLIST                          R16 R17 7 [1]
       88 CALL                             R14 2 0
       89 GETUPVAL                         R14 9
       90 MOVE                             R15 R10
       91 CALL                             R14 1 -1
       92 RETURN                           R14 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Contexts"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K12 ["InputConfiguration"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K9 ["Contexts"]
       40 GETTABLEKS                       R6 R6 K13 ["Status"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Src"]
       47 GETTABLEKS                       R7 R7 K14 ["Util"]
       49 GETTABLEKS                       R7 R7 K15 ["Binding"]
       51 GETTABLEKS                       R7 R7 K16 ["createStatusEntry"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K14 ["Util"]
       60 GETTABLEKS                       R8 R8 K17 ["Constants"]
       62 GETTABLEKS                       R8 R8 K18 ["CompositeProperties"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R9 R0 K11 ["Src"]
       69 GETTABLEKS                       R9 R9 K14 ["Util"]
       71 GETTABLEKS                       R9 R9 K13 ["Status"]
       73 GETTABLEKS                       R9 R9 K19 ["getPrimaryStatus"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R10 R0 K11 ["Src"]
       80 GETTABLEKS                       R10 R10 K14 ["Util"]
       82 GETTABLEKS                       R10 R10 K13 ["Status"]
       84 GETTABLEKS                       R10 R10 K20 ["getBindingIdentifier"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K5 [require]
       89 GETTABLEKS                       R11 R0 K11 ["Src"]
       91 GETTABLEKS                       R11 R11 K14 ["Util"]
       93 GETTABLEKS                       R11 R11 K13 ["Status"]
       95 GETTABLEKS                       R11 R11 K21 ["getBindingIdentifierDisplayName"]
       97 CALL                             R10 1 1
       98 GETIMPORT                        R11 K5 [require]
      100 GETTABLEKS                       R12 R0 K11 ["Src"]
      102 GETTABLEKS                       R12 R12 K22 ["Types"]
      104 CALL                             R11 1 1
      105 GETTABLEKS                       R12 R0 K11 ["Src"]
      107 GETTABLEKS                       R12 R12 K23 ["Flags"]
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R12 K24 ["getFFlagIAMUIModifier"]
      113 CALL                             R13 1 1
      114 DUPCLOSURE                       R14 K25 [PROTO_4]
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R8
      125 RETURN                           R14 1
