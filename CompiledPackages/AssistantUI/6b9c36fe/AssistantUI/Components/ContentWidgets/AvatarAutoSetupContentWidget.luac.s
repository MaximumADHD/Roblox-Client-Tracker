PROTO_0:
        0 DUPTABLE                         R0 K5 [{"Canceled", "Completed", "Failed", "InProgress", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["AvatarAutoSetup"]
        3 LOADK                            R4 K0 ["Canceled"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Canceled"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["AvatarAutoSetup"]
       11 LOADK                            R4 K1 ["Completed"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Completed"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K6 ["AvatarAutoSetup"]
       19 LOADK                            R4 K2 ["Failed"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Failed"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K6 ["AvatarAutoSetup"]
       27 LOADK                            R4 K3 ["InProgress"]
       28 NAMECALL                         R1 R1 K7 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["InProgress"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K8 ["ToolConfirmation"]
       35 LOADK                            R4 K9 ["ToolCallRejected"]
       36 DUPTABLE                         R5 K11 [{"toolName"}]
       37 GETUPVAL                         R6 1
       38 SETTABLEKS                       R6 R5 K10 ["toolName"]
       40 NAMECALL                         R1 R1 K7 ["getText"]
       42 CALL                             R1 4 1
       43 SETTABLEKS                       R1 R0 K4 ["ToolRejected"]
       45 RETURN                           R0 1

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
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R6 0 2
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K6 ["locale"]
       27 MOVE                             R8 R2
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K7 ["deriveToolStatus"]
       34 GETTABLEKS                       R6 R0 K1 ["toolUse"]
       36 MOVE                             R7 R1
       37 CALL                             R5 2 1
       38 LOADB                            R6 1
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K8 ["Preparing"]
       42 JUMPIFEQ                         R5 R7 ; [+8]
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R7 R7 K9 ["Running"]
       47 JUMPIFEQ                         R5 R7 ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 JUMPIFNOT                        R6 ; [+3]
       54 GETTABLEKS                       R7 R4 K10 ["InProgress"]
       56 JUMP                             ; [+50]
       57 GETUPVAL                         R9 3
       58 GETTABLEKS                       R9 R9 K11 ["Rejected"]
       60 JUMPIFNOTEQ                      R5 R9 ; [+4]
       62 GETTABLEKS                       R7 R4 K12 ["ToolRejected"]
       64 JUMP                             ; [+42]
       65 JUMPIFEQKNIL                     R3 ; [+8]
       67 GETTABLEKS                       R9 R3 K13 ["canceled"]
       69 JUMPIFNOTEQKB                    R9 TRUE ; [+4]
       71 GETTABLEKS                       R7 R4 K14 ["Canceled"]
       73 JUMP                             ; [+33]
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R9 R9 K15 ["Failed"]
       77 JUMPIFNOTEQ                      R5 R9 ; [+27]
       79 GETTABLEKS                       R7 R4 K15 ["Failed"]
       81 JUMPIFNOTEQKNIL                  R1 ; [+2]
       83 LOADB                            R10 0 +1
       84 LOADB                            R10 1
       85 FASTCALL2K                       ASSERT R10 K16 ; [+4]
       87 LOADK                            R11 K16 ["a failed tool status implies a tool result"]
       88 GETIMPORT                        R9 K18 [assert]
       90 CALL                             R9 2 0
       91 GETTABLEKS                       R10 R1 K19 ["content"]
       93 GETTABLEN                        R9 R10 1
       94 JUMPIFEQKNIL                     R9 ; [+8]
       96 GETTABLEKS                       R10 R9 K20 ["type"]
       98 JUMPIFNOTEQKS                    R10 K21 ["text"] ; [+4]
      100 GETTABLEKS                       R8 R9 K21 ["text"]
      102 JUMP                             ; [+4]
      103 LOADNIL                          R8
      104 JUMP                             ; [+2]
      105 GETTABLEKS                       R7 R4 K22 ["Completed"]
      107 GETUPVAL                         R9 4
      108 CALL                             R9 0 1
      109 GETUPVAL                         R10 5
      110 GETUPVAL                         R11 6
      111 GETTABLEKS                       R11 R11 K23 ["Root"]
      113 DUPTABLE                         R12 K28 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      114 GETTABLEKS                       R13 R0 K24 ["LayoutOrder"]
      116 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
      118 GETTABLEKS                       R14 R0 K25 ["expanded"]
      120 JUMPIFEQKNIL                     R14 ; [+4]
      122 GETTABLEKS                       R13 R0 K25 ["expanded"]
      124 JUMP                             ; [+4]
      125 JUMPIFNOTEQKNIL                  R8 ; [+2]
      127 LOADB                            R13 0 +1
      128 LOADB                            R13 1
      129 SETTABLEKS                       R13 R12 K25 ["expanded"]
      131 GETTABLEKS                       R13 R0 K26 ["contentId"]
      133 SETTABLEKS                       R13 R12 K26 ["contentId"]
      135 GETTABLEKS                       R13 R0 K27 ["editThisContent"]
      137 SETTABLEKS                       R13 R12 K27 ["editThisContent"]
      139 DUPTABLE                         R13 K31 [{"Header", "Content"}]
      140 GETUPVAL                         R14 5
      141 GETUPVAL                         R15 6
      142 GETTABLEKS                       R15 R15 K29 ["Header"]
      144 DUPTABLE                         R16 K34 [{"IsDisabled", "LayoutOrder", "testId"}]
      145 JUMPIFEQKNIL                     R8 ; [+2]
      147 LOADB                            R17 0 +1
      148 LOADB                            R17 1
      149 SETTABLEKS                       R17 R16 K32 ["IsDisabled"]
      151 MOVE                             R17 R9
      152 CALL                             R17 0 1
      153 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      155 GETUPVAL                         R17 7
      156 GETTABLEKS                       R17 R17 K35 ["AvatarAutoSetup"]
      158 GETTABLEKS                       R17 R17 K36 ["Expand"]
      160 SETTABLEKS                       R17 R16 K33 ["testId"]
      162 DUPTABLE                         R17 K38 [{"Text"}]
      163 GETUPVAL                         R18 5
      164 GETUPVAL                         R19 8
      165 DUPTABLE                         R20 K41 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"]}]
      166 SETTABLEKS                       R7 R20 K37 ["Text"]
      168 DUPTABLE                         R21 K43 [{"Shimmer"}]
      169 JUMPIFNOT                        R6 ; [+4]
      170 GETUPVAL                         R22 5
      171 GETUPVAL                         R23 9
      172 CALL                             R22 1 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R22
      175 SETTABLEKS                       R22 R21 K42 ["Shimmer"]
      177 CALL                             R18 3 1
      178 SETTABLEKS                       R18 R17 K37 ["Text"]
      180 CALL                             R14 3 1
      181 SETTABLEKS                       R14 R13 K29 ["Header"]
      183 JUMPIFEQKNIL                     R8 ; [+28]
      185 GETUPVAL                         R14 5
      186 GETUPVAL                         R15 6
      187 GETTABLEKS                       R15 R15 K30 ["Content"]
      189 DUPTABLE                         R16 K45 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      190 MOVE                             R17 R9
      191 CALL                             R17 0 1
      192 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      194 DUPTABLE                         R17 K47 [{"FailureReason"}]
      195 GETUPVAL                         R18 5
      196 GETUPVAL                         R19 8
      197 DUPTABLE                         R20 K49 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["testId"]}]
      198 SETTABLEKS                       R8 R20 K37 ["Text"]
      200 GETUPVAL                         R21 7
      201 GETTABLEKS                       R21 R21 K35 ["AvatarAutoSetup"]
      203 GETTABLEKS                       R21 R21 K46 ["FailureReason"]
      205 SETTABLEKS                       R21 R20 K33 ["testId"]
      207 CALL                             R18 2 1
      208 SETTABLEKS                       R18 R17 K46 ["FailureReason"]
      210 CALL                             R14 3 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R14
      213 SETTABLEKS                       R14 R13 K30 ["Content"]
      215 CALL                             R10 3 -1
      216 RETURN                           R10 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["ShimmerGradient"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Util"]
       46 GETTABLEKS                       R7 R7 K14 ["TestIds"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Resources"]
       53 GETTABLEKS                       R8 R8 K16 ["Localization"]
       55 GETTABLEKS                       R8 R8 K17 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K13 ["Util"]
       67 GETTABLEKS                       R10 R10 K19 ["WidgetUtils"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R2 K20 ["Text"]
       72 GETTABLEKS                       R11 R9 K21 ["ToolStatus"]
       74 GETTABLEKS                       R12 R4 K22 ["createNextOrder"]
       76 GETTABLEKS                       R13 R3 K23 ["createElement"]
       78 DUPCLOSURE                       R14 K24 [PROTO_1]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R5
       89 DUPTABLE                         R15 K28 [{["Type"] = "AvatarAutoSetup", ["ContentWidget"]}]
       90 GETTABLEKS                       R16 R3 K29 ["memo"]
       92 MOVE                             R17 R14
       93 CALL                             R16 1 1
       94 SETTABLEKS                       R16 R15 K27 ["ContentWidget"]
       96 RETURN                           R15 1
