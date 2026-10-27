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
       53 JUMPIFNOTEQKS                    R5 K8 ["editNew"] ; [+10]
       55 FASTCALL1                        TYPEOF R13 ; [+3]
       56 MOVE                             R16 R13
       57 GETIMPORT                        R15 K10 [typeof]
       59 CALL                             R15 1 1
       60 JUMPIFNOTEQKS                    R15 K11 ["string"] ; [+3]
       62 MOVE                             R14 R13
       63 JUMP                             ; [+1]
       64 LOADK                            R14 K12 [""]
       65 GETUPVAL                         R15 0
       66 GETTABLEKS                       R15 R15 K13 ["useState"]
       68 LOADNIL                          R16
       69 CALL                             R15 1 2
       70 GETUPVAL                         R17 0
       71 GETTABLEKS                       R17 R17 K14 ["useRef"]
       73 DUPTABLE                         R18 K18 [{["sessionId"] = , ["prompt"] = ""}]
       74 CALL                             R17 1 1
       75 JUMPIFNOT                        R8 ; [+13]
       76 GETTABLEKS                       R18 R17 K19 ["current"]
       78 GETTABLEKS                       R18 R18 K15 ["sessionId"]
       80 JUMPIFEQ                         R18 R10 ; [+8]
       82 DUPTABLE                         R18 K20 [{"sessionId", "prompt"}]
       83 SETTABLEKS                       R10 R18 K15 ["sessionId"]
       85 SETTABLEKS                       R14 R18 K17 ["prompt"]
       87 SETTABLEKS                       R18 R17 K19 ["current"]
       89 GETUPVAL                         R18 0
       90 GETTABLEKS                       R18 R18 K14 ["useRef"]
       92 DUPTABLE                         R19 K23 [{["sessionId"], ["revision"] = -1}]
       93 SETTABLEKS                       R10 R19 K15 ["sessionId"]
       95 CALL                             R18 1 1
       96 GETTABLEKS                       R19 R18 K19 ["current"]
       98 GETTABLEKS                       R19 R19 K15 ["sessionId"]
      100 JUMPIFEQ                         R19 R10 ; [+6]
      102 DUPTABLE                         R19 K23 [{["sessionId"], ["revision"] = -1}]
      103 SETTABLEKS                       R10 R19 K15 ["sessionId"]
      105 SETTABLEKS                       R19 R18 K19 ["current"]
      107 GETUPVAL                         R19 0
      108 GETTABLEKS                       R19 R19 K14 ["useRef"]
      110 LOADB                            R20 1
      111 CALL                             R19 1 1
      112 GETUPVAL                         R20 0
      113 GETTABLEKS                       R20 R20 K14 ["useRef"]
      115 MOVE                             R21 R3
      116 CALL                             R20 1 1
      117 SETTABLEKS                       R3 R20 K19 ["current"]
      119 GETUPVAL                         R21 0
      120 GETTABLEKS                       R21 R21 K24 ["useEffect"]
      122 NEWCLOSURE                       R22 P0
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R12
      126 CAPTURE                          UPVAL U2
      127 CAPTURE                          UPVAL U4
      128 NEWTABLE                         R23 0 3
      130 MOVE                             R24 R3
      131 MOVE                             R25 R11
      132 MOVE                             R26 R12
      133 SETLIST                          R23 R24 3 [1]
      135 CALL                             R21 2 0
      136 GETUPVAL                         R21 0
      137 GETTABLEKS                       R21 R21 K24 ["useEffect"]
      139 NEWCLOSURE                       R22 P1
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R20
      143 NEWTABLE                         R23 0 2
      145 MOVE                             R24 R11
      146 MOVE                             R25 R12
      147 SETLIST                          R23 R24 2 [1]
      149 CALL                             R21 2 0
      150 GETUPVAL                         R21 0
      151 GETTABLEKS                       R21 R21 K25 ["useCallback"]
      153 NEWCLOSURE                       R22 P2
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R16
      158 NEWTABLE                         R23 0 1
      160 MOVE                             R24 R10
      161 SETLIST                          R23 R24 1 [1]
      163 CALL                             R21 2 1
      164 GETUPVAL                         R22 0
      165 GETTABLEKS                       R22 R22 K25 ["useCallback"]
      167 NEWCLOSURE                       R23 P3
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R21
      171 NEWTABLE                         R24 0 2
      173 MOVE                             R25 R9
      174 MOVE                             R26 R21
      175 SETLIST                          R24 R25 2 [1]
      177 CALL                             R22 2 1
      178 GETUPVAL                         R23 1
      179 GETTABLEKS                       R23 R23 K26 ["usePoseEdited"]
      181 MOVE                             R24 R11
      182 MOVE                             R25 R22
      183 CALL                             R23 2 0
      184 GETUPVAL                         R23 0
      185 GETTABLEKS                       R23 R23 K24 ["useEffect"]
      187 NEWCLOSURE                       R24 P4
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R22
      190 NEWTABLE                         R25 0 2
      192 MOVE                             R26 R8
      193 MOVE                             R27 R22
      194 SETLIST                          R25 R26 2 [1]
      196 CALL                             R23 2 0
      197 GETUPVAL                         R23 0
      198 GETTABLEKS                       R23 R23 K24 ["useEffect"]
      200 NEWCLOSURE                       R24 P5
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R6
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R10
      206 NEWTABLE                         R25 0 3
      208 MOVE                             R26 R7
      209 MOVE                             R27 R6
      210 MOVE                             R28 R10
      211 SETLIST                          R25 R26 3 [1]
      213 CALL                             R23 2 0
      214 GETUPVAL                         R23 0
      215 GETTABLEKS                       R23 R23 K24 ["useEffect"]
      217 NEWCLOSURE                       R24 P6
      218 CAPTURE                          VAL R19
      219 NEWTABLE                         R25 0 0
      221 CALL                             R23 2 0
      222 JUMPIFEQKNIL                     R15 ; [+7]
      224 GETTABLEKS                       R24 R15 K6 ["editSessionId"]
      226 JUMPIFNOTEQ                      R24 R10 ; [+3]
      228 MOVE                             R23 R15
      229 JUMP                             ; [+1]
      230 LOADNIL                          R23
      231 DUPTABLE                         R24 K29 [{"isVisible", "hasChanges"}]
      232 SETTABLEKS                       R8 R24 K27 ["isVisible"]
      234 JUMPIFEQKNIL                     R23 ; [+6]
      236 LOADB                            R25 1
      237 GETTABLEKS                       R26 R23 K28 ["hasChanges"]
      239 JUMPIFEQKB                       R26 TRUE ; [+12]
      241 LOADB                            R25 0
      242 JUMPIFNOTEQKS                    R5 K8 ["editNew"] ; [+9]
      244 GETTABLEKS                       R26 R17 K19 ["current"]
      246 GETTABLEKS                       R26 R26 K17 ["prompt"]
      248 JUMPIFNOTEQ                      R14 R26 ; [+2]
      250 LOADB                            R25 0 +1
      251 LOADB                            R25 1
      252 SETTABLEKS                       R25 R24 K28 ["hasChanges"]
      254 RETURN                           R24 1

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
       47 GETTABLEKS                       R6 R0 K17 ["Parent"]
       49 GETTABLEKS                       R6 R6 K18 ["React"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K13 ["Util"]
       56 GETTABLEKS                       R7 R7 K14 ["AnimationGen"]
       58 GETTABLEKS                       R7 R7 K19 ["editPlaybackId"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K20 [PROTO_10]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 RETURN                           R7 1
