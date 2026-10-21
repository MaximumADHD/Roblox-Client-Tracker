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
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["responseCode"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["default"]
       14 GETUPVAL                         R4 1
       15 LOADNIL                          R5
       16 DUPTABLE                         R6 K10 [{["failureStep"] = "WriteActivityHistory", ["universeId"], ["statusCode"], ["details"]}]
       17 GETUPVAL                         R7 2
       18 SETTABLEKS                       R7 R6 K7 ["universeId"]
       20 SETTABLEKS                       R1 R6 K8 ["statusCode"]
       22 GETUPVAL                         R7 3
       23 MOVE                             R8 R0
       24 CALL                             R7 1 1
       25 SETTABLEKS                       R7 R6 K9 ["details"]
       27 NAMECALL                         R2 R2 K11 ["logRobloxTelemetryEvent"]
       29 CALL                             R2 4 0
       30 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 151
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R4 R4 K0 ["GetUserId"]
        6 CALL                             R4 1 1
        7 DUPTABLE                         R5 K5 [{"OldName", "NewName", "SourceUniverseId", "NewUniverseId"}]
        8 GETUPVAL                         R6 3
        9 SETTABLEKS                       R6 R5 K1 ["OldName"]
       11 GETUPVAL                         R6 4
       12 SETTABLEKS                       R6 R5 K2 ["NewName"]
       14 GETUPVAL                         R7 1
       15 FASTCALL1                        TOSTRING R7 ; [+2]
       16 GETIMPORT                        R6 K7 [tostring]
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R5 K3 ["SourceUniverseId"]
       21 GETTABLEKS                       R7 R0 K8 ["targetUniverseId"]
       23 FASTCALL1                        TOSTRING R7 ; [+2]
       24 GETIMPORT                        R6 K7 [tostring]
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K4 ["NewUniverseId"]
       29 CALL                             R1 4 1
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U7
       35 NAMECALL                         R1 R1 K9 ["catch"]
       37 CALL                             R1 2 0
       38 GETTABLEKS                       R1 R0 K10 ["copyResults"]
       40 JUMPIFNOT                        R1 ; [+3]
       41 GETTABLEKS                       R2 R0 K10 ["copyResults"]
       43 GETTABLEN                        R1 R2 1
       44 MOVE                             R2 R1
       45 JUMPIFNOT                        R2 ; [+2]
       46 GETTABLEKS                       R2 R1 K11 ["responseBody"]
       48 MOVE                             R3 R2
       49 JUMPIFNOT                        R3 ; [+5]
       50 GETTABLEKS                       R3 R2 K12 ["placeId"]
       52 JUMPIF                           R3 ; [+2]
       53 GETTABLEKS                       R3 R2 K13 ["PlaceId"]
       55 JUMPIFNOT                        R3 ; [+9]
       56 GETUPVAL                         R4 8
       57 MOVE                             R6 R3
       58 GETTABLEKS                       R7 R0 K8 ["targetUniverseId"]
       60 LOADB                            R8 0
       61 NAMECALL                         R4 R4 K14 ["openPlace"]
       63 CALL                             R4 4 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R4 9
       66 GETTABLEKS                       R4 R4 K15 ["new"]
       68 LOADK                            R5 K16 ["StartPageSaveAsCopy"]
       69 CALL                             R4 1 1
       70 LOADK                            R7 K17 ["SaveAsCopySuccess"]
       71 NAMECALL                         R5 R4 K18 ["Fire"]
       73 CALL                             R5 2 0
       74 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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
       30 LOADK                            R3 K13 ["Copy of %*"]
       31 MOVE                             R5 R2
       32 NAMECALL                         R3 R3 K14 ["format"]
       34 CALL                             R3 2 1
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K15 ["all"]
       38 NEWTABLE                         R5 0 2
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R1
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K16 ["resolve"]
       46 CALL                             R8 0 1
       47 MOVE                             R10 R7
       48 NAMECALL                         R8 R8 K17 ["andThen"]
       50 CALL                             R8 2 1
       51 LOADK                            R11 K18 ["GetUniversePlaces"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R11
       55 NAMECALL                         R8 R8 K19 ["catch"]
       57 CALL                             R8 2 1
       58 MOVE                             R6 R8
       59 GETUPVAL                         R7 3
       60 LOADK                            R8 K20 ["CreateUniverse"]
       61 DUPCLOSURE                       R9 K21 [PROTO_6]
       62 CAPTURE                          UPVAL U4
       63 CALL                             R7 2 -1
       64 SETLIST                          R5 R6 -1 [1]
       66 CALL                             R4 1 1
       67 NEWCLOSURE                       R6 P3
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R3
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          UPVAL U6
       73 NAMECALL                         R4 R4 K17 ["andThen"]
       75 CALL                             R4 2 1
       76 NEWCLOSURE                       R6 P4
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          VAL R1
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          UPVAL U9
       83 CAPTURE                          UPVAL U10
       84 CAPTURE                          UPVAL U11
       85 CAPTURE                          UPVAL U12
       86 CAPTURE                          UPVAL U0
       87 NAMECALL                         R4 R4 K17 ["andThen"]
       89 CALL                             R4 2 1
       90 NEWCLOSURE                       R6 P5
       91 CAPTURE                          UPVAL U11
       92 CAPTURE                          UPVAL U9
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          UPVAL U1
       97 NAMECALL                         R4 R4 K19 ["catch"]
       99 CALL                             R4 2 -1
      100 RETURN                           R4 -1

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
       42 GETTABLEKS                       R6 R5 K17 ["StartPageManager"]
       44 GETTABLEKS                       R7 R5 K18 ["StudioService"]
       46 GETIMPORT                        R8 K9 [require]
       48 GETTABLEKS                       R9 R0 K12 ["Src"]
       50 GETTABLEKS                       R9 R9 K19 ["Network"]
       52 GETTABLEKS                       R9 R9 K20 ["GetUniversePlaces"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K9 [require]
       57 GETTABLEKS                       R10 R0 K12 ["Src"]
       59 GETTABLEKS                       R10 R10 K19 ["Network"]
       61 GETTABLEKS                       R10 R10 K21 ["CreateUniverse"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K9 [require]
       66 GETTABLEKS                       R11 R0 K12 ["Src"]
       68 GETTABLEKS                       R11 R11 K19 ["Network"]
       70 GETTABLEKS                       R11 R11 K22 ["RenameUniverse"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K9 [require]
       75 GETTABLEKS                       R12 R0 K12 ["Src"]
       77 GETTABLEKS                       R12 R12 K19 ["Network"]
       79 GETTABLEKS                       R12 R12 K23 ["CopyPlaceToUniverse"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K9 [require]
       84 GETTABLEKS                       R13 R0 K12 ["Src"]
       86 GETTABLEKS                       R13 R13 K19 ["Network"]
       88 GETTABLEKS                       R13 R13 K24 ["WriteActivityHistory"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K9 [require]
       93 GETTABLEKS                       R14 R0 K12 ["Src"]
       95 GETTABLEKS                       R14 R14 K13 ["Util"]
       97 GETTABLEKS                       R14 R14 K25 ["Telemetry"]
       99 GETTABLEKS                       R14 R14 K26 ["TelemetryProtocol"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K9 [require]
      104 GETTABLEKS                       R15 R0 K12 ["Src"]
      106 GETTABLEKS                       R15 R15 K13 ["Util"]
      108 GETTABLEKS                       R15 R15 K25 ["Telemetry"]
      110 GETTABLEKS                       R15 R15 K27 ["SaveExperienceAsCopyErrorEvent"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K9 [require]
      115 GETTABLEKS                       R16 R0 K12 ["Src"]
      117 GETTABLEKS                       R16 R16 K28 ["Types"]
      119 CALL                             R15 1 1
      120 DUPTABLE                         R16 K30 [{["GetUniversePlaces"] = "GetUniversePlaces", ["CreateUniverse"] = "CreateUniverse", ["RenameUniverse"] = "RenameUniverse", ["CopyPlaceToUniverse"] = "CopyPlaceToUniverse", ["WriteActivityHistory"] = "WriteActivityHistory", ["Unknown"] = "Unknown"}]
      121 DUPCLOSURE                       R17 K31 [PROTO_1]
      122 CAPTURE                          VAL R1
      123 DUPCLOSURE                       R18 K32 [PROTO_2]
      124 CAPTURE                          VAL R4
      125 DUPCLOSURE                       R19 K33 [PROTO_4]
      126 CAPTURE                          VAL R3
      127 DUPCLOSURE                       R20 K34 [PROTO_15]
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R6
      141 RETURN                           R20 1
