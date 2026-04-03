PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+44]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       12 LOADK                            R4 K3 ["Expected contextItemsList to be a table."]
       13 GETIMPORT                        R2 K5 [assert]
       15 CALL                             R2 2 0
       16 LOADB                            R3 1
       17 GETIMPORT                        R5 K7 [next]
       19 MOVE                             R6 R0
       20 CALL                             R5 1 1
       21 FASTCALL1                        TYPE R5 ; [+2]
       22 GETIMPORT                        R4 K1 [type]
       24 CALL                             R4 1 1
       25 JUMPIFEQKS                       R4 K8 ["number"] ; [+13]
       27 GETIMPORT                        R5 K7 [next]
       29 MOVE                             R6 R0
       30 CALL                             R5 1 1
       31 FASTCALL1                        TYPE R5 ; [+2]
       32 GETIMPORT                        R4 K1 [type]
       34 CALL                             R4 1 1
       35 JUMPIFEQKS                       R4 K9 ["nil"] ; [+2]
       37 LOADB                            R3 0 +1
       38 LOADB                            R3 1
       39 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       41 LOADK                            R4 K10 ["Expected contextItemsList to be an array."]
       42 GETIMPORT                        R2 K5 [assert]
       44 CALL                             R2 2 0
       45 FASTCALL1                        TYPE R1 ; [+3]
       46 MOVE                             R5 R1
       47 GETIMPORT                        R4 K1 [type]
       49 CALL                             R4 1 1
       50 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       52 LOADB                            R3 0 +1
       53 LOADB                            R3 1
       54 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       56 LOADK                            R4 K11 ["Expected children to be a table."]
       57 GETIMPORT                        R2 K5 [assert]
       59 CALL                             R2 2 0
       60 GETIMPORT                        R5 K7 [next]
       62 MOVE                             R6 R1
       63 CALL                             R5 1 1
       64 FASTCALL1                        TYPE R5 ; [+2]
       65 GETIMPORT                        R4 K1 [type]
       67 CALL                             R4 1 1
       68 JUMPIFEQKS                       R4 K12 ["string"] ; [+2]
       70 LOADB                            R3 0 +1
       71 LOADB                            R3 1
       72 FASTCALL2K                       ASSERT R3 K13 ; [+4]
       74 LOADK                            R4 K13 ["Expected children to be a map of components."]
       75 GETIMPORT                        R2 K5 [assert]
       77 CALL                             R2 2 0
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R2 R3 K14 ["new"]
       81 CALL                             R2 0 1
       82 NEWTABLE                         R3 0 0
       84 GETIMPORT                        R4 K16 [Instance.new]
       86 LOADK                            R5 K17 ["ScreenGui"]
       87 CALL                             R4 1 1
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R6 R7 K18 ["Focus"]
       91 GETTABLEKS                       R5 R6 K14 ["new"]
       93 MOVE                             R6 R4
       94 CALL                             R5 1 1
       95 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       97 MOVE                             R7 R3
       98 MOVE                             R8 R5
       99 GETIMPORT                        R6 K20 [table.insert]
      101 CALL                             R6 2 0
      102 GETUPVAL                         R8 1
      103 GETTABLEKS                       R7 R8 K21 ["Localization"]
      105 GETTABLEKS                       R6 R7 K22 ["mock"]
      107 DUPTABLE                         R7 K24 [{"libraries"}]
      108 NEWTABLE                         R8 1 0
      110 GETUPVAL                         R10 2
      111 GETTABLEKS                       R9 R10 K25 ["LOCALIZATION_PROJECT_NAME"]
      113 DUPTABLE                         R10 K28 [{"stringResourceTable", "translationResourceTable"}]
      114 GETUPVAL                         R12 2
      115 GETTABLEKS                       R11 R12 K29 ["SourceStrings"]
      117 SETTABLEKS                       R11 R10 K26 ["stringResourceTable"]
      119 GETUPVAL                         R12 2
      120 GETTABLEKS                       R11 R12 K30 ["LocalizedStrings"]
      122 SETTABLEKS                       R11 R10 K27 ["translationResourceTable"]
      124 SETTABLE                         R10 R8 R9
      125 SETTABLEKS                       R8 R7 K23 ["libraries"]
      127 CALL                             R6 1 1
      128 FASTCALL2                        TABLE_INSERT R3 R6 ; [+5]
      130 MOVE                             R8 R3
      131 MOVE                             R9 R6
      132 GETIMPORT                        R7 K20 [table.insert]
      134 CALL                             R7 2 0
      135 GETUPVAL                         R9 1
      136 GETTABLEKS                       R8 R9 K31 ["Mouse"]
      138 GETTABLEKS                       R7 R8 K14 ["new"]
      140 NAMECALL                         R8 R2 K32 ["GetMouse"]
      142 CALL                             R8 1 -1
      143 CALL                             R7 -1 1
      144 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
      146 MOVE                             R9 R3
      147 MOVE                             R10 R7
      148 GETIMPORT                        R8 K20 [table.insert]
      150 CALL                             R8 2 0
      151 GETUPVAL                         R10 1
      152 GETTABLEKS                       R9 R10 K33 ["Navigation"]
      154 GETTABLEKS                       R8 R9 K14 ["new"]
      156 NEWTABLE                         R9 0 0
      158 CALL                             R8 1 1
      159 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      161 MOVE                             R10 R3
      162 MOVE                             R11 R8
      163 GETIMPORT                        R9 K20 [table.insert]
      165 CALL                             R9 2 0
      166 GETUPVAL                         R11 1
      167 GETTABLEKS                       R10 R11 K34 ["Analytics"]
      169 GETTABLEKS                       R9 R10 K22 ["mock"]
      171 CALL                             R9 0 1
      172 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      174 MOVE                             R11 R3
      175 MOVE                             R12 R9
      176 GETIMPORT                        R10 K20 [table.insert]
      178 CALL                             R10 2 0
      179 GETUPVAL                         R12 1
      180 GETTABLEKS                       R11 R12 K35 ["Plugin"]
      182 GETTABLEKS                       R10 R11 K14 ["new"]
      184 MOVE                             R11 R2
      185 CALL                             R10 1 1
      186 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      188 MOVE                             R12 R3
      189 MOVE                             R13 R10
      190 GETIMPORT                        R11 K20 [table.insert]
      192 CALL                             R11 2 0
      193 GETUPVAL                         R13 1
      194 GETTABLEKS                       R12 R13 K36 ["PluginActions"]
      196 GETTABLEKS                       R11 R12 K14 ["new"]
      198 MOVE                             R12 R2
      199 NEWTABLE                         R13 0 0
      201 CALL                             R11 2 1
      202 FASTCALL2                        TABLE_INSERT R3 R11 ; [+5]
      204 MOVE                             R13 R3
      205 MOVE                             R14 R11
      206 GETIMPORT                        R12 K20 [table.insert]
      208 CALL                             R12 2 0
      209 GETUPVAL                         R14 3
      210 GETTABLEKS                       R13 R14 K37 ["Store"]
      212 GETTABLEKS                       R12 R13 K14 ["new"]
      214 DUPCLOSURE                       R13 K38 [PROTO_0]
      215 CALL                             R12 1 1
      216 GETUPVAL                         R15 1
      217 GETTABLEKS                       R14 R15 K37 ["Store"]
      219 GETTABLEKS                       R13 R14 K14 ["new"]
      221 MOVE                             R14 R12
      222 CALL                             R13 1 1
      223 FASTCALL2                        TABLE_INSERT R3 R13 ; [+5]
      225 MOVE                             R15 R3
      226 MOVE                             R16 R13
      227 GETIMPORT                        R14 K20 [table.insert]
      229 CALL                             R14 2 0
      230 GETUPVAL                         R15 4
      231 GETTABLEKS                       R14 R15 K22 ["mock"]
      233 CALL                             R14 0 1
      234 FASTCALL2                        TABLE_INSERT R3 R14 ; [+5]
      236 MOVE                             R16 R3
      237 MOVE                             R17 R14
      238 GETIMPORT                        R15 K20 [table.insert]
      240 CALL                             R15 2 0
      241 GETUPVAL                         R17 1
      242 GETTABLEKS                       R16 R17 K39 ["Design"]
      244 GETTABLEKS                       R15 R16 K22 ["mock"]
      246 GETIMPORT                        R16 K16 [Instance.new]
      248 LOADK                            R17 K40 ["StyleSheet"]
      249 CALL                             R16 1 -1
      250 CALL                             R15 -1 1
      251 FASTCALL2                        TABLE_INSERT R3 R15 ; [+5]
      253 MOVE                             R17 R3
      254 MOVE                             R18 R15
      255 GETIMPORT                        R16 K20 [table.insert]
      257 CALL                             R16 2 0
      258 JUMPIFNOT                        R0 ; [+14]
      259 GETIMPORT                        R16 K42 [ipairs]
      261 MOVE                             R17 R0
      262 CALL                             R16 1 3
      263 FORGPREP_INEXT                   R16
      264 FASTCALL2                        TABLE_INSERT R3 R20 ; [+5]
      266 MOVE                             R22 R3
      267 MOVE                             R23 R20
      268 GETIMPORT                        R21 K20 [table.insert]
      270 CALL                             R21 2 0
      271 FORGLOOP                         R16 2 [inext] ; [-8]
      273 GETUPVAL                         R17 1
      274 GETTABLEKS                       R16 R17 K43 ["provide"]
      276 MOVE                             R17 R3
      277 MOVE                             R18 R1
      278 CALL                             R16 2 -1
      279 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["ContextServices"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R6 R0 K8 ["TestHelpers"]
       23 GETTABLEKS                       R5 R6 K9 ["Instances"]
       25 GETTABLEKS                       R4 R5 K10 ["MockPlugin"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R6 R0 K2 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["Rodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Style"]
       39 GETTABLEKS                       R7 R8 K13 ["Themes"]
       41 GETTABLEKS                       R6 R7 K14 ["StudioTheme"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Resources"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K16 [PROTO_1]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 RETURN                           R7 1
