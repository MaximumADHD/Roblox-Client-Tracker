PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{"messageId", "contentId", "transformFn"}]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["messageId"]
        5 SETTABLEKS                       R4 R3 K0 ["messageId"]
        7 SETTABLEKS                       R0 R3 K1 ["contentId"]
        9 SETTABLEKS                       R1 R3 K2 ["transformFn"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 8 0
        2 LOADB                            R1 1
        3 SETTABLEKS                       R1 R0 K0 ["size-full-0 auto-y"]
        5 GETUPVAL                         R1 0
        6 SETTABLEKS                       R1 R0 K1 ["padding-left-large"]
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+1]
       11 GETUPVAL                         R1 0
       12 SETTABLEKS                       R1 R0 K2 ["align-x-right"]
       14 GETUPVAL                         R2 0
       15 NOT                              R1 R2
       16 SETTABLEKS                       R1 R0 K3 ["col gap-small"]
       18 LOADB                            R1 1
       19 SETTABLEKS                       R1 R0 K4 ["Assistant-MessageWidget"]
       21 GETUPVAL                         R1 0
       22 SETTABLEKS                       R1 R0 K5 ["Assistant-UserMessage"]
       24 GETUPVAL                         R2 0
       25 NOT                              R1 R2
       26 SETTABLEKS                       R1 R0 K6 ["Assistant-AssistantMessage"]
       28 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R0 K2 ["role"]
       11 JUMPIFEQKS                       R4 K3 ["user"] ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 NEWTABLE                         R4 0 0
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R7 0 2
       25 MOVE                             R8 R1
       26 GETTABLEKS                       R9 R0 K5 ["messageId"]
       28 SETLIST                          R7 R8 2 [1]
       30 CALL                             R5 2 1
       31 LOADN                            R6 0
       32 GETTABLEKS                       R7 R0 K6 ["contents"]
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 GETUPVAL                         R13 3
       38 GETTABLEKS                       R12 R13 K7 ["get"]
       40 GETTABLEKS                       R13 R11 K8 ["type"]
       42 CALL                             R12 1 1
       43 JUMPIFNOT                        R12 ; [+77]
       44 GETUPVAL                         R13 4
       45 CALL                             R13 0 1
       46 JUMPIFNOT                        R13 ; [+36]
       47 GETUPVAL                         R14 5
       48 GETTABLEKS                       R13 R14 K9 ["assign"]
       50 DUPTABLE                         R14 K13 [{"messageId", "contentId", "role", "editThisContent", "sendMessage"}]
       51 GETTABLEKS                       R15 R0 K5 ["messageId"]
       53 SETTABLEKS                       R15 R14 K5 ["messageId"]
       55 SETTABLEKS                       R10 R14 K10 ["contentId"]
       57 GETTABLEKS                       R15 R0 K2 ["role"]
       59 SETTABLEKS                       R15 R14 K2 ["role"]
       61 SETTABLEKS                       R5 R14 K11 ["editThisContent"]
       63 GETTABLEKS                       R15 R0 K12 ["sendMessage"]
       65 SETTABLEKS                       R15 R14 K12 ["sendMessage"]
       67 MOVE                             R15 R11
       68 CALL                             R13 2 1
       69 GETIMPORT                        R14 K16 [string.format]
       71 LOADK                            R15 K17 ["Content-%04i-%s"]
       72 GETTABLEKS                       R17 R13 K19 ["LayoutOrder"]
       74 ORK                              R16 R17 K18 [0]
       75 MOVE                             R17 R10
       76 CALL                             R14 3 1
       77 GETUPVAL                         R15 6
       78 MOVE                             R16 R12
       79 MOVE                             R17 R13
       80 CALL                             R15 2 1
       81 SETTABLE                         R15 R4 R14
       82 JUMP                             ; [+28]
       83 GETUPVAL                         R13 6
       84 MOVE                             R14 R12
       85 GETUPVAL                         R17 7
       86 GETTABLEKS                       R16 R17 K20 ["Dictionary"]
       88 GETTABLEKS                       R15 R16 K21 ["join"]
       90 MOVE                             R16 R11
       91 DUPTABLE                         R17 K13 [{"messageId", "contentId", "role", "editThisContent", "sendMessage"}]
       92 GETTABLEKS                       R18 R0 K5 ["messageId"]
       94 SETTABLEKS                       R18 R17 K5 ["messageId"]
       96 SETTABLEKS                       R10 R17 K10 ["contentId"]
       98 GETTABLEKS                       R18 R0 K2 ["role"]
      100 SETTABLEKS                       R18 R17 K2 ["role"]
      102 SETTABLEKS                       R5 R17 K11 ["editThisContent"]
      104 GETTABLEKS                       R18 R0 K12 ["sendMessage"]
      106 SETTABLEKS                       R18 R17 K12 ["sendMessage"]
      108 CALL                             R15 2 -1
      109 CALL                             R13 -1 1
      110 SETTABLE                         R13 R4 R10
      111 GETTABLEKS                       R13 R11 K19 ["LayoutOrder"]
      113 JUMPIFNOT                        R13 ; [+13]
      114 GETTABLEKS                       R13 R11 K19 ["LayoutOrder"]
      116 JUMPIFNOTLT                      R6 R13 ; [+10]
      118 GETTABLEKS                       R6 R11 K19 ["LayoutOrder"]
      120 JUMP                             ; [+6]
      121 GETIMPORT                        R13 K23 [warn]
      123 LOADK                            R14 K24 ["No builder for content type:"]
      124 GETTABLEKS                       R15 R11 K8 ["type"]
      126 CALL                             R13 2 0
      127 FORGLOOP                         R7 2 ; [-91]
      129 LOADB                            R7 0
      130 GETTABLEKS                       R8 R0 K6 ["contents"]
      132 LOADNIL                          R9
      133 LOADNIL                          R10
      134 FORGPREP                         R8
      135 GETTABLEKS                       R13 R12 K25 ["generating"]
      137 JUMPIFNOT                        R13 ; [+2]
      138 LOADB                            R7 1
      139 JUMP                             ; [+2]
      140 FORGLOOP                         R8 2 ; [-6]
      142 GETTABLEKS                       R8 R2 K26 ["reasonDisabled"]
      144 JUMPIFNOT                        R8 ; [+4]
      145 GETTABLEKS                       R9 R2 K26 ["reasonDisabled"]
      147 GETTABLEKS                       R8 R9 K26 ["reasonDisabled"]
      149 GETTABLEKS                       R9 R0 K27 ["isLatestAssistantAndMostRecent"]
      151 JUMPIFNOT                        R9 ; [+14]
      152 GETUPVAL                         R10 8
      153 GETTABLEKS                       R9 R10 K28 ["Generation"]
      155 JUMPIFNOTEQ                      R8 R9 ; [+10]
      157 GETUPVAL                         R9 6
      158 GETUPVAL                         R10 9
      159 DUPTABLE                         R11 K29 [{"LayoutOrder"}]
      160 ADDK                             R12 R6 K30 [1]
      161 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
      163 CALL                             R9 2 1
      164 SETTABLEKS                       R9 R4 K31 ["GenerationIndicator"]
      166 GETTABLEKS                       R9 R0 K27 ["isLatestAssistantAndMostRecent"]
      168 JUMPIFNOT                        R9 ; [+4]
      169 GETTABLEKS                       R9 R2 K32 ["inputEnabled"]
      171 JUMPIFNOT                        R9 ; [+1]
      172 NOT                              R9 R7
      173 JUMPIFNOT                        R9 ; [+26]
      174 GETUPVAL                         R10 6
      175 GETUPVAL                         R11 10
      176 DUPTABLE                         R12 K35 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState"}]
      177 ADDK                             R13 R6 K36 [2]
      178 SETTABLEKS                       R13 R12 K19 ["LayoutOrder"]
      180 GETTABLEKS                       R13 R0 K33 ["retryMessage"]
      182 SETTABLEKS                       R13 R12 K33 ["retryMessage"]
      184 GETTABLEKS                       R13 R0 K5 ["messageId"]
      186 SETTABLEKS                       R13 R12 K5 ["messageId"]
      188 GETUPVAL                         R14 11
      189 CALL                             R14 0 1
      190 JUMPIFNOT                        R14 ; [+3]
      191 GETTABLEKS                       R13 R0 K34 ["thumbsState"]
      193 JUMP                             ; [+1]
      194 LOADNIL                          R13
      195 SETTABLEKS                       R13 R12 K34 ["thumbsState"]
      197 CALL                             R10 2 1
      198 SETTABLEKS                       R10 R4 K37 ["MessageActions"]
      200 GETUPVAL                         R11 1
      201 GETTABLEKS                       R10 R11 K38 ["useMemo"]
      203 NEWCLOSURE                       R11 P1
      204 CAPTURE                          VAL R3
      205 CAPTURE                          UPVAL U12
      206 NEWTABLE                         R12 0 1
      208 MOVE                             R13 R3
      209 SETLIST                          R12 R13 1 [1]
      211 CALL                             R10 2 1
      212 GETIMPORT                        R11 K40 [next]
      214 GETTABLEKS                       R12 R0 K6 ["contents"]
      216 CALL                             R11 1 1
      217 JUMPIFNOTEQKNIL                  R11 ; [+5]
      219 GETUPVAL                         R12 1
      220 GETTABLEKS                       R11 R12 K41 ["None"]
      222 RETURN                           R11 1
      223 LOADNIL                          R11
      224 GETUPVAL                         R12 12
      225 CALL                             R12 0 1
      226 JUMPIF                           R12 ; [+15]
      227 GETUPVAL                         R13 1
      228 GETTABLEKS                       R12 R13 K42 ["createElement"]
      230 LOADK                            R13 K43 ["UIListLayout"]
      231 DUPTABLE                         R14 K45 [{"HorizontalAlignment"}]
      232 JUMPIFNOT                        R3 ; [+3]
      233 GETIMPORT                        R15 K48 [Enum.HorizontalAlignment.Right]
      235 JUMP                             ; [+2]
      236 GETIMPORT                        R15 K50 [Enum.HorizontalAlignment.Left]
      238 SETTABLEKS                       R15 R14 K44 ["HorizontalAlignment"]
      240 CALL                             R12 2 1
      241 MOVE                             R11 R12
      242 GETUPVAL                         R12 6
      243 GETUPVAL                         R13 13
      244 DUPTABLE                         R14 K52 [{"tag", "LayoutOrder"}]
      245 SETTABLEKS                       R10 R14 K51 ["tag"]
      247 GETTABLEKS                       R15 R0 K19 ["LayoutOrder"]
      249 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      251 JUMPIFNOT                        R3 ; [+14]
      252 DUPTABLE                         R15 K55 [{"MessageBubble", "Layout"}]
      253 GETUPVAL                         R16 6
      254 GETUPVAL                         R17 13
      255 DUPTABLE                         R18 K56 [{"tag"}]
      256 LOADK                            R19 K57 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      257 SETTABLEKS                       R19 R18 K51 ["tag"]
      259 MOVE                             R19 R4
      260 CALL                             R16 3 1
      261 SETTABLEKS                       R16 R15 K53 ["MessageBubble"]
      263 SETTABLEKS                       R11 R15 K54 ["Layout"]
      265 JUMPIF                           R15 ; [+1]
      266 MOVE                             R15 R4
      267 CALL                             R12 3 -1
      268 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentWidgetRegistry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["GenerationIndicator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R9 K14 ["Contexts"]
       48 GETTABLEKS                       R7 R8 K15 ["InputStateContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K12 ["Components"]
       55 GETTABLEKS                       R8 R9 K16 ["MessageActions"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K8 ["Parent"]
       62 GETTABLEKS                       R9 R10 K17 ["React"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Types"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K20 ["useEditContent"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K21 ["Flags"]
       81 GETTABLEKS                       R12 R13 K22 ["FFlagAssistantMultipleChatSupport"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R14 R0 K21 ["Flags"]
       88 GETTABLEKS                       R13 R14 K23 ["FFlagAssistantPersistConversations"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R15 R0 K21 ["Flags"]
       95 GETTABLEKS                       R14 R15 K24 ["FFlagFoundationDisableStylingPolyfill"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R4 K25 ["View"]
      100 GETTABLEKS                       R15 R8 K26 ["createElement"]
      102 GETTABLEKS                       R16 R6 K27 ["InputDisabledReasons"]
      104 DUPCLOSURE                       R17 K28 [PROTO_2]
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R14
      119 RETURN                           R17 1
