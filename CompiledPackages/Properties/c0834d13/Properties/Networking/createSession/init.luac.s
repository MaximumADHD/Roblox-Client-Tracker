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
        5 GETUPVAL                         R7 1
        6 MOVE                             R8 R5
        7 CALL                             R7 1 1
        8 LOADNIL                          R8
        9 SETTABLE                         R8 R6 R7
       10 FORGLOOP                         R1 2 ; [-7]
       12 GETUPVAL                         R1 2
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+37]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+31]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K0 ["finishEditing"]
       11 GETUPVAL                         R3 0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 LOADNIL                          R2
       15 SETUPVAL                         R2 0
       16 GETUPVAL                         R2 3
       17 JUMPIFNOT                        R2 ; [+21]
       18 GETIMPORT                        R2 K4 [Enum.FinishRecordingOperation.Cancel]
       20 JUMPIFNOTEQ                      R1 R2 ; [+16]
       22 GETUPVAL                         R2 4
       23 NEWTABLE                         R3 0 1
       25 GETIMPORT                        R4 K7 [table.clone]
       27 MOVE                             R5 R0
       28 CALL                             R4 1 -1
       29 SETLIST                          R3 R4 -1 [1]
       31 NEWTABLE                         R4 0 1
       33 GETUPVAL                         R5 3
       34 SETLIST                          R4 R5 1 [1]
       36 CALL                             R2 2 0
       37 LOADNIL                          R2
       38 SETUPVAL                         R2 3
       39 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETIMPORT                        R4 K3 [Enum.FinishRecordingOperation.Commit]
        7 CALL                             R2 2 0
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K4 ["beginEditingAsync"]
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
       11 JUMPIFNOT                        R3 ; [+23]
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R5 3
       14 MOVE                             R6 R0
       15 CALL                             R5 1 1
       16 GETTABLE                         R3 R4 R5
       17 JUMPIFNOT                        R3 ; [+10]
       18 GETTABLEKS                       R6 R3 K3 ["aggregatePropertyInfo"]
       20 GETTABLEKS                       R5 R6 K4 ["parts"]
       22 GETTABLE                         R4 R5 R1
       23 SETTABLEKS                       R2 R4 K5 ["value"]
       25 LOADB                            R5 0
       26 SETTABLEKS                       R5 R4 K6 ["multiple"]
       28 GETUPVAL                         R5 4
       29 GETTABLEKS                       R4 R5 K7 ["continueEditing"]
       31 GETUPVAL                         R5 0
       32 MOVE                             R6 R1
       33 MOVE                             R7 R2
       34 CALL                             R4 3 0
       35 RETURN                           R0 0

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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["create"]
        5 GETIMPORT                        R3 K3 [table.freeze]
        7 NEWTABLE                         R4 0 0
        9 CALL                             R3 1 1
       10 CALL                             R2 1 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["create"]
       14 GETIMPORT                        R5 K3 [table.freeze]
       16 DUPTABLE                         R6 K6 [{"processedInstances", "totalInstances"}]
       17 LOADN                            R7 0
       18 SETTABLEKS                       R7 R6 K4 ["processedInstances"]
       20 LOADN                            R7 0
       21 SETTABLEKS                       R7 R6 K5 ["totalInstances"]
       23 CALL                             R5 1 1
       24 CALL                             R4 1 2
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 GETUPVAL                         R9 1
       28 GETTABLEKS                       R8 R9 K7 ["createNetworkedHostToGuestRPCInterface"]
       30 MOVE                             R9 R0
       31 CALL                             R8 1 2
       32 NEWCLOSURE                       R10 P0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 MOVE                             R11 R10
       36 CALL                             R11 0 0
       37 NEWCLOSURE                       R11 P1
       38 CAPTURE                          VAL R5
       39 CAPTURE                          REF R6
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          REF R7
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R10
       45 NEWCLOSURE                       R12 P2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R10
       49 GETUPVAL                         R13 4
       50 CALL                             R13 0 1
       51 DUPTABLE                         R14 K11 [{"showProperties", "hideProperties", "instancePickerActiveChanged"}]
       52 SETTABLEKS                       R11 R14 K8 ["showProperties"]
       54 SETTABLEKS                       R12 R14 K9 ["hideProperties"]
       56 GETTABLEKS                       R15 R13 K10 ["instancePickerActiveChanged"]
       58 SETTABLEKS                       R15 R14 K10 ["instancePickerActiveChanged"]
       60 GETUPVAL                         R16 1
       61 GETTABLEKS                       R15 R16 K12 ["addNetworkLayerToHostRPCInterface"]
       63 MOVE                             R16 R0
       64 MOVE                             R17 R14
       65 CALL                             R15 2 1
       66 NEWCLOSURE                       R16 P3
       67 CAPTURE                          REF R6
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          REF R7
       71 CAPTURE                          VAL R11
       72 NEWCLOSURE                       R17 P4
       73 CAPTURE                          REF R6
       74 CAPTURE                          VAL R16
       75 CAPTURE                          VAL R8
       76 NEWCLOSURE                       R18 P5
       77 CAPTURE                          REF R6
       78 CAPTURE                          UPVAL U2
       79 CAPTURE                          VAL R1
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R8
       82 NEWCLOSURE                       R19 P6
       83 CAPTURE                          REF R6
       84 CAPTURE                          VAL R16
       85 CAPTURE                          VAL R15
       86 CAPTURE                          VAL R9
       87 DUPTABLE                         R20 K22 [{"beginEditingPropertyAsync", "finishEditingProperty", "setPropertyPart", "propertiesObservable", "summaryObservable", "instancePicker", "reflection", "getGameIdAsync", "destroy"}]
       88 SETTABLEKS                       R17 R20 K13 ["beginEditingPropertyAsync"]
       90 SETTABLEKS                       R16 R20 K14 ["finishEditingProperty"]
       92 SETTABLEKS                       R18 R20 K15 ["setPropertyPart"]
       94 SETTABLEKS                       R2 R20 K16 ["propertiesObservable"]
       96 SETTABLEKS                       R4 R20 K17 ["summaryObservable"]
       98 DUPTABLE                         R21 K26 [{"isActive", "pickInstanceAsync", "deactivateInstancePickerAsync"}]
       99 GETTABLEKS                       R22 R13 K27 ["instancePickerActiveObservable"]
      101 SETTABLEKS                       R22 R21 K23 ["isActive"]
      103 GETTABLEKS                       R22 R8 K28 ["instancePickerPickInstanceAsync"]
      105 SETTABLEKS                       R22 R21 K24 ["pickInstanceAsync"]
      107 GETTABLEKS                       R22 R8 K25 ["deactivateInstancePickerAsync"]
      109 SETTABLEKS                       R22 R21 K25 ["deactivateInstancePickerAsync"]
      111 SETTABLEKS                       R21 R20 K18 ["instancePicker"]
      113 GETUPVAL                         R21 5
      114 CALL                             R21 0 1
      115 SETTABLEKS                       R21 R20 K19 ["reflection"]
      117 GETTABLEKS                       R21 R8 K20 ["getGameIdAsync"]
      119 SETTABLEKS                       R21 R20 K20 ["getGameIdAsync"]
      121 SETTABLEKS                       R19 R20 K21 ["destroy"]
      123 CLOSEUPVALS                      R6
      124 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R3 K7 ["NetworkedRPCInterfaces"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Networking"]
       18 GETTABLEKS                       R3 R4 K8 ["NetworkingTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["PropertyTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["RpcTypes"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETIMPORT                        R8 K1 [script]
       42 GETTABLEKS                       R7 R8 K13 ["createSessionInstancePicker"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R9 R0 K9 ["Util"]
       49 GETTABLEKS                       R8 R9 K14 ["createStudioReflection"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R10 R0 K9 ["Util"]
       56 GETTABLEKS                       R9 R10 K15 ["propertyIdToString"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R11 R0 K9 ["Util"]
       63 GETTABLEKS                       R10 R11 K16 ["samePropertyId"]
       65 CALL                             R9 1 1
       66 DUPCLOSURE                       R10 K17 [PROTO_7]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R7
       73 RETURN                           R10 1
