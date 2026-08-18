PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["BeginRecording"]
        7 LOADK                            R2 K1 ["EditProperty"]
        8 LOADK                            R4 K2 ["Edit property %*"]
        9 GETTABLEKS                       R6 R0 K3 ["name"]
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R1 2 1
       16 SETUPVAL                         R1 0
       17 GETUPVAL                         R2 0
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 JUMPIFEQKNIL                     R4 ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        7 LOADK                            R4 K0 ["Already editing a property"]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 2 0
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R2 1
       13 JUMPIFNOT                        R2 ; [+1]
       14 JUMP                             ; [+18]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["BeginRecording"]
       18 LOADK                            R3 K4 ["EditProperty"]
       19 LOADK                            R5 K5 ["Edit property %*"]
       20 GETTABLEKS                       R7 R0 K6 ["name"]
       22 NAMECALL                         R5 R5 K7 ["format"]
       24 CALL                             R5 2 1
       25 MOVE                             R4 R5
       26 CALL                             R2 2 1
       27 SETUPVAL                         R2 1
       28 GETUPVAL                         R3 1
       29 JUMPIFNOTEQKNIL                  R3 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 JUMPIFNOTEQKS                    R1 K8 ["CollisionGroup"] ; [+4]
       35 GETUPVAL                         R2 3
       36 CALL                             R2 0 -1
       37 RETURN                           R2 -1
       38 JUMPIFEQKNIL                     R1 ; [+10]
       40 GETIMPORT                        R2 K10 [warn]
       42 LOADK                            R4 K11 ["Got an unknown key: %*"]
       43 MOVE                             R6 R1
       44 NAMECALL                         R4 R4 K7 ["format"]
       46 CALL                             R4 2 1
       47 MOVE                             R3 R4
       48 CALL                             R2 1 0
       49 LOADNIL                          R2
       50 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        3 LOADK                            R5 K0 ["Not editing a property"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R0
       10 CALL                             R4 2 1
       11 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       13 LOADK                            R5 K3 ["Editing a different property"]
       14 GETIMPORT                        R3 K2 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R4 2
       18 JUMPIFNOT                        R4 ; [+2]
       19 LOADB                            R3 1
       20 JUMP                             ; [+18]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K4 ["BeginRecording"]
       24 LOADK                            R5 K5 ["EditProperty"]
       25 LOADK                            R7 K6 ["Edit property %*"]
       26 GETTABLEKS                       R9 R0 K7 ["name"]
       28 NAMECALL                         R7 R7 K8 ["format"]
       30 CALL                             R7 2 1
       31 MOVE                             R6 R7
       32 CALL                             R4 2 1
       33 SETUPVAL                         R4 2
       34 GETUPVAL                         R4 2
       35 JUMPIFNOTEQKNIL                  R4 ; [+2]
       37 LOADB                            R3 0 +1
       38 LOADB                            R3 1
       39 JUMPIF                           R3 ; [+1]
       40 RETURN                           R0 0
       41 ORK                              R3 R1 K9 ["value"]
       42 GETUPVAL                         R4 4
       43 GETTABLEKS                       R4 R4 K10 ["Get"]
       45 CALL                             R4 0 1
       46 LENGTH                           R5 R4
       47 JUMPIFNOTEQKN                    R5 K11 [0] ; [+2]
       49 RETURN                           R0 0
       50 LOADB                            R5 1
       51 LOADB                            R6 0
       52 LOADNIL                          R7
       53 LOADNIL                          R8
       54 LOADNIL                          R9
       55 GETUPVAL                         R10 5
       56 GETTABLEKS                       R10 R10 K12 ["tryToCreateLuauExpression"]
       58 MOVE                             R11 R2
       59 CALL                             R10 1 2
       60 JUMPIFNOTEQKNIL                  R10 ; [+9]
       62 JUMPIFEQKNIL                     R11 ; [+7]
       64 GETUPVAL                         R12 6
       65 DUPTABLE                         R13 K16 [{["type"] = "expressionParseError", ["problem"]}]
       66 SETTABLEKS                       R11 R13 K15 ["problem"]
       68 CALL                             R12 1 0
       69 RETURN                           R0 0
       70 LOADB                            R12 0
       71 MOVE                             R13 R4
       72 LOADNIL                          R14
       73 LOADNIL                          R15
       74 FORGPREP                         R13
       75 GETUPVAL                         R18 7
       76 MOVE                             R19 R17
       77 MOVE                             R20 R0
       78 CALL                             R18 2 1
       79 JUMPIFNOT                        R18 ; [+110]
       80 GETUPVAL                         R18 8
       81 MOVE                             R19 R17
       82 MOVE                             R20 R0
       83 CALL                             R18 2 1
       84 JUMPIF                           R6 ; [+22]
       85 LOADB                            R6 1
       86 GETUPVAL                         R19 9
       87 MOVE                             R20 R0
       88 MOVE                             R21 R17
       89 GETUPVAL                         R22 10
       90 CALL                             R19 3 1
       91 MOVE                             R7 R19
       92 GETUPVAL                         R19 11
       93 GETTABLEKS                       R20 R7 K13 ["type"]
       95 CALL                             R19 1 1
       96 MOVE                             R8 R19
       97 GETUPVAL                         R19 8
       98 MOVE                             R20 R17
       99 MOVE                             R21 R0
      100 CALL                             R19 2 1
      101 GETTABLEKS                       R20 R8 K17 ["initParts"]
      103 GETUPVAL                         R21 12
      104 MOVE                             R22 R19
      105 CALL                             R20 2 1
      106 MOVE                             R9 R20
      107 MOVE                             R19 R2
      108 JUMPIFEQKNIL                     R10 ; [+48]
      110 NEWTABLE                         R22 1 0
      112 GETUPVAL                         R23 5
      113 GETTABLEKS                       R23 R23 K18 ["CURRENT_VALUE_VARIABLE"]
      115 SETTABLE                         R18 R22 R23
      116 NAMECALL                         R20 R10 K19 ["Evaluate"]
      118 CALL                             R20 2 1
      119 GETTABLEKS                       R21 R20 K20 ["Error"]
      121 JUMPIFEQKNIL                     R21 ; [+11]
      123 JUMPIF                           R12 ; [+66]
      124 GETUPVAL                         R21 6
      125 DUPTABLE                         R22 K22 [{["type"] = "expressionEvaluateError", ["problem"]}]
      126 GETTABLEKS                       R23 R20 K20 ["Error"]
      128 SETTABLEKS                       R23 R22 K15 ["problem"]
      130 CALL                             R21 1 0
      131 LOADB                            R12 1
      132 JUMP                             ; [+57]
      133 GETTABLEKS                       R22 R20 K23 ["Results"]
      135 GETTABLEN                        R21 R22 1
      136 FASTCALL1                        TYPEOF R21 ; [+3]
      137 MOVE                             R23 R21
      138 GETIMPORT                        R22 K25 [typeof]
      140 CALL                             R22 1 1
      141 JUMPIFEQKS                       R22 K26 ["number"] ; [+14]
      143 JUMPIF                           R12 ; [+46]
      144 GETUPVAL                         R22 6
      145 DUPTABLE                         R23 K29 [{["type"] = "expressionNotANumber", ["received"]}]
      146 FASTCALL1                        TYPEOF R21 ; [+3]
      147 MOVE                             R25 R21
      148 GETIMPORT                        R24 K25 [typeof]
      150 CALL                             R24 1 1
      151 SETTABLEKS                       R24 R23 K28 ["received"]
      153 CALL                             R22 1 0
      154 LOADB                            R12 1
      155 JUMP                             ; [+34]
      156 MOVE                             R19 R21
      157 NEWTABLE                         R20 0 1
      159 MOVE                             R21 R18
      160 SETLIST                          R20 R21 1 [1]
      162 GETTABLEKS                       R21 R8 K30 ["setPart"]
      164 GETUPVAL                         R22 12
      165 MOVE                             R23 R20
      166 LOADN                            R24 1
      167 LOADN                            R25 1
      168 MOVE                             R26 R3
      169 MOVE                             R27 R19
      170 CALL                             R21 6 0
      171 GETTABLEN                        R21 R20 1
      172 GETUPVAL                         R22 13
      173 MOVE                             R23 R17
      174 MOVE                             R24 R0
      175 GETTABLEN                        R25 R20 1
      176 CALL                             R22 3 0
      177 GETUPVAL                         R22 8
      178 MOVE                             R23 R17
      179 MOVE                             R24 R0
      180 CALL                             R22 2 1
      181 GETTABLEKS                       R23 R8 K31 ["addToAggregation"]
      183 GETUPVAL                         R24 12
      184 MOVE                             R25 R9
      185 MOVE                             R26 R18
      186 CALL                             R23 3 0
      187 JUMPIFEQ                         R22 R21 ; [+2]
      189 LOADB                            R5 0
      190 FORGLOOP                         R13 2 ; [-116]
      192 JUMPIF                           R6 ; [+1]
      193 RETURN                           R0 0
      194 JUMPIFNOT                        R5 ; [+1]
      195 RETURN                           R0 0
      196 GETUPVAL                         R13 14
      197 GETTABLEKS                       R13 R13 K32 ["fromInfoAndParts"]
      199 MOVE                             R14 R7
      200 MOVE                             R15 R9
      201 CALL                             R13 2 1
      202 GETUPVAL                         R14 15
      203 GETTABLEKS                       R14 R14 K33 ["showProperties"]
      205 NEWTABLE                         R15 0 1
      207 MOVE                             R16 R0
      208 SETLIST                          R15 R16 1 [1]
      210 NEWTABLE                         R16 0 1
      212 MOVE                             R17 R13
      213 SETLIST                          R16 R17 1 [1]
      215 CALL                             R14 2 0
      216 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Not editing a property"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 CALL                             R3 2 1
       11 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       13 LOADK                            R4 K3 ["Editing a different property"]
       14 GETIMPORT                        R2 K2 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 JUMPIFNOT                        R2 ; [+9]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K4 ["FinishRecording"]
       22 GETUPVAL                         R3 2
       23 MOVE                             R4 R1
       24 CALL                             R2 2 0
       25 LOADNIL                          R2
       26 SETUPVAL                         R2 2
       27 JUMP                             ; [+14]
       28 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Cancel]
       30 JUMPIFEQ                         R1 R2 ; [+11]
       32 GETIMPORT                        R2 K10 [warn]
       34 LOADK                            R4 K11 ["Couldn't edit %* because another edit is in progress."]
       35 GETTABLEKS                       R6 R0 K12 ["name"]
       37 NAMECALL                         R4 R4 K13 ["format"]
       39 CALL                             R4 2 1
       40 MOVE                             R3 R4
       41 CALL                             R2 1 0
       42 LOADNIL                          R2
       43 SETUPVAL                         R2 0
       44 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Not yet implemented"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["Canceling edit due to disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K3 ["FinishRecording"]
        9 GETUPVAL                         R1 0
       10 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Cancel]
       12 CALL                             R0 2 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 DUPTABLE                         R8 K1 [{"instanceRegistry"}]
        3 SETTABLEKS                       R4 R8 K0 ["instanceRegistry"]
        5 NEWCLOSURE                       R9 P0
        6 CAPTURE                          REF R7
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R10 P1
        9 CAPTURE                          REF R6
       10 CAPTURE                          REF R7
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 NEWCLOSURE                       R11 P2
       14 CAPTURE                          REF R6
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          REF R7
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R5
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          VAL R8
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          VAL R0
       30 NEWCLOSURE                       R12 P3
       31 CAPTURE                          REF R6
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          REF R7
       34 CAPTURE                          VAL R1
       35 DUPCLOSURE                       R13 K2 [PROTO_4]
       36 NEWCLOSURE                       R14 P5
       37 CAPTURE                          REF R7
       38 CAPTURE                          VAL R1
       39 DUPTABLE                         R15 K8 [{"beginEditingAsync", "continueEditing", "finishEditing", "resetProperty", "destroy"}]
       40 SETTABLEKS                       R10 R15 K3 ["beginEditingAsync"]
       42 SETTABLEKS                       R11 R15 K4 ["continueEditing"]
       44 SETTABLEKS                       R12 R15 K5 ["finishEditing"]
       46 SETTABLEKS                       R13 R15 K6 ["resetProperty"]
       48 SETTABLEKS                       R14 R15 K7 ["destroy"]
       50 CLOSEUPVALS                      R6
       51 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyInteraction"]
       11 GETTABLEKS                       R2 R2 K7 ["AggregatePropertyInfo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["CapturableWarnings"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["Expressions"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["PropertyTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["RpcTypes"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["PropertyInteraction"]
       42 GETTABLEKS                       R7 R7 K14 ["canWriteToProperty"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Guest"]
       49 GETTABLEKS                       R8 R8 K15 ["Methods"]
       51 GETTABLEKS                       R8 R8 K16 ["getCollisionGroupNames"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["PropertyInteraction"]
       58 GETTABLEKS                       R9 R9 K17 ["getPropertyInfo"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K8 ["Guest"]
       65 GETTABLEKS                       R10 R10 K18 ["getValueAggregator"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K6 ["PropertyInteraction"]
       72 GETTABLEKS                       R11 R11 K19 ["readProperty"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["PropertyInteraction"]
       79 GETTABLEKS                       R12 R12 K20 ["samePropertyId"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K6 ["PropertyInteraction"]
       86 GETTABLEKS                       R13 R13 K21 ["writeProperty"]
       88 CALL                             R12 1 1
       89 DUPCLOSURE                       R13 K22 [PROTO_6]
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R1
       99 RETURN                           R13 1
