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
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["MultiPseudoInstanceTypes"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["StyleSheetCategories"]
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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K6 ["getClassIcon"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Classes"]
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
       20 GETTABLEKS                       R7 R0 K2 ["Data"]
       22 GETTABLEKS                       R7 R7 K4 ["Selector"]
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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K6 ["getClassIcon"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K2 ["Icon"]
       12 GETUPVAL                         R2 1
       13 SETTABLEKS                       R2 R1 K3 ["OnItemClicked"]
       15 DUPTABLE                         R2 K8 [{"Selector"}]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K9 ["getAvailablePseudoSelector"]
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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K6 ["Selectors"]
        8 GETTABLEKS                       R2 R2 K7 ["GuiState"]
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
        0 DUPTABLE                         R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
        1 GETTABLEKS                       R2 R0 K6 ["Name"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETTABLEKS                       R2 R0 K6 ["Name"]
        7 SETTABLEKS                       R2 R1 K1 ["Text"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K7 ["getClassIcon"]
       12 LOADK                            R3 K8 ["StyleQuery"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K2 ["Icon"]
       16 GETUPVAL                         R2 1
       17 SETTABLEKS                       R2 R1 K3 ["OnItemClicked"]
       19 DUPTABLE                         R2 K10 [{"BuiltinCategory"}]
       20 GETTABLEKS                       R3 R0 K6 ["Name"]
       22 SETTABLEKS                       R3 R2 K9 ["BuiltinCategory"]
       24 SETTABLEKS                       R2 R1 K4 ["Data"]
       26 RETURN                           R1 1

PROTO_15:
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
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K8 ["PseudoInstances"]
       27 NEWCLOSURE                       R10 P1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 CALL                             R8 2 1
       32 GETUPVAL                         R9 0
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R10 R10 K9 ["GuiStates"]
       36 NEWCLOSURE                       R11 P2
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R1
       39 CALL                             R9 2 1
       40 DUPTABLE                         R10 K15 [{"Id", "Icon", "Text", "OnItemClicked", "Data"}]
       41 LOADK                            R11 K16 ["Name"]
       42 SETTABLEKS                       R11 R10 K10 ["Id"]
       44 GETUPVAL                         R11 4
       45 GETTABLEKS                       R11 R11 K17 ["Selectors"]
       47 GETTABLEKS                       R11 R11 K16 ["Name"]
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
       78 GETUPVAL                         R12 4
       79 GETTABLEKS                       R12 R12 K17 ["Selectors"]
       81 GETTABLEKS                       R12 R12 K25 ["Tag"]
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
      100 GETUPVAL                         R13 4
      101 GETTABLEKS                       R13 R13 K17 ["Selectors"]
      103 GETTABLEKS                       R13 R13 K30 ["Class"]
      105 CALL                             R13 0 1
      106 SETTABLEKS                       R13 R12 K11 ["Icon"]
      108 SETTABLEKS                       R6 R12 K23 ["Enabled"]
      110 LOADK                            R15 K18 ["ContextMenu"]
      111 LOADK                            R16 K31 ["New.Class"]
      112 NAMECALL                         R13 R2 K20 ["getText"]
      114 CALL                             R13 3 1
      115 SETTABLEKS                       R13 R12 K12 ["Text"]
      117 GETUPVAL                         R13 5
      118 GETTABLEKS                       R13 R13 K32 ["noop"]
      120 SETTABLEKS                       R13 R12 K13 ["OnItemClicked"]
      122 JUMPIFNOT                        R6 ; [+7]
      123 GETUPVAL                         R13 3
      124 GETTABLEKS                       R13 R13 K33 ["getClassTypeActions"]
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
      152 NEWTABLE                         R14 0 11
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
      169 GETUPVAL                         R19 4
      170 GETTABLEKS                       R19 R19 K17 ["Selectors"]
      172 GETTABLEKS                       R19 R19 K39 ["PseudoInstance"]
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
      201 GETUPVAL                         R20 4
      202 GETTABLEKS                       R20 R20 K17 ["Selectors"]
      204 GETTABLEKS                       R20 R20 K41 ["GuiState"]
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
      224 GETUPVAL                         R21 4
      225 GETTABLEKS                       R21 R21 K17 ["Selectors"]
      227 GETTABLEKS                       R21 R21 K42 ["Enumerator"]
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
      269 GETUPVAL                         R22 4
      270 GETTABLEKS                       R22 R22 K17 ["Selectors"]
      272 GETTABLEKS                       R22 R22 K45 ["Child"]
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
      312 GETUPVAL                         R23 4
      313 GETTABLEKS                       R23 R23 K17 ["Selectors"]
      315 GETTABLEKS                       R23 R23 K48 ["Descendant"]
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
      352 JUMPIFNOT                        R24 ; [+81]
      353 DUPTABLE                         R23 K51 [{"Id", "Text", "Enabled", "Icon", "OnItemClicked", "Children"}]
      354 LOADK                            R24 K52 ["StyleQuery"]
      355 SETTABLEKS                       R24 R23 K10 ["Id"]
      357 LOADK                            R24 K52 ["StyleQuery"]
      358 SETTABLEKS                       R24 R23 K12 ["Text"]
      360 SETTABLEKS                       R4 R23 K23 ["Enabled"]
      362 GETUPVAL                         R24 3
      363 GETTABLEKS                       R24 R24 K53 ["getClassIcon"]
      365 LOADK                            R25 K52 ["StyleQuery"]
      366 CALL                             R24 1 1
      367 SETTABLEKS                       R24 R23 K11 ["Icon"]
      369 GETUPVAL                         R25 8
      370 JUMPIFNOT                        R25 ; [+2]
      371 LOADNIL                          R24
      372 JUMP                             ; [+1]
      373 MOVE                             R24 R1
      374 SETTABLEKS                       R24 R23 K13 ["OnItemClicked"]
      376 GETUPVAL                         R25 8
      377 JUMPIFNOT                        R25 ; [+52]
      378 JUMPIFNOT                        R4 ; [+51]
      379 NEWTABLE                         R24 0 2
      381 DUPTABLE                         R25 K54 [{"Id", "Text", "Icon", "Children"}]
      382 LOADK                            R26 K55 ["Builtin"]
      383 SETTABLEKS                       R26 R25 K10 ["Id"]
      385 LOADK                            R28 K18 ["ContextMenu"]
      386 LOADK                            R29 K56 ["New.Query.Builtin"]
      387 NAMECALL                         R26 R2 K20 ["getText"]
      389 CALL                             R26 3 1
      390 SETTABLEKS                       R26 R25 K12 ["Text"]
      392 GETUPVAL                         R26 3
      393 GETTABLEKS                       R26 R26 K53 ["getClassIcon"]
      395 LOADK                            R27 K52 ["StyleQuery"]
      396 CALL                             R26 1 1
      397 SETTABLEKS                       R26 R25 K11 ["Icon"]
      399 GETUPVAL                         R26 0
      400 GETUPVAL                         R27 9
      401 NEWCLOSURE                       R28 P4
      402 CAPTURE                          UPVAL U3
      403 CAPTURE                          VAL R1
      404 CALL                             R26 2 1
      405 SETTABLEKS                       R26 R25 K28 ["Children"]
      407 DUPTABLE                         R26 K57 [{"Id", "Text", "Icon", "OnItemClicked"}]
      408 LOADK                            R27 K58 ["Custom"]
      409 SETTABLEKS                       R27 R26 K10 ["Id"]
      411 LOADK                            R29 K18 ["ContextMenu"]
      412 LOADK                            R30 K59 ["New.Query.Custom"]
      413 NAMECALL                         R27 R2 K20 ["getText"]
      415 CALL                             R27 3 1
      416 SETTABLEKS                       R27 R26 K12 ["Text"]
      418 GETUPVAL                         R27 3
      419 GETTABLEKS                       R27 R27 K53 ["getClassIcon"]
      421 LOADK                            R28 K52 ["StyleQuery"]
      422 CALL                             R27 1 1
      423 SETTABLEKS                       R27 R26 K11 ["Icon"]
      425 SETTABLEKS                       R1 R26 K13 ["OnItemClicked"]
      427 SETLIST                          R24 R25 2 [1]
      429 JUMP                             ; [+1]
      430 LOADNIL                          R24
      431 SETTABLEKS                       R24 R23 K28 ["Children"]
      433 JUMP                             ; [+1]
      434 LOADNIL                          R23
      435 GETUPVAL                         R25 10
      436 JUMPIFNOT                        R25 ; [+17]
      437 DUPTABLE                         R24 K57 [{"Id", "Text", "Icon", "OnItemClicked"}]
      438 LOADK                            R25 K60 ["Folder"]
      439 SETTABLEKS                       R25 R24 K10 ["Id"]
      441 LOADK                            R25 K60 ["Folder"]
      442 SETTABLEKS                       R25 R24 K12 ["Text"]
      444 GETUPVAL                         R25 3
      445 GETTABLEKS                       R25 R25 K53 ["getClassIcon"]
      447 LOADK                            R26 K60 ["Folder"]
      448 CALL                             R25 1 1
      449 SETTABLEKS                       R25 R24 K11 ["Icon"]
      451 SETTABLEKS                       R1 R24 K13 ["OnItemClicked"]
      453 JUMP                             ; [+1]
      454 LOADNIL                          R24
      455 MOVE                             R25 R13
      456 SETLIST                          R14 R15 11 [1]
      458 DUPTABLE                         R15 K54 [{"Id", "Text", "Icon", "Children"}]
      459 LOADK                            R16 K61 ["New"]
      460 SETTABLEKS                       R16 R15 K10 ["Id"]
      462 LOADK                            R18 K18 ["ContextMenu"]
      463 LOADK                            R19 K61 ["New"]
      464 NAMECALL                         R16 R2 K20 ["getText"]
      466 CALL                             R16 3 1
      467 SETTABLEKS                       R16 R15 K12 ["Text"]
      469 GETUPVAL                         R16 4
      470 GETTABLEKS                       R16 R16 K62 ["new"]
      472 CALL                             R16 0 1
      473 SETTABLEKS                       R16 R15 K11 ["Icon"]
      475 SETTABLEKS                       R14 R15 K28 ["Children"]
      477 RETURN                           R15 1

PROTO_16:
        0 DUPTABLE                         R2 K4 [{"Id", "Text", "Icon", "OnItemClicked"}]
        1 LOADK                            R3 K5 ["Rename"]
        2 SETTABLEKS                       R3 R2 K0 ["Id"]
        4 LOADK                            R5 K6 ["ContextMenu"]
        5 LOADK                            R6 K5 ["Rename"]
        6 NAMECALL                         R3 R1 K7 ["getText"]
        8 CALL                             R3 3 1
        9 SETTABLEKS                       R3 R2 K1 ["Text"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K8 ["edit"]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R2 K2 ["Icon"]
       17 SETTABLEKS                       R0 R2 K3 ["OnItemClicked"]
       19 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Id"]
        3 LOADK                            R3 K1 ["/"]
        4 GETTABLEKS                       R4 R0 K0 ["Id"]
        6 CONCAT                           R1 R2 R4
        7 SETTABLEKS                       R1 R0 K0 ["Id"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["buildMenu"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 MOVE                             R0 R1
       15 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["filterHiddenActions"]
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
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K2 ["decorateClickHandlers"]
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
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K5 ["ContextMenu"]
        8 GETTABLEKS                       R6 R6 K6 ["rawValue"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["decorateClickHandlers"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildMenu"]
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
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Rodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["UI"]
       38 GETTABLEKS                       R5 R5 K14 ["showContextMenu"]
       40 GETIMPORT                        R6 K8 [require]
       42 GETTABLEKS                       R7 R1 K9 ["Packages"]
       44 GETTABLEKS                       R7 R7 K15 ["Dash"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R6 K16 ["map"]
       49 GETTABLEKS                       R8 R6 K17 ["filter"]
       51 GETTABLEKS                       R9 R6 K18 ["join"]
       53 GETIMPORT                        R10 K8 [require]
       55 GETTABLEKS                       R11 R1 K19 ["Src"]
       57 GETTABLEKS                       R11 R11 K20 ["Resources"]
       59 GETTABLEKS                       R11 R11 K21 ["Telemetry"]
       61 GETTABLEKS                       R11 R11 K22 ["ActionClickedEvent"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K8 [require]
       66 GETTABLEKS                       R12 R1 K19 ["Src"]
       68 GETTABLEKS                       R12 R12 K23 ["Enums"]
       70 GETTABLEKS                       R12 R12 K24 ["ActionClickedEventType"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K8 [require]
       75 GETTABLEKS                       R13 R1 K19 ["Src"]
       77 GETTABLEKS                       R13 R13 K25 ["Contexts"]
       79 GETTABLEKS                       R13 R13 K21 ["Telemetry"]
       81 GETTABLEKS                       R13 R13 K26 ["Types"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K1 [game]
       86 LOADK                            R15 K27 ["StyleEditorUIPageLayout"]
       87 LOADB                            R16 0
       88 NAMECALL                         R13 R13 K28 ["DefineFastFlag"]
       90 CALL                             R13 3 1
       91 GETIMPORT                        R14 K8 [require]
       93 GETTABLEKS                       R15 R1 K19 ["Src"]
       95 GETTABLEKS                       R15 R15 K29 ["Flags"]
       97 GETTABLEKS                       R15 R15 K30 ["getFFlagStyleQuery"]
       99 CALL                             R14 1 1
      100 CALL                             R14 0 1
      101 GETIMPORT                        R15 K8 [require]
      103 GETTABLEKS                       R16 R1 K19 ["Src"]
      105 GETTABLEKS                       R16 R16 K29 ["Flags"]
      107 GETTABLEKS                       R16 R16 K31 ["getFFlagStyleEditorNewRuleRenameFix"]
      109 CALL                             R15 1 1
      110 CALL                             R15 0 1
      111 GETIMPORT                        R16 K8 [require]
      113 GETTABLEKS                       R17 R1 K19 ["Src"]
      115 GETTABLEKS                       R17 R17 K29 ["Flags"]
      117 GETTABLEKS                       R17 R17 K32 ["getEngineFeatureNestedPseudoInstance"]
      119 CALL                             R16 1 1
      120 CALL                             R16 0 1
      121 GETIMPORT                        R17 K8 [require]
      123 GETTABLEKS                       R18 R1 K19 ["Src"]
      125 GETTABLEKS                       R18 R18 K29 ["Flags"]
      127 GETTABLEKS                       R18 R18 K33 ["getEngineFeatureNewMultiPseudoInstances"]
      129 CALL                             R17 1 1
      130 CALL                             R17 0 1
      131 GETIMPORT                        R18 K8 [require]
      133 GETTABLEKS                       R19 R1 K19 ["Src"]
      135 GETTABLEKS                       R19 R19 K29 ["Flags"]
      137 GETTABLEKS                       R19 R19 K34 ["getEngineFeatureUIShadow"]
      139 CALL                             R18 1 1
      140 CALL                             R18 0 1
      141 GETIMPORT                        R19 K8 [require]
      143 GETTABLEKS                       R20 R1 K19 ["Src"]
      145 GETTABLEKS                       R20 R20 K29 ["Flags"]
      147 GETTABLEKS                       R20 R20 K35 ["getEngineFeatureTweenInfoAttributes"]
      149 CALL                             R19 1 1
      150 CALL                             R19 0 1
      151 GETIMPORT                        R20 K8 [require]
      153 GETTABLEKS                       R21 R1 K19 ["Src"]
      155 GETTABLEKS                       R21 R21 K29 ["Flags"]
      157 GETTABLEKS                       R21 R21 K36 ["getFFlagStyleEditorCreateFolder"]
      159 CALL                             R20 1 1
      160 CALL                             R20 0 1
      161 GETIMPORT                        R21 K8 [require]
      163 GETTABLEKS                       R22 R1 K19 ["Src"]
      165 GETTABLEKS                       R22 R22 K29 ["Flags"]
      167 GETTABLEKS                       R22 R22 K37 ["getFFlagStyleEditorBuiltinStyleQuery"]
      169 CALL                             R21 1 1
      170 CALL                             R21 0 1
      171 GETIMPORT                        R22 K8 [require]
      173 GETTABLEKS                       R23 R1 K19 ["Src"]
      175 GETTABLEKS                       R23 R23 K29 ["Flags"]
      177 GETTABLEKS                       R23 R23 K38 ["getEngineFeatureFocusedGuiState"]
      179 CALL                             R22 1 1
      180 CALL                             R22 0 1
      181 GETIMPORT                        R23 K8 [require]
      183 GETTABLEKS                       R24 R1 K19 ["Src"]
      185 GETTABLEKS                       R24 R24 K39 ["Util"]
      187 GETTABLEKS                       R24 R24 K40 ["BuiltinStyleQueryCategories"]
      189 CALL                             R23 1 1
      190 GETIMPORT                        R24 K8 [require]
      192 GETTABLEKS                       R25 R1 K19 ["Src"]
      194 GETTABLEKS                       R25 R25 K26 ["Types"]
      196 CALL                             R24 1 1
      197 GETIMPORT                        R25 K8 [require]
      199 GETTABLEKS                       R26 R1 K19 ["Src"]
      201 GETTABLEKS                       R26 R26 K20 ["Resources"]
      203 GETTABLEKS                       R26 R26 K41 ["ModernIcons"]
      205 CALL                             R25 1 1
      206 NEWTABLE                         R26 32 0
      208 NEWTABLE                         R27 0 8
      210 LOADK                            R28 K42 ["CanvasGroup"]
      211 LOADK                            R29 K43 ["ImageButton"]
      212 LOADK                            R30 K44 ["ImageLabel"]
      213 LOADK                            R31 K45 ["ScrollingFrame"]
      214 LOADK                            R32 K46 ["Frame"]
      215 LOADK                            R33 K47 ["TextBox"]
      216 LOADK                            R34 K48 ["TextButton"]
      217 LOADK                            R35 K49 ["TextLabel"]
      218 SETLIST                          R27 R28 8 [1]
      220 SETTABLEKS                       R27 R26 K50 ["Classes"]
      222 JUMPIFNOT                        R13 ; [+16]
      223 NEWTABLE                         R27 0 11
      225 LOADK                            R28 K51 ["UIAspectRatioConstraint"]
      226 LOADK                            R29 K52 ["UICorner"]
      227 LOADK                            R30 K53 ["UIGradient"]
      228 LOADK                            R31 K54 ["UIGridLayout"]
      229 LOADK                            R32 K55 ["UIListLayout"]
      230 LOADK                            R33 K56 ["UIPadding"]
      231 LOADK                            R34 K57 ["UIPageLayout"]
      232 LOADK                            R35 K58 ["UIScale"]
      233 LOADK                            R36 K59 ["UISizeConstraint"]
      234 LOADK                            R37 K60 ["UIStroke"]
      235 LOADK                            R38 K61 ["UITextSizeConstraint"]
      236 SETLIST                          R27 R28 11 [1]
      238 JUMP                             ; [+14]
      239 NEWTABLE                         R27 0 10
      241 LOADK                            R28 K51 ["UIAspectRatioConstraint"]
      242 LOADK                            R29 K52 ["UICorner"]
      243 LOADK                            R30 K53 ["UIGradient"]
      244 LOADK                            R31 K54 ["UIGridLayout"]
      245 LOADK                            R32 K55 ["UIListLayout"]
      246 LOADK                            R33 K56 ["UIPadding"]
      247 LOADK                            R34 K58 ["UIScale"]
      248 LOADK                            R35 K59 ["UISizeConstraint"]
      249 LOADK                            R36 K60 ["UIStroke"]
      250 LOADK                            R37 K61 ["UITextSizeConstraint"]
      251 SETLIST                          R27 R28 10 [1]
      253 SETTABLEKS                       R27 R26 K62 ["PseudoInstances"]
      255 NEWTABLE                         R27 0 1
      257 LOADK                            R28 K60 ["UIStroke"]
      258 SETLIST                          R27 R28 1 [1]
      260 SETTABLEKS                       R27 R26 K63 ["MultiPseudoInstanceTypes"]
      262 JUMPIFNOT                        R14 ; [+8]
      263 GETTABLEKS                       R28 R26 K63 ["MultiPseudoInstanceTypes"]
      265 FASTCALL2K                       TABLE_INSERT R28 K64 ; [+4]
      267 LOADK                            R29 K64 ["StyleQuery"]
      268 GETIMPORT                        R27 K67 [table.insert]
      270 CALL                             R27 2 0
      271 JUMPIFNOT                        R18 ; [+16]
      272 GETTABLEKS                       R28 R26 K62 ["PseudoInstances"]
      274 FASTCALL2K                       TABLE_INSERT R28 K68 ; [+4]
      276 LOADK                            R29 K68 ["UIShadow"]
      277 GETIMPORT                        R27 K67 [table.insert]
      279 CALL                             R27 2 0
      280 GETTABLEKS                       R28 R26 K63 ["MultiPseudoInstanceTypes"]
      282 FASTCALL2K                       TABLE_INSERT R28 K68 ; [+4]
      284 LOADK                            R29 K68 ["UIShadow"]
      285 GETIMPORT                        R27 K67 [table.insert]
      287 CALL                             R27 2 0
      288 GETTABLEKS                       R28 R26 K62 ["PseudoInstances"]
      290 LOADN                            R29 3
      291 LOADK                            R30 K69 ["UIFlexItem"]
      292 FASTCALL                         TABLE_INSERT ; [+2]
      293 GETIMPORT                        R27 K67 [table.insert]
      295 CALL                             R27 3 0
      296 GETIMPORT                        R27 K71 [table.sort]
      298 GETTABLEKS                       R28 R26 K62 ["PseudoInstances"]
      300 CALL                             R27 1 0
      301 NEWTABLE                         R27 0 4
      303 LOADK                            R28 K72 ["Hover"]
      304 LOADK                            R29 K73 ["Idle"]
      305 LOADK                            R30 K74 ["Press"]
      306 LOADK                            R31 K75 ["NonInteractable"]
      307 SETLIST                          R27 R28 4 [1]
      309 SETTABLEKS                       R27 R26 K76 ["GuiStates"]
      311 JUMPIFNOT                        R22 ; [+8]
      312 GETTABLEKS                       R28 R26 K76 ["GuiStates"]
      314 FASTCALL2K                       TABLE_INSERT R28 K77 ; [+4]
      316 LOADK                            R29 K77 ["Focused"]
      317 GETIMPORT                        R27 K67 [table.insert]
      319 CALL                             R27 2 0
      320 JUMPIFNOT                        R19 ; [+21]
      321 NEWTABLE                         R27 0 16
      323 LOADK                            R28 K78 ["string"]
      324 LOADK                            R29 K79 ["boolean"]
      325 LOADK                            R30 K80 ["number"]
      326 LOADK                            R31 K81 ["UDim"]
      327 LOADK                            R32 K82 ["UDim2"]
      328 LOADK                            R33 K83 ["BrickColor"]
      329 LOADK                            R34 K84 ["Color3"]
      330 LOADK                            R35 K85 ["Vector2"]
      331 LOADK                            R36 K86 ["Vector3"]
      332 LOADK                            R37 K87 ["CFrame"]
      333 LOADK                            R38 K88 ["ColorSequence"]
      334 LOADK                            R39 K89 ["NumberSequence"]
      335 LOADK                            R40 K90 ["NumberRange"]
      336 LOADK                            R41 K91 ["Rect"]
      337 LOADK                            R42 K92 ["Font"]
      338 LOADK                            R43 K93 ["TweenInfo"]
      339 SETLIST                          R27 R28 16 [1]
      341 JUMP                             ; [+19]
      342 NEWTABLE                         R27 0 15
      344 LOADK                            R28 K78 ["string"]
      345 LOADK                            R29 K79 ["boolean"]
      346 LOADK                            R30 K80 ["number"]
      347 LOADK                            R31 K81 ["UDim"]
      348 LOADK                            R32 K82 ["UDim2"]
      349 LOADK                            R33 K83 ["BrickColor"]
      350 LOADK                            R34 K84 ["Color3"]
      351 LOADK                            R35 K85 ["Vector2"]
      352 LOADK                            R36 K86 ["Vector3"]
      353 LOADK                            R37 K87 ["CFrame"]
      354 LOADK                            R38 K88 ["ColorSequence"]
      355 LOADK                            R39 K89 ["NumberSequence"]
      356 LOADK                            R40 K90 ["NumberRange"]
      357 LOADK                            R41 K91 ["Rect"]
      358 LOADK                            R42 K92 ["Font"]
      359 SETLIST                          R27 R28 15 [1]
      361 SETTABLEKS                       R27 R26 K94 ["AttributeTypes"]
      363 DUPCLOSURE                       R27 K95 [PROTO_1]
      364 CAPTURE                          VAL R0
      365 SETTABLEKS                       R27 R26 K96 ["getClassIcon"]
      367 NEWTABLE                         R27 0 2
      369 DUPTABLE                         R28 K99 [{"Name", "Icon"}]
      370 LOADK                            R29 K100 ["Tokens"]
      371 SETTABLEKS                       R29 R28 K97 ["Name"]
      373 GETTABLEKS                       R29 R25 K101 ["Standard"]
      375 GETTABLEKS                       R29 R29 K102 ["TokenSheet"]
      377 CALL                             R29 0 1
      378 SETTABLEKS                       R29 R28 K98 ["Icon"]
      380 DUPTABLE                         R29 K99 [{"Name", "Icon"}]
      381 LOADK                            R30 K103 ["Themes"]
      382 SETTABLEKS                       R30 R29 K97 ["Name"]
      384 GETTABLEKS                       R30 R25 K101 ["Standard"]
      386 GETTABLEKS                       R30 R30 K104 ["ThemeSheet"]
      388 CALL                             R30 0 1
      389 SETTABLEKS                       R30 R29 K98 ["Icon"]
      391 SETLIST                          R27 R28 2 [1]
      393 SETTABLEKS                       R27 R26 K105 ["StyleSheetCategories"]
      395 NEWTABLE                         R27 0 1
      397 NEWTABLE                         R28 4 0
      399 LOADK                            R29 K106 ["Menu"]
      400 SETTABLEKS                       R29 R28 K107 ["Id"]
      402 DUPTABLE                         R29 K109 [{"Image"}]
      403 GETTABLEKS                       R30 R25 K110 ["more"]
      405 CALL                             R30 0 1
      406 SETTABLEKS                       R30 R29 K108 ["Image"]
      408 SETTABLEKS                       R29 R28 K98 ["Icon"]
      410 GETTABLEKS                       R29 R2 K111 ["Tag"]
      412 LOADK                            R30 K112 ["Contrast IconOnly"]
      413 SETTABLE                         R30 R28 R29
      414 SETLIST                          R27 R28 1 [1]
      416 SETTABLEKS                       R27 R26 K113 ["MoreAction"]
      418 NEWTABLE                         R27 0 1
      420 NEWTABLE                         R28 4 0
      422 LOADK                            R29 K106 ["Menu"]
      423 SETTABLEKS                       R29 R28 K107 ["Id"]
      425 DUPTABLE                         R29 K109 [{"Image"}]
      426 GETTABLEKS                       R30 R25 K110 ["more"]
      428 CALL                             R30 0 1
      429 SETTABLEKS                       R30 R29 K108 ["Image"]
      431 SETTABLEKS                       R29 R28 K98 ["Icon"]
      433 GETTABLEKS                       R29 R2 K111 ["Tag"]
      435 LOADK                            R30 K114 ["IconOnly SecondaryHoverBackground"]
      436 SETTABLE                         R30 R28 R29
      437 SETLIST                          R27 R28 1 [1]
      439 SETTABLEKS                       R27 R26 K115 ["FullSpanMoreAction"]
      441 NEWTABLE                         R27 0 1
      443 NEWTABLE                         R28 4 0
      445 LOADK                            R29 K106 ["Menu"]
      446 SETTABLEKS                       R29 R28 K107 ["Id"]
      448 DUPTABLE                         R29 K109 [{"Image"}]
      449 GETTABLEKS                       R30 R25 K116 ["new"]
      451 CALL                             R30 0 1
      452 SETTABLEKS                       R30 R29 K108 ["Image"]
      454 SETTABLEKS                       R29 R28 K98 ["Icon"]
      456 GETTABLEKS                       R29 R2 K111 ["Tag"]
      458 LOADK                            R30 K114 ["IconOnly SecondaryHoverBackground"]
      459 SETTABLE                         R30 R28 R29
      460 SETLIST                          R27 R28 1 [1]
      462 SETTABLEKS                       R27 R26 K117 ["CategoryPlusButtonAction"]
      464 DUPCLOSURE                       R27 K118 [PROTO_3]
      465 CAPTURE                          VAL R17
      466 CAPTURE                          VAL R26
      467 SETTABLEKS                       R27 R26 K119 ["getAvailablePseudoSelector"]
      469 DUPCLOSURE                       R27 K120 [PROTO_5]
      470 CAPTURE                          VAL R7
      471 CAPTURE                          VAL R26
      472 SETTABLEKS                       R27 R26 K121 ["getStyleSheetCategoryActions"]
      474 DUPCLOSURE                       R27 K122 [PROTO_7]
      475 CAPTURE                          VAL R7
      476 SETTABLEKS                       R27 R26 K123 ["getAttributeTypeActions"]
      478 DUPCLOSURE                       R27 K124 [PROTO_9]
      479 CAPTURE                          VAL R7
      480 CAPTURE                          VAL R26
      481 SETTABLEKS                       R27 R26 K125 ["getClassTypeActions"]
      483 DUPCLOSURE                       R27 K126 [PROTO_15]
      484 CAPTURE                          VAL R7
      485 CAPTURE                          VAL R9
      486 CAPTURE                          VAL R16
      487 CAPTURE                          VAL R26
      488 CAPTURE                          VAL R25
      489 CAPTURE                          VAL R6
      490 CAPTURE                          VAL R15
      491 CAPTURE                          VAL R14
      492 CAPTURE                          VAL R21
      493 CAPTURE                          VAL R23
      494 CAPTURE                          VAL R20
      495 SETTABLEKS                       R27 R26 K127 ["getNewSelectorAction"]
      497 DUPCLOSURE                       R27 K128 [PROTO_16]
      498 CAPTURE                          VAL R25
      499 SETTABLEKS                       R27 R26 K129 ["getRenameAction"]
      501 DUPCLOSURE                       R27 K130 [PROTO_18]
      502 CAPTURE                          VAL R26
      503 CAPTURE                          VAL R7
      504 CAPTURE                          VAL R9
      505 SETTABLEKS                       R27 R26 K131 ["buildMenu"]
      507 DUPCLOSURE                       R27 K132 [PROTO_20]
      508 CAPTURE                          VAL R26
      509 SETTABLEKS                       R27 R26 K133 ["decorateClickHandlers"]
      511 DUPCLOSURE                       R27 K134 [PROTO_22]
      512 CAPTURE                          VAL R26
      513 CAPTURE                          VAL R10
      514 CAPTURE                          VAL R11
      515 SETTABLEKS                       R27 R26 K135 ["trackClicks"]
      517 DUPCLOSURE                       R27 K136 [PROTO_23]
      518 CAPTURE                          VAL R26
      519 CAPTURE                          VAL R5
      520 SETTABLEKS                       R27 R26 K14 ["showContextMenu"]
      522 DUPCLOSURE                       R27 K137 [PROTO_25]
      523 CAPTURE                          VAL R8
      524 SETTABLEKS                       R27 R26 K138 ["filterHiddenActions"]
      526 RETURN                           R26 1
