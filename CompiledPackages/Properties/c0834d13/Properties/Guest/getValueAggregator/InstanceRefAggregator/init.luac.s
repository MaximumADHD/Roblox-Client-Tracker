PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+66]
        2 DUPTABLE                         R2 K7 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
        3 DUPTABLE                         R3 K9 [{"value", "multiple"}]
        4 LOADNIL                          R4
        5 SETTABLEKS                       R4 R3 K0 ["value"]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K8 ["multiple"]
       10 SETTABLEKS                       R3 R2 K0 ["value"]
       12 DUPTABLE                         R3 K9 [{"value", "multiple"}]
       13 LOADK                            R4 K10 ["Instance"]
       14 SETTABLEKS                       R4 R3 K0 ["value"]
       16 LOADB                            R4 0
       17 SETTABLEKS                       R4 R3 K8 ["multiple"]
       19 SETTABLEKS                       R3 R2 K1 ["className"]
       21 DUPTABLE                         R3 K9 [{"value", "multiple"}]
       22 LOADK                            R4 K11 [""]
       23 SETTABLEKS                       R4 R3 K0 ["value"]
       25 LOADB                            R4 0
       26 SETTABLEKS                       R4 R3 K8 ["multiple"]
       28 SETTABLEKS                       R3 R2 K2 ["name"]
       30 DUPTABLE                         R3 K9 [{"value", "multiple"}]
       31 LOADB                            R4 0
       32 SETTABLEKS                       R4 R3 K0 ["value"]
       34 LOADB                            R4 0
       35 SETTABLEKS                       R4 R3 K8 ["multiple"]
       37 SETTABLEKS                       R3 R2 K3 ["isAutoUpdatedPackageLink"]
       39 DUPTABLE                         R3 K9 [{"value", "multiple"}]
       40 LOADB                            R4 0
       41 SETTABLEKS                       R4 R3 K0 ["value"]
       43 LOADB                            R4 0
       44 SETTABLEKS                       R4 R3 K8 ["multiple"]
       46 SETTABLEKS                       R3 R2 K4 ["isClientScript"]
       48 DUPTABLE                         R3 K9 [{"value", "multiple"}]
       49 LOADB                            R4 0
       50 SETTABLEKS                       R4 R3 K0 ["value"]
       52 LOADB                            R4 0
       53 SETTABLEKS                       R4 R3 K8 ["multiple"]
       55 SETTABLEKS                       R3 R2 K5 ["isDisabledScript"]
       57 DUPTABLE                         R3 K9 [{"value", "multiple"}]
       58 LOADB                            R4 0
       59 SETTABLEKS                       R4 R3 K0 ["value"]
       61 LOADB                            R4 0
       62 SETTABLEKS                       R4 R3 K8 ["multiple"]
       64 SETTABLEKS                       R3 R2 K6 ["isHiddenGui"]
       66 RETURN                           R2 1
       67 DUPTABLE                         R2 K7 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
       68 DUPTABLE                         R3 K9 [{"value", "multiple"}]
       69 GETTABLEKS                       R5 R0 K12 ["instanceRegistry"]
       71 GETTABLEKS                       R4 R5 K13 ["getIdByInstance"]
       73 MOVE                             R5 R1
       74 CALL                             R4 1 1
       75 SETTABLEKS                       R4 R3 K0 ["value"]
       77 LOADB                            R4 0
       78 SETTABLEKS                       R4 R3 K8 ["multiple"]
       80 SETTABLEKS                       R3 R2 K0 ["value"]
       82 DUPTABLE                         R3 K9 [{"value", "multiple"}]
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R5 R6 K1 ["className"]
       86 GETTABLEKS                       R4 R5 K14 ["getValue"]
       88 MOVE                             R5 R1
       89 CALL                             R4 1 1
       90 SETTABLEKS                       R4 R3 K0 ["value"]
       92 LOADB                            R4 0
       93 SETTABLEKS                       R4 R3 K8 ["multiple"]
       95 SETTABLEKS                       R3 R2 K1 ["className"]
       97 DUPTABLE                         R3 K9 [{"value", "multiple"}]
       98 GETUPVAL                         R6 0
       99 GETTABLEKS                       R5 R6 K2 ["name"]
      101 GETTABLEKS                       R4 R5 K14 ["getValue"]
      103 MOVE                             R5 R1
      104 CALL                             R4 1 1
      105 SETTABLEKS                       R4 R3 K0 ["value"]
      107 LOADB                            R4 0
      108 SETTABLEKS                       R4 R3 K8 ["multiple"]
      110 SETTABLEKS                       R3 R2 K2 ["name"]
      112 DUPTABLE                         R3 K9 [{"value", "multiple"}]
      113 GETUPVAL                         R6 0
      114 GETTABLEKS                       R5 R6 K3 ["isAutoUpdatedPackageLink"]
      116 GETTABLEKS                       R4 R5 K14 ["getValue"]
      118 MOVE                             R5 R1
      119 CALL                             R4 1 1
      120 SETTABLEKS                       R4 R3 K0 ["value"]
      122 LOADB                            R4 0
      123 SETTABLEKS                       R4 R3 K8 ["multiple"]
      125 SETTABLEKS                       R3 R2 K3 ["isAutoUpdatedPackageLink"]
      127 DUPTABLE                         R3 K9 [{"value", "multiple"}]
      128 GETUPVAL                         R6 0
      129 GETTABLEKS                       R5 R6 K4 ["isClientScript"]
      131 GETTABLEKS                       R4 R5 K14 ["getValue"]
      133 MOVE                             R5 R1
      134 CALL                             R4 1 1
      135 SETTABLEKS                       R4 R3 K0 ["value"]
      137 LOADB                            R4 0
      138 SETTABLEKS                       R4 R3 K8 ["multiple"]
      140 SETTABLEKS                       R3 R2 K4 ["isClientScript"]
      142 DUPTABLE                         R3 K9 [{"value", "multiple"}]
      143 GETUPVAL                         R6 0
      144 GETTABLEKS                       R5 R6 K5 ["isDisabledScript"]
      146 GETTABLEKS                       R4 R5 K14 ["getValue"]
      148 MOVE                             R5 R1
      149 CALL                             R4 1 1
      150 SETTABLEKS                       R4 R3 K0 ["value"]
      152 LOADB                            R4 0
      153 SETTABLEKS                       R4 R3 K8 ["multiple"]
      155 SETTABLEKS                       R3 R2 K5 ["isDisabledScript"]
      157 DUPTABLE                         R3 K9 [{"value", "multiple"}]
      158 GETUPVAL                         R6 0
      159 GETTABLEKS                       R5 R6 K6 ["isHiddenGui"]
      161 GETTABLEKS                       R4 R5 K14 ["getValue"]
      163 MOVE                             R5 R1
      164 CALL                             R4 1 1
      165 SETTABLEKS                       R4 R3 K0 ["value"]
      167 LOADB                            R4 0
      168 SETTABLEKS                       R4 R3 K8 ["multiple"]
      170 SETTABLEKS                       R3 R2 K6 ["isHiddenGui"]
      172 RETURN                           R2 1

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
       15 GETTABLEKS                       R5 R1 K1 ["value"]
       17 GETTABLEKS                       R4 R5 K1 ["value"]
       19 JUMPIFNOT                        R2 ; [+7]
       20 GETTABLEKS                       R6 R0 K2 ["instanceRegistry"]
       22 GETTABLEKS                       R5 R6 K3 ["getIdByInstance"]
       24 MOVE                             R6 R2
       25 CALL                             R5 1 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 JUMPIFEQ                         R5 R4 ; [+6]
       30 GETTABLEKS                       R6 R1 K1 ["value"]
       32 LOADB                            R7 1
       33 SETTABLEKS                       R7 R6 K0 ["multiple"]
       35 JUMPIF                           R2 ; [+13]
       36 JUMPIFNOT                        R4 ; [+12]
       37 GETUPVAL                         R6 0
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 GETTABLE                         R11 R1 R9
       42 LOADB                            R12 1
       43 SETTABLEKS                       R12 R11 K0 ["multiple"]
       45 FORGLOOP                         R6 2 ; [-5]
       47 LOADB                            R6 1
       48 RETURN                           R6 1
       49 JUMPIFNOT                        R2 ; [+19]
       50 GETUPVAL                         R6 0
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 FORGPREP                         R6
       54 GETTABLEKS                       R11 R10 K4 ["getValue"]
       56 MOVE                             R12 R2
       57 CALL                             R11 1 1
       58 GETTABLE                         R13 R1 R9
       59 GETTABLEKS                       R12 R13 K1 ["value"]
       61 JUMPIFEQ                         R11 R12 ; [+5]
       63 GETTABLE                         R11 R1 R9
       64 LOADB                            R12 1
       65 SETTABLEKS                       R12 R11 K0 ["multiple"]
       67 FORGLOOP                         R6 2 ; [-14]
       69 LOADB                            R6 1
       70 MOVE                             R7 R1
       71 LOADNIL                          R8
       72 LOADNIL                          R9
       73 FORGPREP                         R7
       74 GETTABLEKS                       R12 R11 K0 ["multiple"]
       76 JUMPIF                           R12 ; [+2]
       77 LOADB                            R6 0
       78 RETURN                           R6 1
       79 FORGLOOP                         R7 2 ; [-6]
       81 RETURN                           R6 1

