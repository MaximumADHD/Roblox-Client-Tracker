PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+52]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 LOADN                            R6 2
        9 JUMPIFNOTLT                      R6 R4 ; [+12]
       11 GETUPVAL                         R6 1
       12 LOADK                            R9 K0 ["Toast only supports up to %* actions"]
       13 LOADN                            R11 2
       14 NAMECALL                         R9 R9 K1 ["format"]
       16 CALL                             R9 2 1
       17 MOVE                             R8 R9
       18 NAMECALL                         R6 R6 K2 ["warning"]
       20 CALL                             R6 2 0
       21 RETURN                           R0 1
       22 DUPTABLE                         R6 K6 [{"LayoutOrder", "size", "fillBehavior"}]
       23 GETUPVAL                         R9 0
       24 LENGTH                           R8 R9
       25 SUB                              R7 R8 R4
       26 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R7 R8 K7 ["Medium"]
       31 SETTABLEKS                       R7 R6 K4 ["size"]
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R7 R8 K8 ["Fill"]
       36 SETTABLEKS                       R7 R6 K5 ["fillBehavior"]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R7 R8 K9 ["union"]
       41 MOVE                             R8 R5
       42 MOVE                             R9 R6
       43 CALL                             R7 2 1
       44 LOADK                            R9 K10 ["ToastButton"]
       45 MOVE                             R10 R4
       46 CONCAT                           R8 R9 R10
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R9 R10 K11 ["createElement"]
       50 GETUPVAL                         R10 6
       51 MOVE                             R11 R7
       52 CALL                             R9 2 1
       53 SETTABLE                         R9 R0 R8
       54 FORGLOOP                         R1 2 ; [-47]
       56 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 DUPTABLE                         R5 K3 [{"radius", "offset", "borderWidth"}]
        8 GETIMPORT                        R6 K6 [UDim.new]
       10 LOADN                            R7 0
       11 GETTABLEKS                       R9 R3 K7 ["Radius"]
       13 GETTABLEKS                       R8 R9 K8 ["Medium"]
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K0 ["radius"]
       18 GETTABLEKS                       R7 R3 K9 ["Size"]
       20 GETTABLEKS                       R6 R7 K10 ["Size_200"]
       22 SETTABLEKS                       R6 R5 K1 ["offset"]
       24 GETTABLEKS                       R7 R3 K11 ["Stroke"]
       26 GETTABLEKS                       R6 R7 K12 ["Thicker"]
       28 SETTABLEKS                       R6 R5 K2 ["borderWidth"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R2 K13 ["actions"]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R6 R7 K14 ["useMemo"]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R5
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U9
       44 NEWTABLE                         R8 0 1
       46 MOVE                             R9 R5
       47 SETLIST                          R8 R9 1 [1]
       49 CALL                             R6 2 1
       50 GETTABLEKS                       R7 R2 K15 ["icon"]
       52 JUMPIFNOT                        R7 ; [+6]
       53 GETTABLEKS                       R8 R2 K15 ["icon"]
       55 JUMPIFNOTEQKS                    R8 K16 [""] ; [+2]
       57 LOADB                            R7 0 +1
       58 LOADB                            R7 1
       59 GETTABLEKS                       R8 R2 K17 ["title"]
       61 JUMPIFNOT                        R8 ; [+6]
       62 GETTABLEKS                       R9 R2 K17 ["title"]
       64 JUMPIFNOTEQKS                    R9 K16 [""] ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 GETTABLEKS                       R9 R2 K18 ["text"]
       70 JUMPIFNOT                        R9 ; [+6]
       71 GETTABLEKS                       R10 R2 K18 ["text"]
       73 JUMPIFNOTEQKS                    R10 K16 [""] ; [+2]
       75 LOADB                            R9 0 +1
       76 LOADB                            R9 1
       77 GETTABLEKS                       R10 R2 K19 ["width"]
       79 JUMPIF                           R10 ; [+7]
       80 GETIMPORT                        R10 K6 [UDim.new]
       82 LOADN                            R11 0
       83 GETUPVAL                         R12 10
       84 LOADN                            R13 144
       85 CALL                             R12 1 -1
       86 CALL                             R10 -1 1
       87 GETUPVAL                         R12 4
       88 GETTABLEKS                       R11 R12 K20 ["createElement"]
       90 GETUPVAL                         R12 11
       91 GETUPVAL                         R13 12
       92 MOVE                             R14 R2
       93 DUPTABLE                         R15 K25 [{"Size", "Position", "selection", "tag", "ref"}]
       94 GETIMPORT                        R16 K27 [UDim2.new]
       96 MOVE                             R17 R10
       97 GETIMPORT                        R18 K6 [UDim.new]
       99 CALL                             R18 0 -1
      100 CALL                             R16 -1 1
      101 SETTABLEKS                       R16 R15 K9 ["Size"]
      103 GETIMPORT                        R16 K29 [UDim2.fromScale]
      105 LOADK                            R17 K30 [0.5]
      106 LOADK                            R18 K31 [0.1]
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K21 ["Position"]
      110 DUPTABLE                         R16 K34 [{"Selectable", "SelectionImageObject"}]
      111 LOADB                            R17 0
      112 SETTABLEKS                       R17 R16 K32 ["Selectable"]
      114 SETTABLEKS                       R4 R16 K33 ["SelectionImageObject"]
      116 SETTABLEKS                       R16 R15 K22 ["selection"]
      118 LOADK                            R16 K35 ["auto-y padding-medium radius-medium row gap-small bg-over-media-0"]
      119 SETTABLEKS                       R16 R15 K23 ["tag"]
      121 SETTABLEKS                       R1 R15 K24 ["ref"]
      123 CALL                             R13 2 1
      124 DUPTABLE                         R14 K38 [{"Media", "Content"}]
      125 JUMPIFNOT                        R7 ; [+26]
      126 GETUPVAL                         R16 4
      127 GETTABLEKS                       R15 R16 K20 ["createElement"]
      129 GETUPVAL                         R16 13
      130 DUPTABLE                         R17 K42 [{"LayoutOrder", "Image", "tag", "testId"}]
      131 LOADN                            R18 1
      132 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      134 GETTABLEKS                       R18 R2 K15 ["icon"]
      136 SETTABLEKS                       R18 R17 K40 ["Image"]
      138 LOADK                            R18 K43 ["size-1200-1200"]
      139 SETTABLEKS                       R18 R17 K23 ["tag"]
      141 LOADK                            R19 K44 ["%*--media"]
      142 GETTABLEKS                       R21 R2 K41 ["testId"]
      144 NAMECALL                         R19 R19 K45 ["format"]
      146 CALL                             R19 2 1
      147 MOVE                             R18 R19
      148 SETTABLEKS                       R18 R17 K41 ["testId"]
      150 CALL                             R15 2 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R15
      153 SETTABLEKS                       R15 R14 K36 ["Media"]
      155 GETUPVAL                         R16 4
      156 GETTABLEKS                       R15 R16 K20 ["createElement"]
      158 GETUPVAL                         R16 11
      159 DUPTABLE                         R17 K46 [{"LayoutOrder", "tag", "testId"}]
      160 LOADN                            R18 2
      161 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      163 NEWTABLE                         R18 2 0
      165 LOADB                            R19 1
      166 SETTABLEKS                       R19 R18 K47 ["auto-y fill self-center"]
      168 OR                               R19 R8 R9
      169 SETTABLEKS                       R19 R18 K48 ["col gap-xxsmall"]
      171 SETTABLEKS                       R18 R17 K23 ["tag"]
      173 LOADK                            R19 K49 ["%*--content"]
      174 GETTABLEKS                       R21 R2 K41 ["testId"]
      176 NAMECALL                         R19 R19 K45 ["format"]
      178 CALL                             R19 2 1
      179 MOVE                             R18 R19
      180 SETTABLEKS                       R18 R17 K41 ["testId"]
      182 DUPTABLE                         R18 K53 [{"Header", "Body", "Actions"}]
      183 JUMPIFNOT                        R8 ; [+26]
      184 GETUPVAL                         R20 4
      185 GETTABLEKS                       R19 R20 K20 ["createElement"]
      187 GETUPVAL                         R20 14
      188 DUPTABLE                         R21 K55 [{"LayoutOrder", "Text", "tag", "testId"}]
      189 LOADN                            R22 1
      190 SETTABLEKS                       R22 R21 K39 ["LayoutOrder"]
      192 GETTABLEKS                       R22 R2 K17 ["title"]
      194 SETTABLEKS                       R22 R21 K54 ["Text"]
      196 LOADK                            R22 K56 ["auto-y size-full-0 text-align-x-left text-title-small content-emphasis text-truncate-end"]
      197 SETTABLEKS                       R22 R21 K23 ["tag"]
      199 LOADK                            R23 K57 ["%*--header"]
      200 GETTABLEKS                       R25 R2 K41 ["testId"]
      202 NAMECALL                         R23 R23 K45 ["format"]
      204 CALL                             R23 2 1
      205 MOVE                             R22 R23
      206 SETTABLEKS                       R22 R21 K41 ["testId"]
      208 CALL                             R19 2 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R19
      211 SETTABLEKS                       R19 R18 K50 ["Header"]
      213 JUMPIFNOT                        R9 ; [+26]
      214 GETUPVAL                         R20 4
      215 GETTABLEKS                       R19 R20 K20 ["createElement"]
      217 GETUPVAL                         R20 14
      218 DUPTABLE                         R21 K55 [{"LayoutOrder", "Text", "tag", "testId"}]
      219 LOADN                            R22 2
      220 SETTABLEKS                       R22 R21 K39 ["LayoutOrder"]
      222 GETTABLEKS                       R22 R2 K18 ["text"]
      224 SETTABLEKS                       R22 R21 K54 ["Text"]
      226 LOADK                            R22 K58 ["auto-y size-full-0 text-wrap text-align-x-left text-body-small content-default"]
      227 SETTABLEKS                       R22 R21 K23 ["tag"]
      229 LOADK                            R23 K59 ["%*--body"]
      230 GETTABLEKS                       R25 R2 K41 ["testId"]
      232 NAMECALL                         R23 R23 K45 ["format"]
      234 CALL                             R23 2 1
      235 MOVE                             R22 R23
      236 SETTABLEKS                       R22 R21 K41 ["testId"]
      238 CALL                             R19 2 1
      239 JUMP                             ; [+1]
      240 LOADNIL                          R19
      241 SETTABLEKS                       R19 R18 K51 ["Body"]
      243 JUMPIFNOT                        R5 ; [+34]
      244 LENGTH                           R20 R5
      245 LOADN                            R21 0
      246 JUMPIFNOTLT                      R21 R20 ; [+31]
      248 GETUPVAL                         R20 4
      249 GETTABLEKS                       R19 R20 K20 ["createElement"]
      251 GETUPVAL                         R20 11
      252 DUPTABLE                         R21 K46 [{"LayoutOrder", "tag", "testId"}]
      253 LOADN                            R22 3
      254 SETTABLEKS                       R22 R21 K39 ["LayoutOrder"]
      256 NEWTABLE                         R22 2 0
      258 LOADB                            R23 1
      259 SETTABLEKS                       R23 R22 K60 ["auto-y row gap-small size-full-0"]
      261 OR                               R23 R8 R9
      262 SETTABLEKS                       R23 R22 K61 ["padding-top-small"]
      264 SETTABLEKS                       R22 R21 K23 ["tag"]
      266 LOADK                            R23 K62 ["%*--actions"]
      267 GETTABLEKS                       R25 R2 K41 ["testId"]
      269 NAMECALL                         R23 R23 K45 ["format"]
      271 CALL                             R23 2 1
      272 MOVE                             R22 R23
      273 SETTABLEKS                       R22 R21 K41 ["testId"]
      275 MOVE                             R22 R6
      276 CALL                             R19 3 1
      277 JUMP                             ; [+1]
      278 LOADNIL                          R19
      279 SETTABLEKS                       R19 R18 K52 ["Actions"]
      281 CALL                             R15 3 1
      282 SETTABLEKS                       R15 R14 K37 ["Content"]
      284 CALL                             R11 3 -1
      285 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Logger"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["Button"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["Image"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R9 K14 ["Text"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["Types"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K11 ["Components"]
       58 GETTABLEKS                       R10 R11 K16 ["View"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R13 R0 K17 ["Providers"]
       65 GETTABLEKS                       R12 R13 K18 ["Cursor"]
       67 GETTABLEKS                       R11 R12 K19 ["useCursor"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K9 ["Utility"]
       74 GETTABLEKS                       R12 R13 K20 ["useScaledValue"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R15 R0 K17 ["Providers"]
       81 GETTABLEKS                       R14 R15 K21 ["Style"]
       83 GETTABLEKS                       R13 R14 K22 ["useTokens"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R15 R0 K9 ["Utility"]
       90 GETTABLEKS                       R14 R15 K23 ["withCommonProps"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R16 R0 K9 ["Utility"]
       97 GETTABLEKS                       R15 R16 K24 ["withDefaults"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R17 R0 K25 ["Enums"]
      104 GETTABLEKS                       R16 R17 K26 ["ButtonVariant"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R18 R0 K25 ["Enums"]
      111 GETTABLEKS                       R17 R18 K27 ["FillBehavior"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R19 R0 K25 ["Enums"]
      118 GETTABLEKS                       R18 R19 K28 ["InputSize"]
      120 CALL                             R17 1 1
      121 DUPTABLE                         R18 K30 [{"testId"}]
      122 LOADK                            R19 K31 ["--foundation-toast"]
      123 SETTABLEKS                       R19 R18 K29 ["testId"]
      125 DUPCLOSURE                       R19 K32 [PROTO_1]
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R7
      141 GETTABLEKS                       R20 R3 K33 ["memo"]
      143 GETTABLEKS                       R21 R3 K34 ["forwardRef"]
      145 MOVE                             R22 R19
      146 CALL                             R21 1 -1
      147 CALL                             R20 -1 -1
      148 RETURN                           R20 -1
