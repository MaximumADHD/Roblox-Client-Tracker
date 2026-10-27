PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETIMPORT                        R1 K3 [task.cancel]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["current"]
       13 JUMPIFNOT                        R2 ; [+29]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K4 ["Enums"]
       17 GETTABLEKS                       R2 R2 K5 ["ControlState"]
       19 GETTABLEKS                       R2 R2 K6 ["Hover"]
       21 JUMPIFNOTEQ                      R0 R2 ; [+21]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K0 ["current"]
       26 LOADK                            R4 K7 ["TextLabel"]
       27 NAMECALL                         R2 R2 K8 ["IsA"]
       29 CALL                             R2 2 1
       30 JUMPIFNOT                        R2 ; [+4]
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K0 ["current"]
       34 JUMP                             ; [+9]
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K0 ["current"]
       38 LOADK                            R3 K7 ["TextLabel"]
       39 NAMECALL                         R1 R1 K9 ["FindFirstChildWhichIsA"]
       41 CALL                             R1 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R1
       44 JUMPIFNOT                        R1 ; [+11]
       45 GETUPVAL                         R2 0
       46 GETIMPORT                        R3 K11 [task.spawn]
       48 NEWCLOSURE                       R4 P0
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U4
       52 CALL                             R3 1 1
       53 SETTABLEKS                       R3 R2 K0 ["current"]
       55 RETURN                           R0 0
       56 GETUPVAL                         R2 5
       57 CALL                             R2 0 0
       58 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["action"]
        3 GETTABLEKS                       R0 R0 K1 ["onActivated"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["action"]
        8 GETTABLEKS                       R1 R1 K2 ["uri"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
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
       21 LOADNIL                          R4
       22 GETUPVAL                         R5 2
       23 JUMPIFNOT                        R5 ; [+17]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K8 ["useRef"]
       27 LOADNIL                          R6
       28 CALL                             R5 1 1
       29 MOVE                             R4 R5
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K9 ["useEffect"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          REF R4
       35 NEWTABLE                         R7 0 1
       37 MOVE                             R8 R4
       38 SETLIST                          R7 R8 1 [1]
       40 CALL                             R5 2 0
       41 LOADNIL                          R5
       42 GETUPVAL                         R6 2
       43 JUMPIFNOT                        R6 ; [+21]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K10 ["useCallback"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          REF R4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 NEWTABLE                         R8 0 4
       56 MOVE                             R9 R4
       57 MOVE                             R10 R1
       58 MOVE                             R11 R2
       59 MOVE                             R12 R3
       60 SETLIST                          R8 R9 4 [1]
       62 CALL                             R6 2 1
       63 MOVE                             R5 R6
       64 JUMP                             ; [+17]
       65 GETUPVAL                         R6 3
       66 GETTABLEKS                       R6 R6 K10 ["useCallback"]
       68 NEWCLOSURE                       R7 P2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 NEWTABLE                         R8 0 3
       75 MOVE                             R9 R1
       76 MOVE                             R10 R2
       77 MOVE                             R11 R3
       78 SETLIST                          R8 R9 3 [1]
       80 CALL                             R6 2 1
       81 MOVE                             R5 R6
       82 GETUPVAL                         R6 3
       83 GETTABLEKS                       R6 R6 K10 ["useCallback"]
       85 NEWCLOSURE                       R7 P3
       86 CAPTURE                          VAL R0
       87 NEWTABLE                         R8 0 2
       89 GETTABLEKS                       R9 R0 K0 ["action"]
       91 GETTABLEKS                       R9 R9 K11 ["onActivated"]
       93 GETTABLEKS                       R10 R0 K0 ["action"]
       95 GETTABLEKS                       R10 R10 K1 ["uri"]
       97 SETLIST                          R8 R9 2 [1]
       99 CALL                             R6 2 1
      100 GETUPVAL                         R7 3
      101 GETTABLEKS                       R7 R7 K9 ["useEffect"]
      103 NEWCLOSURE                       R8 P4
      104 CAPTURE                          VAL R3
      105 NEWTABLE                         R9 0 1
      107 MOVE                             R10 R3
      108 SETLIST                          R9 R10 1 [1]
      110 CALL                             R7 2 0
      111 GETTABLEKS                       R8 R0 K12 ["widthOverride"]
      113 JUMPIFNOTEQKNIL                  R8 ; [+2]
      115 LOADB                            R7 0 +1
      116 LOADB                            R7 1
      117 GETUPVAL                         R8 6
      118 GETUPVAL                         R9 4
      119 GETTABLEKS                       R9 R9 K13 ["View"]
      121 DUPTABLE                         R10 K20 [{["ref"], ["tag"] = "auto-xy", ["onStateChanged"], ["LayoutOrder"], ["testId"]}]
      122 GETTABLEKS                       R11 R0 K21 ["measureRef"]
      124 SETTABLEKS                       R11 R10 K14 ["ref"]
      126 SETTABLEKS                       R5 R10 K17 ["onStateChanged"]
      128 GETTABLEKS                       R11 R0 K18 ["LayoutOrder"]
      130 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      132 GETUPVAL                         R12 2
      133 JUMPIF                           R12 ; [+2]
      134 GETUPVAL                         R12 7
      135 JUMPIFNOT                        R12 ; [+7]
      136 LOADK                            R11 K22 ["%*-wrapper"]
      137 GETTABLEKS                       R13 R0 K19 ["testId"]
      139 NAMECALL                         R11 R11 K23 ["format"]
      141 CALL                             R11 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R11
      144 SETTABLEKS                       R11 R10 K19 ["testId"]
      146 DUPTABLE                         R11 K26 [{"Button", "UISizeConstraint"}]
      147 GETUPVAL                         R12 6
      148 GETUPVAL                         R13 4
      149 GETTABLEKS                       R13 R13 K24 ["Button"]
      151 DUPTABLE                         R14 K30 [{"ref", "text", "variant", "size", "onActivated", "isDisabled", "testId"}]
      152 SETTABLEKS                       R1 R14 K14 ["ref"]
      154 GETTABLEKS                       R15 R0 K0 ["action"]
      156 GETTABLEKS                       R15 R15 K7 ["text"]
      158 SETTABLEKS                       R15 R14 K7 ["text"]
      160 GETTABLEKS                       R15 R0 K27 ["variant"]
      162 SETTABLEKS                       R15 R14 K27 ["variant"]
      164 GETUPVAL                         R15 4
      165 GETTABLEKS                       R15 R15 K31 ["Enums"]
      167 GETTABLEKS                       R15 R15 K32 ["InputSize"]
      169 GETTABLEKS                       R15 R15 K33 ["XSmall"]
      171 SETTABLEKS                       R15 R14 K28 ["size"]
      173 SETTABLEKS                       R6 R14 K11 ["onActivated"]
      175 GETTABLEKS                       R15 R0 K0 ["action"]
      177 GETTABLEKS                       R15 R15 K34 ["disabled"]
      179 SETTABLEKS                       R15 R14 K29 ["isDisabled"]
      181 GETTABLEKS                       R15 R0 K19 ["testId"]
      183 SETTABLEKS                       R15 R14 K19 ["testId"]
      185 CALL                             R12 2 1
      186 SETTABLEKS                       R12 R11 K24 ["Button"]
      188 GETUPVAL                         R12 6
      189 LOADK                            R13 K25 ["UISizeConstraint"]
      190 DUPTABLE                         R14 K36 [{"MaxSize"}]
      191 GETIMPORT                        R15 K39 [Vector2.new]
      193 JUMPIFNOT                        R7 ; [+3]
      194 GETTABLEKS                       R16 R0 K12 ["widthOverride"]
      196 JUMP                             ; [+1]
      197 LOADN                            R16 120
      198 LOADK                            R17 K40 [Infinity]
      199 CALL                             R15 2 1
      200 SETTABLEKS                       R15 R14 K35 ["MaxSize"]
      202 CALL                             R12 2 1
      203 SETTABLEKS                       R12 R11 K25 ["UISizeConstraint"]
      205 CALL                             R8 3 -1
      206 CLOSEUPVALS                      R4
      207 RETURN                           R8 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["primary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["secondary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["tertiary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["LayoutOrder"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Hooks"]
        9 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R5 R3 K3 ["Gap"]
       15 GETTABLEKS                       R5 R5 K4 ["Small"]
       17 LOADN                            R6 120
       18 CALL                             R4 2 3
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          VAL R5
       24 NEWTABLE                         R9 0 1
       26 MOVE                             R10 R5
       27 SETLIST                          R9 R10 1 [1]
       29 CALL                             R7 2 1
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       33 NEWCLOSURE                       R9 P1
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R10 0 1
       37 MOVE                             R11 R5
       38 SETLIST                          R10 R11 1 [1]
       40 CALL                             R8 2 1
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       44 NEWCLOSURE                       R10 P2
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R11 0 1
       48 MOVE                             R12 R5
       49 SETLIST                          R11 R12 1 [1]
       51 CALL                             R9 2 1
       52 LOADNIL                          R10
       53 LOADNIL                          R11
       54 LOADNIL                          R12
       55 GETUPVAL                         R13 5
       56 JUMPIFNOT                        R13 ; [+24]
       57 GETUPVAL                         R13 6
       58 GETTABLEKS                       R14 R0 K6 ["tertiaryAction"]
       60 GETTABLEKS                       R15 R0 K7 ["tertiaryActionVariant"]
       62 CALL                             R13 2 1
       63 MOVE                             R10 R13
       64 GETTABLEKS                       R13 R10 K8 ["isIsolated"]
       66 JUMPIFNOT                        R13 ; [+7]
       67 MOVE                             R13 R2
       68 CALL                             R13 0 1
       69 MOVE                             R12 R13
       70 MOVE                             R13 R2
       71 CALL                             R13 0 1
       72 MOVE                             R11 R13
       73 JUMP                             ; [+13]
       74 MOVE                             R13 R2
       75 CALL                             R13 0 1
       76 MOVE                             R11 R13
       77 MOVE                             R13 R2
       78 CALL                             R13 0 1
       79 MOVE                             R12 R13
       80 JUMP                             ; [+6]
       81 MOVE                             R13 R2
       82 CALL                             R13 0 1
       83 MOVE                             R11 R13
       84 MOVE                             R13 R2
       85 CALL                             R13 0 1
       86 MOVE                             R12 R13
       87 GETUPVAL                         R13 7
       88 GETUPVAL                         R14 2
       89 GETTABLEKS                       R14 R14 K9 ["View"]
       91 DUPTABLE                         R15 K14 [{["tag"], ["onAbsoluteSizeChanged"], [3], ["testId"] = "--dialog-button-group"}]
       92 GETUPVAL                         R17 5
       93 JUMPIFNOT                        R17 ; [+15]
       94 NEWTABLE                         R16 4 0
       96 LOADB                            R17 1
       97 SETTABLEKS                       R17 R16 K15 ["row items-stretch gap-small size-full-0 auto-y"]
       99 GETTABLEKS                       R17 R10 K8 ["isIsolated"]
      101 SETTABLEKS                       R17 R16 K16 ["flex-x-between"]
      103 GETTABLEKS                       R18 R10 K8 ["isIsolated"]
      105 NOT                              R17 R18
      106 SETTABLEKS                       R17 R16 K17 ["align-x-right"]
      108 JUMP                             ; [+1]
      109 LOADK                            R16 K18 ["row align-x-right items-stretch gap-small size-full-0 auto-y"]
      110 SETTABLEKS                       R16 R15 K10 ["tag"]
      112 SETTABLEKS                       R6 R15 K11 ["onAbsoluteSizeChanged"]
      114 SETTABLEKS                       R1 R15 K0 ["LayoutOrder"]
      116 DUPTABLE                         R16 K21 [{"Tertiary", "PrimaryAndSecondary"}]
      117 GETTABLEKS                       R18 R0 K6 ["tertiaryAction"]
      119 JUMPIFNOT                        R18 ; [+39]
      120 GETUPVAL                         R17 7
      121 GETUPVAL                         R18 8
      122 DUPTABLE                         R19 K27 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], [5], ["testId"] = "--dialog-button-tertiary"}]
      123 GETTABLEKS                       R20 R0 K6 ["tertiaryAction"]
      125 SETTABLEKS                       R20 R19 K22 ["action"]
      127 GETUPVAL                         R21 5
      128 JUMPIFNOT                        R21 ; [+3]
      129 GETTABLEKS                       R20 R10 K23 ["variant"]
      131 JUMP                             ; [+12]
      132 GETUPVAL                         R21 9
      133 JUMPIFNOT                        R21 ; [+3]
      134 GETTABLEKS                       R20 R0 K7 ["tertiaryActionVariant"]
      136 JUMPIF                           R20 ; [+7]
      137 GETUPVAL                         R20 2
      138 GETTABLEKS                       R20 R20 K28 ["Enums"]
      140 GETTABLEKS                       R20 R20 K29 ["ButtonVariant"]
      142 GETTABLEKS                       R20 R20 K30 ["Standard"]
      144 SETTABLEKS                       R20 R19 K23 ["variant"]
      146 SETTABLEKS                       R9 R19 K24 ["measureRef"]
      148 JUMPIFNOT                        R4 ; [+3]
      149 GETTABLEKS                       R20 R4 K31 ["tertiary"]
      151 JUMP                             ; [+1]
      152 LOADNIL                          R20
      153 SETTABLEKS                       R20 R19 K25 ["widthOverride"]
      155 SETTABLEKS                       R12 R19 K0 ["LayoutOrder"]
      157 CALL                             R17 2 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R17
      160 SETTABLEKS                       R17 R16 K19 ["Tertiary"]
      162 GETUPVAL                         R17 7
      163 GETUPVAL                         R18 2
      164 GETTABLEKS                       R18 R18 K9 ["View"]
      166 DUPTABLE                         R19 K33 [{["tag"] = "row items-stretch gap-small auto-xy", [2], ["testId"]}]
      167 SETTABLEKS                       R11 R19 K0 ["LayoutOrder"]
      169 GETUPVAL                         R21 5
      170 JUMPIF                           R21 ; [+2]
      171 GETUPVAL                         R21 9
      172 JUMPIFNOT                        R21 ; [+2]
      173 LOADK                            R20 K34 ["--dialog-button-primary-secondary-group"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R20
      176 SETTABLEKS                       R20 R19 K12 ["testId"]
      178 DUPTABLE                         R20 K37 [{"Primary", "Secondary"}]
      179 GETTABLEKS                       R22 R0 K38 ["primaryAction"]
      181 JUMPIFNOT                        R22 ; [+31]
      182 GETUPVAL                         R21 7
      183 GETUPVAL                         R22 8
      184 DUPTABLE                         R23 K40 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], [5], ["testId"] = "--dialog-button-primary"}]
      185 GETTABLEKS                       R24 R0 K38 ["primaryAction"]
      187 SETTABLEKS                       R24 R23 K22 ["action"]
      189 GETUPVAL                         R24 2
      190 GETTABLEKS                       R24 R24 K28 ["Enums"]
      192 GETTABLEKS                       R24 R24 K29 ["ButtonVariant"]
      194 GETTABLEKS                       R24 R24 K41 ["Emphasis"]
      196 SETTABLEKS                       R24 R23 K23 ["variant"]
      198 SETTABLEKS                       R7 R23 K24 ["measureRef"]
      200 JUMPIFNOT                        R4 ; [+3]
      201 GETTABLEKS                       R24 R4 K42 ["primary"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R24
      205 SETTABLEKS                       R24 R23 K25 ["widthOverride"]
      207 MOVE                             R24 R2
      208 CALL                             R24 0 1
      209 SETTABLEKS                       R24 R23 K0 ["LayoutOrder"]
      211 CALL                             R21 2 1
      212 JUMP                             ; [+1]
      213 LOADNIL                          R21
      214 SETTABLEKS                       R21 R20 K35 ["Primary"]
      216 GETTABLEKS                       R22 R0 K43 ["secondaryAction"]
      218 JUMPIFNOT                        R22 ; [+31]
      219 GETUPVAL                         R21 7
      220 GETUPVAL                         R22 8
      221 DUPTABLE                         R23 K45 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], [5], ["testId"] = "--dialog-button-secondary"}]
      222 GETTABLEKS                       R24 R0 K43 ["secondaryAction"]
      224 SETTABLEKS                       R24 R23 K22 ["action"]
      226 GETUPVAL                         R24 2
      227 GETTABLEKS                       R24 R24 K28 ["Enums"]
      229 GETTABLEKS                       R24 R24 K29 ["ButtonVariant"]
      231 GETTABLEKS                       R24 R24 K30 ["Standard"]
      233 SETTABLEKS                       R24 R23 K23 ["variant"]
      235 SETTABLEKS                       R8 R23 K24 ["measureRef"]
      237 JUMPIFNOT                        R4 ; [+3]
      238 GETTABLEKS                       R24 R4 K46 ["secondary"]
      240 JUMP                             ; [+1]
      241 LOADNIL                          R24
      242 SETTABLEKS                       R24 R23 K25 ["widthOverride"]
      244 MOVE                             R24 R2
      245 CALL                             R24 0 1
      246 SETTABLEKS                       R24 R23 K0 ["LayoutOrder"]
      248 CALL                             R21 2 1
      249 JUMP                             ; [+1]
      250 LOADNIL                          R21
      251 SETTABLEKS                       R21 R20 K36 ["Secondary"]
      253 CALL                             R17 3 1
      254 SETTABLEKS                       R17 R16 K20 ["PrimaryAndSecondary"]
      256 CALL                             R13 3 -1
      257 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Hooks"]
       28 GETTABLEKS                       R6 R6 K11 ["useWidgetRef"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Types"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Components"]
       40 GETTABLEKS                       R8 R8 K14 ["Dialog"]
       42 GETTABLEKS                       R8 R8 K15 ["getTertiaryActionTreatment"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K13 ["Components"]
       49 GETTABLEKS                       R9 R9 K14 ["Dialog"]
       51 GETTABLEKS                       R9 R9 K16 ["isTextLabelTruncatedAsync"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K10 ["Hooks"]
       58 GETTABLEKS                       R10 R10 K17 ["useBindable"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K13 ["Components"]
       65 GETTABLEKS                       R11 R11 K14 ["Dialog"]
       67 GETTABLEKS                       R11 R11 K18 ["useButtonGroupFairWidth"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K19 ["SharedFlags"]
       74 GETTABLEKS                       R12 R12 K20 ["getFFlagStudioFoundationDialogDeviceSimFixes"]
       76 CALL                             R11 1 1
       77 CALL                             R11 0 1
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R13 R0 K19 ["SharedFlags"]
       82 GETTABLEKS                       R13 R13 K21 ["getFFlagStudioDialogManagerTertiaryButtonVariant"]
       84 CALL                             R12 1 1
       85 CALL                             R12 0 1
       86 GETTABLEKS                       R13 R3 K22 ["Util"]
       88 GETTABLEKS                       R13 R13 K23 ["counter"]
       90 GETTABLEKS                       R14 R4 K24 ["createElement"]
       92 GETTABLEKS                       R15 R3 K25 ["UI"]
       94 GETTABLEKS                       R15 R15 K10 ["Hooks"]
       96 GETTABLEKS                       R15 R15 K26 ["useTooltip"]
       98 GETTABLEKS                       R16 R4 K27 ["memo"]
      100 DUPCLOSURE                       R17 K28 [PROTO_7]
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R11
      109 CALL                             R16 1 1
      110 DUPCLOSURE                       R17 K29 [PROTO_11]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R11
      121 GETTABLEKS                       R18 R4 K27 ["memo"]
      123 MOVE                             R19 R17
      124 CALL                             R18 1 -1
      125 RETURN                           R18 -1
