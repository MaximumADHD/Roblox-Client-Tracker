PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["reasonDisabled"]
        2 JUMPIF                           R2 ; [+3]
        3 GETTABLEKS                       R3 R0 K1 ["PIINotice"]
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R2 K0 ["reasonDisabled"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["Generation"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+4]
       13 GETTABLEKS                       R4 R0 K1 ["PIINotice"]
       15 RETURN                           R4 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["QuotaExceeded"]
       19 JUMPIFEQ                         R3 R4 ; [+6]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K4 ["TooManyRequest"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+4]
       26 GETTABLEKS                       R4 R0 K3 ["QuotaExceeded"]
       28 RETURN                           R4 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K5 ["External"]
       32 JUMPIFNOTEQ                      R3 R4 ; [+4]
       34 GETTABLEKS                       R4 R2 K6 ["externalReasonText"]
       36 RETURN                           R4 1
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K7 ["assertNever"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["reasonDisabled"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["External"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+4]
       10 GETTABLEKS                       R2 R0 K2 ["iconType"]
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["QuotaExceeded"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+7]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K4 ["InputIconTypes"]
       21 GETTABLEKS                       R2 R2 K5 ["Error"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["http"]
        6 GETTABLEKS                       R1 R1 K2 ["openUrl"]
        8 LOADK                            R2 K3 ["https://create.roblox.com/docs/assistant/guide"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filter"]
        3 NEWTABLE                         R1 0 3
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["new"]
        9 DUPTABLE                         R4 K11 [{["key"] = "Text", ["Text"], ["SplitBy"] = "Word", ["textStyle"], ["fontStyle"], ["RichText"] = False, ["LayoutOrder"]}]
       10 GETUPVAL                         R9 1
       11 JUMPIFNOT                        R9 ; [+2]
       12 LOADK                            R6 K12 [" "]
       13 JUMP                             ; [+1]
       14 LOADK                            R6 K13 [""]
       15 GETUPVAL                         R7 3
       16 GETUPVAL                         R9 4
       17 JUMPIFNOT                        R9 ; [+2]
       18 LOADK                            R8 K12 [" "]
       19 JUMP                             ; [+1]
       20 LOADK                            R8 K13 [""]
       21 CONCAT                           R5 R6 R8
       22 SETTABLEKS                       R5 R4 K3 ["Text"]
       24 GETUPVAL                         R6 5
       25 JUMPIFNOT                        R6 ; [+8]
       26 GETUPVAL                         R5 6
       27 GETTABLEKS                       R5 R5 K14 ["Color"]
       29 GETTABLEKS                       R5 R5 K15 ["System"]
       31 GETTABLEKS                       R5 R5 K16 ["Alert"]
       33 JUMP                             ; [+7]
       34 GETUPVAL                         R5 6
       35 GETTABLEKS                       R5 R5 K14 ["Color"]
       37 GETTABLEKS                       R5 R5 K17 ["Content"]
       39 GETTABLEKS                       R5 R5 K18 ["Default"]
       41 SETTABLEKS                       R5 R4 K6 ["textStyle"]
       43 GETUPVAL                         R5 6
       44 GETTABLEKS                       R5 R5 K19 ["Typography"]
       46 GETTABLEKS                       R5 R5 K20 ["CaptionSmall"]
       48 SETTABLEKS                       R5 R4 K7 ["fontStyle"]
       50 GETUPVAL                         R5 7
       51 CALL                             R5 0 1
       52 SETTABLEKS                       R5 R4 K10 ["LayoutOrder"]
       54 CALL                             R3 1 1
       55 GETUPVAL                         R5 4
       56 JUMPIFNOT                        R5 ; [+43]
       57 GETUPVAL                         R4 8
       58 GETTABLEKS                       R4 R4 K1 ["new"]
       60 NEWTABLE                         R5 0 1
       62 GETUPVAL                         R6 2
       63 GETTABLEKS                       R6 R6 K1 ["new"]
       65 DUPTABLE                         R7 K22 [{["key"] = "LinkText", ["Text"], ["SplitBy"] = "Word", ["textStyle"], ["fontStyle"], ["RichText"] = False, ["LayoutOrder"]}]
       66 GETUPVAL                         R8 9
       67 GETTABLEKS                       R8 R8 K23 ["LearnMore"]
       69 SETTABLEKS                       R8 R7 K3 ["Text"]
       71 GETUPVAL                         R8 6
       72 GETTABLEKS                       R8 R8 K14 ["Color"]
       74 GETTABLEKS                       R8 R8 K17 ["Content"]
       76 GETTABLEKS                       R8 R8 K24 ["Link"]
       78 SETTABLEKS                       R8 R7 K6 ["textStyle"]
       80 GETUPVAL                         R8 6
       81 GETTABLEKS                       R8 R8 K19 ["Typography"]
       83 GETTABLEKS                       R8 R8 K20 ["CaptionSmall"]
       85 SETTABLEKS                       R8 R7 K7 ["fontStyle"]
       87 GETUPVAL                         R8 7
       88 CALL                             R8 0 1
       89 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       91 CALL                             R6 1 1
       92 SETLIST                          R5 R6 1 [1]
       94 DUPTABLE                         R6 K27 [{["key"] = "LinkWrapper", ["onActivated"]}]
       95 GETUPVAL                         R7 10
       96 SETTABLEKS                       R7 R6 K26 ["onActivated"]
       98 CALL                             R4 2 1
       99 JUMP                             ; [+1]
      100 LOADNIL                          R4
      101 SETLIST                          R1 R2 3 [1]
      103 DUPCLOSURE                       R2 K28 [PROTO_4]
      104 CALL                             R0 2 -1
      105 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["useContext"]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K3 ["Context"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R2 K4 ["reasonDisabled"]
       17 GETUPVAL                         R4 4
       18 CALL                             R4 0 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       22 DUPCLOSURE                       R6 K6 [PROTO_2]
       23 CAPTURE                          UPVAL U5
       24 NEWTABLE                         R7 0 1
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R8 R8 K7 ["locale"]
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 JUMPIF                           R3 ; [+2]
       33 LOADNIL                          R6
       34 JUMP                             ; [+22]
       35 GETTABLEKS                       R7 R3 K4 ["reasonDisabled"]
       37 GETUPVAL                         R8 6
       38 GETTABLEKS                       R8 R8 K8 ["External"]
       40 JUMPIFNOTEQ                      R7 R8 ; [+4]
       42 GETTABLEKS                       R6 R3 K9 ["iconType"]
       44 JUMP                             ; [+12]
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R8 R8 K10 ["QuotaExceeded"]
       48 JUMPIFNOTEQ                      R7 R8 ; [+7]
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R6 R6 K11 ["InputIconTypes"]
       53 GETTABLEKS                       R6 R6 K12 ["Error"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R6
       57 LOADNIL                          R7
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K11 ["InputIconTypes"]
       61 GETTABLEKS                       R8 R8 K13 ["Loading"]
       63 JUMPIFNOTEQ                      R6 R8 ; [+39]
       65 GETUPVAL                         R8 7
       66 GETTABLEKS                       R8 R8 K14 ["new"]
       68 GETUPVAL                         R9 8
       69 DUPTABLE                         R10 K19 [{["key"] = "Loading", ["size"], ["Size"], ["testId"]}]
       70 GETUPVAL                         R11 9
       71 GETTABLEKS                       R11 R11 K20 ["Small"]
       73 SETTABLEKS                       R11 R10 K16 ["size"]
       75 GETIMPORT                        R11 K23 [UDim2.fromOffset]
       77 GETTABLEKS                       R12 R1 K17 ["Size"]
       79 GETTABLEKS                       R12 R12 K24 ["Size_300"]
       81 GETTABLEKS                       R13 R1 K17 ["Size"]
       83 GETTABLEKS                       R13 R13 K24 ["Size_300"]
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K17 ["Size"]
       88 GETUPVAL                         R11 10
       89 GETTABLEKS                       R11 R11 K25 ["InputArea"]
       91 GETTABLEKS                       R11 R11 K26 ["Footer"]
       93 GETTABLEKS                       R11 R11 K27 ["Icon"]
       95 SETTABLEKS                       R11 R10 K18 ["testId"]
       97 GETUPVAL                         R11 11
       98 GETTABLEKS                       R11 R11 K28 ["identity"]
      100 CALL                             R8 3 1
      101 MOVE                             R7 R8
      102 JUMP                             ; [+69]
      103 GETUPVAL                         R8 3
      104 GETTABLEKS                       R8 R8 K11 ["InputIconTypes"]
      106 GETTABLEKS                       R8 R8 K12 ["Error"]
      108 JUMPIFNOTEQ                      R6 R8 ; [+63]
      110 GETUPVAL                         R8 7
      111 GETTABLEKS                       R8 R8 K14 ["new"]
      113 GETUPVAL                         R9 12
      114 DUPTABLE                         R10 K32 [{["key"] = "Icon", ["name"], ["style"], ["size"], ["Size"], ["LayoutOrder"], ["testId"]}]
      115 GETUPVAL                         R11 0
      116 GETTABLEKS                       R11 R11 K33 ["Enums"]
      118 GETTABLEKS                       R11 R11 K34 ["IconName"]
      120 GETTABLEKS                       R11 R11 K35 ["TriangleExclamation"]
      122 SETTABLEKS                       R11 R10 K29 ["name"]
      124 GETTABLEKS                       R11 R1 K36 ["Color"]
      126 GETTABLEKS                       R11 R11 K37 ["Content"]
      128 GETTABLEKS                       R11 R11 K38 ["Muted"]
      130 SETTABLEKS                       R11 R10 K30 ["style"]
      132 GETUPVAL                         R11 0
      133 GETTABLEKS                       R11 R11 K33 ["Enums"]
      135 GETTABLEKS                       R11 R11 K39 ["IconSize"]
      137 GETTABLEKS                       R11 R11 K40 ["XSmall"]
      139 SETTABLEKS                       R11 R10 K16 ["size"]
      141 GETIMPORT                        R11 K23 [UDim2.fromOffset]
      143 GETTABLEKS                       R12 R1 K17 ["Size"]
      145 GETTABLEKS                       R12 R12 K24 ["Size_300"]
      147 GETTABLEKS                       R13 R1 K17 ["Size"]
      149 GETTABLEKS                       R13 R13 K24 ["Size_300"]
      151 CALL                             R11 2 1
      152 SETTABLEKS                       R11 R10 K17 ["Size"]
      154 MOVE                             R11 R4
      155 CALL                             R11 0 1
      156 SETTABLEKS                       R11 R10 K31 ["LayoutOrder"]
      158 GETUPVAL                         R11 10
      159 GETTABLEKS                       R11 R11 K25 ["InputArea"]
      161 GETTABLEKS                       R11 R11 K26 ["Footer"]
      163 GETTABLEKS                       R11 R11 K27 ["Icon"]
      165 SETTABLEKS                       R11 R10 K18 ["testId"]
      167 GETUPVAL                         R11 11
      168 GETTABLEKS                       R11 R11 K28 ["identity"]
      170 CALL                             R8 3 1
      171 MOVE                             R7 R8
      172 GETTABLEKS                       R9 R0 K41 ["imageAttachError"]
      174 JUMPIFNOTEQKNIL                  R9 ; [+2]
      176 LOADB                            R8 0 +1
      177 LOADB                            R8 1
      178 JUMPIFNOT                        R8 ; [+3]
      179 GETTABLEKS                       R9 R0 K41 ["imageAttachError"]
      181 JUMP                             ; [+43]
      182 GETTABLEKS                       R10 R2 K4 ["reasonDisabled"]
      184 JUMPIF                           R10 ; [+3]
      185 GETTABLEKS                       R9 R5 K42 ["PIINotice"]
      187 JUMP                             ; [+37]
      188 GETTABLEKS                       R11 R10 K4 ["reasonDisabled"]
      190 GETUPVAL                         R12 6
      191 GETTABLEKS                       R12 R12 K43 ["Generation"]
      193 JUMPIFNOTEQ                      R11 R12 ; [+4]
      195 GETTABLEKS                       R9 R5 K42 ["PIINotice"]
      197 JUMP                             ; [+27]
      198 GETUPVAL                         R12 6
      199 GETTABLEKS                       R12 R12 K10 ["QuotaExceeded"]
      201 JUMPIFEQ                         R11 R12 ; [+6]
      203 GETUPVAL                         R12 6
      204 GETTABLEKS                       R12 R12 K44 ["TooManyRequest"]
      206 JUMPIFNOTEQ                      R11 R12 ; [+4]
      208 GETTABLEKS                       R9 R5 K10 ["QuotaExceeded"]
      210 JUMP                             ; [+14]
      211 GETUPVAL                         R12 6
      212 GETTABLEKS                       R12 R12 K8 ["External"]
      214 JUMPIFNOTEQ                      R11 R12 ; [+4]
      216 GETTABLEKS                       R9 R10 K45 ["externalReasonText"]
      218 JUMP                             ; [+6]
      219 GETUPVAL                         R12 13
      220 GETTABLEKS                       R12 R12 K46 ["assertNever"]
      222 MOVE                             R13 R11
      223 CALL                             R12 1 1
      224 MOVE                             R9 R12
      225 ORK                              R9 R9 K47 [""]
      226 FASTCALL2K                       ASSERT R9 K48 ; [+5]
      228 MOVE                             R11 R9
      229 LOADK                            R12 K48 ["Footer text should not be nil"]
      230 GETIMPORT                        R10 K50 [assert]
      232 CALL                             R10 2 0
      233 NOT                              R10 R8
      234 JUMPIFNOT                        R10 ; [+6]
      235 GETTABLEKS                       R11 R5 K42 ["PIINotice"]
      237 JUMPIFEQ                         R9 R11 ; [+2]
      239 LOADB                            R10 0 +1
      240 LOADB                            R10 1
      241 GETUPVAL                         R11 2
      242 GETTABLEKS                       R11 R11 K51 ["useCallback"]
      244 DUPCLOSURE                       R12 K52 [PROTO_3]
      245 CAPTURE                          UPVAL U14
      246 NEWTABLE                         R13 0 0
      248 CALL                             R11 2 1
      249 GETUPVAL                         R12 2
      250 GETTABLEKS                       R12 R12 K5 ["useMemo"]
      252 NEWCLOSURE                       R13 P2
      253 CAPTURE                          UPVAL U11
      254 CAPTURE                          REF R7
      255 CAPTURE                          UPVAL U15
      256 CAPTURE                          REF R9
      257 CAPTURE                          VAL R10
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R1
      260 CAPTURE                          VAL R4
      261 CAPTURE                          UPVAL U16
      262 CAPTURE                          VAL R5
      263 CAPTURE                          VAL R11
      264 NEWTABLE                         R14 0 6
      266 MOVE                             R15 R9
      267 MOVE                             R16 R1
      268 MOVE                             R17 R5
      269 MOVE                             R18 R11
      270 MOVE                             R19 R8
      271 MOVE                             R20 R7
      272 SETLIST                          R14 R15 6 [1]
      274 CALL                             R12 2 1
      275 GETUPVAL                         R13 17
      276 GETUPVAL                         R14 18
      277 DUPTABLE                         R15 K55 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center gap-xsmall size-full-400 auto-y padding-y-medium", ["testId"]}]
      278 GETTABLEKS                       R16 R0 K31 ["LayoutOrder"]
      280 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      282 GETUPVAL                         R16 10
      283 GETTABLEKS                       R16 R16 K25 ["InputArea"]
      285 GETTABLEKS                       R16 R16 K26 ["Footer"]
      287 GETTABLEKS                       R16 R16 K56 ["Container"]
      289 SETTABLEKS                       R16 R15 K18 ["testId"]
      291 DUPTABLE                         R16 K58 [{"Caption"}]
      292 GETUPVAL                         R17 17
      293 GETUPVAL                         R18 19
      294 DUPTABLE                         R19 K62 [{"HorizontalAlignment", "VerticalPadding", "Elements"}]
      295 GETIMPORT                        R20 K65 [Enum.HorizontalAlignment.Center]
      297 SETTABLEKS                       R20 R19 K59 ["HorizontalAlignment"]
      299 GETIMPORT                        R20 K67 [UDim.new]
      301 LOADN                            R21 0
      302 LOADN                            R22 0
      303 CALL                             R20 2 1
      304 SETTABLEKS                       R20 R19 K60 ["VerticalPadding"]
      306 SETTABLEKS                       R12 R19 K61 ["Elements"]
      308 CALL                             R17 2 1
      309 SETTABLEKS                       R17 R16 K57 ["Caption"]
      311 CALL                             R13 3 -1
      312 CLOSEUPVALS                      R7
      313 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["InlineLayout"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K14 ["InputStateContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Parent"]
       55 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Util"]
       62 GETTABLEKS                       R9 R9 K18 ["TestIds"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Resources"]
       69 GETTABLEKS                       R10 R10 K20 ["Localization"]
       71 GETTABLEKS                       R10 R10 K21 ["Translator"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K22 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K24 ["useExternalInputWatch"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R3 K25 ["Icon"]
       88 GETTABLEKS                       R13 R3 K26 ["Enums"]
       90 GETTABLEKS                       R13 R13 K27 ["IconSize"]
       92 GETTABLEKS                       R14 R3 K28 ["Loading"]
       94 GETTABLEKS                       R15 R3 K29 ["View"]
       96 GETTABLEKS                       R16 R4 K12 ["Components"]
       98 GETTABLEKS                       R16 R16 K11 ["InlineLayout"]
      100 GETTABLEKS                       R17 R4 K12 ["Components"]
      102 GETTABLEKS                       R17 R17 K30 ["InlineLayoutElements"]
      104 GETTABLEKS                       R17 R17 K31 ["LinkElement"]
      106 GETTABLEKS                       R18 R4 K12 ["Components"]
      108 GETTABLEKS                       R18 R18 K30 ["InlineLayoutElements"]
      110 GETTABLEKS                       R18 R18 K32 ["RenderableInlineElement"]
      112 GETTABLEKS                       R19 R4 K12 ["Components"]
      114 GETTABLEKS                       R19 R19 K30 ["InlineLayoutElements"]
      116 GETTABLEKS                       R19 R19 K33 ["TextElement"]
      118 GETTABLEKS                       R20 R7 K34 ["createNextOrder"]
      120 GETTABLEKS                       R21 R6 K35 ["createElement"]
      122 GETTABLEKS                       R22 R5 K36 ["InputDisabledReasons"]
      124 DUPCLOSURE                       R23 K37 [PROTO_0]
      125 CAPTURE                          VAL R22
      126 CAPTURE                          VAL R10
      127 DUPCLOSURE                       R24 K38 [PROTO_1]
      128 CAPTURE                          VAL R22
      129 CAPTURE                          VAL R5
      130 DUPCLOSURE                       R25 K39 [PROTO_6]
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R22
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R19
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R16
      151 GETTABLEKS                       R26 R6 K40 ["memo"]
      153 MOVE                             R27 R25
      154 CALL                             R26 1 -1
      155 RETURN                           R26 -1
