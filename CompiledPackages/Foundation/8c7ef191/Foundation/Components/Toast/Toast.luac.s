PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+65]
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
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K9 ["FoundationMigrateCryoToDash"]
       41 JUMPIFNOT                        R8 ; [+7]
       42 GETUPVAL                         R7 5
       43 GETTABLEKS                       R7 R7 K10 ["union"]
       45 MOVE                             R8 R5
       46 MOVE                             R9 R6
       47 CALL                             R7 2 1
       48 JUMP                             ; [+8]
       49 GETUPVAL                         R7 6
       50 GETTABLEKS                       R7 R7 K11 ["Dictionary"]
       52 GETTABLEKS                       R7 R7 K10 ["union"]
       54 MOVE                             R8 R5
       55 MOVE                             R9 R6
       56 CALL                             R7 2 1
       57 LOADK                            R9 K12 ["ToastButton"]
       58 MOVE                             R10 R4
       59 CONCAT                           R8 R9 R10
       60 GETUPVAL                         R9 7
       61 GETTABLEKS                       R9 R9 K13 ["createElement"]
       63 GETUPVAL                         R10 8
       64 MOVE                             R11 R7
       65 CALL                             R9 2 1
       66 SETTABLE                         R9 R0 R8
       67 FORGLOOP                         R1 2 ; [-60]
       69 RETURN                           R0 1

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
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U11
       46 NEWTABLE                         R8 0 1
       48 MOVE                             R9 R5
       49 SETLIST                          R8 R9 1 [1]
       51 CALL                             R6 2 1
       52 GETTABLEKS                       R7 R2 K15 ["icon"]
       54 JUMPIFNOT                        R7 ; [+6]
       55 GETTABLEKS                       R8 R2 K15 ["icon"]
       57 JUMPIFNOTEQKS                    R8 K16 [""] ; [+2]
       59 LOADB                            R7 0 +1
       60 LOADB                            R7 1
       61 GETTABLEKS                       R8 R2 K17 ["title"]
       63 JUMPIFNOT                        R8 ; [+6]
       64 GETTABLEKS                       R9 R2 K17 ["title"]
       66 JUMPIFNOTEQKS                    R9 K16 [""] ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 GETTABLEKS                       R9 R2 K18 ["text"]
       72 JUMPIFNOT                        R9 ; [+6]
       73 GETTABLEKS                       R10 R2 K18 ["text"]
       75 JUMPIFNOTEQKS                    R10 K16 [""] ; [+2]
       77 LOADB                            R9 0 +1
       78 LOADB                            R9 1
       79 GETTABLEKS                       R10 R2 K19 ["width"]
       81 JUMPIF                           R10 ; [+7]
       82 GETIMPORT                        R10 K6 [UDim.new]
       84 LOADN                            R11 0
       85 GETUPVAL                         R12 12
       86 LOADN                            R13 144
       87 CALL                             R12 1 -1
       88 CALL                             R10 -1 1
       89 GETUPVAL                         R11 4
       90 GETTABLEKS                       R11 R11 K20 ["createElement"]
       92 GETUPVAL                         R12 13
       93 GETUPVAL                         R13 14
       94 MOVE                             R14 R2
       95 DUPTABLE                         R15 K25 [{"Size", "Position", "selection", "tag", "ref"}]
       96 GETIMPORT                        R16 K27 [UDim2.new]
       98 MOVE                             R17 R10
       99 GETIMPORT                        R18 K6 [UDim.new]
      101 CALL                             R18 0 -1
      102 CALL                             R16 -1 1
      103 SETTABLEKS                       R16 R15 K9 ["Size"]
      105 GETIMPORT                        R16 K27 [UDim2.new]
      107 LOADK                            R17 K28 [0.5]
      108 LOADN                            R18 0
      109 LOADK                            R19 K29 [0.1]
      110 LOADN                            R20 0
      111 CALL                             R16 4 1
      112 SETTABLEKS                       R16 R15 K21 ["Position"]
      114 DUPTABLE                         R16 K32 [{"Selectable", "SelectionImageObject"}]
      115 LOADB                            R17 0
      116 SETTABLEKS                       R17 R16 K30 ["Selectable"]
      118 SETTABLEKS                       R4 R16 K31 ["SelectionImageObject"]
      120 SETTABLEKS                       R16 R15 K22 ["selection"]
      122 LOADK                            R16 K33 ["auto-y padding-medium radius-medium row gap-small bg-over-media-0"]
      123 SETTABLEKS                       R16 R15 K23 ["tag"]
      125 SETTABLEKS                       R1 R15 K24 ["ref"]
      127 CALL                             R13 2 1
      128 DUPTABLE                         R14 K36 [{"Media", "Content"}]
      129 JUMPIFNOT                        R7 ; [+26]
      130 GETUPVAL                         R15 4
      131 GETTABLEKS                       R15 R15 K20 ["createElement"]
      133 GETUPVAL                         R16 15
      134 DUPTABLE                         R17 K40 [{"LayoutOrder", "Image", "tag", "testId"}]
      135 LOADN                            R18 1
      136 SETTABLEKS                       R18 R17 K37 ["LayoutOrder"]
      138 GETTABLEKS                       R18 R2 K15 ["icon"]
      140 SETTABLEKS                       R18 R17 K38 ["Image"]
      142 LOADK                            R18 K41 ["size-1200-1200"]
      143 SETTABLEKS                       R18 R17 K23 ["tag"]
      145 LOADK                            R19 K42 ["%*--media"]
      146 GETTABLEKS                       R21 R2 K39 ["testId"]
      148 NAMECALL                         R19 R19 K43 ["format"]
      150 CALL                             R19 2 1
      151 MOVE                             R18 R19
      152 SETTABLEKS                       R18 R17 K39 ["testId"]
      154 CALL                             R15 2 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R15
      157 SETTABLEKS                       R15 R14 K34 ["Media"]
      159 GETUPVAL                         R15 4
      160 GETTABLEKS                       R15 R15 K20 ["createElement"]
      162 GETUPVAL                         R16 13
      163 DUPTABLE                         R17 K44 [{"LayoutOrder", "tag", "testId"}]
      164 LOADN                            R18 2
      165 SETTABLEKS                       R18 R17 K37 ["LayoutOrder"]
      167 NEWTABLE                         R18 2 0
      169 LOADB                            R19 1
      170 SETTABLEKS                       R19 R18 K45 ["auto-y fill self-center"]
      172 OR                               R19 R8 R9
      173 SETTABLEKS                       R19 R18 K46 ["col gap-xxsmall"]
      175 SETTABLEKS                       R18 R17 K23 ["tag"]
      177 LOADK                            R19 K47 ["%*--content"]
      178 GETTABLEKS                       R21 R2 K39 ["testId"]
      180 NAMECALL                         R19 R19 K43 ["format"]
      182 CALL                             R19 2 1
      183 MOVE                             R18 R19
      184 SETTABLEKS                       R18 R17 K39 ["testId"]
      186 DUPTABLE                         R18 K51 [{"Header", "Body", "Actions"}]
      187 JUMPIFNOT                        R8 ; [+26]
      188 GETUPVAL                         R19 4
      189 GETTABLEKS                       R19 R19 K20 ["createElement"]
      191 GETUPVAL                         R20 16
      192 DUPTABLE                         R21 K53 [{"LayoutOrder", "Text", "tag", "testId"}]
      193 LOADN                            R22 1
      194 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      196 GETTABLEKS                       R22 R2 K17 ["title"]
      198 SETTABLEKS                       R22 R21 K52 ["Text"]
      200 LOADK                            R22 K54 ["auto-y size-full-0 text-align-x-left text-title-small content-emphasis text-truncate-end"]
      201 SETTABLEKS                       R22 R21 K23 ["tag"]
      203 LOADK                            R23 K55 ["%*--header"]
      204 GETTABLEKS                       R25 R2 K39 ["testId"]
      206 NAMECALL                         R23 R23 K43 ["format"]
      208 CALL                             R23 2 1
      209 MOVE                             R22 R23
      210 SETTABLEKS                       R22 R21 K39 ["testId"]
      212 CALL                             R19 2 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R19
      215 SETTABLEKS                       R19 R18 K48 ["Header"]
      217 JUMPIFNOT                        R9 ; [+26]
      218 GETUPVAL                         R19 4
      219 GETTABLEKS                       R19 R19 K20 ["createElement"]
      221 GETUPVAL                         R20 16
      222 DUPTABLE                         R21 K53 [{"LayoutOrder", "Text", "tag", "testId"}]
      223 LOADN                            R22 2
      224 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      226 GETTABLEKS                       R22 R2 K18 ["text"]
      228 SETTABLEKS                       R22 R21 K52 ["Text"]
      230 LOADK                            R22 K56 ["auto-y size-full-0 text-wrap text-align-x-left text-body-small content-default"]
      231 SETTABLEKS                       R22 R21 K23 ["tag"]
      233 LOADK                            R23 K57 ["%*--body"]
      234 GETTABLEKS                       R25 R2 K39 ["testId"]
      236 NAMECALL                         R23 R23 K43 ["format"]
      238 CALL                             R23 2 1
      239 MOVE                             R22 R23
      240 SETTABLEKS                       R22 R21 K39 ["testId"]
      242 CALL                             R19 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R19
      245 SETTABLEKS                       R19 R18 K49 ["Body"]
      247 JUMPIFNOT                        R5 ; [+34]
      248 LENGTH                           R20 R5
      249 LOADN                            R21 0
      250 JUMPIFNOTLT                      R21 R20 ; [+31]
      252 GETUPVAL                         R19 4
      253 GETTABLEKS                       R19 R19 K20 ["createElement"]
      255 GETUPVAL                         R20 13
      256 DUPTABLE                         R21 K44 [{"LayoutOrder", "tag", "testId"}]
      257 LOADN                            R22 3
      258 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      260 NEWTABLE                         R22 2 0
      262 LOADB                            R23 1
      263 SETTABLEKS                       R23 R22 K58 ["auto-y row gap-small size-full-0"]
      265 OR                               R23 R8 R9
      266 SETTABLEKS                       R23 R22 K59 ["padding-top-small"]
      268 SETTABLEKS                       R22 R21 K23 ["tag"]
      270 LOADK                            R23 K60 ["%*--actions"]
      271 GETTABLEKS                       R25 R2 K39 ["testId"]
      273 NAMECALL                         R23 R23 K43 ["format"]
      275 CALL                             R23 2 1
      276 MOVE                             R22 R23
      277 SETTABLEKS                       R22 R21 K39 ["testId"]
      279 MOVE                             R22 R6
      280 CALL                             R19 3 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R19
      283 SETTABLEKS                       R19 R18 K50 ["Actions"]
      285 CALL                             R15 3 1
      286 SETTABLEKS                       R15 R14 K35 ["Content"]
      288 CALL                             R11 3 -1
      289 RETURN                           R11 -1

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
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Utility"]
       28 GETTABLEKS                       R6 R6 K11 ["Logger"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K13 ["Types"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K12 ["Components"]
       42 GETTABLEKS                       R8 R8 K14 ["View"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K12 ["Components"]
       49 GETTABLEKS                       R9 R9 K15 ["Text"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K12 ["Components"]
       56 GETTABLEKS                       R10 R10 K16 ["Image"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K12 ["Components"]
       63 GETTABLEKS                       R11 R11 K17 ["Button"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K18 ["Providers"]
       70 GETTABLEKS                       R12 R12 K19 ["Cursor"]
       72 GETTABLEKS                       R12 R12 K20 ["useCursor"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K18 ["Providers"]
       79 GETTABLEKS                       R13 R13 K21 ["Style"]
       81 GETTABLEKS                       R13 R13 K22 ["useTokens"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K10 ["Utility"]
       88 GETTABLEKS                       R14 R14 K23 ["withCommonProps"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K10 ["Utility"]
       95 GETTABLEKS                       R15 R15 K24 ["withDefaults"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K10 ["Utility"]
      102 GETTABLEKS                       R16 R16 K25 ["useScaledValue"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K10 ["Utility"]
      109 GETTABLEKS                       R17 R17 K26 ["Flags"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R18 R0 K27 ["Enums"]
      116 GETTABLEKS                       R18 R18 K28 ["ButtonVariant"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K6 [require]
      121 GETTABLEKS                       R19 R0 K27 ["Enums"]
      123 GETTABLEKS                       R19 R19 K29 ["InputSize"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K6 [require]
      128 GETTABLEKS                       R20 R0 K27 ["Enums"]
      130 GETTABLEKS                       R20 R20 K30 ["FillBehavior"]
      132 CALL                             R19 1 1
      133 DUPTABLE                         R20 K32 [{"testId"}]
      134 LOADK                            R21 K33 ["--foundation-toast"]
      135 SETTABLEKS                       R21 R20 K31 ["testId"]
      137 DUPCLOSURE                       R21 K34 [PROTO_1]
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R8
      155 GETTABLEKS                       R22 R2 K35 ["memo"]
      157 GETTABLEKS                       R23 R2 K36 ["forwardRef"]
      159 MOVE                             R24 R21
      160 CALL                             R23 1 -1
      161 CALL                             R22 -1 -1
      162 RETURN                           R22 -1
