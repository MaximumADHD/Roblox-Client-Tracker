PROTO_0:
        0 LOADK                            R4 K1 ["^%s*(.-)%s*$"]
        1 NAMECALL                         R2 R0 K2 ["match"]
        3 CALL                             R2 2 1
        4 ORK                              R1 R2 K0 [""]
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["attributes"]
        2 GETTABLEKS                       R2 R2 K1 ["tagName"]
        4 GETIMPORT                        R3 K3 [print]
        6 LOADK                            R4 K4 ["[MarkdownComponent] Building component for tag:"]
        7 MOVE                             R5 R2
        8 CALL                             R3 2 0
        9 GETTABLE                         R3 R1 R2
       10 JUMPIF                           R3 ; [+28]
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R1
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       19 MOVE                             R11 R4
       20 MOVE                             R12 R8
       21 GETIMPORT                        R10 K7 [table.insert]
       23 CALL                             R10 2 0
       24 FORGLOOP                         R5 1 ; [-8]
       26 GETIMPORT                        R5 K9 [warn]
       28 LOADK                            R6 K10 ["[MarkdownComponent] Unknown component:"]
       29 MOVE                             R7 R2
       30 LOADK                            R8 K11 ["| available:"]
       31 GETIMPORT                        R9 K13 [table.concat]
       33 MOVE                             R10 R4
       34 LOADK                            R11 K14 [", "]
       35 CALL                             R9 2 -1
       36 CALL                             R5 -1 0
       37 LOADNIL                          R5
       38 RETURN                           R5 1
       39 NEWTABLE                         R4 2 0
       41 GETTABLEKS                       R5 R0 K0 ["attributes"]
       43 GETTABLEKS                       R5 R5 K15 ["props"]
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 FORGPREP                         R5
       48 SETTABLE                         R9 R4 R8
       49 FORGLOOP                         R5 2 ; [-2]
       51 JUMPIFEQKS                       R2 K16 ["todo"] ; [+3]
       53 JUMPIFNOTEQKS                    R2 K17 ["Todo"] ; [+131]
       55 NEWTABLE                         R5 0 0
       57 NEWTABLE                         R6 0 0
       59 GETTABLEKS                       R7 R0 K18 ["children"]
       61 LOADNIL                          R8
       62 LOADNIL                          R9
       63 FORGPREP                         R7
       64 GETTABLEKS                       R12 R11 K19 ["name"]
       66 JUMPIFNOTEQKS                    R12 K20 ["INLINE_TEXT"] ; [+11]
       68 GETTABLEKS                       R15 R11 K22 ["text"]
       70 ORK                              R14 R15 K21 [""]
       71 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       73 MOVE                             R13 R5
       74 GETIMPORT                        R12 K7 [table.insert]
       76 CALL                             R12 2 0
       77 JUMP                             ; [+91]
       78 GETTABLEKS                       R12 R11 K19 ["name"]
       80 JUMPIFNOTEQKS                    R12 K23 ["COMPONENT"] ; [+88]
       82 GETTABLEKS                       R12 R11 K0 ["attributes"]
       84 JUMPIFNOT                        R12 ; [+4]
       85 GETTABLEKS                       R12 R11 K0 ["attributes"]
       87 GETTABLEKS                       R12 R12 K1 ["tagName"]
       89 JUMPIFEQKS                       R12 K24 ["choice"] ; [+3]
       91 JUMPIFNOTEQKS                    R12 K25 ["Choice"] ; [+77]
       93 GETTABLEKS                       R13 R11 K0 ["attributes"]
       95 GETTABLEKS                       R13 R13 K15 ["props"]
       97 JUMPIFNOT                        R13 ; [+6]
       98 GETTABLEKS                       R13 R11 K0 ["attributes"]
      100 GETTABLEKS                       R13 R13 K15 ["props"]
      102 GETTABLEKS                       R13 R13 K26 ["label"]
      104 FASTCALL1                        TYPE R13 ; [+3]
      105 MOVE                             R15 R13
      106 GETIMPORT                        R14 K28 [type]
      108 CALL                             R14 1 1
      109 JUMPIFNOTEQKS                    R14 K29 ["string"] ; [+13]
      111 LENGTH                           R14 R13
      112 LOADN                            R15 0
      113 JUMPIFNOTLT                      R15 R14 ; [+9]
      115 FASTCALL2                        TABLE_INSERT R6 R13 ; [+5]
      117 MOVE                             R15 R6
      118 MOVE                             R16 R13
      119 GETIMPORT                        R14 K7 [table.insert]
      121 CALL                             R14 2 0
      122 JUMP                             ; [+46]
      123 NEWTABLE                         R14 0 0
      125 GETTABLEKS                       R15 R11 K18 ["children"]
      127 JUMPIF                           R15 ; [+2]
      128 NEWTABLE                         R15 0 0
      130 LOADNIL                          R16
      131 LOADNIL                          R17
      132 FORGPREP                         R15
      133 GETTABLEKS                       R20 R19 K19 ["name"]
      135 JUMPIFNOTEQKS                    R20 K20 ["INLINE_TEXT"] ; [+10]
      137 GETTABLEKS                       R23 R19 K22 ["text"]
      139 ORK                              R22 R23 K21 [""]
      140 FASTCALL2                        TABLE_INSERT R14 R22 ; [+4]
      142 MOVE                             R21 R14
      143 GETIMPORT                        R20 K7 [table.insert]
      145 CALL                             R20 2 0
      146 FORGLOOP                         R15 2 ; [-14]
      148 GETIMPORT                        R16 K13 [table.concat]
      150 MOVE                             R17 R14
      151 LOADK                            R18 K30 [" "]
      152 CALL                             R16 2 1
      153 LOADK                            R19 K31 ["^%s*(.-)%s*$"]
      154 NAMECALL                         R17 R16 K32 ["match"]
      156 CALL                             R17 2 1
      157 ORK                              R15 R17 K21 [""]
      158 LENGTH                           R16 R15
      159 LOADN                            R17 0
      160 JUMPIFNOTLT                      R17 R16 ; [+8]
      162 FASTCALL2                        TABLE_INSERT R6 R15 ; [+5]
      164 MOVE                             R17 R6
      165 MOVE                             R18 R15
      166 GETIMPORT                        R16 K7 [table.insert]
      168 CALL                             R16 2 0
      169 FORGLOOP                         R7 2 ; [-106]
      171 GETIMPORT                        R8 K13 [table.concat]
      173 MOVE                             R9 R5
      174 LOADK                            R10 K30 [" "]
      175 CALL                             R8 2 1
      176 LOADK                            R11 K31 ["^%s*(.-)%s*$"]
      177 NAMECALL                         R9 R8 K32 ["match"]
      179 CALL                             R9 2 1
      180 ORK                              R7 R9 K21 [""]
      181 SETTABLEKS                       R7 R4 K33 ["promptText"]
      183 SETTABLEKS                       R6 R4 K34 ["choiceLabels"]
      185 GETTABLEKS                       R5 R0 K18 ["children"]
      187 LOADNIL                          R6
      188 LOADNIL                          R7
      189 FORGPREP                         R5
      190 GETTABLEKS                       R10 R9 K19 ["name"]
      192 JUMPIFNOTEQKS                    R10 K23 ["COMPONENT"] ; [+33]
      194 GETTABLEKS                       R10 R9 K0 ["attributes"]
      196 JUMPIFNOT                        R10 ; [+4]
      197 GETTABLEKS                       R10 R9 K0 ["attributes"]
      199 GETTABLEKS                       R10 R10 K1 ["tagName"]
      201 JUMPIFEQKS                       R2 K16 ["todo"] ; [+4]
      203 LOADB                            R11 0
      204 JUMPIFNOTEQKS                    R2 K17 ["Todo"] ; [+8]
      206 LOADB                            R11 1
      207 JUMPIFEQKS                       R10 K24 ["choice"] ; [+5]
      209 JUMPIFEQKS                       R10 K25 ["Choice"] ; [+2]
      211 LOADB                            R11 0 +1
      212 LOADB                            R11 1
      213 JUMPIF                           R11 ; [+12]
      214 GETUPVAL                         R12 0
      215 MOVE                             R13 R9
      216 MOVE                             R14 R1
      217 CALL                             R12 2 1
      218 JUMPIFNOT                        R12 ; [+7]
      219 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
      221 MOVE                             R14 R4
      222 MOVE                             R15 R12
      223 GETIMPORT                        R13 K7 [table.insert]
      225 CALL                             R13 2 0
      226 FORGLOOP                         R5 2 ; [-37]
      228 MOVE                             R5 R3
      229 MOVE                             R6 R4
      230 CALL                             R5 1 -1
      231 RETURN                           R5 -1

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
       21 LOADNIL                          R7
       22 JUMPIFNOT                        R3 ; [+51]
       23 GETTABLEKS                       R8 R3 K5 ["attributes"]
       25 JUMPIFNOT                        R8 ; [+48]
       26 GETUPVAL                         R8 0
       27 MOVE                             R9 R3
       28 MOVE                             R10 R4
       29 CALL                             R8 2 1
       30 JUMPIFNOT                        R8 ; [+43]
       31 GETTABLEKS                       R9 R4 K6 ["ComponentStyles"]
       33 NEWTABLE                         R10 0 1
       35 MOVE                             R11 R8
       36 SETLIST                          R10 R11 1 [1]
       38 JUMPIFNOT                        R9 ; [+9]
       39 MOVE                             R12 R10
       40 MOVE                             R13 R9
       41 NEWTABLE                         R14 0 0
       43 CALL                             R13 1 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R11 K9 [table.insert]
       47 CALL                             R11 -1 0
       48 LOADK                            R12 K10 ["DynComp_%*_%*"]
       49 GETTABLEKS                       R14 R3 K5 ["attributes"]
       51 GETTABLEKS                       R14 R14 K11 ["tagName"]
       53 GETTABLEKS                       R15 R3 K12 ["index"]
       55 NAMECALL                         R12 R12 K13 ["format"]
       57 CALL                             R12 3 1
       58 MOVE                             R11 R12
       59 GETUPVAL                         R12 1
       60 MOVE                             R13 R11
       61 NEWTABLE                         R14 0 0
       63 MOVE                             R15 R10
       64 NEWCLOSURE                       R16 P0
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CALL                             R12 4 1
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R13 R13 K14 ["addStaticCustomTemplate"]
       71 MOVE                             R14 R12
       72 CALL                             R13 1 0
       73 MOVE                             R7 R12
       74 DUPTABLE                         R8 K17 [{"componentTemplate", "LayoutOrder"}]
       75 SETTABLEKS                       R7 R8 K15 ["componentTemplate"]
       77 GETTABLEKS                       R9 R0 K16 ["LayoutOrder"]
       79 SETTABLEKS                       R9 R8 K16 ["LayoutOrder"]
       81 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["TemplateResolver"]
       18 GETTABLEKS                       R5 R1 K10 ["Frame"]
       20 GETTABLEKS                       R6 R1 K11 ["Put"]
       22 DUPCLOSURE                       R7 K12 [PROTO_0]
       23 DUPCLOSURE                       R8 K13 [PROTO_1]
       24 CAPTURE                          VAL R8
       25 MOVE                             R9 R3
       26 LOADK                            R10 K14 ["MarkdownComponent"]
       27 DUPTABLE                         R11 K20 [{"node", "componentModules", "componentStore", "updateComponentStore", "LayoutOrder"}]
       28 NEWTABLE                         R12 0 0
       30 SETTABLEKS                       R12 R11 K15 ["node"]
       32 NEWTABLE                         R12 0 0
       34 SETTABLEKS                       R12 R11 K16 ["componentModules"]
       36 LOADNIL                          R12
       37 SETTABLEKS                       R12 R11 K17 ["componentStore"]
       39 LOADNIL                          R12
       40 SETTABLEKS                       R12 R11 K18 ["updateComponentStore"]
       42 LOADN                            R12 0
       43 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
       45 NEWTABLE                         R12 0 1
       47 MOVE                             R13 R5
       48 NEWTABLE                         R14 4 1
       50 LOADK                            R16 K21 ["ComponentHost"]
       51 SETTABLEKS                       R16 R14 K22 ["Name"]
       53 LOADK                            R16 K23 ["box auto-xy fill-x"]
       54 SETTABLEKS                       R16 R14 K24 ["Tags"]
       56 MOVE                             R16 R2
       57 LOADK                            R17 K19 ["LayoutOrder"]
       58 CALL                             R16 1 1
       59 SETTABLEKS                       R16 R14 K19 ["LayoutOrder"]
       61 MOVE                             R15 R6
       62 DUPTABLE                         R16 K26 [{"Template"}]
       63 MOVE                             R17 R2
       64 LOADK                            R18 K27 ["componentTemplate"]
       65 CALL                             R17 1 1
       66 SETTABLEKS                       R17 R16 K25 ["Template"]
       68 CALL                             R15 1 -1
       69 SETLIST                          R14 R15 -1 [1]
       71 CALL                             R13 1 -1
       72 SETLIST                          R12 R13 -1 [1]
       74 DUPCLOSURE                       R13 K28 [PROTO_3]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R4
       78 CALL                             R9 4 1
       79 RETURN                           R9 1
