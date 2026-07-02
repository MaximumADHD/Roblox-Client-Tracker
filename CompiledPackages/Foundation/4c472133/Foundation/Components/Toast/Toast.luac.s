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
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K7 ["Medium"]
       31 SETTABLEKS                       R7 R6 K4 ["size"]
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R7 R7 K8 ["Fill"]
       36 SETTABLEKS                       R7 R6 K5 ["fillBehavior"]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K9 ["union"]
       41 MOVE                             R8 R5
       42 MOVE                             R9 R6
       43 CALL                             R7 2 1
       44 LOADK                            R9 K10 ["ToastButton"]
       45 MOVE                             R10 R4
       46 CONCAT                           R8 R9 R10
       47 GETUPVAL                         R9 5
       48 GETTABLEKS                       R9 R9 K11 ["createElement"]
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
       11 GETTABLEKS                       R8 R3 K7 ["Radius"]
       13 GETTABLEKS                       R8 R8 K8 ["Medium"]
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K0 ["radius"]
       18 GETTABLEKS                       R6 R3 K9 ["Size"]
       20 GETTABLEKS                       R6 R6 K10 ["Size_200"]
       22 SETTABLEKS                       R6 R5 K1 ["offset"]
       24 GETTABLEKS                       R6 R3 K11 ["Stroke"]
       26 GETTABLEKS                       R6 R6 K12 ["Thicker"]
       28 SETTABLEKS                       R6 R5 K2 ["borderWidth"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R2 K13 ["actions"]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K14 ["useMemo"]
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
       84 LOADN                            R13 400
       85 CALL                             R12 1 -1
       86 CALL                             R10 -1 1
       87 GETUPVAL                         R11 4
       88 GETTABLEKS                       R11 R11 K20 ["createElement"]
       90 GETUPVAL                         R12 11
       91 GETUPVAL                         R13 12
       92 MOVE                             R14 R2
       93 DUPTABLE                         R15 K26 [{["Size"], ["Position"], ["selection"], ["tag"] = "row gap-small auto-y padding-medium radius-medium bg-over-media-0", ["ref"]}]
       94 GETIMPORT                        R16 K28 [UDim2.new]
       96 MOVE                             R17 R10
       97 GETIMPORT                        R18 K6 [UDim.new]
       99 CALL                             R18 0 -1
      100 CALL                             R16 -1 1
      101 SETTABLEKS                       R16 R15 K9 ["Size"]
      103 GETIMPORT                        R16 K30 [UDim2.fromScale]
      105 LOADK                            R17 K31 [0.5]
      106 LOADK                            R18 K32 [0.1]
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K21 ["Position"]
      110 DUPTABLE                         R16 K36 [{["Selectable"] = False, ["SelectionImageObject"]}]
      111 SETTABLEKS                       R4 R16 K35 ["SelectionImageObject"]
      113 SETTABLEKS                       R16 R15 K22 ["selection"]
      115 SETTABLEKS                       R1 R15 K25 ["ref"]
      117 CALL                             R13 2 1
      118 DUPTABLE                         R14 K39 [{"Media", "Content"}]
      119 JUMPIFNOT                        R7 ; [+20]
      120 GETUPVAL                         R15 4
      121 GETTABLEKS                       R15 R15 K20 ["createElement"]
      123 GETUPVAL                         R16 13
      124 DUPTABLE                         R17 K45 [{["LayoutOrder"] = 1, ["Image"], ["tag"] = "size-1200-1200", ["testId"]}]
      125 GETTABLEKS                       R18 R2 K15 ["icon"]
      127 SETTABLEKS                       R18 R17 K42 ["Image"]
      129 LOADK                            R19 K46 ["%*--media"]
      130 GETTABLEKS                       R21 R2 K44 ["testId"]
      132 NAMECALL                         R19 R19 K47 ["format"]
      134 CALL                             R19 2 1
      135 MOVE                             R18 R19
      136 SETTABLEKS                       R18 R17 K44 ["testId"]
      138 CALL                             R15 2 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R15
      141 SETTABLEKS                       R15 R14 K37 ["Media"]
      143 GETUPVAL                         R15 4
      144 GETTABLEKS                       R15 R15 K20 ["createElement"]
      146 GETUPVAL                         R16 11
      147 DUPTABLE                         R17 K49 [{["LayoutOrder"] = 2, ["tag"], ["testId"]}]
      148 NEWTABLE                         R18 2 0
      150 LOADB                            R19 1
      151 SETTABLEKS                       R19 R18 K50 ["fill self-center auto-y"]
      153 OR                               R19 R8 R9
      154 SETTABLEKS                       R19 R18 K51 ["col gap-xxsmall"]
      156 SETTABLEKS                       R18 R17 K23 ["tag"]
      158 LOADK                            R19 K52 ["%*--content"]
      159 GETTABLEKS                       R21 R2 K44 ["testId"]
      161 NAMECALL                         R19 R19 K47 ["format"]
      163 CALL                             R19 2 1
      164 MOVE                             R18 R19
      165 SETTABLEKS                       R18 R17 K44 ["testId"]
      167 DUPTABLE                         R18 K56 [{"Header", "Body", "Actions"}]
      168 JUMPIFNOT                        R8 ; [+20]
      169 GETUPVAL                         R19 4
      170 GETTABLEKS                       R19 R19 K20 ["createElement"]
      172 GETUPVAL                         R20 14
      173 DUPTABLE                         R21 K59 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-title-small text-align-x-left text-truncate-end content-emphasis", ["testId"]}]
      174 GETTABLEKS                       R22 R2 K17 ["title"]
      176 SETTABLEKS                       R22 R21 K57 ["Text"]
      178 LOADK                            R23 K60 ["%*--header"]
      179 GETTABLEKS                       R25 R2 K44 ["testId"]
      181 NAMECALL                         R23 R23 K47 ["format"]
      183 CALL                             R23 2 1
      184 MOVE                             R22 R23
      185 SETTABLEKS                       R22 R21 K44 ["testId"]
      187 CALL                             R19 2 1
      188 JUMP                             ; [+1]
      189 LOADNIL                          R19
      190 SETTABLEKS                       R19 R18 K53 ["Header"]
      192 JUMPIFNOT                        R9 ; [+20]
      193 GETUPVAL                         R19 4
      194 GETTABLEKS                       R19 R19 K20 ["createElement"]
      196 GETUPVAL                         R20 14
      197 DUPTABLE                         R21 K62 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-default", ["testId"]}]
      198 GETTABLEKS                       R22 R2 K18 ["text"]
      200 SETTABLEKS                       R22 R21 K57 ["Text"]
      202 LOADK                            R23 K63 ["%*--body"]
      203 GETTABLEKS                       R25 R2 K44 ["testId"]
      205 NAMECALL                         R23 R23 K47 ["format"]
      207 CALL                             R23 2 1
      208 MOVE                             R22 R23
      209 SETTABLEKS                       R22 R21 K44 ["testId"]
      211 CALL                             R19 2 1
      212 JUMP                             ; [+1]
      213 LOADNIL                          R19
      214 SETTABLEKS                       R19 R18 K54 ["Body"]
      216 JUMPIFNOT                        R5 ; [+31]
      217 LENGTH                           R20 R5
      218 LOADN                            R21 0
      219 JUMPIFNOTLT                      R21 R20 ; [+28]
      221 GETUPVAL                         R19 4
      222 GETTABLEKS                       R19 R19 K20 ["createElement"]
      224 GETUPVAL                         R20 11
      225 DUPTABLE                         R21 K65 [{["LayoutOrder"] = 3, ["tag"], ["testId"]}]
      226 NEWTABLE                         R22 2 0
      228 LOADB                            R23 1
      229 SETTABLEKS                       R23 R22 K66 ["row gap-small size-full-0 auto-y"]
      231 OR                               R23 R8 R9
      232 SETTABLEKS                       R23 R22 K67 ["padding-top-small"]
      234 SETTABLEKS                       R22 R21 K23 ["tag"]
      236 LOADK                            R23 K68 ["%*--actions"]
      237 GETTABLEKS                       R25 R2 K44 ["testId"]
      239 NAMECALL                         R23 R23 K47 ["format"]
      241 CALL                             R23 2 1
      242 MOVE                             R22 R23
      243 SETTABLEKS                       R22 R21 K44 ["testId"]
      245 MOVE                             R22 R6
      246 CALL                             R19 3 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R19
      249 SETTABLEKS                       R19 R18 K55 ["Actions"]
      251 CALL                             R15 3 1
      252 SETTABLEKS                       R15 R14 K38 ["Content"]
      254 CALL                             R11 3 -1
      255 RETURN                           R11 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Logger"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Button"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Image"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["Text"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["Types"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Components"]
       58 GETTABLEKS                       R10 R10 K16 ["View"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Providers"]
       65 GETTABLEKS                       R11 R11 K18 ["Cursor"]
       67 GETTABLEKS                       R11 R11 K19 ["useCursor"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K9 ["Utility"]
       74 GETTABLEKS                       R12 R12 K20 ["useScaledValue"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K17 ["Providers"]
       81 GETTABLEKS                       R13 R13 K21 ["Style"]
       83 GETTABLEKS                       R13 R13 K22 ["useTokens"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K9 ["Utility"]
       90 GETTABLEKS                       R14 R14 K23 ["withCommonProps"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K9 ["Utility"]
       97 GETTABLEKS                       R15 R15 K24 ["withDefaults"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R16 R0 K25 ["Enums"]
      104 GETTABLEKS                       R16 R16 K26 ["ButtonVariant"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R17 R0 K25 ["Enums"]
      111 GETTABLEKS                       R17 R17 K27 ["FillBehavior"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R18 R0 K25 ["Enums"]
      118 GETTABLEKS                       R18 R18 K28 ["InputSize"]
      120 CALL                             R17 1 1
      121 DUPTABLE                         R18 K31 [{["testId"] = "--foundation-toast"}]
      122 DUPCLOSURE                       R19 K32 [PROTO_1]
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R7
      138 GETTABLEKS                       R20 R3 K33 ["memo"]
      140 GETTABLEKS                       R21 R3 K34 ["forwardRef"]
      142 MOVE                             R22 R19
      143 CALL                             R21 1 -1
      144 CALL                             R20 -1 -1
      145 RETURN                           R20 -1
