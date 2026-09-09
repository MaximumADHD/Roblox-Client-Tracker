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
        3 GETIMPORT                        R3 K3 [table.find]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["MultiPseudoInstanceTypes"]
        8 MOVE                             R5 R1
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R2 1
       12 DUPCLOSURE                       R3 K5 [PROTO_2]
       13 NEWTABLE                         R4 0 0
       15 NAMECALL                         R5 R0 K6 ["GetStyleRules"]
       17 CALL                             R5 1 3
       18 FORGPREP                         R5
       19 GETTABLEKS                       R11 R9 K7 ["Selector"]
       21 LOADK                            R14 K8 ["^::%s+"]
       22 LOADK                            R15 K0 ["::"]
       23 NAMECALL                         R12 R11 K9 ["gsub"]
       25 CALL                             R12 3 1
       26 LOADK                            R15 K10 ["%s*#"]
       27 LOADK                            R16 K11 [" #"]
       28 NAMECALL                         R13 R12 K9 ["gsub"]
       30 CALL                             R13 3 1
       31 MOVE                             R12 R13
       32 MOVE                             R10 R12
       33 LOADB                            R11 1
       34 SETTABLE                         R11 R4 R10
       35 JUMPIFNOTEQ                      R10 R2 ; [+31]
       37 NAMECALL                         R11 R9 K6 ["GetStyleRules"]
       39 CALL                             R11 1 3
       40 FORGPREP                         R11
       41 GETTABLEKS                       R16 R15 K7 ["Selector"]
       43 LOADK                            R18 K12 ["^#%d+$"]
       44 NAMECALL                         R16 R16 K13 ["match"]
       46 CALL                             R16 2 1
       47 JUMPIFNOT                        R16 ; [+17]
       48 MOVE                             R19 R2
       49 MOVE                             R20 R16
       50 CONCAT                           R18 R19 R20
       51 LOADK                            R21 K8 ["^::%s+"]
       52 LOADK                            R22 K0 ["::"]
       53 NAMECALL                         R19 R18 K9 ["gsub"]
       55 CALL                             R19 3 1
       56 LOADK                            R22 K10 ["%s*#"]
       57 LOADK                            R23 K11 [" #"]
       58 NAMECALL                         R20 R19 K9 ["gsub"]
       60 CALL                             R20 3 1
       61 MOVE                             R19 R20
       62 MOVE                             R17 R19
       63 LOADB                            R18 1
       64 SETTABLE                         R18 R4 R17
       65 FORGLOOP                         R11 2 ; [-25]
       67 FORGLOOP                         R5 2 ; [-49]
       69 GETTABLE                         R5 R4 R2
       70 JUMPIF                           R5 ; [+1]
       71 RETURN                           R2 1
       72 LOADN                            R5 1
       73 MOVE                             R7 R2
       74 LOADK                            R8 K11 [" #"]
       75 MOVE                             R9 R5
       76 CONCAT                           R6 R7 R9
       77 GETTABLE                         R7 R4 R6
       78 JUMPIF                           R7 ; [+1]
       79 RETURN                           R6 1
       80 ADDK                             R5 R5 K14 [1]
       81 JUMPBACK                         ; [-9]
       82 RETURN                           R0 0

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
       20 NOT                              R6 R5
       21 GETUPVAL                         R7 0
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K8 ["PseudoInstances"]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R0
       29 CALL                             R7 2 1
       30 GETUPVAL                         R8 0
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K9 ["GuiStates"]
       34 NEWCLOSURE                       R10 P2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R1
       37 CALL                             R8 2 1
       38 DUPTABLE                         R9 K16 [{["Id"] = "Name", ["Icon"], ["Text"], ["OnItemClicked"], ["Data"]}]
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R10 R10 K17 ["Selectors"]
       42 GETTABLEKS                       R10 R10 K11 ["Name"]
       44 CALL                             R10 0 1
       45 SETTABLEKS                       R10 R9 K12 ["Icon"]
       47 LOADK                            R12 K18 ["ContextMenu"]
       48 LOADK                            R13 K19 ["New.Name"]
       49 NAMECALL                         R10 R2 K20 ["getText"]
       51 CALL                             R10 3 1
       52 SETTABLEKS                       R10 R9 K13 ["Text"]
       54 SETTABLEKS                       R1 R9 K14 ["OnItemClicked"]
       56 DUPTABLE                         R10 K22 [{["Selector"] = "#Name"}]
       57 SETTABLEKS                       R10 R9 K15 ["Data"]
       59 DUPTABLE                         R10 K25 [{["Id"] = "Tag", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"], ["Data"]}]
       60 LOADK                            R13 K18 ["ContextMenu"]
       61 LOADK                            R14 K26 ["New.Tag"]
       62 NAMECALL                         R11 R2 K20 ["getText"]
       64 CALL                             R11 3 1
       65 SETTABLEKS                       R11 R10 K13 ["Text"]
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K17 ["Selectors"]
       70 GETTABLEKS                       R11 R11 K23 ["Tag"]
       72 CALL                             R11 0 1
       73 SETTABLEKS                       R11 R10 K12 ["Icon"]
       75 SETTABLEKS                       R6 R10 K24 ["Enabled"]
       77 SETTABLEKS                       R1 R10 K14 ["OnItemClicked"]
       79 DUPTABLE                         R11 K28 [{["Selector"] = ".Tag"}]
       80 SETTABLEKS                       R11 R10 K15 ["Data"]
       82 DUPTABLE                         R11 K31 [{["Id"] = "Class", ["Icon"], ["Enabled"], ["Text"], ["OnItemClicked"], ["Children"]}]
       83 GETUPVAL                         R12 3
       84 GETTABLEKS                       R12 R12 K17 ["Selectors"]
       86 GETTABLEKS                       R12 R12 K29 ["Class"]
       88 CALL                             R12 0 1
       89 SETTABLEKS                       R12 R11 K12 ["Icon"]
       91 SETTABLEKS                       R6 R11 K24 ["Enabled"]
       93 LOADK                            R14 K18 ["ContextMenu"]
       94 LOADK                            R15 K32 ["New.Class"]
       95 NAMECALL                         R12 R2 K20 ["getText"]
       97 CALL                             R12 3 1
       98 SETTABLEKS                       R12 R11 K13 ["Text"]
      100 GETUPVAL                         R12 4
      101 GETTABLEKS                       R12 R12 K33 ["noop"]
      103 SETTABLEKS                       R12 R11 K14 ["OnItemClicked"]
      105 JUMPIFNOT                        R6 ; [+7]
      106 GETUPVAL                         R12 2
      107 GETTABLEKS                       R12 R12 K34 ["getClassTypeActions"]
      109 MOVE                             R13 R1
      110 MOVE                             R14 R2
      111 CALL                             R12 2 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R12
      114 SETTABLEKS                       R12 R11 K30 ["Children"]
      116 DUPTABLE                         R12 K36 [{["Id"] = "Empty", ["Text"], ["OnItemClicked"], ["Data"]}]
      117 LOADK                            R15 K18 ["ContextMenu"]
      118 LOADK                            R16 K37 ["New.Empty"]
      119 NAMECALL                         R13 R2 K20 ["getText"]
      121 CALL                             R13 3 1
      122 SETTABLEKS                       R13 R12 K13 ["Text"]
      124 SETTABLEKS                       R1 R12 K14 ["OnItemClicked"]
      126 DUPTABLE                         R13 K39 [{["Selector"] = ""}]
      127 SETTABLEKS                       R13 R12 K15 ["Data"]
      129 NEWTABLE                         R13 0 11
      131 MOVE                             R14 R10
      132 MOVE                             R15 R9
      133 MOVE                             R16 R11
      134 DUPTABLE                         R17 K41 [{["Id"] = "PseudoInstance", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      135 GETUPVAL                         R18 3
      136 GETTABLEKS                       R18 R18 K17 ["Selectors"]
      138 GETTABLEKS                       R18 R18 K40 ["PseudoInstance"]
      140 CALL                             R18 0 1
      141 SETTABLEKS                       R18 R17 K12 ["Icon"]
      143 GETUPVAL                         R19 5
      144 JUMPIFNOT                        R19 ; [+2]
      145 MOVE                             R18 R4
      146 JUMP                             ; [+1]
      147 LOADB                            R18 1
      148 SETTABLEKS                       R18 R17 K24 ["Enabled"]
      150 LOADK                            R20 K18 ["ContextMenu"]
      151 LOADK                            R21 K42 ["New.PseudoInstance"]
      152 NAMECALL                         R18 R2 K20 ["getText"]
      154 CALL                             R18 3 1
      155 SETTABLEKS                       R18 R17 K13 ["Text"]
      157 SETTABLEKS                       R7 R17 K30 ["Children"]
      159 DUPTABLE                         R18 K44 [{["Id"] = "GuiState", ["Icon"], ["Enabled"], ["Text"] = "GuiState", ["Children"]}]
      160 GETUPVAL                         R19 3
      161 GETTABLEKS                       R19 R19 K17 ["Selectors"]
      163 GETTABLEKS                       R19 R19 K43 ["GuiState"]
      165 CALL                             R19 0 1
      166 SETTABLEKS                       R19 R18 K12 ["Icon"]
      168 SETTABLEKS                       R6 R18 K24 ["Enabled"]
      170 JUMPIFNOT                        R6 ; [+2]
      171 MOVE                             R19 R8
      172 JUMP                             ; [+1]
      173 LOADNIL                          R19
      174 SETTABLEKS                       R19 R18 K30 ["Children"]
      176 DUPTABLE                         R19 K46 [{["Id"] = "Enumerator", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      177 GETUPVAL                         R20 3
      178 GETTABLEKS                       R20 R20 K17 ["Selectors"]
      180 GETTABLEKS                       R20 R20 K45 ["Enumerator"]
      182 CALL                             R20 0 1
      183 SETTABLEKS                       R20 R19 K12 ["Icon"]
      185 AND                              R20 R4 R6
      186 SETTABLEKS                       R20 R19 K24 ["Enabled"]
      188 LOADK                            R22 K18 ["ContextMenu"]
      189 LOADK                            R23 K47 ["New.Enumerator"]
      190 NAMECALL                         R20 R2 K20 ["getText"]
      192 CALL                             R20 3 1
      193 SETTABLEKS                       R20 R19 K13 ["Text"]
      195 JUMPIFNOT                        R4 ; [+19]
      196 JUMPIFNOT                        R6 ; [+18]
      197 NEWTABLE                         R21 0 4
      199 MOVE                             R22 R9
      200 MOVE                             R23 R10
      201 MOVE                             R24 R11
      202 MOVE                             R25 R12
      203 SETLIST                          R21 R22 4 [1]
      205 GETUPVAL                         R22 0
      206 MOVE                             R23 R21
      207 LOADK                            R25 K48 [","]
      208 NEWCLOSURE                       R24 P3
      209 CAPTURE                          UPVAL U1
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R25
      212 CALL                             R22 2 1
      213 MOVE                             R20 R22
      214 JUMP                             ; [+1]
      215 LOADNIL                          R20
      216 SETTABLEKS                       R20 R19 K30 ["Children"]
      218 DUPTABLE                         R20 K50 [{["Id"] = "Child", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      219 GETUPVAL                         R21 3
      220 GETTABLEKS                       R21 R21 K17 ["Selectors"]
      222 GETTABLEKS                       R21 R21 K49 ["Child"]
      224 CALL                             R21 0 1
      225 SETTABLEKS                       R21 R20 K12 ["Icon"]
      227 SETTABLEKS                       R6 R20 K24 ["Enabled"]
      229 LOADK                            R23 K18 ["ContextMenu"]
      230 LOADK                            R24 K51 ["New.Child"]
      231 NAMECALL                         R21 R2 K20 ["getText"]
      233 CALL                             R21 3 1
      234 SETTABLEKS                       R21 R20 K13 ["Text"]
      236 JUMPIFNOT                        R6 ; [+18]
      237 NEWTABLE                         R22 0 4
      239 MOVE                             R23 R9
      240 MOVE                             R24 R10
      241 MOVE                             R25 R11
      242 MOVE                             R26 R12
      243 SETLIST                          R22 R23 4 [1]
      245 GETUPVAL                         R23 0
      246 MOVE                             R24 R22
      247 LOADK                            R26 K52 [">"]
      248 NEWCLOSURE                       R25 P3
      249 CAPTURE                          UPVAL U1
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R26
      252 CALL                             R23 2 1
      253 MOVE                             R21 R23
      254 JUMP                             ; [+1]
      255 LOADNIL                          R21
      256 SETTABLEKS                       R21 R20 K30 ["Children"]
      258 DUPTABLE                         R21 K54 [{["Id"] = "Descendant", ["Icon"], ["Enabled"], ["Text"], ["Children"]}]
      259 GETUPVAL                         R22 3
      260 GETTABLEKS                       R22 R22 K17 ["Selectors"]
      262 GETTABLEKS                       R22 R22 K53 ["Descendant"]
      264 CALL                             R22 0 1
      265 SETTABLEKS                       R22 R21 K12 ["Icon"]
      267 SETTABLEKS                       R6 R21 K24 ["Enabled"]
      269 LOADK                            R24 K18 ["ContextMenu"]
      270 LOADK                            R25 K55 ["New.Descendant"]
      271 NAMECALL                         R22 R2 K20 ["getText"]
      273 CALL                             R22 3 1
      274 SETTABLEKS                       R22 R21 K13 ["Text"]
      276 JUMPIFNOT                        R6 ; [+18]
      277 NEWTABLE                         R23 0 4
      279 MOVE                             R24 R9
      280 MOVE                             R25 R10
      281 MOVE                             R26 R11
      282 MOVE                             R27 R12
      283 SETLIST                          R23 R24 4 [1]
      285 GETUPVAL                         R24 0
      286 MOVE                             R25 R23
      287 LOADK                            R27 K56 [">>"]
      288 NEWCLOSURE                       R26 P3
      289 CAPTURE                          UPVAL U1
      290 CAPTURE                          VAL R3
      291 CAPTURE                          VAL R27
      292 CALL                             R24 2 1
      293 MOVE                             R22 R24
      294 JUMP                             ; [+1]
      295 LOADNIL                          R22
      296 SETTABLEKS                       R22 R21 K30 ["Children"]
      298 GETUPVAL                         R23 5
      299 JUMPIFNOT                        R23 ; [+69]
      300 DUPTABLE                         R22 K58 [{["Id"] = "StyleQuery", ["Text"] = "StyleQuery", ["Enabled"], ["Icon"], ["OnItemClicked"], ["Children"]}]
      301 SETTABLEKS                       R4 R22 K24 ["Enabled"]
      303 GETUPVAL                         R23 2
      304 GETTABLEKS                       R23 R23 K59 ["getClassIcon"]
      306 LOADK                            R24 K57 ["StyleQuery"]
      307 CALL                             R23 1 1
      308 SETTABLEKS                       R23 R22 K12 ["Icon"]
      310 GETUPVAL                         R24 6
      311 JUMPIFNOT                        R24 ; [+2]
      312 LOADNIL                          R23
      313 JUMP                             ; [+1]
      314 MOVE                             R23 R1
      315 SETTABLEKS                       R23 R22 K14 ["OnItemClicked"]
      317 GETUPVAL                         R24 6
      318 JUMPIFNOT                        R24 ; [+46]
      319 JUMPIFNOT                        R4 ; [+45]
      320 NEWTABLE                         R23 0 2
      322 DUPTABLE                         R24 K61 [{["Id"] = "Builtin", ["Text"], ["Icon"], ["Children"]}]
      323 LOADK                            R27 K18 ["ContextMenu"]
      324 LOADK                            R28 K62 ["New.Query.Builtin"]
      325 NAMECALL                         R25 R2 K20 ["getText"]
      327 CALL                             R25 3 1
      328 SETTABLEKS                       R25 R24 K13 ["Text"]
      330 GETUPVAL                         R25 2
      331 GETTABLEKS                       R25 R25 K59 ["getClassIcon"]
      333 LOADK                            R26 K57 ["StyleQuery"]
      334 CALL                             R25 1 1
      335 SETTABLEKS                       R25 R24 K12 ["Icon"]
      337 GETUPVAL                         R25 0
      338 GETUPVAL                         R26 7
      339 NEWCLOSURE                       R27 P4
      340 CAPTURE                          UPVAL U2
      341 CAPTURE                          VAL R1
      342 CALL                             R25 2 1
      343 SETTABLEKS                       R25 R24 K30 ["Children"]
      345 DUPTABLE                         R25 K64 [{["Id"] = "Custom", ["Text"], ["Icon"], ["OnItemClicked"]}]
      346 LOADK                            R28 K18 ["ContextMenu"]
      347 LOADK                            R29 K65 ["New.Query.Custom"]
      348 NAMECALL                         R26 R2 K20 ["getText"]
      350 CALL                             R26 3 1
      351 SETTABLEKS                       R26 R25 K13 ["Text"]
      353 GETUPVAL                         R26 2
      354 GETTABLEKS                       R26 R26 K59 ["getClassIcon"]
      356 LOADK                            R27 K57 ["StyleQuery"]
      357 CALL                             R26 1 1
      358 SETTABLEKS                       R26 R25 K12 ["Icon"]
      360 SETTABLEKS                       R1 R25 K14 ["OnItemClicked"]
      362 SETLIST                          R23 R24 2 [1]
      364 JUMP                             ; [+1]
      365 LOADNIL                          R23
      366 SETTABLEKS                       R23 R22 K30 ["Children"]
      368 JUMP                             ; [+1]
      369 LOADNIL                          R22
      370 GETUPVAL                         R24 8
      371 JUMPIFNOT                        R24 ; [+11]
      372 DUPTABLE                         R23 K67 [{["Id"] = "Folder", ["Text"] = "Folder", ["Icon"], ["OnItemClicked"]}]
      373 GETUPVAL                         R24 2
      374 GETTABLEKS                       R24 R24 K59 ["getClassIcon"]
      376 LOADK                            R25 K66 ["Folder"]
      377 CALL                             R24 1 1
      378 SETTABLEKS                       R24 R23 K12 ["Icon"]
      380 SETTABLEKS                       R1 R23 K14 ["OnItemClicked"]
      382 JUMP                             ; [+1]
      383 LOADNIL                          R23
      384 MOVE                             R24 R12
      385 SETLIST                          R13 R14 11 [1]
      387 DUPTABLE                         R14 K69 [{["Id"] = "New", ["Text"], ["Icon"], ["Children"]}]
      388 LOADK                            R17 K18 ["ContextMenu"]
      389 LOADK                            R18 K68 ["New"]
      390 NAMECALL                         R15 R2 K20 ["getText"]
      392 CALL                             R15 3 1
      393 SETTABLEKS                       R15 R14 K13 ["Text"]
      395 GETUPVAL                         R15 3
      396 GETTABLEKS                       R15 R15 K70 ["new"]
      398 CALL                             R15 0 1
      399 SETTABLEKS                       R15 R14 K12 ["Icon"]
      401 SETTABLEKS                       R13 R14 K30 ["Children"]
      403 RETURN                           R14 1

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
      107 GETTABLEKS                       R16 R16 K31 ["getEngineFeatureInputActionLabel"]
      109 CALL                             R15 1 1
      110 CALL                             R15 0 1
      111 GETIMPORT                        R16 K8 [require]
      113 GETTABLEKS                       R17 R1 K19 ["Src"]
      115 GETTABLEKS                       R17 R17 K29 ["Flags"]
      117 GETTABLEKS                       R17 R17 K32 ["getEngineFeatureTweenInfoAttributes"]
      119 CALL                             R16 1 1
      120 CALL                             R16 0 1
      121 GETIMPORT                        R17 K8 [require]
      123 GETTABLEKS                       R18 R1 K19 ["Src"]
      125 GETTABLEKS                       R18 R18 K29 ["Flags"]
      127 GETTABLEKS                       R18 R18 K33 ["getFFlagStyleEditorCreateFolder"]
      129 CALL                             R17 1 1
      130 CALL                             R17 0 1
      131 GETIMPORT                        R18 K8 [require]
      133 GETTABLEKS                       R19 R1 K19 ["Src"]
      135 GETTABLEKS                       R19 R19 K29 ["Flags"]
      137 GETTABLEKS                       R19 R19 K34 ["getFFlagStyleEditorBuiltinStyleQuery"]
      139 CALL                             R18 1 1
      140 CALL                             R18 0 1
      141 GETIMPORT                        R19 K8 [require]
      143 GETTABLEKS                       R20 R1 K19 ["Src"]
      145 GETTABLEKS                       R20 R20 K29 ["Flags"]
      147 GETTABLEKS                       R20 R20 K35 ["getEngineFeatureFocusedGuiState"]
      149 CALL                             R19 1 1
      150 CALL                             R19 0 1
      151 GETIMPORT                        R20 K8 [require]
      153 GETTABLEKS                       R21 R1 K19 ["Src"]
      155 GETTABLEKS                       R21 R21 K29 ["Flags"]
      157 GETTABLEKS                       R21 R21 K36 ["getEngineFeatureSelectedGuiState"]
      159 CALL                             R20 1 1
      160 CALL                             R20 0 1
      161 GETIMPORT                        R21 K8 [require]
      163 GETTABLEKS                       R22 R1 K19 ["Src"]
      165 GETTABLEKS                       R22 R22 K37 ["Util"]
      167 GETTABLEKS                       R22 R22 K38 ["BuiltinStyleQueryCategories"]
      169 CALL                             R21 1 1
      170 GETIMPORT                        R22 K8 [require]
      172 GETTABLEKS                       R23 R1 K19 ["Src"]
      174 GETTABLEKS                       R23 R23 K26 ["Types"]
      176 CALL                             R22 1 1
      177 GETIMPORT                        R23 K8 [require]
      179 GETTABLEKS                       R24 R1 K19 ["Src"]
      181 GETTABLEKS                       R24 R24 K20 ["Resources"]
      183 GETTABLEKS                       R24 R24 K39 ["ModernIcons"]
      185 CALL                             R23 1 1
      186 NEWTABLE                         R24 32 0
      188 NEWTABLE                         R25 0 8
      190 LOADK                            R26 K40 ["CanvasGroup"]
      191 LOADK                            R27 K41 ["ImageButton"]
      192 LOADK                            R28 K42 ["ImageLabel"]
      193 LOADK                            R29 K43 ["ScrollingFrame"]
      194 LOADK                            R30 K44 ["Frame"]
      195 LOADK                            R31 K45 ["TextBox"]
      196 LOADK                            R32 K46 ["TextButton"]
      197 LOADK                            R33 K47 ["TextLabel"]
      198 SETLIST                          R25 R26 8 [1]
      200 SETTABLEKS                       R25 R24 K48 ["Classes"]
      202 JUMPIFNOT                        R13 ; [+17]
      203 NEWTABLE                         R25 0 12
      205 LOADK                            R26 K49 ["UIAspectRatioConstraint"]
      206 LOADK                            R27 K50 ["UICorner"]
      207 LOADK                            R28 K51 ["UIGradient"]
      208 LOADK                            R29 K52 ["UIGridLayout"]
      209 LOADK                            R30 K53 ["UIListLayout"]
      210 LOADK                            R31 K54 ["UIPadding"]
      211 LOADK                            R32 K55 ["UIPageLayout"]
      212 LOADK                            R33 K56 ["UIScale"]
      213 LOADK                            R34 K57 ["UIShadow"]
      214 LOADK                            R35 K58 ["UISizeConstraint"]
      215 LOADK                            R36 K59 ["UIStroke"]
      216 LOADK                            R37 K60 ["UITextSizeConstraint"]
      217 SETLIST                          R25 R26 12 [1]
      219 JUMP                             ; [+15]
      220 NEWTABLE                         R25 0 11
      222 LOADK                            R26 K49 ["UIAspectRatioConstraint"]
      223 LOADK                            R27 K50 ["UICorner"]
      224 LOADK                            R28 K51 ["UIGradient"]
      225 LOADK                            R29 K52 ["UIGridLayout"]
      226 LOADK                            R30 K53 ["UIListLayout"]
      227 LOADK                            R31 K54 ["UIPadding"]
      228 LOADK                            R32 K56 ["UIScale"]
      229 LOADK                            R33 K57 ["UIShadow"]
      230 LOADK                            R34 K58 ["UISizeConstraint"]
      231 LOADK                            R35 K59 ["UIStroke"]
      232 LOADK                            R36 K60 ["UITextSizeConstraint"]
      233 SETLIST                          R25 R26 11 [1]
      235 SETTABLEKS                       R25 R24 K61 ["PseudoInstances"]
      237 NEWTABLE                         R25 0 2
      239 LOADK                            R26 K59 ["UIStroke"]
      240 LOADK                            R27 K57 ["UIShadow"]
      241 SETLIST                          R25 R26 2 [1]
      243 SETTABLEKS                       R25 R24 K62 ["MultiPseudoInstanceTypes"]
      245 JUMPIFNOT                        R14 ; [+8]
      246 GETTABLEKS                       R26 R24 K62 ["MultiPseudoInstanceTypes"]
      248 FASTCALL2K                       TABLE_INSERT R26 K63 ; [+4]
      250 LOADK                            R27 K63 ["StyleQuery"]
      251 GETIMPORT                        R25 K66 [table.insert]
      253 CALL                             R25 2 0
      254 GETTABLEKS                       R26 R24 K61 ["PseudoInstances"]
      256 LOADN                            R27 3
      257 LOADK                            R28 K67 ["UIFlexItem"]
      258 FASTCALL                         TABLE_INSERT ; [+2]
      259 GETIMPORT                        R25 K66 [table.insert]
      261 CALL                             R25 3 0
      262 GETIMPORT                        R25 K69 [table.sort]
      264 GETTABLEKS                       R26 R24 K61 ["PseudoInstances"]
      266 CALL                             R25 1 0
      267 JUMPIFNOT                        R15 ; [+8]
      268 GETTABLEKS                       R26 R24 K48 ["Classes"]
      270 FASTCALL2K                       TABLE_INSERT R26 K70 ; [+4]
      272 LOADK                            R27 K70 ["InputActionLabel"]
      273 GETIMPORT                        R25 K66 [table.insert]
      275 CALL                             R25 2 0
      276 NEWTABLE                         R25 0 4
      278 LOADK                            R26 K71 ["Hover"]
      279 LOADK                            R27 K72 ["Idle"]
      280 LOADK                            R28 K73 ["Press"]
      281 LOADK                            R29 K74 ["NonInteractable"]
      282 SETLIST                          R25 R26 4 [1]
      284 SETTABLEKS                       R25 R24 K75 ["GuiStates"]
      286 JUMPIFNOT                        R19 ; [+8]
      287 GETTABLEKS                       R26 R24 K75 ["GuiStates"]
      289 FASTCALL2K                       TABLE_INSERT R26 K76 ; [+4]
      291 LOADK                            R27 K76 ["Focus"]
      292 GETIMPORT                        R25 K66 [table.insert]
      294 CALL                             R25 2 0
      295 JUMPIFNOT                        R20 ; [+8]
      296 GETTABLEKS                       R26 R24 K75 ["GuiStates"]
      298 FASTCALL2K                       TABLE_INSERT R26 K77 ; [+4]
      300 LOADK                            R27 K77 ["Selected"]
      301 GETIMPORT                        R25 K66 [table.insert]
      303 CALL                             R25 2 0
      304 JUMPIFNOT                        R16 ; [+21]
      305 NEWTABLE                         R25 0 16
      307 LOADK                            R26 K78 ["string"]
      308 LOADK                            R27 K79 ["boolean"]
      309 LOADK                            R28 K80 ["number"]
      310 LOADK                            R29 K81 ["UDim"]
      311 LOADK                            R30 K82 ["UDim2"]
      312 LOADK                            R31 K83 ["BrickColor"]
      313 LOADK                            R32 K84 ["Color3"]
      314 LOADK                            R33 K85 ["Vector2"]
      315 LOADK                            R34 K86 ["Vector3"]
      316 LOADK                            R35 K87 ["CFrame"]
      317 LOADK                            R36 K88 ["ColorSequence"]
      318 LOADK                            R37 K89 ["NumberSequence"]
      319 LOADK                            R38 K90 ["NumberRange"]
      320 LOADK                            R39 K91 ["Rect"]
      321 LOADK                            R40 K92 ["Font"]
      322 LOADK                            R41 K93 ["TweenInfo"]
      323 SETLIST                          R25 R26 16 [1]
      325 JUMP                             ; [+19]
      326 NEWTABLE                         R25 0 15
      328 LOADK                            R26 K78 ["string"]
      329 LOADK                            R27 K79 ["boolean"]
      330 LOADK                            R28 K80 ["number"]
      331 LOADK                            R29 K81 ["UDim"]
      332 LOADK                            R30 K82 ["UDim2"]
      333 LOADK                            R31 K83 ["BrickColor"]
      334 LOADK                            R32 K84 ["Color3"]
      335 LOADK                            R33 K85 ["Vector2"]
      336 LOADK                            R34 K86 ["Vector3"]
      337 LOADK                            R35 K87 ["CFrame"]
      338 LOADK                            R36 K88 ["ColorSequence"]
      339 LOADK                            R37 K89 ["NumberSequence"]
      340 LOADK                            R38 K90 ["NumberRange"]
      341 LOADK                            R39 K91 ["Rect"]
      342 LOADK                            R40 K92 ["Font"]
      343 SETLIST                          R25 R26 15 [1]
      345 SETTABLEKS                       R25 R24 K94 ["AttributeTypes"]
      347 DUPCLOSURE                       R25 K95 [PROTO_1]
      348 CAPTURE                          VAL R0
      349 SETTABLEKS                       R25 R24 K96 ["getClassIcon"]
      351 NEWTABLE                         R25 0 2
      353 DUPTABLE                         R26 K100 [{["Name"] = "Tokens", ["Icon"]}]
      354 GETTABLEKS                       R27 R23 K101 ["Standard"]
      356 GETTABLEKS                       R27 R27 K102 ["TokenSheet"]
      358 CALL                             R27 0 1
      359 SETTABLEKS                       R27 R26 K99 ["Icon"]
      361 DUPTABLE                         R27 K104 [{["Name"] = "Themes", ["Icon"]}]
      362 GETTABLEKS                       R28 R23 K101 ["Standard"]
      364 GETTABLEKS                       R28 R28 K105 ["ThemeSheet"]
      366 CALL                             R28 0 1
      367 SETTABLEKS                       R28 R27 K99 ["Icon"]
      369 SETLIST                          R25 R26 2 [1]
      371 SETTABLEKS                       R25 R24 K106 ["StyleSheetCategories"]
      373 NEWTABLE                         R25 0 1
      375 NEWTABLE                         R26 4 0
      377 LOADK                            R27 K107 ["Menu"]
      378 SETTABLEKS                       R27 R26 K108 ["Id"]
      380 DUPTABLE                         R27 K110 [{"Image"}]
      381 GETTABLEKS                       R28 R23 K111 ["more"]
      383 CALL                             R28 0 1
      384 SETTABLEKS                       R28 R27 K109 ["Image"]
      386 SETTABLEKS                       R27 R26 K99 ["Icon"]
      388 GETTABLEKS                       R27 R2 K112 ["Tag"]
      390 LOADK                            R28 K113 ["Contrast IconOnly"]
      391 SETTABLE                         R28 R26 R27
      392 SETLIST                          R25 R26 1 [1]
      394 SETTABLEKS                       R25 R24 K114 ["MoreAction"]
      396 NEWTABLE                         R25 0 1
      398 NEWTABLE                         R26 4 0
      400 LOADK                            R27 K107 ["Menu"]
      401 SETTABLEKS                       R27 R26 K108 ["Id"]
      403 DUPTABLE                         R27 K110 [{"Image"}]
      404 GETTABLEKS                       R28 R23 K111 ["more"]
      406 CALL                             R28 0 1
      407 SETTABLEKS                       R28 R27 K109 ["Image"]
      409 SETTABLEKS                       R27 R26 K99 ["Icon"]
      411 GETTABLEKS                       R27 R2 K112 ["Tag"]
      413 LOADK                            R28 K115 ["IconOnly SecondaryHoverBackground"]
      414 SETTABLE                         R28 R26 R27
      415 SETLIST                          R25 R26 1 [1]
      417 SETTABLEKS                       R25 R24 K116 ["FullSpanMoreAction"]
      419 NEWTABLE                         R25 0 1
      421 NEWTABLE                         R26 4 0
      423 LOADK                            R27 K107 ["Menu"]
      424 SETTABLEKS                       R27 R26 K108 ["Id"]
      426 DUPTABLE                         R27 K110 [{"Image"}]
      427 GETTABLEKS                       R28 R23 K117 ["new"]
      429 CALL                             R28 0 1
      430 SETTABLEKS                       R28 R27 K109 ["Image"]
      432 SETTABLEKS                       R27 R26 K99 ["Icon"]
      434 GETTABLEKS                       R27 R2 K112 ["Tag"]
      436 LOADK                            R28 K115 ["IconOnly SecondaryHoverBackground"]
      437 SETTABLE                         R28 R26 R27
      438 SETLIST                          R25 R26 1 [1]
      440 SETTABLEKS                       R25 R24 K118 ["CategoryPlusButtonAction"]
      442 DUPCLOSURE                       R25 K119 [PROTO_3]
      443 CAPTURE                          VAL R24
      444 SETTABLEKS                       R25 R24 K120 ["getAvailablePseudoSelector"]
      446 DUPCLOSURE                       R25 K121 [PROTO_5]
      447 CAPTURE                          VAL R7
      448 CAPTURE                          VAL R24
      449 SETTABLEKS                       R25 R24 K122 ["getStyleSheetCategoryActions"]
      451 DUPCLOSURE                       R25 K123 [PROTO_7]
      452 CAPTURE                          VAL R7
      453 SETTABLEKS                       R25 R24 K124 ["getAttributeTypeActions"]
      455 DUPCLOSURE                       R25 K125 [PROTO_9]
      456 CAPTURE                          VAL R7
      457 CAPTURE                          VAL R24
      458 SETTABLEKS                       R25 R24 K126 ["getClassTypeActions"]
      460 DUPCLOSURE                       R25 K127 [PROTO_15]
      461 CAPTURE                          VAL R7
      462 CAPTURE                          VAL R9
      463 CAPTURE                          VAL R24
      464 CAPTURE                          VAL R23
      465 CAPTURE                          VAL R6
      466 CAPTURE                          VAL R14
      467 CAPTURE                          VAL R18
      468 CAPTURE                          VAL R21
      469 CAPTURE                          VAL R17
      470 SETTABLEKS                       R25 R24 K128 ["getNewSelectorAction"]
      472 DUPCLOSURE                       R25 K129 [PROTO_16]
      473 CAPTURE                          VAL R23
      474 SETTABLEKS                       R25 R24 K130 ["getRenameAction"]
      476 DUPCLOSURE                       R25 K131 [PROTO_18]
      477 CAPTURE                          VAL R24
      478 CAPTURE                          VAL R7
      479 CAPTURE                          VAL R9
      480 SETTABLEKS                       R25 R24 K132 ["buildMenu"]
      482 DUPCLOSURE                       R25 K133 [PROTO_20]
      483 CAPTURE                          VAL R24
      484 SETTABLEKS                       R25 R24 K134 ["decorateClickHandlers"]
      486 DUPCLOSURE                       R25 K135 [PROTO_22]
      487 CAPTURE                          VAL R24
      488 CAPTURE                          VAL R10
      489 CAPTURE                          VAL R11
      490 SETTABLEKS                       R25 R24 K136 ["trackClicks"]
      492 DUPCLOSURE                       R25 K137 [PROTO_23]
      493 CAPTURE                          VAL R24
      494 CAPTURE                          VAL R5
      495 SETTABLEKS                       R25 R24 K14 ["showContextMenu"]
      497 DUPCLOSURE                       R25 K138 [PROTO_25]
      498 CAPTURE                          VAL R8
      499 SETTABLEKS                       R25 R24 K139 ["filterHiddenActions"]
      501 RETURN                           R24 1
