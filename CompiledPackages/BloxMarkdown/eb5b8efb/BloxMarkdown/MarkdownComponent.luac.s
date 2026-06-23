PROTO_0:
        0 LOADK                            R4 K1 ["^%s*(.-)%s*$"]
        1 NAMECALL                         R2 R0 K2 ["match"]
        3 CALL                             R2 2 1
        4 ORK                              R1 R2 K0 [""]
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["attributes"]
        2 GETTABLEKS                       R3 R3 K1 ["tagName"]
        4 GETTABLE                         R4 R1 R3
        5 JUMPIF                           R4 ; [+29]
        6 JUMPIFNOT                        R2 ; [+26]
        7 NEWTABLE                         R5 0 0
        9 MOVE                             R6 R1
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       15 MOVE                             R12 R5
       16 MOVE                             R13 R9
       17 GETIMPORT                        R11 K4 [table.insert]
       19 CALL                             R11 2 0
       20 FORGLOOP                         R6 1 ; [-8]
       22 MOVE                             R6 R2
       23 LOADK                            R8 K5 ["[MarkdownComponent] Unknown component: "]
       24 MOVE                             R9 R3
       25 LOADK                            R10 K6 [" | available: "]
       26 GETIMPORT                        R11 K8 [table.concat]
       28 MOVE                             R12 R5
       29 LOADK                            R13 K9 [", "]
       30 CALL                             R11 2 1
       31 CONCAT                           R7 R8 R11
       32 CALL                             R6 1 0
       33 LOADNIL                          R5
       34 RETURN                           R5 1
       35 NEWTABLE                         R5 2 0
       37 GETTABLEKS                       R6 R0 K0 ["attributes"]
       39 GETTABLEKS                       R6 R6 K10 ["props"]
       41 LOADNIL                          R7
       42 LOADNIL                          R8
       43 FORGPREP                         R6
       44 SETTABLE                         R10 R5 R9
       45 FORGLOOP                         R6 2 ; [-2]
       47 JUMPIFEQKS                       R3 K11 ["todo"] ; [+3]
       49 JUMPIFNOTEQKS                    R3 K12 ["Todo"] ; [+131]
       51 NEWTABLE                         R6 0 0
       53 NEWTABLE                         R7 0 0
       55 GETTABLEKS                       R8 R0 K13 ["children"]
       57 LOADNIL                          R9
       58 LOADNIL                          R10
       59 FORGPREP                         R8
       60 GETTABLEKS                       R13 R12 K14 ["name"]
       62 JUMPIFNOTEQKS                    R13 K15 ["INLINE_TEXT"] ; [+11]
       64 GETTABLEKS                       R16 R12 K17 ["text"]
       66 ORK                              R15 R16 K16 [""]
       67 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       69 MOVE                             R14 R6
       70 GETIMPORT                        R13 K4 [table.insert]
       72 CALL                             R13 2 0
       73 JUMP                             ; [+91]
       74 GETTABLEKS                       R13 R12 K14 ["name"]
       76 JUMPIFNOTEQKS                    R13 K18 ["COMPONENT"] ; [+88]
       78 GETTABLEKS                       R13 R12 K0 ["attributes"]
       80 JUMPIFNOT                        R13 ; [+4]
       81 GETTABLEKS                       R13 R12 K0 ["attributes"]
       83 GETTABLEKS                       R13 R13 K1 ["tagName"]
       85 JUMPIFEQKS                       R13 K19 ["choice"] ; [+3]
       87 JUMPIFNOTEQKS                    R13 K20 ["Choice"] ; [+77]
       89 GETTABLEKS                       R14 R12 K0 ["attributes"]
       91 GETTABLEKS                       R14 R14 K10 ["props"]
       93 JUMPIFNOT                        R14 ; [+6]
       94 GETTABLEKS                       R14 R12 K0 ["attributes"]
       96 GETTABLEKS                       R14 R14 K10 ["props"]
       98 GETTABLEKS                       R14 R14 K21 ["label"]
      100 FASTCALL1                        TYPE R14 ; [+3]
      101 MOVE                             R16 R14
      102 GETIMPORT                        R15 K23 [type]
      104 CALL                             R15 1 1
      105 JUMPIFNOTEQKS                    R15 K24 ["string"] ; [+13]
      107 LENGTH                           R15 R14
      108 LOADN                            R16 0
      109 JUMPIFNOTLT                      R16 R15 ; [+9]
      111 FASTCALL2                        TABLE_INSERT R7 R14 ; [+5]
      113 MOVE                             R16 R7
      114 MOVE                             R17 R14
      115 GETIMPORT                        R15 K4 [table.insert]
      117 CALL                             R15 2 0
      118 JUMP                             ; [+46]
      119 NEWTABLE                         R15 0 0
      121 GETTABLEKS                       R16 R12 K13 ["children"]
      123 JUMPIF                           R16 ; [+2]
      124 NEWTABLE                         R16 0 0
      126 LOADNIL                          R17
      127 LOADNIL                          R18
      128 FORGPREP                         R16
      129 GETTABLEKS                       R21 R20 K14 ["name"]
      131 JUMPIFNOTEQKS                    R21 K15 ["INLINE_TEXT"] ; [+10]
      133 GETTABLEKS                       R24 R20 K17 ["text"]
      135 ORK                              R23 R24 K16 [""]
      136 FASTCALL2                        TABLE_INSERT R15 R23 ; [+4]
      138 MOVE                             R22 R15
      139 GETIMPORT                        R21 K4 [table.insert]
      141 CALL                             R21 2 0
      142 FORGLOOP                         R16 2 ; [-14]
      144 GETIMPORT                        R17 K8 [table.concat]
      146 MOVE                             R18 R15
      147 LOADK                            R19 K25 [" "]
      148 CALL                             R17 2 1
      149 LOADK                            R20 K26 ["^%s*(.-)%s*$"]
      150 NAMECALL                         R18 R17 K27 ["match"]
      152 CALL                             R18 2 1
      153 ORK                              R16 R18 K16 [""]
      154 LENGTH                           R17 R16
      155 LOADN                            R18 0
      156 JUMPIFNOTLT                      R18 R17 ; [+8]
      158 FASTCALL2                        TABLE_INSERT R7 R16 ; [+5]
      160 MOVE                             R18 R7
      161 MOVE                             R19 R16
      162 GETIMPORT                        R17 K4 [table.insert]
      164 CALL                             R17 2 0
      165 FORGLOOP                         R8 2 ; [-106]
      167 GETIMPORT                        R9 K8 [table.concat]
      169 MOVE                             R10 R6
      170 LOADK                            R11 K25 [" "]
      171 CALL                             R9 2 1
      172 LOADK                            R12 K26 ["^%s*(.-)%s*$"]
      173 NAMECALL                         R10 R9 K27 ["match"]
      175 CALL                             R10 2 1
      176 ORK                              R8 R10 K16 [""]
      177 SETTABLEKS                       R8 R5 K28 ["promptText"]
      179 SETTABLEKS                       R7 R5 K29 ["choiceLabels"]
      181 GETTABLEKS                       R6 R0 K13 ["children"]
      183 LOADNIL                          R7
      184 LOADNIL                          R8
      185 FORGPREP                         R6
      186 GETTABLEKS                       R11 R10 K14 ["name"]
      188 JUMPIFNOTEQKS                    R11 K18 ["COMPONENT"] ; [+34]
      190 GETTABLEKS                       R11 R10 K0 ["attributes"]
      192 JUMPIFNOT                        R11 ; [+4]
      193 GETTABLEKS                       R11 R10 K0 ["attributes"]
      195 GETTABLEKS                       R11 R11 K1 ["tagName"]
      197 JUMPIFEQKS                       R3 K11 ["todo"] ; [+4]
      199 LOADB                            R12 0
      200 JUMPIFNOTEQKS                    R3 K12 ["Todo"] ; [+8]
      202 LOADB                            R12 1
      203 JUMPIFEQKS                       R11 K19 ["choice"] ; [+5]
      205 JUMPIFEQKS                       R11 K20 ["Choice"] ; [+2]
      207 LOADB                            R12 0 +1
      208 LOADB                            R12 1
      209 JUMPIF                           R12 ; [+13]
      210 GETUPVAL                         R13 0
      211 MOVE                             R14 R10
      212 MOVE                             R15 R1
      213 MOVE                             R16 R2
      214 CALL                             R13 3 1
      215 JUMPIFNOT                        R13 ; [+7]
      216 FASTCALL2                        TABLE_INSERT R5 R13 ; [+5]
      218 MOVE                             R15 R5
      219 MOVE                             R16 R13
      220 GETIMPORT                        R14 K4 [table.insert]
      222 CALL                             R14 2 0
      223 FORGLOOP                         R6 2 ; [-38]
      225 MOVE                             R6 R4
      226 MOVE                             R7 R5
      227 CALL                             R6 1 -1
      228 RETURN                           R6 -1

