PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Generating", "Calling", "Called", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["ToolContent"]
        3 LOADK                            R4 K0 ["Generating"]
        4 DUPTABLE                         R5 K7 [{"tool"}]
        5 GETUPVAL                         R6 1
        6 SETTABLEKS                       R6 R5 K6 ["tool"]
        8 NAMECALL                         R1 R1 K8 ["getText"]
       10 CALL                             R1 4 1
       11 SETTABLEKS                       R1 R0 K0 ["Generating"]
       13 GETUPVAL                         R1 0
       14 LOADK                            R3 K5 ["ToolContent"]
       15 LOADK                            R4 K1 ["Calling"]
       16 DUPTABLE                         R5 K7 [{"tool"}]
       17 GETUPVAL                         R6 1
       18 SETTABLEKS                       R6 R5 K6 ["tool"]
       20 NAMECALL                         R1 R1 K8 ["getText"]
       22 CALL                             R1 4 1
       23 SETTABLEKS                       R1 R0 K1 ["Calling"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K5 ["ToolContent"]
       27 LOADK                            R4 K2 ["Called"]
       28 DUPTABLE                         R5 K7 [{"tool"}]
       29 GETUPVAL                         R6 1
       30 SETTABLEKS                       R6 R5 K6 ["tool"]
       32 NAMECALL                         R1 R1 K8 ["getText"]
       34 CALL                             R1 4 1
       35 SETTABLEKS                       R1 R0 K2 ["Called"]
       37 GETUPVAL                         R1 0
       38 LOADK                            R3 K9 ["ToolConfirmation"]
       39 LOADK                            R4 K10 ["ToolCallRejected"]
       40 DUPTABLE                         R5 K12 [{"toolName"}]
       41 GETUPVAL                         R6 1
       42 SETTABLEKS                       R6 R5 K11 ["toolName"]
       44 NAMECALL                         R1 R1 K8 ["getText"]
       46 CALL                             R1 4 1
       47 SETTABLEKS                       R1 R0 K3 ["ToolRejected"]
       49 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["toolUse"]
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R3 R2 K3 ["name"]
       11 JUMPIF                           R3 ; [+1]
       12 LOADNIL                          R3
       13 GETTABLEKS                       R4 R0 K4 ["toolResult"]
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R3
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 2
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+8]
       21 LOADB                            R6 0
       22 JUMPIFEQKNIL                     R3 ; [+6]
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K5 ["isCloudTool"]
       27 MOVE                             R7 R3
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       32 NEWCLOSURE                       R8 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R9 0 1
       37 MOVE                             R10 R5
       38 SETLIST                          R9 R10 1 [1]
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 6
       42 GETTABLEKS                       R8 R8 K7 ["deriveToolStatus"]
       44 GETTABLEKS                       R9 R0 K2 ["toolUse"]
       46 GETTABLEKS                       R10 R0 K4 ["toolResult"]
       48 CALL                             R8 2 1
       49 GETUPVAL                         R9 7
       50 GETTABLEKS                       R9 R9 K8 ["useChannel"]
       52 GETUPVAL                         R10 8
       53 GETTABLEKS                       R10 R10 K9 ["Scope"]
       55 JUMPIFNOT                        R2 ; [+15]
       56 GETUPVAL                         R12 9
       57 GETTABLEKS                       R12 R12 K10 ["ToolNames"]
       59 GETTABLEKS                       R12 R12 K11 ["GenerateScene"]
       61 JUMPIFNOTEQ                      R3 R12 ; [+9]
       63 GETUPVAL                         R12 10
       64 GETTABLEKS                       R12 R12 K12 ["Running"]
       66 JUMPIFNOTEQ                      R8 R12 ; [+4]
       68 GETTABLEKS                       R11 R2 K13 ["id"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R11
       72 GETUPVAL                         R12 8
       73 GETTABLEKS                       R12 R12 K14 ["Field"]
       75 GETTABLEKS                       R12 R12 K15 ["Stage"]
       77 CALL                             R9 3 1
       78 LOADB                            R10 1
       79 GETUPVAL                         R11 10
       80 GETTABLEKS                       R11 R11 K16 ["Preparing"]
       82 JUMPIFEQ                         R8 R11 ; [+8]
       84 GETUPVAL                         R11 10
       85 GETTABLEKS                       R11 R11 K12 ["Running"]
       87 JUMPIFEQ                         R8 R11 ; [+2]
       89 LOADB                            R10 0 +1
       90 LOADB                            R10 1
       91 LOADNIL                          R11
       92 GETUPVAL                         R12 10
       93 GETTABLEKS                       R12 R12 K17 ["Completed"]
       95 JUMPIFEQ                         R8 R12 ; [+6]
       97 GETUPVAL                         R12 10
       98 GETTABLEKS                       R12 R12 K18 ["Failed"]
      100 JUMPIFNOTEQ                      R8 R12 ; [+4]
      102 GETTABLEKS                       R11 R7 K19 ["Called"]
      104 JUMP                             ; [+36]
      105 GETUPVAL                         R12 10
      106 GETTABLEKS                       R12 R12 K20 ["Rejected"]
      108 JUMPIFNOTEQ                      R8 R12 ; [+4]
      110 GETTABLEKS                       R11 R7 K21 ["ToolRejected"]
      112 JUMP                             ; [+28]
      113 GETUPVAL                         R12 10
      114 GETTABLEKS                       R12 R12 K12 ["Running"]
      116 JUMPIFNOTEQ                      R8 R12 ; [+22]
      118 GETUPVAL                         R12 9
      119 GETTABLEKS                       R12 R12 K10 ["ToolNames"]
      121 GETTABLEKS                       R12 R12 K11 ["GenerateScene"]
      123 JUMPIFNOTEQ                      R3 R12 ; [+12]
      125 FASTCALL1                        TYPEOF R9 ; [+3]
      126 MOVE                             R13 R9
      127 GETIMPORT                        R12 K23 [typeof]
      129 CALL                             R12 1 1
      130 JUMPIFNOTEQKS                    R12 K24 ["string"] ; [+5]
      132 JUMPIFEQKS                       R9 K25 [""] ; [+3]
      134 MOVE                             R11 R9
      135 JUMP                             ; [+5]
      136 GETTABLEKS                       R11 R7 K26 ["Calling"]
      138 JUMP                             ; [+2]
      139 GETTABLEKS                       R11 R7 K27 ["Generating"]
      141 GETUPVAL                         R12 11
      142 CALL                             R12 0 1
      143 GETUPVAL                         R13 12
      144 GETUPVAL                         R14 13
      145 GETTABLEKS                       R14 R14 K28 ["Root"]
      147 DUPTABLE                         R15 K33 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      148 GETTABLEKS                       R16 R0 K29 ["LayoutOrder"]
      150 SETTABLEKS                       R16 R15 K29 ["LayoutOrder"]
      152 GETTABLEKS                       R16 R0 K30 ["expanded"]
      154 SETTABLEKS                       R16 R15 K30 ["expanded"]
      156 GETTABLEKS                       R16 R0 K31 ["contentId"]
      158 SETTABLEKS                       R16 R15 K31 ["contentId"]
      160 GETTABLEKS                       R16 R0 K32 ["editThisContent"]
      162 SETTABLEKS                       R16 R15 K32 ["editThisContent"]
      164 DUPTABLE                         R16 K36 [{"Header", "Content"}]
      165 GETUPVAL                         R17 12
      166 GETUPVAL                         R18 13
      167 GETTABLEKS                       R18 R18 K34 ["Header"]
      169 DUPTABLE                         R19 K37 [{"LayoutOrder"}]
      170 MOVE                             R20 R12
      171 CALL                             R20 0 1
      172 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      174 DUPTABLE                         R20 K40 [{"CloudIcon", "Text"}]
      175 MOVE                             R21 R6
      176 JUMPIFNOT                        R21 ; [+41]
      177 GETUPVAL                         R21 12
      178 GETUPVAL                         R22 14
      179 DUPTABLE                         R23 K44 [{"name", "size", "style", "LayoutOrder", "testId"}]
      180 GETUPVAL                         R24 0
      181 GETTABLEKS                       R24 R24 K45 ["Enums"]
      183 GETTABLEKS                       R24 R24 K46 ["IconName"]
      185 GETTABLEKS                       R24 R24 K47 ["Cloud"]
      187 SETTABLEKS                       R24 R23 K3 ["name"]
      189 GETUPVAL                         R24 0
      190 GETTABLEKS                       R24 R24 K45 ["Enums"]
      192 GETTABLEKS                       R24 R24 K48 ["IconSize"]
      194 GETTABLEKS                       R24 R24 K49 ["XSmall"]
      196 SETTABLEKS                       R24 R23 K41 ["size"]
      198 GETTABLEKS                       R24 R1 K50 ["Color"]
      200 GETTABLEKS                       R24 R24 K35 ["Content"]
      202 GETTABLEKS                       R24 R24 K51 ["Muted"]
      204 SETTABLEKS                       R24 R23 K42 ["style"]
      206 MOVE                             R24 R12
      207 CALL                             R24 0 1
      208 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      210 GETUPVAL                         R24 15
      211 GETTABLEKS                       R24 R24 K52 ["GenericTool"]
      213 GETTABLEKS                       R24 R24 K38 ["CloudIcon"]
      215 SETTABLEKS                       R24 R23 K43 ["testId"]
      217 CALL                             R21 2 1
      218 SETTABLEKS                       R21 R20 K38 ["CloudIcon"]
      220 GETUPVAL                         R21 12
      221 GETUPVAL                         R22 16
      222 DUPTABLE                         R23 K55 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      223 SETTABLEKS                       R11 R23 K39 ["Text"]
      225 MOVE                             R24 R12
      226 CALL                             R24 0 1
      227 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      229 DUPTABLE                         R24 K57 [{"Shimmer"}]
      230 JUMPIFNOT                        R10 ; [+4]
      231 GETUPVAL                         R25 12
      232 GETUPVAL                         R26 17
      233 CALL                             R25 1 1
      234 JUMP                             ; [+1]
      235 LOADNIL                          R25
      236 SETTABLEKS                       R25 R24 K56 ["Shimmer"]
      238 CALL                             R21 3 1
      239 SETTABLEKS                       R21 R20 K39 ["Text"]
      241 CALL                             R17 3 1
      242 SETTABLEKS                       R17 R16 K34 ["Header"]
      244 GETUPVAL                         R17 12
      245 GETUPVAL                         R18 13
      246 GETTABLEKS                       R18 R18 K35 ["Content"]
      248 DUPTABLE                         R19 K61 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      249 MOVE                             R20 R12
      250 CALL                             R20 0 1
      251 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      253 DUPTABLE                         R20 K64 [{"InputContainer", "ResultContainer"}]
      254 MOVE                             R21 R2
      255 JUMPIFNOT                        R21 ; [+21]
      256 GETUPVAL                         R21 12
      257 GETUPVAL                         R22 18
      258 DUPTABLE                         R23 K66 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      259 MOVE                             R24 R12
      260 CALL                             R24 0 1
      261 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      263 DUPTABLE                         R24 K68 [{"Input"}]
      264 GETUPVAL                         R25 12
      265 GETUPVAL                         R26 19
      266 DUPTABLE                         R27 K69 [{"toolUse", "LayoutOrder"}]
      267 SETTABLEKS                       R2 R27 K2 ["toolUse"]
      269 MOVE                             R28 R12
      270 CALL                             R28 0 1
      271 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      273 CALL                             R25 2 1
      274 SETTABLEKS                       R25 R24 K67 ["Input"]
      276 CALL                             R21 3 1
      277 SETTABLEKS                       R21 R20 K62 ["InputContainer"]
      279 MOVE                             R21 R4
      280 JUMPIFNOT                        R21 ; [+21]
      281 GETUPVAL                         R21 12
      282 GETUPVAL                         R22 18
      283 DUPTABLE                         R23 K66 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      284 MOVE                             R24 R12
      285 CALL                             R24 0 1
      286 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      288 DUPTABLE                         R24 K71 [{"Result"}]
      289 GETUPVAL                         R25 12
      290 GETUPVAL                         R26 20
      291 DUPTABLE                         R27 K72 [{"toolResult", "LayoutOrder"}]
      292 SETTABLEKS                       R4 R27 K4 ["toolResult"]
      294 MOVE                             R28 R12
      295 CALL                             R28 0 1
      296 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      298 CALL                             R25 2 1
      299 SETTABLEKS                       R25 R24 K70 ["Result"]
      301 CALL                             R21 3 1
      302 SETTABLEKS                       R21 R20 K63 ["ResultContainer"]
      304 CALL                             R17 3 1
      305 SETTABLEKS                       R17 R16 K35 ["Content"]
      307 CALL                             R13 3 -1
      308 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["AssistantHarness"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["Actions"]
       29 GETTABLEKS                       R4 R4 K12 ["ChannelActionsContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K14 ["GenericToolContent"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["Util"]
       50 GETTABLEKS                       R7 R7 K16 ["LayoutGen"]
       52 GETTABLEKS                       R7 R7 K17 ["LayoutGenProgressChannel"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K8 ["Parent"]
       59 GETTABLEKS                       R8 R8 K18 ["React"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K8 ["Parent"]
       66 GETTABLEKS                       R9 R9 K19 ["ReactUtils"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Components"]
       73 GETTABLEKS                       R10 R10 K20 ["ShimmerGradient"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K15 ["Util"]
       80 GETTABLEKS                       R11 R11 K21 ["TestIds"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K22 ["Tools"]
       87 GETTABLEKS                       R12 R12 K23 ["ToolTypes"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K24 ["Resources"]
       94 GETTABLEKS                       R13 R13 K25 ["Localization"]
       96 GETTABLEKS                       R13 R13 K26 ["Translator"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K27 ["Types"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K15 ["Util"]
      108 GETTABLEKS                       R15 R15 K28 ["WidgetUtils"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K29 ["FlagUtils"]
      115 GETTABLEKS                       R16 R16 K30 ["getIsAssistantUseRemoteService"]
      117 CALL                             R15 1 1
      118 GETTABLEKS                       R15 R15 K31 ["get"]
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R17 R0 K32 ["Hooks"]
      124 GETTABLEKS                       R17 R17 K33 ["useToolDisplayName"]
      126 CALL                             R16 1 1
      127 GETTABLEKS                       R17 R2 K34 ["ToolNaming"]
      129 GETTABLEKS                       R18 R5 K35 ["ToolInputContent"]
      131 GETTABLEKS                       R19 R5 K36 ["ToolResultContent"]
      133 GETTABLEKS                       R20 R4 K37 ["Icon"]
      135 GETTABLEKS                       R21 R14 K38 ["ToolStatus"]
      137 GETTABLEKS                       R22 R4 K39 ["View"]
      139 GETTABLEKS                       R23 R4 K40 ["Text"]
      141 GETTABLEKS                       R24 R7 K41 ["createElement"]
      143 GETTABLEKS                       R25 R8 K42 ["createNextOrder"]
      145 DUPCLOSURE                       R26 K43 [PROTO_1]
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R25
      158 CAPTURE                          VAL R24
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R23
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R19
      167 DUPTABLE                         R27 K47 [{["Type"] = "GenericTool", ["ContentWidget"]}]
      168 GETTABLEKS                       R28 R7 K48 ["memo"]
      170 MOVE                             R29 R26
      171 CALL                             R28 1 1
      172 SETTABLEKS                       R28 R27 K46 ["ContentWidget"]
      174 RETURN                           R27 1
