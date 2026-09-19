PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantAsyncSlashCommands"]
        6 JUMPIFNOT                        R0 ; [+53]
        7 LOADB                            R0 0
        8 GETUPVAL                         R1 2
        9 JUMPIFEQKNIL                     R1 ; [+6]
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["isTerminal"]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 1
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K2 ["getJob"]
       19 GETUPVAL                         R2 0
       20 CALL                             R1 1 1
       21 JUMPIF                           R1 ; [+24]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K3 ["setJob"]
       25 GETUPVAL                         R2 0
       26 DUPTABLE                         R3 K10 [{["jobId"], ["status"], ["toolName"] = "", ["toolResult"], ["resultPersisted"]}]
       27 GETUPVAL                         R4 0
       28 SETTABLEKS                       R4 R3 K4 ["jobId"]
       30 GETUPVAL                         R4 2
       31 JUMPIF                           R4 ; [+5]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K11 ["JobStatus"]
       35 GETTABLEKS                       R4 R4 K12 ["Running"]
       37 SETTABLEKS                       R4 R3 K5 ["status"]
       39 GETUPVAL                         R4 4
       40 SETTABLEKS                       R4 R3 K8 ["toolResult"]
       42 SETTABLEKS                       R0 R3 K9 ["resultPersisted"]
       44 CALL                             R1 2 0
       45 RETURN                           R0 0
       46 JUMPIFNOT                        R0 ; [+52]
       47 GETUPVAL                         R1 3
       48 GETTABLEKS                       R1 R1 K13 ["updateJob"]
       50 GETUPVAL                         R2 0
       51 DUPTABLE                         R3 K15 [{["status"], ["toolResult"], ["resultPersisted"] = True}]
       52 GETUPVAL                         R4 2
       53 SETTABLEKS                       R4 R3 K5 ["status"]
       55 GETUPVAL                         R4 4
       56 SETTABLEKS                       R4 R3 K8 ["toolResult"]
       58 CALL                             R1 2 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R0 2
       61 JUMPIF                           R0 ; [+5]
       62 GETUPVAL                         R0 3
       63 GETTABLEKS                       R0 R0 K11 ["JobStatus"]
       65 GETTABLEKS                       R0 R0 K12 ["Running"]
       67 GETUPVAL                         R1 3
       68 GETTABLEKS                       R1 R1 K2 ["getJob"]
       70 GETUPVAL                         R2 0
       71 CALL                             R1 1 1
       72 JUMPIF                           R1 ; [+15]
       73 GETUPVAL                         R1 3
       74 GETTABLEKS                       R1 R1 K3 ["setJob"]
       76 GETUPVAL                         R2 0
       77 DUPTABLE                         R3 K16 [{["jobId"], ["status"], ["toolName"] = "", ["toolResult"]}]
       78 GETUPVAL                         R4 0
       79 SETTABLEKS                       R4 R3 K4 ["jobId"]
       81 SETTABLEKS                       R0 R3 K5 ["status"]
       83 GETUPVAL                         R4 4
       84 SETTABLEKS                       R4 R3 K8 ["toolResult"]
       86 CALL                             R1 2 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R1 3
       89 GETTABLEKS                       R1 R1 K13 ["updateJob"]
       91 GETUPVAL                         R2 0
       92 DUPTABLE                         R3 K17 [{"status", "toolResult"}]
       93 SETTABLEKS                       R0 R3 K5 ["status"]
       95 GETUPVAL                         R4 4
       96 SETTABLEKS                       R4 R3 K8 ["toolResult"]
       98 CALL                             R1 2 0
       99 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"Preparing", "Waiting"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["JobWait"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["JobWait"]
       11 LOADK                            R4 K1 ["Waiting"]
       12 DUPTABLE                         R5 K6 [{"tool"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K5 ["tool"]
       16 NAMECALL                         R1 R1 K4 ["getText"]
       18 CALL                             R1 4 1
       19 SETTABLEKS                       R1 R0 K1 ["Waiting"]
       21 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R2 K2 ["jobId"]
        9 GETTABLEKS                       R4 R0 K3 ["toolResult"]
       11 JUMPIFNOT                        R4 ; [+3]
       12 GETTABLEKS                       R5 R4 K4 ["structuredContent"]
       14 JUMPIF                           R5 ; [+1]
       15 LOADNIL                          R5
       16 JUMPIFNOT                        R5 ; [+3]
       17 GETTABLEKS                       R6 R5 K5 ["status"]
       19 JUMPIF                           R6 ; [+1]
       20 LOADNIL                          R6
       21 JUMPIFNOT                        R5 ; [+3]
       22 GETTABLEKS                       R7 R5 K6 ["jobResult"]
       24 JUMPIF                           R7 ; [+1]
       25 LOADNIL                          R7
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K7 ["useEffect"]
       29 NEWCLOSURE                       R9 P0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R6
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R7
       35 NEWTABLE                         R10 0 0
       37 CALL                             R8 2 0
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R8 R8 K8 ["getJob"]
       41 MOVE                             R9 R3
       42 CALL                             R8 1 1
       43 JUMPIFNOT                        R8 ; [+3]
       44 GETTABLEKS                       R9 R8 K9 ["toolName"]
       46 JUMPIF                           R9 ; [+1]
       47 LOADK                            R9 K10 [""]
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K11 ["useMemo"]
       51 NEWCLOSURE                       R11 P1
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R9
       54 NEWTABLE                         R12 0 2
       56 GETUPVAL                         R13 4
       57 GETTABLEKS                       R13 R13 K12 ["locale"]
       59 MOVE                             R14 R9
       60 SETLIST                          R12 R13 2 [1]
       62 CALL                             R10 2 1
       63 GETUPVAL                         R11 5
       64 GETTABLEKS                       R11 R11 K13 ["deriveToolStatus"]
       66 MOVE                             R12 R1
       67 MOVE                             R13 R4
       68 CALL                             R11 2 1
       69 LOADB                            R12 1
       70 GETUPVAL                         R13 6
       71 GETTABLEKS                       R13 R13 K14 ["Preparing"]
       73 JUMPIFEQ                         R11 R13 ; [+8]
       75 GETUPVAL                         R13 6
       76 GETTABLEKS                       R13 R13 K15 ["Running"]
       78 JUMPIFEQ                         R11 R13 ; [+2]
       80 LOADB                            R12 0 +1
       81 LOADB                            R12 1
       82 JUMPIF                           R12 ; [+4]
       83 GETUPVAL                         R13 1
       84 GETTABLEKS                       R13 R13 K16 ["None"]
       86 RETURN                           R13 1
       87 LOADNIL                          R13
       88 GETUPVAL                         R14 6
       89 GETTABLEKS                       R14 R14 K14 ["Preparing"]
       91 JUMPIFNOTEQ                      R11 R14 ; [+4]
       93 GETTABLEKS                       R13 R10 K14 ["Preparing"]
       95 JUMP                             ; [+2]
       96 GETTABLEKS                       R13 R10 K17 ["Waiting"]
       98 GETUPVAL                         R14 7
       99 CALL                             R14 0 1
      100 GETUPVAL                         R15 8
      101 GETUPVAL                         R16 9
      102 GETTABLEKS                       R16 R16 K18 ["Root"]
      104 DUPTABLE                         R17 K24 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
      105 GETTABLEKS                       R18 R0 K19 ["LayoutOrder"]
      107 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      109 GETTABLEKS                       R18 R0 K22 ["contentId"]
      111 SETTABLEKS                       R18 R17 K22 ["contentId"]
      113 GETTABLEKS                       R18 R0 K23 ["editThisContent"]
      115 SETTABLEKS                       R18 R17 K23 ["editThisContent"]
      117 DUPTABLE                         R18 K26 [{"Header"}]
      118 GETUPVAL                         R19 8
      119 GETUPVAL                         R20 9
      120 GETTABLEKS                       R20 R20 K25 ["Header"]
      122 DUPTABLE                         R21 K29 [{["IsDisabled"] = True, ["LayoutOrder"]}]
      123 MOVE                             R22 R14
      124 CALL                             R22 0 1
      125 SETTABLEKS                       R22 R21 K19 ["LayoutOrder"]
      127 DUPTABLE                         R22 K31 [{"Text"}]
      128 GETUPVAL                         R23 8
      129 GETUPVAL                         R24 10
      130 DUPTABLE                         R25 K34 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      131 SETTABLEKS                       R13 R25 K30 ["Text"]
      133 MOVE                             R26 R14
      134 CALL                             R26 0 1
      135 SETTABLEKS                       R26 R25 K19 ["LayoutOrder"]
      137 DUPTABLE                         R26 K36 [{"Shimmer"}]
      138 JUMPIFNOT                        R12 ; [+4]
      139 GETUPVAL                         R27 8
      140 GETUPVAL                         R28 11
      141 CALL                             R27 1 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R27
      144 SETTABLEKS                       R27 R26 K35 ["Shimmer"]
      146 CALL                             R23 3 1
      147 SETTABLEKS                       R23 R22 K30 ["Text"]
      149 CALL                             R19 3 1
      150 SETTABLEKS                       R19 R18 K25 ["Header"]
      152 CALL                             R15 3 -1
      153 RETURN                           R15 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Util"]
       30 GETTABLEKS                       R5 R5 K12 ["Jobs"]
       32 GETTABLEKS                       R5 R5 K13 ["JobStore"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R6 K14 ["ModelContextProtocol"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Parent"]
       46 GETTABLEKS                       R7 R7 K15 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Parent"]
       53 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R9 K17 ["ShimmerGradient"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K18 ["Resources"]
       67 GETTABLEKS                       R10 R10 K19 ["Localization"]
       69 GETTABLEKS                       R10 R10 K20 ["Translator"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K21 ["Types"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K11 ["Util"]
       81 GETTABLEKS                       R12 R12 K22 ["WidgetUtils"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R11 K23 ["ToolStatus"]
       86 GETTABLEKS                       R13 R3 K24 ["Text"]
       88 GETTABLEKS                       R14 R6 K25 ["createElement"]
       90 GETTABLEKS                       R15 R7 K26 ["createNextOrder"]
       92 NEWTABLE                         R16 0 0
       94 DUPCLOSURE                       R17 K27 [PROTO_2]
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R8
      107 DUPTABLE                         R18 K31 [{["Type"] = "JobWait", ["ContentWidget"]}]
      108 GETTABLEKS                       R19 R6 K32 ["memo"]
      110 MOVE                             R20 R17
      111 CALL                             R19 1 1
      112 SETTABLEKS                       R19 R18 K30 ["ContentWidget"]
      114 RETURN                           R18 1
