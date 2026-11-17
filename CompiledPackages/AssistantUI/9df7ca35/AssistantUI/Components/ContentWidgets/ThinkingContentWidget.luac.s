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
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIF                           R0 ; [+7]
        6 GETUPVAL                         R0 1
        7 GETIMPORT                        R1 K2 [tick]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 0
       14 JUMPIF                           R0 ; [+8]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K0 ["current"]
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETUPVAL                         R0 1
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K0 ["current"]
       23 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["current"]
        6 SUB                              R0 R1 R2
        7 LOADN                            R2 1
        8 JUMPIFNOTLT                      R0 R2 ; [+8]
       10 MULK                             R3 R0 K3 [100]
       11 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       12 GETIMPORT                        R2 K6 [math.floor]
       14 CALL                             R2 1 1
       15 DIVK                             R1 R2 K3 [100]
       16 JUMP                             ; [+5]
       17 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K6 [math.floor]
       21 CALL                             R1 1 1
       22 GETUPVAL                         R2 1
       23 MOVE                             R3 R1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["Heartbeat"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U3
       13 NAMECALL                         R0 R0 K2 ["Connect"]
       15 CALL                             R0 2 1
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 JUMPIFNOTLT                      R1 R2 ; [+3]
        4 LOADK                            R0 K0 ["CompleteFractional"]
        5 JUMP                             ; [+6]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOTEQKN                    R1 K1 [1] ; [+3]
        9 LOADK                            R0 K2 ["CompleteSingular"]
       10 JUMP                             ; [+1]
       11 LOADK                            R0 K3 ["Complete"]
       12 DUPTABLE                         R1 K6 [{"Thinking", "Title"}]
       13 GETUPVAL                         R2 1
       14 LOADK                            R4 K4 ["Thinking"]
       15 LOADK                            R5 K7 ["Generating"]
       16 NAMECALL                         R2 R2 K8 ["getText"]
       18 CALL                             R2 3 1
       19 SETTABLEKS                       R2 R1 K4 ["Thinking"]
       21 GETUPVAL                         R2 1
       22 LOADK                            R4 K4 ["Thinking"]
       23 MOVE                             R5 R0
       24 DUPTABLE                         R6 K10 [{"x"}]
       25 GETUPVAL                         R7 0
       26 SETTABLEKS                       R7 R6 K9 ["x"]
       28 NAMECALL                         R2 R2 K8 ["getText"]
       30 CALL                             R2 4 1
       31 SETTABLEKS                       R2 R1 K5 ["Title"]
       33 RETURN                           R1 1

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
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["useState"]
       25 GETTABLEKS                       R5 R0 K6 ["trackedElapsedSeconds"]
       27 ORK                              R4 R5 K5 [0]
       28 CALL                             R3 1 2
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R7 0 1
       37 MOVE                             R8 R3
       38 SETLIST                          R7 R8 1 [1]
       40 CALL                             R5 2 0
       41 GETUPVAL                         R5 1
       42 MOVE                             R6 R0
       43 CALL                             R5 1 1
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R8 0 1
       52 MOVE                             R9 R5
       53 SETLIST                          R8 R9 1 [1]
       55 CALL                             R6 2 0
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       59 NEWCLOSURE                       R7 P2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R4
       64 NEWTABLE                         R8 0 1
       66 MOVE                             R9 R5
       67 SETLIST                          R8 R9 1 [1]
       69 CALL                             R6 2 0
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       73 NEWCLOSURE                       R7 P3
       74 CAPTURE                          VAL R3
       75 CAPTURE                          UPVAL U3
       76 NEWTABLE                         R8 0 1
       78 MOVE                             R9 R3
       79 SETLIST                          R8 R9 1 [1]
       81 CALL                             R6 2 1
       82 GETUPVAL                         R7 4
       83 CALL                             R7 0 1
       84 GETUPVAL                         R8 5
       85 GETUPVAL                         R9 6
       86 GETTABLEKS                       R9 R9 K9 ["Root"]
       88 DUPTABLE                         R10 K14 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       89 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
       91 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       93 GETTABLEKS                       R11 R0 K11 ["expanded"]
       95 SETTABLEKS                       R11 R10 K11 ["expanded"]
       97 GETTABLEKS                       R11 R0 K12 ["contentId"]
       99 SETTABLEKS                       R11 R10 K12 ["contentId"]
      101 GETTABLEKS                       R11 R0 K13 ["editThisContent"]
      103 SETTABLEKS                       R11 R10 K13 ["editThisContent"]
      105 DUPTABLE                         R11 K17 [{"Header", "Content"}]
      106 GETUPVAL                         R12 5
      107 GETUPVAL                         R13 6
      108 GETTABLEKS                       R13 R13 K15 ["Header"]
      110 DUPTABLE                         R14 K19 [{"LayoutOrder", "testId"}]
      111 MOVE                             R15 R7
      112 CALL                             R15 0 1
      113 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      115 GETUPVAL                         R15 7
      116 GETTABLEKS                       R15 R15 K20 ["Thinking"]
      118 GETTABLEKS                       R15 R15 K21 ["Expand"]
      120 SETTABLEKS                       R15 R14 K18 ["testId"]
      122 DUPTABLE                         R15 K23 [{"Text"}]
      123 GETUPVAL                         R16 5
      124 GETUPVAL                         R17 8
      125 DUPTABLE                         R18 K26 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-muted", ["Text"], ["LayoutOrder"]}]
      126 JUMPIFNOT                        R5 ; [+3]
      127 GETTABLEKS                       R19 R6 K20 ["Thinking"]
      129 JUMP                             ; [+2]
      130 GETTABLEKS                       R19 R6 K27 ["Title"]
      132 SETTABLEKS                       R19 R18 K22 ["Text"]
      134 MOVE                             R19 R7
      135 CALL                             R19 0 1
      136 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
      138 DUPTABLE                         R19 K29 [{"Shimmer"}]
      139 MOVE                             R20 R5
      140 JUMPIFNOT                        R20 ; [+3]
      141 GETUPVAL                         R20 5
      142 GETUPVAL                         R21 9
      143 CALL                             R20 1 1
      144 SETTABLEKS                       R20 R19 K28 ["Shimmer"]
      146 CALL                             R16 3 1
      147 SETTABLEKS                       R16 R15 K22 ["Text"]
      149 CALL                             R12 3 1
      150 SETTABLEKS                       R12 R11 K15 ["Header"]
      152 GETUPVAL                         R12 5
      153 GETUPVAL                         R13 6
      154 GETTABLEKS                       R13 R13 K16 ["Content"]
      156 DUPTABLE                         R14 K31 [{["tag"] = "col fill size-0-0 auto-y radius-small bg-shift-300", ["LayoutOrder"]}]
      157 MOVE                             R15 R7
      158 CALL                             R15 0 1
      159 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      161 DUPTABLE                         R15 K33 [{"ThinkingContent"}]
      162 GETUPVAL                         R16 5
      163 GETUPVAL                         R17 10
      164 DUPTABLE                         R18 K35 [{["tag"] = "size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      165 MOVE                             R19 R7
      166 CALL                             R19 0 1
      167 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
      169 DUPTABLE                         R19 K37 [{"MarkdownText"}]
      170 GETUPVAL                         R20 5
      171 GETUPVAL                         R21 11
      172 DUPTABLE                         R22 K41 [{"markdown", "messageId", "isStreaming"}]
      173 SETTABLEKS                       R1 R22 K38 ["markdown"]
      175 GETTABLEKS                       R23 R0 K39 ["messageId"]
      177 SETTABLEKS                       R23 R22 K39 ["messageId"]
      179 GETUPVAL                         R24 12
      180 GETTABLEKS                       R24 R24 K42 ["FFlagAssistantMarkdownStreaming"]
      182 JUMPIFNOT                        R24 ; [+2]
      183 MOVE                             R23 R5
      184 JUMP                             ; [+1]
      185 LOADNIL                          R23
      186 SETTABLEKS                       R23 R22 K40 ["isStreaming"]
      188 CALL                             R20 2 1
      189 SETTABLEKS                       R20 R19 K36 ["MarkdownText"]
      191 CALL                             R16 3 1
      192 SETTABLEKS                       R16 R15 K32 ["ThinkingContent"]
      194 CALL                             R12 3 1
      195 SETTABLEKS                       R12 R11 K16 ["Content"]
      197 CALL                             R8 3 -1
      198 RETURN                           R8 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["thinking"]
        2 RETURN                           R1 1

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"signature", "trackedElapsedSeconds"}]
        1 GETTABLEKS                       R2 R0 K0 ["signature"]
        3 SETTABLEKS                       R2 R1 K0 ["signature"]
        5 GETTABLEKS                       R2 R0 K1 ["trackedElapsedSeconds"]
        7 SETTABLEKS                       R2 R1 K1 ["trackedElapsedSeconds"]
        9 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R2 K0 [""]
        1 GETTABLEKS                       R3 R1 K1 ["textContent"]
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R3 R1 K1 ["textContent"]
        6 GETTABLEKS                       R2 R3 K2 ["text"]
        8 DUPTABLE                         R3 K10 [{["type"] = "Thinking", ["thinking"], ["signature"], ["trackedElapsedSeconds"], ["expanded"] = False}]
        9 SETTABLEKS                       R2 R3 K5 ["thinking"]
       11 GETTABLEKS                       R5 R0 K6 ["signature"]
       13 ORK                              R4 R5 K11 ["UNKNOWN_SIGNATURE"]
       14 SETTABLEKS                       R4 R3 K6 ["signature"]
       16 GETTABLEKS                       R4 R0 K7 ["trackedElapsedSeconds"]
       18 SETTABLEKS                       R4 R3 K7 ["trackedElapsedSeconds"]
       20 RETURN                           R3 1

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
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Foundation"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ReactUtils"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Components"]
       34 GETTABLEKS                       R7 R7 K15 ["Accordion"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K16 ["Flags"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K10 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Components"]
       46 GETTABLEKS                       R9 R9 K17 ["MarkdownText"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K10 [require]
       51 GETTABLEKS                       R10 R0 K18 ["Util"]
       53 GETTABLEKS                       R10 R10 K19 ["Serializer"]
       55 GETTABLEKS                       R10 R10 K20 ["SerializerTypes"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K10 [require]
       60 GETTABLEKS                       R11 R0 K14 ["Components"]
       62 GETTABLEKS                       R11 R11 K21 ["ShimmerGradient"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K10 [require]
       67 GETTABLEKS                       R12 R0 K18 ["Util"]
       69 GETTABLEKS                       R12 R12 K22 ["TestIds"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K10 [require]
       74 GETTABLEKS                       R13 R0 K23 ["Resources"]
       76 GETTABLEKS                       R13 R13 K24 ["Localization"]
       78 GETTABLEKS                       R13 R13 K25 ["Translator"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K10 [require]
       83 GETTABLEKS                       R14 R0 K26 ["Types"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K10 [require]
       88 GETTABLEKS                       R15 R0 K18 ["Util"]
       90 GETTABLEKS                       R15 R15 K27 ["isContentStreaming"]
       92 CALL                             R14 1 1
       93 GETTABLEKS                       R15 R3 K28 ["Text"]
       95 GETTABLEKS                       R16 R3 K29 ["View"]
       97 GETTABLEKS                       R17 R5 K30 ["createNextOrder"]
       99 GETTABLEKS                       R18 R4 K31 ["createElement"]
      101 DUPCLOSURE                       R19 K32 [PROTO_7]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R7
      115 DUPTABLE                         R20 K36 [{"getText", "toMeta", "fromMeta"}]
      116 DUPCLOSURE                       R21 K37 [PROTO_8]
      117 SETTABLEKS                       R21 R20 K33 ["getText"]
      119 DUPCLOSURE                       R21 K38 [PROTO_9]
      120 SETTABLEKS                       R21 R20 K34 ["toMeta"]
      122 DUPCLOSURE                       R21 K39 [PROTO_10]
      123 SETTABLEKS                       R21 R20 K35 ["fromMeta"]
      125 DUPTABLE                         R21 K44 [{["Type"] = "Thinking", ["ContentWidget"], ["Serialization"]}]
      126 GETTABLEKS                       R22 R4 K45 ["memo"]
      128 MOVE                             R23 R19
      129 CALL                             R22 1 1
      130 SETTABLEKS                       R22 R21 K42 ["ContentWidget"]
      132 SETTABLEKS                       R20 R21 K43 ["Serialization"]
      134 RETURN                           R21 1
