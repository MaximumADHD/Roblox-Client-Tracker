PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+24]
        2 DUPTABLE                         R2 K7 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
        3 DUPTABLE                         R3 K11 [{[1] = , ["multiple"] = False}]
        4 SETTABLEKS                       R3 R2 K0 ["value"]
        6 DUPTABLE                         R3 K13 [{[1] = "Instance", ["multiple"] = False}]
        7 SETTABLEKS                       R3 R2 K1 ["className"]
        9 DUPTABLE                         R3 K15 [{[1] = "", ["multiple"] = False}]
       10 SETTABLEKS                       R3 R2 K2 ["name"]
       12 DUPTABLE                         R3 K16 [{[1] = False, ["multiple"] = False}]
       13 SETTABLEKS                       R3 R2 K3 ["isAutoUpdatedPackageLink"]
       15 DUPTABLE                         R3 K16 [{[1] = False, ["multiple"] = False}]
       16 SETTABLEKS                       R3 R2 K4 ["isClientScript"]
       18 DUPTABLE                         R3 K16 [{[1] = False, ["multiple"] = False}]
       19 SETTABLEKS                       R3 R2 K5 ["isDisabledScript"]
       21 DUPTABLE                         R3 K16 [{[1] = False, ["multiple"] = False}]
       22 SETTABLEKS                       R3 R2 K6 ["isHiddenGui"]
       24 RETURN                           R2 1
       25 DUPTABLE                         R2 K7 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
       26 DUPTABLE                         R3 K17 [{[1], ["multiple"] = False}]
       27 GETTABLEKS                       R4 R0 K18 ["instanceRegistry"]
       29 GETTABLEKS                       R4 R4 K19 ["getIdByInstance"]
       31 MOVE                             R5 R1
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K0 ["value"]
       35 SETTABLEKS                       R3 R2 K0 ["value"]
       37 DUPTABLE                         R3 K17 [{[1], ["multiple"] = False}]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K1 ["className"]
       41 GETTABLEKS                       R4 R4 K20 ["getValue"]
       43 MOVE                             R5 R1
       44 CALL                             R4 1 1
       45 SETTABLEKS                       R4 R3 K0 ["value"]
       47 SETTABLEKS                       R3 R2 K1 ["className"]
       49 DUPTABLE                         R3 K17 [{[1], ["multiple"] = False}]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K2 ["name"]
       53 GETTABLEKS                       R4 R4 K20 ["getValue"]
       55 MOVE                             R5 R1
       56 CALL                             R4 1 1
       57 SETTABLEKS                       R4 R3 K0 ["value"]
       59 SETTABLEKS                       R3 R2 K2 ["name"]
       61 DUPTABLE                         R3 K17 [{[1], ["multiple"] = False}]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K3 ["isAutoUpdatedPackageLink"]
       65 GETTABLEKS                       R4 R4 K20 ["getValue"]
       67 MOVE                             R5 R1
       68 CALL                             R4 1 1
       69 SETTABLEKS                       R4 R3 K0 ["value"]
       71 SETTABLEKS                       R3 R2 K3 ["isAutoUpdatedPackageLink"]
       73 DUPTABLE                         R3 K17 [{[1], ["multiple"] = False}]
       74 GETUPVAL                         R4 0
       75 GETTABLEKS                       R4 R4 K4 ["isClientScript"]
       77 GETTABLEKS                       R4 R4 K20 ["getValue"]
       79 MOVE                             R5 R1
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K0 ["value"]
       83 SETTABLEKS                       R3 R2 K4 ["isClientScript"]
       85 DUPTABLE                         R3 K17 [{[1], ["multiple"] = False}]
       86 GETUPVAL                         R4 0
       87 GETTABLEKS                       R4 R4 K5 ["isDisabledScript"]
       89 GETTABLEKS                       R4 R4 K20 ["getValue"]
       91 MOVE                             R5 R1
       92 CALL                             R4 1 1
       93 SETTABLEKS                       R4 R3 K0 ["value"]
       95 SETTABLEKS                       R3 R2 K5 ["isDisabledScript"]
       97 DUPTABLE                         R3 K17 [{[1], ["multiple"] = False}]
       98 GETUPVAL                         R4 0
       99 GETTABLEKS                       R4 R4 K6 ["isHiddenGui"]
      101 GETTABLEKS                       R4 R4 K20 ["getValue"]
      103 MOVE                             R5 R1
      104 CALL                             R4 1 1
      105 SETTABLEKS                       R4 R3 K0 ["value"]
      107 SETTABLEKS                       R3 R2 K6 ["isHiddenGui"]
      109 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R3 1
        1 MOVE                             R4 R1
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 GETTABLEKS                       R9 R8 K0 ["multiple"]
        7 JUMPIF                           R9 ; [+2]
        8 LOADB                            R3 0
        9 JUMP                             ; [+2]
       10 FORGLOOP                         R4 2 ; [-6]
       12 JUMPIFNOT                        R3 ; [+2]
       13 LOADB                            R4 1
       14 RETURN                           R4 1
       15 GETTABLEKS                       R4 R1 K1 ["value"]
       17 GETTABLEKS                       R4 R4 K1 ["value"]
       19 JUMPIFNOT                        R2 ; [+7]
       20 GETTABLEKS                       R5 R0 K2 ["instanceRegistry"]
       22 GETTABLEKS                       R5 R5 K3 ["getIdByInstance"]
       24 MOVE                             R6 R2
       25 CALL                             R5 1 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 JUMPIFEQ                         R5 R4 ; [+4]
       30 GETUPVAL                         R6 0
       31 SETTABLEKS                       R6 R1 K1 ["value"]
       33 JUMPIF                           R2 ; [+11]
       34 JUMPIFNOT                        R4 ; [+10]
       35 GETUPVAL                         R6 1
       36 LOADNIL                          R7
       37 LOADNIL                          R8
       38 FORGPREP                         R6
       39 GETUPVAL                         R11 0
       40 SETTABLE                         R11 R1 R9
       41 FORGLOOP                         R6 2 ; [-3]
       43 LOADB                            R6 1
       44 RETURN                           R6 1
       45 JUMPIFNOT                        R2 ; [+17]
       46 GETUPVAL                         R6 1
       47 LOADNIL                          R7
       48 LOADNIL                          R8
       49 FORGPREP                         R6
       50 GETTABLEKS                       R11 R10 K4 ["getValue"]
       52 MOVE                             R12 R2
       53 CALL                             R11 1 1
       54 GETTABLE                         R12 R1 R9
       55 GETTABLEKS                       R12 R12 K1 ["value"]
       57 JUMPIFEQ                         R11 R12 ; [+3]
       59 GETUPVAL                         R11 0
       60 SETTABLE                         R11 R1 R9
       61 FORGLOOP                         R6 2 ; [-12]
       63 LOADB                            R6 1
       64 MOVE                             R7 R1
       65 LOADNIL                          R8
       66 LOADNIL                          R9
       67 FORGPREP                         R7
       68 GETTABLEKS                       R12 R11 K0 ["multiple"]
       70 JUMPIF                           R12 ; [+2]
       71 LOADB                            R6 0
       72 RETURN                           R6 1
       73 FORGLOOP                         R7 2 ; [-6]
       75 RETURN                           R6 1

