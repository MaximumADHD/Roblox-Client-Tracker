PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+53]
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
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R7 R8 K3 ["Dictionary"]
       25 GETTABLEKS                       R6 R7 K4 ["union"]
       27 MOVE                             R7 R5
       28 DUPTABLE                         R8 K8 [{"LayoutOrder", "size", "fillBehavior"}]
       29 GETUPVAL                         R11 0
       30 LENGTH                           R10 R11
       31 SUB                              R9 R10 R4
       32 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R9 R10 K9 ["Medium"]
       37 SETTABLEKS                       R9 R8 K6 ["size"]
       39 GETUPVAL                         R10 4
       40 GETTABLEKS                       R9 R10 K10 ["Fill"]
       42 SETTABLEKS                       R9 R8 K7 ["fillBehavior"]
       44 CALL                             R6 2 1
       45 LOADK                            R8 K11 ["ToastButton"]
       46 MOVE                             R9 R4
       47 CONCAT                           R7 R8 R9
       48 GETUPVAL                         R9 5
       49 GETTABLEKS                       R8 R9 K12 ["createElement"]
       51 GETUPVAL                         R9 6
       52 MOVE                             R10 R6
       53 CALL                             R8 2 1
       54 SETTABLE                         R8 R0 R7
       55 FORGLOOP                         R1 2 ; [-48]
       57 RETURN                           R0 1

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
      103 GETIMPORT                        R16 K27 [UDim2.new]
      105 LOADK                            R17 K28 [0.5]
      106 LOADN                            R18 0
      107 LOADK                            R19 K29 [0.1]
      108 LOADN                            R20 0
      109 CALL                             R16 4 1
      110 SETTABLEKS                       R16 R15 K21 ["Position"]
      112 DUPTABLE                         R16 K32 [{"Selectable", "SelectionImageObject"}]
      113 LOADB                            R17 0
      114 SETTABLEKS                       R17 R16 K30 ["Selectable"]
      116 SETTABLEKS                       R4 R16 K31 ["SelectionImageObject"]
      118 SETTABLEKS                       R16 R15 K22 ["selection"]
      120 LOADK                            R16 K33 ["auto-y padding-medium radius-medium row gap-small bg-over-media-0"]
      121 SETTABLEKS                       R16 R15 K23 ["tag"]
      123 SETTABLEKS                       R1 R15 K24 ["ref"]
      125 CALL                             R13 2 1
      126 DUPTABLE                         R14 K36 [{"Media", "Content"}]
      127 JUMPIFNOT                        R7 ; [+26]
      128 GETUPVAL                         R16 4
      129 GETTABLEKS                       R15 R16 K20 ["createElement"]
      131 GETUPVAL                         R16 13
      132 DUPTABLE                         R17 K40 [{"LayoutOrder", "Image", "tag", "testId"}]
      133 LOADN                            R18 1
      134 SETTABLEKS                       R18 R17 K37 ["LayoutOrder"]
      136 GETTABLEKS                       R18 R2 K15 ["icon"]
      138 SETTABLEKS                       R18 R17 K38 ["Image"]
      140 LOADK                            R18 K41 ["size-1200-1200"]
      141 SETTABLEKS                       R18 R17 K23 ["tag"]
      143 LOADK                            R19 K42 ["%*--media"]
      144 GETTABLEKS                       R21 R2 K39 ["testId"]
      146 NAMECALL                         R19 R19 K43 ["format"]
      148 CALL                             R19 2 1
      149 MOVE                             R18 R19
      150 SETTABLEKS                       R18 R17 K39 ["testId"]
      152 CALL                             R15 2 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R15
      155 SETTABLEKS                       R15 R14 K34 ["Media"]
      157 GETUPVAL                         R16 4
      158 GETTABLEKS                       R15 R16 K20 ["createElement"]
      160 GETUPVAL                         R16 11
      161 DUPTABLE                         R17 K44 [{"LayoutOrder", "tag", "testId"}]
      162 LOADN                            R18 2
      163 SETTABLEKS                       R18 R17 K37 ["LayoutOrder"]
      165 NEWTABLE                         R18 2 0
      167 LOADB                            R19 1
      168 SETTABLEKS                       R19 R18 K45 ["auto-y fill self-center"]
      170 OR                               R19 R8 R9
      171 SETTABLEKS                       R19 R18 K46 ["col gap-xxsmall"]
      173 SETTABLEKS                       R18 R17 K23 ["tag"]
      175 LOADK                            R19 K47 ["%*--content"]
      176 GETTABLEKS                       R21 R2 K39 ["testId"]
      178 NAMECALL                         R19 R19 K43 ["format"]
      180 CALL                             R19 2 1
      181 MOVE                             R18 R19
      182 SETTABLEKS                       R18 R17 K39 ["testId"]
      184 DUPTABLE                         R18 K51 [{"Header", "Body", "Actions"}]
      185 JUMPIFNOT                        R8 ; [+26]
      186 GETUPVAL                         R20 4
      187 GETTABLEKS                       R19 R20 K20 ["createElement"]
      189 GETUPVAL                         R20 14
      190 DUPTABLE                         R21 K53 [{"LayoutOrder", "Text", "tag", "testId"}]
      191 LOADN                            R22 1
      192 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      194 GETTABLEKS                       R22 R2 K17 ["title"]
      196 SETTABLEKS                       R22 R21 K52 ["Text"]
      198 LOADK                            R22 K54 ["auto-y size-full-0 text-align-x-left text-title-small content-emphasis text-truncate-end"]
      199 SETTABLEKS                       R22 R21 K23 ["tag"]
      201 LOADK                            R23 K55 ["%*--header"]
      202 GETTABLEKS                       R25 R2 K39 ["testId"]
      204 NAMECALL                         R23 R23 K43 ["format"]
      206 CALL                             R23 2 1
      207 MOVE                             R22 R23
      208 SETTABLEKS                       R22 R21 K39 ["testId"]
      210 CALL                             R19 2 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R19
      213 SETTABLEKS                       R19 R18 K48 ["Header"]
      215 JUMPIFNOT                        R9 ; [+26]
      216 GETUPVAL                         R20 4
      217 GETTABLEKS                       R19 R20 K20 ["createElement"]
      219 GETUPVAL                         R20 14
      220 DUPTABLE                         R21 K53 [{"LayoutOrder", "Text", "tag", "testId"}]
      221 LOADN                            R22 2
      222 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      224 GETTABLEKS                       R22 R2 K18 ["text"]
      226 SETTABLEKS                       R22 R21 K52 ["Text"]
      228 LOADK                            R22 K56 ["auto-y size-full-0 text-wrap text-align-x-left text-body-small content-default"]
      229 SETTABLEKS                       R22 R21 K23 ["tag"]
      231 LOADK                            R23 K57 ["%*--body"]
      232 GETTABLEKS                       R25 R2 K39 ["testId"]
      234 NAMECALL                         R23 R23 K43 ["format"]
      236 CALL                             R23 2 1
      237 MOVE                             R22 R23
      238 SETTABLEKS                       R22 R21 K39 ["testId"]
      240 CALL                             R19 2 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R19
      243 SETTABLEKS                       R19 R18 K49 ["Body"]
      245 JUMPIFNOT                        R5 ; [+34]
      246 LENGTH                           R20 R5
      247 LOADN                            R21 0
      248 JUMPIFNOTLT                      R21 R20 ; [+31]
      250 GETUPVAL                         R20 4
      251 GETTABLEKS                       R19 R20 K20 ["createElement"]
      253 GETUPVAL                         R20 11
      254 DUPTABLE                         R21 K44 [{"LayoutOrder", "tag", "testId"}]
      255 LOADN                            R22 3
      256 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      258 NEWTABLE                         R22 2 0
      260 LOADB                            R23 1
      261 SETTABLEKS                       R23 R22 K58 ["auto-y row gap-small size-full-0"]
      263 OR                               R23 R8 R9
      264 SETTABLEKS                       R23 R22 K59 ["padding-top-small"]
      266 SETTABLEKS                       R22 R21 K23 ["tag"]
      268 LOADK                            R23 K60 ["%*--actions"]
      269 GETTABLEKS                       R25 R2 K39 ["testId"]
      271 NAMECALL                         R23 R23 K43 ["format"]
      273 CALL                             R23 2 1
      274 MOVE                             R22 R23
      275 SETTABLEKS                       R22 R21 K39 ["testId"]
      277 MOVE                             R22 R6
      278 CALL                             R19 3 1
      279 JUMP                             ; [+1]
      280 LOADNIL                          R19
      281 SETTABLEKS                       R19 R18 K50 ["Actions"]
      283 CALL                             R15 3 1
      284 SETTABLEKS                       R15 R14 K35 ["Content"]
      286 CALL                             R11 3 -1
      287 RETURN                           R11 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["Cryo"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Logger"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R9 K14 ["Text"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["Image"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K11 ["Components"]
       58 GETTABLEKS                       R10 R11 K16 ["Button"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R13 R0 K17 ["Providers"]
       65 GETTABLEKS                       R12 R13 K18 ["Cursor"]
       67 GETTABLEKS                       R11 R12 K19 ["useCursor"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R14 R0 K17 ["Providers"]
       74 GETTABLEKS                       R13 R14 K20 ["Style"]
       76 GETTABLEKS                       R12 R13 K21 ["useTokens"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K9 ["Utility"]
       83 GETTABLEKS                       R13 R14 K22 ["withCommonProps"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R15 R0 K9 ["Utility"]
       90 GETTABLEKS                       R14 R15 K23 ["withDefaults"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R16 R0 K9 ["Utility"]
       97 GETTABLEKS                       R15 R16 K24 ["useScaledValue"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R17 R0 K25 ["Enums"]
      104 GETTABLEKS                       R16 R17 K26 ["ButtonVariant"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R18 R0 K25 ["Enums"]
      111 GETTABLEKS                       R17 R18 K27 ["InputSize"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R19 R0 K25 ["Enums"]
      118 GETTABLEKS                       R18 R19 K28 ["FillBehavior"]
      120 CALL                             R17 1 1
      121 DUPTABLE                         R18 K30 [{"testId"}]
      122 LOADK                            R19 K31 ["--foundation-toast"]
      123 SETTABLEKS                       R19 R18 K29 ["testId"]
      125 DUPCLOSURE                       R19 K32 [PROTO_1]
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R7
      141 GETTABLEKS                       R20 R2 K33 ["memo"]
      143 GETTABLEKS                       R21 R2 K34 ["forwardRef"]
      145 MOVE                             R22 R19
      146 CALL                             R21 1 -1
      147 CALL                             R20 -1 -1
      148 RETURN                           R20 -1