PROTO_2:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R1 R0 K0 ["store"]
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K1 ["update"]
       12 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 MOVE                             R3 R2
        3 GETTABLEKS                       R4 R0 K1 ["node"]
        5 CALL                             R3 1 1
        6 MOVE                             R4 R2
        7 GETTABLEKS                       R5 R0 K2 ["componentModules"]
        9 CALL                             R4 1 1
       10 JUMPIF                           R4 ; [+2]
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R2
       14 GETTABLEKS                       R6 R0 K3 ["componentStore"]
       16 CALL                             R5 1 1
       17 MOVE                             R6 R2
       18 GETTABLEKS                       R7 R0 K4 ["updateComponentStore"]
       20 CALL                             R6 1 1
       21 MOVE                             R7 R2
       22 GETTABLEKS                       R8 R0 K5 ["onWarn"]
       24 CALL                             R7 1 1
       25 LOADNIL                          R8
       26 JUMPIFNOT                        R3 ; [+52]
       27 GETTABLEKS                       R9 R3 K6 ["attributes"]
       29 JUMPIFNOT                        R9 ; [+49]
       30 GETUPVAL                         R9 0
       31 MOVE                             R10 R3
       32 MOVE                             R11 R4
       33 MOVE                             R12 R7
       34 CALL                             R9 3 1
       35 JUMPIFNOT                        R9 ; [+43]
       36 GETTABLEKS                       R10 R4 K7 ["ComponentStyles"]
       38 NEWTABLE                         R11 0 1
       40 MOVE                             R12 R9
       41 SETLIST                          R11 R12 1 [1]
       43 JUMPIFNOT                        R10 ; [+9]
       44 MOVE                             R13 R11
       45 MOVE                             R14 R10
       46 NEWTABLE                         R15 0 0
       48 CALL                             R14 1 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R12 K10 [table.insert]
       52 CALL                             R12 -1 0
       53 LOADK                            R13 K11 ["DynComp_%*_%*"]
       54 GETTABLEKS                       R15 R3 K6 ["attributes"]
       56 GETTABLEKS                       R15 R15 K12 ["tagName"]
       58 GETTABLEKS                       R16 R3 K13 ["index"]
       60 NAMECALL                         R13 R13 K14 ["format"]
       62 CALL                             R13 3 1
       63 MOVE                             R12 R13
       64 GETUPVAL                         R13 1
       65 MOVE                             R14 R12
       66 NEWTABLE                         R15 0 0
       68 MOVE                             R16 R11
       69 NEWCLOSURE                       R17 P0
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 CALL                             R13 4 1
       73 GETUPVAL                         R14 2
       74 GETTABLEKS                       R14 R14 K15 ["addStaticCustomTemplate"]
       76 MOVE                             R15 R13
       77 CALL                             R14 1 0
       78 MOVE                             R8 R13
       79 DUPTABLE                         R9 K18 [{"componentTemplate", "LayoutOrder"}]
       80 SETTABLEKS                       R8 R9 K16 ["componentTemplate"]
       82 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
       84 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       86 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["TemplateResolver"]
       20 GETTABLEKS                       R6 R2 K11 ["Frame"]
       22 GETTABLEKS                       R7 R2 K12 ["Put"]
       24 DUPCLOSURE                       R8 K13 [PROTO_0]
       25 DUPCLOSURE                       R9 K14 [PROTO_1]
       26 CAPTURE                          VAL R9
       27 MOVE                             R10 R4
       28 LOADK                            R11 K15 ["MarkdownComponent"]
       29 DUPTABLE                         R12 K22 [{"node", "componentModules", "componentStore", "updateComponentStore", "LayoutOrder", "onWarn"}]
       30 NEWTABLE                         R13 0 0
       32 SETTABLEKS                       R13 R12 K16 ["node"]
       34 NEWTABLE                         R13 0 0
       36 SETTABLEKS                       R13 R12 K17 ["componentModules"]
       38 LOADNIL                          R13
       39 SETTABLEKS                       R13 R12 K18 ["componentStore"]
       41 LOADNIL                          R13
       42 SETTABLEKS                       R13 R12 K19 ["updateComponentStore"]
       44 LOADN                            R13 0
       45 SETTABLEKS                       R13 R12 K20 ["LayoutOrder"]
       47 LOADNIL                          R13
       48 SETTABLEKS                       R13 R12 K21 ["onWarn"]
       50 NEWTABLE                         R13 0 1
       52 MOVE                             R14 R6
       53 NEWTABLE                         R15 4 1
       55 LOADK                            R17 K23 ["ComponentHost"]
       56 SETTABLEKS                       R17 R15 K24 ["Name"]
       58 LOADK                            R17 K25 ["box auto-xy fill-x"]
       59 SETTABLEKS                       R17 R15 K26 ["Tags"]
       61 MOVE                             R17 R3
       62 LOADK                            R18 K20 ["LayoutOrder"]
       63 CALL                             R17 1 1
       64 SETTABLEKS                       R17 R15 K20 ["LayoutOrder"]
       66 MOVE                             R16 R7
       67 DUPTABLE                         R17 K28 [{"Template"}]
       68 MOVE                             R18 R3
       69 LOADK                            R19 K29 ["componentTemplate"]
       70 CALL                             R18 1 1
       71 SETTABLEKS                       R18 R17 K27 ["Template"]
       73 CALL                             R16 1 -1
       74 SETLIST                          R15 R16 -1 [1]
       76 CALL                             R14 1 -1
       77 SETLIST                          R13 R14 -1 [1]
       79 DUPCLOSURE                       R14 K30 [PROTO_3]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 CALL                             R10 4 1
       84 RETURN                           R10 1
