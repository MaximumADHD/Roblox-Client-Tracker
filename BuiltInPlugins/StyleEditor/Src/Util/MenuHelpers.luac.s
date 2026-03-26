PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetClassIcon"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R3 R2 K2 ["Image"]
        9 RETURN                           R3 1
       10 LOADNIL                          R3
       11 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R3 K0 ["^::%s+"]
        1 LOADK                            R4 K1 ["::"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R4 K3 ["%s*#"]
        6 LOADK                            R5 K4 [" #"]
        7 NAMECALL                         R2 R1 K2 ["gsub"]
        9 CALL                             R2 3 1
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R3 K0 ["::"]
        1 MOVE                             R4 R1
        2 CONCAT                           R2 R3 R4
        3 GETUPVAL                         R3 0
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R2 1
        6 GETIMPORT                        R3 K3 [table.find]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K4 ["MultiPseudoInstanceTypes"]
       11 MOVE                             R5 R1
       12 CALL                             R3 2 1
       13 JUMPIF                           R3 ; [+1]
       14 RETURN                           R2 1
       15 DUPCLOSURE                       R3 K5 [PROTO_2]
       16 NEWTABLE                         R4 0 0
       18 NAMECALL                         R5 R0 K6 ["GetStyleRules"]
       20 CALL                             R5 1 3
       21 FORGPREP                         R5
       22 GETTABLEKS                       R11 R9 K7 ["Selector"]
       24 LOADK                            R14 K8 ["^::%s+"]
       25 LOADK                            R15 K0 ["::"]
       26 NAMECALL                         R12 R11 K9 ["gsub"]
       28 CALL                             R12 3 1
       29 LOADK                            R15 K10 ["%s*#"]
       30 LOADK                            R16 K11 [" #"]
       31 NAMECALL                         R13 R12 K9 ["gsub"]
       33 CALL                             R13 3 1
       34 MOVE                             R12 R13
       35 MOVE                             R10 R12
       36 LOADB                            R11 1
       37 SETTABLE                         R11 R4 R10
       38 JUMPIFNOTEQ                      R10 R2 ; [+31]
       40 NAMECALL                         R11 R9 K6 ["GetStyleRules"]
       42 CALL                             R11 1 3
       43 FORGPREP                         R11
       44 GETTABLEKS                       R16 R15 K7 ["Selector"]
       46 LOADK                            R18 K12 ["^#%d+$"]
       47 NAMECALL                         R16 R16 K13 ["match"]
       49 CALL                             R16 2 1
       50 JUMPIFNOT                        R16 ; [+17]
       51 MOVE                             R19 R2
       52 MOVE                             R20 R16
       53 CONCAT                           R18 R19 R20
       54 LOADK                            R21 K8 ["^::%s+"]
       55 LOADK                            R22 K0 ["::"]
       56 NAMECALL                         R19 R18 K9 ["gsub"]
       58 CALL                             R19 3 1
       59 LOADK                            R22 K10 ["%s*#"]
       60 LOADK                            R23 K11 [" #"]
       61 NAMECALL                         R20 R19 K9 ["gsub"]
       63 CALL                             R20 3 1
       64 MOVE                             R19 R20
       65 MOVE                             R17 R19
       66 LOADB                            R18 1
       67 SETTABLE                         R18 R4 R17
       68 FORGLOOP                         R11 2 ; [-25]
       70 FORGLOOP                         R5 2 ; [-49]
       72 GETTABLE                         R5 R4 R2
       73 JUMPIF                           R5 ; [+1]
       74 RETURN                           R2 1
       75 LOADN                            R5 1
       76 MOVE                             R7 R2
       77 LOADK                            R8 K11 [" #"]
       78 MOVE                             R9 R5
       79 CONCAT                           R6 R7 R9
       80 GETTABLE                         R7 R4 R6
       81 JUMPIF                           R7 ; [+1]
       82 RETURN                           R6 1
       83 ADDK                             R5 R5 K14 [1]
       84 JUMPBACK                         ; [-9]
       85 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
        1 GETTABLEKS                       R2 R0 K6 ["Name"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETUPVAL                         R2 0
        6 LOADK                            R4 K7 ["Category"]
        7 GETTABLEKS                       R5 R0 K6 ["Name"]
        9 NAMECALL                         R2 R2 K8 ["getText"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K1 ["Text"]
       14 GETTABLEKS                       R2 R0 K2 ["Icon"]
       16 SETTABLEKS                       R2 R1 K2 ["Icon"]
       18 GETUPVAL                         R2 1
       19 SETTABLEKS                       R2 R1 K3 ["OnItemClicked"]
       21 DUPTABLE                         R2 K9 [{"Category"}]
       22 GETTABLEKS                       R3 R0 K6 ["Name"]
       24 SETTABLEKS                       R3 R2 K7 ["Category"]
       26 SETTABLEKS                       R2 R1 K4 ["Data"]
       28 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["StyleSheetCategories"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_6:
        0 DUPTABLE                         R1 K4 [{"Id", "Text", "OnItemClicked", "Data"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 SETTABLEKS                       R0 R1 K1 ["Text"]
        5 GETUPVAL                         R2 0
        6 SETTABLEKS                       R2 R1 K2 ["OnItemClicked"]
        8 DUPTABLE                         R2 K6 [{"Type"}]
        9 SETTABLEKS                       R0 R2 K5 ["Type"]
       11 SETTABLEKS                       R2 R1 K3 ["Data"]
       13 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_8:
        0 DUPTABLE                         R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 SETTABLEKS                       R0 R1 K1 ["Text"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K6 ["getClassIcon"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K2 ["Icon"]
       12 GETUPVAL                         R2 1
       13 SETTABLEKS                       R2 R1 K3 ["OnItemClicked"]
       15 DUPTABLE                         R2 K8 [{"Selector"}]
       16 SETTABLEKS                       R0 R2 K7 ["Selector"]
       18 SETTABLEKS                       R2 R1 K4 ["Data"]
       20 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Classes"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 DUPTABLE                         R3 K1 [{"Children"}]
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R6 R0 K0 ["Children"]
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K0 ["Children"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1
       15 GETUPVAL                         R1 0
       16 MOVE                             R2 R0
       17 DUPTABLE                         R3 K3 [{"Data"}]
       18 DUPTABLE                         R4 K5 [{"Selector"}]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R8 R0 K2 ["Data"]
       22 GETTABLEKS                       R7 R8 K4 ["Selector"]
       24 CONCAT                           R5 R6 R7
       25 SETTABLEKS                       R5 R4 K4 ["Selector"]
       27 SETTABLEKS                       R4 R3 K2 ["Data"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_12:
        0 DUPTABLE                         R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 SETTABLEKS                       R0 R1 K1 ["Text"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K6 ["getClassIcon"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K2 ["Icon"]
       12 GETUPVAL                         R2 1
       13 SETTABLEKS                       R2 R1 K3 ["OnItemClicked"]
       15 DUPTABLE                         R2 K8 [{"Selector"}]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K9 ["getAvailablePseudoSelector"]
       19 GETUPVAL                         R4 2
       20 MOVE                             R5 R0
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K7 ["Selector"]
       24 SETTABLEKS                       R2 R1 K4 ["Data"]
       26 RETURN                           R1 1

PROTO_13:
        0 DUPTABLE                         R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 SETTABLEKS                       R0 R1 K1 ["Text"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K6 ["Selectors"]
        8 GETTABLEKS                       R2 R3 K7 ["GuiState"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K2 ["Icon"]
       13 GETUPVAL                         R2 1
       14 SETTABLEKS                       R2 R1 K3 ["OnItemClicked"]
       16 DUPTABLE                         R2 K9 [{"Selector"}]
       17 LOADK                            R4 K10 [":"]
       18 MOVE                             R5 R0
       19 CONCAT                           R3 R4 R5
       20 SETTABLEKS                       R3 R2 K8 ["Selector"]
       22 SETTABLEKS                       R2 R1 K4 ["Data"]
       24 RETURN                           R1 1

PROTO_14:
        0 DUPCLOSURE                       R3 K0 [PROTO_11]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R3
        4 LOADK                            R6 K1 ["StyleRule"]
        5 NAMECALL                         R4 R0 K2 ["IsA"]
        7 CALL                             R4 2 1
        8 LOADB                            R5 0
        9 JUMPIFNOT                        R4 ; [+7]
       10 GETIMPORT                        R6 K5 [string.find]
       12 GETTABLEKS                       R7 R0 K6 ["Selector"]
       14 LOADK                            R8 K7 ["::"]
       15 CALL                             R6 2 1
       16 MOVE                             R5 R6
       17 GETUPVAL                         R8 2
       18 AND                              R7 R8 R5
       19 NOT                              R6 R7
       20 GETUPVAL                         R7 2
       21 JUMPIF                           R7 ; [+1]
       22 NOT                              R7 R5
       23 GETUPVAL                         R8 0
       24 GETUPVAL                         R10 3
       25 GETTABLEKS                       R9 R10 K8 ["PseudoInstances"]
       27 NEWCLOSURE                       R10 P1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 CALL                             R8 2 1
       32 GETUPVAL                         R9 0
       33 GETUPVAL                         R11 3
       34 GETTABLEKS                       R10 R11 K9 ["GuiStates"]
       36 NEWCLOSURE                       R11 P2
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R1
       39 CALL                             R9 2 1
       40 DUPTABLE                         R10 K15 [{"Id", "Icon", "Text", "OnItemClicked", "Data"}]
       41 LOADK                            R11 K16 ["Name"]
       42 SETTABLEKS                       R11 R10 K10 ["Id"]
       44 GETUPVAL                         R13 4
       45 GETTABLEKS                       R12 R13 K17 ["Selectors"]
       47 GETTABLEKS                       R11 R12 K16 ["Name"]
       49 CALL                             R11 0 1
       50 SETTABLEKS                       R11 R10 K11 ["Icon"]
       52 LOADK                            R13 K18 ["ContextMenu"]
       53 LOADK                            R14 K19 ["New.Name"]
       54 NAMECALL                         R11 R2 K20 ["getText"]
       56 CALL                             R11 3 1
       57 SETTABLEKS                       R11 R10 K12 ["Text"]
       59 SETTABLEKS                       R1 R10 K13 ["OnItemClicked"]
       61 DUPTABLE                         R11 K21 [{"Selector"}]
       62 LOADK                            R12 K22 ["#Name"]
       63 SETTABLEKS                       R12 R11 K6 ["Selector"]
       65 SETTABLEKS                       R11 R10 K14 ["Data"]
       67 DUPTABLE                         R11 K24 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked", "Data"}]
       68 LOADK                            R12 K25 ["Tag"]
       69 SETTABLEKS                       R12 R11 K10 ["Id"]
       71 LOADK                            R14 K18 ["ContextMenu"]
       72 LOADK                            R15 K26 ["New.Tag"]
       73 NAMECALL                         R12 R2 K20 ["getText"]
       75 CALL                             R12 3 1
       76 SETTABLEKS                       R12 R11 K12 ["Text"]
       78 GETUPVAL                         R14 4
       79 GETTABLEKS                       R13 R14 K17 ["Selectors"]
       81 GETTABLEKS                       R12 R13 K25 ["Tag"]
       83 CALL                             R12 0 1
       84 SETTABLEKS                       R12 R11 K11 ["Icon"]
       86 SETTABLEKS                       R6 R11 K23 ["Enabled"]
       88 SETTABLEKS                       R1 R11 K13 ["OnItemClicked"]
       90 DUPTABLE                         R12 K21 [{"Selector"}]
       91 LOADK                            R13 K27 [".Tag"]
       92 SETTABLEKS                       R13 R12 K6 ["Selector"]
       94 SETTABLEKS                       R12 R11 K14 ["Data"]
       96 DUPTABLE                         R12 K29 [{"Id", "Icon", "Enabled", "Text", "OnItemClicked", "Children"}]
       97 LOADK                            R13 K30 ["Class"]
       98 SETTABLEKS                       R13 R12 K10 ["Id"]
      100 GETUPVAL                         R15 4
      101 GETTABLEKS                       R14 R15 K17 ["Selectors"]
      103 GETTABLEKS                       R13 R14 K30 ["Class"]
      105 CALL                             R13 0 1
      106 SETTABLEKS                       R13 R12 K11 ["Icon"]
      108 SETTABLEKS                       R6 R12 K23 ["Enabled"]
      110 LOADK                            R15 K18 ["ContextMenu"]
      111 LOADK                            R16 K31 ["New.Class"]
      112 NAMECALL                         R13 R2 K20 ["getText"]
      114 CALL                             R13 3 1
      115 SETTABLEKS                       R13 R12 K12 ["Text"]
      117 GETUPVAL                         R14 5
      118 GETTABLEKS                       R13 R14 K32 ["noop"]
      120 SETTABLEKS                       R13 R12 K13 ["OnItemClicked"]
      122 JUMPIFNOT                        R6 ; [+7]
      123 GETUPVAL                         R14 3
      124 GETTABLEKS                       R13 R14 K33 ["getClassTypeActions"]
      126 MOVE                             R14 R1
      127 MOVE                             R15 R2
      128 CALL                             R13 2 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R13
      131 SETTABLEKS                       R13 R12 K28 ["Children"]
      133 DUPTABLE                         R13 K34 [{"Id", "Text", "OnItemClicked", "Data"}]
      134 LOADK                            R14 K35 ["Empty"]
      135 SETTABLEKS                       R14 R13 K10 ["Id"]
      137 LOADK                            R16 K18 ["ContextMenu"]
      138 LOADK                            R17 K36 ["New.Empty"]
      139 NAMECALL                         R14 R2 K20 ["getText"]
      141 CALL                             R14 3 1
      142 SETTABLEKS                       R14 R13 K12 ["Text"]
      144 SETTABLEKS                       R1 R13 K13 ["OnItemClicked"]
      146 DUPTABLE                         R14 K21 [{"Selector"}]
      147 LOADK                            R15 K37 [""]
      148 SETTABLEKS                       R15 R14 K6 ["Selector"]
      150 SETTABLEKS                       R14 R13 K14 ["Data"]
      152 NEWTABLE                         R14 0 9
      154 GETUPVAL                         R16 6
      155 JUMPIFNOT                        R16 ; [+2]
      156 MOVE                             R15 R11
      157 JUMP                             ; [+1]
      158 MOVE                             R15 R10
      159 GETUPVAL                         R17 6
      160 JUMPIFNOT                        R17 ; [+2]
      161 MOVE                             R16 R10
      162 JUMP                             ; [+1]
      163 MOVE                             R16 R11
      164 MOVE                             R17 R12
      165 DUPTABLE                         R18 K38 [{"Id", "Icon", "Enabled", "Text", "Children"}]
      166 LOADK                            R19 K39 ["PseudoInstance"]
      167 SETTABLEKS                       R19 R18 K10 ["Id"]
      169 GETUPVAL                         R21 4
      170 GETTABLEKS                       R20 R21 K17 ["Selectors"]
      172 GETTABLEKS                       R19 R20 K39 ["PseudoInstance"]
      174 CALL                             R19 0 1
      175 SETTABLEKS                       R19 R18 K11 ["Icon"]
      177 SETTABLEKS                       R7 R18 K23 ["Enabled"]
      179 LOADK                            R21 K18 ["ContextMenu"]
      180 LOADK                            R22 K40 ["New.PseudoInstance"]
      181 NAMECALL                         R19 R2 K20 ["getText"]
      183 CALL                             R19 3 1
      184 SETTABLEKS                       R19 R18 K12 ["Text"]
      186 JUMPIFNOT                        R7 ; [+2]
      187 MOVE                             R19 R8
      188 JUMP                             ; [+1]
      189 LOADNIL                          R19
      190 SETTABLEKS                       R19 R18 K28 ["Children"]
      192 DUPTABLE                         R19 K38 [{"Id", "Icon", "Enabled", "Text", "Children"}]
      193 LOADK                            R20 K41 ["GuiState"]
      194 SETTABLEKS                       R20 R19 K10 ["Id"]
      196 GETUPVAL                         R22 4
      197 GETTABLEKS                       R21 R22 K17 ["Selectors"]
      199 GETTABLEKS                       R20 R21 K41 ["GuiState"]
      201 CALL                             R20 0 1
      202 SETTABLEKS                       R20 R19 K11 ["Icon"]
      204 SETTABLEKS                       R6 R19 K23 ["Enabled"]
      206 LOADK                            R20 K41 ["GuiState"]
      207 SETTABLEKS                       R20 R19 K12 ["Text"]
      209 JUMPIFNOT                        R6 ; [+2]
      210 MOVE                             R20 R9
      211 JUMP                             ; [+1]
      212 LOADNIL                          R20
      213 SETTABLEKS                       R20 R19 K28 ["Children"]
      215 DUPTABLE                         R20 K38 [{"Id", "Icon", "Enabled", "Text", "Children"}]
      216 LOADK                            R21 K42 ["Enumerator"]
      217 SETTABLEKS                       R21 R20 K10 ["Id"]
      219 GETUPVAL                         R23 4
      220 GETTABLEKS                       R22 R23 K17 ["Selectors"]
      222 GETTABLEKS                       R21 R22 K42 ["Enumerator"]
      224 CALL                             R21 0 1
      225 SETTABLEKS                       R21 R20 K11 ["Icon"]
      227 AND                              R21 R4 R6
      228 SETTABLEKS                       R21 R20 K23 ["Enabled"]
      230 LOADK                            R23 K18 ["ContextMenu"]
      231 LOADK                            R24 K43 ["New.Enumerator"]
      232 NAMECALL                         R21 R2 K20 ["getText"]
      234 CALL                             R21 3 1
      235 SETTABLEKS                       R21 R20 K12 ["Text"]
      237 JUMPIFNOT                        R4 ; [+19]
      238 JUMPIFNOT                        R6 ; [+18]
      239 NEWTABLE                         R22 0 4
      241 MOVE                             R23 R10
      242 MOVE                             R24 R11
      243 MOVE                             R25 R12
      244 MOVE                             R26 R13
      245 SETLIST                          R22 R23 4 [1]
      247 GETUPVAL                         R23 0
      248 MOVE                             R24 R22
      249 LOADK                            R26 K44 [","]
      250 NEWCLOSURE                       R25 P3
      251 CAPTURE                          UPVAL U1
      252 CAPTURE                          VAL R3
      253 CAPTURE                          VAL R26
      254 CALL                             R23 2 1
      255 MOVE                             R21 R23
      256 JUMP                             ; [+1]
      257 LOADNIL                          R21
      258 SETTABLEKS                       R21 R20 K28 ["Children"]
      260 DUPTABLE                         R21 K38 [{"Id", "Icon", "Enabled", "Text", "Children"}]
      261 LOADK                            R22 K45 ["Child"]
      262 SETTABLEKS                       R22 R21 K10 ["Id"]
      264 GETUPVAL                         R24 4
      265 GETTABLEKS                       R23 R24 K17 ["Selectors"]
      267 GETTABLEKS                       R22 R23 K45 ["Child"]
      269 CALL                             R22 0 1
      270 SETTABLEKS                       R22 R21 K11 ["Icon"]
      272 SETTABLEKS                       R6 R21 K23 ["Enabled"]
      274 LOADK                            R24 K18 ["ContextMenu"]
      275 LOADK                            R25 K46 ["New.Child"]
      276 NAMECALL                         R22 R2 K20 ["getText"]
      278 CALL                             R22 3 1
      279 SETTABLEKS                       R22 R21 K12 ["Text"]
      281 JUMPIFNOT                        R6 ; [+18]
      282 NEWTABLE                         R23 0 4
      284 MOVE                             R24 R10
      285 MOVE                             R25 R11
      286 MOVE                             R26 R12
      287 MOVE                             R27 R13
      288 SETLIST                          R23 R24 4 [1]
      290 GETUPVAL                         R24 0
      291 MOVE                             R25 R23
      292 LOADK                            R27 K47 [">"]
      293 NEWCLOSURE                       R26 P3
      294 CAPTURE                          UPVAL U1
      295 CAPTURE                          VAL R3
      296 CAPTURE                          VAL R27
      297 CALL                             R24 2 1
      298 MOVE                             R22 R24
      299 JUMP                             ; [+1]
      300 LOADNIL                          R22
      301 SETTABLEKS                       R22 R21 K28 ["Children"]
      303 DUPTABLE                         R22 K38 [{"Id", "Icon", "Enabled", "Text", "Children"}]
      304 LOADK                            R23 K48 ["Descendant"]
      305 SETTABLEKS                       R23 R22 K10 ["Id"]
      307 GETUPVAL                         R25 4
      308 GETTABLEKS                       R24 R25 K17 ["Selectors"]
      310 GETTABLEKS                       R23 R24 K48 ["Descendant"]
      312 CALL                             R23 0 1
      313 SETTABLEKS                       R23 R22 K11 ["Icon"]
      315 SETTABLEKS                       R6 R22 K23 ["Enabled"]
      317 LOADK                            R25 K18 ["ContextMenu"]
      318 LOADK                            R26 K49 ["New.Descendant"]
      319 NAMECALL                         R23 R2 K20 ["getText"]
      321 CALL                             R23 3 1
      322 SETTABLEKS                       R23 R22 K12 ["Text"]
      324 JUMPIFNOT                        R6 ; [+18]
      325 NEWTABLE                         R24 0 4
      327 MOVE                             R25 R10
      328 MOVE                             R26 R11
      329 MOVE                             R27 R12
      330 MOVE                             R28 R13
      331 SETLIST                          R24 R25 4 [1]
      333 GETUPVAL                         R25 0
      334 MOVE                             R26 R24
      335 LOADK                            R28 K50 [">>"]
      336 NEWCLOSURE                       R27 P3
      337 CAPTURE                          UPVAL U1
      338 CAPTURE                          VAL R3
      339 CAPTURE                          VAL R28
      340 CALL                             R25 2 1
      341 MOVE                             R23 R25
      342 JUMP                             ; [+1]
      343 LOADNIL                          R23
      344 SETTABLEKS                       R23 R22 K28 ["Children"]
      346 MOVE                             R23 R13
      347 SETLIST                          R14 R15 9 [1]
      349 DUPTABLE                         R15 K51 [{"Id", "Text", "Icon", "Children"}]
      350 LOADK                            R16 K52 ["New"]
      351 SETTABLEKS                       R16 R15 K10 ["Id"]
      353 LOADK                            R18 K18 ["ContextMenu"]
      354 LOADK                            R19 K52 ["New"]
      355 NAMECALL                         R16 R2 K20 ["getText"]
      357 CALL                             R16 3 1
      358 SETTABLEKS                       R16 R15 K12 ["Text"]
      360 GETUPVAL                         R17 4
      361 GETTABLEKS                       R16 R17 K53 ["new"]
      363 CALL                             R16 0 1
      364 SETTABLEKS                       R16 R15 K11 ["Icon"]
      366 SETTABLEKS                       R14 R15 K28 ["Children"]
      368 RETURN                           R15 1

PROTO_15:
        0 DUPTABLE                         R2 K4 [{"Id", "Text", "Icon", "Children"}]
        1 LOADK                            R3 K5 ["Insert"]
        2 SETTABLEKS                       R3 R2 K0 ["Id"]
        4 LOADK                            R5 K6 ["ContextMenu"]
        5 LOADK                            R6 K5 ["Insert"]
        6 NAMECALL                         R3 R1 K7 ["getText"]
        8 CALL                             R3 3 1
        9 SETTABLEKS                       R3 R2 K1 ["Text"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K8 ["insert"]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R2 K2 ["Icon"]
       17 NEWTABLE                         R3 0 1
       19 DUPTABLE                         R4 K10 [{"Id", "Text", "Icon", "OnItemClicked"}]
       20 LOADK                            R5 K11 ["StyleQuery"]
       21 SETTABLEKS                       R5 R4 K0 ["Id"]
       23 LOADK                            R5 K11 ["StyleQuery"]
       24 SETTABLEKS                       R5 R4 K1 ["Text"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K12 ["getClassIcon"]
       29 LOADK                            R6 K11 ["StyleQuery"]
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R5 R4 K2 ["Icon"]
       33 SETTABLEKS                       R0 R4 K9 ["OnItemClicked"]
       35 SETLIST                          R3 R4 1 [1]
       37 SETTABLEKS                       R3 R2 K3 ["Children"]
       39 RETURN                           R2 1

PROTO_16:
        0 DUPTABLE                         R2 K4 [{"Id", "Text", "Icon", "OnItemClicked"}]
        1 LOADK                            R3 K5 ["Rename"]
        2 SETTABLEKS                       R3 R2 K0 ["Id"]
        4 LOADK                            R5 K6 ["ContextMenu"]
        5 LOADK                            R6 K5 ["Rename"]
        6 NAMECALL                         R3 R1 K7 ["getText"]
        8 CALL                             R3 3 1
        9 SETTABLEKS                       R3 R2 K1 ["Text"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K8 ["edit"]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R2 K2 ["Icon"]
       17 SETTABLEKS                       R0 R2 K3 ["OnItemClicked"]
       19 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R2 R5 K0 ["Id"]
        3 LOADK                            R3 K1 ["/"]
        4 GETTABLEKS                       R4 R0 K0 ["Id"]
        6 CONCAT                           R1 R2 R4
        7 SETTABLEKS                       R1 R0 K0 ["Id"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["buildMenu"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 MOVE                             R0 R1
       15 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["filterHiddenActions"]
        3 GETTABLEKS                       R2 R0 K1 ["Children"]
        5 JUMPIF                           R2 ; [+2]
        6 NEWTABLE                         R2 0 0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 MOVE                             R5 R2
       18 CALL                             R3 2 1
       19 LOADNIL                          R4
       20 SETTABLEKS                       R4 R3 K1 ["Children"]
       22 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["OnItemClicked"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 SETTABLEKS                       R3 R0 K0 ["OnItemClicked"]
        8 GETTABLEKS                       R3 R0 K1 ["Children"]
       10 JUMPIFNOT                        R3 ; [+13]
       11 GETTABLEKS                       R3 R0 K1 ["Children"]
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K2 ["decorateClickHandlers"]
       19 MOVE                             R9 R7
       20 MOVE                             R10 R1
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 2 ; [-7]
       24 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K4 [{"eventType", "path", "data"}]
        5 GETUPVAL                         R8 2
        6 GETTABLEKS                       R7 R8 K5 ["ContextMenu"]
        8 GETTABLEKS                       R6 R7 K6 ["rawValue"]
       10 CALL                             R6 0 1
       11 SETTABLEKS                       R6 R5 K1 ["eventType"]
       13 GETTABLEKS                       R6 R0 K7 ["Id"]
       15 SETTABLEKS                       R6 R5 K2 ["path"]
       17 JUMPIFNOT                        R1 ; [+6]
       18 GETIMPORT                        R7 K9 [next]
       20 MOVE                             R8 R1
       21 CALL                             R7 1 1
       22 GETTABLE                         R6 R1 R7
       23 JUMP                             ; [+1]
       24 LOADNIL                          R6
       25 SETTABLEKS                       R6 R5 K3 ["data"]
       27 CALL                             R4 1 -1
       28 NAMECALL                         R2 R2 K10 ["logTelemetryEvent"]
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["decorateClickHandlers"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["buildMenu"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R2
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["Hidden"]
        2 JUMPIFNOTEQKB                    R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_24]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["Rodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R6 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R6 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R6 R4 K13 ["UI"]
       38 GETTABLEKS                       R5 R6 K14 ["showContextMenu"]
       40 GETIMPORT                        R6 K8 [require]
       42 GETTABLEKS                       R8 R1 K9 ["Packages"]
       44 GETTABLEKS                       R7 R8 K15 ["Dash"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R6 K16 ["map"]
       49 GETTABLEKS                       R8 R6 K17 ["filter"]
       51 GETTABLEKS                       R9 R6 K18 ["join"]
       53 GETIMPORT                        R10 K8 [require]
       55 GETTABLEKS                       R14 R1 K19 ["Src"]
       57 GETTABLEKS                       R13 R14 K20 ["Resources"]
       59 GETTABLEKS                       R12 R13 K21 ["Telemetry"]
       61 GETTABLEKS                       R11 R12 K22 ["ActionClickedEvent"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K8 [require]
       66 GETTABLEKS                       R14 R1 K19 ["Src"]
       68 GETTABLEKS                       R13 R14 K23 ["Enums"]
       70 GETTABLEKS                       R12 R13 K24 ["ActionClickedEventType"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K8 [require]
       75 GETTABLEKS                       R16 R1 K19 ["Src"]
       77 GETTABLEKS                       R15 R16 K25 ["Contexts"]
       79 GETTABLEKS                       R14 R15 K21 ["Telemetry"]
       81 GETTABLEKS                       R13 R14 K26 ["Types"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K1 [game]
       86 LOADK                            R15 K27 ["StyleEditorUIPageLayout"]
       87 LOADB                            R16 0
       88 NAMECALL                         R13 R13 K28 ["DefineFastFlag"]
       90 CALL                             R13 3 1
       91 GETIMPORT                        R14 K8 [require]
       93 GETTABLEKS                       R17 R1 K19 ["Src"]
       95 GETTABLEKS                       R16 R17 K29 ["Flags"]
       97 GETTABLEKS                       R15 R16 K30 ["getFFlagStyleQuery"]
       99 CALL                             R14 1 1
      100 CALL                             R14 0 1
      101 GETIMPORT                        R15 K8 [require]
      103 GETTABLEKS                       R18 R1 K19 ["Src"]
      105 GETTABLEKS                       R17 R18 K29 ["Flags"]
      107 GETTABLEKS                       R16 R17 K31 ["getFFlagStyleEditorNewRuleRenameFix"]
      109 CALL                             R15 1 1
      110 CALL                             R15 0 1
      111 GETIMPORT                        R16 K8 [require]
      113 GETTABLEKS                       R19 R1 K19 ["Src"]
      115 GETTABLEKS                       R18 R19 K29 ["Flags"]
      117 GETTABLEKS                       R17 R18 K32 ["getEngineFeatureNestedPseudoInstance"]
      119 CALL                             R16 1 1
      120 CALL                             R16 0 1
      121 GETIMPORT                        R17 K8 [require]
      123 GETTABLEKS                       R20 R1 K19 ["Src"]
      125 GETTABLEKS                       R19 R20 K29 ["Flags"]
      127 GETTABLEKS                       R18 R19 K33 ["getEngineFeatureNewMultiPseudoInstances"]
      129 CALL                             R17 1 1
      130 CALL                             R17 0 1
      131 GETIMPORT                        R18 K8 [require]
      133 GETTABLEKS                       R20 R1 K19 ["Src"]
      135 GETTABLEKS                       R19 R20 K26 ["Types"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K8 [require]
      140 GETTABLEKS                       R22 R1 K19 ["Src"]
      142 GETTABLEKS                       R21 R22 K20 ["Resources"]
      144 GETTABLEKS                       R20 R21 K34 ["ModernIcons"]
      146 CALL                             R19 1 1
      147 NEWTABLE                         R20 32 0
      149 NEWTABLE                         R21 0 8
      151 LOADK                            R22 K35 ["CanvasGroup"]
      152 LOADK                            R23 K36 ["ImageButton"]
      153 LOADK                            R24 K37 ["ImageLabel"]
      154 LOADK                            R25 K38 ["ScrollingFrame"]
      155 LOADK                            R26 K39 ["Frame"]
      156 LOADK                            R27 K40 ["TextBox"]
      157 LOADK                            R28 K41 ["TextButton"]
      158 LOADK                            R29 K42 ["TextLabel"]
      159 SETLIST                          R21 R22 8 [1]
      161 SETTABLEKS                       R21 R20 K43 ["Classes"]
      163 JUMPIFNOT                        R13 ; [+16]
      164 NEWTABLE                         R21 0 11
      166 LOADK                            R22 K44 ["UIAspectRatioConstraint"]
      167 LOADK                            R23 K45 ["UICorner"]
      168 LOADK                            R24 K46 ["UIGradient"]
      169 LOADK                            R25 K47 ["UIGridLayout"]
      170 LOADK                            R26 K48 ["UIListLayout"]
      171 LOADK                            R27 K49 ["UIPadding"]
      172 LOADK                            R28 K50 ["UIPageLayout"]
      173 LOADK                            R29 K51 ["UIScale"]
      174 LOADK                            R30 K52 ["UISizeConstraint"]
      175 LOADK                            R31 K53 ["UIStroke"]
      176 LOADK                            R32 K54 ["UITextSizeConstraint"]
      177 SETLIST                          R21 R22 11 [1]
      179 JUMP                             ; [+14]
      180 NEWTABLE                         R21 0 10
      182 LOADK                            R22 K44 ["UIAspectRatioConstraint"]
      183 LOADK                            R23 K45 ["UICorner"]
      184 LOADK                            R24 K46 ["UIGradient"]
      185 LOADK                            R25 K47 ["UIGridLayout"]
      186 LOADK                            R26 K48 ["UIListLayout"]
      187 LOADK                            R27 K49 ["UIPadding"]
      188 LOADK                            R28 K51 ["UIScale"]
      189 LOADK                            R29 K52 ["UISizeConstraint"]
      190 LOADK                            R30 K53 ["UIStroke"]
      191 LOADK                            R31 K54 ["UITextSizeConstraint"]
      192 SETLIST                          R21 R22 10 [1]
      194 SETTABLEKS                       R21 R20 K55 ["PseudoInstances"]
      196 NEWTABLE                         R21 0 1
      198 LOADK                            R22 K53 ["UIStroke"]
      199 SETLIST                          R21 R22 1 [1]
      201 SETTABLEKS                       R21 R20 K56 ["MultiPseudoInstanceTypes"]
      203 JUMPIFNOT                        R14 ; [+8]
      204 GETTABLEKS                       R22 R20 K56 ["MultiPseudoInstanceTypes"]
      206 FASTCALL2K                       TABLE_INSERT R22 K57 ; [+4]
      208 LOADK                            R23 K57 ["StyleQuery"]
      209 GETIMPORT                        R21 K60 [table.insert]
      211 CALL                             R21 2 0
      212 GETTABLEKS                       R22 R20 K55 ["PseudoInstances"]
      214 LOADN                            R23 3
      215 LOADK                            R24 K61 ["UIFlexItem"]
      216 FASTCALL                         TABLE_INSERT ; [+2]
      217 GETIMPORT                        R21 K60 [table.insert]
      219 CALL                             R21 3 0
      220 NEWTABLE                         R21 0 4
      222 LOADK                            R22 K62 ["Hover"]
      223 LOADK                            R23 K63 ["Idle"]
      224 LOADK                            R24 K64 ["Press"]
      225 LOADK                            R25 K65 ["NonInteractable"]
      226 SETLIST                          R21 R22 4 [1]
      228 SETTABLEKS                       R21 R20 K66 ["GuiStates"]
      230 NEWTABLE                         R21 0 15
      232 LOADK                            R22 K67 ["string"]
      233 LOADK                            R23 K68 ["boolean"]
      234 LOADK                            R24 K69 ["number"]
      235 LOADK                            R25 K70 ["UDim"]
      236 LOADK                            R26 K71 ["UDim2"]
      237 LOADK                            R27 K72 ["BrickColor"]
      238 LOADK                            R28 K73 ["Color3"]
      239 LOADK                            R29 K74 ["Vector2"]
      240 LOADK                            R30 K75 ["Vector3"]
      241 LOADK                            R31 K76 ["CFrame"]
      242 LOADK                            R32 K77 ["ColorSequence"]
      243 LOADK                            R33 K78 ["NumberSequence"]
      244 LOADK                            R34 K79 ["NumberRange"]
      245 LOADK                            R35 K80 ["Rect"]
      246 LOADK                            R36 K81 ["Font"]
      247 SETLIST                          R21 R22 15 [1]
      249 SETTABLEKS                       R21 R20 K82 ["AttributeTypes"]
      251 DUPCLOSURE                       R21 K83 [PROTO_1]
      252 CAPTURE                          VAL R0
      253 SETTABLEKS                       R21 R20 K84 ["getClassIcon"]
      255 NEWTABLE                         R21 0 2
      257 DUPTABLE                         R22 K87 [{"Name", "Icon"}]
      258 LOADK                            R23 K88 ["Tokens"]
      259 SETTABLEKS                       R23 R22 K85 ["Name"]
      261 GETTABLEKS                       R24 R19 K89 ["Standard"]
      263 GETTABLEKS                       R23 R24 K90 ["TokenSheet"]
      265 CALL                             R23 0 1
      266 SETTABLEKS                       R23 R22 K86 ["Icon"]
      268 DUPTABLE                         R23 K87 [{"Name", "Icon"}]
      269 LOADK                            R24 K91 ["Themes"]
      270 SETTABLEKS                       R24 R23 K85 ["Name"]
      272 GETTABLEKS                       R25 R19 K89 ["Standard"]
      274 GETTABLEKS                       R24 R25 K92 ["ThemeSheet"]
      276 CALL                             R24 0 1
      277 SETTABLEKS                       R24 R23 K86 ["Icon"]
      279 SETLIST                          R21 R22 2 [1]
      281 SETTABLEKS                       R21 R20 K93 ["StyleSheetCategories"]
      283 NEWTABLE                         R21 0 1
      285 NEWTABLE                         R22 4 0
      287 LOADK                            R23 K94 ["Menu"]
      288 SETTABLEKS                       R23 R22 K95 ["Id"]
      290 DUPTABLE                         R23 K97 [{"Image"}]
      291 GETTABLEKS                       R24 R19 K98 ["more"]
      293 CALL                             R24 0 1
      294 SETTABLEKS                       R24 R23 K96 ["Image"]
      296 SETTABLEKS                       R23 R22 K86 ["Icon"]
      298 GETTABLEKS                       R23 R2 K99 ["Tag"]
      300 LOADK                            R24 K100 ["Contrast IconOnly"]
      301 SETTABLE                         R24 R22 R23
      302 SETLIST                          R21 R22 1 [1]
      304 SETTABLEKS                       R21 R20 K101 ["MoreAction"]
      306 NEWTABLE                         R21 0 1
      308 NEWTABLE                         R22 4 0
      310 LOADK                            R23 K94 ["Menu"]
      311 SETTABLEKS                       R23 R22 K95 ["Id"]
      313 DUPTABLE                         R23 K97 [{"Image"}]
      314 GETTABLEKS                       R24 R19 K98 ["more"]
      316 CALL                             R24 0 1
      317 SETTABLEKS                       R24 R23 K96 ["Image"]
      319 SETTABLEKS                       R23 R22 K86 ["Icon"]
      321 GETTABLEKS                       R23 R2 K99 ["Tag"]
      323 LOADK                            R24 K102 ["IconOnly SecondaryHoverBackground"]
      324 SETTABLE                         R24 R22 R23
      325 SETLIST                          R21 R22 1 [1]
      327 SETTABLEKS                       R21 R20 K103 ["FullSpanMoreAction"]
      329 NEWTABLE                         R21 0 1
      331 NEWTABLE                         R22 4 0
      333 LOADK                            R23 K94 ["Menu"]
      334 SETTABLEKS                       R23 R22 K95 ["Id"]
      336 DUPTABLE                         R23 K97 [{"Image"}]
      337 GETTABLEKS                       R24 R19 K104 ["new"]
      339 CALL                             R24 0 1
      340 SETTABLEKS                       R24 R23 K96 ["Image"]
      342 SETTABLEKS                       R23 R22 K86 ["Icon"]
      344 GETTABLEKS                       R23 R2 K99 ["Tag"]
      346 LOADK                            R24 K102 ["IconOnly SecondaryHoverBackground"]
      347 SETTABLE                         R24 R22 R23
      348 SETLIST                          R21 R22 1 [1]
      350 SETTABLEKS                       R21 R20 K105 ["CategoryPlusButtonAction"]
      352 DUPCLOSURE                       R21 K106 [PROTO_3]
      353 CAPTURE                          VAL R17
      354 CAPTURE                          VAL R20
      355 SETTABLEKS                       R21 R20 K107 ["getAvailablePseudoSelector"]
      357 DUPCLOSURE                       R21 K108 [PROTO_5]
      358 CAPTURE                          VAL R7
      359 CAPTURE                          VAL R20
      360 SETTABLEKS                       R21 R20 K109 ["getStyleSheetCategoryActions"]
      362 DUPCLOSURE                       R21 K110 [PROTO_7]
      363 CAPTURE                          VAL R7
      364 SETTABLEKS                       R21 R20 K111 ["getAttributeTypeActions"]
      366 DUPCLOSURE                       R21 K112 [PROTO_9]
      367 CAPTURE                          VAL R7
      368 CAPTURE                          VAL R20
      369 SETTABLEKS                       R21 R20 K113 ["getClassTypeActions"]
      371 DUPCLOSURE                       R21 K114 [PROTO_14]
      372 CAPTURE                          VAL R7
      373 CAPTURE                          VAL R9
      374 CAPTURE                          VAL R16
      375 CAPTURE                          VAL R20
      376 CAPTURE                          VAL R19
      377 CAPTURE                          VAL R6
      378 CAPTURE                          VAL R15
      379 SETTABLEKS                       R21 R20 K115 ["getNewSelectorAction"]
      381 DUPCLOSURE                       R21 K116 [PROTO_15]
      382 CAPTURE                          VAL R19
      383 CAPTURE                          VAL R20
      384 SETTABLEKS                       R21 R20 K117 ["getInsertAction"]
      386 DUPCLOSURE                       R21 K118 [PROTO_16]
      387 CAPTURE                          VAL R19
      388 SETTABLEKS                       R21 R20 K119 ["getRenameAction"]
      390 DUPCLOSURE                       R21 K120 [PROTO_18]
      391 CAPTURE                          VAL R20
      392 CAPTURE                          VAL R7
      393 CAPTURE                          VAL R9
      394 SETTABLEKS                       R21 R20 K121 ["buildMenu"]
      396 DUPCLOSURE                       R21 K122 [PROTO_20]
      397 CAPTURE                          VAL R20
      398 SETTABLEKS                       R21 R20 K123 ["decorateClickHandlers"]
      400 DUPCLOSURE                       R21 K124 [PROTO_22]
      401 CAPTURE                          VAL R20
      402 CAPTURE                          VAL R10
      403 CAPTURE                          VAL R11
      404 SETTABLEKS                       R21 R20 K125 ["trackClicks"]
      406 DUPCLOSURE                       R21 K126 [PROTO_23]
      407 CAPTURE                          VAL R20
      408 CAPTURE                          VAL R5
      409 SETTABLEKS                       R21 R20 K14 ["showContextMenu"]
      411 DUPCLOSURE                       R21 K127 [PROTO_25]
      412 CAPTURE                          VAL R8
      413 SETTABLEKS                       R21 R20 K128 ["filterHiddenActions"]
      415 RETURN                           R20 1
