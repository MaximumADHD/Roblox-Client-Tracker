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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["threadId"]
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 JUMPIF                           R4 ; [+30]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K0 ["useContext"]
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R5 R6 K1 ["Context"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R4 K3 ["sessionId"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K4 ["useRef"]
       26 MOVE                             R7 R5
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 5
       29 CALL                             R7 0 1
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R7
       37 NEWTABLE                         R10 0 2
       39 MOVE                             R11 R7
       40 MOVE                             R12 R5
       41 SETLIST                          R10 R11 2 [1]
       43 CALL                             R8 2 0
       44 GETUPVAL                         R4 6
       45 CALL                             R4 0 1
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R5 R6 K5 ["useEffect"]
       49 NEWCLOSURE                       R6 P1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 NEWTABLE                         R7 0 2
       54 MOVE                             R8 R3
       55 MOVE                             R9 R4
       56 SETLIST                          R7 R8 2 [1]
       58 CALL                             R5 2 0
       59 GETUPVAL                         R5 7
       60 MOVE                             R6 R1
       61 MOVE                             R7 R3
       62 CALL                             R5 2 0
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R5 R6 K0 ["useContext"]
       66 GETUPVAL                         R7 8
       67 GETTABLEKS                       R6 R7 K1 ["Context"]
       69 CALL                             R5 1 1
       70 GETUPVAL                         R6 9
       71 DUPTABLE                         R7 K7 [{"setInputEnabled"}]
       72 GETUPVAL                         R8 10
       73 MOVE                             R9 R5
       74 CALL                             R8 1 1
       75 SETTABLEKS                       R8 R7 K6 ["setInputEnabled"]
       77 CALL                             R6 1 1
       78 GETUPVAL                         R7 11
       79 CALL                             R7 0 1
       80 DUPTABLE                         R8 K9 [{"UIPadding"}]
       81 GETUPVAL                         R9 12
       82 LOADK                            R10 K8 ["UIPadding"]
       83 DUPTABLE                         R11 K14 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       84 GETIMPORT                        R12 K17 [UDim.new]
       86 LOADN                            R13 0
       87 LOADN                            R14 20
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K10 ["PaddingTop"]
       91 GETIMPORT                        R12 K17 [UDim.new]
       93 LOADN                            R13 0
       94 LOADN                            R14 20
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K11 ["PaddingBottom"]
       98 GETIMPORT                        R12 K17 [UDim.new]
      100 LOADN                            R13 0
      101 LOADN                            R14 20
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K12 ["PaddingLeft"]
      105 GETIMPORT                        R12 K17 [UDim.new]
      107 LOADN                            R13 0
      108 LOADN                            R14 20
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K13 ["PaddingRight"]
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K8 ["UIPadding"]
      115 LOADNIL                          R10
      116 GETUPVAL                         R11 3
      117 CALL                             R11 0 1
      118 JUMPIFNOT                        R11 ; [+7]
      119 MOVE                             R11 R3
      120 JUMPIFNOT                        R11 ; [+3]
      121 GETTABLEKS                       R12 R1 K18 ["threads"]
      123 GETTABLE                         R11 R12 R3
      124 MOVE                             R10 R11
      125 JUMP                             ; [+4]
      126 MOVE                             R11 R3
      127 JUMPIFNOT                        R11 ; [+1]
      128 GETTABLE                         R11 R1 R3
      129 MOVE                             R10 R11
      130 JUMPIF                           R10 ; [+2]
      131 LOADNIL                          R9
      132 JUMP                             ; [+2]
      133 GETTABLEKS                       R9 R10 K19 ["messages"]
      135 JUMPIFNOT                        R9 ; [+48]
      136 GETUPVAL                         R10 13
      137 MOVE                             R11 R9
      138 CALL                             R10 1 1
      139 MOVE                             R11 R9
      140 LOADNIL                          R12
      141 LOADNIL                          R13
      142 FORGPREP                         R11
      143 GETTABLEKS                       R16 R15 K20 ["hidden"]
      145 JUMPIF                           R16 ; [+36]
      146 GETUPVAL                         R18 14
      147 GETTABLEKS                       R17 R18 K21 ["Dictionary"]
      149 GETTABLEKS                       R16 R17 K22 ["join"]
      151 MOVE                             R17 R15
      152 DUPTABLE                         R18 K26 [{"retryMessage", "sendMessage", "isLatestAssistantAndMostRecent"}]
      153 SETTABLEKS                       R7 R18 K23 ["retryMessage"]
      155 SETTABLEKS                       R6 R18 K24 ["sendMessage"]
      157 JUMPIFEQ                         R14 R10 ; [+2]
      159 LOADB                            R19 0 +1
      160 LOADB                            R19 1
      161 SETTABLEKS                       R19 R18 K25 ["isLatestAssistantAndMostRecent"]
      163 CALL                             R16 2 1
      164 GETUPVAL                         R18 3
      165 CALL                             R18 0 1
      166 JUMPIFNOT                        R18 ; [+9]
      167 GETIMPORT                        R17 K29 [string.format]
      169 LOADK                            R18 K30 ["Message-%04i-%s"]
      170 GETTABLEKS                       R20 R16 K32 ["LayoutOrder"]
      172 ORK                              R19 R20 K31 [0]
      173 MOVE                             R20 R14
      174 CALL                             R17 3 1
      175 JUMP                             ; [+1]
      176 MOVE                             R17 R14
      177 GETUPVAL                         R18 12
      178 GETUPVAL                         R19 15
      179 MOVE                             R20 R16
      180 CALL                             R18 2 1
      181 SETTABLE                         R18 R8 R17
      182 FORGLOOP                         R11 2 ; [-40]
      184 GETUPVAL                         R10 12
      185 GETUPVAL                         R11 16
      186 DUPTABLE                         R12 K39 [{"tag", "layout", "scroll", "scrollingFrameRef", "onAbsoluteCanvasSizeChanged", "onCanvasPositionChanged"}]
      187 LOADK                            R13 K40 ["size-full-full"]
      188 SETTABLEKS                       R13 R12 K33 ["tag"]
      190 DUPTABLE                         R13 K44 [{"FillDirection", "SortOrder", "Padding"}]
      191 GETIMPORT                        R14 K47 [Enum.FillDirection.Vertical]
      193 SETTABLEKS                       R14 R13 K41 ["FillDirection"]
      195 GETIMPORT                        R14 K48 [Enum.SortOrder.LayoutOrder]
      197 SETTABLEKS                       R14 R13 K42 ["SortOrder"]
      199 GETUPVAL                         R15 3
      200 CALL                             R15 0 1
      201 JUMPIFNOT                        R15 ; [+6]
      202 GETIMPORT                        R14 K17 [UDim.new]
      204 LOADN                            R15 0
      205 LOADN                            R16 12
      206 CALL                             R14 2 1
      207 JUMP                             ; [+5]
      208 GETIMPORT                        R14 K17 [UDim.new]
      210 LOADN                            R15 0
      211 LOADN                            R16 24
      212 CALL                             R14 2 1
      213 SETTABLEKS                       R14 R13 K43 ["Padding"]
      215 SETTABLEKS                       R13 R12 K34 ["layout"]
      217 DUPTABLE                         R13 K52 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      218 GETIMPORT                        R14 K55 [Enum.AutomaticSize.Y]
      220 SETTABLEKS                       R14 R13 K49 ["AutomaticCanvasSize"]
      222 GETIMPORT                        R14 K58 [UDim2.fromScale]
      224 LOADN                            R15 1
      225 LOADN                            R16 0
      226 CALL                             R14 2 1
      227 SETTABLEKS                       R14 R13 K50 ["CanvasSize"]
      229 GETIMPORT                        R14 K59 [Enum.ScrollingDirection.Y]
      231 SETTABLEKS                       R14 R13 K51 ["ScrollingDirection"]
      233 SETTABLEKS                       R13 R12 K35 ["scroll"]
      235 GETTABLEKS                       R13 R0 K36 ["scrollingFrameRef"]
      237 SETTABLEKS                       R13 R12 K36 ["scrollingFrameRef"]
      239 GETTABLEKS                       R13 R0 K37 ["onAbsoluteCanvasSizeChanged"]
      241 SETTABLEKS                       R13 R12 K37 ["onAbsoluteCanvasSizeChanged"]
      243 GETTABLEKS                       R13 R0 K38 ["onCanvasPositionChanged"]
      245 SETTABLEKS                       R13 R12 K38 ["onCanvasPositionChanged"]
      247 MOVE                             R13 R8
      248 CALL                             R10 3 -1
      249 RETURN                           R10 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["InputStateContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Components"]
       34 GETTABLEKS                       R5 R6 K12 ["MessageWidget"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R7 K13 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K9 ["Components"]
       48 GETTABLEKS                       R8 R9 K10 ["Contexts"]
       50 GETTABLEKS                       R7 R8 K14 ["SessionIdContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K9 ["Components"]
       57 GETTABLEKS                       R9 R10 K10 ["Contexts"]
       59 GETTABLEKS                       R8 R9 K15 ["ThreadIdContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K16 ["Types"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K17 ["Util"]
       71 GETTABLEKS                       R10 R11 K18 ["getToggleGenerationInputFunc"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       78 GETTABLEKS                       R11 R12 K20 ["useAddThread"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       85 GETTABLEKS                       R12 R13 K21 ["useClearConversation"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R14 R0 K19 ["Hooks"]
       92 GETTABLEKS                       R13 R14 K22 ["useConversation"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R15 R0 K19 ["Hooks"]
       99 GETTABLEKS                       R14 R15 K23 ["useRetryMessage"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R16 R0 K19 ["Hooks"]
      106 GETTABLEKS                       R15 R16 K24 ["useSendMessage"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R17 R0 K19 ["Hooks"]
      113 GETTABLEKS                       R16 R17 K25 ["useWelcomeMessage"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R18 R0 K26 ["Flags"]
      120 GETTABLEKS                       R17 R18 K27 ["FFlagAssistantMultipleChatSupport"]
      122 CALL                             R16 1 1
      123 GETTABLEKS                       R17 R2 K28 ["ScrollView"]
      125 GETTABLEKS                       R18 R5 K29 ["createElement"]
      127 DUPCLOSURE                       R19 K30 [PROTO_0]
      128 CAPTURE                          VAL R16
      129 DUPCLOSURE                       R20 K31 [PROTO_1]
      130 DUPCLOSURE                       R21 K32 [PROTO_4]
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R17
      148 RETURN                           R21 1
