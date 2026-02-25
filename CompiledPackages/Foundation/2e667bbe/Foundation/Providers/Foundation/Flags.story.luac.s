PROTO_0:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["key"]
        2 GETTABLEKS                       R4 R1 K0 ["key"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 GETUPVAL                         R6 1
        8 JUMPIFEQKS                       R6 K2 [""] ; [+13]
       10 GETIMPORT                        R6 K5 [string.find]
       12 GETIMPORT                        R7 K7 [string.lower]
       14 MOVE                             R8 R4
       15 CALL                             R7 1 1
       16 GETIMPORT                        R8 K7 [string.lower]
       18 GETUPVAL                         R9 1
       19 CALL                             R8 1 -1
       20 CALL                             R6 -1 1
       21 JUMPIFNOT                        R6 ; [+11]
       22 DUPTABLE                         R8 K10 [{"key", "value"}]
       23 SETTABLEKS                       R4 R8 K8 ["key"]
       25 SETTABLEKS                       R5 R8 K9 ["value"]
       27 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       29 MOVE                             R7 R0
       30 GETIMPORT                        R6 K13 [table.insert]
       32 CALL                             R6 2 0
       33 FORGLOOP                         R1 2 ; [-27]
       35 GETIMPORT                        R1 K15 [table.sort]
       37 MOVE                             R2 R0
       38 DUPCLOSURE                       R3 K16 [PROTO_1]
       39 CALL                             R1 2 0
       40 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R0 R0 K2 ["SetFastFlagForTesting"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 SETTABLE                         R0 R1 R2
        3 GETIMPORT                        R1 K1 [pcall]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"key", "tag"}]
        5 GETTABLEKS                       R4 R0 K1 ["key"]
        7 SETTABLEKS                       R4 R3 K1 ["key"]
        9 LOADK                            R4 K4 ["col auto-xy"]
       10 SETTABLEKS                       R4 R3 K2 ["tag"]
       12 DUPTABLE                         R4 K6 [{"Checkbox"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K0 ["createElement"]
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K10 [{"isChecked", "onActivated", "label"}]
       18 GETTABLEKS                       R8 R0 K11 ["value"]
       20 SETTABLEKS                       R8 R7 K7 ["isChecked"]
       22 GETTABLEKS                       R9 R0 K1 ["key"]
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R9
       27 CAPTURE                          UPVAL U4
       28 SETTABLEKS                       R8 R7 K8 ["onActivated"]
       30 GETTABLEKS                       R8 R0 K1 ["key"]
       32 SETTABLEKS                       R8 R7 K9 ["label"]
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R4 K5 ["Checkbox"]
       37 CALL                             R1 3 -1
       38 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 DUPCLOSURE                       R3 K2 [PROTO_0]
        9 CAPTURE                          UPVAL U1
       10 CALL                             R2 1 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R6 0 2
       19 MOVE                             R7 R0
       20 MOVE                             R8 R2
       21 SETLIST                          R6 R7 2 [1]
       23 CALL                             R4 2 1
       24 NEWCLOSURE                       R5 P2
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R3
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K4 ["createElement"]
       30 GETUPVAL                         R7 2
       31 DUPTABLE                         R8 K6 [{"tag"}]
       32 LOADK                            R9 K7 ["col gap-medium auto-xy"]
       33 SETTABLEKS                       R9 R8 K5 ["tag"]
       35 DUPTABLE                         R9 K10 [{"Search", "List"}]
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R10 R11 K4 ["createElement"]
       39 GETUPVAL                         R11 3
       40 DUPTABLE                         R12 K15 [{"text", "onChanged", "label", "placeholder"}]
       41 SETTABLEKS                       R0 R12 K11 ["text"]
       43 SETTABLEKS                       R1 R12 K12 ["onChanged"]
       45 LOADK                            R13 K8 ["Search"]
       46 SETTABLEKS                       R13 R12 K13 ["label"]
       48 LOADK                            R13 K16 ["Search flags..."]
       49 SETTABLEKS                       R13 R12 K14 ["placeholder"]
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K8 ["Search"]
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R10 R11 K4 ["createElement"]
       57 GETUPVAL                         R11 2
       58 DUPTABLE                         R12 K6 [{"tag"}]
       59 LOADK                            R13 K17 ["col gap-small size-full"]
       60 SETTABLEKS                       R13 R12 K5 ["tag"]
       62 GETUPVAL                         R14 4
       63 GETTABLEKS                       R13 R14 K18 ["map"]
       65 MOVE                             R14 R4
       66 NEWCLOSURE                       R15 P3
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R3
       72 CALL                             R13 2 -1
       73 CALL                             R10 -1 1
       74 SETTABLEKS                       R10 R9 K9 ["List"]
       76 CALL                             R6 3 -1
       77 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Providers"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Components"]
       27 GETTABLEKS                       R4 R5 K10 ["View"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Components"]
       34 GETTABLEKS                       R5 R6 K11 ["TextInput"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K6 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Components"]
       41 GETTABLEKS                       R6 R7 K12 ["Checkbox"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K6 [require]
       46 GETTABLEKS                       R8 R0 K13 ["Utility"]
       48 GETTABLEKS                       R7 R8 K14 ["Flags"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K15 [PROTO_8]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 DUPTABLE                         R8 K17 [{"story"}]
       59 SETTABLEKS                       R7 R8 K16 ["story"]
       61 RETURN                           R8 1
