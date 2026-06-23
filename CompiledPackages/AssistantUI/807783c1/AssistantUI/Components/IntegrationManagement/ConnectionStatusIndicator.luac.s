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
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        6 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        8 CALL                             R1 0 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       14 DUPCLOSURE                       R3 K3 [PROTO_2]
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R4 0 1
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K4 ["locale"]
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETTABLEKS                       R3 R0 K5 ["connectionInformation"]
       26 GETTABLEKS                       R3 R3 K6 ["status"]
       28 LOADK                            R6 K7 [""]
       29 LOADK                            R7 K7 [""]
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R8 R8 K8 ["Connected"]
       33 JUMPIFNOTEQ                      R3 R8 ; [+4]
       35 LOADK                            R6 K9 ["content-system-success"]
       36 LOADK                            R7 K10 ["component_assets/circle_16"]
       37 JUMP                             ; [+18]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K11 ["Disconnected"]
       41 JUMPIFNOTEQ                      R3 R8 ; [+4]
       43 LOADK                            R6 K12 ["content-system-neutral"]
       44 LOADK                            R7 K10 ["component_assets/circle_16"]
       45 JUMP                             ; [+10]
       46 GETUPVAL                         R8 4
       47 GETTABLEKS                       R8 R8 K13 ["AuthorizationPending"]
       49 JUMPIFNOTEQ                      R3 R8 ; [+4]
       51 LOADK                            R6 K14 ["content-action-link"]
       52 LOADK                            R7 K15 ["icons/navigation/externallink"]
       53 JUMP                             ; [+2]
       54 LOADK                            R6 K16 ["content-system-alert"]
       55 LOADK                            R7 K10 ["component_assets/circle_16"]
       56 LOADB                            R9 0
       57 JUMPIFEQKS                       R6 K7 [""] ; [+5]
       59 JUMPIFNOTEQKS                    R7 K7 [""] ; [+2]
       61 LOADB                            R9 0 +1
       62 LOADB                            R9 1
       63 FASTCALL2K                       ASSERT R9 K17 ; [+4]
       65 LOADK                            R10 K17 ["Expected colorTag and icon to be set"]
       66 GETIMPORT                        R8 K19 [assert]
       68 CALL                             R8 2 0
       69 MOVE                             R4 R6
       70 MOVE                             R5 R7
       71 GETUPVAL                         R7 4
       72 GETTABLEKS                       R7 R7 K8 ["Connected"]
       74 JUMPIFNOTEQ                      R3 R7 ; [+4]
       76 GETTABLEKS                       R6 R2 K8 ["Connected"]
       78 JUMP                             ; [+26]
       79 GETUPVAL                         R7 4
       80 GETTABLEKS                       R7 R7 K11 ["Disconnected"]
       82 JUMPIFNOTEQ                      R3 R7 ; [+4]
       84 GETTABLEKS                       R6 R2 K11 ["Disconnected"]
       86 JUMP                             ; [+18]
       87 GETUPVAL                         R7 4
       88 GETTABLEKS                       R7 R7 K13 ["AuthorizationPending"]
       90 JUMPIFNOTEQ                      R3 R7 ; [+4]
       92 GETTABLEKS                       R6 R2 K13 ["AuthorizationPending"]
       94 JUMP                             ; [+10]
       95 GETUPVAL                         R7 4
       96 GETTABLEKS                       R7 R7 K20 ["UnsupportedProtocolVersion"]
       98 JUMPIFNOTEQ                      R3 R7 ; [+4]
      100 GETTABLEKS                       R6 R2 K21 ["Unsupported"]
      102 JUMP                             ; [+2]
      103 GETTABLEKS                       R6 R2 K22 ["ConnectionError"]
      105 GETUPVAL                         R8 4
      106 GETTABLEKS                       R8 R8 K13 ["AuthorizationPending"]
      108 JUMPIFEQ                         R3 R8 ; [+2]
      110 LOADB                            R7 0 +1
      111 LOADB                            R7 1
      112 NOT                              R8 R7
      113 GETUPVAL                         R9 5
      114 CALL                             R9 0 1
      115 GETUPVAL                         R10 6
      116 GETUPVAL                         R11 7
      117 DUPTABLE                         R12 K25 [{"tag", "LayoutOrder"}]
      118 NEWTABLE                         R13 2 0
      120 LOADB                            R14 1
      121 SETTABLEKS                       R14 R13 K26 ["row auto-xy align-y-center"]
      123 GETUPVAL                         R14 0
      124 CALL                             R14 0 1
      125 SETTABLEKS                       R14 R13 K27 ["gap-xsmall"]
      127 SETTABLEKS                       R13 R12 K23 ["tag"]
      129 GETTABLEKS                       R13 R0 K24 ["LayoutOrder"]
      131 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
      133 DUPTABLE                         R13 K32 [{"LinkIcon", "StatusIndicator", "Icon", "Text"}]
      134 GETUPVAL                         R14 0
      135 CALL                             R14 0 1
      136 JUMPIFNOT                        R14 ; [+36]
      137 MOVE                             R14 R7
      138 JUMPIFNOT                        R14 ; [+34]
      139 GETUPVAL                         R14 6
      140 GETUPVAL                         R15 8
      141 DUPTABLE                         R16 K36 [{"name", "style", "size", "LayoutOrder"}]
      142 GETUPVAL                         R17 1
      143 GETTABLEKS                       R17 R17 K37 ["Enums"]
      145 GETTABLEKS                       R17 R17 K38 ["IconName"]
      147 GETTABLEKS                       R17 R17 K39 ["ArrowUpRightFromSquare"]
      149 SETTABLEKS                       R17 R16 K33 ["name"]
      151 GETTABLEKS                       R17 R1 K40 ["Color"]
      153 GETTABLEKS                       R17 R17 K41 ["Content"]
      155 GETTABLEKS                       R17 R17 K42 ["Emphasis"]
      157 SETTABLEKS                       R17 R16 K34 ["style"]
      159 GETUPVAL                         R17 1
      160 GETTABLEKS                       R17 R17 K37 ["Enums"]
      162 GETTABLEKS                       R17 R17 K43 ["IconSize"]
      164 GETTABLEKS                       R17 R17 K44 ["XSmall"]
      166 SETTABLEKS                       R17 R16 K35 ["size"]
      168 MOVE                             R17 R9
      169 CALL                             R17 0 1
      170 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      172 CALL                             R14 2 1
      173 SETTABLEKS                       R14 R13 K28 ["LinkIcon"]
      175 GETUPVAL                         R14 0
      176 CALL                             R14 0 1
      177 JUMPIFNOT                        R14 ; [+18]
      178 MOVE                             R14 R8
      179 JUMPIFNOT                        R14 ; [+16]
      180 GETUPVAL                         R14 6
      181 GETUPVAL                         R15 9
      182 DUPTABLE                         R16 K46 [{"variant", "LayoutOrder"}]
      183 GETUPVAL                         R18 10
      184 GETTABLE                         R17 R18 R3
      185 JUMPIF                           R17 ; [+3]
      186 GETUPVAL                         R17 10
      187 GETTABLEKS                       R17 R17 K47 ["Default"]
      189 SETTABLEKS                       R17 R16 K45 ["variant"]
      191 MOVE                             R17 R9
      192 CALL                             R17 0 1
      193 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      195 CALL                             R14 2 1
      196 SETTABLEKS                       R14 R13 K29 ["StatusIndicator"]
      198 GETUPVAL                         R15 0
      199 CALL                             R15 0 1
      200 NOT                              R14 R15
      201 JUMPIFNOT                        R14 ; [+22]
      202 GETUPVAL                         R14 6
      203 GETUPVAL                         R15 11
      204 DUPTABLE                         R16 K50 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      205 SETTABLEKS                       R5 R16 K48 ["icon"]
      207 LOADK                            R17 K51 ["size-400-400 align-x-center align-y-center"]
      208 SETTABLEKS                       R17 R16 K23 ["tag"]
      210 NEWTABLE                         R17 2 0
      212 LOADB                            R18 1
      213 SETTABLEKS                       R18 R17 K52 ["size-200-200"]
      215 LOADB                            R18 1
      216 SETTABLE                         R18 R17 R4
      217 SETTABLEKS                       R17 R16 K49 ["iconTag"]
      219 MOVE                             R17 R9
      220 CALL                             R17 0 1
      221 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      223 CALL                             R14 2 1
      224 SETTABLEKS                       R14 R13 K30 ["Icon"]
      226 GETUPVAL                         R14 6
      227 GETUPVAL                         R15 12
      228 DUPTABLE                         R16 K54 [{"tag", "Text", "LayoutOrder", "onActivated"}]
      229 LOADK                            R17 K55 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
      230 SETTABLEKS                       R17 R16 K23 ["tag"]
      232 SETTABLEKS                       R6 R16 K31 ["Text"]
      234 MOVE                             R17 R9
      235 CALL                             R17 0 1
      236 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      238 JUMPIFNOT                        R7 ; [+3]
      239 GETTABLEKS                       R17 R0 K56 ["onLogin"]
      241 JUMP                             ; [+1]
      242 LOADNIL                          R17
      243 SETTABLEKS                       R17 R16 K53 ["onActivated"]
      245 CALL                             R14 2 1
      246 SETTABLEKS                       R14 R13 K31 ["Text"]
      248 CALL                             R10 3 -1
      249 RETURN                           R10 -1

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
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["ModelContextProtocol"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Resources"]
       55 GETTABLEKS                       R8 R8 K15 ["Localization"]
       57 GETTABLEKS                       R8 R8 K16 ["Translator"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K17 ["Flags"]
       64 GETTABLEKS                       R9 R9 K18 ["FFlagAssistantUseBuilderIcons"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R4 K19 ["ClientConnectionStatus"]
       69 GETTABLEKS                       R10 R3 K20 ["Icon"]
       71 GETTABLEKS                       R11 R3 K21 ["StatusIndicator"]
       73 GETTABLEKS                       R12 R3 K22 ["Text"]
       75 GETTABLEKS                       R13 R3 K23 ["View"]
       77 GETTABLEKS                       R14 R6 K24 ["createNextOrder"]
       79 GETTABLEKS                       R15 R5 K25 ["createElement"]
       81 NEWTABLE                         R16 4 0
       83 GETTABLEKS                       R17 R9 K26 ["Connected"]
       85 GETTABLEKS                       R18 R3 K27 ["Enums"]
       87 GETTABLEKS                       R18 R18 K28 ["StatusIndicatorVariant"]
       89 GETTABLEKS                       R18 R18 K29 ["Success"]
       91 SETTABLE                         R18 R16 R17
       92 GETTABLEKS                       R17 R9 K30 ["Disconnected"]
       94 GETTABLEKS                       R18 R3 K27 ["Enums"]
       96 GETTABLEKS                       R18 R18 K28 ["StatusIndicatorVariant"]
       98 GETTABLEKS                       R18 R18 K31 ["Neutral"]
      100 SETTABLE                         R18 R16 R17
      101 GETTABLEKS                       R17 R3 K27 ["Enums"]
      103 GETTABLEKS                       R17 R17 K28 ["StatusIndicatorVariant"]
      105 GETTABLEKS                       R17 R17 K32 ["Alert"]
      107 SETTABLEKS                       R17 R16 K33 ["Default"]
      109 DUPCLOSURE                       R17 K34 [PROTO_0]
      110 CAPTURE                          VAL R9
      111 DUPCLOSURE                       R18 K35 [PROTO_1]
      112 CAPTURE                          VAL R9
      113 DUPCLOSURE                       R19 K36 [PROTO_3]
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R12
      127 GETTABLEKS                       R20 R5 K37 ["memo"]
      129 MOVE                             R21 R19
      130 CALL                             R20 1 -1
      131 RETURN                           R20 -1
