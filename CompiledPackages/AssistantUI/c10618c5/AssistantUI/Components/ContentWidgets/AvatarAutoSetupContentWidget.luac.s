PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["STAGES"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 1
        9 LOADK                            R8 K1 ["AvatarAutoSetupStage"]
       10 MOVE                             R9 R5
       11 NAMECALL                         R6 R6 K2 ["getText"]
       13 CALL                             R6 3 1
       14 SETTABLE                         R6 R0 R5
       15 FORGLOOP                         R1 2 ; [-8]
       17 DUPTABLE                         R1 K10 [{"Canceled", "Completed", "Failed", "InProgress", "ToolRejected", "Stages", "UnknownStage"}]
       18 GETUPVAL                         R2 1
       19 LOADK                            R4 K11 ["AvatarAutoSetup"]
       20 LOADK                            R5 K3 ["Canceled"]
       21 NAMECALL                         R2 R2 K2 ["getText"]
       23 CALL                             R2 3 1
       24 SETTABLEKS                       R2 R1 K3 ["Canceled"]
       26 GETUPVAL                         R2 1
       27 LOADK                            R4 K11 ["AvatarAutoSetup"]
       28 LOADK                            R5 K4 ["Completed"]
       29 NAMECALL                         R2 R2 K2 ["getText"]
       31 CALL                             R2 3 1
       32 SETTABLEKS                       R2 R1 K4 ["Completed"]
       34 GETUPVAL                         R2 1
       35 LOADK                            R4 K11 ["AvatarAutoSetup"]
       36 LOADK                            R5 K5 ["Failed"]
       37 NAMECALL                         R2 R2 K2 ["getText"]
       39 CALL                             R2 3 1
       40 SETTABLEKS                       R2 R1 K5 ["Failed"]
       42 GETUPVAL                         R2 1
       43 LOADK                            R4 K11 ["AvatarAutoSetup"]
       44 LOADK                            R5 K6 ["InProgress"]
       45 NAMECALL                         R2 R2 K2 ["getText"]
       47 CALL                             R2 3 1
       48 SETTABLEKS                       R2 R1 K6 ["InProgress"]
       50 GETUPVAL                         R2 1
       51 LOADK                            R4 K12 ["ToolConfirmation"]
       52 LOADK                            R5 K13 ["ToolCallRejected"]
       53 DUPTABLE                         R6 K15 [{"toolName"}]
       54 GETUPVAL                         R7 2
       55 SETTABLEKS                       R7 R6 K14 ["toolName"]
       57 NAMECALL                         R2 R2 K2 ["getText"]
       59 CALL                             R2 4 1
       60 SETTABLEKS                       R2 R1 K7 ["ToolRejected"]
       62 SETTABLEKS                       R0 R1 K8 ["Stages"]
       64 GETUPVAL                         R2 1
       65 LOADK                            R4 K1 ["AvatarAutoSetupStage"]
       66 LOADK                            R5 K16 ["Unknown"]
       67 NAMECALL                         R2 R2 K2 ["getText"]
       69 CALL                             R2 3 1
       70 SETTABLEKS                       R2 R1 K9 ["UnknownStage"]
       72 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 GETTABLEKS                       R3 R0 K1 ["toolUse"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETTABLEKS                       R2 R0 K1 ["toolUse"]
        7 GETTABLEKS                       R2 R2 K2 ["name"]
        9 JUMPIF                           R2 ; [+1]
       10 LOADK                            R2 K3 [""]
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETTABLEKS                       R3 R1 K4 ["structuredContent"]
       14 JUMPIF                           R3 ; [+1]
       15 LOADNIL                          R3
       16 GETTABLEKS                       R5 R0 K1 ["toolUse"]
       18 JUMPIFNOT                        R5 ; [+5]
       19 GETTABLEKS                       R4 R0 K1 ["toolUse"]
       21 GETTABLEKS                       R4 R4 K5 ["id"]
       23 JUMPIF                           R4 ; [+1]
       24 LOADNIL                          R4
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K6 ["useChannel"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K7 ["Scope"]
       31 MOVE                             R7 R4
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K8 ["Field"]
       35 GETTABLEKS                       R8 R8 K9 ["Stage"]
       37 CALL                             R5 3 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K6 ["useChannel"]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K7 ["Scope"]
       44 MOVE                             R8 R4
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K8 ["Field"]
       48 GETTABLEKS                       R9 R9 K10 ["Percentage"]
       50 CALL                             R6 3 1
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K11 ["useMemo"]
       54 NEWCLOSURE                       R8 P0
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R2
       58 NEWTABLE                         R9 0 2
       60 GETUPVAL                         R10 3
       61 GETTABLEKS                       R10 R10 K12 ["locale"]
       63 MOVE                             R11 R2
       64 SETLIST                          R9 R10 2 [1]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R8 4
       68 GETTABLEKS                       R8 R8 K13 ["deriveToolStatus"]
       70 GETTABLEKS                       R9 R0 K1 ["toolUse"]
       72 MOVE                             R10 R1
       73 CALL                             R8 2 1
       74 LOADB                            R9 1
       75 GETUPVAL                         R10 5
       76 GETTABLEKS                       R10 R10 K14 ["Preparing"]
       78 JUMPIFEQ                         R8 R10 ; [+8]
       80 GETUPVAL                         R10 5
       81 GETTABLEKS                       R10 R10 K15 ["Running"]
       83 JUMPIFEQ                         R8 R10 ; [+2]
       85 LOADB                            R9 0 +1
       86 LOADB                            R9 1
       87 JUMPIFNOT                        R9 ; [+16]
       88 FASTCALL1                        TYPEOF R5 ; [+3]
       89 MOVE                             R12 R5
       90 GETIMPORT                        R11 K17 [typeof]
       92 CALL                             R11 1 1
       93 JUMPIFNOTEQKS                    R11 K18 ["string"] ; [+10]
       95 JUMPIFEQKS                       R5 K3 [""] ; [+8]
       97 GETTABLEKS                       R11 R7 K19 ["Stages"]
       99 GETTABLE                         R10 R11 R5
      100 JUMPIF                           R10 ; [+4]
      101 GETTABLEKS                       R10 R7 K20 ["UnknownStage"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R10
      105 JUMPIFNOT                        R9 ; [+9]
      106 FASTCALL1                        TYPEOF R6 ; [+3]
      107 MOVE                             R13 R6
      108 GETIMPORT                        R12 K17 [typeof]
      110 CALL                             R12 1 1
      111 JUMPIFNOTEQKS                    R12 K21 ["number"] ; [+3]
      113 MOVE                             R11 R6
      114 JUMP                             ; [+1]
      115 LOADNIL                          R11
      116 LOADNIL                          R12
      117 LOADNIL                          R13
      118 JUMPIFNOT                        R9 ; [+6]
      119 MOVE                             R14 R10
      120 JUMPIF                           R14 ; [+2]
      121 GETTABLEKS                       R14 R7 K22 ["InProgress"]
      123 MOVE                             R12 R14
      124 JUMP                             ; [+50]
      125 GETUPVAL                         R14 5
      126 GETTABLEKS                       R14 R14 K23 ["Rejected"]
      128 JUMPIFNOTEQ                      R8 R14 ; [+4]
      130 GETTABLEKS                       R12 R7 K24 ["ToolRejected"]
      132 JUMP                             ; [+42]
      133 JUMPIFEQKNIL                     R3 ; [+8]
      135 GETTABLEKS                       R14 R3 K25 ["canceled"]
      137 JUMPIFNOTEQKB                    R14 TRUE ; [+4]
      139 GETTABLEKS                       R12 R7 K26 ["Canceled"]
      141 JUMP                             ; [+33]
      142 GETUPVAL                         R14 5
      143 GETTABLEKS                       R14 R14 K27 ["Failed"]
      145 JUMPIFNOTEQ                      R8 R14 ; [+27]
      147 GETTABLEKS                       R12 R7 K27 ["Failed"]
      149 JUMPIFNOTEQKNIL                  R1 ; [+2]
      151 LOADB                            R15 0 +1
      152 LOADB                            R15 1
      153 FASTCALL2K                       ASSERT R15 K28 ; [+4]
      155 LOADK                            R16 K28 ["a failed tool status implies a tool result"]
      156 GETIMPORT                        R14 K30 [assert]
      158 CALL                             R14 2 0
      159 GETTABLEKS                       R15 R1 K31 ["content"]
      161 GETTABLEN                        R14 R15 1
      162 JUMPIFEQKNIL                     R14 ; [+8]
      164 GETTABLEKS                       R15 R14 K32 ["type"]
      166 JUMPIFNOTEQKS                    R15 K33 ["text"] ; [+4]
      168 GETTABLEKS                       R13 R14 K33 ["text"]
      170 JUMP                             ; [+4]
      171 LOADNIL                          R13
      172 JUMP                             ; [+2]
      173 GETTABLEKS                       R12 R7 K34 ["Completed"]
      175 GETUPVAL                         R14 6
      176 CALL                             R14 0 1
      177 GETUPVAL                         R15 7
      178 GETUPVAL                         R16 8
      179 GETTABLEKS                       R16 R16 K35 ["Root"]
      181 DUPTABLE                         R17 K40 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      182 GETTABLEKS                       R18 R0 K36 ["LayoutOrder"]
      184 SETTABLEKS                       R18 R17 K36 ["LayoutOrder"]
      186 GETTABLEKS                       R19 R0 K37 ["expanded"]
      188 JUMPIFEQKNIL                     R19 ; [+4]
      190 GETTABLEKS                       R18 R0 K37 ["expanded"]
      192 JUMP                             ; [+4]
      193 JUMPIFNOTEQKNIL                  R13 ; [+2]
      195 LOADB                            R18 0 +1
      196 LOADB                            R18 1
      197 SETTABLEKS                       R18 R17 K37 ["expanded"]
      199 GETTABLEKS                       R18 R0 K38 ["contentId"]
      201 SETTABLEKS                       R18 R17 K38 ["contentId"]
      203 GETTABLEKS                       R18 R0 K39 ["editThisContent"]
      205 SETTABLEKS                       R18 R17 K39 ["editThisContent"]
      207 DUPTABLE                         R18 K44 [{"Header", "ProgressBar", "Content"}]
      208 GETUPVAL                         R19 7
      209 GETUPVAL                         R20 8
      210 GETTABLEKS                       R20 R20 K41 ["Header"]
      212 DUPTABLE                         R21 K47 [{"IsDisabled", "LayoutOrder", "testId"}]
      213 JUMPIFEQKNIL                     R13 ; [+2]
      215 LOADB                            R22 0 +1
      216 LOADB                            R22 1
      217 SETTABLEKS                       R22 R21 K45 ["IsDisabled"]
      219 MOVE                             R22 R14
      220 CALL                             R22 0 1
      221 SETTABLEKS                       R22 R21 K36 ["LayoutOrder"]
      223 GETUPVAL                         R22 9
      224 GETTABLEKS                       R22 R22 K48 ["AvatarAutoSetup"]
      226 GETTABLEKS                       R22 R22 K49 ["Expand"]
      228 SETTABLEKS                       R22 R21 K46 ["testId"]
      230 DUPTABLE                         R22 K51 [{"Text"}]
      231 GETUPVAL                         R23 7
      232 GETUPVAL                         R24 10
      233 DUPTABLE                         R25 K54 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"]}]
      234 SETTABLEKS                       R12 R25 K50 ["Text"]
      236 DUPTABLE                         R26 K56 [{"Shimmer"}]
      237 JUMPIFNOT                        R9 ; [+4]
      238 GETUPVAL                         R27 7
      239 GETUPVAL                         R28 11
      240 CALL                             R27 1 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R27
      243 SETTABLEKS                       R27 R26 K55 ["Shimmer"]
      245 CALL                             R23 3 1
      246 SETTABLEKS                       R23 R22 K50 ["Text"]
      248 CALL                             R19 3 1
      249 SETTABLEKS                       R19 R18 K41 ["Header"]
      251 JUMPIFEQKNIL                     R11 ; [+28]
      253 GETUPVAL                         R19 7
      254 GETUPVAL                         R20 12
      255 DUPTABLE                         R21 K59 [{"shape", "value", "LayoutOrder", "testId"}]
      256 GETUPVAL                         R22 13
      257 GETTABLEKS                       R22 R22 K60 ["Enums"]
      259 GETTABLEKS                       R22 R22 K61 ["ProgressShape"]
      261 GETTABLEKS                       R22 R22 K62 ["Bar"]
      263 SETTABLEKS                       R22 R21 K57 ["shape"]
      265 SETTABLEKS                       R11 R21 K58 ["value"]
      267 MOVE                             R22 R14
      268 CALL                             R22 0 1
      269 SETTABLEKS                       R22 R21 K36 ["LayoutOrder"]
      271 GETUPVAL                         R22 9
      272 GETTABLEKS                       R22 R22 K48 ["AvatarAutoSetup"]
      274 GETTABLEKS                       R22 R22 K42 ["ProgressBar"]
      276 SETTABLEKS                       R22 R21 K46 ["testId"]
      278 CALL                             R19 2 1
      279 JUMP                             ; [+1]
      280 LOADNIL                          R19
      281 SETTABLEKS                       R19 R18 K42 ["ProgressBar"]
      283 JUMPIFEQKNIL                     R13 ; [+28]
      285 GETUPVAL                         R19 7
      286 GETUPVAL                         R20 8
      287 GETTABLEKS                       R20 R20 K43 ["Content"]
      289 DUPTABLE                         R21 K64 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      290 MOVE                             R22 R14
      291 CALL                             R22 0 1
      292 SETTABLEKS                       R22 R21 K36 ["LayoutOrder"]
      294 DUPTABLE                         R22 K66 [{"FailureReason"}]
      295 GETUPVAL                         R23 7
      296 GETUPVAL                         R24 10
      297 DUPTABLE                         R25 K68 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["testId"]}]
      298 SETTABLEKS                       R13 R25 K50 ["Text"]
      300 GETUPVAL                         R26 9
      301 GETTABLEKS                       R26 R26 K48 ["AvatarAutoSetup"]
      303 GETTABLEKS                       R26 R26 K65 ["FailureReason"]
      305 SETTABLEKS                       R26 R25 K46 ["testId"]
      307 CALL                             R23 2 1
      308 SETTABLEKS                       R23 R22 K65 ["FailureReason"]
      310 CALL                             R19 3 1
      311 JUMP                             ; [+1]
      312 LOADNIL                          R19
      313 SETTABLEKS                       R19 R18 K43 ["Content"]
      315 CALL                             R15 3 -1
      316 RETURN                           R15 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["AvatarAutoSetup"]
       20 GETTABLEKS                       R3 R3 K10 ["AvatarAutoSetupChannel"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K12 ["Actions"]
       31 GETTABLEKS                       R4 R4 K13 ["ChannelActionsContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K14 ["Parent"]
       38 GETTABLEKS                       R5 R5 K15 ["Foundation"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K14 ["Parent"]
       45 GETTABLEKS                       R6 R6 K16 ["React"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K14 ["Parent"]
       52 GETTABLEKS                       R7 R7 K17 ["ReactUtils"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Components"]
       59 GETTABLEKS                       R8 R8 K18 ["ShimmerGradient"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K8 ["Util"]
       66 GETTABLEKS                       R9 R9 K19 ["TestIds"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K20 ["Resources"]
       73 GETTABLEKS                       R10 R10 K21 ["Localization"]
       75 GETTABLEKS                       R10 R10 K22 ["Translator"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K23 ["Types"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K8 ["Util"]
       87 GETTABLEKS                       R12 R12 K24 ["WidgetUtils"]
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R12 R4 K25 ["Progress"]
       92 GETTABLEKS                       R13 R4 K26 ["Text"]
       94 GETTABLEKS                       R14 R11 K27 ["ToolStatus"]
       96 GETTABLEKS                       R15 R6 K28 ["createNextOrder"]
       98 GETTABLEKS                       R16 R5 K29 ["createElement"]
      100 DUPCLOSURE                       R17 K30 [PROTO_1]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R4
      115 DUPTABLE                         R18 K33 [{["Type"] = "AvatarAutoSetup", ["ContentWidget"]}]
      116 GETTABLEKS                       R19 R5 K34 ["memo"]
      118 MOVE                             R20 R17
      119 CALL                             R19 1 1
      120 SETTABLEKS                       R19 R18 K32 ["ContentWidget"]
      122 RETURN                           R18 1
