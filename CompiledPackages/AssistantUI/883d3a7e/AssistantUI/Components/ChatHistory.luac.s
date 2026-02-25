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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["conversation"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["useContext"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K1 ["Context"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R3 K3 ["threadId"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["useContext"]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R6 R7 K1 ["Context"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R5 K4 ["sessionId"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K5 ["useRef"]
       30 MOVE                             R8 R6
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 4
       33 CALL                             R8 0 1
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R9 R10 K6 ["useEffect"]
       37 NEWCLOSURE                       R10 P0
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R8
       41 NEWTABLE                         R11 0 2
       43 MOVE                             R12 R8
       44 MOVE                             R13 R6
       45 SETLIST                          R11 R12 2 [1]
       47 CALL                             R9 2 0
       48 GETUPVAL                         R9 5
       49 CALL                             R9 0 1
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R10 R11 K6 ["useEffect"]
       53 NEWCLOSURE                       R11 P1
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R12 0 2
       58 MOVE                             R13 R4
       59 MOVE                             R14 R9
       60 SETLIST                          R12 R13 2 [1]
       62 CALL                             R10 2 0
       63 GETUPVAL                         R10 6
       64 MOVE                             R11 R2
       65 MOVE                             R12 R4
       66 CALL                             R10 2 0
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R10 R11 K0 ["useContext"]
       70 GETUPVAL                         R12 7
       71 GETTABLEKS                       R11 R12 K1 ["Context"]
       73 CALL                             R10 1 1
       74 GETUPVAL                         R11 8
       75 DUPTABLE                         R12 K8 [{"setInputEnabled"}]
       76 GETUPVAL                         R13 9
       77 MOVE                             R14 R10
       78 CALL                             R13 1 1
       79 SETTABLEKS                       R13 R12 K7 ["setInputEnabled"]
       81 CALL                             R11 1 1
       82 GETUPVAL                         R12 10
       83 CALL                             R12 0 1
       84 NEWTABLE                         R13 0 0
       86 LOADNIL                          R15
       87 GETUPVAL                         R16 11
       88 CALL                             R16 0 1
       89 JUMPIFNOT                        R16 ; [+7]
       90 MOVE                             R16 R4
       91 JUMPIFNOT                        R16 ; [+3]
       92 GETTABLEKS                       R17 R2 K9 ["threads"]
       94 GETTABLE                         R16 R17 R4
       95 MOVE                             R15 R16
       96 JUMP                             ; [+4]
       97 MOVE                             R16 R4
       98 JUMPIFNOT                        R16 ; [+1]
       99 GETTABLE                         R16 R2 R4
      100 MOVE                             R15 R16
      101 JUMPIF                           R15 ; [+2]
      102 LOADNIL                          R14
      103 JUMP                             ; [+2]
      104 GETTABLEKS                       R14 R15 K10 ["messages"]
      106 JUMPIFNOT                        R14 ; [+35]
      107 GETUPVAL                         R15 12
      108 MOVE                             R16 R14
      109 CALL                             R15 1 1
      110 MOVE                             R16 R14
      111 LOADNIL                          R17
      112 LOADNIL                          R18
      113 FORGPREP                         R16
      114 GETTABLEKS                       R21 R20 K11 ["hidden"]
      116 JUMPIF                           R21 ; [+23]
      117 GETUPVAL                         R23 13
      118 GETTABLEKS                       R22 R23 K12 ["Dictionary"]
      120 GETTABLEKS                       R21 R22 K13 ["join"]
      122 MOVE                             R22 R20
      123 DUPTABLE                         R23 K17 [{"retryMessage", "sendMessage", "isLatestAssistantAndMostRecent"}]
      124 SETTABLEKS                       R12 R23 K14 ["retryMessage"]
      126 SETTABLEKS                       R11 R23 K15 ["sendMessage"]
      128 JUMPIFEQ                         R19 R15 ; [+2]
      130 LOADB                            R24 0 +1
      131 LOADB                            R24 1
      132 SETTABLEKS                       R24 R23 K16 ["isLatestAssistantAndMostRecent"]
      134 CALL                             R21 2 1
      135 GETUPVAL                         R22 14
      136 GETUPVAL                         R23 15
      137 MOVE                             R24 R21
      138 CALL                             R22 2 1
      139 SETTABLE                         R22 R13 R19
      140 FORGLOOP                         R16 2 ; [-27]
      142 GETUPVAL                         R16 16
      143 GETTABLEKS                       R15 R16 K18 ["assign"]
      145 MOVE                             R16 R13
      146 DUPTABLE                         R17 K20 [{"UIPadding"}]
      147 GETUPVAL                         R18 14
      148 LOADK                            R19 K19 ["UIPadding"]
      149 DUPTABLE                         R20 K25 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      150 GETIMPORT                        R21 K28 [UDim.new]
      152 LOADN                            R22 0
      153 LOADN                            R23 20
      154 CALL                             R21 2 1
      155 SETTABLEKS                       R21 R20 K21 ["PaddingTop"]
      157 GETIMPORT                        R21 K28 [UDim.new]
      159 LOADN                            R22 0
      160 LOADN                            R23 20
      161 CALL                             R21 2 1
      162 SETTABLEKS                       R21 R20 K22 ["PaddingBottom"]
      164 GETIMPORT                        R21 K28 [UDim.new]
      166 LOADN                            R22 0
      167 LOADN                            R23 20
      168 CALL                             R21 2 1
      169 SETTABLEKS                       R21 R20 K23 ["PaddingLeft"]
      171 GETIMPORT                        R21 K28 [UDim.new]
      173 LOADN                            R22 0
      174 LOADN                            R23 20
      175 CALL                             R21 2 1
      176 SETTABLEKS                       R21 R20 K24 ["PaddingRight"]
      178 CALL                             R18 2 1
      179 SETTABLEKS                       R18 R17 K19 ["UIPadding"]
      181 CALL                             R15 2 1
      182 GETUPVAL                         R16 14
      183 GETUPVAL                         R17 17
      184 DUPTABLE                         R18 K35 [{"tag", "layout", "scroll", "scrollingFrameRef", "onAbsoluteCanvasSizeChanged", "onCanvasPositionChanged"}]
      185 LOADK                            R19 K36 ["size-full-full"]
      186 SETTABLEKS                       R19 R18 K29 ["tag"]
      188 DUPTABLE                         R19 K40 [{"FillDirection", "SortOrder", "Padding"}]
      189 GETIMPORT                        R20 K43 [Enum.FillDirection.Vertical]
      191 SETTABLEKS                       R20 R19 K37 ["FillDirection"]
      193 GETIMPORT                        R20 K45 [Enum.SortOrder.LayoutOrder]
      195 SETTABLEKS                       R20 R19 K38 ["SortOrder"]
      197 GETIMPORT                        R20 K28 [UDim.new]
      199 LOADN                            R21 0
      200 LOADN                            R22 24
      201 CALL                             R20 2 1
      202 SETTABLEKS                       R20 R19 K39 ["Padding"]
      204 SETTABLEKS                       R19 R18 K30 ["layout"]
      206 DUPTABLE                         R19 K49 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      207 GETIMPORT                        R20 K52 [Enum.AutomaticSize.Y]
      209 SETTABLEKS                       R20 R19 K46 ["AutomaticCanvasSize"]
      211 GETIMPORT                        R20 K55 [UDim2.fromScale]
      213 LOADN                            R21 1
      214 LOADN                            R22 0
      215 CALL                             R20 2 1
      216 SETTABLEKS                       R20 R19 K47 ["CanvasSize"]
      218 GETIMPORT                        R20 K56 [Enum.ScrollingDirection.Y]
      220 SETTABLEKS                       R20 R19 K48 ["ScrollingDirection"]
      222 SETTABLEKS                       R19 R18 K31 ["scroll"]
      224 GETTABLEKS                       R19 R0 K32 ["scrollingFrameRef"]
      226 SETTABLEKS                       R19 R18 K32 ["scrollingFrameRef"]
      228 GETTABLEKS                       R19 R0 K33 ["onAbsoluteCanvasSizeChanged"]
      230 SETTABLEKS                       R19 R18 K33 ["onAbsoluteCanvasSizeChanged"]
      232 GETTABLEKS                       R19 R0 K34 ["onCanvasPositionChanged"]
      234 SETTABLEKS                       R19 R18 K34 ["onCanvasPositionChanged"]
      236 MOVE                             R19 R15
      237 CALL                             R16 3 -1
      238 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["Dash"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R6 K12 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Components"]
       41 GETTABLEKS                       R7 R8 K7 ["Contexts"]
       43 GETTABLEKS                       R6 R7 K13 ["InputStateContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K6 ["Components"]
       50 GETTABLEKS                       R7 R8 K14 ["MessageWidget"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K9 ["Parent"]
       57 GETTABLEKS                       R8 R9 K15 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K6 ["Components"]
       64 GETTABLEKS                       R10 R11 K7 ["Contexts"]
       66 GETTABLEKS                       R9 R10 K16 ["SessionIdContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R12 R0 K6 ["Components"]
       73 GETTABLEKS                       R11 R12 K7 ["Contexts"]
       75 GETTABLEKS                       R10 R11 K17 ["ThreadIdContext"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K18 ["Types"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R13 R0 K19 ["Util"]
       87 GETTABLEKS                       R12 R13 K20 ["getToggleGenerationInputFunc"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R14 R0 K21 ["Hooks"]
       94 GETTABLEKS                       R13 R14 K22 ["useAddThread"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R15 R0 K21 ["Hooks"]
      101 GETTABLEKS                       R14 R15 K23 ["useClearConversation"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R16 R0 K21 ["Hooks"]
      108 GETTABLEKS                       R15 R16 K24 ["useRetryMessage"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R17 R0 K21 ["Hooks"]
      115 GETTABLEKS                       R16 R17 K25 ["useSendMessage"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R18 R0 K21 ["Hooks"]
      122 GETTABLEKS                       R17 R18 K26 ["useWelcomeMessage"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R19 R0 K27 ["Flags"]
      129 GETTABLEKS                       R18 R19 K28 ["FFlagAssistantMultipleChatSupport"]
      131 CALL                             R17 1 1
      132 GETTABLEKS                       R18 R4 K29 ["ScrollView"]
      134 GETTABLEKS                       R19 R7 K30 ["createElement"]
      136 DUPCLOSURE                       R20 K31 [PROTO_0]
      137 CAPTURE                          VAL R17
      138 DUPCLOSURE                       R21 K32 [PROTO_1]
      139 DUPCLOSURE                       R22 K33 [PROTO_4]
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R18
      158 RETURN                           R22 1
