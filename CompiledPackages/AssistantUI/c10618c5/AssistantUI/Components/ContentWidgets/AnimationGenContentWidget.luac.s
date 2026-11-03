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
       45 DUPTABLE                         R15 K18 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-muted", ["Text"] = "Thoughts", ["LayoutOrder"]}]
       46 MOVE                             R16 R3
       47 CALL                             R16 0 1
       48 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       50 DUPTABLE                         R16 K20 [{"Shimmer"}]
       51 GETTABLEKS                       R17 R0 K21 ["isWorking"]
       53 JUMPIFNOT                        R17 ; [+3]
       54 GETUPVAL                         R17 2
       55 GETUPVAL                         R18 5
       56 CALL                             R17 1 1
       57 SETTABLEKS                       R17 R16 K19 ["Shimmer"]
       59 CALL                             R13 3 1
       60 SETTABLEKS                       R13 R12 K13 ["Text"]
       62 CALL                             R9 3 1
       63 SETTABLEKS                       R9 R8 K9 ["Header"]
       65 GETUPVAL                         R9 2
       66 GETUPVAL                         R10 3
       67 GETTABLEKS                       R10 R10 K10 ["Content"]
       69 DUPTABLE                         R11 K25 [{["tag"] = "col fill gap-small size-0-0 auto-y radius-small bg-shift-300", ["LayoutOrder"], ["UseVisible"] = True}]
       70 MOVE                             R12 R3
       71 CALL                             R12 0 1
       72 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       74 DUPTABLE                         R12 K27 [{"Body"}]
       75 GETUPVAL                         R13 2
       76 GETUPVAL                         R14 6
       77 DUPTABLE                         R15 K29 [{["tag"] = "size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       78 MOVE                             R16 R3
       79 CALL                             R16 0 1
       80 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       82 DUPTABLE                         R16 K31 [{"Markdown"}]
       83 GETUPVAL                         R17 2
       84 GETUPVAL                         R18 7
       85 DUPTABLE                         R19 K33 [{"markdown"}]
       86 GETTABLEKS                       R20 R0 K34 ["thought"]
       88 SETTABLEKS                       R20 R19 K32 ["markdown"]
       90 CALL                             R17 2 1
       91 SETTABLEKS                       R17 R16 K30 ["Markdown"]
       93 CALL                             R13 3 1
       94 SETTABLEKS                       R13 R12 K26 ["Body"]
       96 CALL                             R9 3 1
       97 SETTABLEKS                       R9 R8 K10 ["Content"]
       99 CALL                             R5 3 -1
      100 RETURN                           R5 -1

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
        0 DUPTABLE                         R0 K9 [{"Preparing", "Generating", "Generated", "OpenInClipEditor", "EditInAssistant", "NoPromptProvided", "GenerationFailed", "RigInsertFailed", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K10 ["AnimationGen"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K11 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K10 ["AnimationGen"]
       11 LOADK                            R4 K1 ["Generating"]
       12 NAMECALL                         R1 R1 K11 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Generating"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K10 ["AnimationGen"]
       19 LOADK                            R4 K2 ["Generated"]
       20 NAMECALL                         R1 R1 K11 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Generated"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K10 ["AnimationGen"]
       27 LOADK                            R4 K3 ["OpenInClipEditor"]
       28 NAMECALL                         R1 R1 K11 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["OpenInClipEditor"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K10 ["AnimationGen"]
       35 LOADK                            R4 K4 ["EditInAssistant"]
       36 NAMECALL                         R1 R1 K11 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["EditInAssistant"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K10 ["AnimationGen"]
       43 LOADK                            R4 K5 ["NoPromptProvided"]
       44 NAMECALL                         R1 R1 K11 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["NoPromptProvided"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K10 ["AnimationGen"]
       51 LOADK                            R4 K6 ["GenerationFailed"]
       52 NAMECALL                         R1 R1 K11 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["GenerationFailed"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K10 ["AnimationGen"]
       59 LOADK                            R4 K7 ["RigInsertFailed"]
       60 NAMECALL                         R1 R1 K11 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["RigInsertFailed"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K12 ["ToolConfirmation"]
       67 LOADK                            R4 K13 ["ToolCallRejected"]
       68 DUPTABLE                         R5 K15 [{"toolName"}]
       69 GETUPVAL                         R6 1
       70 SETTABLEKS                       R6 R5 K14 ["toolName"]
       72 NAMECALL                         R1 R1 K11 ["getText"]
       74 CALL                             R1 4 1
       75 SETTABLEKS                       R1 R0 K8 ["ToolRejected"]
       77 RETURN                           R0 1

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
      237 JUMP                             ; [+35]
      238 JUMPIFNOT                        R13 ; [+4]
      239 GETTABLEKS                       R37 R36 K32 ["Generating"]
      241 LOADB                            R38 1
      242 JUMP                             ; [+30]
      243 JUMPIFNOT                        R11 ; [+3]
      244 GETTABLEKS                       R37 R36 K33 ["ToolRejected"]
      246 JUMP                             ; [+26]
      247 JUMPIFNOT                        R15 ; [+23]
      248 GETUPVAL                         R39 7
      249 GETTABLEKS                       R39 R39 K34 ["FailureReasons"]
      251 GETTABLEKS                       R39 R39 K35 ["NoPromptProvided"]
      253 JUMPIFNOTEQ                      R7 R39 ; [+4]
      255 GETTABLEKS                       R37 R36 K35 ["NoPromptProvided"]
      257 JUMP                             ; [+15]
      258 GETUPVAL                         R39 7
      259 GETTABLEKS                       R39 R39 K34 ["FailureReasons"]
      261 GETTABLEKS                       R39 R39 K36 ["RigInsertFailed"]
      263 JUMPIFNOTEQ                      R7 R39 ; [+4]
      265 GETTABLEKS                       R37 R36 K36 ["RigInsertFailed"]
      267 JUMP                             ; [+5]
      268 GETTABLEKS                       R37 R36 K37 ["GenerationFailed"]
      270 JUMP                             ; [+2]
      271 GETTABLEKS                       R37 R36 K38 ["Generated"]
      273 GETUPVAL                         R39 2
      274 GETTABLEKS                       R39 R39 K20 ["useCallback"]
      276 NEWCLOSURE                       R40 P4
      277 CAPTURE                          VAL R31
      278 CAPTURE                          VAL R21
      279 NEWTABLE                         R41 0 2
      281 MOVE                             R42 R31
      282 MOVE                             R43 R21
      283 SETLIST                          R41 R42 2 [1]
      285 CALL                             R39 2 1
      286 GETUPVAL                         R40 2
      287 GETTABLEKS                       R40 R40 K20 ["useCallback"]
      289 NEWCLOSURE                       R41 P5
      290 CAPTURE                          VAL R32
      291 CAPTURE                          VAL R23
      292 NEWTABLE                         R42 0 2
      294 MOVE                             R43 R32
      295 MOVE                             R44 R23
      296 SETLIST                          R42 R43 2 [1]
      298 CALL                             R40 2 1
      299 GETUPVAL                         R41 2
      300 GETTABLEKS                       R41 R41 K20 ["useCallback"]
      302 NEWCLOSURE                       R42 P6
      303 CAPTURE                          VAL R32
      304 CAPTURE                          VAL R23
      305 NEWTABLE                         R43 0 2
      307 MOVE                             R44 R32
      308 MOVE                             R45 R23
      309 SETLIST                          R43 R44 2 [1]
      311 CALL                             R41 2 1
      312 GETUPVAL                         R42 2
      313 GETTABLEKS                       R42 R42 K39 ["useEffect"]
      315 NEWCLOSURE                       R43 P7
      316 CAPTURE                          UPVAL U8
      317 CAPTURE                          VAL R0
      318 CAPTURE                          VAL R32
      319 CAPTURE                          VAL R23
      320 NEWTABLE                         R44 0 3
      322 GETTABLEKS                       R45 R0 K40 ["expanded"]
      324 MOVE                             R46 R32
      325 MOVE                             R47 R23
      326 SETLIST                          R44 R45 3 [1]
      328 CALL                             R42 2 0
      329 GETUPVAL                         R42 9
      330 DUPTABLE                         R43 K43 [{"toolUseId", "versionId", "sendMessage"}]
      331 SETTABLEKS                       R4 R43 K17 ["toolUseId"]
      333 MOVE                             R44 R19
      334 JUMPIFNOT                        R44 ; [+2]
      335 GETTABLEKS                       R44 R19 K41 ["versionId"]
      337 SETTABLEKS                       R44 R43 K41 ["versionId"]
      339 GETTABLEKS                       R44 R0 K42 ["sendMessage"]
      341 SETTABLEKS                       R44 R43 K42 ["sendMessage"]
      343 CALL                             R42 1 1
      344 LOADB                            R43 1
      345 JUMPIFEQKNIL                     R18 ; [+3]
      347 GETTABLEKS                       R43 R17 K44 ["isSelecting"]
      349 GETUPVAL                         R44 8
      350 GETTABLEKS                       R44 R44 K45 ["FFlagAnimationGenOpenACE"]
      352 JUMPIF                           R44 ; [+3]
      353 GETUPVAL                         R44 8
      354 GETTABLEKS                       R44 R44 K46 ["FFlagAssistantAnimationGenShowPublishButton"]
      356 GETUPVAL                         R45 10
      357 CALL                             R45 0 1
      358 MOVE                             R46 R29
      359 JUMPIFNOT                        R46 ; [+16]
      360 GETUPVAL                         R46 11
      361 GETUPVAL                         R47 12
      362 DUPTABLE                         R48 K51 [{"layoutOrder", "thoughts", "isWorking", "contentId"}]
      363 MOVE                             R49 R45
      364 CALL                             R49 0 1
      365 SETTABLEKS                       R49 R48 K47 ["layoutOrder"]
      367 SETTABLEKS                       R26 R48 K48 ["thoughts"]
      369 SETTABLEKS                       R38 R48 K49 ["isWorking"]
      371 GETTABLEKS                       R49 R0 K50 ["contentId"]
      373 SETTABLEKS                       R49 R48 K50 ["contentId"]
      375 CALL                             R46 2 1
      376 GETUPVAL                         R47 10
      377 CALL                             R47 0 1
      378 GETUPVAL                         R48 11
      379 GETUPVAL                         R49 13
      380 GETTABLEKS                       R49 R49 K52 ["Root"]
      382 DUPTABLE                         R50 K56 [{"LayoutOrder", "expanded", "isContentHidden", "contentId", "editThisContent"}]
      383 JUMPIFNOT                        R29 ; [+3]
      384 MOVE                             R51 R45
      385 CALL                             R51 0 1
      386 JUMP                             ; [+2]
      387 GETTABLEKS                       R51 R0 K53 ["LayoutOrder"]
      389 SETTABLEKS                       R51 R50 K53 ["LayoutOrder"]
      391 JUMPIFNOT                        R16 ; [+3]
      392 GETTABLEKS                       R51 R0 K40 ["expanded"]
      394 JUMP                             ; [+1]
      395 LOADB                            R51 0
      396 SETTABLEKS                       R51 R50 K40 ["expanded"]
      398 JUMPIFEQKNIL                     R18 ; [+3]
      400 MOVE                             R51 R25
      401 JUMP                             ; [+2]
      402 GETTABLEKS                       R51 R0 K54 ["isContentHidden"]
      404 SETTABLEKS                       R51 R50 K54 ["isContentHidden"]
      406 GETTABLEKS                       R51 R0 K50 ["contentId"]
      408 SETTABLEKS                       R51 R50 K50 ["contentId"]
      410 GETTABLEKS                       R51 R0 K55 ["editThisContent"]
      412 SETTABLEKS                       R51 R50 K55 ["editThisContent"]
      414 DUPTABLE                         R51 K59 [{"Header", "Content"}]
      415 GETUPVAL                         R52 11
      416 GETUPVAL                         R53 13
      417 GETTABLEKS                       R53 R53 K57 ["Header"]
      419 DUPTABLE                         R54 K61 [{"IsDisabled", "LayoutOrder"}]
      420 NOT                              R55 R16
      421 SETTABLEKS                       R55 R54 K60 ["IsDisabled"]
      423 MOVE                             R55 R47
      424 CALL                             R55 0 1
      425 SETTABLEKS                       R55 R54 K53 ["LayoutOrder"]
      427 DUPTABLE                         R55 K64 [{"Text", "ChipArea"}]
      428 GETUPVAL                         R56 11
      429 GETUPVAL                         R57 14
      430 DUPTABLE                         R58 K66 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      431 SETTABLEKS                       R37 R58 K62 ["Text"]
      433 MOVE                             R59 R47
      434 CALL                             R59 0 1
      435 SETTABLEKS                       R59 R58 K53 ["LayoutOrder"]
      437 DUPTABLE                         R59 K68 [{"Shimmer"}]
      438 MOVE                             R60 R38
      439 JUMPIFNOT                        R60 ; [+3]
      440 GETUPVAL                         R60 11
      441 GETUPVAL                         R61 15
      442 CALL                             R60 1 1
      443 SETTABLEKS                       R60 R59 K67 ["Shimmer"]
      445 CALL                             R56 3 1
      446 SETTABLEKS                       R56 R55 K62 ["Text"]
      448 MOVE                             R56 R35
      449 JUMPIFNOT                        R56 ; [+32]
      450 GETUPVAL                         R56 11
      451 GETUPVAL                         R57 16
      452 DUPTABLE                         R58 K70 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      453 MOVE                             R59 R47
      454 CALL                             R59 0 1
      455 SETTABLEKS                       R59 R58 K53 ["LayoutOrder"]
      457 DUPTABLE                         R59 K72 [{"AnimationLink"}]
      458 GETUPVAL                         R60 11
      459 GETUPVAL                         R61 17
      460 DUPTABLE                         R62 K79 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"]}]
      461 SETTABLEKS                       R22 R62 K73 ["text"]
      463 GETTABLEKS                       R63 R30 K80 ["Image"]
      465 SETTABLEKS                       R63 R62 K74 ["leading"]
      467 SETTABLEKS                       R39 R62 K75 ["onActivated"]
      469 GETUPVAL                         R63 18
      470 GETTABLEKS                       R63 R63 K81 ["Enums"]
      472 GETTABLEKS                       R63 R63 K82 ["ChipSize"]
      474 GETTABLEKS                       R63 R63 K83 ["Small"]
      476 SETTABLEKS                       R63 R62 K78 ["size"]
      478 CALL                             R60 2 1
      479 SETTABLEKS                       R60 R59 K71 ["AnimationLink"]
      481 CALL                             R56 3 1
      482 SETTABLEKS                       R56 R55 K63 ["ChipArea"]
      484 CALL                             R52 3 1
      485 SETTABLEKS                       R52 R51 K57 ["Header"]
      487 MOVE                             R52 R16
      488 JUMPIFNOT                        R52 ; [+204]
      489 GETUPVAL                         R52 11
      490 GETUPVAL                         R53 13
      491 GETTABLEKS                       R53 R53 K58 ["Content"]
      493 DUPTABLE                         R54 K86 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      494 MOVE                             R55 R47
      495 CALL                             R55 0 1
      496 SETTABLEKS                       R55 R54 K53 ["LayoutOrder"]
      498 DUPTABLE                         R55 K89 [{"PlaybackWidget", "ButtonRow"}]
      499 GETUPVAL                         R56 11
      500 GETUPVAL                         R57 19
      501 DUPTABLE                         R58 K91 [{"toolUseId", "duration", "layoutOrder", "trailingContent"}]
      502 SETTABLEKS                       R23 R58 K17 ["toolUseId"]
      504 SETTABLEKS                       R20 R58 K13 ["duration"]
      506 MOVE                             R59 R47
      507 CALL                             R59 0 1
      508 SETTABLEKS                       R59 R58 K47 ["layoutOrder"]
      510 GETUPVAL                         R59 11
      511 GETUPVAL                         R60 20
      512 GETTABLEKS                       R60 R60 K52 ["Root"]
      514 DUPTABLE                         R61 K101 [{["label"] = "", ["placeholder"], ["value"], ["items"], ["onItemChanged"], ["isDisabled"], ["size"], ["width"], ["testId"] = "AnimationGenVersionDropdown"}]
      515 SETTABLEKS                       R22 R61 K93 ["placeholder"]
      517 MOVE                             R62 R19
      518 JUMPIFNOT                        R62 ; [+2]
      519 GETTABLEKS                       R62 R19 K41 ["versionId"]
      521 SETTABLEKS                       R62 R61 K94 ["value"]
      523 SETTABLEKS                       R24 R61 K95 ["items"]
      525 GETTABLEKS                       R62 R17 K102 ["selectVersion"]
      527 SETTABLEKS                       R62 R61 K96 ["onItemChanged"]
      529 MOVE                             R62 R43
      530 JUMPIF                           R62 ; [+2]
      531 GETTABLEKS                       R62 R42 K103 ["isPreparing"]
      533 SETTABLEKS                       R62 R61 K97 ["isDisabled"]
      535 GETUPVAL                         R62 18
      536 GETTABLEKS                       R62 R62 K81 ["Enums"]
      538 GETTABLEKS                       R62 R62 K104 ["InputSize"]
      540 GETTABLEKS                       R62 R62 K83 ["Small"]
      542 SETTABLEKS                       R62 R61 K78 ["size"]
      544 GETIMPORT                        R62 K107 [UDim.new]
      546 LOADN                            R63 0
      547 LOADN                            R64 240
      548 CALL                             R62 2 1
      549 SETTABLEKS                       R62 R61 K98 ["width"]
      551 CALL                             R59 2 1
      552 SETTABLEKS                       R59 R58 K90 ["trailingContent"]
      554 CALL                             R56 2 1
      555 SETTABLEKS                       R56 R55 K87 ["PlaybackWidget"]
      557 MOVE                             R56 R44
      558 JUMPIFNOT                        R56 ; [+131]
      559 GETUPVAL                         R56 11
      560 GETUPVAL                         R57 16
      561 DUPTABLE                         R58 K109 [{["tag"] = "row wrap gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      562 MOVE                             R59 R47
      563 CALL                             R59 0 1
      564 SETTABLEKS                       R59 R58 K53 ["LayoutOrder"]
      566 DUPTABLE                         R59 K113 [{"OpenInClipEditorButton", "EditInAssistantButton", "SaveToRobloxButton"}]
      567 GETUPVAL                         R60 8
      568 GETTABLEKS                       R60 R60 K45 ["FFlagAnimationGenOpenACE"]
      570 JUMPIFNOT                        R60 ; [+34]
      571 GETUPVAL                         R60 11
      572 GETUPVAL                         R61 21
      573 DUPTABLE                         R62 K115 [{"LayoutOrder", "text", "size", "variant", "onActivated", "isDisabled"}]
      574 MOVE                             R63 R47
      575 CALL                             R63 0 1
      576 SETTABLEKS                       R63 R62 K53 ["LayoutOrder"]
      578 GETTABLEKS                       R63 R36 K116 ["OpenInClipEditor"]
      580 SETTABLEKS                       R63 R62 K73 ["text"]
      582 GETUPVAL                         R63 18
      583 GETTABLEKS                       R63 R63 K81 ["Enums"]
      585 GETTABLEKS                       R63 R63 K104 ["InputSize"]
      587 GETTABLEKS                       R63 R63 K83 ["Small"]
      589 SETTABLEKS                       R63 R62 K78 ["size"]
      591 GETUPVAL                         R63 18
      592 GETTABLEKS                       R63 R63 K81 ["Enums"]
      594 GETTABLEKS                       R63 R63 K117 ["ButtonVariant"]
      596 GETTABLEKS                       R63 R63 K118 ["Standard"]
      598 SETTABLEKS                       R63 R62 K114 ["variant"]
      600 SETTABLEKS                       R40 R62 K75 ["onActivated"]
      602 SETTABLEKS                       R43 R62 K97 ["isDisabled"]
      604 CALL                             R60 2 1
      605 SETTABLEKS                       R60 R59 K110 ["OpenInClipEditorButton"]
      607 GETUPVAL                         R60 8
      608 GETTABLEKS                       R60 R60 K119 ["FFlagAssistantEditScrubbarPropertyRow"]
      610 JUMPIFNOT                        R60 ; [+40]
      611 GETUPVAL                         R60 11
      612 GETUPVAL                         R61 21
      613 DUPTABLE                         R62 K115 [{"LayoutOrder", "text", "size", "variant", "onActivated", "isDisabled"}]
      614 MOVE                             R63 R47
      615 CALL                             R63 0 1
      616 SETTABLEKS                       R63 R62 K53 ["LayoutOrder"]
      618 GETTABLEKS                       R63 R36 K120 ["EditInAssistant"]
      620 SETTABLEKS                       R63 R62 K73 ["text"]
      622 GETUPVAL                         R63 18
      623 GETTABLEKS                       R63 R63 K81 ["Enums"]
      625 GETTABLEKS                       R63 R63 K104 ["InputSize"]
      627 GETTABLEKS                       R63 R63 K83 ["Small"]
      629 SETTABLEKS                       R63 R62 K78 ["size"]
      631 GETUPVAL                         R63 18
      632 GETTABLEKS                       R63 R63 K81 ["Enums"]
      634 GETTABLEKS                       R63 R63 K117 ["ButtonVariant"]
      636 GETTABLEKS                       R63 R63 K118 ["Standard"]
      638 SETTABLEKS                       R63 R62 K114 ["variant"]
      640 GETTABLEKS                       R63 R42 K121 ["open"]
      642 SETTABLEKS                       R63 R62 K75 ["onActivated"]
      644 MOVE                             R63 R43
      645 JUMPIF                           R63 ; [+2]
      646 GETTABLEKS                       R63 R42 K103 ["isPreparing"]
      648 SETTABLEKS                       R63 R62 K97 ["isDisabled"]
      650 CALL                             R60 2 1
      651 SETTABLEKS                       R60 R59 K111 ["EditInAssistantButton"]
      653 GETUPVAL                         R60 8
      654 GETTABLEKS                       R60 R60 K46 ["FFlagAssistantAnimationGenShowPublishButton"]
      656 JUMPIFNOT                        R60 ; [+30]
      657 GETUPVAL                         R60 11
      658 GETUPVAL                         R61 21
      659 DUPTABLE                         R62 K123 [{["LayoutOrder"], ["text"] = "Save to Roblox", ["size"], ["variant"], ["onActivated"], ["isDisabled"]}]
      660 MOVE                             R63 R47
      661 CALL                             R63 0 1
      662 SETTABLEKS                       R63 R62 K53 ["LayoutOrder"]
      664 GETUPVAL                         R63 18
      665 GETTABLEKS                       R63 R63 K81 ["Enums"]
      667 GETTABLEKS                       R63 R63 K104 ["InputSize"]
      669 GETTABLEKS                       R63 R63 K83 ["Small"]
      671 SETTABLEKS                       R63 R62 K78 ["size"]
      673 GETUPVAL                         R63 18
      674 GETTABLEKS                       R63 R63 K81 ["Enums"]
      676 GETTABLEKS                       R63 R63 K117 ["ButtonVariant"]
      678 GETTABLEKS                       R63 R63 K118 ["Standard"]
      680 SETTABLEKS                       R63 R62 K114 ["variant"]
      682 SETTABLEKS                       R41 R62 K75 ["onActivated"]
      684 SETTABLEKS                       R43 R62 K97 ["isDisabled"]
      686 CALL                             R60 2 1
      687 SETTABLEKS                       R60 R59 K112 ["SaveToRobloxButton"]
      689 CALL                             R56 3 1
      690 SETTABLEKS                       R56 R55 K88 ["ButtonRow"]
      692 CALL                             R52 3 1
      693 SETTABLEKS                       R52 R51 K58 ["Content"]
      695 CALL                             R48 3 1
      696 JUMPIF                           R29 ; [+1]
      697 RETURN                           R48 1
      698 GETUPVAL                         R49 11
      699 GETUPVAL                         R50 16
      700 DUPTABLE                         R51 K125 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      701 GETTABLEKS                       R52 R0 K53 ["LayoutOrder"]
      703 SETTABLEKS                       R52 R51 K53 ["LayoutOrder"]
      705 DUPTABLE                         R52 K128 [{"Thoughts", "Shell"}]
      706 SETTABLEKS                       R46 R52 K126 ["Thoughts"]
      708 SETTABLEKS                       R48 R52 K127 ["Shell"]
      710 CALL                             R49 3 -1
      711 RETURN                           R49 -1

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
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R9
      159 DUPCLOSURE                       R28 K41 [PROTO_3]
      160 CAPTURE                          VAL R24
      161 CAPTURE                          VAL R25
      162 CAPTURE                          VAL R27
      163 CAPTURE                          VAL R23
      164 DUPCLOSURE                       R29 K42 [PROTO_13]
      165 CAPTURE                          VAL R26
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R24
      176 CAPTURE                          VAL R25
      177 CAPTURE                          VAL R28
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R19
      187 DUPTABLE                         R30 K46 [{["Type"] = "AnimationGen", ["ContentWidget"], ["AutoExpand"]}]
      188 GETTABLEKS                       R31 R11 K47 ["memo"]
      190 MOVE                             R32 R29
      191 CALL                             R31 1 1
      192 SETTABLEKS                       R31 R30 K44 ["ContentWidget"]
      194 DUPTABLE                         R31 K50 [{["expandWhileGenerating"] = True}]
      195 SETTABLEKS                       R31 R30 K45 ["AutoExpand"]
      197 RETURN                           R30 1
