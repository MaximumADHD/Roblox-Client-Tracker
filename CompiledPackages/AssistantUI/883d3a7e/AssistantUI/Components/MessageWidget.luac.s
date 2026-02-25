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
       43 JUMPIFNOT                        R12 ; [+38]
       44 GETUPVAL                         R13 4
       45 MOVE                             R14 R12
       46 GETUPVAL                         R17 5
       47 GETTABLEKS                       R16 R17 K9 ["Dictionary"]
       49 GETTABLEKS                       R15 R16 K10 ["join"]
       51 MOVE                             R16 R11
       52 DUPTABLE                         R17 K14 [{"messageId", "contentId", "role", "editThisContent", "sendMessage"}]
       53 GETTABLEKS                       R18 R0 K5 ["messageId"]
       55 SETTABLEKS                       R18 R17 K5 ["messageId"]
       57 SETTABLEKS                       R10 R17 K11 ["contentId"]
       59 GETTABLEKS                       R18 R0 K2 ["role"]
       61 SETTABLEKS                       R18 R17 K2 ["role"]
       63 SETTABLEKS                       R5 R17 K12 ["editThisContent"]
       65 GETTABLEKS                       R18 R0 K13 ["sendMessage"]
       67 SETTABLEKS                       R18 R17 K13 ["sendMessage"]
       69 CALL                             R15 2 -1
       70 CALL                             R13 -1 1
       71 SETTABLE                         R13 R4 R10
       72 GETTABLEKS                       R13 R11 K15 ["LayoutOrder"]
       74 JUMPIFNOT                        R13 ; [+13]
       75 GETTABLEKS                       R13 R11 K15 ["LayoutOrder"]
       77 JUMPIFNOTLT                      R6 R13 ; [+10]
       79 GETTABLEKS                       R6 R11 K15 ["LayoutOrder"]
       81 JUMP                             ; [+6]
       82 GETIMPORT                        R13 K17 [warn]
       84 LOADK                            R14 K18 ["No builder for content type:"]
       85 GETTABLEKS                       R15 R11 K8 ["type"]
       87 CALL                             R13 2 0
       88 FORGLOOP                         R7 2 ; [-52]
       90 LOADB                            R7 0
       91 GETTABLEKS                       R8 R0 K6 ["contents"]
       93 LOADNIL                          R9
       94 LOADNIL                          R10
       95 FORGPREP                         R8
       96 GETTABLEKS                       R13 R12 K19 ["generating"]
       98 JUMPIFNOT                        R13 ; [+2]
       99 LOADB                            R7 1
      100 JUMP                             ; [+2]
      101 FORGLOOP                         R8 2 ; [-6]
      103 GETTABLEKS                       R8 R2 K20 ["reasonDisabled"]
      105 JUMPIFNOT                        R8 ; [+4]
      106 GETTABLEKS                       R9 R2 K20 ["reasonDisabled"]
      108 GETTABLEKS                       R8 R9 K20 ["reasonDisabled"]
      110 GETTABLEKS                       R9 R0 K21 ["isLatestAssistantAndMostRecent"]
      112 JUMPIFNOT                        R9 ; [+14]
      113 GETUPVAL                         R10 6
      114 GETTABLEKS                       R9 R10 K22 ["Generation"]
      116 JUMPIFNOTEQ                      R8 R9 ; [+10]
      118 GETUPVAL                         R9 4
      119 GETUPVAL                         R10 7
      120 DUPTABLE                         R11 K23 [{"LayoutOrder"}]
      121 ADDK                             R12 R6 K24 [1]
      122 SETTABLEKS                       R12 R11 K15 ["LayoutOrder"]
      124 CALL                             R9 2 1
      125 SETTABLEKS                       R9 R4 K25 ["GenerationIndicator"]
      127 GETTABLEKS                       R9 R0 K21 ["isLatestAssistantAndMostRecent"]
      129 JUMPIFNOT                        R9 ; [+4]
      130 GETTABLEKS                       R9 R2 K26 ["inputEnabled"]
      132 JUMPIFNOT                        R9 ; [+1]
      133 NOT                              R9 R7
      134 JUMPIFNOT                        R9 ; [+17]
      135 GETUPVAL                         R10 4
      136 GETUPVAL                         R11 8
      137 DUPTABLE                         R12 K28 [{"LayoutOrder", "retryMessage", "messageId"}]
      138 ADDK                             R13 R6 K29 [2]
      139 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
      141 GETTABLEKS                       R13 R0 K27 ["retryMessage"]
      143 SETTABLEKS                       R13 R12 K27 ["retryMessage"]
      145 GETTABLEKS                       R13 R0 K5 ["messageId"]
      147 SETTABLEKS                       R13 R12 K5 ["messageId"]
      149 CALL                             R10 2 1
      150 SETTABLEKS                       R10 R4 K30 ["MessageActions"]
      152 GETUPVAL                         R11 1
      153 GETTABLEKS                       R10 R11 K31 ["useMemo"]
      155 NEWCLOSURE                       R11 P1
      156 CAPTURE                          VAL R3
      157 CAPTURE                          UPVAL U9
      158 NEWTABLE                         R12 0 1
      160 MOVE                             R13 R3
      161 SETLIST                          R12 R13 1 [1]
      163 CALL                             R10 2 1
      164 GETIMPORT                        R11 K33 [next]
      166 GETTABLEKS                       R12 R0 K6 ["contents"]
      168 CALL                             R11 1 1
      169 JUMPIFNOTEQKNIL                  R11 ; [+5]
      171 GETUPVAL                         R12 1
      172 GETTABLEKS                       R11 R12 K34 ["None"]
      174 RETURN                           R11 1
      175 LOADNIL                          R11
      176 GETUPVAL                         R12 9
      177 CALL                             R12 0 1
      178 JUMPIF                           R12 ; [+15]
      179 GETUPVAL                         R13 1
      180 GETTABLEKS                       R12 R13 K35 ["createElement"]
      182 LOADK                            R13 K36 ["UIListLayout"]
      183 DUPTABLE                         R14 K38 [{"HorizontalAlignment"}]
      184 JUMPIFNOT                        R3 ; [+3]
      185 GETIMPORT                        R15 K41 [Enum.HorizontalAlignment.Right]
      187 JUMP                             ; [+2]
      188 GETIMPORT                        R15 K43 [Enum.HorizontalAlignment.Left]
      190 SETTABLEKS                       R15 R14 K37 ["HorizontalAlignment"]
      192 CALL                             R12 2 1
      193 MOVE                             R11 R12
      194 GETUPVAL                         R12 4
      195 GETUPVAL                         R13 10
      196 DUPTABLE                         R14 K45 [{"tag", "LayoutOrder"}]
      197 SETTABLEKS                       R10 R14 K44 ["tag"]
      199 GETTABLEKS                       R15 R0 K15 ["LayoutOrder"]
      201 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      203 JUMPIFNOT                        R3 ; [+14]
      204 DUPTABLE                         R15 K48 [{"MessageBubble", "Layout"}]
      205 GETUPVAL                         R16 4
      206 GETUPVAL                         R17 10
      207 DUPTABLE                         R18 K49 [{"tag"}]
      208 LOADK                            R19 K50 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      209 SETTABLEKS                       R19 R18 K44 ["tag"]
      211 MOVE                             R19 R4
      212 CALL                             R16 3 1
      213 SETTABLEKS                       R16 R15 K46 ["MessageBubble"]
      215 SETTABLEKS                       R11 R15 K47 ["Layout"]
      217 JUMPIF                           R15 ; [+1]
      218 MOVE                             R15 R4
      219 CALL                             R12 3 -1
      220 RETURN                           R12 -1

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
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R6 K12 ["GenerationIndicator"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["Contexts"]
       41 GETTABLEKS                       R6 R7 K14 ["InputStateContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Components"]
       48 GETTABLEKS                       R7 R8 K15 ["MessageActions"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K8 ["Parent"]
       55 GETTABLEKS                       R8 R9 K16 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       67 GETTABLEKS                       R10 R11 K19 ["useEditContent"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Flags"]
       74 GETTABLEKS                       R11 R12 K21 ["FFlagFoundationDisableStylingPolyfill"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R3 K22 ["View"]
       79 GETTABLEKS                       R12 R7 K23 ["createElement"]
       81 GETTABLEKS                       R13 R5 K24 ["InputDisabledReasons"]
       83 DUPCLOSURE                       R14 K25 [PROTO_2]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R11
       95 RETURN                           R14 1
