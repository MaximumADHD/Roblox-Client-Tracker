PROTO_0:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPCLOSURE                       R3 K0 [PROTO_0]
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R6 0 0
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 2
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K2 ["Root"]
       19 DUPTABLE                         R7 K7 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       20 GETTABLEKS                       R8 R0 K8 ["layoutOrder"]
       22 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       24 SETTABLEKS                       R1 R7 K4 ["expanded"]
       26 GETTABLEKS                       R8 R0 K5 ["contentId"]
       28 SETTABLEKS                       R8 R7 K5 ["contentId"]
       30 SETTABLEKS                       R4 R7 K6 ["editThisContent"]
       32 DUPTABLE                         R8 K11 [{"Header", "Content"}]
       33 GETUPVAL                         R9 2
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R10 R10 K9 ["Header"]
       37 DUPTABLE                         R11 K12 [{"LayoutOrder"}]
       38 MOVE                             R12 R3
       39 CALL                             R12 0 1
       40 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       42 DUPTABLE                         R12 K14 [{"Text"}]
       43 GETUPVAL                         R13 2
       44 GETUPVAL                         R14 4
       45 DUPTABLE                         R15 K17 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-muted", ["Text"], ["LayoutOrder"]}]
       46 GETUPVAL                         R16 5
       47 LOADK                            R18 K18 ["AnimationGen"]
       48 LOADK                            R19 K19 ["Thoughts"]
       49 NAMECALL                         R16 R16 K20 ["getText"]
       51 CALL                             R16 3 1
       52 SETTABLEKS                       R16 R15 K13 ["Text"]
       54 MOVE                             R16 R3
       55 CALL                             R16 0 1
       56 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       58 DUPTABLE                         R16 K22 [{"Shimmer"}]
       59 GETTABLEKS                       R17 R0 K23 ["isWorking"]
       61 JUMPIFNOT                        R17 ; [+3]
       62 GETUPVAL                         R17 2
       63 GETUPVAL                         R18 6
       64 CALL                             R17 1 1
       65 SETTABLEKS                       R17 R16 K21 ["Shimmer"]
       67 CALL                             R13 3 1
       68 SETTABLEKS                       R13 R12 K13 ["Text"]
       70 CALL                             R9 3 1
       71 SETTABLEKS                       R9 R8 K9 ["Header"]
       73 GETUPVAL                         R9 2
       74 GETUPVAL                         R10 3
       75 GETTABLEKS                       R10 R10 K10 ["Content"]
       77 DUPTABLE                         R11 K27 [{["tag"] = "col fill gap-small size-0-0 auto-y radius-small bg-shift-300", ["LayoutOrder"], ["UseVisible"] = True}]
       78 MOVE                             R12 R3
       79 CALL                             R12 0 1
       80 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       82 DUPTABLE                         R12 K29 [{"Body"}]
       83 GETUPVAL                         R13 2
       84 GETUPVAL                         R14 7
       85 DUPTABLE                         R15 K31 [{["tag"] = "size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       86 MOVE                             R16 R3
       87 CALL                             R16 0 1
       88 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       90 DUPTABLE                         R16 K33 [{"Markdown"}]
       91 GETUPVAL                         R17 2
       92 GETUPVAL                         R18 8
       93 DUPTABLE                         R19 K35 [{"markdown"}]
       94 GETTABLEKS                       R20 R0 K36 ["thought"]
       96 SETTABLEKS                       R20 R19 K34 ["markdown"]
       98 CALL                             R17 2 1
       99 SETTABLEKS                       R17 R16 K32 ["Markdown"]
      101 CALL                             R13 3 1
      102 SETTABLEKS                       R13 R12 K28 ["Body"]
      104 CALL                             R9 3 1
      105 SETTABLEKS                       R9 R8 K10 ["Content"]
      107 CALL                             R5 3 -1
      108 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["thoughts"]
        4 LENGTH                           R2 R3
        5 NEWTABLE                         R3 0 0
        7 GETTABLEKS                       R4 R0 K0 ["thoughts"]
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 LOADK                            R10 K1 ["Thought"]
       13 MOVE                             R11 R7
       14 CONCAT                           R9 R10 R11
       15 GETUPVAL                         R10 1
       16 GETUPVAL                         R11 2
       17 DUPTABLE                         R12 K6 [{"layoutOrder", "thought", "isWorking", "contentId"}]
       18 MOVE                             R13 R1
       19 CALL                             R13 0 1
       20 SETTABLEKS                       R13 R12 K2 ["layoutOrder"]
       22 SETTABLEKS                       R8 R12 K3 ["thought"]
       24 GETTABLEKS                       R13 R0 K4 ["isWorking"]
       26 JUMPIFNOT                        R13 ; [+4]
       27 JUMPIFEQ                         R7 R2 ; [+2]
       29 LOADB                            R13 0 +1
       30 LOADB                            R13 1
       31 SETTABLEKS                       R13 R12 K4 ["isWorking"]
       33 GETTABLEKS                       R13 R0 K5 ["contentId"]
       35 SETTABLEKS                       R13 R12 K5 ["contentId"]
       37 CALL                             R10 2 1
       38 SETTABLE                         R10 R3 R9
       39 FORGLOOP                         R4 2 ; [-28]
       41 GETUPVAL                         R4 1
       42 GETUPVAL                         R5 3
       43 DUPTABLE                         R6 K10 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       44 GETTABLEKS                       R7 R0 K2 ["layoutOrder"]
       46 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       48 MOVE                             R7 R3
       49 CALL                             R4 3 -1
       50 RETURN                           R4 -1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+24]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["versions"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 DUPTABLE                         R8 K3 [{"id", "text"}]
       12 GETTABLEKS                       R9 R5 K4 ["versionId"]
       14 SETTABLEKS                       R9 R8 K1 ["id"]
       16 GETTABLEKS                       R9 R5 K5 ["name"]
       18 SETTABLEKS                       R9 R8 K2 ["text"]
       20 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [table.insert]
       25 CALL                             R6 2 0
       26 FORGLOOP                         R1 2 ; [-16]
       28 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["versions"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["versions"]
       11 LENGTH                           R2 R3
       12 GETTABLE                         R0 R1 R2
       13 LOADB                            R1 0
       14 JUMPIFEQKNIL                     R0 ; [+8]
       16 GETTABLEKS                       R2 R0 K1 ["toolUseId"]
       18 GETUPVAL                         R3 1
       19 JUMPIFNOTEQ                      R2 R3 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K4 [table.insert]
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K10 [{"Preparing", "Generating", "Generated", "OpenInClipEditor", "EditInAssistant", "SaveToRoblox", "NoPromptProvided", "GenerationFailed", "RigInsertFailed", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K11 ["AnimationGen"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K12 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K11 ["AnimationGen"]
       11 LOADK                            R4 K1 ["Generating"]
       12 NAMECALL                         R1 R1 K12 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Generating"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K11 ["AnimationGen"]
       19 LOADK                            R4 K2 ["Generated"]
       20 NAMECALL                         R1 R1 K12 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Generated"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K11 ["AnimationGen"]
       27 LOADK                            R4 K3 ["OpenInClipEditor"]
       28 NAMECALL                         R1 R1 K12 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["OpenInClipEditor"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K11 ["AnimationGen"]
       35 LOADK                            R4 K4 ["EditInAssistant"]
       36 NAMECALL                         R1 R1 K12 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["EditInAssistant"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K11 ["AnimationGen"]
       43 LOADK                            R4 K5 ["SaveToRoblox"]
       44 NAMECALL                         R1 R1 K12 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["SaveToRoblox"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K11 ["AnimationGen"]
       51 LOADK                            R4 K6 ["NoPromptProvided"]
       52 NAMECALL                         R1 R1 K12 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["NoPromptProvided"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K11 ["AnimationGen"]
       59 LOADK                            R4 K7 ["GenerationFailed"]
       60 NAMECALL                         R1 R1 K12 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["GenerationFailed"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K11 ["AnimationGen"]
       67 LOADK                            R4 K8 ["RigInsertFailed"]
       68 NAMECALL                         R1 R1 K12 ["getText"]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["RigInsertFailed"]
       73 GETUPVAL                         R1 0
       74 LOADK                            R3 K13 ["ToolConfirmation"]
       75 LOADK                            R4 K14 ["ToolCallRejected"]
       76 DUPTABLE                         R5 K16 [{"toolName"}]
       77 GETUPVAL                         R6 1
       78 SETTABLEKS                       R6 R5 K15 ["toolName"]
       80 NAMECALL                         R1 R1 K12 ["getText"]
       82 CALL                             R1 4 1
       83 SETTABLEKS                       R1 R0 K9 ["ToolRejected"]
       85 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["selectTaggedInstances"]
        8 DUPTABLE                         R1 K2 [{"tag"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K1 ["tag"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["openInAnimationClipEditor"]
       10 DUPTABLE                         R1 K2 [{"toolUseId"}]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["publishAnimation"]
       10 DUPTABLE                         R1 K2 [{"toolUseId"}]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantAnimationGenPausePlaybackOnCollapse"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["expanded"]
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 JUMPIFEQKNIL                     R0 ; [+12]
       12 GETUPVAL                         R0 3
       13 JUMPIFEQKNIL                     R0 ; [+9]
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K2 ["setIsPlaying"]
       18 DUPTABLE                         R1 K6 [{["toolUseId"], ["isPlaying"] = False}]
       19 GETUPVAL                         R2 3
       20 SETTABLEKS                       R2 R1 K3 ["toolUseId"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["name"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADK                            R2 K2 [""]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R3 R1 K3 ["input"]
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 0
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R4 R1 K4 ["id"]
       15 JUMPIF                           R4 ; [+1]
       16 LOADNIL                          R4
       17 GETTABLEKS                       R5 R0 K5 ["toolResult"]
       19 JUMPIFNOT                        R5 ; [+3]
       20 GETTABLEKS                       R6 R5 K6 ["structuredContent"]
       22 JUMPIF                           R6 ; [+1]
       23 LOADNIL                          R6
       24 JUMPIFNOT                        R6 ; [+3]
       25 GETTABLEKS                       R7 R6 K7 ["failureReason"]
       27 JUMPIF                           R7 ; [+1]
       28 LOADNIL                          R7
       29 LOADB                            R8 0
       30 JUMPIFEQKNIL                     R6 ; [+7]
       32 GETTABLEKS                       R9 R6 K8 ["pending"]
       34 JUMPIFEQKB                       R9 TRUE ; [+2]
       36 LOADB                            R8 0 +1
       37 LOADB                            R8 1
       38 LOADB                            R9 0
       39 JUMPIFEQKNIL                     R5 ; [+7]
       41 GETTABLEKS                       R10 R5 K9 ["isError"]
       43 JUMPIFEQKB                       R10 TRUE ; [+2]
       45 LOADB                            R9 0 +1
       46 LOADB                            R9 1
       47 LOADB                            R10 0
       48 JUMPIFEQKNIL                     R5 ; [+2]
       50 NOT                              R10 R8
       51 LOADB                            R11 0
       52 JUMPIFEQKNIL                     R6 ; [+7]
       54 GETTABLEKS                       R12 R6 K10 ["rejected"]
       56 JUMPIFEQKB                       R12 TRUE ; [+2]
       58 LOADB                            R11 0 +1
       59 LOADB                            R11 1
       60 LOADB                            R12 0
       61 JUMPIFNOTEQKNIL                  R1 ; [+5]
       63 JUMPIFEQKNIL                     R5 ; [+2]
       65 LOADB                            R12 0 +1
       66 LOADB                            R12 1
       67 NOT                              R13 R12
       68 JUMPIFNOT                        R13 ; [+1]
       69 NOT                              R13 R10
       70 MOVE                             R14 R10
       71 JUMPIFNOT                        R14 ; [+8]
       72 NOT                              R14 R11
       73 JUMPIFNOT                        R14 ; [+6]
       74 MOVE                             R14 R9
       75 JUMPIF                           R14 ; [+4]
       76 JUMPIFNOTEQKNIL                  R7 ; [+2]
       78 LOADB                            R14 0 +1
       79 LOADB                            R14 1
       80 AND                              R15 R10 R14
       81 MOVE                             R16 R10
       82 JUMPIFNOT                        R16 ; [+3]
       83 NOT                              R16 R14
       84 JUMPIFNOT                        R16 ; [+1]
       85 NOT                              R16 R11
       86 GETUPVAL                         R17 1
       87 JUMPIFNOT                        R16 ; [+2]
       88 MOVE                             R18 R4
       89 JUMP                             ; [+1]
       90 LOADNIL                          R18
       91 CALL                             R17 1 1
       92 GETTABLEKS                       R18 R17 K11 ["card"]
       94 MOVE                             R19 R18
       95 JUMPIFNOT                        R19 ; [+2]
       96 GETTABLEKS                       R19 R18 K12 ["selected"]
       98 JUMPIFEQKNIL                     R19 ; [+4]
      100 GETTABLEKS                       R20 R19 K13 ["duration"]
      102 JUMP                             ; [+4]
      103 MOVE                             R20 R6
      104 JUMPIFNOT                        R20 ; [+2]
      105 GETTABLEKS                       R20 R6 K13 ["duration"]
      107 JUMPIFNOT                        R6 ; [+3]
      108 GETTABLEKS                       R21 R6 K14 ["tag"]
      110 JUMPIF                           R21 ; [+1]
      111 LOADNIL                          R21
      112 JUMPIFEQKNIL                     R19 ; [+4]
      114 GETTABLEKS                       R22 R19 K1 ["name"]
      116 JUMP                             ; [+8]
      117 JUMPIFNOT                        R6 ; [+3]
      118 GETTABLEKS                       R22 R6 K15 ["generationName"]
      120 JUMPIF                           R22 ; [+4]
      121 GETTABLEKS                       R22 R3 K16 ["textPrompt"]
      123 JUMPIF                           R22 ; [+1]
      124 LOADK                            R22 K2 [""]
      125 JUMPIFEQKNIL                     R19 ; [+4]
      127 GETTABLEKS                       R23 R19 K17 ["toolUseId"]
      129 JUMP                             ; [+1]
      130 MOVE                             R23 R4
      131 GETUPVAL                         R24 2
      132 GETTABLEKS                       R24 R24 K18 ["useMemo"]
      134 NEWCLOSURE                       R25 P0
      135 CAPTURE                          VAL R18
      136 NEWTABLE                         R26 0 1
      138 MOVE                             R27 R18
      139 SETLIST                          R26 R27 1 [1]
      141 CALL                             R24 2 1
      142 GETUPVAL                         R25 2
      143 GETTABLEKS                       R25 R25 K18 ["useMemo"]
      145 NEWCLOSURE                       R26 P1
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R4
      148 NEWTABLE                         R27 0 2
      150 MOVE                             R28 R18
      151 MOVE                             R29 R4
      152 SETLIST                          R27 R28 2 [1]
      154 CALL                             R25 2 1
      155 GETUPVAL                         R26 2
      156 GETTABLEKS                       R26 R26 K19 ["useState"]
      158 NEWTABLE                         R27 0 0
      160 CALL                             R26 1 2
      161 GETUPVAL                         R28 2
      162 GETTABLEKS                       R28 R28 K20 ["useCallback"]
      164 NEWCLOSURE                       R29 P2
      165 CAPTURE                          VAL R27
      166 NEWTABLE                         R30 0 0
      168 CALL                             R28 2 1
      169 GETUPVAL                         R29 3
      170 GETTABLEKS                       R29 R29 K21 ["useThoughtReceived"]
      172 MOVE                             R30 R4
      173 MOVE                             R31 R28
      174 CALL                             R29 2 0
      175 LENGTH                           R30 R26
      176 LOADN                            R31 0
      177 JUMPIFLT                         R31 R30 ; [+2]
      179 LOADB                            R29 0 +1
      180 LOADB                            R29 1
      181 GETUPVAL                         R30 4
      182 LOADK                            R31 K22 ["KeyframeSequence"]
      183 CALL                             R30 1 1
      184 GETUPVAL                         R31 2
      185 GETTABLEKS                       R31 R31 K23 ["useContext"]
      187 GETUPVAL                         R32 5
      188 GETTABLEKS                       R32 R32 K24 ["Context"]
      190 CALL                             R31 1 1
      191 GETUPVAL                         R32 2
      192 GETTABLEKS                       R32 R32 K23 ["useContext"]
      194 GETUPVAL                         R33 3
      195 GETTABLEKS                       R33 R33 K24 ["Context"]
      197 CALL                             R32 1 1
      198 GETUPVAL                         R33 5
      199 GETTABLEKS                       R33 R33 K25 ["useTag"]
      201 MOVE                             R34 R21
      202 DUPTABLE                         R35 K28 [{["includeCount"] = True}]
      203 CALL                             R33 2 1
      204 JUMPIFNOT                        R33 ; [+3]
      205 GETTABLEKS                       R34 R33 K29 ["count"]
      207 JUMPIF                           R34 ; [+1]
      208 LOADN                            R34 0
      209 MOVE                             R35 R16
      210 JUMPIFNOT                        R35 ; [+5]
      211 LOADN                            R36 0
      212 JUMPIFLT                         R36 R34 ; [+2]
      214 LOADB                            R35 0 +1
      215 LOADB                            R35 1
      216 GETUPVAL                         R36 2
      217 GETTABLEKS                       R36 R36 K18 ["useMemo"]
      219 NEWCLOSURE                       R37 P3
      220 CAPTURE                          UPVAL U6
      221 CAPTURE                          VAL R2
      222 NEWTABLE                         R38 0 2
      224 GETUPVAL                         R39 6
      225 GETTABLEKS                       R39 R39 K30 ["locale"]
      227 MOVE                             R40 R2
      228 SETLIST                          R38 R39 2 [1]
      230 CALL                             R36 2 1
      231 LOADNIL                          R37
      232 LOADB                            R38 0
      233 JUMPIFNOT                        R12 ; [+4]
      234 GETTABLEKS                       R37 R36 K31 ["Preparing"]
      236 LOADB                            R38 1
      237 JUMP                             ; [+49]
      238 JUMPIFNOT                        R13 ; [+4]
      239 GETTABLEKS                       R37 R36 K32 ["Generating"]
      241 LOADB                            R38 1
      242 JUMP                             ; [+44]
      243 JUMPIFNOT                        R11 ; [+3]
      244 GETTABLEKS                       R37 R36 K33 ["ToolRejected"]
      246 JUMP                             ; [+40]
      247 JUMPIFNOT                        R15 ; [+37]
      248 GETUPVAL                         R39 7
      249 GETTABLEKS                       R39 R39 K34 ["FailureReasons"]
      251 GETTABLEKS                       R39 R39 K35 ["NoPromptProvided"]
      253 JUMPIFNOTEQ                      R7 R39 ; [+4]
      255 GETTABLEKS                       R37 R36 K35 ["NoPromptProvided"]
      257 JUMP                             ; [+29]
      258 GETUPVAL                         R39 7
      259 GETTABLEKS                       R39 R39 K34 ["FailureReasons"]
      261 GETTABLEKS                       R39 R39 K36 ["RigInsertFailed"]
      263 JUMPIFNOTEQ                      R7 R39 ; [+4]
      265 GETTABLEKS                       R37 R36 K36 ["RigInsertFailed"]
      267 JUMP                             ; [+19]
      268 GETUPVAL                         R39 7
      269 GETTABLEKS                       R39 R39 K34 ["FailureReasons"]
      271 GETTABLEKS                       R39 R39 K37 ["RigNotFound"]
      273 JUMPIFNOTEQ                      R7 R39 ; [+8]
      275 GETUPVAL                         R39 7
      276 GETTABLEKS                       R39 R39 K38 ["getFailureMessage"]
      278 MOVE                             R40 R7
      279 CALL                             R39 1 1
      280 MOVE                             R37 R39
      281 JUMP                             ; [+5]
      282 GETTABLEKS                       R37 R36 K39 ["GenerationFailed"]
      284 JUMP                             ; [+2]
      285 GETTABLEKS                       R37 R36 K40 ["Generated"]
      287 GETUPVAL                         R39 2
      288 GETTABLEKS                       R39 R39 K20 ["useCallback"]
      290 NEWCLOSURE                       R40 P4
      291 CAPTURE                          VAL R31
      292 CAPTURE                          VAL R21
      293 NEWTABLE                         R41 0 2
      295 MOVE                             R42 R31
      296 MOVE                             R43 R21
      297 SETLIST                          R41 R42 2 [1]
      299 CALL                             R39 2 1
      300 GETUPVAL                         R40 2
      301 GETTABLEKS                       R40 R40 K20 ["useCallback"]
      303 NEWCLOSURE                       R41 P5
      304 CAPTURE                          VAL R32
      305 CAPTURE                          VAL R23
      306 NEWTABLE                         R42 0 2
      308 MOVE                             R43 R32
      309 MOVE                             R44 R23
      310 SETLIST                          R42 R43 2 [1]
      312 CALL                             R40 2 1
      313 GETUPVAL                         R41 2
      314 GETTABLEKS                       R41 R41 K20 ["useCallback"]
      316 NEWCLOSURE                       R42 P6
      317 CAPTURE                          VAL R32
      318 CAPTURE                          VAL R23
      319 NEWTABLE                         R43 0 2
      321 MOVE                             R44 R32
      322 MOVE                             R45 R23
      323 SETLIST                          R43 R44 2 [1]
      325 CALL                             R41 2 1
      326 GETUPVAL                         R42 2
      327 GETTABLEKS                       R42 R42 K41 ["useEffect"]
      329 NEWCLOSURE                       R43 P7
      330 CAPTURE                          UPVAL U8
      331 CAPTURE                          VAL R0
      332 CAPTURE                          VAL R32
      333 CAPTURE                          VAL R23
      334 NEWTABLE                         R44 0 3
      336 GETTABLEKS                       R45 R0 K42 ["expanded"]
      338 MOVE                             R46 R32
      339 MOVE                             R47 R23
      340 SETLIST                          R44 R45 3 [1]
      342 CALL                             R42 2 0
      343 GETUPVAL                         R42 9
      344 DUPTABLE                         R43 K45 [{"toolUseId", "versionId", "sendMessage"}]
      345 SETTABLEKS                       R4 R43 K17 ["toolUseId"]
      347 MOVE                             R44 R19
      348 JUMPIFNOT                        R44 ; [+2]
      349 GETTABLEKS                       R44 R19 K43 ["versionId"]
      351 SETTABLEKS                       R44 R43 K43 ["versionId"]
      353 GETTABLEKS                       R44 R0 K44 ["sendMessage"]
      355 SETTABLEKS                       R44 R43 K44 ["sendMessage"]
      357 CALL                             R42 1 1
      358 LOADB                            R43 1
      359 JUMPIFEQKNIL                     R18 ; [+3]
      361 GETTABLEKS                       R43 R17 K46 ["isSelecting"]
      363 GETUPVAL                         R44 8
      364 GETTABLEKS                       R44 R44 K47 ["FFlagAnimationGenOpenACE"]
      366 JUMPIF                           R44 ; [+3]
      367 GETUPVAL                         R44 8
      368 GETTABLEKS                       R44 R44 K48 ["FFlagAssistantAnimationGenShowPublishButton"]
      370 GETUPVAL                         R45 10
      371 CALL                             R45 0 1
      372 MOVE                             R46 R29
      373 JUMPIFNOT                        R46 ; [+16]
      374 GETUPVAL                         R46 11
      375 GETUPVAL                         R47 12
      376 DUPTABLE                         R48 K53 [{"layoutOrder", "thoughts", "isWorking", "contentId"}]
      377 MOVE                             R49 R45
      378 CALL                             R49 0 1
      379 SETTABLEKS                       R49 R48 K49 ["layoutOrder"]
      381 SETTABLEKS                       R26 R48 K50 ["thoughts"]
      383 SETTABLEKS                       R38 R48 K51 ["isWorking"]
      385 GETTABLEKS                       R49 R0 K52 ["contentId"]
      387 SETTABLEKS                       R49 R48 K52 ["contentId"]
      389 CALL                             R46 2 1
      390 GETUPVAL                         R47 10
      391 CALL                             R47 0 1
      392 GETUPVAL                         R48 11
      393 GETUPVAL                         R49 13
      394 GETTABLEKS                       R49 R49 K54 ["Root"]
      396 DUPTABLE                         R50 K58 [{"LayoutOrder", "expanded", "isContentHidden", "contentId", "editThisContent"}]
      397 JUMPIFNOT                        R29 ; [+3]
      398 MOVE                             R51 R45
      399 CALL                             R51 0 1
      400 JUMP                             ; [+2]
      401 GETTABLEKS                       R51 R0 K55 ["LayoutOrder"]
      403 SETTABLEKS                       R51 R50 K55 ["LayoutOrder"]
      405 JUMPIFNOT                        R16 ; [+3]
      406 GETTABLEKS                       R51 R0 K42 ["expanded"]
      408 JUMP                             ; [+1]
      409 LOADB                            R51 0
      410 SETTABLEKS                       R51 R50 K42 ["expanded"]
      412 JUMPIFEQKNIL                     R18 ; [+3]
      414 MOVE                             R51 R25
      415 JUMP                             ; [+2]
      416 GETTABLEKS                       R51 R0 K56 ["isContentHidden"]
      418 SETTABLEKS                       R51 R50 K56 ["isContentHidden"]
      420 GETTABLEKS                       R51 R0 K52 ["contentId"]
      422 SETTABLEKS                       R51 R50 K52 ["contentId"]
      424 GETTABLEKS                       R51 R0 K57 ["editThisContent"]
      426 SETTABLEKS                       R51 R50 K57 ["editThisContent"]
      428 DUPTABLE                         R51 K61 [{"Header", "Content"}]
      429 GETUPVAL                         R52 11
      430 GETUPVAL                         R53 13
      431 GETTABLEKS                       R53 R53 K59 ["Header"]
      433 DUPTABLE                         R54 K63 [{"IsDisabled", "LayoutOrder"}]
      434 NOT                              R55 R16
      435 SETTABLEKS                       R55 R54 K62 ["IsDisabled"]
      437 MOVE                             R55 R47
      438 CALL                             R55 0 1
      439 SETTABLEKS                       R55 R54 K55 ["LayoutOrder"]
      441 DUPTABLE                         R55 K66 [{"Text", "ChipArea"}]
      442 GETUPVAL                         R56 11
      443 GETUPVAL                         R57 14
      444 DUPTABLE                         R58 K68 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      445 SETTABLEKS                       R37 R58 K64 ["Text"]
      447 MOVE                             R59 R47
      448 CALL                             R59 0 1
      449 SETTABLEKS                       R59 R58 K55 ["LayoutOrder"]
      451 DUPTABLE                         R59 K70 [{"Shimmer"}]
      452 MOVE                             R60 R38
      453 JUMPIFNOT                        R60 ; [+3]
      454 GETUPVAL                         R60 11
      455 GETUPVAL                         R61 15
      456 CALL                             R60 1 1
      457 SETTABLEKS                       R60 R59 K69 ["Shimmer"]
      459 CALL                             R56 3 1
      460 SETTABLEKS                       R56 R55 K64 ["Text"]
      462 MOVE                             R56 R35
      463 JUMPIFNOT                        R56 ; [+32]
      464 GETUPVAL                         R56 11
      465 GETUPVAL                         R57 16
      466 DUPTABLE                         R58 K72 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      467 MOVE                             R59 R47
      468 CALL                             R59 0 1
      469 SETTABLEKS                       R59 R58 K55 ["LayoutOrder"]
      471 DUPTABLE                         R59 K74 [{"AnimationLink"}]
      472 GETUPVAL                         R60 11
      473 GETUPVAL                         R61 17
      474 DUPTABLE                         R62 K81 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"]}]
      475 SETTABLEKS                       R22 R62 K75 ["text"]
      477 GETTABLEKS                       R63 R30 K82 ["Image"]
      479 SETTABLEKS                       R63 R62 K76 ["leading"]
      481 SETTABLEKS                       R39 R62 K77 ["onActivated"]
      483 GETUPVAL                         R63 18
      484 GETTABLEKS                       R63 R63 K83 ["Enums"]
      486 GETTABLEKS                       R63 R63 K84 ["ChipSize"]
      488 GETTABLEKS                       R63 R63 K85 ["Small"]
      490 SETTABLEKS                       R63 R62 K80 ["size"]
      492 CALL                             R60 2 1
      493 SETTABLEKS                       R60 R59 K73 ["AnimationLink"]
      495 CALL                             R56 3 1
      496 SETTABLEKS                       R56 R55 K65 ["ChipArea"]
      498 CALL                             R52 3 1
      499 SETTABLEKS                       R52 R51 K59 ["Header"]
      501 MOVE                             R52 R16
      502 JUMPIFNOT                        R52 ; [+208]
      503 GETUPVAL                         R52 11
      504 GETUPVAL                         R53 13
      505 GETTABLEKS                       R53 R53 K60 ["Content"]
      507 DUPTABLE                         R54 K88 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      508 MOVE                             R55 R47
      509 CALL                             R55 0 1
      510 SETTABLEKS                       R55 R54 K55 ["LayoutOrder"]
      512 DUPTABLE                         R55 K91 [{"PlaybackWidget", "ButtonRow"}]
      513 GETUPVAL                         R56 11
      514 GETUPVAL                         R57 19
      515 DUPTABLE                         R58 K93 [{"toolUseId", "duration", "layoutOrder", "trailingContent"}]
      516 SETTABLEKS                       R23 R58 K17 ["toolUseId"]
      518 SETTABLEKS                       R20 R58 K13 ["duration"]
      520 MOVE                             R59 R47
      521 CALL                             R59 0 1
      522 SETTABLEKS                       R59 R58 K49 ["layoutOrder"]
      524 GETUPVAL                         R59 11
      525 GETUPVAL                         R60 20
      526 GETTABLEKS                       R60 R60 K54 ["Root"]
      528 DUPTABLE                         R61 K103 [{["label"] = "", ["placeholder"], ["value"], ["items"], ["onItemChanged"], ["isDisabled"], ["size"], ["width"], ["testId"] = "AnimationGenVersionDropdown"}]
      529 SETTABLEKS                       R22 R61 K95 ["placeholder"]
      531 MOVE                             R62 R19
      532 JUMPIFNOT                        R62 ; [+2]
      533 GETTABLEKS                       R62 R19 K43 ["versionId"]
      535 SETTABLEKS                       R62 R61 K96 ["value"]
      537 SETTABLEKS                       R24 R61 K97 ["items"]
      539 GETTABLEKS                       R62 R17 K104 ["selectVersion"]
      541 SETTABLEKS                       R62 R61 K98 ["onItemChanged"]
      543 MOVE                             R62 R43
      544 JUMPIF                           R62 ; [+2]
      545 GETTABLEKS                       R62 R42 K105 ["isPreparing"]
      547 SETTABLEKS                       R62 R61 K99 ["isDisabled"]
      549 GETUPVAL                         R62 18
      550 GETTABLEKS                       R62 R62 K83 ["Enums"]
      552 GETTABLEKS                       R62 R62 K106 ["InputSize"]
      554 GETTABLEKS                       R62 R62 K85 ["Small"]
      556 SETTABLEKS                       R62 R61 K80 ["size"]
      558 GETIMPORT                        R62 K109 [UDim.new]
      560 LOADN                            R63 0
      561 LOADN                            R64 240
      562 CALL                             R62 2 1
      563 SETTABLEKS                       R62 R61 K100 ["width"]
      565 CALL                             R59 2 1
      566 SETTABLEKS                       R59 R58 K92 ["trailingContent"]
      568 CALL                             R56 2 1
      569 SETTABLEKS                       R56 R55 K89 ["PlaybackWidget"]
      571 MOVE                             R56 R44
      572 JUMPIFNOT                        R56 ; [+135]
      573 GETUPVAL                         R56 11
      574 GETUPVAL                         R57 16
      575 DUPTABLE                         R58 K111 [{["tag"] = "row wrap gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      576 MOVE                             R59 R47
      577 CALL                             R59 0 1
      578 SETTABLEKS                       R59 R58 K55 ["LayoutOrder"]
      580 DUPTABLE                         R59 K115 [{"OpenInClipEditorButton", "EditInAssistantButton", "SaveToRobloxButton"}]
      581 GETUPVAL                         R60 8
      582 GETTABLEKS                       R60 R60 K47 ["FFlagAnimationGenOpenACE"]
      584 JUMPIFNOT                        R60 ; [+34]
      585 GETUPVAL                         R60 11
      586 GETUPVAL                         R61 21
      587 DUPTABLE                         R62 K117 [{"LayoutOrder", "text", "size", "variant", "onActivated", "isDisabled"}]
      588 MOVE                             R63 R47
      589 CALL                             R63 0 1
      590 SETTABLEKS                       R63 R62 K55 ["LayoutOrder"]
      592 GETTABLEKS                       R63 R36 K118 ["OpenInClipEditor"]
      594 SETTABLEKS                       R63 R62 K75 ["text"]
      596 GETUPVAL                         R63 18
      597 GETTABLEKS                       R63 R63 K83 ["Enums"]
      599 GETTABLEKS                       R63 R63 K106 ["InputSize"]
      601 GETTABLEKS                       R63 R63 K85 ["Small"]
      603 SETTABLEKS                       R63 R62 K80 ["size"]
      605 GETUPVAL                         R63 18
      606 GETTABLEKS                       R63 R63 K83 ["Enums"]
      608 GETTABLEKS                       R63 R63 K119 ["ButtonVariant"]
      610 GETTABLEKS                       R63 R63 K120 ["Standard"]
      612 SETTABLEKS                       R63 R62 K116 ["variant"]
      614 SETTABLEKS                       R40 R62 K77 ["onActivated"]
      616 SETTABLEKS                       R43 R62 K99 ["isDisabled"]
      618 CALL                             R60 2 1
      619 SETTABLEKS                       R60 R59 K112 ["OpenInClipEditorButton"]
      621 GETUPVAL                         R60 8
      622 GETTABLEKS                       R60 R60 K121 ["FFlagAssistantEditScrubbarPropertyRow"]
      624 JUMPIFNOT                        R60 ; [+40]
      625 GETUPVAL                         R60 11
      626 GETUPVAL                         R61 21
      627 DUPTABLE                         R62 K117 [{"LayoutOrder", "text", "size", "variant", "onActivated", "isDisabled"}]
      628 MOVE                             R63 R47
      629 CALL                             R63 0 1
      630 SETTABLEKS                       R63 R62 K55 ["LayoutOrder"]
      632 GETTABLEKS                       R63 R36 K122 ["EditInAssistant"]
      634 SETTABLEKS                       R63 R62 K75 ["text"]
      636 GETUPVAL                         R63 18
      637 GETTABLEKS                       R63 R63 K83 ["Enums"]
      639 GETTABLEKS                       R63 R63 K106 ["InputSize"]
      641 GETTABLEKS                       R63 R63 K85 ["Small"]
      643 SETTABLEKS                       R63 R62 K80 ["size"]
      645 GETUPVAL                         R63 18
      646 GETTABLEKS                       R63 R63 K83 ["Enums"]
      648 GETTABLEKS                       R63 R63 K119 ["ButtonVariant"]
      650 GETTABLEKS                       R63 R63 K120 ["Standard"]
      652 SETTABLEKS                       R63 R62 K116 ["variant"]
      654 GETTABLEKS                       R63 R42 K123 ["open"]
      656 SETTABLEKS                       R63 R62 K77 ["onActivated"]
      658 MOVE                             R63 R43
      659 JUMPIF                           R63 ; [+2]
      660 GETTABLEKS                       R63 R42 K105 ["isPreparing"]
      662 SETTABLEKS                       R63 R62 K99 ["isDisabled"]
      664 CALL                             R60 2 1
      665 SETTABLEKS                       R60 R59 K113 ["EditInAssistantButton"]
      667 GETUPVAL                         R60 8
      668 GETTABLEKS                       R60 R60 K48 ["FFlagAssistantAnimationGenShowPublishButton"]
      670 JUMPIFNOT                        R60 ; [+34]
      671 GETUPVAL                         R60 11
      672 GETUPVAL                         R61 21
      673 DUPTABLE                         R62 K117 [{"LayoutOrder", "text", "size", "variant", "onActivated", "isDisabled"}]
      674 MOVE                             R63 R47
      675 CALL                             R63 0 1
      676 SETTABLEKS                       R63 R62 K55 ["LayoutOrder"]
      678 GETTABLEKS                       R63 R36 K124 ["SaveToRoblox"]
      680 SETTABLEKS                       R63 R62 K75 ["text"]
      682 GETUPVAL                         R63 18
      683 GETTABLEKS                       R63 R63 K83 ["Enums"]
      685 GETTABLEKS                       R63 R63 K106 ["InputSize"]
      687 GETTABLEKS                       R63 R63 K85 ["Small"]
      689 SETTABLEKS                       R63 R62 K80 ["size"]
      691 GETUPVAL                         R63 18
      692 GETTABLEKS                       R63 R63 K83 ["Enums"]
      694 GETTABLEKS                       R63 R63 K119 ["ButtonVariant"]
      696 GETTABLEKS                       R63 R63 K120 ["Standard"]
      698 SETTABLEKS                       R63 R62 K116 ["variant"]
      700 SETTABLEKS                       R41 R62 K77 ["onActivated"]
      702 SETTABLEKS                       R43 R62 K99 ["isDisabled"]
      704 CALL                             R60 2 1
      705 SETTABLEKS                       R60 R59 K114 ["SaveToRobloxButton"]
      707 CALL                             R56 3 1
      708 SETTABLEKS                       R56 R55 K90 ["ButtonRow"]
      710 CALL                             R52 3 1
      711 SETTABLEKS                       R52 R51 K60 ["Content"]
      713 CALL                             R48 3 1
      714 JUMPIF                           R29 ; [+1]
      715 RETURN                           R48 1
      716 GETUPVAL                         R49 11
      717 GETUPVAL                         R50 16
      718 DUPTABLE                         R51 K126 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      719 GETTABLEKS                       R52 R0 K55 ["LayoutOrder"]
      721 SETTABLEKS                       R52 R51 K55 ["LayoutOrder"]
      723 DUPTABLE                         R52 K129 [{"Thoughts", "Shell"}]
      724 SETTABLEKS                       R46 R52 K127 ["Thoughts"]
      726 SETTABLEKS                       R48 R52 K128 ["Shell"]
      728 CALL                             R49 3 -1
      729 RETURN                           R49 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Accordion"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Components"]
       20 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       22 GETTABLEKS                       R4 R4 K10 ["Actions"]
       24 GETTABLEKS                       R4 R4 K11 ["AnimationGenActionsContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["AnimationGen"]
       33 GETTABLEKS                       R5 R5 K14 ["AnimationGenTypes"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K12 ["Util"]
       40 GETTABLEKS                       R6 R6 K13 ["AnimationGen"]
       42 GETTABLEKS                       R6 R6 K15 ["State"]
       44 GETTABLEKS                       R6 R6 K16 ["AnimationHistoryTypes"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R7 R0 K17 ["Flags"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R1 K18 ["Foundation"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K7 ["Components"]
       61 GETTABLEKS                       R9 R9 K9 ["Contexts"]
       63 GETTABLEKS                       R9 R9 K10 ["Actions"]
       65 GETTABLEKS                       R9 R9 K19 ["InstanceActionsContext"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K6 [require]
       70 GETTABLEKS                       R10 R0 K7 ["Components"]
       72 GETTABLEKS                       R10 R10 K20 ["MarkdownText"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETTABLEKS                       R11 R0 K7 ["Components"]
       79 GETTABLEKS                       R11 R11 K21 ["PlaybackWidget"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R12 R1 K22 ["React"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETTABLEKS                       R13 R1 K23 ["ReactUtils"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETTABLEKS                       R14 R0 K7 ["Components"]
       96 GETTABLEKS                       R14 R14 K24 ["ShimmerGradient"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K6 [require]
      101 GETTABLEKS                       R15 R0 K25 ["Resources"]
      103 GETTABLEKS                       R15 R15 K26 ["Localization"]
      105 GETTABLEKS                       R15 R15 K27 ["Translator"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K6 [require]
      110 GETTABLEKS                       R16 R0 K28 ["Types"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R17 R0 K29 ["Hooks"]
      117 GETTABLEKS                       R17 R17 K30 ["useAnimationEditHandoff"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K6 [require]
      122 GETTABLEKS                       R18 R0 K29 ["Hooks"]
      124 GETTABLEKS                       R18 R18 K31 ["useAnimationHistory"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K6 [require]
      129 GETTABLEKS                       R19 R0 K29 ["Hooks"]
      131 GETTABLEKS                       R19 R19 K32 ["useClassIcon"]
      133 CALL                             R18 1 1
      134 GETTABLEKS                       R19 R7 K33 ["Button"]
      136 GETTABLEKS                       R20 R7 K34 ["Chip"]
      138 GETTABLEKS                       R21 R7 K35 ["Dropdown"]
      140 GETTABLEKS                       R22 R7 K36 ["Text"]
      142 GETTABLEKS                       R23 R7 K37 ["View"]
      144 GETTABLEKS                       R24 R12 K38 ["createNextOrder"]
      146 GETTABLEKS                       R25 R11 K39 ["createElement"]
      148 NEWTABLE                         R26 0 0
      150 DUPCLOSURE                       R27 K40 [PROTO_2]
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R25
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R9
      160 DUPCLOSURE                       R28 K41 [PROTO_3]
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R25
      163 CAPTURE                          VAL R27
      164 CAPTURE                          VAL R23
      165 DUPCLOSURE                       R29 K42 [PROTO_13]
      166 CAPTURE                          VAL R26
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R24
      177 CAPTURE                          VAL R25
      178 CAPTURE                          VAL R28
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R21
      187 CAPTURE                          VAL R19
      188 DUPTABLE                         R30 K46 [{["Type"] = "AnimationGen", ["ContentWidget"], ["AutoExpand"]}]
      189 GETTABLEKS                       R31 R11 K47 ["memo"]
      191 MOVE                             R32 R29
      192 CALL                             R31 1 1
      193 SETTABLEKS                       R31 R30 K44 ["ContentWidget"]
      195 DUPTABLE                         R31 K50 [{["expandWhileGenerating"] = True}]
      196 SETTABLEKS                       R31 R30 K45 ["AutoExpand"]
      198 RETURN                           R30 1
