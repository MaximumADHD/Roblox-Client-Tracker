PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["role"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["ROLE"]
        6 GETTABLEKS                       R4 R4 K2 ["User"]
        8 JUMPIFNOTEQ                      R3 R4 ; [+10]
       10 GETTABLEKS                       R3 R1 K3 ["type"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["Type"]
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["text"]
        8 FASTCALL1                        TYPEOF R7 ; [+3]
        9 MOVE                             R9 R7
       10 GETIMPORT                        R8 K2 [typeof]
       12 CALL                             R8 1 1
       13 JUMPIFNOTEQKS                    R8 K3 ["string"] ; [+11]
       15 GETIMPORT                        R8 K5 [string.find]
       17 MOVE                             R9 R7
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K6 ["SYSTEM_REMINDER_OPEN"]
       21 LOADN                            R11 1
       22 LOADB                            R12 1
       23 CALL                             R8 4 1
       24 JUMPIF                           R8 ; [+1]
       25 SETTABLE                         R6 R1 R5
       26 FORGLOOP                         R2 2 ; [-21]
       28 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["contents"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K1 ["LayoutOrder"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["LayoutOrder"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFEQ                         R2 R3 ; [+6]
        8 JUMPIFLT                         R2 R3 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 RETURN                           R4 1
       13 GETTABLEKS                       R5 R0 K2 ["contentId"]
       15 GETTABLEKS                       R6 R1 K2 ["contentId"]
       17 JUMPIFLT                         R5 R6 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCopyButton"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+2]
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantPromptHistoryFromConversation"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 2
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K2 ["contents"]
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1
       20 NEWTABLE                         R0 0 0
       22 GETUPVAL                         R1 4
       23 LOADNIL                          R2
       24 LOADNIL                          R3
       25 FORGPREP                         R1
       26 GETTABLEKS                       R6 R5 K3 ["type"]
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K4 ["Type"]
       31 JUMPIFNOTEQ                      R6 R7 ; [+20]
       33 GETTABLEKS                       R7 R5 K5 ["text"]
       35 FASTCALL1                        TYPEOF R7 ; [+2]
       36 GETIMPORT                        R6 K7 [typeof]
       38 CALL                             R6 1 1
       39 JUMPIFNOTEQKS                    R6 K8 ["string"] ; [+12]
       41 GETTABLEKS                       R6 R5 K5 ["text"]
       43 JUMPIFEQKS                       R6 K9 [""] ; [+8]
       45 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       47 MOVE                             R7 R0
       48 MOVE                             R8 R5
       49 GETIMPORT                        R6 K12 [table.insert]
       51 CALL                             R6 2 0
       52 FORGLOOP                         R1 2 ; [-27]
       54 LENGTH                           R1 R0
       55 JUMPIFNOTEQKN                    R1 K13 [0] ; [+3]
       57 LOADNIL                          R1
       58 RETURN                           R1 1
       59 GETIMPORT                        R1 K15 [table.sort]
       61 MOVE                             R2 R0
       62 DUPCLOSURE                       R3 K16 [PROTO_3]
       63 CALL                             R1 2 0
       64 GETIMPORT                        R1 K18 [table.create]
       66 LENGTH                           R2 R0
       67 CALL                             R1 1 1
       68 MOVE                             R2 R0
       69 LOADNIL                          R3
       70 LOADNIL                          R4
       71 FORGPREP                         R2
       72 GETTABLEKS                       R9 R6 K5 ["text"]
       74 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       76 MOVE                             R8 R1
       77 GETIMPORT                        R7 K12 [table.insert]
       79 CALL                             R7 2 0
       80 FORGLOOP                         R2 2 ; [-9]
       82 GETIMPORT                        R2 K20 [table.concat]
       84 MOVE                             R3 R1
       85 LOADK                            R4 K21 ["\n\n"]
       86 CALL                             R2 2 -1
       87 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{"messageId", "contentId", "transformFn"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["messageId"]
        5 SETTABLEKS                       R4 R3 K0 ["messageId"]
        7 SETTABLEKS                       R0 R3 K1 ["contentId"]
        9 SETTABLEKS                       R1 R3 K2 ["transformFn"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["GuiState"]
        3 GETIMPORT                        R3 K3 [Enum.GuiState.Hover]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["GuiState"]
        9 GETIMPORT                        R3 K5 [Enum.GuiState.Press]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 GETUPVAL                         R2 0
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R0 K2 [{"User", "Assistant"}]
        1 NEWTABLE                         R1 2 0
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K3 ["size-full-0 auto-y Assistant-MessageWidget"]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K4 ["padding-left-large padding-bottom-large align-x-right Assistant-UserMessage"]
        9 SETTABLEKS                       R1 R0 K0 ["User"]
       11 NEWTABLE                         R1 2 0
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R1 K3 ["size-full-0 auto-y Assistant-MessageWidget"]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K5 ["col gap-small Assistant-AssistantMessage"]
       19 SETTABLEKS                       R1 R0 K1 ["Assistant"]
       21 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["Context"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R5 R0 K2 ["role"]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K3 ["ROLE"]
       14 GETTABLEKS                       R6 R6 K4 ["User"]
       16 JUMPIFEQ                         R5 R6 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 0
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R9 0 1
       32 GETTABLEKS                       R10 R0 K6 ["contents"]
       34 SETLIST                          R9 R10 1 [1]
       36 CALL                             R7 2 1
       37 LOADB                            R8 0
       38 MOVE                             R9 R7
       39 LOADNIL                          R10
       40 LOADNIL                          R11
       41 FORGPREP                         R9
       42 GETUPVAL                         R14 5
       43 MOVE                             R15 R13
       44 CALL                             R14 1 1
       45 JUMPIFNOT                        R14 ; [+2]
       46 LOADB                            R8 1
       47 JUMP                             ; [+2]
       48 FORGLOOP                         R9 2 ; [-7]
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       53 NEWCLOSURE                       R10 P1
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          REF R8
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R7
       59 CAPTURE                          UPVAL U8
       60 NEWTABLE                         R11 0 3
       62 MOVE                             R12 R8
       63 MOVE                             R13 R7
       64 GETTABLEKS                       R14 R0 K6 ["contents"]
       66 SETLIST                          R11 R12 3 [1]
       68 CALL                             R9 2 1
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       72 NEWCLOSURE                       R11 P2
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R0
       75 NEWTABLE                         R12 0 2
       77 MOVE                             R13 R2
       78 GETTABLEKS                       R14 R0 K8 ["messageId"]
       80 SETLIST                          R12 R13 2 [1]
       82 CALL                             R10 2 1
       83 LOADN                            R11 0
       84 MOVE                             R12 R7
       85 LOADNIL                          R13
       86 LOADNIL                          R14
       87 FORGPREP                         R12
       88 GETUPVAL                         R17 9
       89 MOVE                             R18 R16
       90 CALL                             R17 1 1
       91 JUMPIFNOT                        R17 ; [+69]
       92 GETUPVAL                         R18 10
       93 GETTABLEKS                       R18 R18 K9 ["assign"]
       95 DUPTABLE                         R19 K12 [{"messageId", "role", "editThisContent", "sendMessage"}]
       96 GETTABLEKS                       R20 R0 K8 ["messageId"]
       98 SETTABLEKS                       R20 R19 K8 ["messageId"]
      100 GETTABLEKS                       R20 R0 K2 ["role"]
      102 SETTABLEKS                       R20 R19 K2 ["role"]
      104 SETTABLEKS                       R10 R19 K10 ["editThisContent"]
      106 GETTABLEKS                       R20 R0 K11 ["sendMessage"]
      108 SETTABLEKS                       R20 R19 K11 ["sendMessage"]
      110 MOVE                             R20 R16
      111 CALL                             R18 2 1
      112 GETIMPORT                        R19 K15 [string.format]
      114 LOADK                            R20 K16 ["Content-%04i-%s"]
      115 GETTABLEKS                       R22 R18 K18 ["LayoutOrder"]
      117 ORK                              R21 R22 K17 [0]
      118 MOVE                             R22 R15
      119 CALL                             R19 3 1
      120 LOADB                            R20 0
      121 GETTABLEKS                       R21 R0 K2 ["role"]
      123 GETUPVAL                         R22 3
      124 GETTABLEKS                       R22 R22 K3 ["ROLE"]
      126 GETTABLEKS                       R22 R22 K4 ["User"]
      128 JUMPIFNOTEQ                      R21 R22 ; [+10]
      130 GETTABLEKS                       R21 R16 K19 ["type"]
      132 GETUPVAL                         R22 11
      133 GETTABLEKS                       R22 R22 K20 ["Type"]
      135 JUMPIFEQ                         R21 R22 ; [+2]
      137 LOADB                            R20 0 +1
      138 LOADB                            R20 1
      139 JUMPIFNOT                        R20 ; [+6]
      140 GETUPVAL                         R20 12
      141 MOVE                             R21 R17
      142 MOVE                             R22 R18
      143 CALL                             R20 2 1
      144 SETTABLE                         R20 R6 R19
      145 JUMP                             ; [+5]
      146 GETUPVAL                         R20 12
      147 MOVE                             R21 R17
      148 MOVE                             R22 R18
      149 CALL                             R20 2 1
      150 SETTABLE                         R20 R5 R19
      151 GETTABLEKS                       R20 R16 K18 ["LayoutOrder"]
      153 JUMPIFNOT                        R20 ; [+13]
      154 GETTABLEKS                       R20 R16 K18 ["LayoutOrder"]
      156 JUMPIFNOTLT                      R11 R20 ; [+10]
      158 GETTABLEKS                       R11 R16 K18 ["LayoutOrder"]
      160 JUMP                             ; [+6]
      161 GETIMPORT                        R18 K22 [warn]
      163 LOADK                            R19 K23 ["No builder for content type:"]
      164 GETTABLEKS                       R20 R16 K19 ["type"]
      166 CALL                             R18 2 0
      167 FORGLOOP                         R12 2 ; [-80]
      169 GETTABLEKS                       R12 R3 K24 ["reasonDisabled"]
      171 JUMPIFNOT                        R12 ; [+4]
      172 GETTABLEKS                       R12 R3 K24 ["reasonDisabled"]
      174 GETTABLEKS                       R12 R12 K24 ["reasonDisabled"]
      176 GETTABLEKS                       R13 R0 K25 ["isLatestAssistantAndMostRecent"]
      178 JUMPIFNOT                        R13 ; [+7]
      179 GETUPVAL                         R14 13
      180 GETTABLEKS                       R14 R14 K26 ["Generation"]
      182 JUMPIFEQ                         R12 R14 ; [+2]
      184 LOADB                            R13 0 +1
      185 LOADB                            R13 1
      186 JUMPIFNOT                        R13 ; [+9]
      187 GETUPVAL                         R14 12
      188 GETUPVAL                         R15 14
      189 DUPTABLE                         R16 K27 [{"LayoutOrder"}]
      190 ADDK                             R17 R11 K28 [1]
      191 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R5 K29 ["GenerationIndicator"]
      196 GETUPVAL                         R14 1
      197 GETTABLEKS                       R14 R14 K30 ["useState"]
      199 LOADB                            R15 0
      200 CALL                             R14 1 2
      201 GETTABLEKS                       R17 R0 K2 ["role"]
      203 GETUPVAL                         R18 3
      204 GETTABLEKS                       R18 R18 K3 ["ROLE"]
      206 GETTABLEKS                       R18 R18 K31 ["Assistant"]
      208 JUMPIFEQ                         R17 R18 ; [+2]
      210 LOADB                            R16 0 +1
      211 LOADB                            R16 1
      212 GETTABLEKS                       R18 R0 K25 ["isLatestAssistantAndMostRecent"]
      214 JUMPIF                           R18 ; [+2]
      215 MOVE                             R17 R14
      216 JUMPIFNOT                        R17 ; [+6]
      217 GETTABLEKS                       R17 R3 K32 ["inputEnabled"]
      219 JUMPIFNOT                        R17 ; [+3]
      220 NOT                              R17 R8
      221 JUMPIFNOT                        R17 ; [+1]
      222 MOVE                             R17 R16
      223 JUMPIF                           R16 ; [+9]
      224 GETTABLEKS                       R18 R0 K2 ["role"]
      226 GETUPVAL                         R19 3
      227 GETTABLEKS                       R19 R19 K3 ["ROLE"]
      229 GETTABLEKS                       R19 R19 K33 ["System"]
      231 JUMPIFNOTEQ                      R18 R19 ; [+26]
      233 GETUPVAL                         R18 12
      234 GETUPVAL                         R19 15
      235 DUPTABLE                         R20 K38 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "messageText", "shouldShowActions"}]
      236 ADDK                             R21 R11 K39 [2]
      237 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      239 GETTABLEKS                       R21 R0 K34 ["retryMessage"]
      241 SETTABLEKS                       R21 R20 K34 ["retryMessage"]
      243 GETTABLEKS                       R21 R0 K8 ["messageId"]
      245 SETTABLEKS                       R21 R20 K8 ["messageId"]
      247 GETTABLEKS                       R21 R0 K35 ["thumbsState"]
      249 SETTABLEKS                       R21 R20 K35 ["thumbsState"]
      251 SETTABLEKS                       R9 R20 K36 ["messageText"]
      253 SETTABLEKS                       R17 R20 K37 ["shouldShowActions"]
      255 CALL                             R18 2 1
      256 SETTABLEKS                       R18 R5 K40 ["MessageActions"]
      258 GETUPVAL                         R18 1
      259 GETTABLEKS                       R18 R18 K7 ["useCallback"]
      261 NEWCLOSURE                       R19 P3
      262 CAPTURE                          VAL R15
      263 NEWTABLE                         R20 0 0
      265 CALL                             R18 2 1
      266 GETUPVAL                         R19 1
      267 GETTABLEKS                       R19 R19 K5 ["useMemo"]
      269 DUPCLOSURE                       R20 K41 [PROTO_7]
      270 NEWTABLE                         R21 0 0
      272 CALL                             R19 2 1
      273 GETIMPORT                        R20 K43 [next]
      275 MOVE                             R21 R7
      276 CALL                             R20 1 1
      277 JUMPIFNOTEQKNIL                  R20 ; [+7]
      279 JUMPIF                           R13 ; [+5]
      280 GETUPVAL                         R20 1
      281 GETTABLEKS                       R20 R20 K44 ["None"]
      283 CLOSEUPVALS                      R8
      284 RETURN                           R20 1
      285 JUMPIFNOT                        R4 ; [+64]
      286 NEWTABLE                         R20 0 0
      288 GETIMPORT                        R21 K43 [next]
      290 MOVE                             R22 R6
      291 CALL                             R21 1 1
      292 JUMPIFEQKNIL                     R21 ; [+8]
      294 GETUPVAL                         R21 12
      295 GETUPVAL                         R22 16
      296 DUPTABLE                         R23 K47 [{["tag"] = "col gap-small size-0-0 auto-xy", ["LayoutOrder"] = 0}]
      297 MOVE                             R24 R6
      298 CALL                             R21 3 1
      299 SETTABLEKS                       R21 R20 K48 ["TransparentContents"]
      301 GETIMPORT                        R21 K43 [next]
      303 MOVE                             R22 R5
      304 CALL                             R21 1 1
      305 JUMPIFEQKNIL                     R21 ; [+20]
      307 GETUPVAL                         R22 6
      308 GETTABLEKS                       R22 R22 K49 ["FFlagAssistantCopyButton"]
      310 JUMPIFNOT                        R22 ; [+8]
      311 GETUPVAL                         R21 12
      312 GETUPVAL                         R22 17
      313 DUPTABLE                         R23 K50 [{["messageText"], ["LayoutOrder"] = 1}]
      314 SETTABLEKS                       R9 R23 K36 ["messageText"]
      316 MOVE                             R24 R5
      317 CALL                             R21 3 1
      318 JUMP                             ; [+5]
      319 GETUPVAL                         R21 12
      320 GETUPVAL                         R22 16
      321 DUPTABLE                         R23 K52 [{["tag"] = "col auto-xy padding-medium radius-large bg-shift-300", ["LayoutOrder"] = 1}]
      322 MOVE                             R24 R5
      323 CALL                             R21 3 1
      324 SETTABLEKS                       R21 R20 K53 ["MessageBubble"]
      326 GETUPVAL                         R21 12
      327 GETUPVAL                         R22 16
      328 DUPTABLE                         R23 K55 [{"tag", "LayoutOrder", "ref"}]
      329 GETTABLEKS                       R24 R19 K4 ["User"]
      331 SETTABLEKS                       R24 R23 K45 ["tag"]
      333 GETTABLEKS                       R24 R0 K18 ["LayoutOrder"]
      335 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      337 SETTABLEKS                       R1 R23 K54 ["ref"]
      339 DUPTABLE                         R24 K57 [{"ContentStack"}]
      340 GETUPVAL                         R25 12
      341 GETUPVAL                         R26 16
      342 DUPTABLE                         R27 K59 [{["tag"] = "col align-x-right gap-small size-0-0 auto-xy"}]
      343 MOVE                             R28 R20
      344 CALL                             R25 3 1
      345 SETTABLEKS                       R25 R24 K56 ["ContentStack"]
      347 CALL                             R21 3 -1
      348 CLOSEUPVALS                      R8
      349 RETURN                           R21 -1
      350 GETUPVAL                         R20 12
      351 LOADK                            R21 K60 ["ImageButton"]
      352 NEWTABLE                         R22 8 0
      354 GETIMPORT                        R23 K63 [UDim2.fromScale]
      356 LOADN                            R24 1
      357 LOADN                            R25 0
      358 CALL                             R23 2 1
      359 SETTABLEKS                       R23 R22 K64 ["Size"]
      361 GETIMPORT                        R23 K68 [Enum.AutomaticSize.Y]
      363 SETTABLEKS                       R23 R22 K66 ["AutomaticSize"]
      365 LOADN                            R23 1
      366 SETTABLEKS                       R23 R22 K69 ["BackgroundTransparency"]
      368 GETUPVAL                         R23 1
      369 GETTABLEKS                       R23 R23 K70 ["Change"]
      371 GETTABLEKS                       R23 R23 K71 ["GuiState"]
      373 SETTABLE                         R18 R22 R23
      374 GETTABLEKS                       R23 R0 K18 ["LayoutOrder"]
      376 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      378 SETTABLEKS                       R1 R22 K54 ["ref"]
      380 DUPTABLE                         R23 K73 [{"Container"}]
      381 GETUPVAL                         R24 12
      382 GETUPVAL                         R25 16
      383 DUPTABLE                         R26 K74 [{"tag", "LayoutOrder"}]
      384 GETTABLEKS                       R27 R19 K31 ["Assistant"]
      386 SETTABLEKS                       R27 R26 K45 ["tag"]
      388 GETTABLEKS                       R27 R0 K18 ["LayoutOrder"]
      390 SETTABLEKS                       R27 R26 K18 ["LayoutOrder"]
      392 MOVE                             R27 R5
      393 CALL                             R24 3 1
      394 SETTABLEKS                       R24 R23 K72 ["Container"]
      396 CALL                             R20 3 -1
      397 CLOSEUPVALS                      R8
      398 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CopyableUserMessageBubble"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["GenerationIndicator"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Components"]
       44 GETTABLEKS                       R7 R7 K13 ["ContentWidgets"]
       46 GETTABLEKS                       R7 R7 K14 ["ImageContentWidget"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K15 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K16 ["InputStateContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Components"]
       62 GETTABLEKS                       R9 R9 K17 ["MessageActions"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K8 ["Parent"]
       69 GETTABLEKS                       R10 R10 K18 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Components"]
       76 GETTABLEKS                       R11 R11 K13 ["ContentWidgets"]
       78 GETTABLEKS                       R11 R11 K19 ["TextContentWidget"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K20 ["Types"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K21 ["Util"]
       90 GETTABLEKS                       R13 R13 K22 ["isContentStreaming"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K21 ["Util"]
       97 GETTABLEKS                       R14 R14 K23 ["readMessageText"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K21 ["Util"]
      104 GETTABLEKS                       R15 R15 K13 ["ContentWidgets"]
      106 GETTABLEKS                       R15 R15 K24 ["resolveContentComponent"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      113 GETTABLEKS                       R16 R16 K26 ["useEditContent"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R16 R4 K27 ["View"]
      118 GETTABLEKS                       R17 R9 K28 ["createElement"]
      120 GETTABLEKS                       R18 R7 K29 ["InputDisabledReasons"]
      122 DUPCLOSURE                       R19 K30 [PROTO_0]
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R6
      125 DUPCLOSURE                       R20 K31 [PROTO_1]
      126 CAPTURE                          VAL R11
      127 DUPCLOSURE                       R21 K32 [PROTO_8]
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R1
      146 GETTABLEKS                       R22 R9 K33 ["forwardRef"]
      148 MOVE                             R23 R21
      149 CALL                             R22 1 -1
      150 RETURN                           R22 -1
