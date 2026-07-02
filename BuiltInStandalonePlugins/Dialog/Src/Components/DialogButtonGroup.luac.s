PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+35]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Enums"]
        7 GETTABLEKS                       R1 R1 K2 ["ControlState"]
        9 GETTABLEKS                       R1 R1 K3 ["Hover"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+27]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["current"]
       16 LOADK                            R4 K4 ["TextLabel"]
       17 NAMECALL                         R2 R2 K5 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["current"]
       24 JUMP                             ; [+7]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K0 ["current"]
       28 LOADK                            R3 K4 ["TextLabel"]
       29 NAMECALL                         R1 R1 K6 ["FindFirstChildWhichIsA"]
       31 CALL                             R1 2 1
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETTABLEKS                       R2 R1 K7 ["TextFits"]
       35 JUMPIF                           R2 ; [+3]
       36 GETUPVAL                         R2 2
       37 CALL                             R2 0 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R1 3
       40 CALL                             R1 0 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["action"]
        3 GETTABLEKS                       R0 R0 K1 ["onActivated"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["action"]
        8 GETTABLEKS                       R1 R1 K2 ["uri"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["action"]
        3 GETTABLEKS                       R2 R2 K1 ["uri"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K6 [{["Uri"], ["Text"], ["Location"] = "Below"}]
        8 GETTABLEKS                       R4 R0 K0 ["action"]
       10 GETTABLEKS                       R4 R4 K1 ["uri"]
       12 SETTABLEKS                       R4 R3 K2 ["Uri"]
       14 GETTABLEKS                       R4 R0 K0 ["action"]
       16 GETTABLEKS                       R4 R4 K7 ["text"]
       18 SETTABLEKS                       R4 R3 K3 ["Text"]
       20 CALL                             R2 1 2
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R6 0 3
       31 MOVE                             R7 R1
       32 MOVE                             R8 R2
       33 MOVE                             R9 R3
       34 SETLIST                          R6 R7 3 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R5 R5 K8 ["useCallback"]
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R0
       42 NEWTABLE                         R7 0 2
       44 GETTABLEKS                       R8 R0 K0 ["action"]
       46 GETTABLEKS                       R8 R8 K9 ["onActivated"]
       48 GETTABLEKS                       R9 R0 K0 ["action"]
       50 GETTABLEKS                       R9 R9 K1 ["uri"]
       52 SETLIST                          R7 R8 2 [1]
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R6 R6 K10 ["useEffect"]
       58 NEWCLOSURE                       R7 P2
       59 CAPTURE                          VAL R3
       60 NEWTABLE                         R8 0 1
       62 MOVE                             R9 R3
       63 SETLIST                          R8 R9 1 [1]
       65 CALL                             R6 2 0
       66 GETUPVAL                         R6 4
       67 JUMPIFNOT                        R6 ; [+6]
       68 GETTABLEKS                       R7 R0 K11 ["widthOverride"]
       70 JUMPIFNOTEQKNIL                  R7 ; [+2]
       72 LOADB                            R6 0 +1
       73 LOADB                            R6 1
       74 GETUPVAL                         R7 5
       75 GETUPVAL                         R8 3
       76 GETTABLEKS                       R8 R8 K12 ["View"]
       78 DUPTABLE                         R9 K19 [{["ref"], ["tag"] = "auto-xy", ["Size"], ["onStateChanged"], ["LayoutOrder"]}]
       79 GETUPVAL                         R11 4
       80 JUMPIFNOT                        R11 ; [+3]
       81 GETTABLEKS                       R10 R0 K20 ["measureRef"]
       83 JUMP                             ; [+2]
       84 GETTABLEKS                       R10 R0 K21 ["sizeRef"]
       86 SETTABLEKS                       R10 R9 K13 ["ref"]
       88 GETUPVAL                         R11 4
       89 JUMPIF                           R11 ; [+3]
       90 GETTABLEKS                       R10 R0 K22 ["sizeBinding"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R10
       94 SETTABLEKS                       R10 R9 K16 ["Size"]
       96 SETTABLEKS                       R4 R9 K17 ["onStateChanged"]
       98 GETTABLEKS                       R10 R0 K18 ["LayoutOrder"]
      100 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
      102 DUPTABLE                         R10 K25 [{"Button", "UISizeConstraint"}]
      103 GETUPVAL                         R11 5
      104 GETUPVAL                         R12 3
      105 GETTABLEKS                       R12 R12 K23 ["Button"]
      107 DUPTABLE                         R13 K31 [{"ref", "text", "variant", "size", "fillBehavior", "onActivated", "isDisabled", "testId"}]
      108 SETTABLEKS                       R1 R13 K13 ["ref"]
      110 GETTABLEKS                       R14 R0 K0 ["action"]
      112 GETTABLEKS                       R14 R14 K7 ["text"]
      114 SETTABLEKS                       R14 R13 K7 ["text"]
      116 GETTABLEKS                       R14 R0 K26 ["variant"]
      118 SETTABLEKS                       R14 R13 K26 ["variant"]
      120 GETUPVAL                         R14 3
      121 GETTABLEKS                       R14 R14 K32 ["Enums"]
      123 GETTABLEKS                       R14 R14 K33 ["InputSize"]
      125 GETTABLEKS                       R14 R14 K34 ["XSmall"]
      127 SETTABLEKS                       R14 R13 K27 ["size"]
      129 GETUPVAL                         R15 4
      130 JUMPIF                           R15 ; [+8]
      131 GETUPVAL                         R14 3
      132 GETTABLEKS                       R14 R14 K32 ["Enums"]
      134 GETTABLEKS                       R14 R14 K35 ["FillBehavior"]
      136 GETTABLEKS                       R14 R14 K36 ["Fill"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R14
      140 SETTABLEKS                       R14 R13 K28 ["fillBehavior"]
      142 SETTABLEKS                       R5 R13 K9 ["onActivated"]
      144 GETUPVAL                         R15 6
      145 JUMPIFNOT                        R15 ; [+5]
      146 GETTABLEKS                       R14 R0 K0 ["action"]
      148 GETTABLEKS                       R14 R14 K37 ["disabled"]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R14
      152 SETTABLEKS                       R14 R13 K29 ["isDisabled"]
      154 GETTABLEKS                       R14 R0 K30 ["testId"]
      156 SETTABLEKS                       R14 R13 K30 ["testId"]
      158 CALL                             R11 2 1
      159 SETTABLEKS                       R11 R10 K23 ["Button"]
      161 GETUPVAL                         R12 4
      162 JUMPIFNOT                        R12 ; [+16]
      163 GETUPVAL                         R11 5
      164 LOADK                            R12 K24 ["UISizeConstraint"]
      165 DUPTABLE                         R13 K39 [{"MaxSize"}]
      166 GETIMPORT                        R14 K42 [Vector2.new]
      168 JUMPIFNOT                        R6 ; [+3]
      169 GETTABLEKS                       R15 R0 K11 ["widthOverride"]
      171 JUMP                             ; [+1]
      172 LOADN                            R15 120
      173 LOADK                            R16 K43 [∞]
      174 CALL                             R14 2 1
      175 SETTABLEKS                       R14 R13 K38 ["MaxSize"]
      177 CALL                             R11 2 1
      178 JUMP                             ; [+8]
      179 GETUPVAL                         R11 5
      180 LOADK                            R12 K24 ["UISizeConstraint"]
      181 DUPTABLE                         R13 K39 [{"MaxSize"}]
      182 GETTABLEKS                       R14 R0 K44 ["maxSizeBinding"]
      184 SETTABLEKS                       R14 R13 K38 ["MaxSize"]
      186 CALL                             R11 2 1
      187 SETTABLEKS                       R11 R10 K24 ["UISizeConstraint"]
      189 CALL                             R7 3 -1
      190 RETURN                           R7 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+7]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 LOADK                            R2 K4 [∞]
        6 LOADK                            R3 K4 [∞]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R5 0
       10 SUBK                             R4 R5 K5 [1]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K6 ["Gap"]
       14 GETTABLEKS                       R5 R5 K7 ["Small"]
       16 MUL                              R3 R4 R5
       17 SUB                              R2 R0 R3
       18 GETUPVAL                         R3 0
       19 DIV                              R1 R2 R3
       20 GETIMPORT                        R2 K3 [Vector2.new]
       22 FASTCALL2K                       MATH_MAX R1 K0 ; [+5]
       24 MOVE                             R4 R1
       25 LOADK                            R5 K0 [0]
       26 GETIMPORT                        R3 K10 [math.max]
       28 CALL                             R3 2 1
       29 LOADK                            R4 K4 [∞]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["map"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["primary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["secondary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["tertiary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["LayoutOrder"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Hooks"]
        9 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       11 CALL                             R3 0 1
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 LOADNIL                          R11
       20 LOADNIL                          R12
       21 GETUPVAL                         R13 3
       22 JUMPIFNOT                        R13 ; [+11]
       23 GETUPVAL                         R13 4
       24 GETTABLEKS                       R14 R3 K3 ["Gap"]
       26 GETTABLEKS                       R14 R14 K4 ["Small"]
       28 LOADN                            R15 120
       29 CALL                             R13 2 3
       30 MOVE                             R4 R13
       31 MOVE                             R5 R14
       32 MOVE                             R6 R15
       33 JUMP                             ; [+62]
       34 GETUPVAL                         R13 5
       35 GETTABLEKS                       R13 R13 K5 ["useBinding"]
       37 LOADN                            R14 0
       38 CALL                             R13 1 2
       39 MOVE                             R7 R13
       40 MOVE                             R8 R14
       41 GETUPVAL                         R13 5
       42 GETTABLEKS                       R13 R13 K6 ["useCallback"]
       44 NEWCLOSURE                       R14 P0
       45 CAPTURE                          REF R8
       46 NEWTABLE                         R15 0 1
       48 MOVE                             R16 R8
       49 SETLIST                          R15 R16 1 [1]
       51 CALL                             R13 2 1
       52 MOVE                             R9 R13
       53 GETTABLEKS                       R16 R0 K7 ["primaryAction"]
       55 JUMPIFEQKNIL                     R16 ; [+3]
       57 LOADN                            R15 1
       58 JUMP                             ; [+1]
       59 LOADN                            R15 0
       60 GETTABLEKS                       R17 R0 K8 ["secondaryAction"]
       62 JUMPIFEQKNIL                     R17 ; [+3]
       64 LOADN                            R16 1
       65 JUMP                             ; [+1]
       66 LOADN                            R16 0
       67 ADD                              R14 R15 R16
       68 GETTABLEKS                       R16 R0 K9 ["tertiaryAction"]
       70 JUMPIFEQKNIL                     R16 ; [+3]
       72 LOADN                            R15 1
       73 JUMP                             ; [+1]
       74 LOADN                            R15 0
       75 ADD                              R13 R14 R15
       76 GETUPVAL                         R14 5
       77 GETTABLEKS                       R14 R14 K10 ["useMemo"]
       79 NEWCLOSURE                       R15 P1
       80 CAPTURE                          REF R7
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R3
       83 NEWTABLE                         R16 0 3
       85 MOVE                             R17 R7
       86 MOVE                             R18 R13
       87 MOVE                             R19 R3
       88 SETLIST                          R16 R17 3 [1]
       90 CALL                             R14 2 1
       91 MOVE                             R10 R14
       92 GETUPVAL                         R14 6
       93 CALL                             R14 0 2
       94 MOVE                             R11 R14
       95 MOVE                             R12 R15
       96 GETUPVAL                         R14 3
       97 JUMPIFNOT                        R14 ; [+12]
       98 GETUPVAL                         R13 5
       99 GETTABLEKS                       R13 R13 K6 ["useCallback"]
      101 NEWCLOSURE                       R14 P2
      102 CAPTURE                          REF R5
      103 NEWTABLE                         R15 0 1
      105 MOVE                             R16 R5
      106 SETLIST                          R15 R16 1 [1]
      108 CALL                             R13 2 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R13
      111 GETUPVAL                         R15 3
      112 JUMPIFNOT                        R15 ; [+12]
      113 GETUPVAL                         R14 5
      114 GETTABLEKS                       R14 R14 K6 ["useCallback"]
      116 NEWCLOSURE                       R15 P3
      117 CAPTURE                          REF R5
      118 NEWTABLE                         R16 0 1
      120 MOVE                             R17 R5
      121 SETLIST                          R16 R17 1 [1]
      123 CALL                             R14 2 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R14
      126 GETUPVAL                         R16 3
      127 JUMPIFNOT                        R16 ; [+12]
      128 GETUPVAL                         R15 5
      129 GETTABLEKS                       R15 R15 K6 ["useCallback"]
      131 NEWCLOSURE                       R16 P4
      132 CAPTURE                          REF R5
      133 NEWTABLE                         R17 0 1
      135 MOVE                             R18 R5
      136 SETLIST                          R17 R18 1 [1]
      138 CALL                             R15 2 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R15
      141 LOADNIL                          R16
      142 LOADNIL                          R17
      143 MOVE                             R20 R2
      144 CALL                             R20 0 1
      145 MOVE                             R18 R20
      146 MOVE                             R19 R2
      147 CALL                             R19 0 1
      148 GETUPVAL                         R20 3
      149 JUMPIFNOT                        R20 ; [+3]
      150 MOVE                             R17 R18
      151 MOVE                             R16 R19
      152 JUMP                             ; [+2]
      153 MOVE                             R16 R18
      154 MOVE                             R17 R19
      155 GETUPVAL                         R18 7
      156 GETUPVAL                         R19 2
      157 GETTABLEKS                       R19 R19 K11 ["View"]
      159 DUPTABLE                         R20 K16 [{["tag"], ["onAbsoluteSizeChanged"], [3], ["testId"] = "--dialog-button-group"}]
      160 GETUPVAL                         R22 3
      161 JUMPIFNOT                        R22 ; [+2]
      162 LOADK                            R21 K17 ["component-dialog-button-group row align-x-right items-stretch gap-small size-full-0 auto-y"]
      163 JUMP                             ; [+21]
      164 NEWTABLE                         R21 4 0
      166 LOADB                            R22 1
      167 SETTABLEKS                       R22 R21 K18 ["component-dialog-button-group row size-full-0 auto-y items-stretch gap-small"]
      169 GETTABLEKS                       R23 R0 K9 ["tertiaryAction"]
      171 JUMPIFNOTEQKNIL                  R23 ; [+2]
      173 LOADB                            R22 0 +1
      174 LOADB                            R22 1
      175 SETTABLEKS                       R22 R21 K19 ["flex-x-between"]
      177 GETTABLEKS                       R23 R0 K9 ["tertiaryAction"]
      179 JUMPIFEQKNIL                     R23 ; [+2]
      181 LOADB                            R22 0 +1
      182 LOADB                            R22 1
      183 SETTABLEKS                       R22 R21 K20 ["align-x-right"]
      185 SETTABLEKS                       R21 R20 K12 ["tag"]
      187 GETUPVAL                         R22 3
      188 JUMPIFNOT                        R22 ; [+2]
      189 MOVE                             R21 R6
      190 JUMP                             ; [+1]
      191 MOVE                             R21 R9
      192 SETTABLEKS                       R21 R20 K13 ["onAbsoluteSizeChanged"]
      194 SETTABLEKS                       R1 R20 K0 ["LayoutOrder"]
      196 DUPTABLE                         R21 K23 [{"Tertiary", "PrimaryAndSecondary"}]
      197 GETTABLEKS                       R23 R0 K9 ["tertiaryAction"]
      199 JUMPIFNOT                        R23 ; [+35]
      200 GETUPVAL                         R22 7
      201 GETUPVAL                         R23 8
      202 DUPTABLE                         R24 K32 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], ["sizeRef"], ["sizeBinding"], ["maxSizeBinding"], [8], ["testId"] = "--dialog-button-tertiary"}]
      203 GETTABLEKS                       R25 R0 K9 ["tertiaryAction"]
      205 SETTABLEKS                       R25 R24 K24 ["action"]
      207 GETUPVAL                         R25 2
      208 GETTABLEKS                       R25 R25 K33 ["Enums"]
      210 GETTABLEKS                       R25 R25 K34 ["ButtonVariant"]
      212 GETTABLEKS                       R25 R25 K35 ["Standard"]
      214 SETTABLEKS                       R25 R24 K25 ["variant"]
      216 SETTABLEKS                       R15 R24 K26 ["measureRef"]
      218 JUMPIFNOT                        R4 ; [+3]
      219 GETTABLEKS                       R25 R4 K36 ["tertiary"]
      221 JUMP                             ; [+1]
      222 LOADNIL                          R25
      223 SETTABLEKS                       R25 R24 K27 ["widthOverride"]
      225 SETTABLEKS                       R12 R24 K28 ["sizeRef"]
      227 SETTABLEKS                       R11 R24 K29 ["sizeBinding"]
      229 SETTABLEKS                       R10 R24 K30 ["maxSizeBinding"]
      231 SETTABLEKS                       R16 R24 K0 ["LayoutOrder"]
      233 CALL                             R22 2 1
      234 JUMP                             ; [+1]
      235 LOADNIL                          R22
      236 SETTABLEKS                       R22 R21 K21 ["Tertiary"]
      238 GETUPVAL                         R22 7
      239 GETUPVAL                         R23 2
      240 GETTABLEKS                       R23 R23 K11 ["View"]
      242 DUPTABLE                         R24 K37 [{"tag", "LayoutOrder"}]
      243 GETUPVAL                         R26 3
      244 JUMPIFNOT                        R26 ; [+2]
      245 LOADK                            R25 K38 ["row items-stretch gap-small auto-xy"]
      246 JUMP                             ; [+1]
      247 LOADK                            R25 K39 ["row flex-x-between items-stretch gap-small auto-xy"]
      248 SETTABLEKS                       R25 R24 K12 ["tag"]
      250 SETTABLEKS                       R17 R24 K0 ["LayoutOrder"]
      252 DUPTABLE                         R25 K42 [{"Primary", "Secondary"}]
      253 GETTABLEKS                       R27 R0 K7 ["primaryAction"]
      255 JUMPIFNOT                        R27 ; [+37]
      256 GETUPVAL                         R26 7
      257 GETUPVAL                         R27 8
      258 DUPTABLE                         R28 K44 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], ["sizeRef"], ["sizeBinding"], ["maxSizeBinding"], [8], ["testId"] = "--dialog-button-primary"}]
      259 GETTABLEKS                       R29 R0 K7 ["primaryAction"]
      261 SETTABLEKS                       R29 R28 K24 ["action"]
      263 GETUPVAL                         R29 2
      264 GETTABLEKS                       R29 R29 K33 ["Enums"]
      266 GETTABLEKS                       R29 R29 K34 ["ButtonVariant"]
      268 GETTABLEKS                       R29 R29 K45 ["Emphasis"]
      270 SETTABLEKS                       R29 R28 K25 ["variant"]
      272 SETTABLEKS                       R13 R28 K26 ["measureRef"]
      274 JUMPIFNOT                        R4 ; [+3]
      275 GETTABLEKS                       R29 R4 K46 ["primary"]
      277 JUMP                             ; [+1]
      278 LOADNIL                          R29
      279 SETTABLEKS                       R29 R28 K27 ["widthOverride"]
      281 SETTABLEKS                       R12 R28 K28 ["sizeRef"]
      283 SETTABLEKS                       R11 R28 K29 ["sizeBinding"]
      285 SETTABLEKS                       R10 R28 K30 ["maxSizeBinding"]
      287 MOVE                             R29 R2
      288 CALL                             R29 0 1
      289 SETTABLEKS                       R29 R28 K0 ["LayoutOrder"]
      291 CALL                             R26 2 1
      292 JUMP                             ; [+1]
      293 LOADNIL                          R26
      294 SETTABLEKS                       R26 R25 K40 ["Primary"]
      296 GETTABLEKS                       R27 R0 K8 ["secondaryAction"]
      298 JUMPIFNOT                        R27 ; [+37]
      299 GETUPVAL                         R26 7
      300 GETUPVAL                         R27 8
      301 DUPTABLE                         R28 K48 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], ["sizeRef"], ["sizeBinding"], ["maxSizeBinding"], [8], ["testId"] = "--dialog-button-secondary"}]
      302 GETTABLEKS                       R29 R0 K8 ["secondaryAction"]
      304 SETTABLEKS                       R29 R28 K24 ["action"]
      306 GETUPVAL                         R29 2
      307 GETTABLEKS                       R29 R29 K33 ["Enums"]
      309 GETTABLEKS                       R29 R29 K34 ["ButtonVariant"]
      311 GETTABLEKS                       R29 R29 K35 ["Standard"]
      313 SETTABLEKS                       R29 R28 K25 ["variant"]
      315 SETTABLEKS                       R14 R28 K26 ["measureRef"]
      317 JUMPIFNOT                        R4 ; [+3]
      318 GETTABLEKS                       R29 R4 K49 ["secondary"]
      320 JUMP                             ; [+1]
      321 LOADNIL                          R29
      322 SETTABLEKS                       R29 R28 K27 ["widthOverride"]
      324 SETTABLEKS                       R12 R28 K28 ["sizeRef"]
      326 SETTABLEKS                       R11 R28 K29 ["sizeBinding"]
      328 SETTABLEKS                       R10 R28 K30 ["maxSizeBinding"]
      330 MOVE                             R29 R2
      331 CALL                             R29 0 1
      332 SETTABLEKS                       R29 R28 K0 ["LayoutOrder"]
      334 CALL                             R26 2 1
      335 JUMP                             ; [+1]
      336 LOADNIL                          R26
      337 SETTABLEKS                       R26 R25 K41 ["Secondary"]
      339 CALL                             R22 3 1
      340 SETTABLEKS                       R22 R21 K22 ["PrimaryAndSecondary"]
      342 CALL                             R18 3 -1
      343 CLOSEUPVALS                      R5
      344 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Flags"]
       48 GETTABLEKS                       R7 R7 K14 ["getFFlagDialogManagerUpdateSemantics"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K11 ["Src"]
       55 GETTABLEKS                       R8 R8 K13 ["Flags"]
       57 GETTABLEKS                       R8 R8 K15 ["getFFlagStudioDialogButtonGroupNoGap"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K11 ["Src"]
       64 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       66 GETTABLEKS                       R9 R9 K17 ["useBindable"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K11 ["Src"]
       73 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       75 GETTABLEKS                       R10 R10 K18 ["useButtonGroupFairWidth"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K11 ["Src"]
       82 GETTABLEKS                       R11 R11 K16 ["Hooks"]
       84 GETTABLEKS                       R11 R11 K19 ["useButtonGroupSizeAlignment"]
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R11 R2 K20 ["Util"]
       89 GETTABLEKS                       R11 R11 K21 ["counter"]
       91 MOVE                             R12 R6
       92 CALL                             R12 0 1
       93 MOVE                             R13 R7
       94 CALL                             R13 0 1
       95 GETTABLEKS                       R14 R3 K22 ["createElement"]
       97 GETTABLEKS                       R15 R2 K23 ["UI"]
       99 GETTABLEKS                       R15 R15 K16 ["Hooks"]
      101 GETTABLEKS                       R15 R15 K24 ["useTooltip"]
      103 GETTABLEKS                       R16 R4 K16 ["Hooks"]
      105 GETTABLEKS                       R16 R16 K25 ["useWidgetRef"]
      107 GETTABLEKS                       R17 R3 K26 ["memo"]
      109 DUPCLOSURE                       R18 K27 [PROTO_3]
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R12
      117 CALL                             R17 1 1
      118 DUPCLOSURE                       R18 K28 [PROTO_10]
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R17
      128 GETTABLEKS                       R19 R3 K26 ["memo"]
      130 MOVE                             R20 R18
      131 CALL                             R19 1 -1
      132 RETURN                           R19 -1
