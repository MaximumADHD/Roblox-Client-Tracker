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
       10 NEWTABLE                         R0 0 0
       12 GETUPVAL                         R1 2
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETTABLEKS                       R6 R5 K1 ["type"]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K2 ["Type"]
       21 JUMPIFNOTEQ                      R6 R7 ; [+20]
       23 GETTABLEKS                       R7 R5 K3 ["text"]
       25 FASTCALL1                        TYPEOF R7 ; [+2]
       26 GETIMPORT                        R6 K5 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K6 ["string"] ; [+12]
       31 GETTABLEKS                       R6 R5 K3 ["text"]
       33 JUMPIFEQKS                       R6 K7 [""] ; [+8]
       35 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       37 MOVE                             R7 R0
       38 MOVE                             R8 R5
       39 GETIMPORT                        R6 K10 [table.insert]
       41 CALL                             R6 2 0
       42 FORGLOOP                         R1 2 ; [-27]
       44 LENGTH                           R1 R0
       45 JUMPIFNOTEQKN                    R1 K11 [0] ; [+3]
       47 LOADNIL                          R1
       48 RETURN                           R1 1
       49 GETIMPORT                        R1 K13 [table.sort]
       51 MOVE                             R2 R0
       52 DUPCLOSURE                       R3 K14 [PROTO_3]
       53 CALL                             R1 2 0
       54 GETIMPORT                        R1 K16 [table.create]
       56 LENGTH                           R2 R0
       57 CALL                             R1 1 1
       58 MOVE                             R2 R0
       59 LOADNIL                          R3
       60 LOADNIL                          R4
       61 FORGPREP                         R2
       62 GETTABLEKS                       R9 R6 K3 ["text"]
       64 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       66 MOVE                             R8 R1
       67 GETIMPORT                        R7 K10 [table.insert]
       69 CALL                             R7 2 0
       70 FORGLOOP                         R2 2 ; [-9]
       72 GETIMPORT                        R2 K18 [table.concat]
       74 MOVE                             R3 R1
       75 LOADK                            R4 K19 ["\n\n"]
       76 CALL                             R2 2 -1
       77 RETURN                           R2 -1

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
       56 CAPTURE                          VAL R7
       57 CAPTURE                          UPVAL U7
       58 NEWTABLE                         R11 0 2
       60 MOVE                             R12 R8
       61 MOVE                             R13 R7
       62 SETLIST                          R11 R12 2 [1]
       64 CALL                             R9 2 1
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       68 NEWCLOSURE                       R11 P2
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R0
       71 NEWTABLE                         R12 0 2
       73 MOVE                             R13 R2
       74 GETTABLEKS                       R14 R0 K8 ["messageId"]
       76 SETLIST                          R12 R13 2 [1]
       78 CALL                             R10 2 1
       79 LOADN                            R11 0
       80 MOVE                             R12 R7
       81 LOADNIL                          R13
       82 LOADNIL                          R14
       83 FORGPREP                         R12
       84 GETUPVAL                         R17 8
       85 MOVE                             R18 R16
       86 CALL                             R17 1 1
       87 JUMPIFNOT                        R17 ; [+69]
       88 GETUPVAL                         R18 9
       89 GETTABLEKS                       R18 R18 K9 ["assign"]
       91 DUPTABLE                         R19 K12 [{"messageId", "role", "editThisContent", "sendMessage"}]
       92 GETTABLEKS                       R20 R0 K8 ["messageId"]
       94 SETTABLEKS                       R20 R19 K8 ["messageId"]
       96 GETTABLEKS                       R20 R0 K2 ["role"]
       98 SETTABLEKS                       R20 R19 K2 ["role"]
      100 SETTABLEKS                       R10 R19 K10 ["editThisContent"]
      102 GETTABLEKS                       R20 R0 K11 ["sendMessage"]
      104 SETTABLEKS                       R20 R19 K11 ["sendMessage"]
      106 MOVE                             R20 R16
      107 CALL                             R18 2 1
      108 GETIMPORT                        R19 K15 [string.format]
      110 LOADK                            R20 K16 ["Content-%04i-%s"]
      111 GETTABLEKS                       R22 R18 K18 ["LayoutOrder"]
      113 ORK                              R21 R22 K17 [0]
      114 MOVE                             R22 R15
      115 CALL                             R19 3 1
      116 LOADB                            R20 0
      117 GETTABLEKS                       R21 R0 K2 ["role"]
      119 GETUPVAL                         R22 3
      120 GETTABLEKS                       R22 R22 K3 ["ROLE"]
      122 GETTABLEKS                       R22 R22 K4 ["User"]
      124 JUMPIFNOTEQ                      R21 R22 ; [+10]
      126 GETTABLEKS                       R21 R16 K19 ["type"]
      128 GETUPVAL                         R22 10
      129 GETTABLEKS                       R22 R22 K20 ["Type"]
      131 JUMPIFEQ                         R21 R22 ; [+2]
      133 LOADB                            R20 0 +1
      134 LOADB                            R20 1
      135 JUMPIFNOT                        R20 ; [+6]
      136 GETUPVAL                         R20 11
      137 MOVE                             R21 R17
      138 MOVE                             R22 R18
      139 CALL                             R20 2 1
      140 SETTABLE                         R20 R6 R19
      141 JUMP                             ; [+5]
      142 GETUPVAL                         R20 11
      143 MOVE                             R21 R17
      144 MOVE                             R22 R18
      145 CALL                             R20 2 1
      146 SETTABLE                         R20 R5 R19
      147 GETTABLEKS                       R20 R16 K18 ["LayoutOrder"]
      149 JUMPIFNOT                        R20 ; [+13]
      150 GETTABLEKS                       R20 R16 K18 ["LayoutOrder"]
      152 JUMPIFNOTLT                      R11 R20 ; [+10]
      154 GETTABLEKS                       R11 R16 K18 ["LayoutOrder"]
      156 JUMP                             ; [+6]
      157 GETIMPORT                        R18 K22 [warn]
      159 LOADK                            R19 K23 ["No builder for content type:"]
      160 GETTABLEKS                       R20 R16 K19 ["type"]
      162 CALL                             R18 2 0
      163 FORGLOOP                         R12 2 ; [-80]
      165 GETTABLEKS                       R12 R3 K24 ["reasonDisabled"]
      167 JUMPIFNOT                        R12 ; [+4]
      168 GETTABLEKS                       R12 R3 K24 ["reasonDisabled"]
      170 GETTABLEKS                       R12 R12 K24 ["reasonDisabled"]
      172 GETTABLEKS                       R13 R0 K25 ["isLatestAssistantAndMostRecent"]
      174 JUMPIFNOT                        R13 ; [+7]
      175 GETUPVAL                         R14 12
      176 GETTABLEKS                       R14 R14 K26 ["Generation"]
      178 JUMPIFEQ                         R12 R14 ; [+2]
      180 LOADB                            R13 0 +1
      181 LOADB                            R13 1
      182 JUMPIFNOT                        R13 ; [+9]
      183 GETUPVAL                         R14 11
      184 GETUPVAL                         R15 13
      185 DUPTABLE                         R16 K27 [{"LayoutOrder"}]
      186 ADDK                             R17 R11 K28 [1]
      187 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      189 CALL                             R14 2 1
      190 SETTABLEKS                       R14 R5 K29 ["GenerationIndicator"]
      192 GETUPVAL                         R14 1
      193 GETTABLEKS                       R14 R14 K30 ["useState"]
      195 LOADB                            R15 0
      196 CALL                             R14 1 2
      197 GETTABLEKS                       R17 R0 K2 ["role"]
      199 GETUPVAL                         R18 3
      200 GETTABLEKS                       R18 R18 K3 ["ROLE"]
      202 GETTABLEKS                       R18 R18 K31 ["Assistant"]
      204 JUMPIFEQ                         R17 R18 ; [+2]
      206 LOADB                            R16 0 +1
      207 LOADB                            R16 1
      208 GETTABLEKS                       R18 R0 K25 ["isLatestAssistantAndMostRecent"]
      210 JUMPIF                           R18 ; [+2]
      211 MOVE                             R17 R14
      212 JUMPIFNOT                        R17 ; [+6]
      213 GETTABLEKS                       R17 R3 K32 ["inputEnabled"]
      215 JUMPIFNOT                        R17 ; [+3]
      216 NOT                              R17 R8
      217 JUMPIFNOT                        R17 ; [+1]
      218 MOVE                             R17 R16
      219 JUMPIF                           R16 ; [+9]
      220 GETTABLEKS                       R18 R0 K2 ["role"]
      222 GETUPVAL                         R19 3
      223 GETTABLEKS                       R19 R19 K3 ["ROLE"]
      225 GETTABLEKS                       R19 R19 K33 ["System"]
      227 JUMPIFNOTEQ                      R18 R19 ; [+26]
      229 GETUPVAL                         R18 11
      230 GETUPVAL                         R19 14
      231 DUPTABLE                         R20 K38 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "messageText", "shouldShowActions"}]
      232 ADDK                             R21 R11 K39 [2]
      233 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      235 GETTABLEKS                       R21 R0 K34 ["retryMessage"]
      237 SETTABLEKS                       R21 R20 K34 ["retryMessage"]
      239 GETTABLEKS                       R21 R0 K8 ["messageId"]
      241 SETTABLEKS                       R21 R20 K8 ["messageId"]
      243 GETTABLEKS                       R21 R0 K35 ["thumbsState"]
      245 SETTABLEKS                       R21 R20 K35 ["thumbsState"]
      247 SETTABLEKS                       R9 R20 K36 ["messageText"]
      249 SETTABLEKS                       R17 R20 K37 ["shouldShowActions"]
      251 CALL                             R18 2 1
      252 SETTABLEKS                       R18 R5 K40 ["MessageActions"]
      254 GETUPVAL                         R18 1
      255 GETTABLEKS                       R18 R18 K7 ["useCallback"]
      257 NEWCLOSURE                       R19 P3
      258 CAPTURE                          VAL R15
      259 NEWTABLE                         R20 0 0
      261 CALL                             R18 2 1
      262 GETUPVAL                         R19 1
      263 GETTABLEKS                       R19 R19 K5 ["useMemo"]
      265 DUPCLOSURE                       R20 K41 [PROTO_7]
      266 NEWTABLE                         R21 0 0
      268 CALL                             R19 2 1
      269 GETIMPORT                        R20 K43 [next]
      271 MOVE                             R21 R7
      272 CALL                             R20 1 1
      273 JUMPIFNOTEQKNIL                  R20 ; [+7]
      275 JUMPIF                           R13 ; [+5]
      276 GETUPVAL                         R20 1
      277 GETTABLEKS                       R20 R20 K44 ["None"]
      279 CLOSEUPVALS                      R8
      280 RETURN                           R20 1
      281 JUMPIFNOT                        R4 ; [+64]
      282 NEWTABLE                         R20 0 0
      284 GETIMPORT                        R21 K43 [next]
      286 MOVE                             R22 R6
      287 CALL                             R21 1 1
      288 JUMPIFEQKNIL                     R21 ; [+8]
      290 GETUPVAL                         R21 11
      291 GETUPVAL                         R22 15
      292 DUPTABLE                         R23 K47 [{["tag"] = "col gap-small size-0-0 auto-xy", ["LayoutOrder"] = 0}]
      293 MOVE                             R24 R6
      294 CALL                             R21 3 1
      295 SETTABLEKS                       R21 R20 K48 ["TransparentContents"]
      297 GETIMPORT                        R21 K43 [next]
      299 MOVE                             R22 R5
      300 CALL                             R21 1 1
      301 JUMPIFEQKNIL                     R21 ; [+20]
      303 GETUPVAL                         R22 6
      304 GETTABLEKS                       R22 R22 K49 ["FFlagAssistantCopyButton"]
      306 JUMPIFNOT                        R22 ; [+8]
      307 GETUPVAL                         R21 11
      308 GETUPVAL                         R22 16
      309 DUPTABLE                         R23 K50 [{["messageText"], ["LayoutOrder"] = 1}]
      310 SETTABLEKS                       R9 R23 K36 ["messageText"]
      312 MOVE                             R24 R5
      313 CALL                             R21 3 1
      314 JUMP                             ; [+5]
      315 GETUPVAL                         R21 11
      316 GETUPVAL                         R22 15
      317 DUPTABLE                         R23 K52 [{["tag"] = "col auto-xy padding-medium radius-large bg-shift-300", ["LayoutOrder"] = 1}]
      318 MOVE                             R24 R5
      319 CALL                             R21 3 1
      320 SETTABLEKS                       R21 R20 K53 ["MessageBubble"]
      322 GETUPVAL                         R21 11
      323 GETUPVAL                         R22 15
      324 DUPTABLE                         R23 K55 [{"tag", "LayoutOrder", "ref"}]
      325 GETTABLEKS                       R24 R19 K4 ["User"]
      327 SETTABLEKS                       R24 R23 K45 ["tag"]
      329 GETTABLEKS                       R24 R0 K18 ["LayoutOrder"]
      331 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      333 SETTABLEKS                       R1 R23 K54 ["ref"]
      335 DUPTABLE                         R24 K57 [{"ContentStack"}]
      336 GETUPVAL                         R25 11
      337 GETUPVAL                         R26 15
      338 DUPTABLE                         R27 K59 [{["tag"] = "col align-x-right gap-small size-0-0 auto-xy"}]
      339 MOVE                             R28 R20
      340 CALL                             R25 3 1
      341 SETTABLEKS                       R25 R24 K56 ["ContentStack"]
      343 CALL                             R21 3 -1
      344 CLOSEUPVALS                      R8
      345 RETURN                           R21 -1
      346 GETUPVAL                         R20 11
      347 LOADK                            R21 K60 ["ImageButton"]
      348 NEWTABLE                         R22 8 0
      350 GETIMPORT                        R23 K63 [UDim2.fromScale]
      352 LOADN                            R24 1
      353 LOADN                            R25 0
      354 CALL                             R23 2 1
      355 SETTABLEKS                       R23 R22 K64 ["Size"]
      357 GETIMPORT                        R23 K68 [Enum.AutomaticSize.Y]
      359 SETTABLEKS                       R23 R22 K66 ["AutomaticSize"]
      361 LOADN                            R23 1
      362 SETTABLEKS                       R23 R22 K69 ["BackgroundTransparency"]
      364 GETUPVAL                         R23 1
      365 GETTABLEKS                       R23 R23 K70 ["Change"]
      367 GETTABLEKS                       R23 R23 K71 ["GuiState"]
      369 SETTABLE                         R18 R22 R23
      370 GETTABLEKS                       R23 R0 K18 ["LayoutOrder"]
      372 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      374 SETTABLEKS                       R1 R22 K54 ["ref"]
      376 DUPTABLE                         R23 K73 [{"Container"}]
      377 GETUPVAL                         R24 11
      378 GETUPVAL                         R25 15
      379 DUPTABLE                         R26 K74 [{"tag", "LayoutOrder"}]
      380 GETTABLEKS                       R27 R19 K31 ["Assistant"]
      382 SETTABLEKS                       R27 R26 K45 ["tag"]
      384 GETTABLEKS                       R27 R0 K18 ["LayoutOrder"]
      386 SETTABLEKS                       R27 R26 K18 ["LayoutOrder"]
      388 MOVE                             R27 R5
      389 CALL                             R24 3 1
      390 SETTABLEKS                       R24 R23 K72 ["Container"]
      392 CALL                             R20 3 -1
      393 CLOSEUPVALS                      R8
      394 RETURN                           R20 -1

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
       97 GETTABLEKS                       R14 R14 K13 ["ContentWidgets"]
       99 GETTABLEKS                       R14 R14 K23 ["resolveContentComponent"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K24 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K25 ["useEditContent"]
      108 CALL                             R14 1 1
      109 GETTABLEKS                       R15 R4 K26 ["View"]
      111 GETTABLEKS                       R16 R9 K27 ["createElement"]
      113 GETTABLEKS                       R17 R7 K28 ["InputDisabledReasons"]
      115 DUPCLOSURE                       R18 K29 [PROTO_0]
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R6
      118 DUPCLOSURE                       R19 K30 [PROTO_1]
      119 CAPTURE                          VAL R11
      120 DUPCLOSURE                       R20 K31 [PROTO_8]
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R1
      138 GETTABLEKS                       R21 R9 K32 ["forwardRef"]
      140 MOVE                             R22 R20
      141 CALL                             R21 1 -1
      142 RETURN                           R21 -1
