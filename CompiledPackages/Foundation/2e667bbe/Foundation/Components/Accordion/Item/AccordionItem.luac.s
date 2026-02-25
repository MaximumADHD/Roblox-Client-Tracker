PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["isExpanded"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useState"]
        9 GETTABLEKS                       R5 R2 K1 ["isExpanded"]
       11 CALL                             R4 1 2
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R6 R7 K2 ["useEffect"]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R8 0 1
       20 GETTABLEKS                       R9 R2 K1 ["isExpanded"]
       22 SETLIST                          R8 R9 1 [1]
       24 CALL                             R6 2 0
       25 GETUPVAL                         R6 4
       26 CALL                             R6 0 1
       27 GETTABLEKS                       R7 R6 K3 ["onAccordionItemActivated"]
       29 GETTABLEKS                       R8 R6 K4 ["itemSize"]
       31 GETUPVAL                         R9 5
       32 MOVE                             R10 R3
       33 MOVE                             R11 R8
       34 LOADB                            R12 0
       35 CALL                             R9 3 1
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R10 R11 K5 ["useCallback"]
       39 NEWCLOSURE                       R11 P1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R12 0 1
       44 MOVE                             R13 R4
       45 SETLIST                          R12 R13 1 [1]
       47 CALL                             R10 2 1
       48 GETTABLEKS                       R12 R2 K6 ["onActivated"]
       50 JUMPIFNOT                        R12 ; [+3]
       51 GETTABLEKS                       R11 R2 K6 ["onActivated"]
       53 JUMP                             ; [+8]
       54 JUMPIFNOT                        R7 ; [+6]
       55 MOVE                             R11 R7
       56 GETTABLEKS                       R12 R2 K7 ["id"]
       58 MOVE                             R13 R4
       59 CALL                             R11 2 1
       60 JUMP                             ; [+1]
       61 MOVE                             R11 R10
       62 LOADK                            R13 K8 ["%*--item-%*"]
       63 GETTABLEKS                       R15 R6 K9 ["testId"]
       65 GETTABLEKS                       R16 R2 K7 ["id"]
       67 NAMECALL                         R13 R13 K10 ["format"]
       69 CALL                             R13 3 1
       70 MOVE                             R12 R13
       71 SETTABLEKS                       R12 R2 K9 ["testId"]
       73 GETUPVAL                         R13 3
       74 GETTABLEKS                       R12 R13 K11 ["createElement"]
       76 GETUPVAL                         R13 6
       77 GETUPVAL                         R14 7
       78 MOVE                             R15 R2
       79 DUPTABLE                         R16 K16 [{"tag", "AutomaticSize", "stateLayer", "ref"}]
       80 GETTABLEKS                       R18 R9 K17 ["container"]
       82 GETTABLEKS                       R17 R18 K12 ["tag"]
       84 SETTABLEKS                       R17 R16 K12 ["tag"]
       86 GETIMPORT                        R17 K20 [Enum.AutomaticSize.Y]
       88 SETTABLEKS                       R17 R16 K13 ["AutomaticSize"]
       90 GETTABLEKS                       R18 R9 K17 ["container"]
       92 GETTABLEKS                       R17 R18 K14 ["stateLayer"]
       94 SETTABLEKS                       R17 R16 K14 ["stateLayer"]
       96 SETTABLEKS                       R1 R16 K15 ["ref"]
       98 CALL                             R14 2 1
       99 DUPTABLE                         R15 K24 [{"Header", "Content", "Divider"}]
      100 GETUPVAL                         R17 3
      101 GETTABLEKS                       R16 R17 K11 ["createElement"]
      103 GETUPVAL                         R17 6
      104 DUPTABLE                         R18 K26 [{"LayoutOrder", "tag", "onActivated", "testId"}]
      105 LOADN                            R19 1
      106 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      108 GETTABLEKS                       R20 R9 K27 ["header"]
      110 GETTABLEKS                       R19 R20 K12 ["tag"]
      112 SETTABLEKS                       R19 R18 K12 ["tag"]
      114 SETTABLEKS                       R11 R18 K6 ["onActivated"]
      116 LOADK                            R20 K28 ["%*--header"]
      117 GETTABLEKS                       R22 R2 K9 ["testId"]
      119 NAMECALL                         R20 R20 K10 ["format"]
      121 CALL                             R20 2 1
      122 MOVE                             R19 R20
      123 SETTABLEKS                       R19 R18 K9 ["testId"]
      125 DUPTABLE                         R19 K32 [{"LeadingIcon", "Title", "CollapseIcon"}]
      126 GETTABLEKS                       R21 R2 K33 ["leadingIcon"]
      128 JUMPIFNOT                        R21 ; [+64]
      129 GETUPVAL                         R21 3
      130 GETTABLEKS                       R20 R21 K11 ["createElement"]
      132 GETUPVAL                         R21 8
      133 DUPTABLE                         R22 K38 [{"LayoutOrder", "name", "variant", "style", "size", "testId"}]
      134 LOADN                            R23 1
      135 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      137 GETTABLEKS                       R25 R2 K33 ["leadingIcon"]
      139 FASTCALL1                        TYPE R25 ; [+2]
      140 GETIMPORT                        R24 K40 [type]
      142 CALL                             R24 1 1
      143 JUMPIFNOTEQKS                    R24 K41 ["table"] ; [+6]
      145 GETTABLEKS                       R24 R2 K33 ["leadingIcon"]
      147 GETTABLEKS                       R23 R24 K34 ["name"]
      149 JUMP                             ; [+2]
      150 GETTABLEKS                       R23 R2 K33 ["leadingIcon"]
      152 SETTABLEKS                       R23 R22 K34 ["name"]
      154 GETTABLEKS                       R25 R2 K33 ["leadingIcon"]
      156 FASTCALL1                        TYPE R25 ; [+2]
      157 GETIMPORT                        R24 K40 [type]
      159 CALL                             R24 1 1
      160 JUMPIFNOTEQKS                    R24 K41 ["table"] ; [+6]
      162 GETTABLEKS                       R24 R2 K33 ["leadingIcon"]
      164 GETTABLEKS                       R23 R24 K35 ["variant"]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R23
      168 SETTABLEKS                       R23 R22 K35 ["variant"]
      170 GETTABLEKS                       R24 R9 K42 ["icon"]
      172 GETTABLEKS                       R23 R24 K36 ["style"]
      174 SETTABLEKS                       R23 R22 K36 ["style"]
      176 GETTABLEKS                       R24 R9 K42 ["icon"]
      178 GETTABLEKS                       R23 R24 K37 ["size"]
      180 SETTABLEKS                       R23 R22 K37 ["size"]
      182 LOADK                            R24 K43 ["%*--leading-icon"]
      183 GETTABLEKS                       R26 R2 K9 ["testId"]
      185 NAMECALL                         R24 R24 K10 ["format"]
      187 CALL                             R24 2 1
      188 MOVE                             R23 R24
      189 SETTABLEKS                       R23 R22 K9 ["testId"]
      191 CALL                             R20 2 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R20
      194 SETTABLEKS                       R20 R19 K29 ["LeadingIcon"]
      196 GETUPVAL                         R21 3
      197 GETTABLEKS                       R20 R21 K11 ["createElement"]
      199 GETUPVAL                         R21 9
      200 DUPTABLE                         R22 K45 [{"LayoutOrder", "Text", "tag", "testId"}]
      201 LOADN                            R23 2
      202 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      204 GETTABLEKS                       R23 R2 K46 ["text"]
      206 SETTABLEKS                       R23 R22 K44 ["Text"]
      208 GETTABLEKS                       R24 R9 K46 ["text"]
      210 GETTABLEKS                       R23 R24 K12 ["tag"]
      212 SETTABLEKS                       R23 R22 K12 ["tag"]
      214 LOADK                            R24 K47 ["%*--title"]
      215 GETTABLEKS                       R26 R2 K9 ["testId"]
      217 NAMECALL                         R24 R24 K10 ["format"]
      219 CALL                             R24 2 1
      220 MOVE                             R23 R24
      221 SETTABLEKS                       R23 R22 K9 ["testId"]
      223 CALL                             R20 2 1
      224 SETTABLEKS                       R20 R19 K30 ["Title"]
      226 GETUPVAL                         R21 3
      227 GETTABLEKS                       R20 R21 K11 ["createElement"]
      229 GETUPVAL                         R21 8
      230 DUPTABLE                         R22 K48 [{"LayoutOrder", "name", "style", "size", "testId"}]
      231 LOADN                            R23 3
      232 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      234 JUMPIFNOT                        R4 ; [+2]
      235 LOADK                            R23 K49 ["chevron-large-up"]
      236 JUMP                             ; [+1]
      237 LOADK                            R23 K50 ["chevron-large-down"]
      238 SETTABLEKS                       R23 R22 K34 ["name"]
      240 GETTABLEKS                       R24 R9 K42 ["icon"]
      242 GETTABLEKS                       R23 R24 K36 ["style"]
      244 SETTABLEKS                       R23 R22 K36 ["style"]
      246 GETTABLEKS                       R24 R9 K42 ["icon"]
      248 GETTABLEKS                       R23 R24 K37 ["size"]
      250 SETTABLEKS                       R23 R22 K37 ["size"]
      252 LOADK                            R24 K51 ["%*--collapse-icon"]
      253 GETTABLEKS                       R26 R2 K9 ["testId"]
      255 NAMECALL                         R24 R24 K10 ["format"]
      257 CALL                             R24 2 1
      258 MOVE                             R23 R24
      259 SETTABLEKS                       R23 R22 K9 ["testId"]
      261 CALL                             R20 2 1
      262 SETTABLEKS                       R20 R19 K31 ["CollapseIcon"]
      264 CALL                             R16 3 1
      265 SETTABLEKS                       R16 R15 K21 ["Header"]
      267 JUMPIFNOT                        R4 ; [+31]
      268 GETUPVAL                         R17 3
      269 GETTABLEKS                       R16 R17 K11 ["createElement"]
      271 GETUPVAL                         R17 6
      272 DUPTABLE                         R18 K52 [{"tag", "LayoutOrder", "testId"}]
      273 GETTABLEKS                       R20 R9 K53 ["content"]
      275 GETTABLEKS                       R19 R20 K12 ["tag"]
      277 SETTABLEKS                       R19 R18 K12 ["tag"]
      279 LOADN                            R19 2
      280 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      282 LOADK                            R20 K54 ["%*--content"]
      283 GETTABLEKS                       R22 R2 K9 ["testId"]
      285 NAMECALL                         R20 R20 K10 ["format"]
      287 CALL                             R20 2 1
      288 MOVE                             R19 R20
      289 SETTABLEKS                       R19 R18 K9 ["testId"]
      291 NEWTABLE                         R19 0 1
      293 GETTABLEKS                       R20 R2 K55 ["children"]
      295 SETLIST                          R19 R20 1 [1]
      297 CALL                             R16 3 1
      298 JUMP                             ; [+1]
      299 LOADNIL                          R16
      300 SETTABLEKS                       R16 R15 K22 ["Content"]
      302 GETTABLEKS                       R17 R2 K56 ["hasDivider"]
      304 JUMPIFNOT                        R17 ; [+19]
      305 GETUPVAL                         R17 3
      306 GETTABLEKS                       R16 R17 K11 ["createElement"]
      308 GETUPVAL                         R17 10
      309 DUPTABLE                         R18 K57 [{"LayoutOrder", "testId"}]
      310 LOADN                            R19 3
      311 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      313 LOADK                            R20 K58 ["%*--divider"]
      314 GETTABLEKS                       R22 R2 K9 ["testId"]
      316 NAMECALL                         R20 R20 K10 ["format"]
      318 CALL                             R20 2 1
      319 MOVE                             R19 R20
      320 SETTABLEKS                       R19 R18 K9 ["testId"]
      322 CALL                             R16 2 1
      323 JUMP                             ; [+1]
      324 LOADNIL                          R16
      325 SETTABLEKS                       R16 R15 K23 ["Divider"]
      327 CALL                             R12 3 -1
      328 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Divider"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Icon"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R9 K13 ["Types"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R10 K14 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K15 ["Utility"]
       58 GETTABLEKS                       R10 R11 K16 ["withDefaults"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K15 ["Utility"]
       65 GETTABLEKS                       R11 R12 K17 ["withCommonProps"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R14 R0 K18 ["Providers"]
       72 GETTABLEKS                       R13 R14 K19 ["Style"]
       74 GETTABLEKS                       R12 R13 K20 ["useTokens"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETIMPORT                        R16 K1 [script]
       81 GETTABLEKS                       R15 R16 K4 ["Parent"]
       83 GETTABLEKS                       R14 R15 K4 ["Parent"]
       85 GETTABLEKS                       R13 R14 K21 ["useAccordion"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R15 R0 K22 ["Enums"]
       92 GETTABLEKS                       R14 R15 K23 ["InputSize"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETIMPORT                        R18 K1 [script]
       99 GETTABLEKS                       R17 R18 K4 ["Parent"]
      101 GETTABLEKS                       R16 R17 K4 ["Parent"]
      103 GETTABLEKS                       R15 R16 K24 ["useAccordionItemVariants"]
      105 CALL                             R14 1 1
      106 DUPTABLE                         R15 K27 [{"hasDivider", "isExpanded"}]
      107 LOADB                            R16 1
      108 SETTABLEKS                       R16 R15 K25 ["hasDivider"]
      110 LOADB                            R16 0
      111 SETTABLEKS                       R16 R15 K26 ["isExpanded"]
      113 DUPCLOSURE                       R16 K28 [PROTO_2]
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R4
      125 GETTABLEKS                       R17 R2 K29 ["memo"]
      127 GETTABLEKS                       R18 R2 K30 ["forwardRef"]
      129 MOVE                             R19 R16
      130 CALL                             R18 1 -1
      131 CALL                             R17 -1 -1
      132 RETURN                           R17 -1
