PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["reasonDisabled"]
        2 JUMPIF                           R2 ; [+3]
        3 GETTABLEKS                       R3 R0 K1 ["PIINotice"]
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R2 K0 ["reasonDisabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K2 ["Generation"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+4]
       13 GETTABLEKS                       R4 R0 K1 ["PIINotice"]
       15 RETURN                           R4 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K3 ["QuotaExceeded"]
       19 JUMPIFEQ                         R3 R4 ; [+6]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K4 ["TooManyRequest"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+4]
       26 GETTABLEKS                       R4 R0 K3 ["QuotaExceeded"]
       28 RETURN                           R4 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K5 ["External"]
       32 JUMPIFNOTEQ                      R3 R4 ; [+4]
       34 GETTABLEKS                       R4 R2 K6 ["externalReasonText"]
       36 RETURN                           R4 1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K7 ["assertNever"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["reasonDisabled"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["External"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+4]
       10 GETTABLEKS                       R2 R0 K2 ["iconType"]
       12 RETURN                           R2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K3 ["QuotaExceeded"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+7]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K4 ["InputIconTypes"]
       21 GETTABLEKS                       R2 R3 K5 ["Error"]
       23 RETURN                           R2 1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"PIINotice", "QuotaExceeded", "LearnMore"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["InputArea"]
        3 LOADK                            R4 K0 ["PIINotice"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["PIINotice"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["InputArea"]
       11 LOADK                            R4 K1 ["QuotaExceeded"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["QuotaExceeded"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["InputArea"]
       19 LOADK                            R4 K2 ["LearnMore"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["LearnMore"]
       25 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R2 R0 K1 ["http"]
        6 GETTABLEKS                       R1 R2 K2 ["openUrl"]
        8 LOADK                            R2 K3 ["https://create.roblox.com/docs/assistant/guide"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["filter"]
        3 NEWTABLE                         R1 0 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["new"]
        8 DUPTABLE                         R3 K9 [{"key", "Text", "SplitBy", "textStyle", "fontStyle", "RichText", "LayoutOrder"}]
        9 LOADK                            R4 K3 ["Text"]
       10 SETTABLEKS                       R4 R3 K2 ["key"]
       12 GETUPVAL                         R5 2
       13 JUMPIFNOT                        R5 ; [+4]
       14 GETUPVAL                         R5 3
       15 LOADK                            R6 K10 [" "]
       16 CONCAT                           R4 R5 R6
       17 JUMP                             ; [+1]
       18 GETUPVAL                         R4 3
       19 SETTABLEKS                       R4 R3 K3 ["Text"]
       21 LOADK                            R4 K11 ["Word"]
       22 SETTABLEKS                       R4 R3 K4 ["SplitBy"]
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R6 R7 K12 ["Color"]
       27 GETTABLEKS                       R5 R6 K13 ["Content"]
       29 GETTABLEKS                       R4 R5 K14 ["Default"]
       31 SETTABLEKS                       R4 R3 K5 ["textStyle"]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R5 R6 K15 ["Typography"]
       36 GETTABLEKS                       R4 R5 K16 ["CaptionSmall"]
       38 SETTABLEKS                       R4 R3 K6 ["fontStyle"]
       40 LOADB                            R4 0
       41 SETTABLEKS                       R4 R3 K7 ["RichText"]
       43 GETUPVAL                         R4 5
       44 CALL                             R4 0 1
       45 SETTABLEKS                       R4 R3 K8 ["LayoutOrder"]
       47 CALL                             R2 1 1
       48 GETUPVAL                         R4 2
       49 JUMPIFNOT                        R4 ; [+55]
       50 GETUPVAL                         R4 6
       51 GETTABLEKS                       R3 R4 K1 ["new"]
       53 NEWTABLE                         R4 0 1
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R5 R6 K1 ["new"]
       58 DUPTABLE                         R6 K9 [{"key", "Text", "SplitBy", "textStyle", "fontStyle", "RichText", "LayoutOrder"}]
       59 LOADK                            R7 K17 ["LinkText"]
       60 SETTABLEKS                       R7 R6 K2 ["key"]
       62 GETUPVAL                         R8 7
       63 GETTABLEKS                       R7 R8 K18 ["LearnMore"]
       65 SETTABLEKS                       R7 R6 K3 ["Text"]
       67 LOADK                            R7 K11 ["Word"]
       68 SETTABLEKS                       R7 R6 K4 ["SplitBy"]
       70 GETUPVAL                         R10 4
       71 GETTABLEKS                       R9 R10 K12 ["Color"]
       73 GETTABLEKS                       R8 R9 K13 ["Content"]
       75 GETTABLEKS                       R7 R8 K19 ["Link"]
       77 SETTABLEKS                       R7 R6 K5 ["textStyle"]
       79 GETUPVAL                         R9 4
       80 GETTABLEKS                       R8 R9 K15 ["Typography"]
       82 GETTABLEKS                       R7 R8 K16 ["CaptionSmall"]
       84 SETTABLEKS                       R7 R6 K6 ["fontStyle"]
       86 LOADB                            R7 0
       87 SETTABLEKS                       R7 R6 K7 ["RichText"]
       89 GETUPVAL                         R7 5
       90 CALL                             R7 0 1
       91 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       93 CALL                             R5 1 1
       94 SETLIST                          R4 R5 1 [1]
       96 DUPTABLE                         R5 K21 [{"key", "onActivated"}]
       97 LOADK                            R6 K22 ["LinkWrapper"]
       98 SETTABLEKS                       R6 R5 K2 ["key"]
      100 GETUPVAL                         R6 8
      101 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      103 CALL                             R3 2 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R3
      106 SETLIST                          R1 R2 2 [1]
      108 DUPCLOSURE                       R2 K23 [PROTO_4]
      109 CALL                             R0 2 -1
      110 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["reasonDisabled"]
       11 GETUPVAL                         R3 3
       12 CALL                             R3 0 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       16 DUPCLOSURE                       R5 K4 [PROTO_2]
       17 CAPTURE                          UPVAL U4
       18 NEWTABLE                         R6 0 1
       20 GETUPVAL                         R8 4
       21 GETTABLEKS                       R7 R8 K5 ["locale"]
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 JUMPIF                           R2 ; [+2]
       27 LOADNIL                          R5
       28 JUMP                             ; [+22]
       29 GETTABLEKS                       R6 R2 K2 ["reasonDisabled"]
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R7 R8 K6 ["External"]
       34 JUMPIFNOTEQ                      R6 R7 ; [+4]
       36 GETTABLEKS                       R5 R2 K7 ["iconType"]
       38 JUMP                             ; [+12]
       39 GETUPVAL                         R8 5
       40 GETTABLEKS                       R7 R8 K8 ["QuotaExceeded"]
       42 JUMPIFNOTEQ                      R6 R7 ; [+7]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R7 R8 K9 ["InputIconTypes"]
       47 GETTABLEKS                       R5 R7 K10 ["Error"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R8 R9 K9 ["InputIconTypes"]
       55 GETTABLEKS                       R7 R8 K11 ["Loading"]
       57 JUMPIFNOTEQ                      R5 R7 ; [+31]
       59 GETUPVAL                         R7 6
       60 GETUPVAL                         R8 7
       61 DUPTABLE                         R9 K14 [{"tag", "testId"}]
       62 LOADK                            R10 K15 ["auto-xy"]
       63 SETTABLEKS                       R10 R9 K12 ["tag"]
       65 GETUPVAL                         R13 8
       66 GETTABLEKS                       R12 R13 K16 ["InputArea"]
       68 GETTABLEKS                       R11 R12 K17 ["Footer"]
       70 GETTABLEKS                       R10 R11 K18 ["Icon"]
       72 SETTABLEKS                       R10 R9 K13 ["testId"]
       74 DUPTABLE                         R10 K19 [{"Loading"}]
       75 GETUPVAL                         R11 6
       76 GETUPVAL                         R12 9
       77 DUPTABLE                         R13 K21 [{"size"}]
       78 GETUPVAL                         R15 10
       79 GETTABLEKS                       R14 R15 K22 ["Small"]
       81 SETTABLEKS                       R14 R13 K20 ["size"]
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K11 ["Loading"]
       86 CALL                             R7 3 1
       87 MOVE                             R6 R7
       88 JUMP                             ; [+31]
       89 GETUPVAL                         R9 2
       90 GETTABLEKS                       R8 R9 K9 ["InputIconTypes"]
       92 GETTABLEKS                       R7 R8 K10 ["Error"]
       94 JUMPIFNOTEQ                      R5 R7 ; [+25]
       96 GETUPVAL                         R7 6
       97 GETUPVAL                         R8 11
       98 DUPTABLE                         R9 K25 [{"tag", "Image", "LayoutOrder", "testId"}]
       99 LOADK                            R10 K26 ["size-400-400 content-emphasis"]
      100 SETTABLEKS                       R10 R9 K12 ["tag"]
      102 LOADK                            R10 K27 ["icons/status/error_large"]
      103 SETTABLEKS                       R10 R9 K23 ["Image"]
      105 MOVE                             R10 R3
      106 CALL                             R10 0 1
      107 SETTABLEKS                       R10 R9 K24 ["LayoutOrder"]
      109 GETUPVAL                         R13 8
      110 GETTABLEKS                       R12 R13 K16 ["InputArea"]
      112 GETTABLEKS                       R11 R12 K17 ["Footer"]
      114 GETTABLEKS                       R10 R11 K18 ["Icon"]
      116 SETTABLEKS                       R10 R9 K13 ["testId"]
      118 CALL                             R7 2 1
      119 MOVE                             R6 R7
      120 GETTABLEKS                       R8 R1 K2 ["reasonDisabled"]
      122 JUMPIF                           R8 ; [+3]
      123 GETTABLEKS                       R7 R4 K28 ["PIINotice"]
      125 JUMP                             ; [+37]
      126 GETTABLEKS                       R9 R8 K2 ["reasonDisabled"]
      128 GETUPVAL                         R11 5
      129 GETTABLEKS                       R10 R11 K29 ["Generation"]
      131 JUMPIFNOTEQ                      R9 R10 ; [+4]
      133 GETTABLEKS                       R7 R4 K28 ["PIINotice"]
      135 JUMP                             ; [+27]
      136 GETUPVAL                         R11 5
      137 GETTABLEKS                       R10 R11 K8 ["QuotaExceeded"]
      139 JUMPIFEQ                         R9 R10 ; [+6]
      141 GETUPVAL                         R11 5
      142 GETTABLEKS                       R10 R11 K30 ["TooManyRequest"]
      144 JUMPIFNOTEQ                      R9 R10 ; [+4]
      146 GETTABLEKS                       R7 R4 K8 ["QuotaExceeded"]
      148 JUMP                             ; [+14]
      149 GETUPVAL                         R11 5
      150 GETTABLEKS                       R10 R11 K6 ["External"]
      152 JUMPIFNOTEQ                      R9 R10 ; [+4]
      154 GETTABLEKS                       R7 R8 K31 ["externalReasonText"]
      156 JUMP                             ; [+6]
      157 GETUPVAL                         R11 12
      158 GETTABLEKS                       R10 R11 K32 ["assertNever"]
      160 MOVE                             R11 R9
      161 CALL                             R10 1 1
      162 MOVE                             R7 R10
      163 GETTABLEKS                       R9 R4 K28 ["PIINotice"]
      165 JUMPIFEQ                         R7 R9 ; [+2]
      167 LOADB                            R8 0 +1
      168 LOADB                            R8 1
      169 GETUPVAL                         R10 1
      170 GETTABLEKS                       R9 R10 K33 ["useCallback"]
      172 DUPCLOSURE                       R10 K34 [PROTO_3]
      173 CAPTURE                          UPVAL U13
      174 NEWTABLE                         R11 0 0
      176 CALL                             R9 2 1
      177 LOADNIL                          R10
      178 LOADNIL                          R11
      179 GETUPVAL                         R12 14
      180 CALL                             R12 0 1
      181 JUMPIFNOT                        R12 ; [+30]
      182 GETUPVAL                         R14 15
      183 GETTABLEKS                       R13 R14 K35 ["Hooks"]
      185 GETTABLEKS                       R12 R13 K36 ["useTokens"]
      187 CALL                             R12 0 1
      188 MOVE                             R10 R12
      189 GETUPVAL                         R13 1
      190 GETTABLEKS                       R12 R13 K3 ["useMemo"]
      192 NEWCLOSURE                       R13 P2
      193 CAPTURE                          UPVAL U16
      194 CAPTURE                          UPVAL U17
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R7
      197 CAPTURE                          REF R10
      198 CAPTURE                          VAL R3
      199 CAPTURE                          UPVAL U18
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R9
      202 NEWTABLE                         R14 0 4
      204 MOVE                             R15 R7
      205 MOVE                             R16 R10
      206 MOVE                             R17 R4
      207 MOVE                             R18 R9
      208 SETLIST                          R14 R15 4 [1]
      210 CALL                             R12 2 1
      211 MOVE                             R11 R12
      212 GETUPVAL                         R12 6
      213 GETUPVAL                         R13 7
      214 DUPTABLE                         R14 K37 [{"LayoutOrder", "tag", "testId"}]
      215 GETTABLEKS                       R15 R0 K24 ["LayoutOrder"]
      217 SETTABLEKS                       R15 R14 K24 ["LayoutOrder"]
      219 LOADK                            R15 K38 ["row size-full-400 auto-y gap-xsmall align-x-center align-y-center padding-y-medium"]
      220 SETTABLEKS                       R15 R14 K12 ["tag"]
      222 GETUPVAL                         R18 8
      223 GETTABLEKS                       R17 R18 K16 ["InputArea"]
      225 GETTABLEKS                       R16 R17 K17 ["Footer"]
      227 GETTABLEKS                       R15 R16 K39 ["Container"]
      229 SETTABLEKS                       R15 R14 K13 ["testId"]
      231 GETUPVAL                         R16 14
      232 CALL                             R16 0 1
      233 JUMPIFNOT                        R16 ; [+23]
      234 DUPTABLE                         R15 K41 [{"Icon", "Caption"}]
      235 SETTABLEKS                       R6 R15 K18 ["Icon"]
      237 GETUPVAL                         R16 6
      238 GETUPVAL                         R17 19
      239 DUPTABLE                         R18 K45 [{"HorizontalAlignment", "VerticalPadding", "Elements"}]
      240 GETIMPORT                        R19 K48 [Enum.HorizontalAlignment.Center]
      242 SETTABLEKS                       R19 R18 K42 ["HorizontalAlignment"]
      244 GETIMPORT                        R19 K51 [UDim.new]
      246 LOADN                            R20 0
      247 LOADN                            R21 0
      248 CALL                             R19 2 1
      249 SETTABLEKS                       R19 R18 K43 ["VerticalPadding"]
      251 SETTABLEKS                       R11 R18 K44 ["Elements"]
      253 CALL                             R16 2 1
      254 SETTABLEKS                       R16 R15 K40 ["Caption"]
      256 JUMP                             ; [+50]
      257 DUPTABLE                         R15 K54 [{"Icon", "Text", "LearnMore"}]
      258 SETTABLEKS                       R6 R15 K18 ["Icon"]
      260 GETUPVAL                         R16 6
      261 GETUPVAL                         R17 20
      262 DUPTABLE                         R18 K55 [{"tag", "LayoutOrder", "Text"}]
      263 LOADK                            R19 K56 ["auto-xy text-caption-small content-default text-wrap"]
      264 SETTABLEKS                       R19 R18 K12 ["tag"]
      266 MOVE                             R19 R3
      267 CALL                             R19 0 1
      268 SETTABLEKS                       R19 R18 K24 ["LayoutOrder"]
      270 SETTABLEKS                       R7 R18 K52 ["Text"]
      272 CALL                             R16 2 1
      273 SETTABLEKS                       R16 R15 K52 ["Text"]
      275 JUMPIFNOT                        R8 ; [+28]
      276 GETUPVAL                         R16 6
      277 GETUPVAL                         R17 7
      278 DUPTABLE                         R18 K58 [{"tag", "LayoutOrder", "onActivated"}]
      279 LOADK                            R19 K15 ["auto-xy"]
      280 SETTABLEKS                       R19 R18 K12 ["tag"]
      282 MOVE                             R19 R3
      283 CALL                             R19 0 1
      284 SETTABLEKS                       R19 R18 K24 ["LayoutOrder"]
      286 SETTABLEKS                       R9 R18 K57 ["onActivated"]
      288 DUPTABLE                         R19 K60 [{"LearnMoreText"}]
      289 GETUPVAL                         R20 6
      290 GETUPVAL                         R21 20
      291 DUPTABLE                         R22 K61 [{"tag", "Text"}]
      292 LOADK                            R23 K62 ["auto-xy text-caption-small content-link text-underline"]
      293 SETTABLEKS                       R23 R22 K12 ["tag"]
      295 GETTABLEKS                       R23 R4 K53 ["LearnMore"]
      297 SETTABLEKS                       R23 R22 K52 ["Text"]
      299 CALL                             R20 2 1
      300 SETTABLEKS                       R20 R19 K59 ["LearnMoreText"]
      302 CALL                             R16 3 1
      303 JUMP                             ; [+1]
      304 LOADNIL                          R16
      305 SETTABLEKS                       R16 R15 K53 ["LearnMore"]
      307 CALL                             R12 3 -1
      308 CLOSEUPVALS                      R10
      309 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["InlineLayout"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["Contexts"]
       41 GETTABLEKS                       R6 R7 K14 ["InputStateContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R8 K15 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Parent"]
       55 GETTABLEKS                       R8 R9 K16 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Util"]
       62 GETTABLEKS                       R9 R10 K18 ["TestIds"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K19 ["Resources"]
       69 GETTABLEKS                       R11 R12 K20 ["Localization"]
       71 GETTABLEKS                       R10 R11 K21 ["Translator"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K22 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       83 GETTABLEKS                       R12 R13 K24 ["useExternalInputWatch"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K25 ["Flags"]
       90 GETTABLEKS                       R13 R14 K26 ["FFlagAssistantWrapCaption"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R3 K27 ["Image"]
       95 GETTABLEKS                       R14 R3 K28 ["Text"]
       97 GETTABLEKS                       R15 R3 K29 ["View"]
       99 GETTABLEKS                       R17 R3 K30 ["Enums"]
      101 GETTABLEKS                       R16 R17 K31 ["IconSize"]
      103 GETTABLEKS                       R17 R3 K32 ["Loading"]
      105 GETTABLEKS                       R19 R4 K12 ["Components"]
      107 GETTABLEKS                       R18 R19 K11 ["InlineLayout"]
      109 GETTABLEKS                       R21 R4 K12 ["Components"]
      111 GETTABLEKS                       R20 R21 K33 ["InlineLayoutElements"]
      113 GETTABLEKS                       R19 R20 K34 ["LinkElement"]
      115 GETTABLEKS                       R22 R4 K12 ["Components"]
      117 GETTABLEKS                       R21 R22 K33 ["InlineLayoutElements"]
      119 GETTABLEKS                       R20 R21 K35 ["TextElement"]
      121 GETTABLEKS                       R21 R7 K36 ["createNextOrder"]
      123 GETTABLEKS                       R22 R6 K37 ["createElement"]
      125 GETTABLEKS                       R23 R5 K38 ["InputDisabledReasons"]
      127 DUPCLOSURE                       R24 K39 [PROTO_0]
      128 CAPTURE                          VAL R23
      129 CAPTURE                          VAL R10
      130 DUPCLOSURE                       R25 K40 [PROTO_1]
      131 CAPTURE                          VAL R23
      132 CAPTURE                          VAL R5
      133 DUPCLOSURE                       R26 K41 [PROTO_6]
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R23
      140 CAPTURE                          VAL R22
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R14
      155 GETTABLEKS                       R27 R6 K42 ["memo"]
      157 MOVE                             R28 R26
      158 CALL                             R27 1 -1
      159 RETURN                           R27 -1