PROTO_2:
        0 JUMPIFEQKS                       R4 K0 ["value"] ; [+2]
        2 LOADB                            R7 0 +1
        3 LOADB                            R7 1
        4 FASTCALL2K                       ASSERT R7 K1 ; [+4]
        6 LOADK                            R8 K1 ["Instanceref can only set the value part, others are readonly"]
        7 GETIMPORT                        R6 K3 [assert]
        9 CALL                             R6 2 0
       10 JUMPIFNOT                        R5 ; [+7]
       11 GETTABLEKS                       R7 R0 K4 ["instanceRegistry"]
       13 GETTABLEKS                       R6 R7 K5 ["getInstanceById"]
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
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K6 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R3 R4 K7 ["InstanceClassName"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R4 R5 K8 ["InstanceName"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K9 ["IsAutoUpdatedPackageLink"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R6 R7 K10 ["IsClientScript"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R7 R8 K11 ["IsDisabledScript"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R9 K1 [script]
       53 GETTABLEKS                       R8 R9 K12 ["IsHiddenGui"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K13 ["PropertyEditorTypes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K14 ["PropertyTypes"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K15 ["RpcTypes"]
       70 CALL                             R10 1 1
       71 DUPTABLE                         R11 K22 [{"className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
       72 SETTABLEKS                       R2 R11 K16 ["className"]
       74 SETTABLEKS                       R3 R11 K17 ["name"]
       76 SETTABLEKS                       R4 R11 K18 ["isAutoUpdatedPackageLink"]
       78 SETTABLEKS                       R5 R11 K19 ["isClientScript"]
       80 SETTABLEKS                       R6 R11 K20 ["isDisabledScript"]
       82 SETTABLEKS                       R7 R11 K21 ["isHiddenGui"]
       84 DUPCLOSURE                       R12 K23 [PROTO_0]
       85 CAPTURE                          VAL R11
       86 DUPCLOSURE                       R13 K24 [PROTO_1]
       87 CAPTURE                          VAL R11
       88 DUPCLOSURE                       R14 K25 [PROTO_2]
       89 DUPCLOSURE                       R15 K26 [PROTO_5]
       90 CAPTURE                          VAL R11
       91 DUPTABLE                         R16 K31 [{"initParts", "addToAggregation", "setPart", "listenToParts"}]
       92 SETTABLEKS                       R12 R16 K27 ["initParts"]
       94 SETTABLEKS                       R13 R16 K28 ["addToAggregation"]
       96 SETTABLEKS                       R14 R16 K29 ["setPart"]
       98 SETTABLEKS                       R15 R16 K30 ["listenToParts"]
      100 RETURN                           R16 1
