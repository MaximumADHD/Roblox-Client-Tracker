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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       51 GETUPVAL                         R15 7
       52 GETTABLEKS                       R15 R15 K10 ["new"]
       54 CALL                             R15 0 1
       55 NEWCLOSURE                       R16 P3
       56 CAPTURE                          VAL R15
       57 DUPTABLE                         R17 K16 [{"showProperties", "hideProperties", "instancePickerActiveChanged", "gameIdChanged", "selectionUpdatedWhilePinned"}]
       58 SETTABLEKS                       R11 R17 K11 ["showProperties"]
       60 SETTABLEKS                       R12 R17 K12 ["hideProperties"]
       62 GETTABLEKS                       R18 R13 K13 ["instancePickerActiveChanged"]
       64 SETTABLEKS                       R18 R17 K13 ["instancePickerActiveChanged"]
       66 GETTABLEKS                       R18 R14 K14 ["gameIdChanged"]
       68 SETTABLEKS                       R18 R17 K14 ["gameIdChanged"]
       70 SETTABLEKS                       R16 R17 K15 ["selectionUpdatedWhilePinned"]
       72 GETUPVAL                         R18 2
       73 GETTABLEKS                       R18 R18 K17 ["addNetworkLayerToHostRPCInterface"]
       75 MOVE                             R19 R0
       76 MOVE                             R20 R17
       77 CALL                             R18 2 1
       78 GETTABLEKS                       R19 R8 K18 ["updateGameId"]
       80 CALL                             R19 0 0
       81 NEWCLOSURE                       R19 P4
       82 CAPTURE                          REF R6
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          VAL R8
       85 CAPTURE                          REF R7
       86 CAPTURE                          VAL R11
       87 NEWCLOSURE                       R20 P5
       88 CAPTURE                          REF R6
       89 CAPTURE                          VAL R19
       90 CAPTURE                          VAL R8
       91 NEWCLOSURE                       R21 P6
       92 CAPTURE                          REF R6
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          VAL R1
       96 CAPTURE                          UPVAL U4
       97 CAPTURE                          UPVAL U9
       98 CAPTURE                          VAL R8
       99 NEWCLOSURE                       R22 P7
      100 CAPTURE                          REF R6
      101 CAPTURE                          VAL R19
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R9
      104 DUPTABLE                         R23 K28 [{"observeProperties", "summaryObservable", "reflection", "beginEditingPropertyAsync", "finishEditingProperty", "setPropertyPart", "specializedEditingUtils", "pinning", "destroy"}]
      105 SETTABLEKS                       R2 R23 K19 ["observeProperties"]
      107 SETTABLEKS                       R4 R23 K20 ["summaryObservable"]
      109 GETUPVAL                         R24 10
      110 CALL                             R24 0 1
      111 SETTABLEKS                       R24 R23 K21 ["reflection"]
      113 SETTABLEKS                       R20 R23 K22 ["beginEditingPropertyAsync"]
      115 SETTABLEKS                       R19 R23 K23 ["finishEditingProperty"]
      117 SETTABLEKS                       R21 R23 K24 ["setPropertyPart"]
      119 DUPTABLE                         R24 K31 [{"instancePicker", "assetPicker"}]
      120 DUPTABLE                         R25 K35 [{"isActive", "pickInstanceAsync", "deactivateInstancePickerAsync"}]
      121 GETTABLEKS                       R26 R13 K36 ["instancePickerActiveObservable"]
      123 SETTABLEKS                       R26 R25 K32 ["isActive"]
      125 GETTABLEKS                       R26 R8 K37 ["instancePickerPickInstanceAsync"]
      127 SETTABLEKS                       R26 R25 K33 ["pickInstanceAsync"]
      129 GETTABLEKS                       R26 R8 K34 ["deactivateInstancePickerAsync"]
      131 SETTABLEKS                       R26 R25 K34 ["deactivateInstancePickerAsync"]
      133 SETTABLEKS                       R25 R24 K29 ["instancePicker"]
      135 DUPTABLE                         R25 K40 [{"gameIdObservable", "shareAccessToAssetsAsync"}]
      136 GETTABLEKS                       R26 R14 K38 ["gameIdObservable"]
      138 SETTABLEKS                       R26 R25 K38 ["gameIdObservable"]
      140 GETTABLEKS                       R26 R8 K39 ["shareAccessToAssetsAsync"]
      142 SETTABLEKS                       R26 R25 K39 ["shareAccessToAssetsAsync"]
      144 SETTABLEKS                       R25 R24 K30 ["assetPicker"]
      146 SETTABLEKS                       R24 R23 K25 ["specializedEditingUtils"]
      148 DUPTABLE                         R24 K43 [{"pinSelection", "unpinSelection", "selectionUpdatedWhilePinned"}]
      149 GETTABLEKS                       R25 R8 K41 ["pinSelection"]
      151 SETTABLEKS                       R25 R24 K41 ["pinSelection"]
      153 GETTABLEKS                       R25 R8 K42 ["unpinSelection"]
      155 SETTABLEKS                       R25 R24 K42 ["unpinSelection"]
      157 SETTABLEKS                       R15 R24 K15 ["selectionUpdatedWhilePinned"]
      159 SETTABLEKS                       R24 R23 K26 ["pinning"]
      161 SETTABLEKS                       R22 R23 K27 ["destroy"]
      163 CLOSEUPVALS                      R6
      164 RETURN                           R23 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["Expressions"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Networking"]
       20 GETTABLEKS                       R4 R4 K10 ["NetworkedRPCInterfaces"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Networking"]
       27 GETTABLEKS                       R5 R5 K11 ["NetworkingTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K7 ["Util"]
       34 GETTABLEKS                       R6 R6 K12 ["Observable"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K13 ["PropertyTypes"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["RpcTypes"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R1 K15 ["Signal"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R1 K16 ["Signals"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K17 ["Components"]
       61 GETTABLEKS                       R11 R11 K7 ["Util"]
       63 GETTABLEKS                       R11 R11 K18 ["Units"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETIMPORT                        R12 K1 [script]
       70 GETTABLEKS                       R12 R12 K19 ["createSessionGameIdProvider"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETIMPORT                        R13 K1 [script]
       77 GETTABLEKS                       R13 R13 K20 ["createSessionInstancePicker"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K21 ["PropertyInteraction"]
       84 GETTABLEKS                       R14 R14 K22 ["createStudioReflection"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K21 ["PropertyInteraction"]
       91 GETTABLEKS                       R15 R15 K23 ["propertyIdToString"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R16 R0 K21 ["PropertyInteraction"]
       98 GETTABLEKS                       R16 R16 K24 ["samePropertyId"]
      100 CALL                             R15 1 1
      101 DUPCLOSURE                       R16 K25 [PROTO_8]
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R13
      113 RETURN                           R16 1
