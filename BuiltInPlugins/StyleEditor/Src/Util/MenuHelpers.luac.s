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
      136 GETUPVAL                         R16 6
      137 JUMPIFNOT                        R16 ; [+2]
      138 MOVE                             R15 R11
      139 JUMP                             ; [+1]
      140 MOVE                             R15 R10
      141 GETUPVAL                         R17 6
      142 JUMPIFNOT                        R17 ; [+2]
      143 MOVE                             R16 R10
      144 JUMP                             ; [+1]
      145 MOVE                             R16 R11
      146 MOVE                             R17 R12
      147 DUPTABLE                         R18 K41 [{["Id"] = "PseudoInstance", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      148 GETUPVAL                         R19 4
      149 GETTABLEKS                       R19 R19 K17 ["Selectors"]
      151 GETTABLEKS                       R19 R19 K40 ["PseudoInstance"]
      153 CALL                             R19 0 1
      154 SETTABLEKS                       R19 R18 K12 ["Icon"]
      156 GETUPVAL                         R20 7
      157 JUMPIFNOT                        R20 ; [+2]
      158 AND                              R19 R7 R4
      159 JUMP                             ; [+1]
      160 MOVE                             R19 R7
      161 SETTABLEKS                       R19 R18 K24 ["Enabled"]
      163 LOADK                            R21 K18 ["ContextMenu"]
      164 LOADK                            R22 K42 ["New.PseudoInstance"]
      165 NAMECALL                         R19 R2 K20 ["getText"]
      167 CALL                             R19 3 1
      168 SETTABLEKS                       R19 R18 K13 ["Text"]
      170 JUMPIFNOT                        R7 ; [+2]
      171 MOVE                             R19 R8
      172 JUMP                             ; [+1]
      173 LOADNIL                          R19
      174 SETTABLEKS                       R19 R18 K30 ["Children"]
      176 DUPTABLE                         R19 K44 [{["Id"] = "GuiState", ["Icon"], ["Enabled"], ["Text"] = "GuiState", ["Children"]}]
      177 GETUPVAL                         R20 4
      178 GETTABLEKS                       R20 R20 K17 ["Selectors"]
      180 GETTABLEKS                       R20 R20 K43 ["GuiState"]
      182 CALL                             R20 0 1
      183 SETTABLEKS                       R20 R19 K12 ["Icon"]
      185 SETTABLEKS                       R6 R19 K24 ["Enabled"]
      187 JUMPIFNOT                        R6 ; [+2]
      188 MOVE                             R20 R9
      189 JUMP                             ; [+1]
      190 LOADNIL                          R20
      191 SETTABLEKS                       R20 R19 K30 ["Children"]
      193 DUPTABLE                         R20 K46 [{["Id"] = "Enumerator", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      194 GETUPVAL                         R21 4
      195 GETTABLEKS                       R21 R21 K17 ["Selectors"]
      197 GETTABLEKS                       R21 R21 K45 ["Enumerator"]
      199 CALL                             R21 0 1
      200 SETTABLEKS                       R21 R20 K12 ["Icon"]
      202 AND                              R21 R4 R6
      203 SETTABLEKS                       R21 R20 K24 ["Enabled"]
      205 LOADK                            R23 K18 ["ContextMenu"]
      206 LOADK                            R24 K47 ["New.Enumerator"]
      207 NAMECALL                         R21 R2 K20 ["getText"]
      209 CALL                             R21 3 1
      210 SETTABLEKS                       R21 R20 K13 ["Text"]
      212 JUMPIFNOT                        R4 ; [+19]
      213 JUMPIFNOT                        R6 ; [+18]
      214 NEWTABLE                         R22 0 4
      216 MOVE                             R23 R10
      217 MOVE                             R24 R11
      218 MOVE                             R25 R12
      219 MOVE                             R26 R13
      220 SETLIST                          R22 R23 4 [1]
      222 GETUPVAL                         R23 0
      223 MOVE                             R24 R22
      224 LOADK                            R26 K48 [","]
      225 NEWCLOSURE                       R25 P3
      226 CAPTURE                          UPVAL U1
      227 CAPTURE                          VAL R3
      228 CAPTURE                          VAL R26
      229 CALL                             R23 2 1
      230 MOVE                             R21 R23
      231 JUMP                             ; [+1]
      232 LOADNIL                          R21
      233 SETTABLEKS                       R21 R20 K30 ["Children"]
      235 DUPTABLE                         R21 K50 [{["Id"] = "Child", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      236 GETUPVAL                         R22 4
      237 GETTABLEKS                       R22 R22 K17 ["Selectors"]
      239 GETTABLEKS                       R22 R22 K49 ["Child"]
      241 CALL                             R22 0 1
      242 SETTABLEKS                       R22 R21 K12 ["Icon"]
      244 SETTABLEKS                       R6 R21 K24 ["Enabled"]
      246 LOADK                            R24 K18 ["ContextMenu"]
      247 LOADK                            R25 K51 ["New.Child"]
      248 NAMECALL                         R22 R2 K20 ["getText"]
      250 CALL                             R22 3 1
      251 SETTABLEKS                       R22 R21 K13 ["Text"]
      253 JUMPIFNOT                        R6 ; [+18]
      254 NEWTABLE                         R23 0 4
      256 MOVE                             R24 R10
      257 MOVE                             R25 R11
      258 MOVE                             R26 R12
      259 MOVE                             R27 R13
      260 SETLIST                          R23 R24 4 [1]
      262 GETUPVAL                         R24 0
      263 MOVE                             R25 R23
      264 LOADK                            R27 K52 [">"]
      265 NEWCLOSURE                       R26 P3
      266 CAPTURE                          UPVAL U1
      267 CAPTURE                          VAL R3
      268 CAPTURE                          VAL R27
      269 CALL                             R24 2 1
      270 MOVE                             R22 R24
      271 JUMP                             ; [+1]
      272 LOADNIL                          R22
      273 SETTABLEKS                       R22 R21 K30 ["Children"]
      275 DUPTABLE                         R22 K54 [{["Id"] = "Descendant", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      276 GETUPVAL                         R23 4
      277 GETTABLEKS                       R23 R23 K17 ["Selectors"]
      279 GETTABLEKS                       R23 R23 K53 ["Descendant"]
      281 CALL                             R23 0 1
      282 SETTABLEKS                       R23 R22 K12 ["Icon"]
      284 SETTABLEKS                       R6 R22 K24 ["Enabled"]
      286 LOADK                            R25 K18 ["ContextMenu"]
      287 LOADK                            R26 K55 ["New.Descendant"]
      288 NAMECALL                         R23 R2 K20 ["getText"]
      290 CALL                             R23 3 1
      291 SETTABLEKS                       R23 R22 K13 ["Text"]
      293 JUMPIFNOT                        R6 ; [+18]
      294 NEWTABLE                         R24 0 4
      296 MOVE                             R25 R10
      297 MOVE                             R26 R11
      298 MOVE                             R27 R12
      299 MOVE                             R28 R13
      300 SETLIST                          R24 R25 4 [1]
      302 GETUPVAL                         R25 0
      303 MOVE                             R26 R24
      304 LOADK                            R28 K56 [">>"]
      305 NEWCLOSURE                       R27 P3
      306 CAPTURE                          UPVAL U1
      307 CAPTURE                          VAL R3
      308 CAPTURE                          VAL R28
      309 CALL                             R25 2 1
      310 MOVE                             R23 R25
      311 JUMP                             ; [+1]
      312 LOADNIL                          R23
      313 SETTABLEKS                       R23 R22 K30 ["Children"]
      315 GETUPVAL                         R24 7
      316 JUMPIFNOT                        R24 ; [+69]
      317 DUPTABLE                         R23 K58 [{["Id"] = "StyleQuery", ["Text"] = "StyleQuery", ["Enabled"], ["Icon"], ["OnItemClicked"], ["Children"]}]
      318 SETTABLEKS                       R4 R23 K24 ["Enabled"]
      320 GETUPVAL                         R24 3
      321 GETTABLEKS                       R24 R24 K59 ["getClassIcon"]
      323 LOADK                            R25 K57 ["StyleQuery"]
      324 CALL                             R24 1 1
      325 SETTABLEKS                       R24 R23 K12 ["Icon"]
      327 GETUPVAL                         R25 8
      328 JUMPIFNOT                        R25 ; [+2]
      329 LOADNIL                          R24
      330 JUMP                             ; [+1]
      331 MOVE                             R24 R1
      332 SETTABLEKS                       R24 R23 K14 ["OnItemClicked"]
      334 GETUPVAL                         R25 8
      335 JUMPIFNOT                        R25 ; [+46]
      336 JUMPIFNOT                        R4 ; [+45]
      337 NEWTABLE                         R24 0 2
      339 DUPTABLE                         R25 K61 [{["Id"] = "Builtin", ["Text"], ["Icon"], ["Children"]}]
      340 LOADK                            R28 K18 ["ContextMenu"]
      341 LOADK                            R29 K62 ["New.Query.Builtin"]
      342 NAMECALL                         R26 R2 K20 ["getText"]
      344 CALL                             R26 3 1
      345 SETTABLEKS                       R26 R25 K13 ["Text"]
      347 GETUPVAL                         R26 3
      348 GETTABLEKS                       R26 R26 K59 ["getClassIcon"]
      350 LOADK                            R27 K57 ["StyleQuery"]
      351 CALL                             R26 1 1
      352 SETTABLEKS                       R26 R25 K12 ["Icon"]
      354 GETUPVAL                         R26 0
      355 GETUPVAL                         R27 9
      356 NEWCLOSURE                       R28 P4
      357 CAPTURE                          UPVAL U3
      358 CAPTURE                          VAL R1
      359 CALL                             R26 2 1
      360 SETTABLEKS                       R26 R25 K30 ["Children"]
      362 DUPTABLE                         R26 K64 [{["Id"] = "Custom", ["Text"], ["Icon"], ["OnItemClicked"]}]
      363 LOADK                            R29 K18 ["ContextMenu"]
      364 LOADK                            R30 K65 ["New.Query.Custom"]
      365 NAMECALL                         R27 R2 K20 ["getText"]
      367 CALL                             R27 3 1
      368 SETTABLEKS                       R27 R26 K13 ["Text"]
      370 GETUPVAL                         R27 3
      371 GETTABLEKS                       R27 R27 K59 ["getClassIcon"]
      373 LOADK                            R28 K57 ["StyleQuery"]
      374 CALL                             R27 1 1
      375 SETTABLEKS                       R27 R26 K12 ["Icon"]
      377 SETTABLEKS                       R1 R26 K14 ["OnItemClicked"]
      379 SETLIST                          R24 R25 2 [1]
      381 JUMP                             ; [+1]
      382 LOADNIL                          R24
      383 SETTABLEKS                       R24 R23 K30 ["Children"]
      385 JUMP                             ; [+1]
      386 LOADNIL                          R23
      387 GETUPVAL                         R25 10
      388 JUMPIFNOT                        R25 ; [+11]
      389 DUPTABLE                         R24 K67 [{["Id"] = "Folder", ["Text"] = "Folder", ["Icon"], ["OnItemClicked"]}]
      390 GETUPVAL                         R25 3
      391 GETTABLEKS                       R25 R25 K59 ["getClassIcon"]
      393 LOADK                            R26 K66 ["Folder"]
      394 CALL                             R25 1 1
      395 SETTABLEKS                       R25 R24 K12 ["Icon"]
      397 SETTABLEKS                       R1 R24 K14 ["OnItemClicked"]
      399 JUMP                             ; [+1]
      400 LOADNIL                          R24
      401 MOVE                             R25 R13
      402 SETLIST                          R14 R15 11 [1]
      404 DUPTABLE                         R15 K69 [{["Id"] = "New", ["Text"], ["Icon"], ["Children"]}]
      405 LOADK                            R18 K18 ["ContextMenu"]
      406 LOADK                            R19 K68 ["New"]
      407 NAMECALL                         R16 R2 K20 ["getText"]
      409 CALL                             R16 3 1
      410 SETTABLEKS                       R16 R15 K13 ["Text"]
      412 GETUPVAL                         R16 4
      413 GETTABLEKS                       R16 R16 K70 ["new"]
      415 CALL                             R16 0 1
      416 SETTABLEKS                       R16 R15 K12 ["Icon"]
      418 SETTABLEKS                       R14 R15 K30 ["Children"]
      420 RETURN                           R15 1

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
      287 NEWTABLE                         R27 0 4
      289 LOADK                            R28 K72 ["Hover"]
      290 LOADK                            R29 K73 ["Idle"]
      291 LOADK                            R30 K74 ["Press"]
      292 LOADK                            R31 K75 ["NonInteractable"]
      293 SETLIST                          R27 R28 4 [1]
      295 SETTABLEKS                       R27 R26 K76 ["GuiStates"]
      297 JUMPIFNOT                        R21 ; [+8]
      298 GETTABLEKS                       R28 R26 K76 ["GuiStates"]
      300 FASTCALL2K                       TABLE_INSERT R28 K77 ; [+4]
      302 LOADK                            R29 K77 ["Focused"]
      303 GETIMPORT                        R27 K68 [table.insert]
      305 CALL                             R27 2 0
      306 JUMPIFNOT                        R22 ; [+8]
      307 GETTABLEKS                       R28 R26 K76 ["GuiStates"]
      309 FASTCALL2K                       TABLE_INSERT R28 K78 ; [+4]
      311 LOADK                            R29 K78 ["Selected"]
      312 GETIMPORT                        R27 K68 [table.insert]
      314 CALL                             R27 2 0
      315 JUMPIFNOT                        R18 ; [+21]
      316 NEWTABLE                         R27 0 16
      318 LOADK                            R28 K79 ["string"]
      319 LOADK                            R29 K80 ["boolean"]
      320 LOADK                            R30 K81 ["number"]
      321 LOADK                            R31 K82 ["UDim"]
      322 LOADK                            R32 K83 ["UDim2"]
      323 LOADK                            R33 K84 ["BrickColor"]
      324 LOADK                            R34 K85 ["Color3"]
      325 LOADK                            R35 K86 ["Vector2"]
      326 LOADK                            R36 K87 ["Vector3"]
      327 LOADK                            R37 K88 ["CFrame"]
      328 LOADK                            R38 K89 ["ColorSequence"]
      329 LOADK                            R39 K90 ["NumberSequence"]
      330 LOADK                            R40 K91 ["NumberRange"]
      331 LOADK                            R41 K92 ["Rect"]
      332 LOADK                            R42 K93 ["Font"]
      333 LOADK                            R43 K94 ["TweenInfo"]
      334 SETLIST                          R27 R28 16 [1]
      336 JUMP                             ; [+19]
      337 NEWTABLE                         R27 0 15
      339 LOADK                            R28 K79 ["string"]
      340 LOADK                            R29 K80 ["boolean"]
      341 LOADK                            R30 K81 ["number"]
      342 LOADK                            R31 K82 ["UDim"]
      343 LOADK                            R32 K83 ["UDim2"]
      344 LOADK                            R33 K84 ["BrickColor"]
      345 LOADK                            R34 K85 ["Color3"]
      346 LOADK                            R35 K86 ["Vector2"]
      347 LOADK                            R36 K87 ["Vector3"]
      348 LOADK                            R37 K88 ["CFrame"]
      349 LOADK                            R38 K89 ["ColorSequence"]
      350 LOADK                            R39 K90 ["NumberSequence"]
      351 LOADK                            R40 K91 ["NumberRange"]
      352 LOADK                            R41 K92 ["Rect"]
      353 LOADK                            R42 K93 ["Font"]
      354 SETLIST                          R27 R28 15 [1]
      356 SETTABLEKS                       R27 R26 K95 ["AttributeTypes"]
      358 DUPCLOSURE                       R27 K96 [PROTO_1]
      359 CAPTURE                          VAL R0
      360 SETTABLEKS                       R27 R26 K97 ["getClassIcon"]
      362 NEWTABLE                         R27 0 2
      364 DUPTABLE                         R28 K101 [{["Name"] = "Tokens", ["Icon"]}]
      365 GETTABLEKS                       R29 R25 K102 ["Standard"]
      367 GETTABLEKS                       R29 R29 K103 ["TokenSheet"]
      369 CALL                             R29 0 1
      370 SETTABLEKS                       R29 R28 K100 ["Icon"]
      372 DUPTABLE                         R29 K105 [{["Name"] = "Themes", ["Icon"]}]
      373 GETTABLEKS                       R30 R25 K102 ["Standard"]
      375 GETTABLEKS                       R30 R30 K106 ["ThemeSheet"]
      377 CALL                             R30 0 1
      378 SETTABLEKS                       R30 R29 K100 ["Icon"]
      380 SETLIST                          R27 R28 2 [1]
      382 SETTABLEKS                       R27 R26 K107 ["StyleSheetCategories"]
      384 NEWTABLE                         R27 0 1
      386 NEWTABLE                         R28 4 0
      388 LOADK                            R29 K108 ["Menu"]
      389 SETTABLEKS                       R29 R28 K109 ["Id"]
      391 DUPTABLE                         R29 K111 [{"Image"}]
      392 GETTABLEKS                       R30 R25 K112 ["more"]
      394 CALL                             R30 0 1
      395 SETTABLEKS                       R30 R29 K110 ["Image"]
      397 SETTABLEKS                       R29 R28 K100 ["Icon"]
      399 GETTABLEKS                       R29 R2 K113 ["Tag"]
      401 LOADK                            R30 K114 ["Contrast IconOnly"]
      402 SETTABLE                         R30 R28 R29
      403 SETLIST                          R27 R28 1 [1]
      405 SETTABLEKS                       R27 R26 K115 ["MoreAction"]
      407 NEWTABLE                         R27 0 1
      409 NEWTABLE                         R28 4 0
      411 LOADK                            R29 K108 ["Menu"]
      412 SETTABLEKS                       R29 R28 K109 ["Id"]
      414 DUPTABLE                         R29 K111 [{"Image"}]
      415 GETTABLEKS                       R30 R25 K112 ["more"]
      417 CALL                             R30 0 1
      418 SETTABLEKS                       R30 R29 K110 ["Image"]
      420 SETTABLEKS                       R29 R28 K100 ["Icon"]
      422 GETTABLEKS                       R29 R2 K113 ["Tag"]
      424 LOADK                            R30 K116 ["IconOnly SecondaryHoverBackground"]
      425 SETTABLE                         R30 R28 R29
      426 SETLIST                          R27 R28 1 [1]
      428 SETTABLEKS                       R27 R26 K117 ["FullSpanMoreAction"]
      430 NEWTABLE                         R27 0 1
      432 NEWTABLE                         R28 4 0
      434 LOADK                            R29 K108 ["Menu"]
      435 SETTABLEKS                       R29 R28 K109 ["Id"]
      437 DUPTABLE                         R29 K111 [{"Image"}]
      438 GETTABLEKS                       R30 R25 K118 ["new"]
      440 CALL                             R30 0 1
      441 SETTABLEKS                       R30 R29 K110 ["Image"]
      443 SETTABLEKS                       R29 R28 K100 ["Icon"]
      445 GETTABLEKS                       R29 R2 K113 ["Tag"]
      447 LOADK                            R30 K116 ["IconOnly SecondaryHoverBackground"]
      448 SETTABLE                         R30 R28 R29
      449 SETLIST                          R27 R28 1 [1]
      451 SETTABLEKS                       R27 R26 K119 ["CategoryPlusButtonAction"]
      453 DUPCLOSURE                       R27 K120 [PROTO_3]
      454 CAPTURE                          VAL R17
      455 CAPTURE                          VAL R26
      456 SETTABLEKS                       R27 R26 K121 ["getAvailablePseudoSelector"]
      458 DUPCLOSURE                       R27 K122 [PROTO_5]
      459 CAPTURE                          VAL R7
      460 CAPTURE                          VAL R26
      461 SETTABLEKS                       R27 R26 K123 ["getStyleSheetCategoryActions"]
      463 DUPCLOSURE                       R27 K124 [PROTO_7]
      464 CAPTURE                          VAL R7
      465 SETTABLEKS                       R27 R26 K125 ["getAttributeTypeActions"]
      467 DUPCLOSURE                       R27 K126 [PROTO_9]
      468 CAPTURE                          VAL R7
      469 CAPTURE                          VAL R26
      470 SETTABLEKS                       R27 R26 K127 ["getClassTypeActions"]
      472 DUPCLOSURE                       R27 K128 [PROTO_15]
      473 CAPTURE                          VAL R7
      474 CAPTURE                          VAL R9
      475 CAPTURE                          VAL R16
      476 CAPTURE                          VAL R26
      477 CAPTURE                          VAL R25
      478 CAPTURE                          VAL R6
      479 CAPTURE                          VAL R15
      480 CAPTURE                          VAL R14
      481 CAPTURE                          VAL R20
      482 CAPTURE                          VAL R23
      483 CAPTURE                          VAL R19
      484 SETTABLEKS                       R27 R26 K129 ["getNewSelectorAction"]
      486 DUPCLOSURE                       R27 K130 [PROTO_16]
      487 CAPTURE                          VAL R25
      488 SETTABLEKS                       R27 R26 K131 ["getRenameAction"]
      490 DUPCLOSURE                       R27 K132 [PROTO_18]
      491 CAPTURE                          VAL R26
      492 CAPTURE                          VAL R7
      493 CAPTURE                          VAL R9
      494 SETTABLEKS                       R27 R26 K133 ["buildMenu"]
      496 DUPCLOSURE                       R27 K134 [PROTO_20]
      497 CAPTURE                          VAL R26
      498 SETTABLEKS                       R27 R26 K135 ["decorateClickHandlers"]
      500 DUPCLOSURE                       R27 K136 [PROTO_22]
      501 CAPTURE                          VAL R26
      502 CAPTURE                          VAL R10
      503 CAPTURE                          VAL R11
      504 SETTABLEKS                       R27 R26 K137 ["trackClicks"]
      506 DUPCLOSURE                       R27 K138 [PROTO_23]
      507 CAPTURE                          VAL R26
      508 CAPTURE                          VAL R5
      509 SETTABLEKS                       R27 R26 K14 ["showContextMenu"]
      511 DUPCLOSURE                       R27 K139 [PROTO_25]
      512 CAPTURE                          VAL R8
      513 SETTABLEKS                       R27 R26 K140 ["filterHiddenActions"]
      515 RETURN                           R26 1
