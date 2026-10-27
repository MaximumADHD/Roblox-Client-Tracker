PROTO_0:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 ADDK                             R1 R1 K0 [1]
        6 FORGLOOP                         R2 1 ; [-2]
        8 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+12]
        1 GETTABLEKS                       R2 R0 K0 ["EarlyTesters"]
        3 JUMPIFEQKNIL                     R2 ; [+4]
        5 GETTABLEKS                       R3 R2 K1 ["LoadError"]
        7 JUMPIFNOT                        R3 ; [+2]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 GETTABLEKS                       R3 R2 K2 ["SavedMemberCount"]
       12 RETURN                           R3 1
       13 GETTABLEKS                       R2 R0 K3 ["PendingPlayTesters"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+3]
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 GETTABLEKS                       R4 R2 K4 ["CurrentPlayTesters"]
       21 LOADN                            R5 0
       22 MOVE                             R6 R4
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 ADDK                             R5 R5 K5 [1]
       27 FORGLOOP                         R6 1 ; [-2]
       29 MOVE                             R3 R5
       30 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["telemetryService"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["fflagEarlyTesterTelemetry"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 RETURN                           R0 0
        9 NAMECALL                         R3 R0 K2 ["getState"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 MOVE                             R5 R3
       14 CALL                             R4 1 1
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K5 [{"customFields", "standardizedFields"}]
       17 GETUPVAL                         R9 3
       18 GETTABLEKS                       R9 R9 K6 ["Dictionary"]
       20 GETTABLEKS                       R9 R9 K7 ["join"]
       22 GETUPVAL                         R10 4
       23 JUMPIF                           R10 ; [+2]
       24 NEWTABLE                         R10 0 0
       26 DUPTABLE                         R11 K10 [{"gameType", "earlyTesterCount"}]
       27 JUMPIFNOT                        R4 ; [+2]
       28 LOADK                            R12 K11 ["group"]
       29 JUMP                             ; [+1]
       30 LOADK                            R12 K12 ["user"]
       31 SETTABLEKS                       R12 R11 K8 ["gameType"]
       33 JUMPIFNOT                        R4 ; [+12]
       34 GETTABLEKS                       R13 R3 K13 ["EarlyTesters"]
       36 JUMPIFEQKNIL                     R13 ; [+4]
       38 GETTABLEKS                       R14 R13 K14 ["LoadError"]
       40 JUMPIFNOT                        R14 ; [+2]
       41 LOADNIL                          R12
       42 JUMP                             ; [+20]
       43 GETTABLEKS                       R12 R13 K15 ["SavedMemberCount"]
       45 JUMP                             ; [+17]
       46 GETTABLEKS                       R13 R3 K16 ["PendingPlayTesters"]
       48 JUMPIFNOTEQKNIL                  R13 ; [+3]
       50 LOADNIL                          R12
       51 JUMP                             ; [+11]
       52 GETTABLEKS                       R14 R13 K17 ["CurrentPlayTesters"]
       54 LOADN                            R15 0
       55 MOVE                             R16 R14
       56 LOADNIL                          R17
       57 LOADNIL                          R18
       58 FORGPREP                         R16
       59 ADDK                             R15 R15 K18 [1]
       60 FORGLOOP                         R16 1 ; [-2]
       62 MOVE                             R12 R15
       63 SETTABLEKS                       R12 R11 K9 ["earlyTesterCount"]
       65 CALL                             R9 2 1
       66 SETTABLEKS                       R9 R8 K3 ["customFields"]
       68 NEWTABLE                         R9 0 3
       70 GETIMPORT                        R10 K22 [Enum.TelemetryStandardizedField.AddPlaceId]
       72 GETIMPORT                        R11 K24 [Enum.TelemetryStandardizedField.AddUniverseId]
       74 GETIMPORT                        R12 K26 [Enum.TelemetryStandardizedField.AddSessionInfo]
       76 SETLIST                          R9 R10 3 [1]
       78 SETTABLEKS                       R9 R8 K4 ["standardizedFields"]
       80 NAMECALL                         R5 R2 K27 ["LogEvent"]
       82 CALL                             R5 3 0
       83 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Selectors"]
       29 GETTABLEKS                       R4 R4 K11 ["IsGroupGame"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_0]
       33 DUPCLOSURE                       R5 K13 [PROTO_1]
       34 DUPCLOSURE                       R6 K14 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 RETURN                           R6 1
