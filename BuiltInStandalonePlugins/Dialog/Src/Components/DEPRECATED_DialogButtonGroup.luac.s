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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SharedFlags"]
        3 GETTABLEKS                       R3 R3 K1 ["getFFlagStudioFoundationDialogComponent"]
        5 CALL                             R3 0 1
        6 NOT                              R2 R3
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["This version of the DialogButtonGroup component is deprecated. Use the version from StudioFoundation"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R2 R0 K5 ["LayoutOrder"]
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 2
       18 CALL                             R2 0 1
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K6 ["Hooks"]
       22 GETTABLEKS                       R3 R3 K7 ["useTokens"]
       24 CALL                             R3 0 1
       25 LOADNIL                          R4
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 LOADNIL                          R12
       34 GETUPVAL                         R13 4
       35 JUMPIFNOT                        R13 ; [+11]
       36 GETUPVAL                         R13 5
       37 GETTABLEKS                       R14 R3 K8 ["Gap"]
       39 GETTABLEKS                       R14 R14 K9 ["Small"]
       41 LOADN                            R15 120
       42 CALL                             R13 2 3
       43 MOVE                             R4 R13
       44 MOVE                             R5 R14
       45 MOVE                             R6 R15
       46 JUMP                             ; [+62]
       47 GETUPVAL                         R13 6
       48 GETTABLEKS                       R13 R13 K10 ["useBinding"]
       50 LOADN                            R14 0
       51 CALL                             R13 1 2
       52 MOVE                             R7 R13
       53 MOVE                             R8 R14
       54 GETUPVAL                         R13 6
       55 GETTABLEKS                       R13 R13 K11 ["useCallback"]
       57 NEWCLOSURE                       R14 P0
       58 CAPTURE                          REF R8
       59 NEWTABLE                         R15 0 1
       61 MOVE                             R16 R8
       62 SETLIST                          R15 R16 1 [1]
       64 CALL                             R13 2 1
       65 MOVE                             R9 R13
       66 GETTABLEKS                       R16 R0 K12 ["primaryAction"]
       68 JUMPIFEQKNIL                     R16 ; [+3]
       70 LOADN                            R15 1
       71 JUMP                             ; [+1]
       72 LOADN                            R15 0
       73 GETTABLEKS                       R17 R0 K13 ["secondaryAction"]
       75 JUMPIFEQKNIL                     R17 ; [+3]
       77 LOADN                            R16 1
       78 JUMP                             ; [+1]
       79 LOADN                            R16 0
       80 ADD                              R14 R15 R16
       81 GETTABLEKS                       R16 R0 K14 ["tertiaryAction"]
       83 JUMPIFEQKNIL                     R16 ; [+3]
       85 LOADN                            R15 1
       86 JUMP                             ; [+1]
       87 LOADN                            R15 0
       88 ADD                              R13 R14 R15
       89 GETUPVAL                         R14 6
       90 GETTABLEKS                       R14 R14 K15 ["useMemo"]
       92 NEWCLOSURE                       R15 P1
       93 CAPTURE                          REF R7
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R3
       96 NEWTABLE                         R16 0 3
       98 MOVE                             R17 R7
       99 MOVE                             R18 R13
      100 MOVE                             R19 R3
      101 SETLIST                          R16 R17 3 [1]
      103 CALL                             R14 2 1
      104 MOVE                             R10 R14
      105 GETUPVAL                         R14 7
      106 CALL                             R14 0 2
      107 MOVE                             R11 R14
      108 MOVE                             R12 R15
      109 GETUPVAL                         R14 4
      110 JUMPIFNOT                        R14 ; [+12]
      111 GETUPVAL                         R13 6
      112 GETTABLEKS                       R13 R13 K11 ["useCallback"]
      114 NEWCLOSURE                       R14 P2
      115 CAPTURE                          REF R5
      116 NEWTABLE                         R15 0 1
      118 MOVE                             R16 R5
      119 SETLIST                          R15 R16 1 [1]
      121 CALL                             R13 2 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R13
      124 GETUPVAL                         R15 4
      125 JUMPIFNOT                        R15 ; [+12]
      126 GETUPVAL                         R14 6
      127 GETTABLEKS                       R14 R14 K11 ["useCallback"]
      129 NEWCLOSURE                       R15 P3
      130 CAPTURE                          REF R5
      131 NEWTABLE                         R16 0 1
      133 MOVE                             R17 R5
      134 SETLIST                          R16 R17 1 [1]
      136 CALL                             R14 2 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R14
      139 GETUPVAL                         R16 4
      140 JUMPIFNOT                        R16 ; [+12]
      141 GETUPVAL                         R15 6
      142 GETTABLEKS                       R15 R15 K11 ["useCallback"]
      144 NEWCLOSURE                       R16 P4
      145 CAPTURE                          REF R5
      146 NEWTABLE                         R17 0 1
      148 MOVE                             R18 R5
      149 SETLIST                          R17 R18 1 [1]
      151 CALL                             R15 2 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R15
      154 LOADNIL                          R16
      155 LOADNIL                          R17
      156 MOVE                             R20 R2
      157 CALL                             R20 0 1
      158 MOVE                             R18 R20
      159 MOVE                             R19 R2
      160 CALL                             R19 0 1
      161 GETUPVAL                         R20 4
      162 JUMPIFNOT                        R20 ; [+3]
      163 MOVE                             R17 R18
      164 MOVE                             R16 R19
      165 JUMP                             ; [+2]
      166 MOVE                             R16 R18
      167 MOVE                             R17 R19
      168 GETUPVAL                         R18 8
      169 GETUPVAL                         R19 3
      170 GETTABLEKS                       R19 R19 K16 ["View"]
      172 DUPTABLE                         R20 K21 [{["tag"], ["onAbsoluteSizeChanged"], ["LayoutOrder"], ["testId"] = "--dialog-button-group"}]
      173 GETUPVAL                         R22 4
      174 JUMPIFNOT                        R22 ; [+2]
      175 LOADK                            R21 K22 ["row align-x-right items-stretch gap-small size-full-0 auto-y"]
      176 JUMP                             ; [+21]
      177 NEWTABLE                         R21 4 0
      179 LOADB                            R22 1
      180 SETTABLEKS                       R22 R21 K23 ["row size-full-0 auto-y items-stretch gap-small"]
      182 GETTABLEKS                       R23 R0 K14 ["tertiaryAction"]
      184 JUMPIFNOTEQKNIL                  R23 ; [+2]
      186 LOADB                            R22 0 +1
      187 LOADB                            R22 1
      188 SETTABLEKS                       R22 R21 K24 ["flex-x-between"]
      190 GETTABLEKS                       R23 R0 K14 ["tertiaryAction"]
      192 JUMPIFEQKNIL                     R23 ; [+2]
      194 LOADB                            R22 0 +1
      195 LOADB                            R22 1
      196 SETTABLEKS                       R22 R21 K25 ["align-x-right"]
      198 SETTABLEKS                       R21 R20 K17 ["tag"]
      200 GETUPVAL                         R22 4
      201 JUMPIFNOT                        R22 ; [+2]
      202 MOVE                             R21 R6
      203 JUMP                             ; [+1]
      204 MOVE                             R21 R9
      205 SETTABLEKS                       R21 R20 K18 ["onAbsoluteSizeChanged"]
      207 SETTABLEKS                       R1 R20 K5 ["LayoutOrder"]
      209 DUPTABLE                         R21 K28 [{"Tertiary", "PrimaryAndSecondary"}]
      210 GETTABLEKS                       R23 R0 K14 ["tertiaryAction"]
      212 JUMPIFNOT                        R23 ; [+35]
      213 GETUPVAL                         R22 8
      214 GETUPVAL                         R23 9
      215 DUPTABLE                         R24 K37 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], ["sizeRef"], ["sizeBinding"], ["maxSizeBinding"], ["LayoutOrder"], ["testId"] = "--dialog-button-tertiary"}]
      216 GETTABLEKS                       R25 R0 K14 ["tertiaryAction"]
      218 SETTABLEKS                       R25 R24 K29 ["action"]
      220 GETUPVAL                         R25 3
      221 GETTABLEKS                       R25 R25 K38 ["Enums"]
      223 GETTABLEKS                       R25 R25 K39 ["ButtonVariant"]
      225 GETTABLEKS                       R25 R25 K40 ["Standard"]
      227 SETTABLEKS                       R25 R24 K30 ["variant"]
      229 SETTABLEKS                       R15 R24 K31 ["measureRef"]
      231 JUMPIFNOT                        R4 ; [+3]
      232 GETTABLEKS                       R25 R4 K41 ["tertiary"]
      234 JUMP                             ; [+1]
      235 LOADNIL                          R25
      236 SETTABLEKS                       R25 R24 K32 ["widthOverride"]
      238 SETTABLEKS                       R12 R24 K33 ["sizeRef"]
      240 SETTABLEKS                       R11 R24 K34 ["sizeBinding"]
      242 SETTABLEKS                       R10 R24 K35 ["maxSizeBinding"]
      244 SETTABLEKS                       R16 R24 K5 ["LayoutOrder"]
      246 CALL                             R22 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R22
      249 SETTABLEKS                       R22 R21 K26 ["Tertiary"]
      251 GETUPVAL                         R22 8
      252 GETUPVAL                         R23 3
      253 GETTABLEKS                       R23 R23 K16 ["View"]
      255 DUPTABLE                         R24 K42 [{"tag", "LayoutOrder"}]
      256 GETUPVAL                         R26 4
      257 JUMPIFNOT                        R26 ; [+2]
      258 LOADK                            R25 K43 ["row items-stretch gap-small auto-xy"]
      259 JUMP                             ; [+1]
      260 LOADK                            R25 K44 ["row flex-x-between items-stretch gap-small auto-xy"]
      261 SETTABLEKS                       R25 R24 K17 ["tag"]
      263 SETTABLEKS                       R17 R24 K5 ["LayoutOrder"]
      265 DUPTABLE                         R25 K47 [{"Primary", "Secondary"}]
      266 GETTABLEKS                       R27 R0 K12 ["primaryAction"]
      268 JUMPIFNOT                        R27 ; [+37]
      269 GETUPVAL                         R26 8
      270 GETUPVAL                         R27 9
      271 DUPTABLE                         R28 K49 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], ["sizeRef"], ["sizeBinding"], ["maxSizeBinding"], ["LayoutOrder"], ["testId"] = "--dialog-button-primary"}]
      272 GETTABLEKS                       R29 R0 K12 ["primaryAction"]
      274 SETTABLEKS                       R29 R28 K29 ["action"]
      276 GETUPVAL                         R29 3
      277 GETTABLEKS                       R29 R29 K38 ["Enums"]
      279 GETTABLEKS                       R29 R29 K39 ["ButtonVariant"]
      281 GETTABLEKS                       R29 R29 K50 ["Emphasis"]
      283 SETTABLEKS                       R29 R28 K30 ["variant"]
      285 SETTABLEKS                       R13 R28 K31 ["measureRef"]
      287 JUMPIFNOT                        R4 ; [+3]
      288 GETTABLEKS                       R29 R4 K51 ["primary"]
      290 JUMP                             ; [+1]
      291 LOADNIL                          R29
      292 SETTABLEKS                       R29 R28 K32 ["widthOverride"]
      294 SETTABLEKS                       R12 R28 K33 ["sizeRef"]
      296 SETTABLEKS                       R11 R28 K34 ["sizeBinding"]
      298 SETTABLEKS                       R10 R28 K35 ["maxSizeBinding"]
      300 MOVE                             R29 R2
      301 CALL                             R29 0 1
      302 SETTABLEKS                       R29 R28 K5 ["LayoutOrder"]
      304 CALL                             R26 2 1
      305 JUMP                             ; [+1]
      306 LOADNIL                          R26
      307 SETTABLEKS                       R26 R25 K45 ["Primary"]
      309 GETTABLEKS                       R27 R0 K13 ["secondaryAction"]
      311 JUMPIFNOT                        R27 ; [+37]
      312 GETUPVAL                         R26 8
      313 GETUPVAL                         R27 9
      314 DUPTABLE                         R28 K53 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], ["sizeRef"], ["sizeBinding"], ["maxSizeBinding"], ["LayoutOrder"], ["testId"] = "--dialog-button-secondary"}]
      315 GETTABLEKS                       R29 R0 K13 ["secondaryAction"]
      317 SETTABLEKS                       R29 R28 K29 ["action"]
      319 GETUPVAL                         R29 3
      320 GETTABLEKS                       R29 R29 K38 ["Enums"]
      322 GETTABLEKS                       R29 R29 K39 ["ButtonVariant"]
      324 GETTABLEKS                       R29 R29 K40 ["Standard"]
      326 SETTABLEKS                       R29 R28 K30 ["variant"]
      328 SETTABLEKS                       R14 R28 K31 ["measureRef"]
      330 JUMPIFNOT                        R4 ; [+3]
      331 GETTABLEKS                       R29 R4 K54 ["secondary"]
      333 JUMP                             ; [+1]
      334 LOADNIL                          R29
      335 SETTABLEKS                       R29 R28 K32 ["widthOverride"]
      337 SETTABLEKS                       R12 R28 K33 ["sizeRef"]
      339 SETTABLEKS                       R11 R28 K34 ["sizeBinding"]
      341 SETTABLEKS                       R10 R28 K35 ["maxSizeBinding"]
      343 MOVE                             R29 R2
      344 CALL                             R29 0 1
      345 SETTABLEKS                       R29 R28 K5 ["LayoutOrder"]
      347 CALL                             R26 2 1
      348 JUMP                             ; [+1]
      349 LOADNIL                          R26
      350 SETTABLEKS                       R26 R25 K46 ["Secondary"]
      352 CALL                             R22 3 1
      353 SETTABLEKS                       R22 R21 K27 ["PrimaryAndSecondary"]
      355 CALL                             R18 3 -1
      356 CLOSEUPVALS                      R5
      357 RETURN                           R18 -1

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
       66 GETTABLEKS                       R9 R9 K17 ["DEPRECATED_useBindable"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K11 ["Src"]
       73 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       75 GETTABLEKS                       R10 R10 K18 ["DEPRECATED_useButtonGroupFairWidth"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K11 ["Src"]
       82 GETTABLEKS                       R11 R11 K16 ["Hooks"]
       84 GETTABLEKS                       R11 R11 K19 ["DEPRECATED_useButtonGroupSizeAlignment"]
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
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R17
      129 GETTABLEKS                       R19 R3 K26 ["memo"]
      131 MOVE                             R20 R18
      132 CALL                             R19 1 -1
      133 RETURN                           R19 -1
