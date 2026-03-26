PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["BeginRecording"]
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
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K3 ["BeginRecording"]
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
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K4 ["BeginRecording"]
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
       42 GETUPVAL                         R5 4
       43 GETTABLEKS                       R4 R5 K10 ["Get"]
       45 CALL                             R4 0 1
       46 LENGTH                           R5 R4
       47 JUMPIFNOTEQKN                    R5 K11 [0] ; [+2]
       49 RETURN                           R0 0
       50 LOADB                            R5 1
       51 LOADB                            R6 0
       52 LOADNIL                          R7
       53 LOADNIL                          R8
       54 LOADNIL                          R9
       55 MOVE                             R10 R4
       56 LOADNIL                          R11
       57 LOADNIL                          R12
       58 FORGPREP                         R10
       59 GETUPVAL                         R15 5
       60 MOVE                             R16 R14
       61 MOVE                             R17 R0
       62 CALL                             R15 2 1
       63 JUMPIFNOT                        R15 ; [+62]
       64 GETUPVAL                         R15 6
       65 MOVE                             R16 R14
       66 MOVE                             R17 R0
       67 CALL                             R15 2 2
       68 JUMPIFNOT                        R15 ; [+57]
       69 JUMPIF                           R6 ; [+22]
       70 LOADB                            R6 1
       71 GETUPVAL                         R17 7
       72 MOVE                             R18 R0
       73 MOVE                             R19 R14
       74 GETUPVAL                         R20 8
       75 CALL                             R17 3 1
       76 MOVE                             R7 R17
       77 GETUPVAL                         R17 9
       78 GETTABLEKS                       R18 R7 K12 ["type"]
       80 CALL                             R17 1 1
       81 MOVE                             R8 R17
       82 GETUPVAL                         R17 6
       83 MOVE                             R18 R14
       84 MOVE                             R19 R0
       85 CALL                             R17 2 2
       86 GETTABLEKS                       R19 R8 K13 ["initParts"]
       88 GETUPVAL                         R20 10
       89 MOVE                             R21 R18
       90 CALL                             R19 2 1
       91 MOVE                             R9 R19
       92 NEWTABLE                         R17 0 1
       94 MOVE                             R18 R16
       95 SETLIST                          R17 R18 1 [1]
       97 GETTABLEKS                       R18 R8 K14 ["setPart"]
       99 GETUPVAL                         R19 10
      100 MOVE                             R20 R17
      101 LOADN                            R21 1
      102 LOADN                            R22 1
      103 MOVE                             R23 R3
      104 MOVE                             R24 R2
      105 CALL                             R18 6 0
      106 GETTABLEN                        R18 R17 1
      107 GETUPVAL                         R19 11
      108 MOVE                             R20 R14
      109 MOVE                             R21 R0
      110 GETTABLEN                        R22 R17 1
      111 CALL                             R19 3 0
      112 GETUPVAL                         R19 6
      113 MOVE                             R20 R14
      114 MOVE                             R21 R0
      115 CALL                             R19 2 2
      116 GETTABLEKS                       R21 R8 K15 ["addToAggregation"]
      118 GETUPVAL                         R22 10
      119 MOVE                             R23 R9
      120 MOVE                             R24 R16
      121 CALL                             R21 3 0
      122 JUMPIFNOT                        R19 ; [+3]
      123 JUMPIFEQ                         R20 R18 ; [+2]
      125 LOADB                            R5 0
      126 FORGLOOP                         R10 2 ; [-68]
      128 JUMPIF                           R6 ; [+1]
      129 RETURN                           R0 0
      130 JUMPIFNOT                        R5 ; [+1]
      131 RETURN                           R0 0
      132 GETUPVAL                         R11 12
      133 GETTABLEKS                       R10 R11 K16 ["fromInfoAndParts"]
      135 MOVE                             R11 R7
      136 MOVE                             R12 R9
      137 CALL                             R10 2 1
      138 GETUPVAL                         R12 13
      139 GETTABLEKS                       R11 R12 K17 ["showProperties"]
      141 NEWTABLE                         R12 0 1
      143 MOVE                             R13 R0
      144 SETLIST                          R12 R13 1 [1]
      146 NEWTABLE                         R13 0 1
      148 MOVE                             R14 R10
      149 SETLIST                          R13 R14 1 [1]
      151 CALL                             R11 2 0
      152 RETURN                           R0 0

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
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K4 ["FinishRecording"]
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
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K3 ["FinishRecording"]
        9 GETUPVAL                         R1 0
       10 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Cancel]
       12 CALL                             R0 2 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R5
        1 LOADNIL                          R6
        2 DUPTABLE                         R7 K1 [{"instanceRegistry"}]
        3 SETTABLEKS                       R4 R7 K0 ["instanceRegistry"]
        5 NEWCLOSURE                       R8 P0
        6 CAPTURE                          REF R6
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R9 P1
        9 CAPTURE                          REF R5
       10 CAPTURE                          REF R6
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 NEWCLOSURE                       R10 P2
       14 CAPTURE                          REF R5
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          REF R6
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R7
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          VAL R0
       28 NEWCLOSURE                       R11 P3
       29 CAPTURE                          REF R5
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          REF R6
       32 CAPTURE                          VAL R1
       33 DUPCLOSURE                       R12 K2 [PROTO_4]
       34 NEWCLOSURE                       R13 P5
       35 CAPTURE                          REF R6
       36 CAPTURE                          VAL R1
       37 DUPTABLE                         R14 K8 [{"beginEditingAsync", "continueEditing", "finishEditing", "resetProperty", "destroy"}]
       38 SETTABLEKS                       R9 R14 K3 ["beginEditingAsync"]
       40 SETTABLEKS                       R10 R14 K4 ["continueEditing"]
       42 SETTABLEKS                       R11 R14 K5 ["finishEditing"]
       44 SETTABLEKS                       R12 R14 K6 ["resetProperty"]
       46 SETTABLEKS                       R13 R14 K7 ["destroy"]
       48 CLOSEUPVALS                      R5
       49 RETURN                           R14 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["PropertyInteraction"]
       13 GETTABLEKS                       R2 R3 K8 ["AggregatePropertyInfo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["PropertyTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Guest"]
       30 GETTABLEKS                       R6 R7 K12 ["Methods"]
       32 GETTABLEKS                       R5 R6 K13 ["getCollisionGroupNames"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K6 ["Util"]
       39 GETTABLEKS                       R7 R8 K7 ["PropertyInteraction"]
       41 GETTABLEKS                       R6 R7 K14 ["getPropertyInfo"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Guest"]
       48 GETTABLEKS                       R7 R8 K15 ["getValueAggregator"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K6 ["Util"]
       55 GETTABLEKS                       R9 R10 K7 ["PropertyInteraction"]
       57 GETTABLEKS                       R8 R9 K16 ["hasProperty"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K6 ["Util"]
       64 GETTABLEKS                       R10 R11 K7 ["PropertyInteraction"]
       66 GETTABLEKS                       R9 R10 K17 ["readProperty"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R11 R0 K6 ["Util"]
       73 GETTABLEKS                       R10 R11 K18 ["samePropertyId"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R13 R0 K6 ["Util"]
       80 GETTABLEKS                       R12 R13 K7 ["PropertyInteraction"]
       82 GETTABLEKS                       R11 R12 K19 ["writeProperty"]
       84 CALL                             R10 1 1
       85 DUPCLOSURE                       R11 K20 [PROTO_6]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R1
       94 RETURN                           R11 1
