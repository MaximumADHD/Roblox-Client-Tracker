PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["trackedElapsedSeconds"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["trackedElapsedSeconds"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["editThisContent"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["contentId"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U1
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generating"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIF                           R0 ; [+7]
        8 GETUPVAL                         R0 1
        9 GETIMPORT                        R1 K3 [tick]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K1 ["current"]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["generating"]
       18 JUMPIF                           R0 ; [+8]
       19 GETUPVAL                         R0 1
       20 GETTABLEKS                       R0 R0 K1 ["current"]
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R0 1
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K1 ["current"]
       27 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETIMPORT                        R2 K1 [tick]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["current"]
       10 SUB                              R1 R2 R3
       11 LOADN                            R2 1
       12 JUMPIFNOTLT                      R1 R2 ; [+8]
       14 MULK                             R3 R1 K3 [100]
       15 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       16 GETIMPORT                        R2 K6 [math.floor]
       18 CALL                             R2 1 1
       19 DIVK                             R0 R2 K3 [100]
       20 JUMP                             ; [+19]
       21 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K6 [math.floor]
       25 CALL                             R2 1 1
       26 MOVE                             R0 R2
       27 JUMP                             ; [+12]
       28 GETIMPORT                        R3 K1 [tick]
       30 CALL                             R3 0 1
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K2 ["current"]
       34 SUB                              R2 R3 R4
       35 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       36 GETIMPORT                        R1 K6 [math.floor]
       38 CALL                             R1 1 1
       39 MOVE                             R0 R1
       40 GETUPVAL                         R1 2
       41 MOVE                             R2 R0
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generating"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K2 ["Heartbeat"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U4
       16 NAMECALL                         R0 R0 K3 ["Connect"]
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 JUMPIFNOTLT                      R1 R2 ; [+3]
        7 LOADK                            R0 K0 ["CompleteFractional"]
        8 JUMP                             ; [+8]
        9 GETUPVAL                         R1 1
       10 JUMPIFNOTEQKN                    R1 K1 [1] ; [+3]
       12 LOADK                            R0 K2 ["CompleteSingular"]
       13 JUMP                             ; [+3]
       14 LOADK                            R0 K3 ["Complete"]
       15 JUMP                             ; [+1]
       16 LOADK                            R0 K3 ["Complete"]
       17 DUPTABLE                         R1 K6 [{"Thinking", "Title"}]
       18 GETUPVAL                         R2 2
       19 LOADK                            R4 K4 ["Thinking"]
       20 LOADK                            R5 K7 ["Generating"]
       21 NAMECALL                         R2 R2 K8 ["getText"]
       23 CALL                             R2 3 1
       24 SETTABLEKS                       R2 R1 K4 ["Thinking"]
       26 GETUPVAL                         R2 2
       27 LOADK                            R4 K4 ["Thinking"]
       28 MOVE                             R5 R0
       29 DUPTABLE                         R6 K10 [{"x"}]
       30 GETUPVAL                         R7 1
       31 SETTABLEKS                       R7 R6 K9 ["x"]
       33 NAMECALL                         R2 R2 K8 ["getText"]
       35 CALL                             R2 4 1
       36 SETTABLEKS                       R2 R1 K5 ["Title"]
       38 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["thinking"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+7]
        4 GETTABLEKS                       R1 R0 K2 ["signature"]
        6 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 LOADK                            R1 K1 [""]
       11 GETTABLEKS                       R2 R0 K0 ["thinking"]
       13 JUMPIFEQKS                       R2 K1 [""] ; [+3]
       15 GETTABLEKS                       R1 R0 K0 ["thinking"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K3 ["useRef"]
       20 LOADNIL                          R3
       21 CALL                             R2 1 1
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 GETUPVAL                         R5 1
       25 CALL                             R5 0 1
       26 JUMPIFNOT                        R5 ; [+22]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K4 ["useState"]
       30 GETTABLEKS                       R7 R0 K6 ["trackedElapsedSeconds"]
       32 ORK                              R6 R7 K5 [0]
       33 CALL                             R5 1 2
       34 MOVE                             R3 R5
       35 MOVE                             R4 R6
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          REF R3
       42 NEWTABLE                         R7 0 1
       44 MOVE                             R8 R3
       45 SETLIST                          R7 R8 1 [1]
       47 CALL                             R5 2 0
       48 JUMP                             ; [+7]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K4 ["useState"]
       52 LOADN                            R6 0
       53 CALL                             R5 1 2
       54 MOVE                             R3 R5
       55 MOVE                             R4 R6
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       59 NEWCLOSURE                       R6 P1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 NEWTABLE                         R7 0 1
       64 GETTABLEKS                       R8 R0 K8 ["generating"]
       66 SETLIST                          R7 R8 1 [1]
       68 CALL                             R5 2 0
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       72 NEWCLOSURE                       R6 P2
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          REF R4
       78 NEWTABLE                         R7 0 1
       80 GETTABLEKS                       R8 R0 K8 ["generating"]
       82 SETLIST                          R7 R8 1 [1]
       84 CALL                             R5 2 0
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       88 NEWCLOSURE                       R6 P3
       89 CAPTURE                          UPVAL U1
       90 CAPTURE                          REF R3
       91 CAPTURE                          UPVAL U3
       92 NEWTABLE                         R7 0 1
       94 MOVE                             R8 R3
       95 SETLIST                          R7 R8 1 [1]
       97 CALL                             R5 2 1
       98 GETUPVAL                         R6 4
       99 CALL                             R6 0 1
      100 GETUPVAL                         R7 5
      101 GETUPVAL                         R8 6
      102 GETTABLEKS                       R8 R8 K10 ["Root"]
      104 DUPTABLE                         R9 K15 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      105 GETTABLEKS                       R10 R0 K11 ["LayoutOrder"]
      107 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      109 GETTABLEKS                       R10 R0 K12 ["expanded"]
      111 SETTABLEKS                       R10 R9 K12 ["expanded"]
      113 GETTABLEKS                       R10 R0 K13 ["contentId"]
      115 SETTABLEKS                       R10 R9 K13 ["contentId"]
      117 GETTABLEKS                       R10 R0 K14 ["editThisContent"]
      119 SETTABLEKS                       R10 R9 K14 ["editThisContent"]
      121 DUPTABLE                         R10 K18 [{"Header", "Content"}]
      122 GETUPVAL                         R11 5
      123 GETUPVAL                         R12 6
      124 GETTABLEKS                       R12 R12 K16 ["Header"]
      126 DUPTABLE                         R13 K20 [{"LayoutOrder", "testId"}]
      127 MOVE                             R14 R6
      128 CALL                             R14 0 1
      129 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      131 GETUPVAL                         R14 7
      132 GETTABLEKS                       R14 R14 K21 ["Thinking"]
      134 GETTABLEKS                       R14 R14 K22 ["Expand"]
      136 SETTABLEKS                       R14 R13 K19 ["testId"]
      138 DUPTABLE                         R14 K24 [{"Text"}]
      139 GETUPVAL                         R15 5
      140 GETUPVAL                         R16 8
      141 DUPTABLE                         R17 K26 [{"tag", "Text", "LayoutOrder"}]
      142 LOADK                            R18 K27 ["size-0-full auto-x text-label-small content-muted text-truncate-end"]
      143 SETTABLEKS                       R18 R17 K25 ["tag"]
      145 GETTABLEKS                       R19 R0 K8 ["generating"]
      147 JUMPIFNOT                        R19 ; [+3]
      148 GETTABLEKS                       R18 R5 K21 ["Thinking"]
      150 JUMP                             ; [+2]
      151 GETTABLEKS                       R18 R5 K28 ["Title"]
      153 SETTABLEKS                       R18 R17 K23 ["Text"]
      155 MOVE                             R18 R6
      156 CALL                             R18 0 1
      157 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      159 DUPTABLE                         R18 K30 [{"Shimmer"}]
      160 GETTABLEKS                       R19 R0 K8 ["generating"]
      162 JUMPIFNOT                        R19 ; [+3]
      163 GETUPVAL                         R19 5
      164 GETUPVAL                         R20 9
      165 CALL                             R19 1 1
      166 SETTABLEKS                       R19 R18 K29 ["Shimmer"]
      168 CALL                             R15 3 1
      169 SETTABLEKS                       R15 R14 K23 ["Text"]
      171 CALL                             R11 3 1
      172 SETTABLEKS                       R11 R10 K16 ["Header"]
      174 GETUPVAL                         R11 5
      175 GETUPVAL                         R12 6
      176 GETTABLEKS                       R12 R12 K17 ["Content"]
      178 DUPTABLE                         R13 K31 [{"tag", "LayoutOrder"}]
      179 LOADK                            R14 K32 ["col size-0-0 fill auto-y radius-small bg-shift-300"]
      180 SETTABLEKS                       R14 R13 K25 ["tag"]
      182 MOVE                             R14 R6
      183 CALL                             R14 0 1
      184 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      186 DUPTABLE                         R14 K34 [{"ThinkingContent"}]
      187 GETUPVAL                         R15 5
      188 GETUPVAL                         R16 10
      189 DUPTABLE                         R17 K31 [{"tag", "LayoutOrder"}]
      190 LOADK                            R18 K35 ["size-full-0 auto-y padding-small"]
      191 SETTABLEKS                       R18 R17 K25 ["tag"]
      193 MOVE                             R18 R6
      194 CALL                             R18 0 1
      195 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      197 DUPTABLE                         R18 K37 [{"MarkdownText"}]
      198 GETUPVAL                         R19 5
      199 GETUPVAL                         R20 11
      200 DUPTABLE                         R21 K40 [{"markdown", "messageId"}]
      201 SETTABLEKS                       R1 R21 K38 ["markdown"]
      203 GETTABLEKS                       R22 R0 K39 ["messageId"]
      205 SETTABLEKS                       R22 R21 K39 ["messageId"]
      207 CALL                             R19 2 1
      208 SETTABLEKS                       R19 R18 K36 ["MarkdownText"]
      210 CALL                             R15 3 1
      211 SETTABLEKS                       R15 R14 K33 ["ThinkingContent"]
      213 CALL                             R11 3 1
      214 SETTABLEKS                       R11 R10 K17 ["Content"]
      216 CALL                             R7 3 -1
      217 CLOSEUPVALS                      R3
      218 RETURN                           R7 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["thinking"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K5 [{"signature", "trackedElapsedSeconds"}]
        9 GETTABLEKS                       R2 R0 K3 ["signature"]
       11 SETTABLEKS                       R2 R1 K3 ["signature"]
       13 GETTABLEKS                       R2 R0 K4 ["trackedElapsedSeconds"]
       15 SETTABLEKS                       R2 R1 K4 ["trackedElapsedSeconds"]
       17 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 LOADK                            R2 K3 [""]
        9 GETTABLEKS                       R3 R1 K4 ["textContent"]
       11 JUMPIFNOT                        R3 ; [+4]
       12 GETTABLEKS                       R3 R1 K4 ["textContent"]
       14 GETTABLEKS                       R2 R3 K5 ["text"]
       16 DUPTABLE                         R3 K11 [{"type", "thinking", "signature", "trackedElapsedSeconds", "expanded"}]
       17 LOADK                            R4 K12 ["Thinking"]
       18 SETTABLEKS                       R4 R3 K6 ["type"]
       20 SETTABLEKS                       R2 R3 K7 ["thinking"]
       22 GETTABLEKS                       R5 R0 K8 ["signature"]
       24 ORK                              R4 R5 K13 ["UNKNOWN_SIGNATURE"]
       25 SETTABLEKS                       R4 R3 K8 ["signature"]
       27 GETTABLEKS                       R4 R0 K9 ["trackedElapsedSeconds"]
       29 SETTABLEKS                       R4 R3 K9 ["trackedElapsedSeconds"]
       31 LOADB                            R4 0
       32 SETTABLEKS                       R4 R3 K10 ["expanded"]
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Accordion"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["Foundation"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K14 ["MarkdownText"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Parent"]
       38 GETTABLEKS                       R6 R6 K15 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Parent"]
       45 GETTABLEKS                       R7 R7 K16 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K17 ["Util"]
       52 GETTABLEKS                       R8 R8 K18 ["Serializer"]
       54 GETTABLEKS                       R8 R8 K19 ["SerializerTypes"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K10 ["Components"]
       61 GETTABLEKS                       R9 R9 K20 ["ShimmerGradient"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K17 ["Util"]
       68 GETTABLEKS                       R10 R10 K21 ["TestIds"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R0 K22 ["Resources"]
       75 GETTABLEKS                       R11 R11 K23 ["Localization"]
       77 GETTABLEKS                       R11 R11 K24 ["Translator"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R0 K25 ["Types"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R13 R0 K26 ["Flags"]
       89 GETTABLEKS                       R13 R13 K27 ["FFlagAssistantMultipleChatPersistence"]
       91 CALL                             R12 1 1
       92 GETTABLEKS                       R13 R3 K28 ["Text"]
       94 GETTABLEKS                       R14 R3 K29 ["View"]
       96 GETTABLEKS                       R15 R6 K30 ["createNextOrder"]
       98 GETTABLEKS                       R16 R5 K31 ["createElement"]
      100 DUPCLOSURE                       R17 K32 [PROTO_7]
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R4
      113 DUPTABLE                         R18 K36 [{"getText", "toMeta", "fromMeta"}]
      114 DUPCLOSURE                       R19 K37 [PROTO_8]
      115 SETTABLEKS                       R19 R18 K33 ["getText"]
      117 DUPCLOSURE                       R19 K38 [PROTO_9]
      118 CAPTURE                          VAL R12
      119 SETTABLEKS                       R19 R18 K34 ["toMeta"]
      121 DUPCLOSURE                       R19 K39 [PROTO_10]
      122 CAPTURE                          VAL R12
      123 SETTABLEKS                       R19 R18 K35 ["fromMeta"]
      125 DUPTABLE                         R19 K43 [{"Type", "ContentWidget", "Serialization"}]
      126 LOADK                            R20 K44 ["Thinking"]
      127 SETTABLEKS                       R20 R19 K40 ["Type"]
      129 GETTABLEKS                       R20 R5 K45 ["memo"]
      131 MOVE                             R21 R17
      132 CALL                             R20 1 1
      133 SETTABLEKS                       R20 R19 K41 ["ContentWidget"]
      135 SETTABLEKS                       R18 R19 K42 ["Serialization"]
      137 RETURN                           R19 1
