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
        5 JUMPIFNOT                        R6 ; [+15]
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R5
        8 GETUPVAL                         R8 0
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+10]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K0 ["editProperty"]
       14 GETUPVAL                         R7 0
       15 DUPTABLE                         R8 K3 [{["type"] = "Cancel"}]
       16 CALL                             R6 2 0
       17 LOADNIL                          R6
       18 SETUPVAL                         R6 0
       19 LOADNIL                          R6
       20 SETUPVAL                         R6 3
       21 GETUPVAL                         R6 4
       22 GETUPVAL                         R7 5
       23 MOVE                             R8 R5
       24 CALL                             R7 1 1
       25 LOADNIL                          R8
       26 SETTABLE                         R8 R6 R7
       27 FORGLOOP                         R1 2 ; [-24]
       29 GETUPVAL                         R1 6
       30 CALL                             R1 0 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFEQKS                       R2 K1 ["Stage"] ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["type"]
        6 JUMPIFNOTEQKS                    R2 K2 ["Capture"] ; [+2]
        8 SETUPVAL                         R0 0
        9 GETTABLEKS                       R2 R1 K0 ["type"]
       11 JUMPIFEQKS                       R2 K1 ["Stage"] ; [+5]
       13 GETTABLEKS                       R2 R1 K0 ["type"]
       15 JUMPIFNOTEQKS                    R2 K3 ["Edit"] ; [+107]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K4 ["extractExpressionText"]
       20 GETTABLEKS                       R3 R1 K5 ["part"]
       22 GETTABLEKS                       R3 R3 K6 ["value"]
       24 CALL                             R2 1 1
       25 JUMPIFNOTEQKNIL                  R2 ; [+97]
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R5 3
       29 MOVE                             R6 R0
       30 CALL                             R5 1 1
       31 GETTABLE                         R3 R4 R5
       32 JUMPIFNOT                        R3 ; [+90]
       33 GETTABLEKS                       R4 R3 K7 ["aggregatePropertyInfo"]
       35 GETTABLEKS                       R6 R4 K8 ["extra"]
       37 JUMPIFEQKNIL                     R6 ; [+12]
       39 GETTABLEKS                       R6 R4 K8 ["extra"]
       41 GETTABLEKS                       R6 R6 K0 ["type"]
       43 JUMPIFNOTEQKS                    R6 K9 ["number"] ; [+6]
       45 GETTABLEKS                       R5 R4 K8 ["extra"]
       47 GETTABLEKS                       R5 R5 K10 ["unit"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R5
       51 GETTABLEKS                       R6 R1 K5 ["part"]
       53 GETTABLEKS                       R6 R6 K6 ["value"]
       55 JUMPIFEQKNIL                     R5 ; [+29]
       57 GETTABLEKS                       R10 R1 K5 ["part"]
       59 GETTABLEKS                       R10 R10 K6 ["value"]
       61 FASTCALL1                        TYPEOF R10 ; [+2]
       62 GETIMPORT                        R9 K12 [typeof]
       64 CALL                             R9 1 1
       65 JUMPIFEQKS                       R9 K9 ["number"] ; [+2]
       67 LOADB                            R8 0 +1
       68 LOADB                            R8 1
       69 FASTCALL2K                       ASSERT R8 K13 ; [+4]
       71 LOADK                            R9 K13 ["units are only attached to number properties"]
       72 GETIMPORT                        R7 K15 [assert]
       74 CALL                             R7 2 0
       75 GETUPVAL                         R7 4
       76 GETTABLEKS                       R7 R7 K16 ["fromDisplayValue"]
       78 MOVE                             R8 R5
       79 GETTABLEKS                       R9 R1 K5 ["part"]
       81 GETTABLEKS                       R9 R9 K6 ["value"]
       83 CALL                             R7 2 1
       84 MOVE                             R6 R7
       85 GETIMPORT                        R7 K19 [table.clone]
       87 MOVE                             R8 R4
       88 CALL                             R7 1 1
       89 GETIMPORT                        R8 K19 [table.clone]
       91 GETTABLEKS                       R9 R4 K20 ["parts"]
       93 CALL                             R8 1 1
       94 SETTABLEKS                       R8 R7 K20 ["parts"]
       96 GETTABLEKS                       R8 R7 K20 ["parts"]
       98 GETTABLEKS                       R9 R1 K5 ["part"]
      100 GETTABLEKS                       R9 R9 K21 ["name"]
      102 DUPTABLE                         R10 K24 [{["value"], ["multiple"] = False}]
      103 SETTABLEKS                       R6 R10 K6 ["value"]
      105 SETTABLE                         R10 R8 R9
      106 GETUPVAL                         R8 2
      107 GETUPVAL                         R9 3
      108 MOVE                             R10 R0
      109 CALL                             R9 1 1
      110 GETIMPORT                        R10 K26 [table.freeze]
      112 DUPTABLE                         R11 K28 [{"id", "aggregatePropertyInfo"}]
      113 GETTABLEKS                       R12 R3 K27 ["id"]
      115 SETTABLEKS                       R12 R11 K27 ["id"]
      117 SETTABLEKS                       R7 R11 K7 ["aggregatePropertyInfo"]
      119 CALL                             R10 1 1
      120 SETTABLE                         R10 R8 R9
      121 GETUPVAL                         R8 5
      122 CALL                             R8 0 0
      123 GETUPVAL                         R2 6
      124 GETTABLEKS                       R2 R2 K29 ["editProperty"]
      126 MOVE                             R3 R0
      127 MOVE                             R4 R1
      128 CALL                             R2 2 0
      129 GETTABLEKS                       R2 R1 K0 ["type"]
      131 JUMPIFEQKS                       R2 K30 ["Cancel"] ; [+9]
      133 GETTABLEKS                       R2 R1 K0 ["type"]
      135 JUMPIFEQKS                       R2 K31 ["Commit"] ; [+5]
      137 GETTABLEKS                       R2 R1 K0 ["type"]
      139 JUMPIFNOTEQKS                    R2 K3 ["Edit"] ; [+22]
      141 LOADNIL                          R2
      142 SETUPVAL                         R2 0
      143 GETUPVAL                         R2 7
      144 JUMPIFNOT                        R2 ; [+17]
      145 GETUPVAL                         R2 8
      146 NEWTABLE                         R3 0 1
      148 GETIMPORT                        R4 K19 [table.clone]
      150 MOVE                             R5 R0
      151 CALL                             R4 1 -1
      152 SETLIST                          R3 R4 -1 [1]
      154 NEWTABLE                         R4 0 1
      156 GETUPVAL                         R5 7
      157 SETLIST                          R4 R5 1 [1]
      159 CALL                             R2 2 0
      160 LOADNIL                          R2
      161 SETUPVAL                         R2 7
      162 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 DUPTABLE                         R2 K2 [{[1] = "Cancel"}]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_6:
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
       52 CALL                             R15 0 1
       53 GETUPVAL                         R16 8
       54 GETTABLEKS                       R16 R16 K10 ["new"]
       56 CALL                             R16 0 1
       57 NEWCLOSURE                       R17 P3
       58 CAPTURE                          VAL R16
       59 DUPTABLE                         R18 K17 [{"showProperties", "hideProperties", "instancePickerActiveChanged", "gameIdChanged", "guestEnumChanged", "selectionUpdatedWhilePinned"}]
       60 SETTABLEKS                       R11 R18 K11 ["showProperties"]
       62 SETTABLEKS                       R12 R18 K12 ["hideProperties"]
       64 GETTABLEKS                       R19 R13 K13 ["instancePickerActiveChanged"]
       66 SETTABLEKS                       R19 R18 K13 ["instancePickerActiveChanged"]
       68 GETTABLEKS                       R19 R14 K14 ["gameIdChanged"]
       70 SETTABLEKS                       R19 R18 K14 ["gameIdChanged"]
       72 GETTABLEKS                       R19 R15 K18 ["onGuestEnumUpdate"]
       74 SETTABLEKS                       R19 R18 K15 ["guestEnumChanged"]
       76 SETTABLEKS                       R17 R18 K16 ["selectionUpdatedWhilePinned"]
       78 GETUPVAL                         R19 2
       79 GETTABLEKS                       R19 R19 K19 ["addNetworkLayerToHostRPCInterface"]
       81 MOVE                             R20 R0
       82 MOVE                             R21 R18
       83 CALL                             R19 2 1
       84 GETTABLEKS                       R20 R8 K20 ["updateGameId"]
       86 CALL                             R20 0 0
       87 GETTABLEKS                       R20 R8 K21 ["requestInitialGuestEnums"]
       89 CALL                             R20 0 0
       90 NEWCLOSURE                       R20 P4
       91 CAPTURE                          REF R6
       92 CAPTURE                          UPVAL U9
       93 CAPTURE                          VAL R1
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R8
       98 CAPTURE                          REF R7
       99 CAPTURE                          VAL R11
      100 NEWCLOSURE                       R21 P5
      101 CAPTURE                          REF R6
      102 CAPTURE                          VAL R20
      103 CAPTURE                          VAL R19
      104 CAPTURE                          VAL R9
      105 DUPTABLE                         R22 K29 [{"observeProperties", "summaryObservable", "reflection", "editProperty", "specializedEditingUtils", "pinning", "destroy"}]
      106 SETTABLEKS                       R2 R22 K22 ["observeProperties"]
      108 SETTABLEKS                       R4 R22 K23 ["summaryObservable"]
      110 GETUPVAL                         R23 11
      111 CALL                             R23 0 1
      112 SETTABLEKS                       R23 R22 K24 ["reflection"]
      114 SETTABLEKS                       R20 R22 K25 ["editProperty"]
      116 DUPTABLE                         R23 K33 [{"instancePicker", "assetPicker", "getObserveDynamicEnum"}]
      117 DUPTABLE                         R24 K37 [{"isActive", "pickInstanceAsync", "deactivateInstancePickerAsync"}]
      118 GETTABLEKS                       R25 R13 K38 ["instancePickerActiveObservable"]
      120 SETTABLEKS                       R25 R24 K34 ["isActive"]
      122 GETTABLEKS                       R25 R8 K39 ["instancePickerPickInstanceAsync"]
      124 SETTABLEKS                       R25 R24 K35 ["pickInstanceAsync"]
      126 GETTABLEKS                       R25 R8 K36 ["deactivateInstancePickerAsync"]
      128 SETTABLEKS                       R25 R24 K36 ["deactivateInstancePickerAsync"]
      130 SETTABLEKS                       R24 R23 K30 ["instancePicker"]
      132 DUPTABLE                         R24 K42 [{"gameIdObservable", "shareAccessToAssetsAsync"}]
      133 GETTABLEKS                       R25 R14 K40 ["gameIdObservable"]
      135 SETTABLEKS                       R25 R24 K40 ["gameIdObservable"]
      137 GETTABLEKS                       R25 R8 K41 ["shareAccessToAssetsAsync"]
      139 SETTABLEKS                       R25 R24 K41 ["shareAccessToAssetsAsync"]
      141 SETTABLEKS                       R24 R23 K31 ["assetPicker"]
      143 GETTABLEKS                       R24 R15 K43 ["getObserveGuestEnum"]
      145 SETTABLEKS                       R24 R23 K32 ["getObserveDynamicEnum"]
      147 SETTABLEKS                       R23 R22 K26 ["specializedEditingUtils"]
      149 DUPTABLE                         R23 K46 [{"pinSelection", "unpinSelection", "selectionUpdatedWhilePinned"}]
      150 GETTABLEKS                       R24 R8 K44 ["pinSelection"]
      152 SETTABLEKS                       R24 R23 K44 ["pinSelection"]
      154 GETTABLEKS                       R24 R8 K45 ["unpinSelection"]
      156 SETTABLEKS                       R24 R23 K45 ["unpinSelection"]
      158 SETTABLEKS                       R16 R23 K16 ["selectionUpdatedWhilePinned"]
      160 SETTABLEKS                       R23 R22 K27 ["pinning"]
      162 SETTABLEKS                       R21 R22 K28 ["destroy"]
      164 CLOSEUPVALS                      R6
      165 RETURN                           R22 1

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
       82 GETIMPORT                        R14 K1 [script]
       84 GETTABLEKS                       R14 R14 K21 ["createSessionObserveGuestEnums"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K22 ["PropertyInteraction"]
       91 GETTABLEKS                       R15 R15 K23 ["createStudioReflection"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R16 R0 K22 ["PropertyInteraction"]
       98 GETTABLEKS                       R16 R16 K24 ["propertyIdToString"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R17 R0 K22 ["PropertyInteraction"]
      105 GETTABLEKS                       R17 R17 K25 ["samePropertyId"]
      107 CALL                             R16 1 1
      108 DUPCLOSURE                       R17 K26 [PROTO_6]
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R14
      121 RETURN                           R17 1
