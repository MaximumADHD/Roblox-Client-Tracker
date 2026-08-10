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

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"Generating", "Calling", "Called"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["ToolContent"]
        3 LOADK                            R4 K0 ["Generating"]
        4 DUPTABLE                         R5 K6 [{"tool"}]
        5 GETUPVAL                         R6 1
        6 SETTABLEKS                       R6 R5 K5 ["tool"]
        8 NAMECALL                         R1 R1 K7 ["getText"]
       10 CALL                             R1 4 1
       11 SETTABLEKS                       R1 R0 K0 ["Generating"]
       13 GETUPVAL                         R1 0
       14 LOADK                            R3 K4 ["ToolContent"]
       15 LOADK                            R4 K1 ["Calling"]
       16 DUPTABLE                         R5 K6 [{"tool"}]
       17 GETUPVAL                         R6 1
       18 SETTABLEKS                       R6 R5 K5 ["tool"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 4 1
       23 SETTABLEKS                       R1 R0 K1 ["Calling"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K4 ["ToolContent"]
       27 LOADK                            R4 K2 ["Called"]
       28 DUPTABLE                         R5 K6 [{"tool"}]
       29 GETUPVAL                         R6 1
       30 SETTABLEKS                       R6 R5 K5 ["tool"]
       32 NAMECALL                         R1 R1 K7 ["getText"]
       34 CALL                             R1 4 1
       35 SETTABLEKS                       R1 R0 K2 ["Called"]
       37 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R0 K2 ["toolIdentifier"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R4 R0 K3 ["toolUse"]
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETTABLEKS                       R3 R0 K3 ["toolUse"]
       15 GETTABLEKS                       R3 R3 K4 ["name"]
       17 JUMP                             ; [+2]
       18 GETTABLEKS                       R3 R0 K2 ["toolIdentifier"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K5 ["FFlagAssistantUseRemoteService"]
       23 JUMPIFNOT                        R4 ; [+8]
       24 LOADB                            R4 0
       25 JUMPIFEQKNIL                     R3 ; [+6]
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K6 ["isCloudTool"]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K7 ["useMemo"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R2
       38 NEWTABLE                         R7 0 1
       40 MOVE                             R8 R2
       41 SETLIST                          R7 R8 1 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 6
       45 CALL                             R6 0 1
       46 GETUPVAL                         R7 7
       47 GETUPVAL                         R8 8
       48 GETTABLEKS                       R8 R8 K8 ["Root"]
       50 DUPTABLE                         R9 K13 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       51 GETTABLEKS                       R10 R0 K9 ["LayoutOrder"]
       53 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       55 GETTABLEKS                       R10 R0 K10 ["expanded"]
       57 SETTABLEKS                       R10 R9 K10 ["expanded"]
       59 GETTABLEKS                       R10 R0 K11 ["contentId"]
       61 SETTABLEKS                       R10 R9 K11 ["contentId"]
       63 GETTABLEKS                       R10 R0 K12 ["editThisContent"]
       65 SETTABLEKS                       R10 R9 K12 ["editThisContent"]
       67 DUPTABLE                         R10 K16 [{"Header", "Content"}]
       68 GETUPVAL                         R11 7
       69 GETUPVAL                         R12 8
       70 GETTABLEKS                       R12 R12 K14 ["Header"]
       72 DUPTABLE                         R13 K17 [{"LayoutOrder"}]
       73 MOVE                             R14 R6
       74 CALL                             R14 0 1
       75 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       77 DUPTABLE                         R14 K20 [{"CloudIcon", "Text"}]
       78 MOVE                             R15 R4
       79 JUMPIFNOT                        R15 ; [+41]
       80 GETUPVAL                         R15 7
       81 GETUPVAL                         R16 9
       82 DUPTABLE                         R17 K24 [{"name", "size", "style", "LayoutOrder", "testId"}]
       83 GETUPVAL                         R18 0
       84 GETTABLEKS                       R18 R18 K25 ["Enums"]
       86 GETTABLEKS                       R18 R18 K26 ["IconName"]
       88 GETTABLEKS                       R18 R18 K27 ["Cloud"]
       90 SETTABLEKS                       R18 R17 K4 ["name"]
       92 GETUPVAL                         R18 0
       93 GETTABLEKS                       R18 R18 K25 ["Enums"]
       95 GETTABLEKS                       R18 R18 K28 ["IconSize"]
       97 GETTABLEKS                       R18 R18 K29 ["XSmall"]
       99 SETTABLEKS                       R18 R17 K21 ["size"]
      101 GETTABLEKS                       R18 R1 K30 ["Color"]
      103 GETTABLEKS                       R18 R18 K15 ["Content"]
      105 GETTABLEKS                       R18 R18 K31 ["Muted"]
      107 SETTABLEKS                       R18 R17 K22 ["style"]
      109 MOVE                             R18 R6
      110 CALL                             R18 0 1
      111 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      113 GETUPVAL                         R18 10
      114 GETTABLEKS                       R18 R18 K32 ["GenericTool"]
      116 GETTABLEKS                       R18 R18 K18 ["CloudIcon"]
      118 SETTABLEKS                       R18 R17 K23 ["testId"]
      120 CALL                             R15 2 1
      121 SETTABLEKS                       R15 R14 K18 ["CloudIcon"]
      123 GETUPVAL                         R15 7
      124 GETUPVAL                         R16 11
      125 DUPTABLE                         R17 K35 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      126 GETTABLEKS                       R19 R0 K36 ["toolResult"]
      128 JUMPIFNOT                        R19 ; [+3]
      129 GETTABLEKS                       R18 R5 K37 ["Called"]
      131 JUMP                             ; [+8]
      132 GETTABLEKS                       R19 R0 K3 ["toolUse"]
      134 JUMPIFNOT                        R19 ; [+3]
      135 GETTABLEKS                       R18 R5 K38 ["Calling"]
      137 JUMP                             ; [+2]
      138 GETTABLEKS                       R18 R5 K39 ["Generating"]
      140 SETTABLEKS                       R18 R17 K19 ["Text"]
      142 MOVE                             R18 R6
      143 CALL                             R18 0 1
      144 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      146 DUPTABLE                         R18 K41 [{"Shimmer"}]
      147 GETTABLEKS                       R20 R0 K36 ["toolResult"]
      149 JUMPIF                           R20 ; [+4]
      150 GETUPVAL                         R19 7
      151 GETUPVAL                         R20 12
      152 CALL                             R19 1 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R19
      155 SETTABLEKS                       R19 R18 K40 ["Shimmer"]
      157 CALL                             R15 3 1
      158 SETTABLEKS                       R15 R14 K19 ["Text"]
      160 CALL                             R11 3 1
      161 SETTABLEKS                       R11 R10 K14 ["Header"]
      163 GETUPVAL                         R11 7
      164 GETUPVAL                         R12 8
      165 GETTABLEKS                       R12 R12 K15 ["Content"]
      167 DUPTABLE                         R13 K45 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      168 MOVE                             R14 R6
      169 CALL                             R14 0 1
      170 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      172 DUPTABLE                         R14 K48 [{"InputContainer", "ResultContainer"}]
      173 GETTABLEKS                       R15 R0 K3 ["toolUse"]
      175 JUMPIFNOT                        R15 ; [+23]
      176 GETUPVAL                         R15 7
      177 GETUPVAL                         R16 13
      178 DUPTABLE                         R17 K50 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      179 MOVE                             R18 R6
      180 CALL                             R18 0 1
      181 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      183 DUPTABLE                         R18 K52 [{"Input"}]
      184 GETUPVAL                         R19 7
      185 GETUPVAL                         R20 14
      186 DUPTABLE                         R21 K53 [{"toolUse", "LayoutOrder"}]
      187 GETTABLEKS                       R22 R0 K3 ["toolUse"]
      189 SETTABLEKS                       R22 R21 K3 ["toolUse"]
      191 MOVE                             R22 R6
      192 CALL                             R22 0 1
      193 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      195 CALL                             R19 2 1
      196 SETTABLEKS                       R19 R18 K51 ["Input"]
      198 CALL                             R15 3 1
      199 SETTABLEKS                       R15 R14 K46 ["InputContainer"]
      201 GETTABLEKS                       R15 R0 K36 ["toolResult"]
      203 JUMPIFNOT                        R15 ; [+23]
      204 GETUPVAL                         R15 7
      205 GETUPVAL                         R16 13
      206 DUPTABLE                         R17 K50 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      207 MOVE                             R18 R6
      208 CALL                             R18 0 1
      209 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      211 DUPTABLE                         R18 K55 [{"Result"}]
      212 GETUPVAL                         R19 7
      213 GETUPVAL                         R20 15
      214 DUPTABLE                         R21 K56 [{"toolResult", "LayoutOrder"}]
      215 GETTABLEKS                       R22 R0 K36 ["toolResult"]
      217 SETTABLEKS                       R22 R21 K36 ["toolResult"]
      219 MOVE                             R22 R6
      220 CALL                             R22 0 1
      221 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      223 CALL                             R19 2 1
      224 SETTABLEKS                       R19 R18 K54 ["Result"]
      226 CALL                             R15 3 1
      227 SETTABLEKS                       R15 R14 K47 ["ResultContainer"]
      229 CALL                             R11 3 1
      230 SETTABLEKS                       R11 R10 K15 ["Content"]
      232 CALL                             R7 3 -1
      233 RETURN                           R7 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 2
        9 MOVE                             R2 R0
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"toolIdentifier"}]
        1 GETTABLEKS                       R2 R0 K0 ["toolIdentifier"]
        3 SETTABLEKS                       R2 R1 K0 ["toolIdentifier"]
        5 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAcpHistoryCompatibility"]
        3 JUMPIF                           R2 ; [+6]
        4 DUPTABLE                         R2 K6 [{["type"] = "GenericTool", ["toolIdentifier"], ["expanded"] = False}]
        5 GETTABLEKS                       R3 R0 K3 ["toolIdentifier"]
        7 SETTABLEKS                       R3 R2 K3 ["toolIdentifier"]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R1 K7 ["toolUseContent"]
       12 DUPTABLE                         R3 K6 [{["type"] = "GenericTool", ["toolIdentifier"], ["expanded"] = False}]
       13 GETTABLEKS                       R4 R0 K3 ["toolIdentifier"]
       15 JUMPIF                           R4 ; [+4]
       16 MOVE                             R4 R2
       17 JUMPIFNOT                        R4 ; [+2]
       18 GETTABLEKS                       R4 R2 K8 ["name"]
       20 SETTABLEKS                       R4 R3 K3 ["toolIdentifier"]
       22 RETURN                           R3 1

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
       56 GETTABLEKS                       R9 R0 K15 ["Util"]
       58 GETTABLEKS                       R9 R9 K16 ["Serializer"]
       60 GETTABLEKS                       R9 R9 K17 ["SerializerTypes"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Components"]
       67 GETTABLEKS                       R10 R10 K18 ["ShimmerGradient"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K15 ["Util"]
       74 GETTABLEKS                       R11 R11 K19 ["TestIds"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K20 ["Resources"]
       81 GETTABLEKS                       R12 R12 K21 ["Localization"]
       83 GETTABLEKS                       R12 R12 K22 ["Translator"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Types"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K15 ["Util"]
       95 GETTABLEKS                       R14 R14 K24 ["WidgetUtils"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      102 GETTABLEKS                       R15 R15 K26 ["useToolDisplayName"]
      104 CALL                             R14 1 1
      105 GETTABLEKS                       R15 R2 K27 ["ToolNaming"]
      107 GETTABLEKS                       R16 R5 K28 ["ToolInputContent"]
      109 GETTABLEKS                       R17 R5 K29 ["ToolResultContent"]
      111 GETTABLEKS                       R18 R4 K30 ["Icon"]
      113 GETTABLEKS                       R19 R13 K31 ["ToolStatus"]
      115 GETTABLEKS                       R20 R4 K32 ["View"]
      117 GETTABLEKS                       R21 R4 K33 ["Text"]
      119 GETTABLEKS                       R22 R6 K34 ["createElement"]
      121 GETTABLEKS                       R23 R7 K35 ["createNextOrder"]
      123 DUPCLOSURE                       R24 K36 [PROTO_1]
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R23
      133 CAPTURE                          VAL R22
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R17
      142 DUPCLOSURE                       R25 K37 [PROTO_3]
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R23
      150 CAPTURE                          VAL R22
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R17
      159 DUPCLOSURE                       R26 K38 [PROTO_4]
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R25
      163 DUPTABLE                         R27 K41 [{"toMeta", "fromMeta"}]
      164 DUPCLOSURE                       R28 K42 [PROTO_5]
      165 SETTABLEKS                       R28 R27 K39 ["toMeta"]
      167 DUPCLOSURE                       R28 K43 [PROTO_6]
      168 CAPTURE                          VAL R3
      169 SETTABLEKS                       R28 R27 K40 ["fromMeta"]
      171 DUPTABLE                         R28 K48 [{["Type"] = "GenericTool", ["ContentWidget"], ["Serialization"]}]
      172 GETTABLEKS                       R29 R6 K49 ["memo"]
      174 MOVE                             R30 R26
      175 CALL                             R29 1 1
      176 SETTABLEKS                       R29 R28 K46 ["ContentWidget"]
      178 GETTABLEKS                       R30 R3 K50 ["FFlagAssistantSplitToolsAndWidgets"]
      180 JUMPIFNOT                        R30 ; [+2]
      181 LOADNIL                          R29
      182 JUMP                             ; [+1]
      183 MOVE                             R29 R27
      184 SETTABLEKS                       R29 R28 K47 ["Serialization"]
      186 RETURN                           R28 1
