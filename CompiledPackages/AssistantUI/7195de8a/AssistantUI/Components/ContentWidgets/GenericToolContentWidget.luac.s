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
       19 GETTABLEKS                       R6 R6 K5 ["FFlagAssistantUseRemoteService"]
       21 JUMPIFNOT                        R6 ; [+8]
       22 LOADB                            R6 0
       23 JUMPIFEQKNIL                     R3 ; [+6]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K6 ["isCloudTool"]
       28 MOVE                             R7 R3
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       33 NEWCLOSURE                       R8 P0
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R9 0 1
       38 MOVE                             R10 R5
       39 SETLIST                          R9 R10 1 [1]
       41 CALL                             R7 2 1
       42 GETUPVAL                         R8 6
       43 GETTABLEKS                       R8 R8 K8 ["deriveToolStatus"]
       45 GETTABLEKS                       R9 R0 K2 ["toolUse"]
       47 GETTABLEKS                       R10 R0 K4 ["toolResult"]
       49 CALL                             R8 2 1
       50 LOADB                            R9 1
       51 GETUPVAL                         R10 7
       52 GETTABLEKS                       R10 R10 K9 ["Preparing"]
       54 JUMPIFEQ                         R8 R10 ; [+8]
       56 GETUPVAL                         R10 7
       57 GETTABLEKS                       R10 R10 K10 ["Running"]
       59 JUMPIFEQ                         R8 R10 ; [+2]
       61 LOADB                            R9 0 +1
       62 LOADB                            R9 1
       63 LOADNIL                          R10
       64 GETUPVAL                         R11 7
       65 GETTABLEKS                       R11 R11 K11 ["Completed"]
       67 JUMPIFEQ                         R8 R11 ; [+6]
       69 GETUPVAL                         R11 7
       70 GETTABLEKS                       R11 R11 K12 ["Failed"]
       72 JUMPIFNOTEQ                      R8 R11 ; [+4]
       74 GETTABLEKS                       R10 R7 K13 ["Called"]
       76 JUMP                             ; [+18]
       77 GETUPVAL                         R11 7
       78 GETTABLEKS                       R11 R11 K14 ["Rejected"]
       80 JUMPIFNOTEQ                      R8 R11 ; [+4]
       82 GETTABLEKS                       R10 R7 K15 ["ToolRejected"]
       84 JUMP                             ; [+10]
       85 GETUPVAL                         R11 7
       86 GETTABLEKS                       R11 R11 K10 ["Running"]
       88 JUMPIFNOTEQ                      R8 R11 ; [+4]
       90 GETTABLEKS                       R10 R7 K16 ["Calling"]
       92 JUMP                             ; [+2]
       93 GETTABLEKS                       R10 R7 K17 ["Generating"]
       95 GETUPVAL                         R11 8
       96 CALL                             R11 0 1
       97 GETUPVAL                         R12 9
       98 GETUPVAL                         R13 10
       99 GETTABLEKS                       R13 R13 K18 ["Root"]
      101 DUPTABLE                         R14 K23 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      102 GETTABLEKS                       R15 R0 K19 ["LayoutOrder"]
      104 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      106 GETTABLEKS                       R15 R0 K20 ["expanded"]
      108 SETTABLEKS                       R15 R14 K20 ["expanded"]
      110 GETTABLEKS                       R15 R0 K21 ["contentId"]
      112 SETTABLEKS                       R15 R14 K21 ["contentId"]
      114 GETTABLEKS                       R15 R0 K22 ["editThisContent"]
      116 SETTABLEKS                       R15 R14 K22 ["editThisContent"]
      118 DUPTABLE                         R15 K26 [{"Header", "Content"}]
      119 GETUPVAL                         R16 9
      120 GETUPVAL                         R17 10
      121 GETTABLEKS                       R17 R17 K24 ["Header"]
      123 DUPTABLE                         R18 K27 [{"LayoutOrder"}]
      124 MOVE                             R19 R11
      125 CALL                             R19 0 1
      126 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      128 DUPTABLE                         R19 K30 [{"CloudIcon", "Text"}]
      129 MOVE                             R20 R6
      130 JUMPIFNOT                        R20 ; [+41]
      131 GETUPVAL                         R20 9
      132 GETUPVAL                         R21 11
      133 DUPTABLE                         R22 K34 [{"name", "size", "style", "LayoutOrder", "testId"}]
      134 GETUPVAL                         R23 0
      135 GETTABLEKS                       R23 R23 K35 ["Enums"]
      137 GETTABLEKS                       R23 R23 K36 ["IconName"]
      139 GETTABLEKS                       R23 R23 K37 ["Cloud"]
      141 SETTABLEKS                       R23 R22 K3 ["name"]
      143 GETUPVAL                         R23 0
      144 GETTABLEKS                       R23 R23 K35 ["Enums"]
      146 GETTABLEKS                       R23 R23 K38 ["IconSize"]
      148 GETTABLEKS                       R23 R23 K39 ["XSmall"]
      150 SETTABLEKS                       R23 R22 K31 ["size"]
      152 GETTABLEKS                       R23 R1 K40 ["Color"]
      154 GETTABLEKS                       R23 R23 K25 ["Content"]
      156 GETTABLEKS                       R23 R23 K41 ["Muted"]
      158 SETTABLEKS                       R23 R22 K32 ["style"]
      160 MOVE                             R23 R11
      161 CALL                             R23 0 1
      162 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      164 GETUPVAL                         R23 12
      165 GETTABLEKS                       R23 R23 K42 ["GenericTool"]
      167 GETTABLEKS                       R23 R23 K28 ["CloudIcon"]
      169 SETTABLEKS                       R23 R22 K33 ["testId"]
      171 CALL                             R20 2 1
      172 SETTABLEKS                       R20 R19 K28 ["CloudIcon"]
      174 GETUPVAL                         R20 9
      175 GETUPVAL                         R21 13
      176 DUPTABLE                         R22 K45 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      177 SETTABLEKS                       R10 R22 K29 ["Text"]
      179 MOVE                             R23 R11
      180 CALL                             R23 0 1
      181 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      183 DUPTABLE                         R23 K47 [{"Shimmer"}]
      184 JUMPIFNOT                        R9 ; [+4]
      185 GETUPVAL                         R24 9
      186 GETUPVAL                         R25 14
      187 CALL                             R24 1 1
      188 JUMP                             ; [+1]
      189 LOADNIL                          R24
      190 SETTABLEKS                       R24 R23 K46 ["Shimmer"]
      192 CALL                             R20 3 1
      193 SETTABLEKS                       R20 R19 K29 ["Text"]
      195 CALL                             R16 3 1
      196 SETTABLEKS                       R16 R15 K24 ["Header"]
      198 GETUPVAL                         R16 9
      199 GETUPVAL                         R17 10
      200 GETTABLEKS                       R17 R17 K25 ["Content"]
      202 DUPTABLE                         R18 K51 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      203 MOVE                             R19 R11
      204 CALL                             R19 0 1
      205 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      207 DUPTABLE                         R19 K54 [{"InputContainer", "ResultContainer"}]
      208 MOVE                             R20 R2
      209 JUMPIFNOT                        R20 ; [+21]
      210 GETUPVAL                         R20 9
      211 GETUPVAL                         R21 15
      212 DUPTABLE                         R22 K56 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      213 MOVE                             R23 R11
      214 CALL                             R23 0 1
      215 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      217 DUPTABLE                         R23 K58 [{"Input"}]
      218 GETUPVAL                         R24 9
      219 GETUPVAL                         R25 16
      220 DUPTABLE                         R26 K59 [{"toolUse", "LayoutOrder"}]
      221 SETTABLEKS                       R2 R26 K2 ["toolUse"]
      223 MOVE                             R27 R11
      224 CALL                             R27 0 1
      225 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      227 CALL                             R24 2 1
      228 SETTABLEKS                       R24 R23 K57 ["Input"]
      230 CALL                             R20 3 1
      231 SETTABLEKS                       R20 R19 K52 ["InputContainer"]
      233 MOVE                             R20 R4
      234 JUMPIFNOT                        R20 ; [+21]
      235 GETUPVAL                         R20 9
      236 GETUPVAL                         R21 15
      237 DUPTABLE                         R22 K56 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      238 MOVE                             R23 R11
      239 CALL                             R23 0 1
      240 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      242 DUPTABLE                         R23 K61 [{"Result"}]
      243 GETUPVAL                         R24 9
      244 GETUPVAL                         R25 17
      245 DUPTABLE                         R26 K62 [{"toolResult", "LayoutOrder"}]
      246 SETTABLEKS                       R4 R26 K4 ["toolResult"]
      248 MOVE                             R27 R11
      249 CALL                             R27 0 1
      250 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      252 CALL                             R24 2 1
      253 SETTABLEKS                       R24 R23 K60 ["Result"]
      255 CALL                             R20 3 1
      256 SETTABLEKS                       R20 R19 K53 ["ResultContainer"]
      258 CALL                             R16 3 1
      259 SETTABLEKS                       R16 R15 K25 ["Content"]
      261 CALL                             R12 3 -1
      262 RETURN                           R12 -1

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
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["GenericToolContent"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K8 ["Parent"]
       44 GETTABLEKS                       R7 R7 K13 ["React"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K8 ["Parent"]
       51 GETTABLEKS                       R8 R8 K14 ["ReactUtils"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Components"]
       58 GETTABLEKS                       R9 R9 K15 ["ShimmerGradient"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K16 ["Util"]
       65 GETTABLEKS                       R10 R10 K17 ["TestIds"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K18 ["Resources"]
       72 GETTABLEKS                       R11 R11 K19 ["Localization"]
       74 GETTABLEKS                       R11 R11 K20 ["Translator"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K21 ["Types"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K16 ["Util"]
       86 GETTABLEKS                       R13 R13 K22 ["WidgetUtils"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       93 GETTABLEKS                       R14 R14 K24 ["useToolDisplayName"]
       95 CALL                             R13 1 1
       96 GETTABLEKS                       R14 R2 K25 ["ToolNaming"]
       98 GETTABLEKS                       R15 R5 K26 ["ToolInputContent"]
      100 GETTABLEKS                       R16 R5 K27 ["ToolResultContent"]
      102 GETTABLEKS                       R17 R4 K28 ["Icon"]
      104 GETTABLEKS                       R18 R12 K29 ["ToolStatus"]
      106 GETTABLEKS                       R19 R4 K30 ["View"]
      108 GETTABLEKS                       R20 R4 K31 ["Text"]
      110 GETTABLEKS                       R21 R6 K32 ["createElement"]
      112 GETTABLEKS                       R22 R7 K33 ["createNextOrder"]
      114 DUPCLOSURE                       R23 K34 [PROTO_1]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R18
      123 CAPTURE                          VAL R22
      124 CAPTURE                          VAL R21
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R16
      133 DUPTABLE                         R24 K38 [{["Type"] = "GenericTool", ["ContentWidget"]}]
      134 GETTABLEKS                       R25 R6 K39 ["memo"]
      136 MOVE                             R26 R23
      137 CALL                             R25 1 1
      138 SETTABLEKS                       R25 R24 K37 ["ContentWidget"]
      140 RETURN                           R24 1
