PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["thumbsState"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"messageId", "transformFn"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["messageId"]
        5 SETTABLEKS                       R3 R2 K0 ["messageId"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R2 K1 ["transformFn"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["messageId"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["Up"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["get"]
       12 CALL                             R1 0 1
       13 GETTABLEKS                       R0 R1 K2 ["EventLogger"]
       15 GETUPVAL                         R2 4
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R2 5
       19 GETTABLEKS                       R1 R2 K3 ["messageId"]
       21 JUMP                             ; [+6]
       22 GETTABLEKS                       R1 R0 K4 ["getMessageGuid"]
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R2 R3 K3 ["messageId"]
       27 CALL                             R1 1 1
       28 GETTABLEKS                       R2 R0 K5 ["logThumbsUp"]
       30 DUPTABLE                         R3 K8 [{"messageGuid", "sessionId"}]
       31 SETTABLEKS                       R1 R3 K6 ["messageGuid"]
       33 GETUPVAL                         R4 6
       34 SETTABLEKS                       R4 R3 K7 ["sessionId"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["Down"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["get"]
       12 CALL                             R1 0 1
       13 GETTABLEKS                       R0 R1 K2 ["EventLogger"]
       15 GETUPVAL                         R2 4
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R2 5
       19 GETTABLEKS                       R1 R2 K3 ["messageId"]
       21 JUMP                             ; [+6]
       22 GETTABLEKS                       R1 R0 K4 ["getMessageGuid"]
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R2 R3 K3 ["messageId"]
       27 CALL                             R1 1 1
       28 GETTABLEKS                       R2 R0 K5 ["logThumbsDown"]
       30 DUPTABLE                         R3 K8 [{"messageGuid", "sessionId"}]
       31 SETTABLEKS                       R1 R3 K6 ["messageGuid"]
       33 GETUPVAL                         R4 6
       34 SETTABLEKS                       R4 R3 K7 ["sessionId"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K1 ["EventLogger"]
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["messageId"]
       12 JUMP                             ; [+6]
       13 GETTABLEKS                       R1 R0 K3 ["getMessageGuid"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K2 ["messageId"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R0 K4 ["logRetry"]
       21 DUPTABLE                         R3 K7 [{"messageGuid", "sessionId"}]
       22 SETTABLEKS                       R1 R3 K5 ["messageGuid"]
       24 GETUPVAL                         R4 3
       25 SETTABLEKS                       R4 R3 K6 ["sessionId"]
       27 CALL                             R2 1 0
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R2 R3 K8 ["retryMessage"]
       31 CALL                             R2 0 0
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R4 R1 K2 ["Config"]
        8 GETTABLEKS                       R3 R4 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R3 K4 ["Name"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K5 ["useContext"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K6 ["Context"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["sessionId"]
       21 GETUPVAL                         R5 3
       22 CALL                             R5 0 1
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 GETUPVAL                         R8 4
       26 CALL                             R8 0 1
       27 JUMPIFNOT                        R8 ; [+20]
       28 GETUPVAL                         R8 5
       29 CALL                             R8 0 1
       30 GETTABLEKS                       R6 R0 K8 ["thumbsState"]
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R9 R10 K9 ["useCallback"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R8
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R11 0 2
       40 GETTABLEKS                       R12 R0 K10 ["messageId"]
       42 MOVE                             R13 R8
       43 SETLIST                          R11 R12 2 [1]
       45 CALL                             R9 2 1
       46 MOVE                             R7 R9
       47 JUMP                             ; [+7]
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R8 R9 K11 ["useState"]
       51 LOADNIL                          R9
       52 CALL                             R8 1 2
       53 MOVE                             R6 R8
       54 MOVE                             R7 R9
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R8 R9 K12 ["useEffect"]
       58 NEWCLOSURE                       R9 P1
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R10 0 2
       65 GETTABLEKS                       R11 R0 K10 ["messageId"]
       67 MOVE                             R12 R4
       68 SETLIST                          R10 R11 2 [1]
       70 CALL                             R8 2 0
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R8 R9 K9 ["useCallback"]
       74 NEWCLOSURE                       R9 P2
       75 CAPTURE                          REF R6
       76 CAPTURE                          REF R7
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R4
       82 NEWTABLE                         R10 0 3
       84 MOVE                             R11 R6
       85 GETTABLEKS                       R12 R0 K10 ["messageId"]
       87 MOVE                             R13 R4
       88 SETLIST                          R10 R11 3 [1]
       90 CALL                             R8 2 1
       91 GETUPVAL                         R10 1
       92 GETTABLEKS                       R9 R10 K9 ["useCallback"]
       94 NEWCLOSURE                       R10 P3
       95 CAPTURE                          REF R6
       96 CAPTURE                          REF R7
       97 CAPTURE                          UPVAL U7
       98 CAPTURE                          UPVAL U8
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R4
      102 NEWTABLE                         R11 0 3
      104 MOVE                             R12 R6
      105 GETTABLEKS                       R13 R0 K10 ["messageId"]
      107 MOVE                             R14 R4
      108 SETLIST                          R11 R12 3 [1]
      110 CALL                             R9 2 1
      111 GETUPVAL                         R11 1
      112 GETTABLEKS                       R10 R11 K9 ["useCallback"]
      114 NEWCLOSURE                       R11 P4
      115 CAPTURE                          UPVAL U8
      116 CAPTURE                          UPVAL U4
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R4
      119 NEWTABLE                         R12 0 3
      121 GETTABLEKS                       R13 R0 K13 ["retryMessage"]
      123 GETTABLEKS                       R14 R0 K10 ["messageId"]
      125 MOVE                             R15 R4
      126 SETLIST                          R12 R13 3 [1]
      128 CALL                             R10 2 1
      129 GETUPVAL                         R13 7
      130 GETTABLEKS                       R12 R13 K14 ["Up"]
      132 JUMPIFNOTEQ                      R6 R12 ; [+4]
      134 GETUPVAL                         R12 9
      135 GETTABLE                         R11 R12 R2
      136 JUMP                             ; [+2]
      137 GETUPVAL                         R12 10
      138 GETTABLE                         R11 R12 R2
      139 GETUPVAL                         R14 7
      140 GETTABLEKS                       R13 R14 K15 ["Down"]
      142 JUMPIFNOTEQ                      R6 R13 ; [+4]
      144 GETUPVAL                         R13 11
      145 GETTABLE                         R12 R13 R2
      146 JUMP                             ; [+2]
      147 GETUPVAL                         R13 12
      148 GETTABLE                         R12 R13 R2
      149 GETUPVAL                         R13 13
      150 CALL                             R13 0 1
      151 GETUPVAL                         R14 14
      152 GETUPVAL                         R15 15
      153 DUPTABLE                         R16 K18 [{"tag", "LayoutOrder"}]
      154 LOADK                            R17 K19 ["row gap-small auto-xy"]
      155 SETTABLEKS                       R17 R16 K16 ["tag"]
      157 GETTABLEKS                       R17 R0 K17 ["LayoutOrder"]
      159 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
      161 DUPTABLE                         R17 K23 [{"ThumbsUpButton", "ThumbsDownButton", "RetryButton"}]
      162 GETUPVAL                         R18 14
      163 GETUPVAL                         R19 16
      164 DUPTABLE                         R20 K28 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      165 SETTABLEKS                       R11 R20 K24 ["icon"]
      167 LOADK                            R21 K29 ["size-600-600 radius-small align-x-center align-y-center"]
      168 SETTABLEKS                       R21 R20 K16 ["tag"]
      170 LOADK                            R21 K30 ["size-400-400 content-system-neutral"]
      171 SETTABLEKS                       R21 R20 K25 ["iconTag"]
      173 SETTABLEKS                       R8 R20 K26 ["onActivated"]
      175 MOVE                             R21 R13
      176 CALL                             R21 0 1
      177 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      179 GETUPVAL                         R23 17
      180 GETTABLEKS                       R22 R23 K31 ["MessageActions"]
      182 GETTABLEKS                       R21 R22 K32 ["ThumbsUp"]
      184 SETTABLEKS                       R21 R20 K27 ["testId"]
      186 CALL                             R18 2 1
      187 SETTABLEKS                       R18 R17 K20 ["ThumbsUpButton"]
      189 GETUPVAL                         R18 14
      190 GETUPVAL                         R19 16
      191 DUPTABLE                         R20 K28 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      192 SETTABLEKS                       R12 R20 K24 ["icon"]
      194 LOADK                            R21 K29 ["size-600-600 radius-small align-x-center align-y-center"]
      195 SETTABLEKS                       R21 R20 K16 ["tag"]
      197 LOADK                            R21 K30 ["size-400-400 content-system-neutral"]
      198 SETTABLEKS                       R21 R20 K25 ["iconTag"]
      200 SETTABLEKS                       R9 R20 K26 ["onActivated"]
      202 MOVE                             R21 R13
      203 CALL                             R21 0 1
      204 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      206 GETUPVAL                         R23 17
      207 GETTABLEKS                       R22 R23 K31 ["MessageActions"]
      209 GETTABLEKS                       R21 R22 K33 ["ThumbsDown"]
      211 SETTABLEKS                       R21 R20 K27 ["testId"]
      213 CALL                             R18 2 1
      214 SETTABLEKS                       R18 R17 K21 ["ThumbsDownButton"]
      216 GETUPVAL                         R18 14
      217 GETUPVAL                         R19 16
      218 DUPTABLE                         R20 K28 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      219 GETUPVAL                         R22 18
      220 GETTABLE                         R21 R22 R2
      221 SETTABLEKS                       R21 R20 K24 ["icon"]
      223 LOADK                            R21 K29 ["size-600-600 radius-small align-x-center align-y-center"]
      224 SETTABLEKS                       R21 R20 K16 ["tag"]
      226 LOADK                            R21 K30 ["size-400-400 content-system-neutral"]
      227 SETTABLEKS                       R21 R20 K25 ["iconTag"]
      229 SETTABLEKS                       R10 R20 K26 ["onActivated"]
      231 MOVE                             R21 R13
      232 CALL                             R21 0 1
      233 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      235 GETUPVAL                         R23 17
      236 GETTABLEKS                       R22 R23 K31 ["MessageActions"]
      238 GETTABLEKS                       R21 R22 K34 ["Retry"]
      240 SETTABLEKS                       R21 R20 K27 ["testId"]
      242 CALL                             R18 2 1
      243 SETTABLEKS                       R18 R17 K22 ["RetryButton"]
      245 CALL                             R14 3 -1
      246 CLOSEUPVALS                      R6
      247 RETURN                           R14 -1

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
       74 GETTABLEKS                       R11 R12 K21 ["useEditMessage"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K20 ["Hooks"]
       81 GETTABLEKS                       R12 R13 K22 ["useLogAssistantMessageSent"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R14 R0 K23 ["Flags"]
       88 GETTABLEKS                       R13 R14 K24 ["FFlagAssistantPersistConversations"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R3 K25 ["View"]
       93 GETTABLEKS                       R14 R5 K26 ["createNextOrder"]
       95 GETTABLEKS                       R15 R4 K27 ["createElement"]
       97 DUPTABLE                         R16 K30 [{"Dark", "Light"}]
       98 LOADK                            R17 K31 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUpOutline.png"]
       99 SETTABLEKS                       R17 R16 K28 ["Dark"]
      101 LOADK                            R17 K32 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUpOutline.png"]
      102 SETTABLEKS                       R17 R16 K29 ["Light"]
      104 DUPTABLE                         R17 K30 [{"Dark", "Light"}]
      105 LOADK                            R18 K33 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUp.png"]
      106 SETTABLEKS                       R18 R17 K28 ["Dark"]
      108 LOADK                            R18 K34 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUp.png"]
      109 SETTABLEKS                       R18 R17 K29 ["Light"]
      111 DUPTABLE                         R18 K30 [{"Dark", "Light"}]
      112 LOADK                            R19 K35 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDownOutline.png"]
      113 SETTABLEKS                       R19 R18 K28 ["Dark"]
      115 LOADK                            R19 K36 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDownOutline.png"]
      116 SETTABLEKS                       R19 R18 K29 ["Light"]
      118 DUPTABLE                         R19 K30 [{"Dark", "Light"}]
      119 LOADK                            R20 K37 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDown.png"]
      120 SETTABLEKS                       R20 R19 K28 ["Dark"]
      122 LOADK                            R20 K38 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDown.png"]
      123 SETTABLEKS                       R20 R19 K29 ["Light"]
      125 DUPTABLE                         R20 K30 [{"Dark", "Light"}]
      126 LOADK                            R21 K39 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/Regenerate.png"]
      127 SETTABLEKS                       R21 R20 K28 ["Dark"]
      129 LOADK                            R21 K40 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/Regenerate.png"]
      130 SETTABLEKS                       R21 R20 K29 ["Light"]
      132 DUPTABLE                         R21 K43 [{"Up", "Down"}]
      133 LOADK                            R22 K44 ["up"]
      134 SETTABLEKS                       R22 R21 K41 ["Up"]
      136 LOADK                            R22 K45 ["down"]
      137 SETTABLEKS                       R22 R21 K42 ["Down"]
      139 DUPCLOSURE                       R22 K46 [PROTO_7]
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R20
      159 RETURN                           R22 1
