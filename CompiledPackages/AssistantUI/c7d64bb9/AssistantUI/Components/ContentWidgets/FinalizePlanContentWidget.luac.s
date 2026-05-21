PROTO_0:
        0 LOADK                            R3 K0 ["&"]
        1 LOADK                            R4 K1 ["&amp;"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 ["<"]
        6 LOADK                            R4 K4 ["&lt;"]
        7 NAMECALL                         R1 R1 K2 ["gsub"]
        9 CALL                             R1 3 1
       10 LOADK                            R3 K5 [">"]
       11 LOADK                            R4 K6 ["&gt;"]
       12 NAMECALL                         R1 R1 K2 ["gsub"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"PreparingPlan", "Reject", "Build"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["FinalizePlan"]
        3 LOADK                            R4 K0 ["PreparingPlan"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["PreparingPlan"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["FinalizePlan"]
       11 LOADK                            R4 K1 ["Reject"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Reject"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["FinalizePlan"]
       19 LOADK                            R4 K2 ["Build"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Build"]
       25 RETURN                           R0 1

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_2]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logPlanDecision"]
        3 DUPTABLE                         R1 K10 [{"messageGuid", "sessionId", "threadId", "assistantMode", "decision", "planTitle", "planSummary", "todoCount", "todosJson"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["sessionId"]
       10 SETTABLEKS                       R2 R1 K2 ["sessionId"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K3 ["threadId"]
       15 GETUPVAL                         R2 4
       16 SETTABLEKS                       R2 R1 K4 ["assistantMode"]
       18 GETUPVAL                         R2 5
       19 SETTABLEKS                       R2 R1 K5 ["decision"]
       21 GETUPVAL                         R2 6
       22 GETTABLEKS                       R2 R2 K11 ["title"]
       24 SETTABLEKS                       R2 R1 K6 ["planTitle"]
       26 GETUPVAL                         R2 6
       27 GETTABLEKS                       R2 R2 K12 ["summary"]
       29 SETTABLEKS                       R2 R1 K7 ["planSummary"]
       31 GETUPVAL                         R3 6
       32 GETTABLEKS                       R3 R3 K13 ["todo"]
       34 JUMPIFNOT                        R3 ; [+5]
       35 GETUPVAL                         R3 6
       36 GETTABLEKS                       R3 R3 K13 ["todo"]
       38 LENGTH                           R2 R3
       39 JUMP                             ; [+1]
       40 LOADN                            R2 0
       41 SETTABLEKS                       R2 R1 K8 ["todoCount"]
       43 GETUPVAL                         R3 6
       44 GETTABLEKS                       R3 R3 K13 ["todo"]
       46 JUMPIFNOT                        R3 ; [+8]
       47 GETUPVAL                         R2 7
       48 GETTABLEKS                       R2 R2 K14 ["encodeAsync"]
       50 GETUPVAL                         R3 6
       51 GETTABLEKS                       R3 R3 K13 ["todo"]
       53 CALL                             R2 1 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R2
       56 SETTABLEKS                       R2 R1 K9 ["todosJson"]
       58 CALL                             R0 1 0
       59 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["EventLogger"]
        6 GETTABLEKS                       R3 R1 K2 ["json"]
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+3]
       11 GETUPVAL                         R5 2
       12 ORK                              R4 R5 K3 [""]
       13 JUMP                             ; [+5]
       14 GETTABLEKS                       R4 R2 K4 ["getMessageGuid"]
       16 GETUPVAL                         R6 2
       17 ORK                              R5 R6 K3 [""]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K7 [task.spawn]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          VAL R3
       30 CALL                             R5 1 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Accepted"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K2 ["setPlan"]
       16 DUPTABLE                         R1 K7 [{"title", "summary", "completeDescription", "todo"}]
       17 GETUPVAL                         R2 5
       18 GETTABLEKS                       R2 R2 K3 ["title"]
       20 SETTABLEKS                       R2 R1 K3 ["title"]
       22 GETUPVAL                         R2 5
       23 GETTABLEKS                       R2 R2 K4 ["summary"]
       25 SETTABLEKS                       R2 R1 K4 ["summary"]
       27 GETUPVAL                         R2 5
       28 GETTABLEKS                       R2 R2 K5 ["completeDescription"]
       30 SETTABLEKS                       R2 R1 K5 ["completeDescription"]
       32 GETUPVAL                         R2 5
       33 GETTABLEKS                       R2 R2 K6 ["todo"]
       35 SETTABLEKS                       R2 R1 K6 ["todo"]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R0 6
       39 GETUPVAL                         R1 1
       40 GETTABLEKS                       R1 R1 K8 ["AssistantMode"]
       42 GETTABLEKS                       R1 R1 K9 ["Agent"]
       44 CALL                             R0 1 0
       45 GETUPVAL                         R0 7
       46 LOADB                            R1 1
       47 CALL                             R0 1 0
       48 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["AssistantMode"]
        7 GETTABLEKS                       R1 R1 K1 ["Agent"]
        9 JUMPIFEQ                         R0 R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 3
       15 DUPTABLE                         R1 K4 [{"text", "hidden"}]
       16 GETUPVAL                         R2 4
       17 LOADK                            R3 K5 ["You have just exited plan mode. Action on the user's approved plan now."]
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K2 ["text"]
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R1 K3 ["hidden"]
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 5
       26 LOADB                            R1 0
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Rejected"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["clearPlan"]
       10 DUPTABLE                         R1 K4 [{"rejected"}]
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K3 ["rejected"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 3
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K5 ["AssistantMode"]
       19 GETTABLEKS                       R1 R1 K6 ["Agent"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 4
       23 JUMPIFNOT                        R0 ; [+6]
       24 GETUPVAL                         R0 5
       25 JUMPIFNOT                        R0 ; [+4]
       26 GETUPVAL                         R0 4
       27 GETUPVAL                         R1 5
       28 DUPCLOSURE                       R2 K7 [PROTO_8]
       29 CALL                             R0 2 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["todo"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLEKS                       R8 R6 K1 ["state"]
       17 JUMPIFEQKS                       R8 K2 ["completed"] ; [+2]
       19 LOADB                            R7 0 +1
       20 LOADB                            R7 1
       21 GETUPVAL                         R8 1
       22 CALL                             R8 0 1
       23 LOADK                            R10 K3 ["Todo_%*"]
       24 MOVE                             R12 R5
       25 NAMECALL                         R10 R10 K4 ["format"]
       27 CALL                             R10 2 1
       28 MOVE                             R9 R10
       29 GETUPVAL                         R10 3
       30 GETUPVAL                         R11 4
       31 DUPTABLE                         R12 K7 [{"tag", "LayoutOrder"}]
       32 LOADK                            R13 K8 ["row size-full-0 auto-y gap-medium align-y-center"]
       33 SETTABLEKS                       R13 R12 K5 ["tag"]
       35 MOVE                             R13 R1
       36 CALL                             R13 0 1
       37 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       39 DUPTABLE                         R13 K11 [{"Radio", "Text"}]
       40 GETUPVAL                         R14 3
       41 GETUPVAL                         R15 4
       42 DUPTABLE                         R16 K7 [{"tag", "LayoutOrder"}]
       43 NEWTABLE                         R17 4 0
       45 LOADB                            R18 1
       46 SETTABLEKS                       R18 R17 K12 ["size-400-400 radius-circle shrink-0"]
       48 SETTABLEKS                       R7 R17 K13 ["bg-action-sub-emphasis"]
       50 NOT                              R18 R7
       51 SETTABLEKS                       R18 R17 K14 ["stroke-emphasis"]
       53 SETTABLEKS                       R17 R16 K5 ["tag"]
       55 MOVE                             R17 R8
       56 CALL                             R17 0 1
       57 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
       59 CALL                             R14 2 1
       60 SETTABLEKS                       R14 R13 K9 ["Radio"]
       62 GETUPVAL                         R14 3
       63 GETUPVAL                         R15 5
       64 DUPTABLE                         R16 K16 [{"tag", "Text", "RichText", "LayoutOrder"}]
       65 NEWTABLE                         R17 4 0
       67 LOADB                            R18 1
       68 SETTABLEKS                       R18 R17 K17 ["auto-xy fill text-body-small text-wrap text-align-x-left"]
       70 SETTABLEKS                       R7 R17 K18 ["content-muted"]
       72 NOT                              R18 R7
       73 SETTABLEKS                       R18 R17 K19 ["content-emphasis"]
       75 SETTABLEKS                       R17 R16 K5 ["tag"]
       77 JUMPIFNOT                        R7 ; [+24]
       78 LOADK                            R18 K20 ["<s>%*</s>"]
       79 GETTABLEKS                       R21 R6 K21 ["text"]
       81 LOADK                            R24 K22 ["&"]
       82 LOADK                            R25 K23 ["&amp;"]
       83 NAMECALL                         R22 R21 K24 ["gsub"]
       85 CALL                             R22 3 1
       86 LOADK                            R24 K25 ["<"]
       87 LOADK                            R25 K26 ["&lt;"]
       88 NAMECALL                         R22 R22 K24 ["gsub"]
       90 CALL                             R22 3 1
       91 LOADK                            R24 K27 [">"]
       92 LOADK                            R25 K28 ["&gt;"]
       93 NAMECALL                         R22 R22 K24 ["gsub"]
       95 CALL                             R22 3 1
       96 MOVE                             R20 R22
       97 NAMECALL                         R18 R18 K4 ["format"]
       99 CALL                             R18 2 1
      100 MOVE                             R17 R18
      101 JUMP                             ; [+2]
      102 GETTABLEKS                       R17 R6 K21 ["text"]
      104 SETTABLEKS                       R17 R16 K10 ["Text"]
      106 SETTABLEKS                       R7 R16 K15 ["RichText"]
      108 MOVE                             R17 R8
      109 CALL                             R17 0 1
      110 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K10 ["Text"]
      115 CALL                             R10 3 1
      116 SETTABLE                         R10 R0 R9
      117 FORGLOOP                         R2 2 ; [-103]
      119 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["defaultCollapsed"]
        4 JUMPIFNOTEQKB                    R3 TRUE ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["useState"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K1 ["useState"]
       16 LOADB                            R6 0
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K1 ["useState"]
       21 LOADB                            R8 0
       22 CALL                             R7 1 2
       23 GETTABLEKS                       R10 R0 K2 ["variant"]
       25 GETUPVAL                         R11 2
       26 GETTABLEKS                       R11 R11 K3 ["Persistent"]
       28 JUMPIFEQ                         R10 R11 ; [+4]
       30 GETTABLEKS                       R9 R0 K4 ["sendMessage"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R9
       34 GETTABLEKS                       R11 R0 K2 ["variant"]
       36 GETUPVAL                         R12 2
       37 GETTABLEKS                       R12 R12 K3 ["Persistent"]
       39 JUMPIFEQ                         R11 R12 ; [+4]
       41 GETTABLEKS                       R10 R0 K5 ["editThisContent"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R10
       45 GETTABLEKS                       R12 R0 K2 ["variant"]
       47 GETUPVAL                         R13 2
       48 GETTABLEKS                       R13 R13 K3 ["Persistent"]
       50 JUMPIFEQ                         R12 R13 ; [+4]
       52 GETTABLEKS                       R11 R0 K6 ["contentId"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R11
       56 GETTABLEKS                       R13 R0 K2 ["variant"]
       58 GETUPVAL                         R14 2
       59 GETTABLEKS                       R14 R14 K3 ["Persistent"]
       61 JUMPIFEQ                         R13 R14 ; [+4]
       63 GETTABLEKS                       R12 R0 K7 ["messageId"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R12
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K8 ["useMemo"]
       70 DUPCLOSURE                       R14 K9 [PROTO_1]
       71 CAPTURE                          UPVAL U3
       72 NEWTABLE                         R15 0 1
       74 GETUPVAL                         R16 3
       75 GETTABLEKS                       R16 R16 K10 ["locale"]
       77 SETLIST                          R15 R16 1 [1]
       79 CALL                             R13 2 1
       80 GETUPVAL                         R14 4
       81 LOADB                            R15 0
       82 GETTABLEKS                       R16 R0 K11 ["status"]
       84 JUMPIFNOTEQKS                    R16 K12 ["awaiting_decision"] ; [+7]
       86 GETTABLEKS                       R16 R0 K13 ["hidden"]
       88 JUMPIFNOTEQKB                    R16 TRUE ; [+2]
       90 LOADB                            R15 0 +1
       91 LOADB                            R15 1
       92 CALL                             R14 1 0
       93 GETUPVAL                         R14 5
       94 CALL                             R14 0 2
       95 GETUPVAL                         R16 1
       96 GETTABLEKS                       R16 R16 K14 ["useContext"]
       98 GETUPVAL                         R17 6
       99 GETTABLEKS                       R17 R17 K15 ["Context"]
      101 CALL                             R16 1 1
      102 GETUPVAL                         R17 1
      103 GETTABLEKS                       R17 R17 K14 ["useContext"]
      105 GETUPVAL                         R18 7
      106 GETTABLEKS                       R18 R18 K15 ["Context"]
      108 CALL                             R17 1 1
      109 GETUPVAL                         R18 1
      110 GETTABLEKS                       R18 R18 K14 ["useContext"]
      112 GETUPVAL                         R19 8
      113 GETTABLEKS                       R19 R19 K15 ["Context"]
      115 CALL                             R18 1 1
      116 GETUPVAL                         R19 9
      117 CALL                             R19 0 1
      118 GETUPVAL                         R20 1
      119 GETTABLEKS                       R20 R20 K16 ["useCallback"]
      121 NEWCLOSURE                       R21 P1
      122 CAPTURE                          VAL R4
      123 NEWTABLE                         R22 0 0
      125 CALL                             R20 2 1
      126 GETUPVAL                         R21 1
      127 GETTABLEKS                       R21 R21 K16 ["useCallback"]
      129 NEWCLOSURE                       R22 P2
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          UPVAL U11
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R0
      137 NEWTABLE                         R23 0 7
      139 MOVE                             R24 R12
      140 MOVE                             R25 R18
      141 MOVE                             R26 R19
      142 MOVE                             R27 R14
      143 GETTABLEKS                       R28 R0 K17 ["title"]
      145 GETTABLEKS                       R29 R0 K18 ["summary"]
      147 GETTABLEKS                       R30 R0 K19 ["todo"]
      149 SETLIST                          R23 R24 7 [1]
      151 CALL                             R21 2 1
      152 GETUPVAL                         R22 1
      153 GETTABLEKS                       R22 R22 K16 ["useCallback"]
      155 NEWCLOSURE                       R23 P3
      156 CAPTURE                          VAL R21
      157 CAPTURE                          UPVAL U12
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R0
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R8
      164 NEWTABLE                         R24 0 7
      166 MOVE                             R25 R21
      167 MOVE                             R26 R17
      168 MOVE                             R27 R15
      169 GETTABLEKS                       R28 R0 K17 ["title"]
      171 GETTABLEKS                       R29 R0 K18 ["summary"]
      173 GETTABLEKS                       R30 R0 K20 ["completeDescription"]
      175 GETTABLEKS                       R31 R0 K19 ["todo"]
      177 SETLIST                          R24 R25 7 [1]
      179 CALL                             R22 2 1
      180 GETUPVAL                         R23 1
      181 GETTABLEKS                       R23 R23 K21 ["useEffect"]
      183 NEWCLOSURE                       R24 P4
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R14
      186 CAPTURE                          UPVAL U12
      187 CAPTURE                          VAL R9
      188 CAPTURE                          UPVAL U13
      189 CAPTURE                          VAL R8
      190 NEWTABLE                         R25 0 3
      192 MOVE                             R26 R7
      193 MOVE                             R27 R14
      194 MOVE                             R28 R9
      195 SETLIST                          R25 R26 3 [1]
      197 CALL                             R23 2 0
      198 GETUPVAL                         R23 1
      199 GETTABLEKS                       R23 R23 K16 ["useCallback"]
      201 NEWCLOSURE                       R24 P5
      202 CAPTURE                          VAL R21
      203 CAPTURE                          UPVAL U12
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R11
      208 NEWTABLE                         R25 0 5
      210 MOVE                             R26 R21
      211 MOVE                             R27 R17
      212 MOVE                             R28 R15
      213 MOVE                             R29 R10
      214 MOVE                             R30 R11
      215 SETLIST                          R25 R26 5 [1]
      217 CALL                             R23 2 1
      218 NOT                              R24 R5
      219 GETUPVAL                         R25 1
      220 GETTABLEKS                       R25 R25 K8 ["useMemo"]
      222 NEWCLOSURE                       R26 P6
      223 CAPTURE                          VAL R24
      224 CAPTURE                          UPVAL U0
      225 CAPTURE                          VAL R0
      226 CAPTURE                          UPVAL U14
      227 CAPTURE                          UPVAL U15
      228 CAPTURE                          UPVAL U16
      229 NEWTABLE                         R27 0 2
      231 GETTABLEKS                       R28 R0 K19 ["todo"]
      233 MOVE                             R29 R24
      234 SETLIST                          R27 R28 2 [1]
      236 CALL                             R25 2 1
      237 GETTABLEKS                       R26 R0 K11 ["status"]
      239 JUMPIFNOTEQKS                    R26 K22 ["preparing"] ; [+37]
      241 GETUPVAL                         R26 14
      242 GETUPVAL                         R27 15
      243 DUPTABLE                         R28 K25 [{"tag", "LayoutOrder"}]
      244 LOADK                            R29 K26 ["col size-full-0 auto-y gap-small"]
      245 SETTABLEKS                       R29 R28 K23 ["tag"]
      247 GETTABLEKS                       R29 R0 K24 ["LayoutOrder"]
      249 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      251 DUPTABLE                         R29 K28 [{"Loading"}]
      252 GETUPVAL                         R30 14
      253 GETUPVAL                         R31 16
      254 DUPTABLE                         R32 K30 [{"tag", "Text", "LayoutOrder"}]
      255 LOADK                            R33 K31 ["auto-xy text-label-small content-muted"]
      256 SETTABLEKS                       R33 R32 K23 ["tag"]
      258 GETTABLEKS                       R33 R13 K32 ["PreparingPlan"]
      260 SETTABLEKS                       R33 R32 K29 ["Text"]
      262 MOVE                             R33 R1
      263 CALL                             R33 0 1
      264 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      266 DUPTABLE                         R33 K34 [{"Shimmer"}]
      267 GETUPVAL                         R34 14
      268 GETUPVAL                         R35 17
      269 CALL                             R34 1 1
      270 SETTABLEKS                       R34 R33 K33 ["Shimmer"]
      272 CALL                             R30 3 1
      273 SETTABLEKS                       R30 R29 K27 ["Loading"]
      275 CALL                             R26 3 -1
      276 RETURN                           R26 -1
      277 GETTABLEKS                       R26 R0 K13 ["hidden"]
      279 JUMPIFNOT                        R26 ; [+2]
      280 LOADNIL                          R26
      281 RETURN                           R26 1
      282 GETTABLEKS                       R26 R0 K17 ["title"]
      284 GETTABLEKS                       R27 R0 K18 ["summary"]
      286 GETTABLEKS                       R29 R16 K35 ["inputEnabled"]
      288 NOT                              R28 R29
      289 GETTABLEKS                       R30 R0 K36 ["showActionButtons"]
      291 JUMPIFNOTEQKNIL                  R30 ; [+3]
      293 LOADB                            R29 1
      294 JUMP                             ; [+2]
      295 GETTABLEKS                       R29 R0 K36 ["showActionButtons"]
      297 GETTABLEKS                       R31 R0 K11 ["status"]
      299 JUMPIFEQKS                       R31 K12 ["awaiting_decision"] ; [+2]
      301 LOADB                            R30 0 +1
      302 LOADB                            R30 1
      303 GETUPVAL                         R31 14
      304 GETUPVAL                         R32 15
      305 DUPTABLE                         R33 K25 [{"tag", "LayoutOrder"}]
      306 LOADK                            R34 K37 ["col size-full-0 auto-y margin-top-xsmall"]
      307 SETTABLEKS                       R34 R33 K23 ["tag"]
      309 GETTABLEKS                       R34 R0 K24 ["LayoutOrder"]
      311 SETTABLEKS                       R34 R33 K24 ["LayoutOrder"]
      313 DUPTABLE                         R34 K39 [{"Card"}]
      314 GETUPVAL                         R35 14
      315 GETUPVAL                         R36 15
      316 DUPTABLE                         R37 K25 [{"tag", "LayoutOrder"}]
      317 LOADK                            R38 K40 ["col size-full-0 auto-y gap-medium padding-x-medium radius-medium stroke-standard stroke-default padding-y-medium"]
      318 SETTABLEKS                       R38 R37 K23 ["tag"]
      320 MOVE                             R38 R1
      321 CALL                             R38 0 1
      322 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      324 DUPTABLE                         R38 K45 [{"Header", "Summary", "TodoList", "ButtonRow"}]
      325 GETUPVAL                         R39 14
      326 GETUPVAL                         R40 15
      327 DUPTABLE                         R41 K47 [{"tag", "onActivated", "LayoutOrder"}]
      328 LOADK                            R42 K48 ["row size-full-0 auto-y gap-small align-y-center padding-xxsmall radius-small"]
      329 SETTABLEKS                       R42 R41 K23 ["tag"]
      331 JUMPIFNOT                        R24 ; [+2]
      332 MOVE                             R42 R20
      333 JUMP                             ; [+1]
      334 LOADNIL                          R42
      335 SETTABLEKS                       R42 R41 K46 ["onActivated"]
      337 MOVE                             R42 R1
      338 CALL                             R42 0 1
      339 SETTABLEKS                       R42 R41 K24 ["LayoutOrder"]
      341 DUPTABLE                         R42 K52 [{"Icon", "Title", "Chevron"}]
      342 GETUPVAL                         R43 14
      343 GETUPVAL                         R44 18
      344 DUPTABLE                         R45 K55 [{"name", "size", "LayoutOrder"}]
      345 GETUPVAL                         R46 19
      346 GETTABLEKS                       R46 R46 K56 ["FourBarsHorizontalJustifiedAligned"]
      348 SETTABLEKS                       R46 R45 K53 ["name"]
      350 GETUPVAL                         R46 20
      351 GETTABLEKS                       R46 R46 K57 ["Small"]
      353 SETTABLEKS                       R46 R45 K54 ["size"]
      355 MOVE                             R46 R1
      356 CALL                             R46 0 1
      357 SETTABLEKS                       R46 R45 K24 ["LayoutOrder"]
      359 CALL                             R43 2 1
      360 SETTABLEKS                       R43 R42 K49 ["Icon"]
      362 GETUPVAL                         R43 14
      363 GETUPVAL                         R44 16
      364 DUPTABLE                         R45 K30 [{"tag", "Text", "LayoutOrder"}]
      365 LOADK                            R46 K58 ["auto-xy fill text-truncate-end text-align-x-left text-title-small content-default"]
      366 SETTABLEKS                       R46 R45 K23 ["tag"]
      368 SETTABLEKS                       R26 R45 K29 ["Text"]
      370 MOVE                             R46 R1
      371 CALL                             R46 0 1
      372 SETTABLEKS                       R46 R45 K24 ["LayoutOrder"]
      374 CALL                             R43 2 1
      375 SETTABLEKS                       R43 R42 K50 ["Title"]
      377 MOVE                             R43 R24
      378 JUMPIFNOT                        R43 ; [+23]
      379 GETUPVAL                         R43 14
      380 GETUPVAL                         R44 18
      381 DUPTABLE                         R45 K55 [{"name", "size", "LayoutOrder"}]
      382 JUMPIFNOT                        R3 ; [+4]
      383 GETUPVAL                         R46 19
      384 GETTABLEKS                       R46 R46 K59 ["ChevronLargeDown"]
      386 JUMP                             ; [+3]
      387 GETUPVAL                         R46 19
      388 GETTABLEKS                       R46 R46 K60 ["ChevronLargeRight"]
      390 SETTABLEKS                       R46 R45 K53 ["name"]
      392 GETUPVAL                         R46 20
      393 GETTABLEKS                       R46 R46 K57 ["Small"]
      395 SETTABLEKS                       R46 R45 K54 ["size"]
      397 MOVE                             R46 R1
      398 CALL                             R46 0 1
      399 SETTABLEKS                       R46 R45 K24 ["LayoutOrder"]
      401 CALL                             R43 2 1
      402 SETTABLEKS                       R43 R42 K51 ["Chevron"]
      404 CALL                             R39 3 1
      405 SETTABLEKS                       R39 R38 K41 ["Header"]
      407 JUMPIFNOT                        R24 ; [+1]
      408 JUMPIF                           R3 ; [+2]
      409 MOVE                             R39 R5
      410 JUMPIFNOT                        R39 ; [+13]
      411 GETUPVAL                         R39 14
      412 GETUPVAL                         R40 16
      413 DUPTABLE                         R41 K30 [{"tag", "Text", "LayoutOrder"}]
      414 LOADK                            R42 K61 ["auto-xy text-body-small content-emphasis text-wrap text-align-x-left"]
      415 SETTABLEKS                       R42 R41 K23 ["tag"]
      417 SETTABLEKS                       R27 R41 K29 ["Text"]
      419 MOVE                             R42 R1
      420 CALL                             R42 0 1
      421 SETTABLEKS                       R42 R41 K24 ["LayoutOrder"]
      423 CALL                             R39 2 1
      424 SETTABLEKS                       R39 R38 K42 ["Summary"]
      426 MOVE                             R39 R24
      427 JUMPIFNOT                        R39 ; [+14]
      428 MOVE                             R39 R3
      429 JUMPIFNOT                        R39 ; [+12]
      430 GETUPVAL                         R39 14
      431 GETUPVAL                         R40 15
      432 DUPTABLE                         R41 K25 [{"tag", "LayoutOrder"}]
      433 LOADK                            R42 K26 ["col size-full-0 auto-y gap-small"]
      434 SETTABLEKS                       R42 R41 K23 ["tag"]
      436 MOVE                             R42 R1
      437 CALL                             R42 0 1
      438 SETTABLEKS                       R42 R41 K24 ["LayoutOrder"]
      440 MOVE                             R42 R25
      441 CALL                             R39 3 1
      442 SETTABLEKS                       R39 R38 K43 ["TodoList"]
      444 MOVE                             R39 R29
      445 JUMPIFNOT                        R39 ; [+72]
      446 MOVE                             R39 R30
      447 JUMPIFNOT                        R39 ; [+70]
      448 MOVE                             R39 R24
      449 JUMPIFNOT                        R39 ; [+68]
      450 MOVE                             R39 R3
      451 JUMPIFNOT                        R39 ; [+66]
      452 GETUPVAL                         R39 14
      453 GETUPVAL                         R40 15
      454 DUPTABLE                         R41 K25 [{"tag", "LayoutOrder"}]
      455 LOADK                            R42 K62 ["row size-full-0 auto-y gap-small align-y-center"]
      456 SETTABLEKS                       R42 R41 K23 ["tag"]
      458 MOVE                             R42 R1
      459 CALL                             R42 0 1
      460 SETTABLEKS                       R42 R41 K24 ["LayoutOrder"]
      462 DUPTABLE                         R42 K65 [{"Reject", "Build"}]
      463 GETUPVAL                         R43 14
      464 GETUPVAL                         R44 21
      465 DUPTABLE                         R45 K68 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      466 GETTABLEKS                       R46 R13 K63 ["Reject"]
      468 SETTABLEKS                       R46 R45 K66 ["text"]
      470 GETUPVAL                         R46 22
      471 GETTABLEKS                       R46 R46 K69 ["XSmall"]
      473 SETTABLEKS                       R46 R45 K54 ["size"]
      475 GETUPVAL                         R46 23
      476 GETTABLEKS                       R46 R46 K70 ["Standard"]
      478 SETTABLEKS                       R46 R45 K2 ["variant"]
      480 SETTABLEKS                       R28 R45 K67 ["isDisabled"]
      482 SETTABLEKS                       R23 R45 K46 ["onActivated"]
      484 LOADN                            R46 1
      485 SETTABLEKS                       R46 R45 K24 ["LayoutOrder"]
      487 CALL                             R43 2 1
      488 SETTABLEKS                       R43 R42 K63 ["Reject"]
      490 GETUPVAL                         R43 14
      491 GETUPVAL                         R44 21
      492 DUPTABLE                         R45 K68 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      493 GETTABLEKS                       R46 R13 K64 ["Build"]
      495 SETTABLEKS                       R46 R45 K66 ["text"]
      497 GETUPVAL                         R46 22
      498 GETTABLEKS                       R46 R46 K69 ["XSmall"]
      500 SETTABLEKS                       R46 R45 K54 ["size"]
      502 GETUPVAL                         R46 23
      503 GETTABLEKS                       R46 R46 K71 ["Emphasis"]
      505 SETTABLEKS                       R46 R45 K2 ["variant"]
      507 SETTABLEKS                       R28 R45 K67 ["isDisabled"]
      509 SETTABLEKS                       R22 R45 K46 ["onActivated"]
      511 LOADN                            R46 2
      512 SETTABLEKS                       R46 R45 K24 ["LayoutOrder"]
      514 CALL                             R43 2 1
      515 SETTABLEKS                       R43 R42 K64 ["Build"]
      517 CALL                             R39 3 1
      518 SETTABLEKS                       R39 R38 K44 ["ButtonRow"]
      520 CALL                             R35 3 1
      521 SETTABLEKS                       R35 R34 K38 ["Card"]
      523 CALL                             R31 3 -1
      524 RETURN                           R31 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K8 [{"title", "summary", "completeDescription", "todo", "status"}]
        9 GETTABLEKS                       R2 R0 K3 ["title"]
       11 SETTABLEKS                       R2 R1 K3 ["title"]
       13 GETTABLEKS                       R2 R0 K4 ["summary"]
       15 SETTABLEKS                       R2 R1 K4 ["summary"]
       17 GETTABLEKS                       R2 R0 K5 ["completeDescription"]
       19 SETTABLEKS                       R2 R1 K5 ["completeDescription"]
       21 GETTABLEKS                       R2 R0 K6 ["todo"]
       23 SETTABLEKS                       R2 R1 K6 ["todo"]
       25 GETTABLEKS                       R2 R0 K7 ["status"]
       27 SETTABLEKS                       R2 R1 K7 ["status"]
       29 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K10 [{"type", "title", "summary", "completeDescription", "todo", "status", "showActionButtons"}]
        9 LOADK                            R3 K11 ["FinalizePlan"]
       10 SETTABLEKS                       R3 R2 K3 ["type"]
       12 GETTABLEKS                       R4 R0 K4 ["title"]
       14 ORK                              R3 R4 K12 ["UNKNOWN_TITLE"]
       15 SETTABLEKS                       R3 R2 K4 ["title"]
       17 GETTABLEKS                       R4 R0 K5 ["summary"]
       19 ORK                              R3 R4 K13 ["UNKNOWN_SUMMARY"]
       20 SETTABLEKS                       R3 R2 K5 ["summary"]
       22 GETTABLEKS                       R4 R0 K6 ["completeDescription"]
       24 ORK                              R3 R4 K14 ["UNKNOWN_COMPLETE_DESCRIPTION"]
       25 SETTABLEKS                       R3 R2 K6 ["completeDescription"]
       27 GETTABLEKS                       R3 R0 K7 ["todo"]
       29 JUMPIF                           R3 ; [+2]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K7 ["todo"]
       34 GETTABLEKS                       R3 R0 K8 ["status"]
       36 JUMPIF                           R3 ; [+3]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K15 ["Error"]
       40 SETTABLEKS                       R3 R2 K8 ["status"]
       42 GETTABLEKS                       R4 R0 K8 ["status"]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K16 ["AwaitingDecision"]
       47 JUMPIFEQ                         R4 R5 ; [+2]
       49 LOADB                            R3 0 +1
       50 LOADB                            R3 1
       51 SETTABLEKS                       R3 R2 K9 ["showActionButtons"]
       53 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["InputStateContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Components"]
       34 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["PacketReceivedContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Components"]
       43 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K14 ["PersistentPlanContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Parent"]
       52 GETTABLEKS                       R7 R7 K15 ["React"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K8 ["Parent"]
       59 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K17 ["Util"]
       66 GETTABLEKS                       R9 R9 K18 ["Serializer"]
       68 GETTABLEKS                       R9 R9 K19 ["SerializerTypes"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Components"]
       75 GETTABLEKS                       R10 R10 K11 ["Contexts"]
       77 GETTABLEKS                       R10 R10 K20 ["SessionIdContext"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K10 ["Components"]
       84 GETTABLEKS                       R11 R11 K21 ["ShimmerGradient"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K22 ["Resources"]
       91 GETTABLEKS                       R12 R12 K23 ["Localization"]
       93 GETTABLEKS                       R12 R12 K24 ["Translator"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K25 ["Types"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K26 ["Hooks"]
      105 GETTABLEKS                       R14 R14 K27 ["useAssistantMode"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K26 ["Hooks"]
      112 GETTABLEKS                       R15 R15 K28 ["useThreadId"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K29 ["Flags"]
      119 GETTABLEKS                       R16 R16 K30 ["FFlagAssistantMultipleChatPersistence"]
      121 CALL                             R15 1 1
      122 GETTABLEKS                       R16 R2 K31 ["Button"]
      124 GETTABLEKS                       R17 R2 K32 ["Icon"]
      126 GETTABLEKS                       R18 R2 K33 ["Text"]
      128 GETTABLEKS                       R19 R2 K34 ["View"]
      130 GETTABLEKS                       R20 R2 K35 ["Enums"]
      132 GETTABLEKS                       R20 R20 K36 ["ButtonSize"]
      134 GETTABLEKS                       R21 R2 K35 ["Enums"]
      136 GETTABLEKS                       R21 R21 K37 ["ButtonVariant"]
      138 GETTABLEKS                       R22 R2 K35 ["Enums"]
      140 GETTABLEKS                       R22 R22 K38 ["IconName"]
      142 GETTABLEKS                       R23 R2 K35 ["Enums"]
      144 GETTABLEKS                       R23 R23 K39 ["IconSize"]
      146 GETTABLEKS                       R24 R12 K40 ["getSystemReminder"]
      148 GETTABLEKS                       R25 R4 K41 ["useMarkUserInputRequired"]
      150 GETTABLEKS                       R26 R7 K42 ["createNextOrder"]
      152 GETTABLEKS                       R27 R6 K43 ["createElement"]
      154 DUPCLOSURE                       R28 K44 [PROTO_0]
      155 DUPTABLE                         R29 K50 [{"Preparing", "AwaitingDecision", "Created", "Rejected", "Error"}]
      156 LOADK                            R30 K51 ["preparing"]
      157 SETTABLEKS                       R30 R29 K45 ["Preparing"]
      159 LOADK                            R30 K52 ["awaiting_decision"]
      160 SETTABLEKS                       R30 R29 K46 ["AwaitingDecision"]
      162 LOADK                            R30 K53 ["created"]
      163 SETTABLEKS                       R30 R29 K47 ["Created"]
      165 LOADK                            R30 K54 ["rejected"]
      166 SETTABLEKS                       R30 R29 K48 ["Rejected"]
      168 LOADK                            R30 K55 ["error"]
      169 SETTABLEKS                       R30 R29 K49 ["Error"]
      171 DUPTABLE                         R30 K57 [{"Persistent"}]
      172 LOADK                            R31 K58 ["persistent"]
      173 SETTABLEKS                       R31 R30 K56 ["Persistent"]
      175 DUPCLOSURE                       R31 K59 [PROTO_11]
      176 CAPTURE                          VAL R26
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R30
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R25
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R14
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R27
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R16
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R21
      200 DUPTABLE                         R32 K62 [{"toMeta", "fromMeta"}]
      201 DUPCLOSURE                       R33 K63 [PROTO_12]
      202 CAPTURE                          VAL R15
      203 SETTABLEKS                       R33 R32 K60 ["toMeta"]
      205 DUPCLOSURE                       R33 K64 [PROTO_13]
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R29
      208 SETTABLEKS                       R33 R32 K61 ["fromMeta"]
      210 DUPTABLE                         R33 K69 [{"Type", "ContentWidget", "Serialization", "Variants"}]
      211 LOADK                            R34 K70 ["FinalizePlan"]
      212 SETTABLEKS                       R34 R33 K65 ["Type"]
      214 GETTABLEKS                       R34 R6 K71 ["memo"]
      216 MOVE                             R35 R31
      217 CALL                             R34 1 1
      218 SETTABLEKS                       R34 R33 K66 ["ContentWidget"]
      220 SETTABLEKS                       R32 R33 K67 ["Serialization"]
      222 SETTABLEKS                       R30 R33 K68 ["Variants"]
      224 RETURN                           R33 1
