PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["messageId"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantMessageSent_%*_%*"]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K1 ["messageId"]
        6 NAMECALL                         R2 R2 K2 ["format"]
        8 CALL                             R2 3 1
        9 MOVE                             R1 R2
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U2
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+25]
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["up"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["get"]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R0 R1 K2 ["EventLogger"]
       12 GETTABLEKS                       R1 R0 K3 ["getMessageGuid"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K4 ["messageId"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R0 K5 ["logThumbsUp"]
       20 DUPTABLE                         R3 K8 [{"messageGuid", "sessionId"}]
       21 SETTABLEKS                       R1 R3 K6 ["messageGuid"]
       23 GETUPVAL                         R4 4
       24 SETTABLEKS                       R4 R3 K7 ["sessionId"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+25]
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["down"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["get"]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R0 R1 K2 ["EventLogger"]
       12 GETTABLEKS                       R1 R0 K3 ["getMessageGuid"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K4 ["messageId"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R0 K5 ["logThumbsDown"]
       20 DUPTABLE                         R3 K8 [{"messageGuid", "sessionId"}]
       21 SETTABLEKS                       R1 R3 K6 ["messageGuid"]
       23 GETUPVAL                         R4 4
       24 SETTABLEKS                       R4 R3 K7 ["sessionId"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K1 ["EventLogger"]
        6 GETTABLEKS                       R1 R0 K2 ["getMessageGuid"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["messageId"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K4 ["logRetry"]
       14 DUPTABLE                         R3 K7 [{"messageGuid", "sessionId"}]
       15 SETTABLEKS                       R1 R3 K5 ["messageGuid"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K6 ["sessionId"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K8 ["retryMessage"]
       24 CALL                             R2 0 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R4 R1 K2 ["Config"]
        8 GETTABLEKS                       R3 R4 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R3 K4 ["Name"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K5 ["useState"]
       15 LOADNIL                          R4
       16 CALL                             R3 1 2
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K6 ["useContext"]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R6 R7 K7 ["Context"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R6 R5 K8 ["sessionId"]
       26 GETUPVAL                         R7 3
       27 CALL                             R7 0 1
       28 GETUPVAL                         R8 4
       29 CALL                             R8 0 1
       30 GETUPVAL                         R10 1
       31 GETTABLEKS                       R9 R10 K9 ["useEffect"]
       33 NEWCLOSURE                       R10 P0
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R7
       38 NEWTABLE                         R11 0 2
       40 GETTABLEKS                       R12 R0 K10 ["messageId"]
       42 MOVE                             R13 R6
       43 SETLIST                          R11 R12 2 [1]
       45 CALL                             R9 2 0
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R9 R10 K11 ["useCallback"]
       49 NEWCLOSURE                       R10 P1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R6
       55 NEWTABLE                         R11 0 3
       57 MOVE                             R12 R3
       58 GETTABLEKS                       R13 R0 K10 ["messageId"]
       60 MOVE                             R14 R6
       61 SETLIST                          R11 R12 3 [1]
       63 CALL                             R9 2 1
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R10 R11 K11 ["useCallback"]
       67 NEWCLOSURE                       R11 P2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R6
       73 NEWTABLE                         R12 0 3
       75 MOVE                             R13 R3
       76 GETTABLEKS                       R14 R0 K10 ["messageId"]
       78 MOVE                             R15 R6
       79 SETLIST                          R12 R13 3 [1]
       81 CALL                             R10 2 1
       82 GETUPVAL                         R12 1
       83 GETTABLEKS                       R11 R12 K11 ["useCallback"]
       85 NEWCLOSURE                       R12 P3
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R6
       89 NEWTABLE                         R13 0 3
       91 GETTABLEKS                       R14 R0 K12 ["retryMessage"]
       93 GETTABLEKS                       R15 R0 K10 ["messageId"]
       95 MOVE                             R16 R6
       96 SETLIST                          R13 R14 3 [1]
       98 CALL                             R11 2 1
       99 JUMPIFNOTEQKS                    R3 K13 ["up"] ; [+4]
      101 GETUPVAL                         R13 7
      102 GETTABLE                         R12 R13 R2
      103 JUMP                             ; [+2]
      104 GETUPVAL                         R13 8
      105 GETTABLE                         R12 R13 R2
      106 JUMPIFNOTEQKS                    R3 K14 ["down"] ; [+4]
      108 GETUPVAL                         R14 9
      109 GETTABLE                         R13 R14 R2
      110 JUMP                             ; [+2]
      111 GETUPVAL                         R14 10
      112 GETTABLE                         R13 R14 R2
      113 GETUPVAL                         R14 11
      114 GETUPVAL                         R15 12
      115 DUPTABLE                         R16 K17 [{"tag", "LayoutOrder"}]
      116 LOADK                            R17 K18 ["row gap-small auto-xy"]
      117 SETTABLEKS                       R17 R16 K15 ["tag"]
      119 GETTABLEKS                       R17 R0 K16 ["LayoutOrder"]
      121 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      123 DUPTABLE                         R17 K22 [{"ThumbsUpButton", "ThumbsDownButton", "RetryButton"}]
      124 GETUPVAL                         R18 11
      125 GETUPVAL                         R19 13
      126 DUPTABLE                         R20 K27 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      127 SETTABLEKS                       R12 R20 K23 ["icon"]
      129 LOADK                            R21 K28 ["size-600-600 radius-small align-x-center align-y-center"]
      130 SETTABLEKS                       R21 R20 K15 ["tag"]
      132 LOADK                            R21 K29 ["size-400-400 content-system-neutral"]
      133 SETTABLEKS                       R21 R20 K24 ["iconTag"]
      135 SETTABLEKS                       R9 R20 K25 ["onActivated"]
      137 MOVE                             R21 R8
      138 CALL                             R21 0 1
      139 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      141 GETUPVAL                         R23 14
      142 GETTABLEKS                       R22 R23 K30 ["MessageActions"]
      144 GETTABLEKS                       R21 R22 K31 ["ThumbsUp"]
      146 SETTABLEKS                       R21 R20 K26 ["testId"]
      148 CALL                             R18 2 1
      149 SETTABLEKS                       R18 R17 K19 ["ThumbsUpButton"]
      151 GETUPVAL                         R18 11
      152 GETUPVAL                         R19 13
      153 DUPTABLE                         R20 K27 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      154 SETTABLEKS                       R13 R20 K23 ["icon"]
      156 LOADK                            R21 K28 ["size-600-600 radius-small align-x-center align-y-center"]
      157 SETTABLEKS                       R21 R20 K15 ["tag"]
      159 LOADK                            R21 K29 ["size-400-400 content-system-neutral"]
      160 SETTABLEKS                       R21 R20 K24 ["iconTag"]
      162 SETTABLEKS                       R10 R20 K25 ["onActivated"]
      164 MOVE                             R21 R8
      165 CALL                             R21 0 1
      166 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      168 GETUPVAL                         R23 14
      169 GETTABLEKS                       R22 R23 K30 ["MessageActions"]
      171 GETTABLEKS                       R21 R22 K32 ["ThumbsDown"]
      173 SETTABLEKS                       R21 R20 K26 ["testId"]
      175 CALL                             R18 2 1
      176 SETTABLEKS                       R18 R17 K20 ["ThumbsDownButton"]
      178 GETUPVAL                         R18 11
      179 GETUPVAL                         R19 13
      180 DUPTABLE                         R20 K27 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      181 GETUPVAL                         R22 15
      182 GETTABLE                         R21 R22 R2
      183 SETTABLEKS                       R21 R20 K23 ["icon"]
      185 LOADK                            R21 K28 ["size-600-600 radius-small align-x-center align-y-center"]
      186 SETTABLEKS                       R21 R20 K15 ["tag"]
      188 LOADK                            R21 K29 ["size-400-400 content-system-neutral"]
      189 SETTABLEKS                       R21 R20 K24 ["iconTag"]
      191 SETTABLEKS                       R11 R20 K25 ["onActivated"]
      193 MOVE                             R21 R8
      194 CALL                             R21 0 1
      195 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      197 GETUPVAL                         R23 14
      198 GETTABLEKS                       R22 R23 K30 ["MessageActions"]
      200 GETTABLEKS                       R21 R22 K33 ["Retry"]
      202 SETTABLEKS                       R21 R20 K26 ["testId"]
      204 CALL                             R18 2 1
      205 SETTABLEKS                       R18 R17 K21 ["RetryButton"]
      207 CALL                             R14 3 -1
      208 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K6 ["Components"]
       46 GETTABLEKS                       R8 R9 K14 ["Contexts"]
       48 GETTABLEKS                       R7 R8 K15 ["SessionIdContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K16 ["Util"]
       55 GETTABLEKS                       R8 R9 K17 ["TestIds"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Util"]
       67 GETTABLEKS                       R10 R11 K19 ["callOnce"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K21 ["useLogAssistantMessageSent"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R3 K22 ["View"]
       79 GETTABLEKS                       R12 R5 K23 ["createNextOrder"]
       81 GETTABLEKS                       R13 R4 K24 ["createElement"]
       83 DUPTABLE                         R14 K27 [{"Dark", "Light"}]
       84 LOADK                            R15 K28 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUpOutline.png"]
       85 SETTABLEKS                       R15 R14 K25 ["Dark"]
       87 LOADK                            R15 K29 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUpOutline.png"]
       88 SETTABLEKS                       R15 R14 K26 ["Light"]
       90 DUPTABLE                         R15 K27 [{"Dark", "Light"}]
       91 LOADK                            R16 K30 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUp.png"]
       92 SETTABLEKS                       R16 R15 K25 ["Dark"]
       94 LOADK                            R16 K31 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUp.png"]
       95 SETTABLEKS                       R16 R15 K26 ["Light"]
       97 DUPTABLE                         R16 K27 [{"Dark", "Light"}]
       98 LOADK                            R17 K32 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDownOutline.png"]
       99 SETTABLEKS                       R17 R16 K25 ["Dark"]
      101 LOADK                            R17 K33 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDownOutline.png"]
      102 SETTABLEKS                       R17 R16 K26 ["Light"]
      104 DUPTABLE                         R17 K27 [{"Dark", "Light"}]
      105 LOADK                            R18 K34 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDown.png"]
      106 SETTABLEKS                       R18 R17 K25 ["Dark"]
      108 LOADK                            R18 K35 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDown.png"]
      109 SETTABLEKS                       R18 R17 K26 ["Light"]
      111 DUPTABLE                         R18 K27 [{"Dark", "Light"}]
      112 LOADK                            R19 K36 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/Regenerate.png"]
      113 SETTABLEKS                       R19 R18 K25 ["Dark"]
      115 LOADK                            R19 K37 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/Regenerate.png"]
      116 SETTABLEKS                       R19 R18 K26 ["Light"]
      118 DUPCLOSURE                       R19 K38 [PROTO_5]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R18
      135 RETURN                           R19 1
