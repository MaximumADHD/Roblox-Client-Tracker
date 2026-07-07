PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["responseBody"]
        4 NAMECALL                         R0 R0 K1 ["JSONEncode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 LOADNIL                          R1
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+51]
        8 GETTABLEKS                       R2 R0 K3 ["requestErrorMessage"]
       10 JUMPIFEQKNIL                     R2 ; [+9]
       12 GETTABLEKS                       R3 R0 K3 ["requestErrorMessage"]
       14 FASTCALL1                        TOSTRING R3 ; [+2]
       15 GETIMPORT                        R2 K5 [tostring]
       17 CALL                             R2 1 1
       18 MOVE                             R1 R2
       19 JUMP                             ; [+44]
       20 GETTABLEKS                       R3 R0 K6 ["responseBody"]
       22 FASTCALL1                        TYPE R3 ; [+2]
       23 GETIMPORT                        R2 K1 [type]
       25 CALL                             R2 1 1
       26 JUMPIFNOTEQKS                    R2 K7 ["string"] ; [+4]
       28 GETTABLEKS                       R1 R0 K6 ["responseBody"]
       30 JUMP                             ; [+33]
       31 GETTABLEKS                       R2 R0 K6 ["responseBody"]
       33 JUMPIFEQKNIL                     R2 ; [+17]
       35 GETIMPORT                        R2 K9 [pcall]
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R0
       40 CALL                             R2 1 2
       41 JUMPIFNOT                        R2 ; [+2]
       42 MOVE                             R1 R3
       43 JUMP                             ; [+20]
       44 FASTCALL1                        TOSTRING R0 ; [+3]
       45 MOVE                             R5 R0
       46 GETIMPORT                        R4 K5 [tostring]
       48 CALL                             R4 1 1
       49 MOVE                             R1 R4
       50 JUMP                             ; [+13]
       51 FASTCALL1                        TOSTRING R0 ; [+3]
       52 MOVE                             R3 R0
       53 GETIMPORT                        R2 K5 [tostring]
       55 CALL                             R2 1 1
       56 MOVE                             R1 R2
       57 JUMP                             ; [+6]
       58 FASTCALL1                        TOSTRING R0 ; [+3]
       59 MOVE                             R3 R0
       60 GETIMPORT                        R2 K5 [tostring]
       62 CALL                             R2 1 1
       63 MOVE                             R1 R2
       64 LENGTH                           R2 R1
       65 LOADN                            R3 500
       66 JUMPIFNOTLT                      R3 R2 ; [+10]
       68 LOADN                            R4 1
       69 LOADN                            R5 500
       70 FASTCALL3                        STRING_SUB R1 R4 R5
       72 MOVE                             R3 R1
       73 GETIMPORT                        R2 K11 [string.sub]
       75 CALL                             R2 3 1
       76 MOVE                             R1 R2
       77 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 LOADK                            R2 K1 ["StartPageSaveAsCopy"]
        4 CALL                             R1 1 1
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+10]
        7 GETTABLEKS                       R1 R0 K3 ["failureStep"]
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["reject"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K4 ["reject"]
       19 DUPTABLE                         R2 K6 [{"failureStep", "cause"}]
       20 GETUPVAL                         R3 1
       21 SETTABLEKS                       R3 R2 K3 ["failureStep"]
       23 SETTABLEKS                       R0 R2 K5 ["cause"]
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K1 ["andThen"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R2 K2 ["catch"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R7 R0
        7 GETUPVAL                         R8 1
        8 LOADK                            R9 K0 ["CopyPlaceToUniverse"]
        9 NEWCLOSURE                       R10 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R5
       13 CALL                             R8 2 -1
       14 FASTCALL                         TABLE_INSERT ; [+2]
       15 GETIMPORT                        R6 K3 [table.insert]
       17 CALL                             R6 -1 0
       18 FORGLOOP                         R1 2 ; [-13]
       20 GETUPVAL                         R1 4
       21 GETTABLEKS                       R1 R1 K4 ["all"]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 -1
       25 RETURN                           R1 -1

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"targetUniverseId", "copyResults"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["targetUniverseId"]
        4 SETTABLEKS                       R0 R1 K1 ["copyResults"]
        6 RETURN                           R1 1

PROTO_11:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K0 ["resolve"]
        9 CALL                             R5 0 1
       10 MOVE                             R7 R4
       11 NAMECALL                         R5 R5 K1 ["andThen"]
       13 CALL                             R5 2 1
       14 LOADK                            R8 K2 ["RenameUniverse"]
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R8
       18 NAMECALL                         R5 R5 K3 ["catch"]
       20 CALL                             R5 2 1
       21 MOVE                             R3 R5
       22 NEWCLOSURE                       R5 P2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U2
       28 NAMECALL                         R3 R3 K1 ["andThen"]
       30 CALL                             R3 2 1
       31 NEWCLOSURE                       R5 P3
       32 CAPTURE                          VAL R2
       33 NAMECALL                         R3 R3 K1 ["andThen"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+27]
        3 GETTABLEKS                       R1 R0 K0 ["copyResults"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R0 K0 ["copyResults"]
        8 GETTABLEN                        R1 R2 1
        9 MOVE                             R2 R1
       10 JUMPIFNOT                        R2 ; [+2]
       11 GETTABLEKS                       R2 R1 K1 ["responseBody"]
       13 MOVE                             R3 R2
       14 JUMPIFNOT                        R3 ; [+5]
       15 GETTABLEKS                       R3 R2 K2 ["placeId"]
       17 JUMPIF                           R3 ; [+2]
       18 GETTABLEKS                       R3 R2 K3 ["PlaceId"]
       20 JUMPIFNOT                        R3 ; [+9]
       21 GETUPVAL                         R4 1
       22 MOVE                             R6 R3
       23 GETTABLEKS                       R7 R0 K4 ["targetUniverseId"]
       25 LOADB                            R8 0
       26 NAMECALL                         R4 R4 K5 ["openPlace"]
       28 CALL                             R4 4 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K6 ["new"]
       33 LOADK                            R2 K7 ["StartPageSaveAsCopy"]
       34 CALL                             R1 1 1
       35 LOADK                            R4 K8 ["SaveAsCopySuccess"]
       36 NAMECALL                         R2 R1 K9 ["Fire"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
        8 GETTABLEKS                       R2 R0 K3 ["failureStep"]
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETTABLEKS                       R2 R0 K3 ["failureStep"]
       17 JUMP                             ; [+1]
       18 LOADK                            R2 K4 ["Unknown"]
       19 JUMPIFNOT                        R1 ; [+3]
       20 GETTABLEKS                       R3 R0 K5 ["cause"]
       22 JUMP                             ; [+1]
       23 MOVE                             R3 R0
       24 FASTCALL1                        TYPE R3 ; [+3]
       25 MOVE                             R6 R3
       26 GETIMPORT                        R5 K1 [type]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+4]
       31 GETTABLEKS                       R4 R3 K6 ["responseCode"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R4
       35 GETUPVAL                         R5 0
       36 MOVE                             R6 R3
       37 CALL                             R5 1 1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K7 ["default"]
       41 GETUPVAL                         R8 2
       42 LOADNIL                          R9
       43 DUPTABLE                         R10 K11 [{"failureStep", "universeId", "statusCode", "details"}]
       44 SETTABLEKS                       R2 R10 K3 ["failureStep"]
       46 GETUPVAL                         R11 3
       47 SETTABLEKS                       R11 R10 K8 ["universeId"]
       49 SETTABLEKS                       R4 R10 K9 ["statusCode"]
       51 SETTABLEKS                       R5 R10 K10 ["details"]
       53 NAMECALL                         R6 R6 K12 ["logRobloxTelemetryEvent"]
       55 CALL                             R6 4 0
       56 LOADB                            R6 1
       57 JUMPIFEQKS                       R2 K13 ["RenameUniverse"] ; [+5]
       59 JUMPIFEQKS                       R2 K14 ["CopyPlaceToUniverse"] ; [+2]
       61 LOADB                            R6 0 +1
       62 LOADB                            R6 1
       63 JUMPIFNOT                        R6 ; [+2]
       64 LOADK                            R7 K15 ["SaveAsCopyPartialFailure"]
       65 JUMP                             ; [+1]
       66 LOADK                            R7 K16 ["SaveAsCopyFailure"]
       67 GETUPVAL                         R8 4
       68 GETTABLEKS                       R8 R8 K17 ["new"]
       70 LOADK                            R9 K18 ["StartPageSaveAsCopy"]
       71 CALL                             R8 1 1
       72 MOVE                             R11 R7
       73 NAMECALL                         R9 R8 K19 ["Fire"]
       75 CALL                             R9 2 0
       76 GETUPVAL                         R7 5
       77 GETTABLEKS                       R7 R7 K20 ["reject"]
       79 MOVE                             R8 R3
       80 CALL                             R7 1 -1
       81 RETURN                           R7 -1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["IsPlaceholder"]
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Cell should not be a placeholder here"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K4 ["Id"]
       11 JUMPIF                           R1 ; [+15]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K5 ["new"]
       15 LOADK                            R3 K6 ["StartPageSaveAsCopy"]
       16 CALL                             R2 1 1
       17 LOADK                            R5 K7 ["SaveAsCopyFailure"]
       18 NAMECALL                         R3 R2 K8 ["Fire"]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K9 ["reject"]
       24 LOADK                            R3 K10 ["SaveExperienceAsCopy: cell is missing a universe id"]
       25 CALL                             R2 1 -1
       26 RETURN                           R2 -1
       27 GETTABLEKS                       R3 R0 K12 ["Name"]
       29 ORK                              R2 R3 K11 [""]
       30 LOADK                            R4 K13 ["Copy of %*"]
       31 MOVE                             R6 R2
       32 NAMECALL                         R4 R4 K14 ["format"]
       34 CALL                             R4 2 1
       35 MOVE                             R3 R4
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K15 ["all"]
       39 NEWTABLE                         R5 0 2
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R1
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K16 ["resolve"]
       47 CALL                             R8 0 1
       48 MOVE                             R10 R7
       49 NAMECALL                         R8 R8 K17 ["andThen"]
       51 CALL                             R8 2 1
       52 LOADK                            R11 K18 ["GetUniversePlaces"]
       53 NEWCLOSURE                       R10 P1
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R11
       56 NAMECALL                         R8 R8 K19 ["catch"]
       58 CALL                             R8 2 1
       59 MOVE                             R6 R8
       60 GETUPVAL                         R7 3
       61 LOADK                            R8 K20 ["CreateUniverse"]
       62 DUPCLOSURE                       R9 K21 [PROTO_6]
       63 CAPTURE                          UPVAL U4
       64 CALL                             R7 2 -1
       65 SETLIST                          R5 R6 -1 [1]
       67 CALL                             R4 1 1
       68 NEWCLOSURE                       R6 P3
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R3
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U6
       74 NAMECALL                         R4 R4 K17 ["andThen"]
       76 CALL                             R4 2 1
       77 DUPCLOSURE                       R6 K22 [PROTO_12]
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          UPVAL U0
       81 NAMECALL                         R4 R4 K17 ["andThen"]
       83 CALL                             R4 2 1
       84 NEWCLOSURE                       R6 P5
       85 CAPTURE                          UPVAL U9
       86 CAPTURE                          UPVAL U10
       87 CAPTURE                          UPVAL U11
       88 CAPTURE                          VAL R1
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          UPVAL U1
       91 NAMECALL                         R4 R4 K19 ["catch"]
       93 CALL                             R4 2 -1
       94 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["TypedPromise"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R2 K13 ["Util"]
       31 GETTABLEKS                       R4 R4 K15 ["CrossPluginCommunication"]
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Src"]
       37 GETTABLEKS                       R6 R6 K13 ["Util"]
       39 GETTABLEKS                       R6 R6 K16 ["Services"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R5 R5 K17 ["StartPageManager"]
       44 GETIMPORT                        R6 K9 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Src"]
       48 GETTABLEKS                       R7 R7 K18 ["SharedFlags"]
       50 GETTABLEKS                       R7 R7 K19 ["getFFlagStartPageSaveAsCopyOpenPlace"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K9 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Src"]
       57 GETTABLEKS                       R8 R8 K20 ["Network"]
       59 GETTABLEKS                       R8 R8 K21 ["GetUniversePlaces"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K9 [require]
       64 GETTABLEKS                       R9 R0 K12 ["Src"]
       66 GETTABLEKS                       R9 R9 K20 ["Network"]
       68 GETTABLEKS                       R9 R9 K22 ["CreateUniverse"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K9 [require]
       73 GETTABLEKS                       R10 R0 K12 ["Src"]
       75 GETTABLEKS                       R10 R10 K20 ["Network"]
       77 GETTABLEKS                       R10 R10 K23 ["RenameUniverse"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K9 [require]
       82 GETTABLEKS                       R11 R0 K12 ["Src"]
       84 GETTABLEKS                       R11 R11 K20 ["Network"]
       86 GETTABLEKS                       R11 R11 K24 ["CopyPlaceToUniverse"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K9 [require]
       91 GETTABLEKS                       R12 R0 K12 ["Src"]
       93 GETTABLEKS                       R12 R12 K13 ["Util"]
       95 GETTABLEKS                       R12 R12 K25 ["Telemetry"]
       97 GETTABLEKS                       R12 R12 K26 ["TelemetryProtocol"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K9 [require]
      102 GETTABLEKS                       R13 R0 K12 ["Src"]
      104 GETTABLEKS                       R13 R13 K13 ["Util"]
      106 GETTABLEKS                       R13 R13 K25 ["Telemetry"]
      108 GETTABLEKS                       R13 R13 K27 ["SaveExperienceAsCopyErrorEvent"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K9 [require]
      113 GETTABLEKS                       R14 R0 K12 ["Src"]
      115 GETTABLEKS                       R14 R14 K28 ["Types"]
      117 CALL                             R13 1 1
      118 DUPTABLE                         R14 K30 [{["GetUniversePlaces"] = "GetUniversePlaces", ["CreateUniverse"] = "CreateUniverse", ["RenameUniverse"] = "RenameUniverse", ["CopyPlaceToUniverse"] = "CopyPlaceToUniverse", ["Unknown"] = "Unknown"}]
      119 DUPCLOSURE                       R15 K31 [PROTO_1]
      120 CAPTURE                          VAL R1
      121 DUPCLOSURE                       R16 K32 [PROTO_2]
      122 CAPTURE                          VAL R4
      123 DUPCLOSURE                       R17 K33 [PROTO_4]
      124 CAPTURE                          VAL R3
      125 DUPCLOSURE                       R18 K34 [PROTO_14]
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R12
      138 RETURN                           R18 1