PROTO_2:
        0 JUMPIFEQKS                       R4 K0 ["value"] ; [+2]
        2 LOADB                            R7 0 +1
        3 LOADB                            R7 1
        4 FASTCALL2K                       ASSERT R7 K1 ; [+4]
        6 LOADK                            R8 K1 ["Instanceref can only set the value part, others are readonly"]
        7 GETIMPORT                        R6 K3 [assert]
        9 CALL                             R6 2 0
       10 JUMPIFNOT                        R5 ; [+7]
       11 GETTABLEKS                       R6 R0 K4 ["instanceRegistry"]
       13 GETTABLEKS                       R6 R6 K5 ["getInstanceById"]
       15 MOVE                             R7 R5
       16 CALL                             R6 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R6
       19 MOVE                             R9 R2
       20 MOVE                             R7 R3
       21 LOADN                            R8 1
       22 FORNPREP                         R7
       23 SETTABLE                         R6 R1 R9
       24 FORNLOOP                         R7
       25 LOADNIL                          R7
       26 RETURN                           R7 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_5:
        0 JUMPIF                           R1 ; [+2]
        1 DUPCLOSURE                       R3 K0 [PROTO_3]
        2 RETURN                           R3 1
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R4 0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 MOVE                             R10 R3
       10 GETTABLEKS                       R11 R8 K1 ["watch"]
       12 MOVE                             R12 R1
       13 MOVE                             R13 R2
       14 CALL                             R11 2 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R9 K4 [table.insert]
       18 CALL                             R9 -1 0
       19 FORGLOOP                         R4 2 ; [-11]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R3
       23 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyInteraction"]
       11 GETTABLEKS                       R2 R2 K7 ["getAggregateParts"]
       13 GETTABLEKS                       R2 R2 K8 ["AggregatePartsTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K9 ["FieldTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K10 ["InstanceClassName"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K11 ["InstanceName"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K12 ["IsAutoUpdatedPackageLink"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETIMPORT                        R7 K1 [script]
       48 GETTABLEKS                       R7 R7 K13 ["IsClientScript"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETIMPORT                        R8 K1 [script]
       55 GETTABLEKS                       R8 R8 K14 ["IsDisabledScript"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETIMPORT                        R9 K1 [script]
       62 GETTABLEKS                       R9 R9 K15 ["IsHiddenGui"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K16 ["PropertyEditorTypes"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K17 ["PropertyTypes"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K18 ["Parent"]
       79 GETTABLEKS                       R12 R12 K19 ["ReactUtils"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K20 ["RpcTypes"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K6 ["PropertyInteraction"]
       91 GETTABLEKS                       R14 R14 K21 ["genericMultiplePart"]
       93 CALL                             R13 1 1
       94 DUPTABLE                         R14 K28 [{"className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
       95 SETTABLEKS                       R3 R14 K22 ["className"]
       97 SETTABLEKS                       R4 R14 K23 ["name"]
       99 SETTABLEKS                       R5 R14 K24 ["isAutoUpdatedPackageLink"]
      101 SETTABLEKS                       R6 R14 K25 ["isClientScript"]
      103 SETTABLEKS                       R7 R14 K26 ["isDisabledScript"]
      105 SETTABLEKS                       R8 R14 K27 ["isHiddenGui"]
      107 DUPCLOSURE                       R15 K29 [PROTO_0]
      108 CAPTURE                          VAL R14
      109 DUPCLOSURE                       R16 K30 [PROTO_1]
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R14
      112 DUPCLOSURE                       R17 K31 [PROTO_2]
      113 DUPCLOSURE                       R18 K32 [PROTO_5]
      114 CAPTURE                          VAL R14
      115 DUPTABLE                         R19 K35 [{"fromValue", "allMultiple"}]
      116 GETTABLEKS                       R20 R11 K36 ["createUnimplemented"]
      118 LOADK                            R21 K37 ["getAggregatePartsFromInstanceRef"]
      119 CALL                             R20 1 1
      120 SETTABLEKS                       R20 R19 K33 ["fromValue"]
      122 DUPTABLE                         R20 K39 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
      123 SETTABLEKS                       R13 R20 K38 ["value"]
      125 SETTABLEKS                       R13 R20 K22 ["className"]
      127 SETTABLEKS                       R13 R20 K23 ["name"]
      129 SETTABLEKS                       R13 R20 K24 ["isAutoUpdatedPackageLink"]
      131 SETTABLEKS                       R13 R20 K25 ["isClientScript"]
      133 SETTABLEKS                       R13 R20 K26 ["isDisabledScript"]
      135 SETTABLEKS                       R13 R20 K27 ["isHiddenGui"]
      137 SETTABLEKS                       R20 R19 K34 ["allMultiple"]
      139 DUPTABLE                         R20 K45 [{"initParts", "addToAggregation", "setPart", "listenToParts", "aggregateParts"}]
      140 SETTABLEKS                       R15 R20 K40 ["initParts"]
      142 SETTABLEKS                       R16 R20 K41 ["addToAggregation"]
      144 SETTABLEKS                       R17 R20 K42 ["setPart"]
      146 SETTABLEKS                       R18 R20 K43 ["listenToParts"]
      148 SETTABLEKS                       R19 R20 K44 ["aggregateParts"]
      150 RETURN                           R20 1
