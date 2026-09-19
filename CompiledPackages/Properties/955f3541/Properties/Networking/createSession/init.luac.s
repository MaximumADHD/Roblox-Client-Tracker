PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R5
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 2 ; [-8]
       15 GETUPVAL                         R1 1
       16 GETIMPORT                        R2 K4 [table.freeze]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R2 ; [+6]
        1 GETUPVAL                         R3 0
        2 GETIMPORT                        R4 K2 [table.freeze]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 -1
        6 CALL                             R3 -1 0
        7 LENGTH                           R3 R0
        8 LENGTH                           R6 R1
        9 JUMPIFEQ                         R6 R3 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       15 LOADK                            R6 K3 ["Mismatched count of properties and values"]
       16 GETIMPORT                        R4 K5 [assert]
       18 CALL                             R4 2 0
       19 LOADN                            R6 1
       20 MOVE                             R4 R3
       21 LOADN                            R5 1
       22 FORNPREP                         R4
       23 GETIMPORT                        R7 K2 [table.freeze]
       25 GETTABLE                         R8 R0 R6
       26 CALL                             R7 1 1
       27 GETTABLE                         R8 R1 R6
       28 GETUPVAL                         R9 1
       29 JUMPIFNOT                        R9 ; [+7]
       30 GETUPVAL                         R9 2
       31 GETUPVAL                         R10 1
       32 MOVE                             R11 R7
       33 CALL                             R9 2 1
       34 JUMPIFNOT                        R9 ; [+2]
       35 SETUPVAL                         R8 3
       36 JUMP                             ; [+29]
       37 GETUPVAL                         R9 4
       38 MOVE                             R10 R7
       39 CALL                             R9 1 1
       40 GETUPVAL                         R11 5
       41 GETTABLE                         R10 R11 R9
       42 JUMPIFNOT                        R10 ; [+13]
       43 GETUPVAL                         R11 5
       44 GETIMPORT                        R12 K2 [table.freeze]
       46 DUPTABLE                         R13 K8 [{"id", "aggregatePropertyInfo"}]
       47 GETTABLEKS                       R14 R10 K6 ["id"]
       49 SETTABLEKS                       R14 R13 K6 ["id"]
       51 SETTABLEKS                       R8 R13 K7 ["aggregatePropertyInfo"]
       53 CALL                             R12 1 1
       54 SETTABLE                         R12 R11 R9
       55 JUMP                             ; [+10]
       56 GETUPVAL                         R11 5
       57 GETIMPORT                        R12 K2 [table.freeze]
       59 DUPTABLE                         R13 K8 [{"id", "aggregatePropertyInfo"}]
       60 SETTABLEKS                       R7 R13 K6 ["id"]
       62 SETTABLEKS                       R8 R13 K7 ["aggregatePropertyInfo"]
       64 CALL                             R12 1 1
       65 SETTABLE                         R12 R11 R9
       66 FORNLOOP                         R4
       67 GETUPVAL                         R4 6
       68 CALL                             R4 0 0
       69 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 JUMPIFNOT                        R6 ; [+16]
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R5
        8 GETUPVAL                         R8 0
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+11]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K0 ["finishEditing"]
       14 GETUPVAL                         R7 0
       15 GETIMPORT                        R8 K4 [Enum.FinishRecordingOperation.Cancel]
       17 CALL                             R6 2 0
       18 LOADNIL                          R6
       19 SETUPVAL                         R6 0
       20 LOADNIL                          R6
       21 SETUPVAL                         R6 3
       22 GETUPVAL                         R6 4
       23 GETUPVAL                         R7 5
       24 MOVE                             R8 R5
       25 CALL                             R7 1 1
       26 LOADNIL                          R8
       27 SETTABLE                         R8 R6 R7
       28 FORGLOOP                         R1 2 ; [-25]
       30 GETUPVAL                         R1 6
       31 CALL                             R1 0 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+41]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+35]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["finishEditing"]
       11 GETUPVAL                         R3 0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 LOADNIL                          R2
       15 SETUPVAL                         R2 0
       16 GETUPVAL                         R2 3
       17 JUMPIFNOT                        R2 ; [+25]
       18 GETIMPORT                        R2 K4 [Enum.FinishRecordingOperation.Cancel]
       20 JUMPIFEQ                         R1 R2 ; [+5]
       22 GETIMPORT                        R2 K6 [Enum.FinishRecordingOperation.Commit]
       24 JUMPIFNOTEQ                      R1 R2 ; [+16]
       26 GETUPVAL                         R2 4
       27 NEWTABLE                         R3 0 1
       29 GETIMPORT                        R4 K9 [table.clone]
       31 MOVE                             R5 R0
       32 CALL                             R4 1 -1
       33 SETLIST                          R3 R4 -1 [1]
       35 NEWTABLE                         R4 0 1
       37 GETUPVAL                         R5 3
       38 SETLIST                          R4 R5 1 [1]
       40 CALL                             R2 2 0
       41 LOADNIL                          R2
       42 SETUPVAL                         R2 3
       43 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETIMPORT                        R4 K3 [Enum.FinishRecordingOperation.Commit]
        7 CALL                             R2 2 0
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K4 ["beginEditingAsync"]
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        3 LOADK                            R5 K0 ["Not editing a property"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+71]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K3 ["extractExpressionText"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKNIL                  R3 ; [+58]
       19 GETUPVAL                         R5 3
       20 GETUPVAL                         R6 4
       21 MOVE                             R7 R0
       22 CALL                             R6 1 1
       23 GETTABLE                         R4 R5 R6
       24 JUMPIFNOT                        R4 ; [+51]
       25 GETTABLEKS                       R5 R4 K4 ["aggregatePropertyInfo"]
       27 GETTABLEKS                       R7 R5 K5 ["extra"]
       29 JUMPIFEQKNIL                     R7 ; [+12]
       31 GETTABLEKS                       R7 R5 K5 ["extra"]
       33 GETTABLEKS                       R7 R7 K6 ["type"]
       35 JUMPIFNOTEQKS                    R7 K7 ["number"] ; [+6]
       37 GETTABLEKS                       R6 R5 K5 ["extra"]
       39 GETTABLEKS                       R6 R6 K8 ["unit"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 MOVE                             R7 R2
       44 JUMPIFEQKNIL                     R6 ; [+23]
       46 FASTCALL1                        TYPEOF R2 ; [+3]
       47 MOVE                             R11 R2
       48 GETIMPORT                        R10 K10 [typeof]
       50 CALL                             R10 1 1
       51 JUMPIFEQKS                       R10 K7 ["number"] ; [+2]
       53 LOADB                            R9 0 +1
       54 LOADB                            R9 1
       55 FASTCALL2K                       ASSERT R9 K11 ; [+4]
       57 LOADK                            R10 K11 ["units are only attached to number properties"]
       58 GETIMPORT                        R8 K2 [assert]
       60 CALL                             R8 2 0
       61 GETUPVAL                         R8 5
       62 GETTABLEKS                       R8 R8 K12 ["fromDisplayValue"]
       64 MOVE                             R9 R6
       65 MOVE                             R10 R2
       66 CALL                             R8 2 1
       67 MOVE                             R7 R8
       68 GETTABLEKS                       R8 R4 K4 ["aggregatePropertyInfo"]
       70 GETTABLEKS                       R8 R8 K13 ["parts"]
       72 DUPTABLE                         R9 K17 [{["value"], ["multiple"] = False}]
       73 SETTABLEKS                       R7 R9 K14 ["value"]
       75 SETTABLE                         R9 R8 R1
       76 GETUPVAL                         R4 6
       77 GETTABLEKS                       R4 R4 K18 ["continueEditing"]
       79 GETUPVAL                         R5 0
       80 MOVE                             R6 R1
       81 MOVE                             R7 R2
       82 CALL                             R4 3 0
       83 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 GETIMPORT                        R2 K3 [Enum.FinishRecordingOperation.Cancel]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["createSignal"]
        5 GETIMPORT                        R3 K3 [table.freeze]
        7 NEWTABLE                         R4 0 0
        9 CALL                             R3 1 -1
       10 CALL                             R2 -1 2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["create"]
       14 GETIMPORT                        R5 K3 [table.freeze]
       16 DUPTABLE                         R6 K8 [{["processedInstances"] = 0, ["totalInstances"] = 0}]
       17 CALL                             R5 1 1
       18 CALL                             R4 1 2
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K9 ["createNetworkedHostToGuestRPCInterface"]
       24 MOVE                             R9 R0
       25 CALL                             R8 1 2
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 MOVE                             R11 R10
       30 CALL                             R11 0 0
       31 NEWCLOSURE                       R11 P1
       32 CAPTURE                          VAL R5
       33 CAPTURE                          REF R6
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          REF R7
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R10
       39 NEWCLOSURE                       R12 P2
       40 CAPTURE                          REF R6
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R8
       43 CAPTURE                          REF R7
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R10
       47 GETUPVAL                         R13 5
       48 CALL                             R13 0 1
       49 GETUPVAL                         R14 6
       50 CALL                             R14 0 1
       51 DUPTABLE                         R15 K14 [{"showProperties", "hideProperties", "instancePickerActiveChanged", "gameIdChanged"}]
       52 SETTABLEKS                       R11 R15 K10 ["showProperties"]
       54 SETTABLEKS                       R12 R15 K11 ["hideProperties"]
       56 GETTABLEKS                       R16 R13 K12 ["instancePickerActiveChanged"]
       58 SETTABLEKS                       R16 R15 K12 ["instancePickerActiveChanged"]
       60 GETTABLEKS                       R16 R14 K13 ["gameIdChanged"]
       62 SETTABLEKS                       R16 R15 K13 ["gameIdChanged"]
       64 GETUPVAL                         R16 2
       65 GETTABLEKS                       R16 R16 K15 ["addNetworkLayerToHostRPCInterface"]
       67 MOVE                             R17 R0
       68 MOVE                             R18 R15
       69 CALL                             R16 2 1
       70 GETTABLEKS                       R17 R8 K16 ["updateGameId"]
       72 CALL                             R17 0 0
       73 NEWCLOSURE                       R17 P3
       74 CAPTURE                          REF R6
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          VAL R8
       77 CAPTURE                          REF R7
       78 CAPTURE                          VAL R11
       79 NEWCLOSURE                       R18 P4
       80 CAPTURE                          REF R6
       81 CAPTURE                          VAL R17
       82 CAPTURE                          VAL R8
       83 NEWCLOSURE                       R19 P5
       84 CAPTURE                          REF R6
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R1
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U8
       90 CAPTURE                          VAL R8
       91 NEWCLOSURE                       R20 P6
       92 CAPTURE                          REF R6
       93 CAPTURE                          VAL R17
       94 CAPTURE                          VAL R16
       95 CAPTURE                          VAL R9
       96 DUPTABLE                         R21 K25 [{"observeProperties", "summaryObservable", "reflection", "beginEditingPropertyAsync", "finishEditingProperty", "setPropertyPart", "specializedEditingUtils", "destroy"}]
       97 SETTABLEKS                       R2 R21 K17 ["observeProperties"]
       99 SETTABLEKS                       R4 R21 K18 ["summaryObservable"]
      101 GETUPVAL                         R22 9
      102 CALL                             R22 0 1
      103 SETTABLEKS                       R22 R21 K19 ["reflection"]
      105 SETTABLEKS                       R18 R21 K20 ["beginEditingPropertyAsync"]
      107 SETTABLEKS                       R17 R21 K21 ["finishEditingProperty"]
      109 SETTABLEKS                       R19 R21 K22 ["setPropertyPart"]
      111 DUPTABLE                         R22 K28 [{"instancePicker", "assetPicker"}]
      112 DUPTABLE                         R23 K32 [{"isActive", "pickInstanceAsync", "deactivateInstancePickerAsync"}]
      113 GETTABLEKS                       R24 R13 K33 ["instancePickerActiveObservable"]
      115 SETTABLEKS                       R24 R23 K29 ["isActive"]
      117 GETTABLEKS                       R24 R8 K34 ["instancePickerPickInstanceAsync"]
      119 SETTABLEKS                       R24 R23 K30 ["pickInstanceAsync"]
      121 GETTABLEKS                       R24 R8 K31 ["deactivateInstancePickerAsync"]
      123 SETTABLEKS                       R24 R23 K31 ["deactivateInstancePickerAsync"]
      125 SETTABLEKS                       R23 R22 K26 ["instancePicker"]
      127 DUPTABLE                         R23 K37 [{"gameIdObservable", "shareAccessToAssetsAsync"}]
      128 GETTABLEKS                       R24 R14 K35 ["gameIdObservable"]
      130 SETTABLEKS                       R24 R23 K35 ["gameIdObservable"]
      132 GETTABLEKS                       R24 R8 K36 ["shareAccessToAssetsAsync"]
      134 SETTABLEKS                       R24 R23 K36 ["shareAccessToAssetsAsync"]
      136 SETTABLEKS                       R23 R22 K27 ["assetPicker"]
      138 SETTABLEKS                       R22 R21 K23 ["specializedEditingUtils"]
      140 SETTABLEKS                       R20 R21 K24 ["destroy"]
      142 CLOSEUPVALS                      R6
      143 RETURN                           R21 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Expressions"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Networking"]
       18 GETTABLEKS                       R3 R3 K9 ["NetworkedRPCInterfaces"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Networking"]
       25 GETTABLEKS                       R4 R4 K10 ["NetworkingTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["Observable"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["PropertyTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["RpcTypes"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Parent"]
       49 GETTABLEKS                       R8 R8 K15 ["Signals"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K16 ["Components"]
       56 GETTABLEKS                       R9 R9 K6 ["Util"]
       58 GETTABLEKS                       R9 R9 K17 ["Units"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETIMPORT                        R10 K1 [script]
       65 GETTABLEKS                       R10 R10 K18 ["createSessionGameIdProvider"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETIMPORT                        R11 K1 [script]
       72 GETTABLEKS                       R11 R11 K19 ["createSessionInstancePicker"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K20 ["PropertyInteraction"]
       79 GETTABLEKS                       R12 R12 K21 ["createStudioReflection"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K20 ["PropertyInteraction"]
       86 GETTABLEKS                       R13 R13 K22 ["propertyIdToString"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K20 ["PropertyInteraction"]
       93 GETTABLEKS                       R14 R14 K23 ["samePropertyId"]
       95 CALL                             R13 1 1
       96 DUPCLOSURE                       R14 K24 [PROTO_7]
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R11
      107 RETURN                           R14 1
