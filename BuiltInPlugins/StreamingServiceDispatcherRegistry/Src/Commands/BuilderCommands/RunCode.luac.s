PROTO_0:
        0 DUPTABLE                         R1 K3 [{"requestId", "hasBeenUndone", "hasBeenRedone"}]
        1 SETTABLEKS                       R0 R1 K0 ["requestId"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K1 ["hasBeenUndone"]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K2 ["hasBeenRedone"]
        9 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETIMPORT                        R6 K2 [string.find]
        6 MOVE                             R7 R5
        7 GETUPVAL                         R8 0
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+2]
       10 GETUPVAL                         R6 1
       11 SETTABLE                         R6 R0 R4
       12 FORGLOOP                         R1 2 ; [-9]
       14 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 ORK                              R1 R2 K1 [0]
        2 ADDK                             R0 R1 K0 [1]
        3 LOADN                            R1 10
        4 JUMPIFNOTLT                      R1 R0 ; [+6]
        6 GETIMPORT                        R1 K3 [warn]
        8 LOADK                            R2 K4 ["[RunCode] updateResultMessage: Exceeded maximum depth"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R4 4
       15 MOVE                             R5 R0
       16 CALL                             R1 4 0
       17 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R1 K2 [task.defer]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 LOADK                            R6 K0 ["TransformContent"]
        2 DUPTABLE                         R7 K4 [{"requestId", "transformFunction", "completeCallback"}]
        3 SETTABLEKS                       R0 R7 K1 ["requestId"]
        5 NEWCLOSURE                       R8 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 SETTABLEKS                       R8 R7 K2 ["transformFunction"]
       10 NEWCLOSURE                       R8 P1
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R8 R7 K3 ["completeCallback"]
       18 NAMECALL                         R4 R4 K5 ["DisplayContent"]
       20 CALL                             R4 3 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["runCodeGuid"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["BindCodeToGuid"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["runCodeGuid"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["requestId"]
        7 NAMECALL                         R0 R0 K2 ["RunSandboxedCode"]
        9 CALL                             R0 3 -1
       10 RETURN                           R0 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["arguments"]
        2 GETTABLEKS                       R2 R1 K1 ["code"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 LOADK                            R5 K2 ["requestId%s*=%s*\"[^\"]*\""]
        6 LOADK                            R7 K3 ["requestId = \"%*\""]
        7 GETTABLEKS                       R9 R0 K4 ["requestId"]
        9 NAMECALL                         R7 R7 K5 ["format"]
       11 CALL                             R7 2 1
       12 MOVE                             R6 R7
       13 NAMECALL                         R3 R2 K6 ["gsub"]
       15 CALL                             R3 3 1
       16 MOVE                             R2 R3
       17 GETTABLEKS                       R3 R1 K7 ["isLocalCommand"]
       19 JUMPIFNOT                        R3 ; [+57]
       20 JUMPIFNOT                        R2 ; [+56]
       21 GETTABLEKS                       R4 R1 K8 ["syncStreamId"]
       23 FASTCALL2K                       ASSERT R4 K9 ; [+5]
       25 MOVE                             R6 R4
       26 LOADK                            R7 K9 ["Local command must have a streamId!"]
       27 GETIMPORT                        R5 K11 [assert]
       29 CALL                             R5 2 0
       30 GETUPVAL                         R8 0
       31 GETTABLE                         R7 R8 R4
       32 ORK                              R6 R7 K13 [0]
       33 ADDK                             R5 R6 K12 [1]
       34 GETUPVAL                         R6 0
       35 SETTABLE                         R5 R6 R4
       36 MOVE                             R7 R4
       37 LOADK                            R8 K14 ["_"]
       38 MOVE                             R9 R5
       39 CONCAT                           R6 R7 R9
       40 SETTABLEKS                       R6 R1 K15 ["runCodeGuid"]
       42 GETUPVAL                         R6 1
       43 LOADK                            R8 K16 ["AddTextDropdown"]
       44 DUPTABLE                         R9 K21 [{"requestId", "streamId", "content", "closedTitle", "openedTitle"}]
       45 GETTABLEKS                       R10 R0 K4 ["requestId"]
       47 SETTABLEKS                       R10 R9 K4 ["requestId"]
       49 SETTABLEKS                       R4 R9 K17 ["streamId"]
       51 LOADK                            R10 K22 ["```lua\n%s\n```"]
       52 MOVE                             R12 R2
       53 NAMECALL                         R10 R10 K5 ["format"]
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K18 ["content"]
       58 GETUPVAL                         R10 2
       59 LOADK                            R12 K23 ["RunCode"]
       60 LOADK                            R13 K24 ["CodeDropdownClosedTitle"]
       61 NAMECALL                         R10 R10 K25 ["getText"]
       63 CALL                             R10 3 1
       64 SETTABLEKS                       R10 R9 K19 ["closedTitle"]
       66 GETUPVAL                         R10 2
       67 LOADK                            R12 K23 ["RunCode"]
       68 LOADK                            R13 K26 ["CodeDropdownOpenedTitle"]
       69 NAMECALL                         R10 R10 K25 ["getText"]
       71 CALL                             R10 3 1
       72 SETTABLEKS                       R10 R9 K20 ["openedTitle"]
       74 NAMECALL                         R6 R6 K27 ["DisplayContent"]
       76 CALL                             R6 3 0
       77 GETUPVAL                         R4 1
       78 NAMECALL                         R4 R4 K28 ["GetSettings"]
       80 CALL                             R4 1 1
       81 GETTABLEKS                       R5 R1 K29 ["isManualRun"]
       83 JUMPIF                           R5 ; [+30]
       84 GETIMPORT                        R5 K31 [pcall]
       86 NEWCLOSURE                       R6 P0
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          VAL R1
       89 CAPTURE                          REF R2
       90 CALL                             R5 1 2
       91 JUMPIFNOT                        R5 ; [+18]
       92 GETUPVAL                         R7 4
       93 CALL                             R7 0 1
       94 JUMPIFNOT                        R7 ; [+19]
       95 GETUPVAL                         R7 5
       96 GETTABLEKS                       R9 R0 K4 ["requestId"]
       98 MOVE                             R10 R2
       99 GETTABLEKS                       R12 R1 K32 ["noAutorun"]
      101 NOT                              R11 R12
      102 GETTABLEKS                       R12 R4 K33 ["AutoRunCode"]
      104 GETTABLEKS                       R13 R4 K34 ["AutoExpandDropdowns"]
      106 NAMECALL                         R7 R7 K35 ["CodeRunnerActivated"]
      108 CALL                             R7 6 0
      109 JUMP                             ; [+4]
      110 GETIMPORT                        R7 K37 [warn]
      112 MOVE                             R8 R6
      113 CALL                             R7 1 0
      114 GETTABLEKS                       R5 R1 K32 ["noAutorun"]
      116 JUMPIF                           R5 ; [+6]
      117 GETUPVAL                         R5 6
      118 CALL                             R5 0 1
      119 JUMPIFNOT                        R5 ; [+3]
      120 GETTABLEKS                       R6 R4 K33 ["AutoRunCode"]
      122 NOT                              R5 R6
      123 GETTABLEKS                       R6 R1 K29 ["isManualRun"]
      125 JUMPIF                           R6 ; [+32]
      126 JUMPIFNOT                        R5 ; [+31]
      127 GETTABLEKS                       R6 R1 K32 ["noAutorun"]
      129 JUMPIF                           R6 ; [+26]
      130 GETUPVAL                         R6 6
      131 CALL                             R6 0 1
      132 JUMPIFNOT                        R6 ; [+23]
      133 GETTABLEKS                       R6 R4 K33 ["AutoRunCode"]
      135 JUMPIF                           R6 ; [+20]
      136 GETUPVAL                         R6 7
      137 CALL                             R6 0 1
      138 GETUPVAL                         R7 1
      139 LOADK                            R9 K38 ["StreamText"]
      140 DUPTABLE                         R10 K39 [{"requestId", "content"}]
      141 GETTABLEKS                       R11 R0 K4 ["requestId"]
      143 SETTABLEKS                       R11 R10 K4 ["requestId"]
      145 LOADK                            R12 K40 ["<span class=\"warningText\">%*</span>"]
      146 MOVE                             R14 R6
      147 NAMECALL                         R12 R12 K5 ["format"]
      149 CALL                             R12 2 1
      150 MOVE                             R11 R12
      151 SETTABLEKS                       R11 R10 K18 ["content"]
      153 NAMECALL                         R7 R7 K27 ["DisplayContent"]
      155 CALL                             R7 3 0
      156 CLOSEUPVALS                      R2
      157 RETURN                           R0 0
      158 LOADNIL                          R6
      159 GETTABLEKS                       R7 R1 K29 ["isManualRun"]
      161 JUMPIFNOT                        R7 ; [+6]
      162 LOADK                            R7 K41 ["Assistant Code Runner %*"]
      163 GETUPVAL                         R9 8
      164 NAMECALL                         R7 R7 K5 ["format"]
      166 CALL                             R7 2 1
      167 MOVE                             R6 R7
      168 GETUPVAL                         R7 8
      169 ADDK                             R7 R7 K12 [1]
      170 SETUPVAL                         R7 8
      171 GETTABLEKS                       R8 R0 K4 ["requestId"]
      173 DUPTABLE                         R7 K44 [{"requestId", "hasBeenUndone", "hasBeenRedone"}]
      174 SETTABLEKS                       R8 R7 K4 ["requestId"]
      176 LOADB                            R9 0
      177 SETTABLEKS                       R9 R7 K42 ["hasBeenUndone"]
      179 LOADB                            R9 0
      180 SETTABLEKS                       R9 R7 K43 ["hasBeenRedone"]
      182 GETUPVAL                         R9 9
      183 GETTABLEKS                       R8 R9 K45 ["StartRecordingActions"]
      185 GETTABLEKS                       R9 R0 K4 ["requestId"]
      187 MOVE                             R10 R6
      188 CALL                             R8 2 1
      189 GETIMPORT                        R9 K31 [pcall]
      191 NEWCLOSURE                       R10 P1
      192 CAPTURE                          UPVAL U3
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R0
      195 CALL                             R9 1 2
      196 GETUPVAL                         R12 9
      197 GETTABLEKS                       R11 R12 K46 ["EndRecordingActions"]
      199 GETTABLEKS                       R12 R0 K4 ["requestId"]
      201 MOVE                             R13 R6
      202 CALL                             R11 2 1
      203 JUMPIFNOT                        R8 ; [+4]
      204 JUMPIFNOT                        R11 ; [+3]
      205 JUMPIFNOT                        R6 ; [+2]
      206 GETUPVAL                         R12 10
      207 SETTABLE                         R7 R12 R6
      208 JUMPIFNOT                        R9 ; [+20]
      209 LOADK                            R13 K47 ["id='runCodeResult_%*'"]
      210 GETTABLEKS                       R15 R1 K15 ["runCodeGuid"]
      212 NAMECALL                         R13 R13 K5 ["format"]
      214 CALL                             R13 2 1
      215 MOVE                             R12 R13
      216 LOADK                            R14 K48 ["\n<span class=\"successText\" %*>Code executed successfully!</span>\n"]
      217 MOVE                             R16 R12
      218 NAMECALL                         R14 R14 K5 ["format"]
      220 CALL                             R14 2 1
      221 MOVE                             R13 R14
      222 GETUPVAL                         R14 11
      223 GETTABLEKS                       R15 R0 K4 ["requestId"]
      225 MOVE                             R16 R12
      226 MOVE                             R17 R13
      227 CALL                             R14 3 0
      228 JUMP                             ; [+27]
      229 GETIMPORT                        R12 K50 [string.gsub]
      231 MOVE                             R13 R10
      232 LOADK                            R14 K51 ["([<>&])"]
      233 LOADK                            R15 K52 ["\\%1"]
      234 CALL                             R12 3 1
      235 MOVE                             R10 R12
      236 LOADK                            R13 K47 ["id='runCodeResult_%*'"]
      237 GETTABLEKS                       R15 R1 K15 ["runCodeGuid"]
      239 NAMECALL                         R13 R13 K5 ["format"]
      241 CALL                             R13 2 1
      242 MOVE                             R12 R13
      243 LOADK                            R14 K53 ["\n<span class=\"errorText\" %*>%*</span>\n"]
      244 MOVE                             R16 R12
      245 MOVE                             R17 R10
      246 NAMECALL                         R14 R14 K5 ["format"]
      248 CALL                             R14 3 1
      249 MOVE                             R13 R14
      250 GETUPVAL                         R14 11
      251 GETTABLEKS                       R15 R0 K4 ["requestId"]
      253 MOVE                             R16 R12
      254 MOVE                             R17 R13
      255 CALL                             R14 3 0
      256 GETUPVAL                         R12 4
      257 CALL                             R12 0 1
      258 JUMPIFNOT                        R12 ; [+8]
      259 GETUPVAL                         R12 5
      260 GETTABLEKS                       R14 R0 K4 ["requestId"]
      262 MOVE                             R15 R9
      263 ORK                              R16 R10 K54 [""]
      264 NAMECALL                         R12 R12 K55 ["CodeRunnerCompleted"]
      266 CALL                             R12 4 0
      267 CLOSEUPVALS                      R2
      268 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["hasBeenRedone"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["requestId"]
        9 NAMECALL                         R0 R0 K2 ["CodeRunnerUndone"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETTABLEKS                       R2 R1 K0 ["hasBeenUndone"]
        5 JUMPIF                           R2 ; [+10]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["hasBeenUndone"]
        9 GETIMPORT                        R2 K3 [task.delay]
       11 LOADN                            R3 5
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R2 R1 K0 ["hasBeenRedone"]
        5 JUMPIF                           R2 ; [+3]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["hasBeenRedone"]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Utils"]
       24 GETTABLEKS                       R3 R4 K11 ["CliAdapter"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K12 ["Localization"]
       33 GETTABLEKS                       R4 R5 K12 ["Localization"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R6 K13 ["Types"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R2 K14 ["GetService"]
       45 LOADK                            R6 K15 ["StreamingService"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R2 K14 ["GetService"]
       49 LOADK                            R7 K16 ["ChatbotUIService"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K14 ["GetService"]
       53 LOADK                            R8 K17 ["ConversationalAIAcceptanceService"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R2 K14 ["GetService"]
       57 LOADK                            R9 K18 ["ChangeHistoryService"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R13 R0 K6 ["Src"]
       63 GETTABLEKS                       R12 R13 K19 ["Flags"]
       65 GETTABLEKS                       R11 R12 K20 ["FFlagConvAICodeRunnerTelemetry"]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R9 R10 K21 ["Get"]
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R14 R0 K6 ["Src"]
       74 GETTABLEKS                       R13 R14 K19 ["Flags"]
       76 GETTABLEKS                       R12 R13 K22 ["FFlagConvAICodeRunnerUndoTelemetry"]
       78 CALL                             R11 1 1
       79 GETTABLEKS                       R10 R11 K21 ["Get"]
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R15 R0 K6 ["Src"]
       85 GETTABLEKS                       R14 R15 K19 ["Flags"]
       87 GETTABLEKS                       R13 R14 K23 ["FFlagConvAISettingAutoRunCode"]
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R11 R12 K21 ["Get"]
       92 GETIMPORT                        R13 K5 [require]
       94 GETTABLEKS                       R16 R0 K6 ["Src"]
       96 GETTABLEKS                       R15 R16 K19 ["Flags"]
       98 GETTABLEKS                       R14 R15 K24 ["FStringConvAICodeRunnerAutorunDisabledWarning"]
      100 CALL                             R13 1 1
      101 GETTABLEKS                       R12 R13 K21 ["Get"]
      103 NEWTABLE                         R13 0 0
      105 LOADN                            R14 1
      106 NEWTABLE                         R15 0 0
      108 DUPCLOSURE                       R16 K25 [PROTO_0]
      109 DUPCLOSURE                       R17 K26 [PROTO_4]
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R17
      112 NEWCLOSURE                       R18 P2
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R12
      121 CAPTURE                          REF R14
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R17
      125 MOVE                             R19 R10
      126 CALL                             R19 0 1
      127 JUMPIFNOT                        R19 ; [+15]
      128 GETTABLEKS                       R19 R8 K27 ["OnUndo"]
      130 DUPCLOSURE                       R21 K28 [PROTO_9]
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R7
      133 NAMECALL                         R19 R19 K29 ["Connect"]
      135 CALL                             R19 2 0
      136 GETTABLEKS                       R19 R8 K30 ["OnRedo"]
      138 DUPCLOSURE                       R21 K31 [PROTO_10]
      139 CAPTURE                          VAL R13
      140 NAMECALL                         R19 R19 K29 ["Connect"]
      142 CALL                             R19 2 0
      143 CLOSEUPVALS                      R14
      144 RETURN                           R18 1
