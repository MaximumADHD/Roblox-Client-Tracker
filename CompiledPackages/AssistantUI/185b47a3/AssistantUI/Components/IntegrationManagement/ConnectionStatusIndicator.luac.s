PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 LOADK                            R2 K0 [""]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Connected"]
        5 JUMPIFNOTEQ                      R0 R3 ; [+4]
        7 LOADK                            R1 K2 ["content-system-success"]
        8 LOADK                            R2 K3 ["component_assets/circle_16"]
        9 JUMP                             ; [+18]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["Disconnected"]
       13 JUMPIFNOTEQ                      R0 R3 ; [+4]
       15 LOADK                            R1 K5 ["content-system-neutral"]
       16 LOADK                            R2 K3 ["component_assets/circle_16"]
       17 JUMP                             ; [+10]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K6 ["AuthorizationPending"]
       21 JUMPIFNOTEQ                      R0 R3 ; [+4]
       23 LOADK                            R1 K7 ["content-action-link"]
       24 LOADK                            R2 K8 ["icons/navigation/externallink"]
       25 JUMP                             ; [+2]
       26 LOADK                            R1 K9 ["content-system-alert"]
       27 LOADK                            R2 K3 ["component_assets/circle_16"]
       28 LOADB                            R4 0
       29 JUMPIFEQKS                       R1 K0 [""] ; [+5]
       31 JUMPIFNOTEQKS                    R2 K0 [""] ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 FASTCALL2K                       ASSERT R4 K10 ; [+4]
       37 LOADK                            R5 K10 ["Expected colorTag and icon to be set"]
       38 GETIMPORT                        R3 K12 [assert]
       40 CALL                             R3 2 0
       41 RETURN                           R1 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Connected"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["Connected"]
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["Disconnected"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+4]
       13 GETTABLEKS                       R2 R0 K1 ["Disconnected"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K2 ["AuthorizationPending"]
       19 JUMPIFNOTEQ                      R1 R2 ; [+4]
       21 GETTABLEKS                       R2 R0 K2 ["AuthorizationPending"]
       23 RETURN                           R2 1
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K3 ["UnsupportedProtocolVersion"]
       27 JUMPIFNOTEQ                      R1 R2 ; [+4]
       29 GETTABLEKS                       R2 R0 K4 ["Unsupported"]
       31 RETURN                           R2 1
       32 GETTABLEKS                       R2 R0 K5 ["ConnectionError"]
       34 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K5 [{"Connected", "Disconnected", "AuthorizationPending", "ConnectionError", "Unsupported"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["IntegrationManagement"]
        3 LOADK                            R4 K0 ["Connected"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Connected"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["IntegrationManagement"]
       11 LOADK                            R4 K1 ["Disconnected"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Disconnected"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K6 ["IntegrationManagement"]
       19 LOADK                            R4 K2 ["AuthorizationPending"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["AuthorizationPending"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K6 ["IntegrationManagement"]
       27 LOADK                            R4 K3 ["ConnectionError"]
       28 NAMECALL                         R1 R1 K7 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["ConnectionError"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K6 ["IntegrationManagement"]
       35 LOADK                            R4 K8 ["UnsupportedVersion"]
       36 NAMECALL                         R1 R1 K7 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Unsupported"]
       41 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseBuilderIcons"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Hooks"]
        7 GETTABLEKS                       R1 R1 K2 ["useTokens"]
        9 CALL                             R1 0 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["useMemo"]
       15 DUPCLOSURE                       R3 K4 [PROTO_2]
       16 CAPTURE                          UPVAL U3
       17 NEWTABLE                         R4 0 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K5 ["locale"]
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETTABLEKS                       R3 R0 K6 ["connectionInformation"]
       27 GETTABLEKS                       R3 R3 K7 ["status"]
       29 LOADK                            R6 K8 [""]
       30 LOADK                            R7 K8 [""]
       31 GETUPVAL                         R8 4
       32 GETTABLEKS                       R8 R8 K9 ["Connected"]
       34 JUMPIFNOTEQ                      R3 R8 ; [+4]
       36 LOADK                            R6 K10 ["content-system-success"]
       37 LOADK                            R7 K11 ["component_assets/circle_16"]
       38 JUMP                             ; [+18]
       39 GETUPVAL                         R8 4
       40 GETTABLEKS                       R8 R8 K12 ["Disconnected"]
       42 JUMPIFNOTEQ                      R3 R8 ; [+4]
       44 LOADK                            R6 K13 ["content-system-neutral"]
       45 LOADK                            R7 K11 ["component_assets/circle_16"]
       46 JUMP                             ; [+10]
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K14 ["AuthorizationPending"]
       50 JUMPIFNOTEQ                      R3 R8 ; [+4]
       52 LOADK                            R6 K15 ["content-action-link"]
       53 LOADK                            R7 K16 ["icons/navigation/externallink"]
       54 JUMP                             ; [+2]
       55 LOADK                            R6 K17 ["content-system-alert"]
       56 LOADK                            R7 K11 ["component_assets/circle_16"]
       57 LOADB                            R9 0
       58 JUMPIFEQKS                       R6 K8 [""] ; [+5]
       60 JUMPIFNOTEQKS                    R7 K8 [""] ; [+2]
       62 LOADB                            R9 0 +1
       63 LOADB                            R9 1
       64 FASTCALL2K                       ASSERT R9 K18 ; [+4]
       66 LOADK                            R10 K18 ["Expected colorTag and icon to be set"]
       67 GETIMPORT                        R8 K20 [assert]
       69 CALL                             R8 2 0
       70 MOVE                             R4 R6
       71 MOVE                             R5 R7
       72 GETUPVAL                         R7 4
       73 GETTABLEKS                       R7 R7 K9 ["Connected"]
       75 JUMPIFNOTEQ                      R3 R7 ; [+4]
       77 GETTABLEKS                       R6 R2 K9 ["Connected"]
       79 JUMP                             ; [+26]
       80 GETUPVAL                         R7 4
       81 GETTABLEKS                       R7 R7 K12 ["Disconnected"]
       83 JUMPIFNOTEQ                      R3 R7 ; [+4]
       85 GETTABLEKS                       R6 R2 K12 ["Disconnected"]
       87 JUMP                             ; [+18]
       88 GETUPVAL                         R7 4
       89 GETTABLEKS                       R7 R7 K14 ["AuthorizationPending"]
       91 JUMPIFNOTEQ                      R3 R7 ; [+4]
       93 GETTABLEKS                       R6 R2 K14 ["AuthorizationPending"]
       95 JUMP                             ; [+10]
       96 GETUPVAL                         R7 4
       97 GETTABLEKS                       R7 R7 K21 ["UnsupportedProtocolVersion"]
       99 JUMPIFNOTEQ                      R3 R7 ; [+4]
      101 GETTABLEKS                       R6 R2 K22 ["Unsupported"]
      103 JUMP                             ; [+2]
      104 GETTABLEKS                       R6 R2 K23 ["ConnectionError"]
      106 GETUPVAL                         R8 4
      107 GETTABLEKS                       R8 R8 K14 ["AuthorizationPending"]
      109 JUMPIFEQ                         R3 R8 ; [+2]
      111 LOADB                            R7 0 +1
      112 LOADB                            R7 1
      113 NOT                              R8 R7
      114 GETUPVAL                         R9 5
      115 CALL                             R9 0 1
      116 GETUPVAL                         R10 6
      117 GETUPVAL                         R11 7
      118 DUPTABLE                         R12 K26 [{"tag", "LayoutOrder"}]
      119 NEWTABLE                         R13 2 0
      121 LOADB                            R14 1
      122 SETTABLEKS                       R14 R13 K27 ["row align-y-center auto-xy"]
      124 GETUPVAL                         R14 0
      125 GETTABLEKS                       R14 R14 K0 ["FFlagAssistantUseBuilderIcons"]
      127 SETTABLEKS                       R14 R13 K28 ["gap-xsmall"]
      129 SETTABLEKS                       R13 R12 K24 ["tag"]
      131 GETTABLEKS                       R13 R0 K25 ["LayoutOrder"]
      133 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
      135 DUPTABLE                         R13 K33 [{"LinkIcon", "StatusIndicator", "Icon", "Text"}]
      136 GETUPVAL                         R14 0
      137 GETTABLEKS                       R14 R14 K0 ["FFlagAssistantUseBuilderIcons"]
      139 JUMPIFNOT                        R14 ; [+36]
      140 MOVE                             R14 R7
      141 JUMPIFNOT                        R14 ; [+34]
      142 GETUPVAL                         R14 6
      143 GETUPVAL                         R15 8
      144 DUPTABLE                         R16 K37 [{"name", "style", "size", "LayoutOrder"}]
      145 GETUPVAL                         R17 1
      146 GETTABLEKS                       R17 R17 K38 ["Enums"]
      148 GETTABLEKS                       R17 R17 K39 ["IconName"]
      150 GETTABLEKS                       R17 R17 K40 ["ArrowUpRightFromSquare"]
      152 SETTABLEKS                       R17 R16 K34 ["name"]
      154 GETTABLEKS                       R17 R1 K41 ["Color"]
      156 GETTABLEKS                       R17 R17 K42 ["Content"]
      158 GETTABLEKS                       R17 R17 K43 ["Emphasis"]
      160 SETTABLEKS                       R17 R16 K35 ["style"]
      162 GETUPVAL                         R17 1
      163 GETTABLEKS                       R17 R17 K38 ["Enums"]
      165 GETTABLEKS                       R17 R17 K44 ["IconSize"]
      167 GETTABLEKS                       R17 R17 K45 ["XSmall"]
      169 SETTABLEKS                       R17 R16 K36 ["size"]
      171 MOVE                             R17 R9
      172 CALL                             R17 0 1
      173 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      175 CALL                             R14 2 1
      176 SETTABLEKS                       R14 R13 K29 ["LinkIcon"]
      178 GETUPVAL                         R14 0
      179 GETTABLEKS                       R14 R14 K0 ["FFlagAssistantUseBuilderIcons"]
      181 JUMPIFNOT                        R14 ; [+18]
      182 MOVE                             R14 R8
      183 JUMPIFNOT                        R14 ; [+16]
      184 GETUPVAL                         R14 6
      185 GETUPVAL                         R15 9
      186 DUPTABLE                         R16 K47 [{"variant", "LayoutOrder"}]
      187 GETUPVAL                         R18 10
      188 GETTABLE                         R17 R18 R3
      189 JUMPIF                           R17 ; [+3]
      190 GETUPVAL                         R17 10
      191 GETTABLEKS                       R17 R17 K48 ["Default"]
      193 SETTABLEKS                       R17 R16 K46 ["variant"]
      195 MOVE                             R17 R9
      196 CALL                             R17 0 1
      197 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      199 CALL                             R14 2 1
      200 SETTABLEKS                       R14 R13 K30 ["StatusIndicator"]
      202 GETUPVAL                         R15 0
      203 GETTABLEKS                       R15 R15 K0 ["FFlagAssistantUseBuilderIcons"]
      205 NOT                              R14 R15
      206 JUMPIFNOT                        R14 ; [+19]
      207 GETUPVAL                         R14 6
      208 GETUPVAL                         R15 11
      209 DUPTABLE                         R16 K52 [{["icon"], ["tag"] = "align-x-center align-y-center size-400-400", ["iconTag"], ["LayoutOrder"]}]
      210 SETTABLEKS                       R5 R16 K49 ["icon"]
      212 NEWTABLE                         R17 2 0
      214 LOADB                            R18 1
      215 SETTABLEKS                       R18 R17 K53 ["size-200-200"]
      217 LOADB                            R18 1
      218 SETTABLE                         R18 R17 R4
      219 SETTABLEKS                       R17 R16 K51 ["iconTag"]
      221 MOVE                             R17 R9
      222 CALL                             R17 0 1
      223 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      225 CALL                             R14 2 1
      226 SETTABLEKS                       R14 R13 K31 ["Icon"]
      228 GETUPVAL                         R14 6
      229 GETUPVAL                         R15 12
      230 DUPTABLE                         R16 K56 [{["tag"] = "auto-xy text-body-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"], ["onActivated"]}]
      231 SETTABLEKS                       R6 R16 K32 ["Text"]
      233 MOVE                             R17 R9
      234 CALL                             R17 0 1
      235 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      237 JUMPIFNOT                        R7 ; [+3]
      238 GETTABLEKS                       R17 R0 K57 ["onLogin"]
      240 JUMP                             ; [+1]
      241 LOADNIL                          R17
      242 SETTABLEKS                       R17 R16 K55 ["onActivated"]
      244 CALL                             R14 2 1
      245 SETTABLEKS                       R14 R13 K32 ["Text"]
      247 CALL                             R10 3 -1
      248 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["useUnderlyingConnectionStatus"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["CustomIconButton"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ModelContextProtocol"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Resources"]
       60 GETTABLEKS                       R9 R9 K16 ["Localization"]
       62 GETTABLEKS                       R9 R9 K17 ["Translator"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R5 K18 ["ClientConnectionStatus"]
       67 GETTABLEKS                       R10 R4 K19 ["Icon"]
       69 GETTABLEKS                       R11 R4 K20 ["StatusIndicator"]
       71 GETTABLEKS                       R12 R4 K21 ["Text"]
       73 GETTABLEKS                       R13 R4 K22 ["View"]
       75 GETTABLEKS                       R14 R7 K23 ["createNextOrder"]
       77 GETTABLEKS                       R15 R6 K24 ["createElement"]
       79 NEWTABLE                         R16 4 0
       81 GETTABLEKS                       R17 R9 K25 ["Connected"]
       83 GETTABLEKS                       R18 R4 K26 ["Enums"]
       85 GETTABLEKS                       R18 R18 K27 ["StatusIndicatorVariant"]
       87 GETTABLEKS                       R18 R18 K28 ["Success"]
       89 SETTABLE                         R18 R16 R17
       90 GETTABLEKS                       R17 R9 K29 ["Disconnected"]
       92 GETTABLEKS                       R18 R4 K26 ["Enums"]
       94 GETTABLEKS                       R18 R18 K27 ["StatusIndicatorVariant"]
       96 GETTABLEKS                       R18 R18 K30 ["Neutral"]
       98 SETTABLE                         R18 R16 R17
       99 GETTABLEKS                       R17 R4 K26 ["Enums"]
      101 GETTABLEKS                       R17 R17 K27 ["StatusIndicatorVariant"]
      103 GETTABLEKS                       R17 R17 K31 ["Alert"]
      105 SETTABLEKS                       R17 R16 K32 ["Default"]
      107 DUPCLOSURE                       R17 K33 [PROTO_0]
      108 CAPTURE                          VAL R9
      109 DUPCLOSURE                       R18 K34 [PROTO_1]
      110 CAPTURE                          VAL R9
      111 DUPCLOSURE                       R19 K35 [PROTO_3]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R12
      125 GETTABLEKS                       R20 R6 K36 ["memo"]
      127 MOVE                             R21 R19
      128 CALL                             R20 1 -1
      129 RETURN                           R20 -1
