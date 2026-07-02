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
        1 GETTABLEKS                       R0 R0 K0 ["generating"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K2 ["Heartbeat"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R0 R0 K3 ["Connect"]
       17 CALL                             R0 2 1
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 RETURN                           R1 1

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
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R7 0 1
       49 GETTABLEKS                       R8 R0 K8 ["generating"]
       51 SETLIST                          R7 R8 1 [1]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       57 NEWCLOSURE                       R6 P2
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          VAL R4
       62 NEWTABLE                         R7 0 1
       64 GETTABLEKS                       R8 R0 K8 ["generating"]
       66 SETLIST                          R7 R8 1 [1]
       68 CALL                             R5 2 0
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       72 NEWCLOSURE                       R6 P3
       73 CAPTURE                          VAL R3
       74 CAPTURE                          UPVAL U2
       75 NEWTABLE                         R7 0 1
       77 MOVE                             R8 R3
       78 SETLIST                          R7 R8 1 [1]
       80 CALL                             R5 2 1
       81 GETUPVAL                         R6 3
       82 CALL                             R6 0 1
       83 GETUPVAL                         R7 4
       84 GETUPVAL                         R8 5
       85 GETTABLEKS                       R8 R8 K10 ["Root"]
       87 DUPTABLE                         R9 K15 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       88 GETTABLEKS                       R10 R0 K11 ["LayoutOrder"]
       90 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       92 GETTABLEKS                       R10 R0 K12 ["expanded"]
       94 SETTABLEKS                       R10 R9 K12 ["expanded"]
       96 GETTABLEKS                       R10 R0 K13 ["contentId"]
       98 SETTABLEKS                       R10 R9 K13 ["contentId"]
      100 GETTABLEKS                       R10 R0 K14 ["editThisContent"]
      102 SETTABLEKS                       R10 R9 K14 ["editThisContent"]
      104 DUPTABLE                         R10 K18 [{"Header", "Content"}]
      105 GETUPVAL                         R11 4
      106 GETUPVAL                         R12 5
      107 GETTABLEKS                       R12 R12 K16 ["Header"]
      109 DUPTABLE                         R13 K20 [{"LayoutOrder", "testId"}]
      110 MOVE                             R14 R6
      111 CALL                             R14 0 1
      112 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      114 GETUPVAL                         R14 6
      115 GETTABLEKS                       R14 R14 K21 ["Thinking"]
      117 GETTABLEKS                       R14 R14 K22 ["Expand"]
      119 SETTABLEKS                       R14 R13 K19 ["testId"]
      121 DUPTABLE                         R14 K24 [{"Text"}]
      122 GETUPVAL                         R15 4
      123 GETUPVAL                         R16 7
      124 DUPTABLE                         R17 K27 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-muted", ["Text"], ["LayoutOrder"]}]
      125 GETTABLEKS                       R19 R0 K8 ["generating"]
      127 JUMPIFNOT                        R19 ; [+3]
      128 GETTABLEKS                       R18 R5 K21 ["Thinking"]
      130 JUMP                             ; [+2]
      131 GETTABLEKS                       R18 R5 K28 ["Title"]
      133 SETTABLEKS                       R18 R17 K23 ["Text"]
      135 MOVE                             R18 R6
      136 CALL                             R18 0 1
      137 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      139 DUPTABLE                         R18 K30 [{"Shimmer"}]
      140 GETTABLEKS                       R19 R0 K8 ["generating"]
      142 JUMPIFNOT                        R19 ; [+3]
      143 GETUPVAL                         R19 4
      144 GETUPVAL                         R20 8
      145 CALL                             R19 1 1
      146 SETTABLEKS                       R19 R18 K29 ["Shimmer"]
      148 CALL                             R15 3 1
      149 SETTABLEKS                       R15 R14 K23 ["Text"]
      151 CALL                             R11 3 1
      152 SETTABLEKS                       R11 R10 K16 ["Header"]
      154 GETUPVAL                         R11 4
      155 GETUPVAL                         R12 5
      156 GETTABLEKS                       R12 R12 K17 ["Content"]
      158 DUPTABLE                         R13 K32 [{["tag"] = "col fill size-0-0 auto-y radius-small bg-shift-300", ["LayoutOrder"]}]
      159 MOVE                             R14 R6
      160 CALL                             R14 0 1
      161 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      163 DUPTABLE                         R14 K34 [{"ThinkingContent"}]
      164 GETUPVAL                         R15 4
      165 GETUPVAL                         R16 9
      166 DUPTABLE                         R17 K36 [{["tag"] = "size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      167 MOVE                             R18 R6
      168 CALL                             R18 0 1
      169 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      171 DUPTABLE                         R18 K38 [{"MarkdownText"}]
      172 GETUPVAL                         R19 4
      173 GETUPVAL                         R20 10
      174 DUPTABLE                         R21 K41 [{"markdown", "messageId"}]
      175 SETTABLEKS                       R1 R21 K39 ["markdown"]
      177 GETTABLEKS                       R22 R0 K40 ["messageId"]
      179 SETTABLEKS                       R22 R21 K40 ["messageId"]
      181 CALL                             R19 2 1
      182 SETTABLEKS                       R19 R18 K37 ["MarkdownText"]
      184 CALL                             R15 3 1
      185 SETTABLEKS                       R15 R14 K33 ["ThinkingContent"]
      187 CALL                             R11 3 1
      188 SETTABLEKS                       R11 R10 K17 ["Content"]
      190 CALL                             R7 3 -1
      191 RETURN                           R7 -1

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
       85 GETTABLEKS                       R12 R3 K26 ["Text"]
       87 GETTABLEKS                       R13 R3 K27 ["View"]
       89 GETTABLEKS                       R14 R6 K28 ["createNextOrder"]
       91 GETTABLEKS                       R15 R5 K29 ["createElement"]
       93 DUPCLOSURE                       R16 K30 [PROTO_7]
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R4
      105 DUPTABLE                         R17 K34 [{"getText", "toMeta", "fromMeta"}]
      106 DUPCLOSURE                       R18 K35 [PROTO_8]
      107 SETTABLEKS                       R18 R17 K31 ["getText"]
      109 DUPCLOSURE                       R18 K36 [PROTO_9]
      110 SETTABLEKS                       R18 R17 K32 ["toMeta"]
      112 DUPCLOSURE                       R18 K37 [PROTO_10]
      113 SETTABLEKS                       R18 R17 K33 ["fromMeta"]
      115 DUPTABLE                         R18 K42 [{["Type"] = "Thinking", ["ContentWidget"], ["Serialization"]}]
      116 GETTABLEKS                       R19 R5 K43 ["memo"]
      118 MOVE                             R20 R16
      119 CALL                             R19 1 1
      120 SETTABLEKS                       R19 R18 K40 ["ContentWidget"]
      122 SETTABLEKS                       R17 R18 K41 ["Serialization"]
      124 RETURN                           R18 1
