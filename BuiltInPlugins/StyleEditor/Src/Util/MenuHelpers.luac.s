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
      185 GETTABLEKS                       R24 R24 K29 ["Flags"]
      187 GETTABLEKS                       R24 R24 K39 ["getEngineFeatureSelectedGuiState"]
      189 CALL                             R23 1 1
      190 CALL                             R23 0 1
      191 GETIMPORT                        R24 K8 [require]
      193 GETTABLEKS                       R25 R1 K19 ["Src"]
      195 GETTABLEKS                       R25 R25 K40 ["Util"]
      197 GETTABLEKS                       R25 R25 K41 ["BuiltinStyleQueryCategories"]
      199 CALL                             R24 1 1
      200 GETIMPORT                        R25 K8 [require]
      202 GETTABLEKS                       R26 R1 K19 ["Src"]
      204 GETTABLEKS                       R26 R26 K26 ["Types"]
      206 CALL                             R25 1 1
      207 GETIMPORT                        R26 K8 [require]
      209 GETTABLEKS                       R27 R1 K19 ["Src"]
      211 GETTABLEKS                       R27 R27 K20 ["Resources"]
      213 GETTABLEKS                       R27 R27 K42 ["ModernIcons"]
      215 CALL                             R26 1 1
      216 NEWTABLE                         R27 32 0
      218 NEWTABLE                         R28 0 8
      220 LOADK                            R29 K43 ["CanvasGroup"]
      221 LOADK                            R30 K44 ["ImageButton"]
      222 LOADK                            R31 K45 ["ImageLabel"]
      223 LOADK                            R32 K46 ["ScrollingFrame"]
      224 LOADK                            R33 K47 ["Frame"]
      225 LOADK                            R34 K48 ["TextBox"]
      226 LOADK                            R35 K49 ["TextButton"]
      227 LOADK                            R36 K50 ["TextLabel"]
      228 SETLIST                          R28 R29 8 [1]
      230 SETTABLEKS                       R28 R27 K51 ["Classes"]
      232 JUMPIFNOT                        R13 ; [+16]
      233 NEWTABLE                         R28 0 11
      235 LOADK                            R29 K52 ["UIAspectRatioConstraint"]
      236 LOADK                            R30 K53 ["UICorner"]
      237 LOADK                            R31 K54 ["UIGradient"]
      238 LOADK                            R32 K55 ["UIGridLayout"]
      239 LOADK                            R33 K56 ["UIListLayout"]
      240 LOADK                            R34 K57 ["UIPadding"]
      241 LOADK                            R35 K58 ["UIPageLayout"]
      242 LOADK                            R36 K59 ["UIScale"]
      243 LOADK                            R37 K60 ["UISizeConstraint"]
      244 LOADK                            R38 K61 ["UIStroke"]
      245 LOADK                            R39 K62 ["UITextSizeConstraint"]
      246 SETLIST                          R28 R29 11 [1]
      248 JUMP                             ; [+14]
      249 NEWTABLE                         R28 0 10
      251 LOADK                            R29 K52 ["UIAspectRatioConstraint"]
      252 LOADK                            R30 K53 ["UICorner"]
      253 LOADK                            R31 K54 ["UIGradient"]
      254 LOADK                            R32 K55 ["UIGridLayout"]
      255 LOADK                            R33 K56 ["UIListLayout"]
      256 LOADK                            R34 K57 ["UIPadding"]
      257 LOADK                            R35 K59 ["UIScale"]
      258 LOADK                            R36 K60 ["UISizeConstraint"]
      259 LOADK                            R37 K61 ["UIStroke"]
      260 LOADK                            R38 K62 ["UITextSizeConstraint"]
      261 SETLIST                          R28 R29 10 [1]
      263 SETTABLEKS                       R28 R27 K63 ["PseudoInstances"]
      265 NEWTABLE                         R28 0 1
      267 LOADK                            R29 K61 ["UIStroke"]
      268 SETLIST                          R28 R29 1 [1]
      270 SETTABLEKS                       R28 R27 K64 ["MultiPseudoInstanceTypes"]
      272 JUMPIFNOT                        R14 ; [+8]
      273 GETTABLEKS                       R29 R27 K64 ["MultiPseudoInstanceTypes"]
      275 FASTCALL2K                       TABLE_INSERT R29 K65 ; [+4]
      277 LOADK                            R30 K65 ["StyleQuery"]
      278 GETIMPORT                        R28 K68 [table.insert]
      280 CALL                             R28 2 0
      281 JUMPIFNOT                        R18 ; [+16]
      282 GETTABLEKS                       R29 R27 K63 ["PseudoInstances"]
      284 FASTCALL2K                       TABLE_INSERT R29 K69 ; [+4]
      286 LOADK                            R30 K69 ["UIShadow"]
      287 GETIMPORT                        R28 K68 [table.insert]
      289 CALL                             R28 2 0
      290 GETTABLEKS                       R29 R27 K64 ["MultiPseudoInstanceTypes"]
      292 FASTCALL2K                       TABLE_INSERT R29 K69 ; [+4]
      294 LOADK                            R30 K69 ["UIShadow"]
      295 GETIMPORT                        R28 K68 [table.insert]
      297 CALL                             R28 2 0
      298 GETTABLEKS                       R29 R27 K63 ["PseudoInstances"]
      300 LOADN                            R30 3
      301 LOADK                            R31 K70 ["UIFlexItem"]
      302 FASTCALL                         TABLE_INSERT ; [+2]
      303 GETIMPORT                        R28 K68 [table.insert]
      305 CALL                             R28 3 0
      306 GETIMPORT                        R28 K72 [table.sort]
      308 GETTABLEKS                       R29 R27 K63 ["PseudoInstances"]
      310 CALL                             R28 1 0
      311 NEWTABLE                         R28 0 4
      313 LOADK                            R29 K73 ["Hover"]
      314 LOADK                            R30 K74 ["Idle"]
      315 LOADK                            R31 K75 ["Press"]
      316 LOADK                            R32 K76 ["NonInteractable"]
      317 SETLIST                          R28 R29 4 [1]
      319 SETTABLEKS                       R28 R27 K77 ["GuiStates"]
      321 JUMPIFNOT                        R22 ; [+8]
      322 GETTABLEKS                       R29 R27 K77 ["GuiStates"]
      324 FASTCALL2K                       TABLE_INSERT R29 K78 ; [+4]
      326 LOADK                            R30 K78 ["Focused"]
      327 GETIMPORT                        R28 K68 [table.insert]
      329 CALL                             R28 2 0
      330 JUMPIFNOT                        R23 ; [+8]
      331 GETTABLEKS                       R29 R27 K77 ["GuiStates"]
      333 FASTCALL2K                       TABLE_INSERT R29 K79 ; [+4]
      335 LOADK                            R30 K79 ["Selected"]
      336 GETIMPORT                        R28 K68 [table.insert]
      338 CALL                             R28 2 0
      339 JUMPIFNOT                        R19 ; [+21]
      340 NEWTABLE                         R28 0 16
      342 LOADK                            R29 K80 ["string"]
      343 LOADK                            R30 K81 ["boolean"]
      344 LOADK                            R31 K82 ["number"]
      345 LOADK                            R32 K83 ["UDim"]
      346 LOADK                            R33 K84 ["UDim2"]
      347 LOADK                            R34 K85 ["BrickColor"]
      348 LOADK                            R35 K86 ["Color3"]
      349 LOADK                            R36 K87 ["Vector2"]
      350 LOADK                            R37 K88 ["Vector3"]
      351 LOADK                            R38 K89 ["CFrame"]
      352 LOADK                            R39 K90 ["ColorSequence"]
      353 LOADK                            R40 K91 ["NumberSequence"]
      354 LOADK                            R41 K92 ["NumberRange"]
      355 LOADK                            R42 K93 ["Rect"]
      356 LOADK                            R43 K94 ["Font"]
      357 LOADK                            R44 K95 ["TweenInfo"]
      358 SETLIST                          R28 R29 16 [1]
      360 JUMP                             ; [+19]
      361 NEWTABLE                         R28 0 15
      363 LOADK                            R29 K80 ["string"]
      364 LOADK                            R30 K81 ["boolean"]
      365 LOADK                            R31 K82 ["number"]
      366 LOADK                            R32 K83 ["UDim"]
      367 LOADK                            R33 K84 ["UDim2"]
      368 LOADK                            R34 K85 ["BrickColor"]
      369 LOADK                            R35 K86 ["Color3"]
      370 LOADK                            R36 K87 ["Vector2"]
      371 LOADK                            R37 K88 ["Vector3"]
      372 LOADK                            R38 K89 ["CFrame"]
      373 LOADK                            R39 K90 ["ColorSequence"]
      374 LOADK                            R40 K91 ["NumberSequence"]
      375 LOADK                            R41 K92 ["NumberRange"]
      376 LOADK                            R42 K93 ["Rect"]
      377 LOADK                            R43 K94 ["Font"]
      378 SETLIST                          R28 R29 15 [1]
      380 SETTABLEKS                       R28 R27 K96 ["AttributeTypes"]
      382 DUPCLOSURE                       R28 K97 [PROTO_1]
      383 CAPTURE                          VAL R0
      384 SETTABLEKS                       R28 R27 K98 ["getClassIcon"]
      386 NEWTABLE                         R28 0 2
      388 DUPTABLE                         R29 K102 [{["Name"] = "Tokens", ["Icon"]}]
      389 GETTABLEKS                       R30 R26 K103 ["Standard"]
      391 GETTABLEKS                       R30 R30 K104 ["TokenSheet"]
      393 CALL                             R30 0 1
      394 SETTABLEKS                       R30 R29 K101 ["Icon"]
      396 DUPTABLE                         R30 K106 [{["Name"] = "Themes", ["Icon"]}]
      397 GETTABLEKS                       R31 R26 K103 ["Standard"]
      399 GETTABLEKS                       R31 R31 K107 ["ThemeSheet"]
      401 CALL                             R31 0 1
      402 SETTABLEKS                       R31 R30 K101 ["Icon"]
      404 SETLIST                          R28 R29 2 [1]
      406 SETTABLEKS                       R28 R27 K108 ["StyleSheetCategories"]
      408 NEWTABLE                         R28 0 1
      410 NEWTABLE                         R29 4 0
      412 LOADK                            R30 K109 ["Menu"]
      413 SETTABLEKS                       R30 R29 K110 ["Id"]
      415 DUPTABLE                         R30 K112 [{"Image"}]
      416 GETTABLEKS                       R31 R26 K113 ["more"]
      418 CALL                             R31 0 1
      419 SETTABLEKS                       R31 R30 K111 ["Image"]
      421 SETTABLEKS                       R30 R29 K101 ["Icon"]
      423 GETTABLEKS                       R30 R2 K114 ["Tag"]
      425 LOADK                            R31 K115 ["Contrast IconOnly"]
      426 SETTABLE                         R31 R29 R30
      427 SETLIST                          R28 R29 1 [1]
      429 SETTABLEKS                       R28 R27 K116 ["MoreAction"]
      431 NEWTABLE                         R28 0 1
      433 NEWTABLE                         R29 4 0
      435 LOADK                            R30 K109 ["Menu"]
      436 SETTABLEKS                       R30 R29 K110 ["Id"]
      438 DUPTABLE                         R30 K112 [{"Image"}]
      439 GETTABLEKS                       R31 R26 K113 ["more"]
      441 CALL                             R31 0 1
      442 SETTABLEKS                       R31 R30 K111 ["Image"]
      444 SETTABLEKS                       R30 R29 K101 ["Icon"]
      446 GETTABLEKS                       R30 R2 K114 ["Tag"]
      448 LOADK                            R31 K117 ["IconOnly SecondaryHoverBackground"]
      449 SETTABLE                         R31 R29 R30
      450 SETLIST                          R28 R29 1 [1]
      452 SETTABLEKS                       R28 R27 K118 ["FullSpanMoreAction"]
      454 NEWTABLE                         R28 0 1
      456 NEWTABLE                         R29 4 0
      458 LOADK                            R30 K109 ["Menu"]
      459 SETTABLEKS                       R30 R29 K110 ["Id"]
      461 DUPTABLE                         R30 K112 [{"Image"}]
      462 GETTABLEKS                       R31 R26 K119 ["new"]
      464 CALL                             R31 0 1
      465 SETTABLEKS                       R31 R30 K111 ["Image"]
      467 SETTABLEKS                       R30 R29 K101 ["Icon"]
      469 GETTABLEKS                       R30 R2 K114 ["Tag"]
      471 LOADK                            R31 K117 ["IconOnly SecondaryHoverBackground"]
      472 SETTABLE                         R31 R29 R30
      473 SETLIST                          R28 R29 1 [1]
      475 SETTABLEKS                       R28 R27 K120 ["CategoryPlusButtonAction"]
      477 DUPCLOSURE                       R28 K121 [PROTO_3]
      478 CAPTURE                          VAL R17
      479 CAPTURE                          VAL R27
      480 SETTABLEKS                       R28 R27 K122 ["getAvailablePseudoSelector"]
      482 DUPCLOSURE                       R28 K123 [PROTO_5]
      483 CAPTURE                          VAL R7
      484 CAPTURE                          VAL R27
      485 SETTABLEKS                       R28 R27 K124 ["getStyleSheetCategoryActions"]
      487 DUPCLOSURE                       R28 K125 [PROTO_7]
      488 CAPTURE                          VAL R7
      489 SETTABLEKS                       R28 R27 K126 ["getAttributeTypeActions"]
      491 DUPCLOSURE                       R28 K127 [PROTO_9]
      492 CAPTURE                          VAL R7
      493 CAPTURE                          VAL R27
      494 SETTABLEKS                       R28 R27 K128 ["getClassTypeActions"]
      496 DUPCLOSURE                       R28 K129 [PROTO_15]
      497 CAPTURE                          VAL R7
      498 CAPTURE                          VAL R9
      499 CAPTURE                          VAL R16
      500 CAPTURE                          VAL R27
      501 CAPTURE                          VAL R26
      502 CAPTURE                          VAL R6
      503 CAPTURE                          VAL R15
      504 CAPTURE                          VAL R14
      505 CAPTURE                          VAL R21
      506 CAPTURE                          VAL R24
      507 CAPTURE                          VAL R20
      508 SETTABLEKS                       R28 R27 K130 ["getNewSelectorAction"]
      510 DUPCLOSURE                       R28 K131 [PROTO_16]
      511 CAPTURE                          VAL R26
      512 SETTABLEKS                       R28 R27 K132 ["getRenameAction"]
      514 DUPCLOSURE                       R28 K133 [PROTO_18]
      515 CAPTURE                          VAL R27
      516 CAPTURE                          VAL R7
      517 CAPTURE                          VAL R9
      518 SETTABLEKS                       R28 R27 K134 ["buildMenu"]
      520 DUPCLOSURE                       R28 K135 [PROTO_20]
      521 CAPTURE                          VAL R27
      522 SETTABLEKS                       R28 R27 K136 ["decorateClickHandlers"]
      524 DUPCLOSURE                       R28 K137 [PROTO_22]
      525 CAPTURE                          VAL R27
      526 CAPTURE                          VAL R10
      527 CAPTURE                          VAL R11
      528 SETTABLEKS                       R28 R27 K138 ["trackClicks"]
      530 DUPCLOSURE                       R28 K139 [PROTO_23]
      531 CAPTURE                          VAL R27
      532 CAPTURE                          VAL R5
      533 SETTABLEKS                       R28 R27 K14 ["showContextMenu"]
      535 DUPCLOSURE                       R28 K140 [PROTO_25]
      536 CAPTURE                          VAL R8
      537 SETTABLEKS                       R28 R27 K141 ["filterHiddenActions"]
      539 RETURN                           R27 1
