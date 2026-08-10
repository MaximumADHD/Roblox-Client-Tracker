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
        9 JUMPIFNOT                        R4 ; [+10]
       10 GETIMPORT                        R6 K5 [string.find]
       12 GETTABLEKS                       R7 R0 K6 ["Selector"]
       14 LOADK                            R8 K7 ["::"]
       15 CALL                             R6 2 1
       16 JUMPIFNOTEQKNIL                  R6 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 GETUPVAL                         R8 2
       21 AND                              R7 R8 R5
       22 NOT                              R6 R7
       23 GETUPVAL                         R7 2
       24 JUMPIF                           R7 ; [+1]
       25 NOT                              R7 R5
       26 GETUPVAL                         R8 0
       27 GETUPVAL                         R9 3
       28 GETTABLEKS                       R9 R9 K8 ["PseudoInstances"]
       30 NEWCLOSURE                       R10 P1
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R0
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 0
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K9 ["GuiStates"]
       39 NEWCLOSURE                       R11 P2
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R1
       42 CALL                             R9 2 1
       43 DUPTABLE                         R10 K16 [{["Id"] = "Name", ["Icon"], ["Text"], ["OnItemClicked"], ["Data"]}]
       44 GETUPVAL                         R11 4
       45 GETTABLEKS                       R11 R11 K17 ["Selectors"]
       47 GETTABLEKS                       R11 R11 K11 ["Name"]
       49 CALL                             R11 0 1
       50 SETTABLEKS                       R11 R10 K12 ["Icon"]
       52 LOADK                            R13 K18 ["ContextMenu"]
       53 LOADK                            R14 K19 ["New.Name"]
       54 NAMECALL                         R11 R2 K20 ["getText"]
       56 CALL                             R11 3 1
       57 SETTABLEKS                       R11 R10 K13 ["Text"]
       59 SETTABLEKS                       R1 R10 K14 ["OnItemClicked"]
       61 DUPTABLE                         R11 K22 [{["Selector"] = "#Name"}]
       62 SETTABLEKS                       R11 R10 K15 ["Data"]
       64 DUPTABLE                         R11 K25 [{["Id"] = "Tag", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"], ["Data"]}]
       65 LOADK                            R14 K18 ["ContextMenu"]
       66 LOADK                            R15 K26 ["New.Tag"]
       67 NAMECALL                         R12 R2 K20 ["getText"]
       69 CALL                             R12 3 1
       70 SETTABLEKS                       R12 R11 K13 ["Text"]
       72 GETUPVAL                         R12 4
       73 GETTABLEKS                       R12 R12 K17 ["Selectors"]
       75 GETTABLEKS                       R12 R12 K23 ["Tag"]
       77 CALL                             R12 0 1
       78 SETTABLEKS                       R12 R11 K12 ["Icon"]
       80 SETTABLEKS                       R6 R11 K24 ["Enabled"]
       82 SETTABLEKS                       R1 R11 K14 ["OnItemClicked"]
       84 DUPTABLE                         R12 K28 [{["Selector"] = ".Tag"}]
       85 SETTABLEKS                       R12 R11 K15 ["Data"]
       87 DUPTABLE                         R12 K31 [{["Id"] = "Class", ["Icon"], ["Enabled"], ["Text"], ["OnItemClicked"], ["Children"]}]
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R13 R13 K17 ["Selectors"]
       91 GETTABLEKS                       R13 R13 K29 ["Class"]
       93 CALL                             R13 0 1
       94 SETTABLEKS                       R13 R12 K12 ["Icon"]
       96 SETTABLEKS                       R6 R12 K24 ["Enabled"]
       98 LOADK                            R15 K18 ["ContextMenu"]
       99 LOADK                            R16 K32 ["New.Class"]
      100 NAMECALL                         R13 R2 K20 ["getText"]
      102 CALL                             R13 3 1
      103 SETTABLEKS                       R13 R12 K13 ["Text"]
      105 GETUPVAL                         R13 5
      106 GETTABLEKS                       R13 R13 K33 ["noop"]
      108 SETTABLEKS                       R13 R12 K14 ["OnItemClicked"]
      110 JUMPIFNOT                        R6 ; [+7]
      111 GETUPVAL                         R13 3
      112 GETTABLEKS                       R13 R13 K34 ["getClassTypeActions"]
      114 MOVE                             R14 R1
      115 MOVE                             R15 R2
      116 CALL                             R13 2 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R13
      119 SETTABLEKS                       R13 R12 K30 ["Children"]
      121 DUPTABLE                         R13 K36 [{["Id"] = "Empty", ["Text"], ["OnItemClicked"], ["Data"]}]
      122 LOADK                            R16 K18 ["ContextMenu"]
      123 LOADK                            R17 K37 ["New.Empty"]
      124 NAMECALL                         R14 R2 K20 ["getText"]
      126 CALL                             R14 3 1
      127 SETTABLEKS                       R14 R13 K13 ["Text"]
      129 SETTABLEKS                       R1 R13 K14 ["OnItemClicked"]
      131 DUPTABLE                         R14 K39 [{["Selector"] = ""}]
      132 SETTABLEKS                       R14 R13 K15 ["Data"]
      134 NEWTABLE                         R14 0 11
      136 MOVE                             R15 R11
      137 MOVE                             R16 R10
      138 MOVE                             R17 R12
      139 DUPTABLE                         R18 K41 [{["Id"] = "PseudoInstance", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      140 GETUPVAL                         R19 4
      141 GETTABLEKS                       R19 R19 K17 ["Selectors"]
      143 GETTABLEKS                       R19 R19 K40 ["PseudoInstance"]
      145 CALL                             R19 0 1
      146 SETTABLEKS                       R19 R18 K12 ["Icon"]
      148 GETUPVAL                         R20 6
      149 JUMPIFNOT                        R20 ; [+2]
      150 AND                              R19 R7 R4
      151 JUMP                             ; [+1]
      152 MOVE                             R19 R7
      153 SETTABLEKS                       R19 R18 K24 ["Enabled"]
      155 LOADK                            R21 K18 ["ContextMenu"]
      156 LOADK                            R22 K42 ["New.PseudoInstance"]
      157 NAMECALL                         R19 R2 K20 ["getText"]
      159 CALL                             R19 3 1
      160 SETTABLEKS                       R19 R18 K13 ["Text"]
      162 JUMPIFNOT                        R7 ; [+2]
      163 MOVE                             R19 R8
      164 JUMP                             ; [+1]
      165 LOADNIL                          R19
      166 SETTABLEKS                       R19 R18 K30 ["Children"]
      168 DUPTABLE                         R19 K44 [{["Id"] = "GuiState", ["Icon"], ["Enabled"], ["Text"] = "GuiState", ["Children"]}]
      169 GETUPVAL                         R20 4
      170 GETTABLEKS                       R20 R20 K17 ["Selectors"]
      172 GETTABLEKS                       R20 R20 K43 ["GuiState"]
      174 CALL                             R20 0 1
      175 SETTABLEKS                       R20 R19 K12 ["Icon"]
      177 SETTABLEKS                       R6 R19 K24 ["Enabled"]
      179 JUMPIFNOT                        R6 ; [+2]
      180 MOVE                             R20 R9
      181 JUMP                             ; [+1]
      182 LOADNIL                          R20
      183 SETTABLEKS                       R20 R19 K30 ["Children"]
      185 DUPTABLE                         R20 K46 [{["Id"] = "Enumerator", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      186 GETUPVAL                         R21 4
      187 GETTABLEKS                       R21 R21 K17 ["Selectors"]
      189 GETTABLEKS                       R21 R21 K45 ["Enumerator"]
      191 CALL                             R21 0 1
      192 SETTABLEKS                       R21 R20 K12 ["Icon"]
      194 AND                              R21 R4 R6
      195 SETTABLEKS                       R21 R20 K24 ["Enabled"]
      197 LOADK                            R23 K18 ["ContextMenu"]
      198 LOADK                            R24 K47 ["New.Enumerator"]
      199 NAMECALL                         R21 R2 K20 ["getText"]
      201 CALL                             R21 3 1
      202 SETTABLEKS                       R21 R20 K13 ["Text"]
      204 JUMPIFNOT                        R4 ; [+19]
      205 JUMPIFNOT                        R6 ; [+18]
      206 NEWTABLE                         R22 0 4
      208 MOVE                             R23 R10
      209 MOVE                             R24 R11
      210 MOVE                             R25 R12
      211 MOVE                             R26 R13
      212 SETLIST                          R22 R23 4 [1]
      214 GETUPVAL                         R23 0
      215 MOVE                             R24 R22
      216 LOADK                            R26 K48 [","]
      217 NEWCLOSURE                       R25 P3
      218 CAPTURE                          UPVAL U1
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R26
      221 CALL                             R23 2 1
      222 MOVE                             R21 R23
      223 JUMP                             ; [+1]
      224 LOADNIL                          R21
      225 SETTABLEKS                       R21 R20 K30 ["Children"]
      227 DUPTABLE                         R21 K50 [{["Id"] = "Child", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      228 GETUPVAL                         R22 4
      229 GETTABLEKS                       R22 R22 K17 ["Selectors"]
      231 GETTABLEKS                       R22 R22 K49 ["Child"]
      233 CALL                             R22 0 1
      234 SETTABLEKS                       R22 R21 K12 ["Icon"]
      236 SETTABLEKS                       R6 R21 K24 ["Enabled"]
      238 LOADK                            R24 K18 ["ContextMenu"]
      239 LOADK                            R25 K51 ["New.Child"]
      240 NAMECALL                         R22 R2 K20 ["getText"]
      242 CALL                             R22 3 1
      243 SETTABLEKS                       R22 R21 K13 ["Text"]
      245 JUMPIFNOT                        R6 ; [+18]
      246 NEWTABLE                         R23 0 4
      248 MOVE                             R24 R10
      249 MOVE                             R25 R11
      250 MOVE                             R26 R12
      251 MOVE                             R27 R13
      252 SETLIST                          R23 R24 4 [1]
      254 GETUPVAL                         R24 0
      255 MOVE                             R25 R23
      256 LOADK                            R27 K52 [">"]
      257 NEWCLOSURE                       R26 P3
      258 CAPTURE                          UPVAL U1
      259 CAPTURE                          VAL R3
      260 CAPTURE                          VAL R27
      261 CALL                             R24 2 1
      262 MOVE                             R22 R24
      263 JUMP                             ; [+1]
      264 LOADNIL                          R22
      265 SETTABLEKS                       R22 R21 K30 ["Children"]
      267 DUPTABLE                         R22 K54 [{["Id"] = "Descendant", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      268 GETUPVAL                         R23 4
      269 GETTABLEKS                       R23 R23 K17 ["Selectors"]
      271 GETTABLEKS                       R23 R23 K53 ["Descendant"]
      273 CALL                             R23 0 1
      274 SETTABLEKS                       R23 R22 K12 ["Icon"]
      276 SETTABLEKS                       R6 R22 K24 ["Enabled"]
      278 LOADK                            R25 K18 ["ContextMenu"]
      279 LOADK                            R26 K55 ["New.Descendant"]
      280 NAMECALL                         R23 R2 K20 ["getText"]
      282 CALL                             R23 3 1
      283 SETTABLEKS                       R23 R22 K13 ["Text"]
      285 JUMPIFNOT                        R6 ; [+18]
      286 NEWTABLE                         R24 0 4
      288 MOVE                             R25 R10
      289 MOVE                             R26 R11
      290 MOVE                             R27 R12
      291 MOVE                             R28 R13
      292 SETLIST                          R24 R25 4 [1]
      294 GETUPVAL                         R25 0
      295 MOVE                             R26 R24
      296 LOADK                            R28 K56 [">>"]
      297 NEWCLOSURE                       R27 P3
      298 CAPTURE                          UPVAL U1
      299 CAPTURE                          VAL R3
      300 CAPTURE                          VAL R28
      301 CALL                             R25 2 1
      302 MOVE                             R23 R25
      303 JUMP                             ; [+1]
      304 LOADNIL                          R23
      305 SETTABLEKS                       R23 R22 K30 ["Children"]
      307 GETUPVAL                         R24 6
      308 JUMPIFNOT                        R24 ; [+69]
      309 DUPTABLE                         R23 K58 [{["Id"] = "StyleQuery", ["Text"] = "StyleQuery", ["Enabled"], ["Icon"], ["OnItemClicked"], ["Children"]}]
      310 SETTABLEKS                       R4 R23 K24 ["Enabled"]
      312 GETUPVAL                         R24 3
      313 GETTABLEKS                       R24 R24 K59 ["getClassIcon"]
      315 LOADK                            R25 K57 ["StyleQuery"]
      316 CALL                             R24 1 1
      317 SETTABLEKS                       R24 R23 K12 ["Icon"]
      319 GETUPVAL                         R25 7
      320 JUMPIFNOT                        R25 ; [+2]
      321 LOADNIL                          R24
      322 JUMP                             ; [+1]
      323 MOVE                             R24 R1
      324 SETTABLEKS                       R24 R23 K14 ["OnItemClicked"]
      326 GETUPVAL                         R25 7
      327 JUMPIFNOT                        R25 ; [+46]
      328 JUMPIFNOT                        R4 ; [+45]
      329 NEWTABLE                         R24 0 2
      331 DUPTABLE                         R25 K61 [{["Id"] = "Builtin", ["Text"], ["Icon"], ["Children"]}]
      332 LOADK                            R28 K18 ["ContextMenu"]
      333 LOADK                            R29 K62 ["New.Query.Builtin"]
      334 NAMECALL                         R26 R2 K20 ["getText"]
      336 CALL                             R26 3 1
      337 SETTABLEKS                       R26 R25 K13 ["Text"]
      339 GETUPVAL                         R26 3
      340 GETTABLEKS                       R26 R26 K59 ["getClassIcon"]
      342 LOADK                            R27 K57 ["StyleQuery"]
      343 CALL                             R26 1 1
      344 SETTABLEKS                       R26 R25 K12 ["Icon"]
      346 GETUPVAL                         R26 0
      347 GETUPVAL                         R27 8
      348 NEWCLOSURE                       R28 P4
      349 CAPTURE                          UPVAL U3
      350 CAPTURE                          VAL R1
      351 CALL                             R26 2 1
      352 SETTABLEKS                       R26 R25 K30 ["Children"]
      354 DUPTABLE                         R26 K64 [{["Id"] = "Custom", ["Text"], ["Icon"], ["OnItemClicked"]}]
      355 LOADK                            R29 K18 ["ContextMenu"]
      356 LOADK                            R30 K65 ["New.Query.Custom"]
      357 NAMECALL                         R27 R2 K20 ["getText"]
      359 CALL                             R27 3 1
      360 SETTABLEKS                       R27 R26 K13 ["Text"]
      362 GETUPVAL                         R27 3
      363 GETTABLEKS                       R27 R27 K59 ["getClassIcon"]
      365 LOADK                            R28 K57 ["StyleQuery"]
      366 CALL                             R27 1 1
      367 SETTABLEKS                       R27 R26 K12 ["Icon"]
      369 SETTABLEKS                       R1 R26 K14 ["OnItemClicked"]
      371 SETLIST                          R24 R25 2 [1]
      373 JUMP                             ; [+1]
      374 LOADNIL                          R24
      375 SETTABLEKS                       R24 R23 K30 ["Children"]
      377 JUMP                             ; [+1]
      378 LOADNIL                          R23
      379 GETUPVAL                         R25 9
      380 JUMPIFNOT                        R25 ; [+11]
      381 DUPTABLE                         R24 K67 [{["Id"] = "Folder", ["Text"] = "Folder", ["Icon"], ["OnItemClicked"]}]
      382 GETUPVAL                         R25 3
      383 GETTABLEKS                       R25 R25 K59 ["getClassIcon"]
      385 LOADK                            R26 K66 ["Folder"]
      386 CALL                             R25 1 1
      387 SETTABLEKS                       R25 R24 K12 ["Icon"]
      389 SETTABLEKS                       R1 R24 K14 ["OnItemClicked"]
      391 JUMP                             ; [+1]
      392 LOADNIL                          R24
      393 MOVE                             R25 R13
      394 SETLIST                          R14 R15 11 [1]
      396 DUPTABLE                         R15 K69 [{["Id"] = "New", ["Text"], ["Icon"], ["Children"]}]
      397 LOADK                            R18 K18 ["ContextMenu"]
      398 LOADK                            R19 K68 ["New"]
      399 NAMECALL                         R16 R2 K20 ["getText"]
      401 CALL                             R16 3 1
      402 SETTABLEKS                       R16 R15 K13 ["Text"]
      404 GETUPVAL                         R16 4
      405 GETTABLEKS                       R16 R16 K70 ["new"]
      407 CALL                             R16 0 1
      408 SETTABLEKS                       R16 R15 K12 ["Icon"]
      410 SETTABLEKS                       R14 R15 K30 ["Children"]
      412 RETURN                           R15 1

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
      107 GETTABLEKS                       R16 R16 K31 ["getEngineFeatureNestedPseudoInstance"]
      109 CALL                             R15 1 1
      110 CALL                             R15 0 1
      111 GETIMPORT                        R16 K8 [require]
      113 GETTABLEKS                       R17 R1 K19 ["Src"]
      115 GETTABLEKS                       R17 R17 K29 ["Flags"]
      117 GETTABLEKS                       R17 R17 K32 ["getEngineFeatureNewMultiPseudoInstances"]
      119 CALL                             R16 1 1
      120 CALL                             R16 0 1
      121 GETIMPORT                        R17 K8 [require]
      123 GETTABLEKS                       R18 R1 K19 ["Src"]
      125 GETTABLEKS                       R18 R18 K29 ["Flags"]
      127 GETTABLEKS                       R18 R18 K33 ["getEngineFeatureInputActionLabel"]
      129 CALL                             R17 1 1
      130 CALL                             R17 0 1
      131 GETIMPORT                        R18 K8 [require]
      133 GETTABLEKS                       R19 R1 K19 ["Src"]
      135 GETTABLEKS                       R19 R19 K29 ["Flags"]
      137 GETTABLEKS                       R19 R19 K34 ["getEngineFeatureTweenInfoAttributes"]
      139 CALL                             R18 1 1
      140 CALL                             R18 0 1
      141 GETIMPORT                        R19 K8 [require]
      143 GETTABLEKS                       R20 R1 K19 ["Src"]
      145 GETTABLEKS                       R20 R20 K29 ["Flags"]
      147 GETTABLEKS                       R20 R20 K35 ["getFFlagStyleEditorCreateFolder"]
      149 CALL                             R19 1 1
      150 CALL                             R19 0 1
      151 GETIMPORT                        R20 K8 [require]
      153 GETTABLEKS                       R21 R1 K19 ["Src"]
      155 GETTABLEKS                       R21 R21 K29 ["Flags"]
      157 GETTABLEKS                       R21 R21 K36 ["getFFlagStyleEditorBuiltinStyleQuery"]
      159 CALL                             R20 1 1
      160 CALL                             R20 0 1
      161 GETIMPORT                        R21 K8 [require]
      163 GETTABLEKS                       R22 R1 K19 ["Src"]
      165 GETTABLEKS                       R22 R22 K29 ["Flags"]
      167 GETTABLEKS                       R22 R22 K37 ["getEngineFeatureFocusedGuiState"]
      169 CALL                             R21 1 1
      170 CALL                             R21 0 1
      171 GETIMPORT                        R22 K8 [require]
      173 GETTABLEKS                       R23 R1 K19 ["Src"]
      175 GETTABLEKS                       R23 R23 K29 ["Flags"]
      177 GETTABLEKS                       R23 R23 K38 ["getEngineFeatureSelectedGuiState"]
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
      222 JUMPIFNOT                        R13 ; [+17]
      223 NEWTABLE                         R27 0 12
      225 LOADK                            R28 K51 ["UIAspectRatioConstraint"]
      226 LOADK                            R29 K52 ["UICorner"]
      227 LOADK                            R30 K53 ["UIGradient"]
      228 LOADK                            R31 K54 ["UIGridLayout"]
      229 LOADK                            R32 K55 ["UIListLayout"]
      230 LOADK                            R33 K56 ["UIPadding"]
      231 LOADK                            R34 K57 ["UIPageLayout"]
      232 LOADK                            R35 K58 ["UIScale"]
      233 LOADK                            R36 K59 ["UIShadow"]
      234 LOADK                            R37 K60 ["UISizeConstraint"]
      235 LOADK                            R38 K61 ["UIStroke"]
      236 LOADK                            R39 K62 ["UITextSizeConstraint"]
      237 SETLIST                          R27 R28 12 [1]
      239 JUMP                             ; [+15]
      240 NEWTABLE                         R27 0 11
      242 LOADK                            R28 K51 ["UIAspectRatioConstraint"]
      243 LOADK                            R29 K52 ["UICorner"]
      244 LOADK                            R30 K53 ["UIGradient"]
      245 LOADK                            R31 K54 ["UIGridLayout"]
      246 LOADK                            R32 K55 ["UIListLayout"]
      247 LOADK                            R33 K56 ["UIPadding"]
      248 LOADK                            R34 K58 ["UIScale"]
      249 LOADK                            R35 K59 ["UIShadow"]
      250 LOADK                            R36 K60 ["UISizeConstraint"]
      251 LOADK                            R37 K61 ["UIStroke"]
      252 LOADK                            R38 K62 ["UITextSizeConstraint"]
      253 SETLIST                          R27 R28 11 [1]
      255 SETTABLEKS                       R27 R26 K63 ["PseudoInstances"]
      257 NEWTABLE                         R27 0 2
      259 LOADK                            R28 K61 ["UIStroke"]
      260 LOADK                            R29 K59 ["UIShadow"]
      261 SETLIST                          R27 R28 2 [1]
      263 SETTABLEKS                       R27 R26 K64 ["MultiPseudoInstanceTypes"]
      265 JUMPIFNOT                        R14 ; [+8]
      266 GETTABLEKS                       R28 R26 K64 ["MultiPseudoInstanceTypes"]
      268 FASTCALL2K                       TABLE_INSERT R28 K65 ; [+4]
      270 LOADK                            R29 K65 ["StyleQuery"]
      271 GETIMPORT                        R27 K68 [table.insert]
      273 CALL                             R27 2 0
      274 GETTABLEKS                       R28 R26 K63 ["PseudoInstances"]
      276 LOADN                            R29 3
      277 LOADK                            R30 K69 ["UIFlexItem"]
      278 FASTCALL                         TABLE_INSERT ; [+2]
      279 GETIMPORT                        R27 K68 [table.insert]
      281 CALL                             R27 3 0
      282 GETIMPORT                        R27 K71 [table.sort]
      284 GETTABLEKS                       R28 R26 K63 ["PseudoInstances"]
      286 CALL                             R27 1 0
      287 JUMPIFNOT                        R17 ; [+8]
      288 GETTABLEKS                       R28 R26 K50 ["Classes"]
      290 FASTCALL2K                       TABLE_INSERT R28 K72 ; [+4]
      292 LOADK                            R29 K72 ["InputActionLabel"]
      293 GETIMPORT                        R27 K68 [table.insert]
      295 CALL                             R27 2 0
      296 NEWTABLE                         R27 0 4
      298 LOADK                            R28 K73 ["Hover"]
      299 LOADK                            R29 K74 ["Idle"]
      300 LOADK                            R30 K75 ["Press"]
      301 LOADK                            R31 K76 ["NonInteractable"]
      302 SETLIST                          R27 R28 4 [1]
      304 SETTABLEKS                       R27 R26 K77 ["GuiStates"]
      306 JUMPIFNOT                        R21 ; [+8]
      307 GETTABLEKS                       R28 R26 K77 ["GuiStates"]
      309 FASTCALL2K                       TABLE_INSERT R28 K78 ; [+4]
      311 LOADK                            R29 K78 ["Focus"]
      312 GETIMPORT                        R27 K68 [table.insert]
      314 CALL                             R27 2 0
      315 JUMPIFNOT                        R22 ; [+8]
      316 GETTABLEKS                       R28 R26 K77 ["GuiStates"]
      318 FASTCALL2K                       TABLE_INSERT R28 K79 ; [+4]
      320 LOADK                            R29 K79 ["Selected"]
      321 GETIMPORT                        R27 K68 [table.insert]
      323 CALL                             R27 2 0
      324 JUMPIFNOT                        R18 ; [+21]
      325 NEWTABLE                         R27 0 16
      327 LOADK                            R28 K80 ["string"]
      328 LOADK                            R29 K81 ["boolean"]
      329 LOADK                            R30 K82 ["number"]
      330 LOADK                            R31 K83 ["UDim"]
      331 LOADK                            R32 K84 ["UDim2"]
      332 LOADK                            R33 K85 ["BrickColor"]
      333 LOADK                            R34 K86 ["Color3"]
      334 LOADK                            R35 K87 ["Vector2"]
      335 LOADK                            R36 K88 ["Vector3"]
      336 LOADK                            R37 K89 ["CFrame"]
      337 LOADK                            R38 K90 ["ColorSequence"]
      338 LOADK                            R39 K91 ["NumberSequence"]
      339 LOADK                            R40 K92 ["NumberRange"]
      340 LOADK                            R41 K93 ["Rect"]
      341 LOADK                            R42 K94 ["Font"]
      342 LOADK                            R43 K95 ["TweenInfo"]
      343 SETLIST                          R27 R28 16 [1]
      345 JUMP                             ; [+19]
      346 NEWTABLE                         R27 0 15
      348 LOADK                            R28 K80 ["string"]
      349 LOADK                            R29 K81 ["boolean"]
      350 LOADK                            R30 K82 ["number"]
      351 LOADK                            R31 K83 ["UDim"]
      352 LOADK                            R32 K84 ["UDim2"]
      353 LOADK                            R33 K85 ["BrickColor"]
      354 LOADK                            R34 K86 ["Color3"]
      355 LOADK                            R35 K87 ["Vector2"]
      356 LOADK                            R36 K88 ["Vector3"]
      357 LOADK                            R37 K89 ["CFrame"]
      358 LOADK                            R38 K90 ["ColorSequence"]
      359 LOADK                            R39 K91 ["NumberSequence"]
      360 LOADK                            R40 K92 ["NumberRange"]
      361 LOADK                            R41 K93 ["Rect"]
      362 LOADK                            R42 K94 ["Font"]
      363 SETLIST                          R27 R28 15 [1]
      365 SETTABLEKS                       R27 R26 K96 ["AttributeTypes"]
      367 DUPCLOSURE                       R27 K97 [PROTO_1]
      368 CAPTURE                          VAL R0
      369 SETTABLEKS                       R27 R26 K98 ["getClassIcon"]
      371 NEWTABLE                         R27 0 2
      373 DUPTABLE                         R28 K102 [{["Name"] = "Tokens", ["Icon"]}]
      374 GETTABLEKS                       R29 R25 K103 ["Standard"]
      376 GETTABLEKS                       R29 R29 K104 ["TokenSheet"]
      378 CALL                             R29 0 1
      379 SETTABLEKS                       R29 R28 K101 ["Icon"]
      381 DUPTABLE                         R29 K106 [{["Name"] = "Themes", ["Icon"]}]
      382 GETTABLEKS                       R30 R25 K103 ["Standard"]
      384 GETTABLEKS                       R30 R30 K107 ["ThemeSheet"]
      386 CALL                             R30 0 1
      387 SETTABLEKS                       R30 R29 K101 ["Icon"]
      389 SETLIST                          R27 R28 2 [1]
      391 SETTABLEKS                       R27 R26 K108 ["StyleSheetCategories"]
      393 NEWTABLE                         R27 0 1
      395 NEWTABLE                         R28 4 0
      397 LOADK                            R29 K109 ["Menu"]
      398 SETTABLEKS                       R29 R28 K110 ["Id"]
      400 DUPTABLE                         R29 K112 [{"Image"}]
      401 GETTABLEKS                       R30 R25 K113 ["more"]
      403 CALL                             R30 0 1
      404 SETTABLEKS                       R30 R29 K111 ["Image"]
      406 SETTABLEKS                       R29 R28 K101 ["Icon"]
      408 GETTABLEKS                       R29 R2 K114 ["Tag"]
      410 LOADK                            R30 K115 ["Contrast IconOnly"]
      411 SETTABLE                         R30 R28 R29
      412 SETLIST                          R27 R28 1 [1]
      414 SETTABLEKS                       R27 R26 K116 ["MoreAction"]
      416 NEWTABLE                         R27 0 1
      418 NEWTABLE                         R28 4 0
      420 LOADK                            R29 K109 ["Menu"]
      421 SETTABLEKS                       R29 R28 K110 ["Id"]
      423 DUPTABLE                         R29 K112 [{"Image"}]
      424 GETTABLEKS                       R30 R25 K113 ["more"]
      426 CALL                             R30 0 1
      427 SETTABLEKS                       R30 R29 K111 ["Image"]
      429 SETTABLEKS                       R29 R28 K101 ["Icon"]
      431 GETTABLEKS                       R29 R2 K114 ["Tag"]
      433 LOADK                            R30 K117 ["IconOnly SecondaryHoverBackground"]
      434 SETTABLE                         R30 R28 R29
      435 SETLIST                          R27 R28 1 [1]
      437 SETTABLEKS                       R27 R26 K118 ["FullSpanMoreAction"]
      439 NEWTABLE                         R27 0 1
      441 NEWTABLE                         R28 4 0
      443 LOADK                            R29 K109 ["Menu"]
      444 SETTABLEKS                       R29 R28 K110 ["Id"]
      446 DUPTABLE                         R29 K112 [{"Image"}]
      447 GETTABLEKS                       R30 R25 K119 ["new"]
      449 CALL                             R30 0 1
      450 SETTABLEKS                       R30 R29 K111 ["Image"]
      452 SETTABLEKS                       R29 R28 K101 ["Icon"]
      454 GETTABLEKS                       R29 R2 K114 ["Tag"]
      456 LOADK                            R30 K117 ["IconOnly SecondaryHoverBackground"]
      457 SETTABLE                         R30 R28 R29
      458 SETLIST                          R27 R28 1 [1]
      460 SETTABLEKS                       R27 R26 K120 ["CategoryPlusButtonAction"]
      462 DUPCLOSURE                       R27 K121 [PROTO_3]
      463 CAPTURE                          VAL R16
      464 CAPTURE                          VAL R26
      465 SETTABLEKS                       R27 R26 K122 ["getAvailablePseudoSelector"]
      467 DUPCLOSURE                       R27 K123 [PROTO_5]
      468 CAPTURE                          VAL R7
      469 CAPTURE                          VAL R26
      470 SETTABLEKS                       R27 R26 K124 ["getStyleSheetCategoryActions"]
      472 DUPCLOSURE                       R27 K125 [PROTO_7]
      473 CAPTURE                          VAL R7
      474 SETTABLEKS                       R27 R26 K126 ["getAttributeTypeActions"]
      476 DUPCLOSURE                       R27 K127 [PROTO_9]
      477 CAPTURE                          VAL R7
      478 CAPTURE                          VAL R26
      479 SETTABLEKS                       R27 R26 K128 ["getClassTypeActions"]
      481 DUPCLOSURE                       R27 K129 [PROTO_15]
      482 CAPTURE                          VAL R7
      483 CAPTURE                          VAL R9
      484 CAPTURE                          VAL R15
      485 CAPTURE                          VAL R26
      486 CAPTURE                          VAL R25
      487 CAPTURE                          VAL R6
      488 CAPTURE                          VAL R14
      489 CAPTURE                          VAL R20
      490 CAPTURE                          VAL R23
      491 CAPTURE                          VAL R19
      492 SETTABLEKS                       R27 R26 K130 ["getNewSelectorAction"]
      494 DUPCLOSURE                       R27 K131 [PROTO_16]
      495 CAPTURE                          VAL R25
      496 SETTABLEKS                       R27 R26 K132 ["getRenameAction"]
      498 DUPCLOSURE                       R27 K133 [PROTO_18]
      499 CAPTURE                          VAL R26
      500 CAPTURE                          VAL R7
      501 CAPTURE                          VAL R9
      502 SETTABLEKS                       R27 R26 K134 ["buildMenu"]
      504 DUPCLOSURE                       R27 K135 [PROTO_20]
      505 CAPTURE                          VAL R26
      506 SETTABLEKS                       R27 R26 K136 ["decorateClickHandlers"]
      508 DUPCLOSURE                       R27 K137 [PROTO_22]
      509 CAPTURE                          VAL R26
      510 CAPTURE                          VAL R10
      511 CAPTURE                          VAL R11
      512 SETTABLEKS                       R27 R26 K138 ["trackClicks"]
      514 DUPCLOSURE                       R27 K139 [PROTO_23]
      515 CAPTURE                          VAL R26
      516 CAPTURE                          VAL R5
      517 SETTABLEKS                       R27 R26 K14 ["showContextMenu"]
      519 DUPCLOSURE                       R27 K140 [PROTO_25]
      520 CAPTURE                          VAL R8
      521 SETTABLEKS                       R27 R26 K141 ["filterHiddenActions"]
      523 RETURN                           R26 1
