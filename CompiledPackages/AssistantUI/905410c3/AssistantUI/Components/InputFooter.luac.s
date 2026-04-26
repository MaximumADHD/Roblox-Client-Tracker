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
       24 GETUPVAL                         R5 4
       25 JUMPIFNOT                        R5 ; [+8]
       26 GETUPVAL                         R7 5
       27 GETTABLEKS                       R6 R7 K12 ["Color"]
       29 GETTABLEKS                       R5 R6 K13 ["System"]
       31 GETTABLEKS                       R4 R5 K14 ["Alert"]
       33 JUMP                             ; [+7]
       34 GETUPVAL                         R7 5
       35 GETTABLEKS                       R6 R7 K12 ["Color"]
       37 GETTABLEKS                       R5 R6 K15 ["Content"]
       39 GETTABLEKS                       R4 R5 K16 ["Default"]
       41 SETTABLEKS                       R4 R3 K5 ["textStyle"]
       43 GETUPVAL                         R6 5
       44 GETTABLEKS                       R5 R6 K17 ["Typography"]
       46 GETTABLEKS                       R4 R5 K18 ["CaptionSmall"]
       48 SETTABLEKS                       R4 R3 K6 ["fontStyle"]
       50 LOADB                            R4 0
       51 SETTABLEKS                       R4 R3 K7 ["RichText"]
       53 GETUPVAL                         R4 6
       54 CALL                             R4 0 1
       55 SETTABLEKS                       R4 R3 K8 ["LayoutOrder"]
       57 CALL                             R2 1 1
       58 GETUPVAL                         R4 2
       59 JUMPIFNOT                        R4 ; [+55]
       60 GETUPVAL                         R4 7
       61 GETTABLEKS                       R3 R4 K1 ["new"]
       63 NEWTABLE                         R4 0 1
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R5 R6 K1 ["new"]
       68 DUPTABLE                         R6 K9 [{"key", "Text", "SplitBy", "textStyle", "fontStyle", "RichText", "LayoutOrder"}]
       69 LOADK                            R7 K19 ["LinkText"]
       70 SETTABLEKS                       R7 R6 K2 ["key"]
       72 GETUPVAL                         R8 8
       73 GETTABLEKS                       R7 R8 K20 ["LearnMore"]
       75 SETTABLEKS                       R7 R6 K3 ["Text"]
       77 LOADK                            R7 K11 ["Word"]
       78 SETTABLEKS                       R7 R6 K4 ["SplitBy"]
       80 GETUPVAL                         R10 5
       81 GETTABLEKS                       R9 R10 K12 ["Color"]
       83 GETTABLEKS                       R8 R9 K15 ["Content"]
       85 GETTABLEKS                       R7 R8 K21 ["Link"]
       87 SETTABLEKS                       R7 R6 K5 ["textStyle"]
       89 GETUPVAL                         R9 5
       90 GETTABLEKS                       R8 R9 K17 ["Typography"]
       92 GETTABLEKS                       R7 R8 K18 ["CaptionSmall"]
       94 SETTABLEKS                       R7 R6 K6 ["fontStyle"]
       96 LOADB                            R7 0
       97 SETTABLEKS                       R7 R6 K7 ["RichText"]
       99 GETUPVAL                         R7 6
      100 CALL                             R7 0 1
      101 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
      103 CALL                             R5 1 1
      104 SETLIST                          R4 R5 1 [1]
      106 DUPTABLE                         R5 K23 [{"key", "onActivated"}]
      107 LOADK                            R6 K24 ["LinkWrapper"]
      108 SETTABLEKS                       R6 R5 K2 ["key"]
      110 GETUPVAL                         R6 9
      111 SETTABLEKS                       R6 R5 K22 ["onActivated"]
      113 CALL                             R3 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R3
      116 SETLIST                          R1 R2 2 [1]
      118 DUPCLOSURE                       R2 K25 [PROTO_4]
      119 CALL                             R0 2 -1
      120 RETURN                           R0 -1

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
      120 GETTABLEKS                       R8 R0 K28 ["imageAttachError"]
      122 JUMPIFNOTEQKNIL                  R8 ; [+2]
      124 LOADB                            R7 0 +1
      125 LOADB                            R7 1
      126 JUMPIFNOT                        R7 ; [+3]
      127 GETTABLEKS                       R8 R0 K28 ["imageAttachError"]
      129 JUMP                             ; [+43]
      130 GETTABLEKS                       R9 R1 K2 ["reasonDisabled"]
      132 JUMPIF                           R9 ; [+3]
      133 GETTABLEKS                       R8 R4 K29 ["PIINotice"]
      135 JUMP                             ; [+37]
      136 GETTABLEKS                       R10 R9 K2 ["reasonDisabled"]
      138 GETUPVAL                         R12 5
      139 GETTABLEKS                       R11 R12 K30 ["Generation"]
      141 JUMPIFNOTEQ                      R10 R11 ; [+4]
      143 GETTABLEKS                       R8 R4 K29 ["PIINotice"]
      145 JUMP                             ; [+27]
      146 GETUPVAL                         R12 5
      147 GETTABLEKS                       R11 R12 K8 ["QuotaExceeded"]
      149 JUMPIFEQ                         R10 R11 ; [+6]
      151 GETUPVAL                         R12 5
      152 GETTABLEKS                       R11 R12 K31 ["TooManyRequest"]
      154 JUMPIFNOTEQ                      R10 R11 ; [+4]
      156 GETTABLEKS                       R8 R4 K8 ["QuotaExceeded"]
      158 JUMP                             ; [+14]
      159 GETUPVAL                         R12 5
      160 GETTABLEKS                       R11 R12 K6 ["External"]
      162 JUMPIFNOTEQ                      R10 R11 ; [+4]
      164 GETTABLEKS                       R8 R9 K32 ["externalReasonText"]
      166 JUMP                             ; [+6]
      167 GETUPVAL                         R12 12
      168 GETTABLEKS                       R11 R12 K33 ["assertNever"]
      170 MOVE                             R12 R10
      171 CALL                             R11 1 1
      172 MOVE                             R8 R11
      173 NOT                              R9 R7
      174 JUMPIFNOT                        R9 ; [+6]
      175 GETTABLEKS                       R10 R4 K29 ["PIINotice"]
      177 JUMPIFEQ                         R8 R10 ; [+2]
      179 LOADB                            R9 0 +1
      180 LOADB                            R9 1
      181 GETUPVAL                         R11 1
      182 GETTABLEKS                       R10 R11 K34 ["useCallback"]
      184 DUPCLOSURE                       R11 K35 [PROTO_3]
      185 CAPTURE                          UPVAL U13
      186 NEWTABLE                         R12 0 0
      188 CALL                             R10 2 1
      189 LOADNIL                          R11
      190 LOADNIL                          R12
      191 GETUPVAL                         R13 14
      192 CALL                             R13 0 1
      193 JUMPIFNOT                        R13 ; [+32]
      194 GETUPVAL                         R15 15
      195 GETTABLEKS                       R14 R15 K36 ["Hooks"]
      197 GETTABLEKS                       R13 R14 K37 ["useTokens"]
      199 CALL                             R13 0 1
      200 MOVE                             R11 R13
      201 GETUPVAL                         R14 1
      202 GETTABLEKS                       R13 R14 K3 ["useMemo"]
      204 NEWCLOSURE                       R14 P2
      205 CAPTURE                          UPVAL U16
      206 CAPTURE                          UPVAL U17
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R7
      210 CAPTURE                          REF R11
      211 CAPTURE                          VAL R3
      212 CAPTURE                          UPVAL U18
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R10
      215 NEWTABLE                         R15 0 5
      217 MOVE                             R16 R8
      218 MOVE                             R17 R11
      219 MOVE                             R18 R4
      220 MOVE                             R19 R10
      221 MOVE                             R20 R7
      222 SETLIST                          R15 R16 5 [1]
      224 CALL                             R13 2 1
      225 MOVE                             R12 R13
      226 GETUPVAL                         R13 6
      227 GETUPVAL                         R14 7
      228 DUPTABLE                         R15 K38 [{"LayoutOrder", "tag", "testId"}]
      229 GETTABLEKS                       R16 R0 K24 ["LayoutOrder"]
      231 SETTABLEKS                       R16 R15 K24 ["LayoutOrder"]
      233 LOADK                            R16 K39 ["row size-full-400 auto-y gap-xsmall align-x-center align-y-center padding-y-medium"]
      234 SETTABLEKS                       R16 R15 K12 ["tag"]
      236 GETUPVAL                         R19 8
      237 GETTABLEKS                       R18 R19 K16 ["InputArea"]
      239 GETTABLEKS                       R17 R18 K17 ["Footer"]
      241 GETTABLEKS                       R16 R17 K40 ["Container"]
      243 SETTABLEKS                       R16 R15 K13 ["testId"]
      245 GETUPVAL                         R17 14
      246 CALL                             R17 0 1
      247 JUMPIFNOT                        R17 ; [+23]
      248 DUPTABLE                         R16 K42 [{"Icon", "Caption"}]
      249 SETTABLEKS                       R6 R16 K18 ["Icon"]
      251 GETUPVAL                         R17 6
      252 GETUPVAL                         R18 19
      253 DUPTABLE                         R19 K46 [{"HorizontalAlignment", "VerticalPadding", "Elements"}]
      254 GETIMPORT                        R20 K49 [Enum.HorizontalAlignment.Center]
      256 SETTABLEKS                       R20 R19 K43 ["HorizontalAlignment"]
      258 GETIMPORT                        R20 K52 [UDim.new]
      260 LOADN                            R21 0
      261 LOADN                            R22 0
      262 CALL                             R20 2 1
      263 SETTABLEKS                       R20 R19 K44 ["VerticalPadding"]
      265 SETTABLEKS                       R12 R19 K45 ["Elements"]
      267 CALL                             R17 2 1
      268 SETTABLEKS                       R17 R16 K41 ["Caption"]
      270 JUMP                             ; [+59]
      271 DUPTABLE                         R16 K55 [{"Icon", "Text", "LearnMore"}]
      272 SETTABLEKS                       R6 R16 K18 ["Icon"]
      274 GETUPVAL                         R17 6
      275 GETUPVAL                         R18 20
      276 DUPTABLE                         R19 K56 [{"tag", "LayoutOrder", "Text"}]
      277 NEWTABLE                         R20 4 0
      279 LOADB                            R21 1
      280 SETTABLEKS                       R21 R20 K57 ["auto-xy text-caption-small text-wrap"]
      282 SETTABLEKS                       R7 R20 K58 ["content-alert"]
      284 NOT                              R21 R7
      285 SETTABLEKS                       R21 R20 K59 ["content-default"]
      287 SETTABLEKS                       R20 R19 K12 ["tag"]
      289 MOVE                             R20 R3
      290 CALL                             R20 0 1
      291 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      293 SETTABLEKS                       R8 R19 K53 ["Text"]
      295 CALL                             R17 2 1
      296 SETTABLEKS                       R17 R16 K53 ["Text"]
      298 JUMPIFNOT                        R9 ; [+28]
      299 GETUPVAL                         R17 6
      300 GETUPVAL                         R18 7
      301 DUPTABLE                         R19 K61 [{"tag", "LayoutOrder", "onActivated"}]
      302 LOADK                            R20 K15 ["auto-xy"]
      303 SETTABLEKS                       R20 R19 K12 ["tag"]
      305 MOVE                             R20 R3
      306 CALL                             R20 0 1
      307 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      309 SETTABLEKS                       R10 R19 K60 ["onActivated"]
      311 DUPTABLE                         R20 K63 [{"LearnMoreText"}]
      312 GETUPVAL                         R21 6
      313 GETUPVAL                         R22 20
      314 DUPTABLE                         R23 K64 [{"tag", "Text"}]
      315 LOADK                            R24 K65 ["auto-xy text-caption-small content-link text-underline"]
      316 SETTABLEKS                       R24 R23 K12 ["tag"]
      318 GETTABLEKS                       R24 R4 K54 ["LearnMore"]
      320 SETTABLEKS                       R24 R23 K53 ["Text"]
      322 CALL                             R21 2 1
      323 SETTABLEKS                       R21 R20 K62 ["LearnMoreText"]
      325 CALL                             R17 3 1
      326 JUMP                             ; [+1]
      327 LOADNIL                          R17
      328 SETTABLEKS                       R17 R16 K54 ["LearnMore"]
      330 CALL                             R13 3 -1
      331 CLOSEUPVALS                      R11
      332 RETURN                           R13 -1

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
