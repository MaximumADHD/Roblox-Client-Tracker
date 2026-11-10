PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+4]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K0 ["getPendingEdit"]
       13 CALL                             R0 0 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K1 ["beginEditPreview"]
       17 DUPTABLE                         R2 K6 [{"priorJobId", "sourceToolUseId", "editToolUseId", "editSessionId"}]
       18 MOVE                             R3 R0
       19 JUMPIFNOT                        R3 ; [+2]
       20 GETTABLEKS                       R3 R0 K2 ["priorJobId"]
       22 SETTABLEKS                       R3 R2 K2 ["priorJobId"]
       24 GETUPVAL                         R3 1
       25 SETTABLEKS                       R3 R2 K3 ["sourceToolUseId"]
       27 GETUPVAL                         R3 4
       28 GETUPVAL                         R4 1
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K4 ["editToolUseId"]
       32 GETUPVAL                         R3 2
       33 SETTABLEKS                       R3 R2 K5 ["editSessionId"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+14]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 GETTABLEKS                       R0 R0 K1 ["endEditSession"]
       10 DUPTABLE                         R1 K4 [{"toolUseId", "editSessionId"}]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
       14 GETUPVAL                         R2 2
       15 SETTABLEKS                       R2 R1 K3 ["editSessionId"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 NEWCLOSURE                       R0 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 JUMPIFEQKNIL                     R0 ; [+14]
        6 GETTABLEKS                       R1 R0 K1 ["editSessionId"]
        8 GETUPVAL                         R2 1
        9 JUMPIFNOTEQ                      R1 R2 ; [+9]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 GETTABLEKS                       R1 R1 K2 ["sessionId"]
       16 GETUPVAL                         R2 1
       17 JUMPIFEQ                         R1 R2 ; [+2]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R0 K4 ["revision"]
       22 ORK                              R1 R2 K3 [0]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K0 ["current"]
       26 GETTABLEKS                       R2 R2 K4 ["revision"]
       28 JUMPIFNOTLT                      R1 R2 ; [+2]
       30 RETURN                           R0 0
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K0 ["current"]
       34 SETTABLEKS                       R1 R2 K4 ["revision"]
       36 GETUPVAL                         R2 3
       37 MOVE                             R3 R0
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["getEditScrubbarState"]
        5 DUPTABLE                         R2 K4 [{"toolUseId"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K3 ["toolUseId"]
        9 CALL                             R0 2 2
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R2 K6 [warn]
       17 LOADK                            R3 K7 ["[AnimationGen] Unable to read edit scrubbar state:"]
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 RETURN                           R0 0
        9 GETIMPORT                        R1 K3 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+26]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+24]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFEQKNIL                     R0 ; [+20]
        9 GETUPVAL                         R0 3
       10 JUMPIFEQKNIL                     R0 ; [+17]
       12 GETUPVAL                         R0 4
       13 JUMPIFEQKNIL                     R0 ; [+14]
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K0 ["current"]
       18 GETTABLEKS                       R0 R0 K1 ["discardEditAnimationPreview"]
       20 DUPTABLE                         R1 K4 [{"sourceToolUseId", "editSessionId"}]
       21 GETUPVAL                         R2 3
       22 SETTABLEKS                       R2 R1 K2 ["sourceToolUseId"]
       24 GETUPVAL                         R2 4
       25 SETTABLEKS                       R2 R1 K3 ["editSessionId"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Context"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["getPendingEdit"]
       10 CALL                             R4 0 1
       11 MOVE                             R5 R2
       12 LOADK                            R6 K3 ["generationMode"]
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K4 ["isEditMode"]
       17 MOVE                             R7 R5
       18 CALL                             R6 1 1
       19 LOADB                            R7 0
       20 JUMPIFEQKNIL                     R4 ; [+12]
       22 MOVE                             R7 R1
       23 JUMPIFNOT                        R7 ; [+9]
       24 LOADB                            R7 0
       25 JUMPIFEQKNIL                     R0 ; [+7]
       27 GETTABLEKS                       R8 R4 K5 ["savedKeyframesContentId"]
       29 JUMPIFEQ                         R0 R8 ; [+2]
       31 LOADB                            R7 0 +1
       32 LOADB                            R7 1
       33 AND                              R8 R7 R6
       34 MOVE                             R9 R4
       35 JUMPIFNOT                        R9 ; [+2]
       36 GETTABLEKS                       R9 R4 K5 ["savedKeyframesContentId"]
       38 MOVE                             R10 R4
       39 JUMPIFNOT                        R10 ; [+2]
       40 GETTABLEKS                       R10 R4 K6 ["editSessionId"]
       42 JUMPIFNOT                        R8 ; [+2]
       43 MOVE                             R11 R9
       44 JUMP                             ; [+1]
       45 LOADNIL                          R11
       46 JUMPIFNOT                        R8 ; [+2]
       47 MOVE                             R12 R10
       48 JUMP                             ; [+1]
       49 LOADNIL                          R12
       50 MOVE                             R13 R2
       51 LOADK                            R14 K7 ["editTextPrompt"]
       52 CALL                             R13 1 1
       53 LOADB                            R14 0
       54 JUMPIFNOTEQKS                    R5 K8 ["editNew"] ; [+5]
       56 GETUPVAL                         R15 4
       57 GETTABLEKS                       R15 R15 K9 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
       59 NOT                              R14 R15
       60 JUMPIFNOT                        R14 ; [+9]
       61 FASTCALL1                        TYPEOF R13 ; [+3]
       62 MOVE                             R17 R13
       63 GETIMPORT                        R16 K11 [typeof]
       65 CALL                             R16 1 1
       66 JUMPIFNOTEQKS                    R16 K12 ["string"] ; [+3]
       68 MOVE                             R15 R13
       69 JUMP                             ; [+1]
       70 LOADK                            R15 K13 [""]
       71 GETUPVAL                         R16 0
       72 GETTABLEKS                       R16 R16 K14 ["useState"]
       74 LOADNIL                          R17
       75 CALL                             R16 1 2
       76 GETUPVAL                         R18 0
       77 GETTABLEKS                       R18 R18 K15 ["useRef"]
       79 DUPTABLE                         R19 K19 [{["sessionId"] = , ["prompt"] = ""}]
       80 CALL                             R18 1 1
       81 JUMPIFNOT                        R8 ; [+13]
       82 GETTABLEKS                       R19 R18 K20 ["current"]
       84 GETTABLEKS                       R19 R19 K16 ["sessionId"]
       86 JUMPIFEQ                         R19 R10 ; [+8]
       88 DUPTABLE                         R19 K21 [{"sessionId", "prompt"}]
       89 SETTABLEKS                       R10 R19 K16 ["sessionId"]
       91 SETTABLEKS                       R15 R19 K18 ["prompt"]
       93 SETTABLEKS                       R19 R18 K20 ["current"]
       95 GETUPVAL                         R19 0
       96 GETTABLEKS                       R19 R19 K15 ["useRef"]
       98 DUPTABLE                         R20 K24 [{["sessionId"], ["revision"] = -1}]
       99 SETTABLEKS                       R10 R20 K16 ["sessionId"]
      101 CALL                             R19 1 1
      102 GETTABLEKS                       R20 R19 K20 ["current"]
      104 GETTABLEKS                       R20 R20 K16 ["sessionId"]
      106 JUMPIFEQ                         R20 R10 ; [+6]
      108 DUPTABLE                         R20 K24 [{["sessionId"], ["revision"] = -1}]
      109 SETTABLEKS                       R10 R20 K16 ["sessionId"]
      111 SETTABLEKS                       R20 R19 K20 ["current"]
      113 GETUPVAL                         R20 0
      114 GETTABLEKS                       R20 R20 K15 ["useRef"]
      116 LOADB                            R21 1
      117 CALL                             R20 1 1
      118 GETUPVAL                         R21 0
      119 GETTABLEKS                       R21 R21 K15 ["useRef"]
      121 MOVE                             R22 R3
      122 CALL                             R21 1 1
      123 SETTABLEKS                       R3 R21 K20 ["current"]
      125 GETUPVAL                         R22 0
      126 GETTABLEKS                       R22 R22 K25 ["useEffect"]
      128 NEWCLOSURE                       R23 P0
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R12
      132 CAPTURE                          UPVAL U2
      133 CAPTURE                          UPVAL U5
      134 NEWTABLE                         R24 0 3
      136 MOVE                             R25 R3
      137 MOVE                             R26 R11
      138 MOVE                             R27 R12
      139 SETLIST                          R24 R25 3 [1]
      141 CALL                             R22 2 0
      142 GETUPVAL                         R22 0
      143 GETTABLEKS                       R22 R22 K25 ["useEffect"]
      145 NEWCLOSURE                       R23 P1
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R21
      149 NEWTABLE                         R24 0 2
      151 MOVE                             R25 R11
      152 MOVE                             R26 R12
      153 SETLIST                          R24 R25 2 [1]
      155 CALL                             R22 2 0
      156 GETUPVAL                         R22 0
      157 GETTABLEKS                       R22 R22 K26 ["useCallback"]
      159 NEWCLOSURE                       R23 P2
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R17
      164 NEWTABLE                         R24 0 1
      166 MOVE                             R25 R10
      167 SETLIST                          R24 R25 1 [1]
      169 CALL                             R22 2 1
      170 GETUPVAL                         R23 0
      171 GETTABLEKS                       R23 R23 K26 ["useCallback"]
      173 NEWCLOSURE                       R24 P3
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R22
      177 NEWTABLE                         R25 0 2
      179 MOVE                             R26 R9
      180 MOVE                             R27 R22
      181 SETLIST                          R25 R26 2 [1]
      183 CALL                             R23 2 1
      184 GETUPVAL                         R24 1
      185 GETTABLEKS                       R24 R24 K27 ["usePoseEdited"]
      187 MOVE                             R25 R11
      188 MOVE                             R26 R23
      189 CALL                             R24 2 0
      190 GETUPVAL                         R24 0
      191 GETTABLEKS                       R24 R24 K25 ["useEffect"]
      193 NEWCLOSURE                       R25 P4
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R23
      196 NEWTABLE                         R26 0 2
      198 MOVE                             R27 R8
      199 MOVE                             R28 R23
      200 SETLIST                          R26 R27 2 [1]
      202 CALL                             R24 2 0
      203 GETUPVAL                         R24 0
      204 GETTABLEKS                       R24 R24 K25 ["useEffect"]
      206 NEWCLOSURE                       R25 P5
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R10
      212 NEWTABLE                         R26 0 3
      214 MOVE                             R27 R7
      215 MOVE                             R28 R6
      216 MOVE                             R29 R10
      217 SETLIST                          R26 R27 3 [1]
      219 CALL                             R24 2 0
      220 GETUPVAL                         R24 0
      221 GETTABLEKS                       R24 R24 K25 ["useEffect"]
      223 NEWCLOSURE                       R25 P6
      224 CAPTURE                          VAL R20
      225 NEWTABLE                         R26 0 0
      227 CALL                             R24 2 0
      228 JUMPIFEQKNIL                     R16 ; [+7]
      230 GETTABLEKS                       R25 R16 K6 ["editSessionId"]
      232 JUMPIFNOTEQ                      R25 R10 ; [+3]
      234 MOVE                             R24 R16
      235 JUMP                             ; [+1]
      236 LOADNIL                          R24
      237 DUPTABLE                         R25 K30 [{"isVisible", "hasChanges"}]
      238 SETTABLEKS                       R8 R25 K28 ["isVisible"]
      240 JUMPIFEQKNIL                     R24 ; [+6]
      242 LOADB                            R26 1
      243 GETTABLEKS                       R27 R24 K29 ["hasChanges"]
      245 JUMPIFEQKB                       R27 TRUE ; [+11]
      247 MOVE                             R26 R14
      248 JUMPIFNOT                        R26 ; [+8]
      249 GETTABLEKS                       R27 R18 K20 ["current"]
      251 GETTABLEKS                       R27 R27 K18 ["prompt"]
      253 JUMPIFNOTEQ                      R15 R27 ; [+2]
      255 LOADB                            R26 0 +1
      256 LOADB                            R26 1
      257 SETTABLEKS                       R26 R25 K29 ["hasChanges"]
      259 RETURN                           R25 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["Actions"]
       15 GETTABLEKS                       R2 R2 K9 ["AnimationGenActionsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Bridges"]
       22 GETTABLEKS                       R3 R3 K11 ["createAnimationGenBridge"]
       24 GETTABLEKS                       R3 R3 K12 ["AnimationGenBridgeTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K13 ["Util"]
       31 GETTABLEKS                       R4 R4 K14 ["AnimationGen"]
       33 GETTABLEKS                       R4 R4 K15 ["AnimationGenTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K13 ["Util"]
       40 GETTABLEKS                       R5 R5 K14 ["AnimationGen"]
       42 GETTABLEKS                       R5 R5 K16 ["EditInAssistantState"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K17 ["Flags"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K18 ["Parent"]
       54 GETTABLEKS                       R7 R7 K19 ["React"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K13 ["Util"]
       61 GETTABLEKS                       R8 R8 K14 ["AnimationGen"]
       63 GETTABLEKS                       R8 R8 K20 ["editPlaybackId"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K21 [PROTO_10]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 RETURN                           R8 1
