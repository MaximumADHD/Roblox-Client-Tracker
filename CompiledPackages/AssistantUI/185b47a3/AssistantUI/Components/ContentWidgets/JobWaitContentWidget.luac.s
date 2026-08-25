PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIF                           R0 ; [+5]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["JobStatus"]
        8 GETTABLEKS                       R0 R0 K1 ["Running"]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["getJob"]
       13 GETUPVAL                         R2 0
       14 CALL                             R1 1 1
       15 JUMPIF                           R1 ; [+15]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K3 ["setJob"]
       19 GETUPVAL                         R2 0
       20 DUPTABLE                         R3 K9 [{["jobId"], ["status"], ["toolName"] = "", ["toolResult"]}]
       21 GETUPVAL                         R4 0
       22 SETTABLEKS                       R4 R3 K4 ["jobId"]
       24 SETTABLEKS                       R0 R3 K5 ["status"]
       26 GETUPVAL                         R4 3
       27 SETTABLEKS                       R4 R3 K8 ["toolResult"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 2
       32 GETTABLEKS                       R1 R1 K10 ["updateJob"]
       34 GETUPVAL                         R2 0
       35 DUPTABLE                         R3 K11 [{"status", "toolResult"}]
       36 SETTABLEKS                       R0 R3 K5 ["status"]
       38 GETUPVAL                         R4 3
       39 SETTABLEKS                       R4 R3 K8 ["toolResult"]
       41 CALL                             R1 2 0
       42 RETURN                           R0 0

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
       31 CAPTURE                          VAL R6
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R7
       34 NEWTABLE                         R10 0 0
       36 CALL                             R8 2 0
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R8 R8 K8 ["getJob"]
       40 MOVE                             R9 R3
       41 CALL                             R8 1 1
       42 JUMPIFNOT                        R8 ; [+3]
       43 GETTABLEKS                       R9 R8 K9 ["toolName"]
       45 JUMPIF                           R9 ; [+1]
       46 LOADK                            R9 K10 [""]
       47 GETUPVAL                         R10 1
       48 GETTABLEKS                       R10 R10 K11 ["useMemo"]
       50 NEWCLOSURE                       R11 P1
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R9
       53 NEWTABLE                         R12 0 2
       55 GETUPVAL                         R13 3
       56 GETTABLEKS                       R13 R13 K12 ["locale"]
       58 MOVE                             R14 R9
       59 SETLIST                          R12 R13 2 [1]
       61 CALL                             R10 2 1
       62 GETUPVAL                         R11 4
       63 GETTABLEKS                       R11 R11 K13 ["deriveToolStatus"]
       65 MOVE                             R12 R1
       66 MOVE                             R13 R4
       67 CALL                             R11 2 1
       68 LOADB                            R12 1
       69 GETUPVAL                         R13 5
       70 GETTABLEKS                       R13 R13 K14 ["Preparing"]
       72 JUMPIFEQ                         R11 R13 ; [+8]
       74 GETUPVAL                         R13 5
       75 GETTABLEKS                       R13 R13 K15 ["Running"]
       77 JUMPIFEQ                         R11 R13 ; [+2]
       79 LOADB                            R12 0 +1
       80 LOADB                            R12 1
       81 JUMPIF                           R12 ; [+4]
       82 GETUPVAL                         R13 1
       83 GETTABLEKS                       R13 R13 K16 ["None"]
       85 RETURN                           R13 1
       86 LOADNIL                          R13
       87 GETUPVAL                         R14 5
       88 GETTABLEKS                       R14 R14 K14 ["Preparing"]
       90 JUMPIFNOTEQ                      R11 R14 ; [+4]
       92 GETTABLEKS                       R13 R10 K14 ["Preparing"]
       94 JUMP                             ; [+2]
       95 GETTABLEKS                       R13 R10 K17 ["Waiting"]
       97 GETUPVAL                         R14 6
       98 CALL                             R14 0 1
       99 GETUPVAL                         R15 7
      100 GETUPVAL                         R16 8
      101 GETTABLEKS                       R16 R16 K18 ["Root"]
      103 DUPTABLE                         R17 K24 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
      104 GETTABLEKS                       R18 R0 K19 ["LayoutOrder"]
      106 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      108 GETTABLEKS                       R18 R0 K22 ["contentId"]
      110 SETTABLEKS                       R18 R17 K22 ["contentId"]
      112 GETTABLEKS                       R18 R0 K23 ["editThisContent"]
      114 SETTABLEKS                       R18 R17 K23 ["editThisContent"]
      116 DUPTABLE                         R18 K26 [{"Header"}]
      117 GETUPVAL                         R19 7
      118 GETUPVAL                         R20 8
      119 GETTABLEKS                       R20 R20 K25 ["Header"]
      121 DUPTABLE                         R21 K29 [{["IsDisabled"] = True, ["LayoutOrder"]}]
      122 MOVE                             R22 R14
      123 CALL                             R22 0 1
      124 SETTABLEKS                       R22 R21 K19 ["LayoutOrder"]
      126 DUPTABLE                         R22 K31 [{"Text"}]
      127 GETUPVAL                         R23 7
      128 GETUPVAL                         R24 9
      129 DUPTABLE                         R25 K34 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      130 SETTABLEKS                       R13 R25 K30 ["Text"]
      132 MOVE                             R26 R14
      133 CALL                             R26 0 1
      134 SETTABLEKS                       R26 R25 K19 ["LayoutOrder"]
      136 DUPTABLE                         R26 K36 [{"Shimmer"}]
      137 JUMPIFNOT                        R12 ; [+4]
      138 GETUPVAL                         R27 7
      139 GETUPVAL                         R28 10
      140 CALL                             R27 1 1
      141 JUMP                             ; [+1]
      142 LOADNIL                          R27
      143 SETTABLEKS                       R27 R26 K35 ["Shimmer"]
      145 CALL                             R23 3 1
      146 SETTABLEKS                       R23 R22 K30 ["Text"]
      148 CALL                             R19 3 1
      149 SETTABLEKS                       R19 R18 K25 ["Header"]
      151 CALL                             R15 3 -1
      152 RETURN                           R15 -1

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
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["Jobs"]
       27 GETTABLEKS                       R4 R4 K12 ["JobStore"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["ModelContextProtocol"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["ShimmerGradient"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Resources"]
       62 GETTABLEKS                       R9 R9 K18 ["Localization"]
       64 GETTABLEKS                       R9 R9 K19 ["Translator"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K20 ["Types"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Util"]
       76 GETTABLEKS                       R11 R11 K21 ["WidgetUtils"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R10 K22 ["ToolStatus"]
       81 GETTABLEKS                       R12 R2 K23 ["Text"]
       83 GETTABLEKS                       R13 R5 K24 ["createElement"]
       85 GETTABLEKS                       R14 R6 K25 ["createNextOrder"]
       87 NEWTABLE                         R15 0 0
       89 DUPCLOSURE                       R16 K26 [PROTO_2]
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R7
      101 DUPTABLE                         R17 K32 [{["Type"] = "JobWait", ["ContentWidget"], ["Serialization"] = }]
      102 GETTABLEKS                       R18 R5 K33 ["memo"]
      104 MOVE                             R19 R16
      105 CALL                             R18 1 1
      106 SETTABLEKS                       R18 R17 K29 ["ContentWidget"]
      108 RETURN                           R17 1
