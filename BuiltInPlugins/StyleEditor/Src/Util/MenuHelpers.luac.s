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
      152 NEWTABLE                         R14 0 10
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
      177 GETUPVAL                         R20 7
      178 JUMPIFNOT                        R20 ; [+2]
      179 AND                              R19 R7 R4
      180 JUMP                             ; [+1]
      181 MOVE                             R19 R7
      182 SETTABLEKS                       R19 R18 K23 ["Enabled"]
      184 LOADK                            R21 K18 ["ContextMenu"]
      185 LOADK                            R22 K40 ["New.PseudoInstance"]
      186 NAMECALL                         R19 R2 K20 ["getText"]
      188 CALL                             R19 3 1
      189 SETTABLEKS                       R19 R18 K12 ["Text"]
      191 JUMPIFNOT                        R7 ; [+2]
      192 MOVE                             R19 R8
      193 JUMP                             ; [+1]
      194 LOADNIL                          R19
      195 SETTABLEKS                       R19 R18 K28 ["Children"]
      197 DUPTABLE                         R19 K38 [{"Id", "Icon", "Enabled", "Text", "Children"}]
      198 LOADK                            R20 K41 ["GuiState"]
      199 SETTABLEKS                       R20 R19 K10 ["Id"]
      201 GETUPVAL                         R22 4
      202 GETTABLEKS                       R21 R22 K17 ["Selectors"]
      204 GETTABLEKS                       R20 R21 K41 ["GuiState"]
      206 CALL                             R20 0 1
      207 SETTABLEKS                       R20 R19 K11 ["Icon"]
      209 SETTABLEKS                       R6 R19 K23 ["Enabled"]
      211 LOADK                            R20 K41 ["GuiState"]
      212 SETTABLEKS                       R20 R19 K12 ["Text"]
      214 JUMPIFNOT                        R6 ; [+2]
      215 MOVE                             R20 R9
      216 JUMP                             ; [+1]
      217 LOADNIL                          R20
      218 SETTABLEKS                       R20 R19 K28 ["Children"]
      220 DUPTABLE                         R20 K38 [{"Id", "Icon", "Enabled", "Text", "Children"}]
      221 LOADK                            R21 K42 ["Enumerator"]
      222 SETTABLEKS                       R21 R20 K10 ["Id"]
      224 GETUPVAL                         R23 4
      225 GETTABLEKS                       R22 R23 K17 ["Selectors"]
      227 GETTABLEKS                       R21 R22 K42 ["Enumerator"]
      229 CALL                             R21 0 1
      230 SETTABLEKS                       R21 R20 K11 ["Icon"]
      232 AND                              R21 R4 R6
      233 SETTABLEKS                       R21 R20 K23 ["Enabled"]
      235 LOADK                            R23 K18 ["ContextMenu"]
      236 LOADK                            R24 K43 ["New.Enumerator"]
      237 NAMECALL                         R21 R2 K20 ["getText"]
      239 CALL                             R21 3 1
      240 SETTABLEKS                       R21 R20 K12 ["Text"]
      242 JUMPIFNOT                        R4 ; [+19]
      243 JUMPIFNOT                        R6 ; [+18]
      244 NEWTABLE                         R22 0 4
      246 MOVE                             R23 R10
      247 MOVE                             R24 R11
      248 MOVE                             R25 R12
      249 MOVE                             R26 R13
      250 SETLIST                          R22 R23 4 [1]
      252 GETUPVAL                         R23 0
      253 MOVE                             R24 R22
      254 LOADK                            R26 K44 [","]
      255 NEWCLOSURE                       R25 P3
      256 CAPTURE                          UPVAL U1
      257 CAPTURE                          VAL R3
      258 CAPTURE                          VAL R26
      259 CALL                             R23 2 1
      260 MOVE                             R21 R23
      261 JUMP                             ; [+1]
      262 LOADNIL                          R21
      263 SETTABLEKS                       R21 R20 K28 ["Children"]
      265 DUPTABLE                         R21 K38 [{"Id", "Icon", "Enabled", "Text", "Children"}]
      266 LOADK                            R22 K45 ["Child"]
      267 SETTABLEKS                       R22 R21 K10 ["Id"]
      269 GETUPVAL                         R24 4
      270 GETTABLEKS                       R23 R24 K17 ["Selectors"]
      272 GETTABLEKS                       R22 R23 K45 ["Child"]
      274 CALL                             R22 0 1
      275 SETTABLEKS                       R22 R21 K11 ["Icon"]
      277 SETTABLEKS                       R6 R21 K23 ["Enabled"]
      279 LOADK                            R24 K18 ["ContextMenu"]
      280 LOADK                            R25 K46 ["New.Child"]
      281 NAMECALL                         R22 R2 K20 ["getText"]
      283 CALL                             R22 3 1
      284 SETTABLEKS                       R22 R21 K12 ["Text"]
      286 JUMPIFNOT                        R6 ; [+18]
      287 NEWTABLE                         R23 0 4
      289 MOVE                             R24 R10
      290 MOVE                             R25 R11
      291 MOVE                             R26 R12
      292 MOVE                             R27 R13
      293 SETLIST                          R23 R24 4 [1]
      295 GETUPVAL                         R24 0
      296 MOVE                             R25 R23
      297 LOADK                            R27 K47 [">"]
      298 NEWCLOSURE                       R26 P3
      299 CAPTURE                          UPVAL U1
      300 CAPTURE                          VAL R3
      301 CAPTURE                          VAL R27
      302 CALL                             R24 2 1
      303 MOVE                             R22 R24
      304 JUMP                             ; [+1]
      305 LOADNIL                          R22
      306 SETTABLEKS                       R22 R21 K28 ["Children"]
      308 DUPTABLE                         R22 K38 [{"Id", "Icon", "Enabled", "Text", "Children"}]
      309 LOADK                            R23 K48 ["Descendant"]
      310 SETTABLEKS                       R23 R22 K10 ["Id"]
      312 GETUPVAL                         R25 4
      313 GETTABLEKS                       R24 R25 K17 ["Selectors"]
      315 GETTABLEKS                       R23 R24 K48 ["Descendant"]
      317 CALL                             R23 0 1
      318 SETTABLEKS                       R23 R22 K11 ["Icon"]
      320 SETTABLEKS                       R6 R22 K23 ["Enabled"]
      322 LOADK                            R25 K18 ["ContextMenu"]
      323 LOADK                            R26 K49 ["New.Descendant"]
      324 NAMECALL                         R23 R2 K20 ["getText"]
      326 CALL                             R23 3 1
      327 SETTABLEKS                       R23 R22 K12 ["Text"]
      329 JUMPIFNOT                        R6 ; [+18]
      330 NEWTABLE                         R24 0 4
      332 MOVE                             R25 R10
      333 MOVE                             R26 R11
      334 MOVE                             R27 R12
      335 MOVE                             R28 R13
      336 SETLIST                          R24 R25 4 [1]
      338 GETUPVAL                         R25 0
      339 MOVE                             R26 R24
      340 LOADK                            R28 K50 [">>"]
      341 NEWCLOSURE                       R27 P3
      342 CAPTURE                          UPVAL U1
      343 CAPTURE                          VAL R3
      344 CAPTURE                          VAL R28
      345 CALL                             R25 2 1
      346 MOVE                             R23 R25
      347 JUMP                             ; [+1]
      348 LOADNIL                          R23
      349 SETTABLEKS                       R23 R22 K28 ["Children"]
      351 GETUPVAL                         R24 7
      352 JUMPIFNOT                        R24 ; [+19]
      353 DUPTABLE                         R23 K51 [{"Id", "Text", "Enabled", "Icon", "OnItemClicked"}]
      354 LOADK                            R24 K52 ["StyleQuery"]
      355 SETTABLEKS                       R24 R23 K10 ["Id"]
      357 LOADK                            R24 K52 ["StyleQuery"]
      358 SETTABLEKS                       R24 R23 K12 ["Text"]
      360 SETTABLEKS                       R4 R23 K23 ["Enabled"]
      362 GETUPVAL                         R25 3
      363 GETTABLEKS                       R24 R25 K53 ["getClassIcon"]
      365 LOADK                            R25 K52 ["StyleQuery"]
      366 CALL                             R24 1 1
      367 SETTABLEKS                       R24 R23 K11 ["Icon"]
      369 SETTABLEKS                       R1 R23 K13 ["OnItemClicked"]
      371 JUMP                             ; [+1]
      372 LOADNIL                          R23
      373 MOVE                             R24 R13
      374 SETLIST                          R14 R15 10 [1]
      376 DUPTABLE                         R15 K54 [{"Id", "Text", "Icon", "Children"}]
      377 LOADK                            R16 K55 ["New"]
      378 SETTABLEKS                       R16 R15 K10 ["Id"]
      380 LOADK                            R18 K18 ["ContextMenu"]
      381 LOADK                            R19 K55 ["New"]
      382 NAMECALL                         R16 R2 K20 ["getText"]
      384 CALL                             R16 3 1
      385 SETTABLEKS                       R16 R15 K12 ["Text"]
      387 GETUPVAL                         R17 4
      388 GETTABLEKS                       R16 R17 K56 ["new"]
      390 CALL                             R16 0 1
      391 SETTABLEKS                       R16 R15 K11 ["Icon"]
      393 SETTABLEKS                       R14 R15 K28 ["Children"]
      395 RETURN                           R15 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["decorateClickHandlers"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["buildMenu"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R2
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["Hidden"]
        2 JUMPIFNOTEQKB                    R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_23]
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
      133 GETTABLEKS                       R21 R1 K19 ["Src"]
      135 GETTABLEKS                       R20 R21 K29 ["Flags"]
      137 GETTABLEKS                       R19 R20 K34 ["getEngineFeatureUIShadow"]
      139 CALL                             R18 1 1
      140 CALL                             R18 0 1
      141 GETIMPORT                        R19 K8 [require]
      143 GETTABLEKS                       R22 R1 K19 ["Src"]
      145 GETTABLEKS                       R21 R22 K29 ["Flags"]
      147 GETTABLEKS                       R20 R21 K35 ["getEngineFeatureTweenInfoAttributes"]
      149 CALL                             R19 1 1
      150 CALL                             R19 0 1
      151 GETIMPORT                        R20 K8 [require]
      153 GETTABLEKS                       R22 R1 K19 ["Src"]
      155 GETTABLEKS                       R21 R22 K26 ["Types"]
      157 CALL                             R20 1 1
      158 GETIMPORT                        R21 K8 [require]
      160 GETTABLEKS                       R24 R1 K19 ["Src"]
      162 GETTABLEKS                       R23 R24 K20 ["Resources"]
      164 GETTABLEKS                       R22 R23 K36 ["ModernIcons"]
      166 CALL                             R21 1 1
      167 NEWTABLE                         R22 32 0
      169 NEWTABLE                         R23 0 8
      171 LOADK                            R24 K37 ["CanvasGroup"]
      172 LOADK                            R25 K38 ["ImageButton"]
      173 LOADK                            R26 K39 ["ImageLabel"]
      174 LOADK                            R27 K40 ["ScrollingFrame"]
      175 LOADK                            R28 K41 ["Frame"]
      176 LOADK                            R29 K42 ["TextBox"]
      177 LOADK                            R30 K43 ["TextButton"]
      178 LOADK                            R31 K44 ["TextLabel"]
      179 SETLIST                          R23 R24 8 [1]
      181 SETTABLEKS                       R23 R22 K45 ["Classes"]
      183 JUMPIFNOT                        R13 ; [+16]
      184 NEWTABLE                         R23 0 11
      186 LOADK                            R24 K46 ["UIAspectRatioConstraint"]
      187 LOADK                            R25 K47 ["UICorner"]
      188 LOADK                            R26 K48 ["UIGradient"]
      189 LOADK                            R27 K49 ["UIGridLayout"]
      190 LOADK                            R28 K50 ["UIListLayout"]
      191 LOADK                            R29 K51 ["UIPadding"]
      192 LOADK                            R30 K52 ["UIPageLayout"]
      193 LOADK                            R31 K53 ["UIScale"]
      194 LOADK                            R32 K54 ["UISizeConstraint"]
      195 LOADK                            R33 K55 ["UIStroke"]
      196 LOADK                            R34 K56 ["UITextSizeConstraint"]
      197 SETLIST                          R23 R24 11 [1]
      199 JUMP                             ; [+14]
      200 NEWTABLE                         R23 0 10
      202 LOADK                            R24 K46 ["UIAspectRatioConstraint"]
      203 LOADK                            R25 K47 ["UICorner"]
      204 LOADK                            R26 K48 ["UIGradient"]
      205 LOADK                            R27 K49 ["UIGridLayout"]
      206 LOADK                            R28 K50 ["UIListLayout"]
      207 LOADK                            R29 K51 ["UIPadding"]
      208 LOADK                            R30 K53 ["UIScale"]
      209 LOADK                            R31 K54 ["UISizeConstraint"]
      210 LOADK                            R32 K55 ["UIStroke"]
      211 LOADK                            R33 K56 ["UITextSizeConstraint"]
      212 SETLIST                          R23 R24 10 [1]
      214 SETTABLEKS                       R23 R22 K57 ["PseudoInstances"]
      216 NEWTABLE                         R23 0 1
      218 LOADK                            R24 K55 ["UIStroke"]
      219 SETLIST                          R23 R24 1 [1]
      221 SETTABLEKS                       R23 R22 K58 ["MultiPseudoInstanceTypes"]
      223 JUMPIFNOT                        R14 ; [+8]
      224 GETTABLEKS                       R24 R22 K58 ["MultiPseudoInstanceTypes"]
      226 FASTCALL2K                       TABLE_INSERT R24 K59 ; [+4]
      228 LOADK                            R25 K59 ["StyleQuery"]
      229 GETIMPORT                        R23 K62 [table.insert]
      231 CALL                             R23 2 0
      232 JUMPIFNOT                        R18 ; [+16]
      233 GETTABLEKS                       R24 R22 K57 ["PseudoInstances"]
      235 FASTCALL2K                       TABLE_INSERT R24 K63 ; [+4]
      237 LOADK                            R25 K63 ["UIShadow"]
      238 GETIMPORT                        R23 K62 [table.insert]
      240 CALL                             R23 2 0
      241 GETTABLEKS                       R24 R22 K58 ["MultiPseudoInstanceTypes"]
      243 FASTCALL2K                       TABLE_INSERT R24 K63 ; [+4]
      245 LOADK                            R25 K63 ["UIShadow"]
      246 GETIMPORT                        R23 K62 [table.insert]
      248 CALL                             R23 2 0
      249 GETTABLEKS                       R24 R22 K57 ["PseudoInstances"]
      251 LOADN                            R25 3
      252 LOADK                            R26 K64 ["UIFlexItem"]
      253 FASTCALL                         TABLE_INSERT ; [+2]
      254 GETIMPORT                        R23 K62 [table.insert]
      256 CALL                             R23 3 0
      257 NEWTABLE                         R23 0 4
      259 LOADK                            R24 K65 ["Hover"]
      260 LOADK                            R25 K66 ["Idle"]
      261 LOADK                            R26 K67 ["Press"]
      262 LOADK                            R27 K68 ["NonInteractable"]
      263 SETLIST                          R23 R24 4 [1]
      265 SETTABLEKS                       R23 R22 K69 ["GuiStates"]
      267 JUMPIFNOT                        R19 ; [+21]
      268 NEWTABLE                         R23 0 16
      270 LOADK                            R24 K70 ["string"]
      271 LOADK                            R25 K71 ["boolean"]
      272 LOADK                            R26 K72 ["number"]
      273 LOADK                            R27 K73 ["UDim"]
      274 LOADK                            R28 K74 ["UDim2"]
      275 LOADK                            R29 K75 ["BrickColor"]
      276 LOADK                            R30 K76 ["Color3"]
      277 LOADK                            R31 K77 ["Vector2"]
      278 LOADK                            R32 K78 ["Vector3"]
      279 LOADK                            R33 K79 ["CFrame"]
      280 LOADK                            R34 K80 ["ColorSequence"]
      281 LOADK                            R35 K81 ["NumberSequence"]
      282 LOADK                            R36 K82 ["NumberRange"]
      283 LOADK                            R37 K83 ["Rect"]
      284 LOADK                            R38 K84 ["Font"]
      285 LOADK                            R39 K85 ["TweenInfo"]
      286 SETLIST                          R23 R24 16 [1]
      288 JUMP                             ; [+19]
      289 NEWTABLE                         R23 0 15
      291 LOADK                            R24 K70 ["string"]
      292 LOADK                            R25 K71 ["boolean"]
      293 LOADK                            R26 K72 ["number"]
      294 LOADK                            R27 K73 ["UDim"]
      295 LOADK                            R28 K74 ["UDim2"]
      296 LOADK                            R29 K75 ["BrickColor"]
      297 LOADK                            R30 K76 ["Color3"]
      298 LOADK                            R31 K77 ["Vector2"]
      299 LOADK                            R32 K78 ["Vector3"]
      300 LOADK                            R33 K79 ["CFrame"]
      301 LOADK                            R34 K80 ["ColorSequence"]
      302 LOADK                            R35 K81 ["NumberSequence"]
      303 LOADK                            R36 K82 ["NumberRange"]
      304 LOADK                            R37 K83 ["Rect"]
      305 LOADK                            R38 K84 ["Font"]
      306 SETLIST                          R23 R24 15 [1]
      308 SETTABLEKS                       R23 R22 K86 ["AttributeTypes"]
      310 DUPCLOSURE                       R23 K87 [PROTO_1]
      311 CAPTURE                          VAL R0
      312 SETTABLEKS                       R23 R22 K88 ["getClassIcon"]
      314 NEWTABLE                         R23 0 2
      316 DUPTABLE                         R24 K91 [{"Name", "Icon"}]
      317 LOADK                            R25 K92 ["Tokens"]
      318 SETTABLEKS                       R25 R24 K89 ["Name"]
      320 GETTABLEKS                       R26 R21 K93 ["Standard"]
      322 GETTABLEKS                       R25 R26 K94 ["TokenSheet"]
      324 CALL                             R25 0 1
      325 SETTABLEKS                       R25 R24 K90 ["Icon"]
      327 DUPTABLE                         R25 K91 [{"Name", "Icon"}]
      328 LOADK                            R26 K95 ["Themes"]
      329 SETTABLEKS                       R26 R25 K89 ["Name"]
      331 GETTABLEKS                       R27 R21 K93 ["Standard"]
      333 GETTABLEKS                       R26 R27 K96 ["ThemeSheet"]
      335 CALL                             R26 0 1
      336 SETTABLEKS                       R26 R25 K90 ["Icon"]
      338 SETLIST                          R23 R24 2 [1]
      340 SETTABLEKS                       R23 R22 K97 ["StyleSheetCategories"]
      342 NEWTABLE                         R23 0 1
      344 NEWTABLE                         R24 4 0
      346 LOADK                            R25 K98 ["Menu"]
      347 SETTABLEKS                       R25 R24 K99 ["Id"]
      349 DUPTABLE                         R25 K101 [{"Image"}]
      350 GETTABLEKS                       R26 R21 K102 ["more"]
      352 CALL                             R26 0 1
      353 SETTABLEKS                       R26 R25 K100 ["Image"]
      355 SETTABLEKS                       R25 R24 K90 ["Icon"]
      357 GETTABLEKS                       R25 R2 K103 ["Tag"]
      359 LOADK                            R26 K104 ["Contrast IconOnly"]
      360 SETTABLE                         R26 R24 R25
      361 SETLIST                          R23 R24 1 [1]
      363 SETTABLEKS                       R23 R22 K105 ["MoreAction"]
      365 NEWTABLE                         R23 0 1
      367 NEWTABLE                         R24 4 0
      369 LOADK                            R25 K98 ["Menu"]
      370 SETTABLEKS                       R25 R24 K99 ["Id"]
      372 DUPTABLE                         R25 K101 [{"Image"}]
      373 GETTABLEKS                       R26 R21 K102 ["more"]
      375 CALL                             R26 0 1
      376 SETTABLEKS                       R26 R25 K100 ["Image"]
      378 SETTABLEKS                       R25 R24 K90 ["Icon"]
      380 GETTABLEKS                       R25 R2 K103 ["Tag"]
      382 LOADK                            R26 K106 ["IconOnly SecondaryHoverBackground"]
      383 SETTABLE                         R26 R24 R25
      384 SETLIST                          R23 R24 1 [1]
      386 SETTABLEKS                       R23 R22 K107 ["FullSpanMoreAction"]
      388 NEWTABLE                         R23 0 1
      390 NEWTABLE                         R24 4 0
      392 LOADK                            R25 K98 ["Menu"]
      393 SETTABLEKS                       R25 R24 K99 ["Id"]
      395 DUPTABLE                         R25 K101 [{"Image"}]
      396 GETTABLEKS                       R26 R21 K108 ["new"]
      398 CALL                             R26 0 1
      399 SETTABLEKS                       R26 R25 K100 ["Image"]
      401 SETTABLEKS                       R25 R24 K90 ["Icon"]
      403 GETTABLEKS                       R25 R2 K103 ["Tag"]
      405 LOADK                            R26 K106 ["IconOnly SecondaryHoverBackground"]
      406 SETTABLE                         R26 R24 R25
      407 SETLIST                          R23 R24 1 [1]
      409 SETTABLEKS                       R23 R22 K109 ["CategoryPlusButtonAction"]
      411 DUPCLOSURE                       R23 K110 [PROTO_3]
      412 CAPTURE                          VAL R17
      413 CAPTURE                          VAL R22
      414 SETTABLEKS                       R23 R22 K111 ["getAvailablePseudoSelector"]
      416 DUPCLOSURE                       R23 K112 [PROTO_5]
      417 CAPTURE                          VAL R7
      418 CAPTURE                          VAL R22
      419 SETTABLEKS                       R23 R22 K113 ["getStyleSheetCategoryActions"]
      421 DUPCLOSURE                       R23 K114 [PROTO_7]
      422 CAPTURE                          VAL R7
      423 SETTABLEKS                       R23 R22 K115 ["getAttributeTypeActions"]
      425 DUPCLOSURE                       R23 K116 [PROTO_9]
      426 CAPTURE                          VAL R7
      427 CAPTURE                          VAL R22
      428 SETTABLEKS                       R23 R22 K117 ["getClassTypeActions"]
      430 DUPCLOSURE                       R23 K118 [PROTO_14]
      431 CAPTURE                          VAL R7
      432 CAPTURE                          VAL R9
      433 CAPTURE                          VAL R16
      434 CAPTURE                          VAL R22
      435 CAPTURE                          VAL R21
      436 CAPTURE                          VAL R6
      437 CAPTURE                          VAL R15
      438 CAPTURE                          VAL R14
      439 SETTABLEKS                       R23 R22 K119 ["getNewSelectorAction"]
      441 DUPCLOSURE                       R23 K120 [PROTO_15]
      442 CAPTURE                          VAL R21
      443 SETTABLEKS                       R23 R22 K121 ["getRenameAction"]
      445 DUPCLOSURE                       R23 K122 [PROTO_17]
      446 CAPTURE                          VAL R22
      447 CAPTURE                          VAL R7
      448 CAPTURE                          VAL R9
      449 SETTABLEKS                       R23 R22 K123 ["buildMenu"]
      451 DUPCLOSURE                       R23 K124 [PROTO_19]
      452 CAPTURE                          VAL R22
      453 SETTABLEKS                       R23 R22 K125 ["decorateClickHandlers"]
      455 DUPCLOSURE                       R23 K126 [PROTO_21]
      456 CAPTURE                          VAL R22
      457 CAPTURE                          VAL R10
      458 CAPTURE                          VAL R11
      459 SETTABLEKS                       R23 R22 K127 ["trackClicks"]
      461 DUPCLOSURE                       R23 K128 [PROTO_22]
      462 CAPTURE                          VAL R22
      463 CAPTURE                          VAL R5
      464 SETTABLEKS                       R23 R22 K14 ["showContextMenu"]
      466 DUPCLOSURE                       R23 K129 [PROTO_24]
      467 CAPTURE                          VAL R8
      468 SETTABLEKS                       R23 R22 K130 ["filterHiddenActions"]
      470 RETURN                           R22 1
