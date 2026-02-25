PROTO_0:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+7]
        4 MOVE                             R3 R1
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R4 R0 K0 ["threads"]
        8 GETTABLE                         R3 R4 R1
        9 MOVE                             R2 R3
       10 JUMP                             ; [+4]
       11 MOVE                             R3 R1
       12 JUMPIFNOT                        R3 ; [+1]
       13 GETTABLE                         R3 R0 R1
       14 MOVE                             R2 R3
       15 JUMPIF                           R2 ; [+2]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R2 K1 ["messages"]
       20 RETURN                           R3 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 MOVE                             R3 R0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K0 ["role"]
       11 JUMPIFNOTEQKS                    R8 K1 ["assistant"] ; [+9]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       16 GETTABLEKS                       R9 R1 K2 ["LayoutOrder"]
       18 JUMPIFNOTLT                      R9 R8 ; [+2]
       20 MOVE                             R1 R7
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       24 GETTABLEKS                       R9 R2 K2 ["LayoutOrder"]
       26 JUMPIFNOTLT                      R9 R8 ; [+2]
       28 MOVE                             R2 R7
       29 FORGLOOP                         R3 2 ; [-21]
       31 JUMPIFNOT                        R1 ; [+10]
       32 JUMPIFNOT                        R2 ; [+9]
       33 GETTABLEKS                       R3 R1 K3 ["messageId"]
       35 GETTABLEKS                       R4 R2 K3 ["messageId"]
       37 JUMPIFNOTEQ                      R3 R4 ; [+4]
       39 GETTABLEKS                       R3 R1 K3 ["messageId"]
       41 RETURN                           R3 1
       42 LOADNIL                          R3
       43 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["current"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K0 ["current"]
       10 JUMPIFNOT                        R0 ; [+20]
       11 JUMPIFEQKS                       R0 K1 [""] ; [+19]
       13 GETUPVAL                         R1 2
       14 JUMPIFEQ                         R0 R1 ; [+16]
       16 GETUPVAL                         R1 3
       17 CALL                             R1 0 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R0 R1 K0 ["current"]
       22 GETUPVAL                         R1 2
       23 JUMPIFEQ                         R0 R1 ; [+7]
       25 GETUPVAL                         R0 1
       26 GETUPVAL                         R1 2
       27 SETTABLEKS                       R1 R0 K0 ["current"]
       29 GETUPVAL                         R0 3
       30 CALL                             R0 0 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["threadId"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K0 ["useContext"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K1 ["Context"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R4 K3 ["sessionId"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K4 ["useRef"]
       23 MOVE                             R7 R5
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 4
       26 CALL                             R7 0 1
       27 GETUPVAL                         R9 1
       28 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R7
       35 NEWTABLE                         R10 0 2
       37 MOVE                             R11 R7
       38 MOVE                             R12 R5
       39 SETLIST                          R10 R11 2 [1]
       41 CALL                             R8 2 0
       42 GETUPVAL                         R8 6
       43 CALL                             R8 0 1
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       47 NEWCLOSURE                       R10 P1
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R11 0 2
       52 MOVE                             R12 R3
       53 MOVE                             R13 R8
       54 SETLIST                          R11 R12 2 [1]
       56 CALL                             R9 2 0
       57 GETUPVAL                         R9 7
       58 MOVE                             R10 R1
       59 MOVE                             R11 R3
       60 CALL                             R9 2 0
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R9 R10 K0 ["useContext"]
       64 GETUPVAL                         R11 8
       65 GETTABLEKS                       R10 R11 K1 ["Context"]
       67 CALL                             R9 1 1
       68 GETUPVAL                         R10 9
       69 DUPTABLE                         R11 K7 [{"setInputEnabled"}]
       70 GETUPVAL                         R12 10
       71 MOVE                             R13 R9
       72 CALL                             R12 1 1
       73 SETTABLEKS                       R12 R11 K6 ["setInputEnabled"]
       75 CALL                             R10 1 1
       76 GETUPVAL                         R11 11
       77 CALL                             R11 0 1
       78 NEWTABLE                         R12 0 0
       80 LOADNIL                          R14
       81 GETUPVAL                         R15 5
       82 CALL                             R15 0 1
       83 JUMPIFNOT                        R15 ; [+7]
       84 MOVE                             R15 R3
       85 JUMPIFNOT                        R15 ; [+3]
       86 GETTABLEKS                       R16 R1 K8 ["threads"]
       88 GETTABLE                         R15 R16 R3
       89 MOVE                             R14 R15
       90 JUMP                             ; [+4]
       91 MOVE                             R15 R3
       92 JUMPIFNOT                        R15 ; [+1]
       93 GETTABLE                         R15 R1 R3
       94 MOVE                             R14 R15
       95 JUMPIF                           R14 ; [+2]
       96 LOADNIL                          R13
       97 JUMP                             ; [+2]
       98 GETTABLEKS                       R13 R14 K9 ["messages"]
      100 JUMPIFNOT                        R13 ; [+48]
      101 GETUPVAL                         R14 12
      102 MOVE                             R15 R13
      103 CALL                             R14 1 1
      104 MOVE                             R15 R13
      105 LOADNIL                          R16
      106 LOADNIL                          R17
      107 FORGPREP                         R15
      108 GETTABLEKS                       R20 R19 K10 ["hidden"]
      110 JUMPIF                           R20 ; [+36]
      111 GETUPVAL                         R22 13
      112 GETTABLEKS                       R21 R22 K11 ["Dictionary"]
      114 GETTABLEKS                       R20 R21 K12 ["join"]
      116 MOVE                             R21 R19
      117 DUPTABLE                         R22 K16 [{"retryMessage", "sendMessage", "isLatestAssistantAndMostRecent"}]
      118 SETTABLEKS                       R11 R22 K13 ["retryMessage"]
      120 SETTABLEKS                       R10 R22 K14 ["sendMessage"]
      122 JUMPIFEQ                         R18 R14 ; [+2]
      124 LOADB                            R23 0 +1
      125 LOADB                            R23 1
      126 SETTABLEKS                       R23 R22 K15 ["isLatestAssistantAndMostRecent"]
      128 CALL                             R20 2 1
      129 GETUPVAL                         R22 5
      130 CALL                             R22 0 1
      131 JUMPIFNOT                        R22 ; [+9]
      132 GETIMPORT                        R21 K19 [string.format]
      134 LOADK                            R22 K20 ["Message-%04i-%s"]
      135 GETTABLEKS                       R24 R20 K22 ["LayoutOrder"]
      137 ORK                              R23 R24 K21 [0]
      138 MOVE                             R24 R18
      139 CALL                             R21 3 1
      140 JUMP                             ; [+1]
      141 MOVE                             R21 R18
      142 GETUPVAL                         R22 14
      143 GETUPVAL                         R23 15
      144 MOVE                             R24 R20
      145 CALL                             R22 2 1
      146 SETTABLE                         R22 R12 R21
      147 FORGLOOP                         R15 2 ; [-40]
      149 GETUPVAL                         R15 16
      150 GETTABLEKS                       R14 R15 K23 ["assign"]
      152 MOVE                             R15 R12
      153 DUPTABLE                         R16 K25 [{"UIPadding"}]
      154 GETUPVAL                         R17 14
      155 LOADK                            R18 K24 ["UIPadding"]
      156 DUPTABLE                         R19 K30 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      157 GETIMPORT                        R20 K33 [UDim.new]
      159 LOADN                            R21 0
      160 LOADN                            R22 20
      161 CALL                             R20 2 1
      162 SETTABLEKS                       R20 R19 K26 ["PaddingTop"]
      164 GETIMPORT                        R20 K33 [UDim.new]
      166 LOADN                            R21 0
      167 LOADN                            R22 20
      168 CALL                             R20 2 1
      169 SETTABLEKS                       R20 R19 K27 ["PaddingBottom"]
      171 GETIMPORT                        R20 K33 [UDim.new]
      173 LOADN                            R21 0
      174 LOADN                            R22 20
      175 CALL                             R20 2 1
      176 SETTABLEKS                       R20 R19 K28 ["PaddingLeft"]
      178 GETIMPORT                        R20 K33 [UDim.new]
      180 LOADN                            R21 0
      181 LOADN                            R22 20
      182 CALL                             R20 2 1
      183 SETTABLEKS                       R20 R19 K29 ["PaddingRight"]
      185 CALL                             R17 2 1
      186 SETTABLEKS                       R17 R16 K24 ["UIPadding"]
      188 CALL                             R14 2 1
      189 GETUPVAL                         R15 14
      190 GETUPVAL                         R16 17
      191 DUPTABLE                         R17 K40 [{"tag", "layout", "scroll", "scrollingFrameRef", "onAbsoluteCanvasSizeChanged", "onCanvasPositionChanged"}]
      192 LOADK                            R18 K41 ["size-full-full"]
      193 SETTABLEKS                       R18 R17 K34 ["tag"]
      195 DUPTABLE                         R18 K45 [{"FillDirection", "SortOrder", "Padding"}]
      196 GETIMPORT                        R19 K48 [Enum.FillDirection.Vertical]
      198 SETTABLEKS                       R19 R18 K42 ["FillDirection"]
      200 GETIMPORT                        R19 K49 [Enum.SortOrder.LayoutOrder]
      202 SETTABLEKS                       R19 R18 K43 ["SortOrder"]
      204 GETIMPORT                        R19 K33 [UDim.new]
      206 LOADN                            R20 0
      207 LOADN                            R21 24
      208 CALL                             R19 2 1
      209 SETTABLEKS                       R19 R18 K44 ["Padding"]
      211 SETTABLEKS                       R18 R17 K35 ["layout"]
      213 DUPTABLE                         R18 K53 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      214 GETIMPORT                        R19 K56 [Enum.AutomaticSize.Y]
      216 SETTABLEKS                       R19 R18 K50 ["AutomaticCanvasSize"]
      218 GETIMPORT                        R19 K59 [UDim2.fromScale]
      220 LOADN                            R20 1
      221 LOADN                            R21 0
      222 CALL                             R19 2 1
      223 SETTABLEKS                       R19 R18 K51 ["CanvasSize"]
      225 GETIMPORT                        R19 K60 [Enum.ScrollingDirection.Y]
      227 SETTABLEKS                       R19 R18 K52 ["ScrollingDirection"]
      229 SETTABLEKS                       R18 R17 K36 ["scroll"]
      231 GETTABLEKS                       R18 R0 K37 ["scrollingFrameRef"]
      233 SETTABLEKS                       R18 R17 K37 ["scrollingFrameRef"]
      235 GETTABLEKS                       R18 R0 K38 ["onAbsoluteCanvasSizeChanged"]
      237 SETTABLEKS                       R18 R17 K38 ["onAbsoluteCanvasSizeChanged"]
      239 GETTABLEKS                       R18 R0 K39 ["onCanvasPositionChanged"]
      241 SETTABLEKS                       R18 R17 K39 ["onCanvasPositionChanged"]
      243 MOVE                             R18 R14
      244 CALL                             R15 3 -1
      245 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K12 ["InputStateContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Components"]
       41 GETTABLEKS                       R6 R7 K13 ["MessageWidget"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R8 K14 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K10 ["Components"]
       55 GETTABLEKS                       R9 R10 K11 ["Contexts"]
       57 GETTABLEKS                       R8 R9 K15 ["SessionIdContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K10 ["Components"]
       64 GETTABLEKS                       R10 R11 K11 ["Contexts"]
       66 GETTABLEKS                       R9 R10 K16 ["ThreadIdContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K17 ["Types"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K18 ["Util"]
       78 GETTABLEKS                       R11 R12 K19 ["getToggleGenerationInputFunc"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R13 R0 K20 ["Hooks"]
       85 GETTABLEKS                       R12 R13 K21 ["useAddThread"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R14 R0 K20 ["Hooks"]
       92 GETTABLEKS                       R13 R14 K22 ["useClearConversation"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R15 R0 K20 ["Hooks"]
       99 GETTABLEKS                       R14 R15 K23 ["useConversation"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R16 R0 K20 ["Hooks"]
      106 GETTABLEKS                       R15 R16 K24 ["useRetryMessage"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R17 R0 K20 ["Hooks"]
      113 GETTABLEKS                       R16 R17 K25 ["useSendMessage"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R18 R0 K20 ["Hooks"]
      120 GETTABLEKS                       R17 R18 K26 ["useWelcomeMessage"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R19 R0 K27 ["Flags"]
      127 GETTABLEKS                       R18 R19 K28 ["FFlagAssistantMultipleChatSupport"]
      129 CALL                             R17 1 1
      130 GETTABLEKS                       R18 R3 K29 ["ScrollView"]
      132 GETTABLEKS                       R19 R6 K30 ["createElement"]
      134 DUPCLOSURE                       R20 K31 [PROTO_0]
      135 CAPTURE                          VAL R17
      136 DUPCLOSURE                       R21 K32 [PROTO_1]
      137 DUPCLOSURE                       R22 K33 [PROTO_4]
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R18
      156 RETURN                           R22 1
