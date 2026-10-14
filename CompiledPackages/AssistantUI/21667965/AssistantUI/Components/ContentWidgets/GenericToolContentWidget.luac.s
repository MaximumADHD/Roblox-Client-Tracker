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
       49 LOADB                            R9 1
       50 GETUPVAL                         R10 7
       51 GETTABLEKS                       R10 R10 K8 ["Preparing"]
       53 JUMPIFEQ                         R8 R10 ; [+8]
       55 GETUPVAL                         R10 7
       56 GETTABLEKS                       R10 R10 K9 ["Running"]
       58 JUMPIFEQ                         R8 R10 ; [+2]
       60 LOADB                            R9 0 +1
       61 LOADB                            R9 1
       62 LOADNIL                          R10
       63 GETUPVAL                         R11 7
       64 GETTABLEKS                       R11 R11 K10 ["Completed"]
       66 JUMPIFEQ                         R8 R11 ; [+6]
       68 GETUPVAL                         R11 7
       69 GETTABLEKS                       R11 R11 K11 ["Failed"]
       71 JUMPIFNOTEQ                      R8 R11 ; [+4]
       73 GETTABLEKS                       R10 R7 K12 ["Called"]
       75 JUMP                             ; [+18]
       76 GETUPVAL                         R11 7
       77 GETTABLEKS                       R11 R11 K13 ["Rejected"]
       79 JUMPIFNOTEQ                      R8 R11 ; [+4]
       81 GETTABLEKS                       R10 R7 K14 ["ToolRejected"]
       83 JUMP                             ; [+10]
       84 GETUPVAL                         R11 7
       85 GETTABLEKS                       R11 R11 K9 ["Running"]
       87 JUMPIFNOTEQ                      R8 R11 ; [+4]
       89 GETTABLEKS                       R10 R7 K15 ["Calling"]
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R10 R7 K16 ["Generating"]
       94 GETUPVAL                         R11 8
       95 CALL                             R11 0 1
       96 GETUPVAL                         R12 9
       97 GETUPVAL                         R13 10
       98 GETTABLEKS                       R13 R13 K17 ["Root"]
      100 DUPTABLE                         R14 K22 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      101 GETTABLEKS                       R15 R0 K18 ["LayoutOrder"]
      103 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
      105 GETTABLEKS                       R15 R0 K19 ["expanded"]
      107 SETTABLEKS                       R15 R14 K19 ["expanded"]
      109 GETTABLEKS                       R15 R0 K20 ["contentId"]
      111 SETTABLEKS                       R15 R14 K20 ["contentId"]
      113 GETTABLEKS                       R15 R0 K21 ["editThisContent"]
      115 SETTABLEKS                       R15 R14 K21 ["editThisContent"]
      117 DUPTABLE                         R15 K25 [{"Header", "Content"}]
      118 GETUPVAL                         R16 9
      119 GETUPVAL                         R17 10
      120 GETTABLEKS                       R17 R17 K23 ["Header"]
      122 DUPTABLE                         R18 K26 [{"LayoutOrder"}]
      123 MOVE                             R19 R11
      124 CALL                             R19 0 1
      125 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      127 DUPTABLE                         R19 K29 [{"CloudIcon", "Text"}]
      128 MOVE                             R20 R6
      129 JUMPIFNOT                        R20 ; [+41]
      130 GETUPVAL                         R20 9
      131 GETUPVAL                         R21 11
      132 DUPTABLE                         R22 K33 [{"name", "size", "style", "LayoutOrder", "testId"}]
      133 GETUPVAL                         R23 0
      134 GETTABLEKS                       R23 R23 K34 ["Enums"]
      136 GETTABLEKS                       R23 R23 K35 ["IconName"]
      138 GETTABLEKS                       R23 R23 K36 ["Cloud"]
      140 SETTABLEKS                       R23 R22 K3 ["name"]
      142 GETUPVAL                         R23 0
      143 GETTABLEKS                       R23 R23 K34 ["Enums"]
      145 GETTABLEKS                       R23 R23 K37 ["IconSize"]
      147 GETTABLEKS                       R23 R23 K38 ["XSmall"]
      149 SETTABLEKS                       R23 R22 K30 ["size"]
      151 GETTABLEKS                       R23 R1 K39 ["Color"]
      153 GETTABLEKS                       R23 R23 K24 ["Content"]
      155 GETTABLEKS                       R23 R23 K40 ["Muted"]
      157 SETTABLEKS                       R23 R22 K31 ["style"]
      159 MOVE                             R23 R11
      160 CALL                             R23 0 1
      161 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      163 GETUPVAL                         R23 12
      164 GETTABLEKS                       R23 R23 K41 ["GenericTool"]
      166 GETTABLEKS                       R23 R23 K27 ["CloudIcon"]
      168 SETTABLEKS                       R23 R22 K32 ["testId"]
      170 CALL                             R20 2 1
      171 SETTABLEKS                       R20 R19 K27 ["CloudIcon"]
      173 GETUPVAL                         R20 9
      174 GETUPVAL                         R21 13
      175 DUPTABLE                         R22 K44 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      176 SETTABLEKS                       R10 R22 K28 ["Text"]
      178 MOVE                             R23 R11
      179 CALL                             R23 0 1
      180 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      182 DUPTABLE                         R23 K46 [{"Shimmer"}]
      183 JUMPIFNOT                        R9 ; [+4]
      184 GETUPVAL                         R24 9
      185 GETUPVAL                         R25 14
      186 CALL                             R24 1 1
      187 JUMP                             ; [+1]
      188 LOADNIL                          R24
      189 SETTABLEKS                       R24 R23 K45 ["Shimmer"]
      191 CALL                             R20 3 1
      192 SETTABLEKS                       R20 R19 K28 ["Text"]
      194 CALL                             R16 3 1
      195 SETTABLEKS                       R16 R15 K23 ["Header"]
      197 GETUPVAL                         R16 9
      198 GETUPVAL                         R17 10
      199 GETTABLEKS                       R17 R17 K24 ["Content"]
      201 DUPTABLE                         R18 K50 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      202 MOVE                             R19 R11
      203 CALL                             R19 0 1
      204 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      206 DUPTABLE                         R19 K53 [{"InputContainer", "ResultContainer"}]
      207 MOVE                             R20 R2
      208 JUMPIFNOT                        R20 ; [+21]
      209 GETUPVAL                         R20 9
      210 GETUPVAL                         R21 15
      211 DUPTABLE                         R22 K55 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      212 MOVE                             R23 R11
      213 CALL                             R23 0 1
      214 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      216 DUPTABLE                         R23 K57 [{"Input"}]
      217 GETUPVAL                         R24 9
      218 GETUPVAL                         R25 16
      219 DUPTABLE                         R26 K58 [{"toolUse", "LayoutOrder"}]
      220 SETTABLEKS                       R2 R26 K2 ["toolUse"]
      222 MOVE                             R27 R11
      223 CALL                             R27 0 1
      224 SETTABLEKS                       R27 R26 K18 ["LayoutOrder"]
      226 CALL                             R24 2 1
      227 SETTABLEKS                       R24 R23 K56 ["Input"]
      229 CALL                             R20 3 1
      230 SETTABLEKS                       R20 R19 K51 ["InputContainer"]
      232 MOVE                             R20 R4
      233 JUMPIFNOT                        R20 ; [+21]
      234 GETUPVAL                         R20 9
      235 GETUPVAL                         R21 15
      236 DUPTABLE                         R22 K55 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      237 MOVE                             R23 R11
      238 CALL                             R23 0 1
      239 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      241 DUPTABLE                         R23 K60 [{"Result"}]
      242 GETUPVAL                         R24 9
      243 GETUPVAL                         R25 17
      244 DUPTABLE                         R26 K61 [{"toolResult", "LayoutOrder"}]
      245 SETTABLEKS                       R4 R26 K4 ["toolResult"]
      247 MOVE                             R27 R11
      248 CALL                             R27 0 1
      249 SETTABLEKS                       R27 R26 K18 ["LayoutOrder"]
      251 CALL                             R24 2 1
      252 SETTABLEKS                       R24 R23 K59 ["Result"]
      254 CALL                             R20 3 1
      255 SETTABLEKS                       R20 R19 K52 ["ResultContainer"]
      257 CALL                             R16 3 1
      258 SETTABLEKS                       R16 R15 K24 ["Content"]
      260 CALL                             R12 3 -1
      261 RETURN                           R12 -1

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
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["GenericToolContent"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K14 ["ShimmerGradient"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Util"]
       60 GETTABLEKS                       R9 R9 K16 ["TestIds"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Resources"]
       67 GETTABLEKS                       R10 R10 K18 ["Localization"]
       69 GETTABLEKS                       R10 R10 K19 ["Translator"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K20 ["Types"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K15 ["Util"]
       81 GETTABLEKS                       R12 R12 K21 ["WidgetUtils"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K22 ["FlagUtils"]
       88 GETTABLEKS                       R13 R13 K23 ["getIsAssistantUseRemoteService"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R12 R12 K24 ["get"]
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K25 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K26 ["useToolDisplayName"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R2 K27 ["ToolNaming"]
      102 GETTABLEKS                       R15 R4 K28 ["ToolInputContent"]
      104 GETTABLEKS                       R16 R4 K29 ["ToolResultContent"]
      106 GETTABLEKS                       R17 R3 K30 ["Icon"]
      108 GETTABLEKS                       R18 R11 K31 ["ToolStatus"]
      110 GETTABLEKS                       R19 R3 K32 ["View"]
      112 GETTABLEKS                       R20 R3 K33 ["Text"]
      114 GETTABLEKS                       R21 R5 K34 ["createElement"]
      116 GETTABLEKS                       R22 R6 K35 ["createNextOrder"]
      118 DUPCLOSURE                       R23 K36 [PROTO_1]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R22
      128 CAPTURE                          VAL R21
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R16
      137 DUPTABLE                         R24 K40 [{["Type"] = "GenericTool", ["ContentWidget"]}]
      138 GETTABLEKS                       R25 R5 K41 ["memo"]
      140 MOVE                             R26 R23
      141 CALL                             R25 1 1
      142 SETTABLEKS                       R25 R24 K39 ["ContentWidget"]
      144 RETURN                           R24 1
