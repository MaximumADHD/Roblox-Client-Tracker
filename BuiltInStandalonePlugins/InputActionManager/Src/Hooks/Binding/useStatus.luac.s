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
       39 JUMPIFNOTEQ                      R1 R2 ; [+54]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K0 ["primaryModifier"]
       44 GETIMPORT                        R2 K9 [Enum.KeyCode.Unknown]
       46 JUMPIFEQ                         R1 R2 ; [+47]
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
       59 JUMP                             ; [+34]
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
       79 GETIMPORT                        R2 K9 [Enum.KeyCode.Unknown]
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
       94 GETIMPORT                        R1 K12 [table.find]
       96 GETUPVAL                         R2 6
       97 GETUPVAL                         R3 2
       98 CALL                             R1 2 1
       99 JUMPIFEQKNIL                     R1 ; [+36]
      101 GETUPVAL                         R2 0
      102 GETUPVAL                         R3 2
      103 GETTABLE                         R1 R2 R3
      104 GETIMPORT                        R2 K9 [Enum.KeyCode.Unknown]
      106 JUMPIFEQ                         R1 R2 ; [+29]
      108 GETUPVAL                         R1 6
      109 LOADNIL                          R2
      110 LOADNIL                          R3
      111 FORGPREP                         R1
      112 GETUPVAL                         R6 2
      113 JUMPIFEQ                         R5 R6 ; [+20]
      115 GETUPVAL                         R7 0
      116 GETTABLE                         R6 R7 R5
      117 GETUPVAL                         R8 0
      118 GETUPVAL                         R9 2
      119 GETTABLE                         R7 R8 R9
      120 JUMPIFNOTEQ                      R6 R7 ; [+13]
      122 MOVE                             R7 R0
      123 GETUPVAL                         R8 3
      124 GETUPVAL                         R9 4
      125 LOADK                            R10 K13 ["COMPOSITE_KEYCODE"]
      126 LOADNIL                          R11
      127 GETUPVAL                         R12 2
      128 CALL                             R8 4 -1
      129 FASTCALL                         TABLE_INSERT ; [+2]
      130 GETIMPORT                        R6 K5 [table.insert]
      132 CALL                             R6 -1 0
      133 JUMP                             ; [+2]
      134 FORGLOOP                         R1 2 ; [-23]
      136 GETUPVAL                         R2 0
      137 GETUPVAL                         R3 2
      138 GETTABLE                         R1 R2 R3
      139 GETUPVAL                         R2 7
      140 JUMPIFNOTEQKS                    R2 K14 ["Touch"] ; [+25]
      142 GETUPVAL                         R2 1
      143 JUMPIFNOT                        R2 ; [+46]
      144 GETUPVAL                         R2 8
      145 GETIMPORT                        R3 K17 [Enum.InputActionType.Bool]
      147 JUMPIFNOTEQ                      R2 R3 ; [+42]
      149 GETUPVAL                         R2 0
      150 GETTABLEKS                       R2 R2 K18 ["uiButton"]
      152 JUMPIFNOTEQKNIL                  R2 ; [+37]
      154 MOVE                             R3 R0
      155 GETUPVAL                         R4 3
      156 GETUPVAL                         R5 4
      157 LOADK                            R6 K2 ["NO_KEYCODE"]
      158 LOADNIL                          R7
      159 GETUPVAL                         R8 2
      160 CALL                             R4 4 -1
      161 FASTCALL                         TABLE_INSERT ; [+2]
      162 GETIMPORT                        R2 K5 [table.insert]
      164 CALL                             R2 -1 0
      165 JUMP                             ; [+24]
      166 GETUPVAL                         R2 1
      167 JUMPIFNOT                        R2 ; [+22]
      168 JUMPIFNOT                        R1 ; [+4]
      169 GETIMPORT                        R2 K9 [Enum.KeyCode.Unknown]
      171 JUMPIFNOTEQ                      R1 R2 ; [+18]
      173 GETUPVAL                         R2 2
      174 JUMPIFEQKS                       R2 K0 ["primaryModifier"] ; [+15]
      176 GETUPVAL                         R2 2
      177 JUMPIFEQKS                       R2 K1 ["secondaryModifier"] ; [+12]
      179 MOVE                             R3 R0
      180 GETUPVAL                         R4 3
      181 GETUPVAL                         R5 4
      182 LOADK                            R6 K2 ["NO_KEYCODE"]
      183 LOADNIL                          R7
      184 GETUPVAL                         R8 2
      185 CALL                             R4 4 -1
      186 FASTCALL                         TABLE_INSERT ; [+2]
      187 GETIMPORT                        R2 K5 [table.insert]
      189 CALL                             R2 -1 0
      190 GETUPVAL                         R2 9
      191 GETUPVAL                         R3 0
      192 GETUPVAL                         R4 2
      193 GETUPVAL                         R5 7
      194 CALL                             R2 3 1
      195 JUMPIFNOT                        R2 ; [+103]
      196 GETUPVAL                         R3 10
      197 GETTABLEKS                       R3 R3 K19 ["getBindingUsage"]
      199 GETUPVAL                         R4 11
      200 MOVE                             R5 R2
      201 CALL                             R3 2 1
      202 NEWTABLE                         R4 0 0
      204 NEWTABLE                         R5 0 0
      206 MOVE                             R6 R3
      207 LOADNIL                          R7
      208 LOADNIL                          R8
      209 FORGPREP                         R6
      210 GETUPVAL                         R11 0
      211 GETTABLEKS                       R11 R11 K20 ["uuid"]
      213 JUMPIFEQ                         R10 R11 ; [+30]
      215 GETUPVAL                         R11 12
      216 GETTABLEKS                       R11 R11 K21 ["getBinding"]
      218 MOVE                             R12 R10
      219 CALL                             R11 1 1
      220 JUMPIFNOT                        R11 ; [+23]
      221 GETUPVAL                         R12 12
      222 GETTABLEKS                       R12 R12 K22 ["getAction"]
      224 GETTABLEKS                       R13 R11 K23 ["parentUuid"]
      226 CALL                             R12 1 1
      227 JUMPIFNOT                        R12 ; [+16]
      228 GETTABLEKS                       R14 R12 K24 ["name"]
      230 GETTABLE                         R13 R5 R14
      231 JUMPIF                           R13 ; [+12]
      232 GETTABLEKS                       R13 R12 K24 ["name"]
      234 LOADB                            R14 1
      235 SETTABLE                         R14 R5 R13
      236 GETTABLEKS                       R15 R12 K24 ["name"]
      238 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
      240 MOVE                             R14 R4
      241 GETIMPORT                        R13 K5 [table.insert]
      243 CALL                             R13 2 0
      244 FORGLOOP                         R6 2 ; [-35]
      246 LENGTH                           R6 R4
      247 LOADN                            R7 0
      248 JUMPIFNOTLT                      R7 R6 ; [+50]
      250 GETUPVAL                         R6 13
      251 GETUPVAL                         R7 0
      252 MOVE                             R8 R2
      253 CALL                             R6 2 2
      254 JUMPIFNOTEQKS                    R6 K25 ["DUPLICATE_KEYCODE"] ; [+22]
      256 MOVE                             R9 R0
      257 GETUPVAL                         R10 3
      258 GETUPVAL                         R11 4
      259 MOVE                             R12 R6
      260 DUPTABLE                         R13 K28 [{"keycode", "actions"}]
      261 SETTABLEKS                       R7 R13 K26 ["keycode"]
      263 GETIMPORT                        R14 K30 [table.concat]
      265 MOVE                             R15 R4
      266 LOADK                            R16 K31 [", "]
      267 CALL                             R14 2 1
      268 SETTABLEKS                       R14 R13 K27 ["actions"]
      270 GETUPVAL                         R14 2
      271 CALL                             R10 4 -1
      272 FASTCALL                         TABLE_INSERT ; [+2]
      273 GETIMPORT                        R8 K5 [table.insert]
      275 CALL                             R8 -1 0
      276 JUMP                             ; [+22]
      277 JUMPIFNOTEQKS                    R6 K32 ["DUPLICATE_UI_BUTTON"] ; [+21]
      279 MOVE                             R9 R0
      280 GETUPVAL                         R10 3
      281 GETUPVAL                         R11 4
      282 MOVE                             R12 R6
      283 DUPTABLE                         R13 K33 [{"uiButton", "actions"}]
      284 SETTABLEKS                       R7 R13 K18 ["uiButton"]
      286 GETIMPORT                        R14 K30 [table.concat]
      288 MOVE                             R15 R4
      289 LOADK                            R16 K31 [", "]
      290 CALL                             R14 2 1
      291 SETTABLEKS                       R14 R13 K27 ["actions"]
      293 GETUPVAL                         R14 2
      294 CALL                             R10 4 -1
      295 FASTCALL                         TABLE_INSERT ; [+2]
      296 GETIMPORT                        R8 K5 [table.insert]
      298 CALL                             R8 -1 0
      299 GETUPVAL                         R3 5
      300 MOVE                             R4 R0
      301 CALL                             R3 1 0
      302 RETURN                           R0 0

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
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R9
       51 CAPTURE                          UPVAL U7
       52 NEWTABLE                         R15 0 8
       54 MOVE                             R16 R0
       55 MOVE                             R17 R1
       56 MOVE                             R18 R2
       57 MOVE                             R19 R3
       58 MOVE                             R20 R12
       59 MOVE                             R21 R8
       60 MOVE                             R22 R9
       61 MOVE                             R23 R6
       62 SETLIST                          R15 R16 8 [1]
       64 CALL                             R13 2 1
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R14 R14 K4 ["useEffect"]
       68 NEWCLOSURE                       R15 P1
       69 CAPTURE                          VAL R13
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R16 0 7
       78 MOVE                             R17 R0
       79 MOVE                             R18 R1
       80 MOVE                             R19 R2
       81 MOVE                             R20 R3
       82 MOVE                             R21 R8
       83 MOVE                             R22 R9
       84 MOVE                             R23 R13
       85 SETLIST                          R16 R17 7 [1]
       87 CALL                             R14 2 0
       88 GETUPVAL                         R14 8
       89 MOVE                             R15 R10
       90 CALL                             R14 1 -1
       91 RETURN                           R14 -1

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
      105 DUPCLOSURE                       R12 K23 [PROTO_4]
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R8
      115 RETURN                           R12 1
