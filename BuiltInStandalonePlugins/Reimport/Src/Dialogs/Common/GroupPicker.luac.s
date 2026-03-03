PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 0
        3 SETLIST                          R1 R2 1 [1]
        5 LOADB                            R2 0
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 DUPTABLE                         R10 K2 [{"id", "text"}]
       11 GETTABLEKS                       R11 R7 K0 ["id"]
       13 SETTABLEKS                       R11 R10 K0 ["id"]
       15 GETTABLEKS                       R11 R7 K3 ["name"]
       17 SETTABLEKS                       R11 R10 K1 ["text"]
       19 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       21 MOVE                             R9 R1
       22 GETIMPORT                        R8 K6 [table.insert]
       24 CALL                             R8 2 0
       25 GETUPVAL                         R8 1
       26 JUMPIFNOT                        R8 ; [+8]
       27 GETTABLEKS                       R8 R7 K0 ["id"]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R9 R10 K0 ["id"]
       32 JUMPIFNOTEQ                      R8 R9 ; [+2]
       34 LOADB                            R2 1
       35 FORGLOOP                         R3 2 ; [-26]
       37 JUMPIF                           R2 ; [+9]
       38 GETUPVAL                         R3 1
       39 JUMPIFNOT                        R3 ; [+7]
       40 GETUPVAL                         R5 1
       41 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       43 MOVE                             R4 R1
       44 GETIMPORT                        R3 K6 [table.insert]
       46 CALL                             R3 2 0
       47 GETUPVAL                         R3 2
       48 JUMPIF                           R3 ; [+3]
       49 GETUPVAL                         R3 3
       50 MOVE                             R4 R1
       51 CALL                             R3 1 0
       52 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["getGroupsAsync"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          REF R0
        8 CAPTURE                          UPVAL U3
        9 CALL                             R1 1 0
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          REF R0
       12 CLOSEUPVALS                      R0
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOTEQKS                    R0 K0 ["Me"] ; [+5]
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 FASTCALL1                        TONUMBER R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K2 [tonumber]
       14 CALL                             R2 1 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["onItemChanged"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["onItemChanged"]
        5 JUMP                             ; [+1]
        6 DUPCLOSURE                       R1 K1 [PROTO_0]
        7 DUPTABLE                         R2 K4 [{"id", "text"}]
        8 LOADK                            R3 K5 ["Me"]
        9 SETTABLEKS                       R3 R2 K2 ["id"]
       11 LOADK                            R3 K5 ["Me"]
       12 SETTABLEKS                       R3 R2 K3 ["text"]
       14 GETTABLEKS                       R4 R0 K6 ["value"]
       16 JUMPIFNOT                        R4 ; [+14]
       17 DUPTABLE                         R3 K4 [{"id", "text"}]
       18 GETTABLEKS                       R4 R0 K6 ["value"]
       20 SETTABLEKS                       R4 R3 K2 ["id"]
       22 GETTABLEKS                       R5 R0 K6 ["value"]
       24 FASTCALL1                        TOSTRING R5 ; [+2]
       25 GETIMPORT                        R4 K8 [tostring]
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K3 ["text"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R3
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K9 ["useState"]
       35 GETTABLEKS                       R6 R0 K6 ["value"]
       37 JUMPIFNOT                        R6 ; [+3]
       38 GETTABLEKS                       R5 R0 K6 ["value"]
       40 JUMP                             ; [+1]
       41 LOADK                            R5 K5 ["Me"]
       42 CALL                             R4 1 2
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R6 R7 K9 ["useState"]
       46 NEWTABLE                         R7 0 2
       48 MOVE                             R8 R2
       49 MOVE                             R9 R3
       50 SETLIST                          R7 R8 2 [1]
       52 CALL                             R6 1 2
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R8 R9 K10 ["useEffect"]
       56 NEWCLOSURE                       R9 P1
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R7
       61 NEWTABLE                         R10 0 0
       63 CALL                             R8 2 0
       64 GETUPVAL                         R8 2
       65 GETUPVAL                         R9 3
       66 DUPTABLE                         R10 K16 [{"label", "size", "value", "onItemChanged", "maxHeight", "items", "testId"}]
       67 LOADK                            R11 K17 [""]
       68 SETTABLEKS                       R11 R10 K11 ["label"]
       70 GETUPVAL                         R14 4
       71 GETTABLEKS                       R13 R14 K18 ["Enums"]
       73 GETTABLEKS                       R12 R13 K19 ["InputSize"]
       75 GETTABLEKS                       R11 R12 K20 ["Small"]
       77 SETTABLEKS                       R11 R10 K12 ["size"]
       79 SETTABLEKS                       R4 R10 K6 ["value"]
       81 NEWCLOSURE                       R11 P2
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R11 R10 K0 ["onItemChanged"]
       86 LOADN                            R11 150
       87 SETTABLEKS                       R11 R10 K13 ["maxHeight"]
       89 SETTABLEKS                       R6 R10 K14 ["items"]
       91 LOADK                            R11 K21 ["group-picker-dropdown"]
       92 SETTABLEKS                       R11 R10 K15 ["testId"]
       94 CALL                             R8 2 -1
       95 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Lib"]
       25 GETTABLEKS                       R4 R5 K10 ["Networking"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Src"]
       32 GETTABLEKS                       R6 R7 K12 ["Components"]
       34 GETTABLEKS                       R5 R6 K13 ["FillDropdown"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K14 ["createElement"]
       39 DUPCLOSURE                       R6 K15 [PROTO_5]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 RETURN                           R6 1
