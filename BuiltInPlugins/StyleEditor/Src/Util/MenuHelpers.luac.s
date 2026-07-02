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
       40 DUPTABLE                         R10 K16 [{["Id"] = "Name", ["Icon"], ["Text"], ["OnItemClicked"], ["Data"]}]
       41 GETUPVAL                         R11 4
       42 GETTABLEKS                       R11 R11 K17 ["Selectors"]
       44 GETTABLEKS                       R11 R11 K11 ["Name"]
       46 CALL                             R11 0 1
       47 SETTABLEKS                       R11 R10 K12 ["Icon"]
       49 LOADK                            R13 K18 ["ContextMenu"]
       50 LOADK                            R14 K19 ["New.Name"]
       51 NAMECALL                         R11 R2 K20 ["getText"]
       53 CALL                             R11 3 1
       54 SETTABLEKS                       R11 R10 K13 ["Text"]
       56 SETTABLEKS                       R1 R10 K14 ["OnItemClicked"]
       58 DUPTABLE                         R11 K22 [{["Selector"] = "#Name"}]
       59 SETTABLEKS                       R11 R10 K15 ["Data"]
       61 DUPTABLE                         R11 K25 [{["Id"] = "Tag", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"], ["Data"]}]
       62 LOADK                            R14 K18 ["ContextMenu"]
       63 LOADK                            R15 K26 ["New.Tag"]
       64 NAMECALL                         R12 R2 K20 ["getText"]
       66 CALL                             R12 3 1
       67 SETTABLEKS                       R12 R11 K13 ["Text"]
       69 GETUPVAL                         R12 4
       70 GETTABLEKS                       R12 R12 K17 ["Selectors"]
       72 GETTABLEKS                       R12 R12 K23 ["Tag"]
       74 CALL                             R12 0 1
       75 SETTABLEKS                       R12 R11 K12 ["Icon"]
       77 SETTABLEKS                       R6 R11 K24 ["Enabled"]
       79 SETTABLEKS                       R1 R11 K14 ["OnItemClicked"]
       81 DUPTABLE                         R12 K28 [{["Selector"] = ".Tag"}]
       82 SETTABLEKS                       R12 R11 K15 ["Data"]
       84 DUPTABLE                         R12 K31 [{["Id"] = "Class", ["Icon"], ["Enabled"], ["Text"], ["OnItemClicked"], ["Children"]}]
       85 GETUPVAL                         R13 4
       86 GETTABLEKS                       R13 R13 K17 ["Selectors"]
       88 GETTABLEKS                       R13 R13 K29 ["Class"]
       90 CALL                             R13 0 1
       91 SETTABLEKS                       R13 R12 K12 ["Icon"]
       93 SETTABLEKS                       R6 R12 K24 ["Enabled"]
       95 LOADK                            R15 K18 ["ContextMenu"]
       96 LOADK                            R16 K32 ["New.Class"]
       97 NAMECALL                         R13 R2 K20 ["getText"]
       99 CALL                             R13 3 1
      100 SETTABLEKS                       R13 R12 K13 ["Text"]
      102 GETUPVAL                         R13 5
      103 GETTABLEKS                       R13 R13 K33 ["noop"]
      105 SETTABLEKS                       R13 R12 K14 ["OnItemClicked"]
      107 JUMPIFNOT                        R6 ; [+7]
      108 GETUPVAL                         R13 3
      109 GETTABLEKS                       R13 R13 K34 ["getClassTypeActions"]
      111 MOVE                             R14 R1
      112 MOVE                             R15 R2
      113 CALL                             R13 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R13
      116 SETTABLEKS                       R13 R12 K30 ["Children"]
      118 DUPTABLE                         R13 K36 [{["Id"] = "Empty", ["Text"], ["OnItemClicked"], ["Data"]}]
      119 LOADK                            R16 K18 ["ContextMenu"]
      120 LOADK                            R17 K37 ["New.Empty"]
      121 NAMECALL                         R14 R2 K20 ["getText"]
      123 CALL                             R14 3 1
      124 SETTABLEKS                       R14 R13 K13 ["Text"]
      126 SETTABLEKS                       R1 R13 K14 ["OnItemClicked"]
      128 DUPTABLE                         R14 K39 [{["Selector"] = ""}]
      129 SETTABLEKS                       R14 R13 K15 ["Data"]
      131 NEWTABLE                         R14 0 11
      133 GETUPVAL                         R16 6
      134 JUMPIFNOT                        R16 ; [+2]
      135 MOVE                             R15 R11
      136 JUMP                             ; [+1]
      137 MOVE                             R15 R10
      138 GETUPVAL                         R17 6
      139 JUMPIFNOT                        R17 ; [+2]
      140 MOVE                             R16 R10
      141 JUMP                             ; [+1]
      142 MOVE                             R16 R11
      143 MOVE                             R17 R12
      144 DUPTABLE                         R18 K41 [{["Id"] = "PseudoInstance", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      145 GETUPVAL                         R19 4
      146 GETTABLEKS                       R19 R19 K17 ["Selectors"]
      148 GETTABLEKS                       R19 R19 K40 ["PseudoInstance"]
      150 CALL                             R19 0 1
      151 SETTABLEKS                       R19 R18 K12 ["Icon"]
      153 GETUPVAL                         R20 7
      154 JUMPIFNOT                        R20 ; [+2]
      155 AND                              R19 R7 R4
      156 JUMP                             ; [+1]
      157 MOVE                             R19 R7
      158 SETTABLEKS                       R19 R18 K24 ["Enabled"]
      160 LOADK                            R21 K18 ["ContextMenu"]
      161 LOADK                            R22 K42 ["New.PseudoInstance"]
      162 NAMECALL                         R19 R2 K20 ["getText"]
      164 CALL                             R19 3 1
      165 SETTABLEKS                       R19 R18 K13 ["Text"]
      167 JUMPIFNOT                        R7 ; [+2]
      168 MOVE                             R19 R8
      169 JUMP                             ; [+1]
      170 LOADNIL                          R19
      171 SETTABLEKS                       R19 R18 K30 ["Children"]
      173 DUPTABLE                         R19 K44 [{["Id"] = "GuiState", ["Icon"], ["Enabled"], ["Text"] = "GuiState", ["Children"]}]
      174 GETUPVAL                         R20 4
      175 GETTABLEKS                       R20 R20 K17 ["Selectors"]
      177 GETTABLEKS                       R20 R20 K43 ["GuiState"]
      179 CALL                             R20 0 1
      180 SETTABLEKS                       R20 R19 K12 ["Icon"]
      182 SETTABLEKS                       R6 R19 K24 ["Enabled"]
      184 JUMPIFNOT                        R6 ; [+2]
      185 MOVE                             R20 R9
      186 JUMP                             ; [+1]
      187 LOADNIL                          R20
      188 SETTABLEKS                       R20 R19 K30 ["Children"]
      190 DUPTABLE                         R20 K46 [{["Id"] = "Enumerator", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      191 GETUPVAL                         R21 4
      192 GETTABLEKS                       R21 R21 K17 ["Selectors"]
      194 GETTABLEKS                       R21 R21 K45 ["Enumerator"]
      196 CALL                             R21 0 1
      197 SETTABLEKS                       R21 R20 K12 ["Icon"]
      199 AND                              R21 R4 R6
      200 SETTABLEKS                       R21 R20 K24 ["Enabled"]
      202 LOADK                            R23 K18 ["ContextMenu"]
      203 LOADK                            R24 K47 ["New.Enumerator"]
      204 NAMECALL                         R21 R2 K20 ["getText"]
      206 CALL                             R21 3 1
      207 SETTABLEKS                       R21 R20 K13 ["Text"]
      209 JUMPIFNOT                        R4 ; [+19]
      210 JUMPIFNOT                        R6 ; [+18]
      211 NEWTABLE                         R22 0 4
      213 MOVE                             R23 R10
      214 MOVE                             R24 R11
      215 MOVE                             R25 R12
      216 MOVE                             R26 R13
      217 SETLIST                          R22 R23 4 [1]
      219 GETUPVAL                         R23 0
      220 MOVE                             R24 R22
      221 LOADK                            R26 K48 [","]
      222 NEWCLOSURE                       R25 P3
      223 CAPTURE                          UPVAL U1
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R26
      226 CALL                             R23 2 1
      227 MOVE                             R21 R23
      228 JUMP                             ; [+1]
      229 LOADNIL                          R21
      230 SETTABLEKS                       R21 R20 K30 ["Children"]
      232 DUPTABLE                         R21 K50 [{["Id"] = "Child", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      233 GETUPVAL                         R22 4
      234 GETTABLEKS                       R22 R22 K17 ["Selectors"]
      236 GETTABLEKS                       R22 R22 K49 ["Child"]
      238 CALL                             R22 0 1
      239 SETTABLEKS                       R22 R21 K12 ["Icon"]
      241 SETTABLEKS                       R6 R21 K24 ["Enabled"]
      243 LOADK                            R24 K18 ["ContextMenu"]
      244 LOADK                            R25 K51 ["New.Child"]
      245 NAMECALL                         R22 R2 K20 ["getText"]
      247 CALL                             R22 3 1
      248 SETTABLEKS                       R22 R21 K13 ["Text"]
      250 JUMPIFNOT                        R6 ; [+18]
      251 NEWTABLE                         R23 0 4
      253 MOVE                             R24 R10
      254 MOVE                             R25 R11
      255 MOVE                             R26 R12
      256 MOVE                             R27 R13
      257 SETLIST                          R23 R24 4 [1]
      259 GETUPVAL                         R24 0
      260 MOVE                             R25 R23
      261 LOADK                            R27 K52 [">"]
      262 NEWCLOSURE                       R26 P3
      263 CAPTURE                          UPVAL U1
      264 CAPTURE                          VAL R3
      265 CAPTURE                          VAL R27
      266 CALL                             R24 2 1
      267 MOVE                             R22 R24
      268 JUMP                             ; [+1]
      269 LOADNIL                          R22
      270 SETTABLEKS                       R22 R21 K30 ["Children"]
      272 DUPTABLE                         R22 K54 [{["Id"] = "Descendant", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      273 GETUPVAL                         R23 4
      274 GETTABLEKS                       R23 R23 K17 ["Selectors"]
      276 GETTABLEKS                       R23 R23 K53 ["Descendant"]
      278 CALL                             R23 0 1
      279 SETTABLEKS                       R23 R22 K12 ["Icon"]
      281 SETTABLEKS                       R6 R22 K24 ["Enabled"]
      283 LOADK                            R25 K18 ["ContextMenu"]
      284 LOADK                            R26 K55 ["New.Descendant"]
      285 NAMECALL                         R23 R2 K20 ["getText"]
      287 CALL                             R23 3 1
      288 SETTABLEKS                       R23 R22 K13 ["Text"]
      290 JUMPIFNOT                        R6 ; [+18]
      291 NEWTABLE                         R24 0 4
      293 MOVE                             R25 R10
      294 MOVE                             R26 R11
      295 MOVE                             R27 R12
      296 MOVE                             R28 R13
      297 SETLIST                          R24 R25 4 [1]
      299 GETUPVAL                         R25 0
      300 MOVE                             R26 R24
      301 LOADK                            R28 K56 [">>"]
      302 NEWCLOSURE                       R27 P3
      303 CAPTURE                          UPVAL U1
      304 CAPTURE                          VAL R3
      305 CAPTURE                          VAL R28
      306 CALL                             R25 2 1
      307 MOVE                             R23 R25
      308 JUMP                             ; [+1]
      309 LOADNIL                          R23
      310 SETTABLEKS                       R23 R22 K30 ["Children"]
      312 GETUPVAL                         R24 7
      313 JUMPIFNOT                        R24 ; [+69]
      314 DUPTABLE                         R23 K58 [{["Id"] = "StyleQuery", ["Text"] = "StyleQuery", ["Enabled"], ["Icon"], ["OnItemClicked"], ["Children"]}]
      315 SETTABLEKS                       R4 R23 K24 ["Enabled"]
      317 GETUPVAL                         R24 3
      318 GETTABLEKS                       R24 R24 K59 ["getClassIcon"]
      320 LOADK                            R25 K57 ["StyleQuery"]
      321 CALL                             R24 1 1
      322 SETTABLEKS                       R24 R23 K12 ["Icon"]
      324 GETUPVAL                         R25 8
      325 JUMPIFNOT                        R25 ; [+2]
      326 LOADNIL                          R24
      327 JUMP                             ; [+1]
      328 MOVE                             R24 R1
      329 SETTABLEKS                       R24 R23 K14 ["OnItemClicked"]
      331 GETUPVAL                         R25 8
      332 JUMPIFNOT                        R25 ; [+46]
      333 JUMPIFNOT                        R4 ; [+45]
      334 NEWTABLE                         R24 0 2
      336 DUPTABLE                         R25 K61 [{["Id"] = "Builtin", ["Text"], ["Icon"], ["Children"]}]
      337 LOADK                            R28 K18 ["ContextMenu"]
      338 LOADK                            R29 K62 ["New.Query.Builtin"]
      339 NAMECALL                         R26 R2 K20 ["getText"]
      341 CALL                             R26 3 1
      342 SETTABLEKS                       R26 R25 K13 ["Text"]
      344 GETUPVAL                         R26 3
      345 GETTABLEKS                       R26 R26 K59 ["getClassIcon"]
      347 LOADK                            R27 K57 ["StyleQuery"]
      348 CALL                             R26 1 1
      349 SETTABLEKS                       R26 R25 K12 ["Icon"]
      351 GETUPVAL                         R26 0
      352 GETUPVAL                         R27 9
      353 NEWCLOSURE                       R28 P4
      354 CAPTURE                          UPVAL U3
      355 CAPTURE                          VAL R1
      356 CALL                             R26 2 1
      357 SETTABLEKS                       R26 R25 K30 ["Children"]
      359 DUPTABLE                         R26 K64 [{["Id"] = "Custom", ["Text"], ["Icon"], ["OnItemClicked"]}]
      360 LOADK                            R29 K18 ["ContextMenu"]
      361 LOADK                            R30 K65 ["New.Query.Custom"]
      362 NAMECALL                         R27 R2 K20 ["getText"]
      364 CALL                             R27 3 1
      365 SETTABLEKS                       R27 R26 K13 ["Text"]
      367 GETUPVAL                         R27 3
      368 GETTABLEKS                       R27 R27 K59 ["getClassIcon"]
      370 LOADK                            R28 K57 ["StyleQuery"]
      371 CALL                             R27 1 1
      372 SETTABLEKS                       R27 R26 K12 ["Icon"]
      374 SETTABLEKS                       R1 R26 K14 ["OnItemClicked"]
      376 SETLIST                          R24 R25 2 [1]
      378 JUMP                             ; [+1]
      379 LOADNIL                          R24
      380 SETTABLEKS                       R24 R23 K30 ["Children"]
      382 JUMP                             ; [+1]
      383 LOADNIL                          R23
      384 GETUPVAL                         R25 10
      385 JUMPIFNOT                        R25 ; [+11]
      386 DUPTABLE                         R24 K67 [{["Id"] = "Folder", ["Text"] = "Folder", ["Icon"], ["OnItemClicked"]}]
      387 GETUPVAL                         R25 3
      388 GETTABLEKS                       R25 R25 K59 ["getClassIcon"]
      390 LOADK                            R26 K66 ["Folder"]
      391 CALL                             R25 1 1
      392 SETTABLEKS                       R25 R24 K12 ["Icon"]
      394 SETTABLEKS                       R1 R24 K14 ["OnItemClicked"]
      396 JUMP                             ; [+1]
      397 LOADNIL                          R24
      398 MOVE                             R25 R13
      399 SETLIST                          R14 R15 11 [1]
      401 DUPTABLE                         R15 K69 [{["Id"] = "New", ["Text"], ["Icon"], ["Children"]}]
      402 LOADK                            R18 K18 ["ContextMenu"]
      403 LOADK                            R19 K68 ["New"]
      404 NAMECALL                         R16 R2 K20 ["getText"]
      406 CALL                             R16 3 1
      407 SETTABLEKS                       R16 R15 K13 ["Text"]
      409 GETUPVAL                         R16 4
      410 GETTABLEKS                       R16 R16 K70 ["new"]
      412 CALL                             R16 0 1
      413 SETTABLEKS                       R16 R15 K12 ["Icon"]
      415 SETTABLEKS                       R14 R15 K30 ["Children"]
      417 RETURN                           R15 1

PROTO_16:
        0 DUPTABLE                         R2 K5 [{[1] = "Rename", ["Text"], ["Icon"], ["OnItemClicked"]}]
        1 LOADK                            R5 K6 ["ContextMenu"]
        2 LOADK                            R6 K1 ["Rename"]
        3 NAMECALL                         R3 R1 K7 ["getText"]
        5 CALL                             R3 3 1
        6 SETTABLEKS                       R3 R2 K2 ["Text"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K8 ["edit"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K3 ["Icon"]
       14 SETTABLEKS                       R0 R2 K4 ["OnItemClicked"]
       16 RETURN                           R2 1

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
      369 DUPTABLE                         R28 K100 [{["Name"] = "Tokens", ["Icon"]}]
      370 GETTABLEKS                       R29 R25 K101 ["Standard"]
      372 GETTABLEKS                       R29 R29 K102 ["TokenSheet"]
      374 CALL                             R29 0 1
      375 SETTABLEKS                       R29 R28 K99 ["Icon"]
      377 DUPTABLE                         R29 K104 [{["Name"] = "Themes", ["Icon"]}]
      378 GETTABLEKS                       R30 R25 K101 ["Standard"]
      380 GETTABLEKS                       R30 R30 K105 ["ThemeSheet"]
      382 CALL                             R30 0 1
      383 SETTABLEKS                       R30 R29 K99 ["Icon"]
      385 SETLIST                          R27 R28 2 [1]
      387 SETTABLEKS                       R27 R26 K106 ["StyleSheetCategories"]
      389 NEWTABLE                         R27 0 1
      391 NEWTABLE                         R28 4 0
      393 LOADK                            R29 K107 ["Menu"]
      394 SETTABLEKS                       R29 R28 K108 ["Id"]
      396 DUPTABLE                         R29 K110 [{"Image"}]
      397 GETTABLEKS                       R30 R25 K111 ["more"]
      399 CALL                             R30 0 1
      400 SETTABLEKS                       R30 R29 K109 ["Image"]
      402 SETTABLEKS                       R29 R28 K99 ["Icon"]
      404 GETTABLEKS                       R29 R2 K112 ["Tag"]
      406 LOADK                            R30 K113 ["Contrast IconOnly"]
      407 SETTABLE                         R30 R28 R29
      408 SETLIST                          R27 R28 1 [1]
      410 SETTABLEKS                       R27 R26 K114 ["MoreAction"]
      412 NEWTABLE                         R27 0 1
      414 NEWTABLE                         R28 4 0
      416 LOADK                            R29 K107 ["Menu"]
      417 SETTABLEKS                       R29 R28 K108 ["Id"]
      419 DUPTABLE                         R29 K110 [{"Image"}]
      420 GETTABLEKS                       R30 R25 K111 ["more"]
      422 CALL                             R30 0 1
      423 SETTABLEKS                       R30 R29 K109 ["Image"]
      425 SETTABLEKS                       R29 R28 K99 ["Icon"]
      427 GETTABLEKS                       R29 R2 K112 ["Tag"]
      429 LOADK                            R30 K115 ["IconOnly SecondaryHoverBackground"]
      430 SETTABLE                         R30 R28 R29
      431 SETLIST                          R27 R28 1 [1]
      433 SETTABLEKS                       R27 R26 K116 ["FullSpanMoreAction"]
      435 NEWTABLE                         R27 0 1
      437 NEWTABLE                         R28 4 0
      439 LOADK                            R29 K107 ["Menu"]
      440 SETTABLEKS                       R29 R28 K108 ["Id"]
      442 DUPTABLE                         R29 K110 [{"Image"}]
      443 GETTABLEKS                       R30 R25 K117 ["new"]
      445 CALL                             R30 0 1
      446 SETTABLEKS                       R30 R29 K109 ["Image"]
      448 SETTABLEKS                       R29 R28 K99 ["Icon"]
      450 GETTABLEKS                       R29 R2 K112 ["Tag"]
      452 LOADK                            R30 K115 ["IconOnly SecondaryHoverBackground"]
      453 SETTABLE                         R30 R28 R29
      454 SETLIST                          R27 R28 1 [1]
      456 SETTABLEKS                       R27 R26 K118 ["CategoryPlusButtonAction"]
      458 DUPCLOSURE                       R27 K119 [PROTO_3]
      459 CAPTURE                          VAL R17
      460 CAPTURE                          VAL R26
      461 SETTABLEKS                       R27 R26 K120 ["getAvailablePseudoSelector"]
      463 DUPCLOSURE                       R27 K121 [PROTO_5]
      464 CAPTURE                          VAL R7
      465 CAPTURE                          VAL R26
      466 SETTABLEKS                       R27 R26 K122 ["getStyleSheetCategoryActions"]
      468 DUPCLOSURE                       R27 K123 [PROTO_7]
      469 CAPTURE                          VAL R7
      470 SETTABLEKS                       R27 R26 K124 ["getAttributeTypeActions"]
      472 DUPCLOSURE                       R27 K125 [PROTO_9]
      473 CAPTURE                          VAL R7
      474 CAPTURE                          VAL R26
      475 SETTABLEKS                       R27 R26 K126 ["getClassTypeActions"]
      477 DUPCLOSURE                       R27 K127 [PROTO_15]
      478 CAPTURE                          VAL R7
      479 CAPTURE                          VAL R9
      480 CAPTURE                          VAL R16
      481 CAPTURE                          VAL R26
      482 CAPTURE                          VAL R25
      483 CAPTURE                          VAL R6
      484 CAPTURE                          VAL R15
      485 CAPTURE                          VAL R14
      486 CAPTURE                          VAL R21
      487 CAPTURE                          VAL R23
      488 CAPTURE                          VAL R20
      489 SETTABLEKS                       R27 R26 K128 ["getNewSelectorAction"]
      491 DUPCLOSURE                       R27 K129 [PROTO_16]
      492 CAPTURE                          VAL R25
      493 SETTABLEKS                       R27 R26 K130 ["getRenameAction"]
      495 DUPCLOSURE                       R27 K131 [PROTO_18]
      496 CAPTURE                          VAL R26
      497 CAPTURE                          VAL R7
      498 CAPTURE                          VAL R9
      499 SETTABLEKS                       R27 R26 K132 ["buildMenu"]
      501 DUPCLOSURE                       R27 K133 [PROTO_20]
      502 CAPTURE                          VAL R26
      503 SETTABLEKS                       R27 R26 K134 ["decorateClickHandlers"]
      505 DUPCLOSURE                       R27 K135 [PROTO_22]
      506 CAPTURE                          VAL R26
      507 CAPTURE                          VAL R10
      508 CAPTURE                          VAL R11
      509 SETTABLEKS                       R27 R26 K136 ["trackClicks"]
      511 DUPCLOSURE                       R27 K137 [PROTO_23]
      512 CAPTURE                          VAL R26
      513 CAPTURE                          VAL R5
      514 SETTABLEKS                       R27 R26 K14 ["showContextMenu"]
      516 DUPCLOSURE                       R27 K138 [PROTO_25]
      517 CAPTURE                          VAL R8
      518 SETTABLEKS                       R27 R26 K139 ["filterHiddenActions"]
      520 RETURN                           R26 1
