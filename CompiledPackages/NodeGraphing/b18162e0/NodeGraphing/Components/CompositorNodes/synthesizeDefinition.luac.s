PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Inputs"]
        2 JUMPIF                           R2 ; [+3]
        3 NEWTABLE                         R2 0 0
        5 RETURN                           R2 1
        6 NEWTABLE                         R2 0 0
        8 LOADN                            R3 0
        9 GETTABLEKS                       R4 R0 K0 ["Inputs"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R9 R8 K1 ["InputFlags"]
       16 JUMPIFEQKN                       R9 K2 [1] ; [+10]
       18 ADDK                             R3 R3 K2 [1]
       19 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       21 MOVE                             R10 R2
       22 MOVE                             R11 R8
       23 GETIMPORT                        R9 K5 [table.insert]
       25 CALL                             R9 2 0
       26 JUMP                             ; [+54]
       27 LOADB                            R9 1
       28 GETTABLEKS                       R10 R1 K6 ["inputPinIds"]
       30 LOADNIL                          R11
       31 LOADNIL                          R12
       32 FORGPREP                         R10
       33 ADDK                             R3 R3 K2 [1]
       34 GETIMPORT                        R15 K8 [table.clone]
       36 MOVE                             R16 R8
       37 CALL                             R15 1 1
       38 SETTABLEKS                       R14 R15 K9 ["InputName"]
       40 SETTABLEKS                       R3 R15 K10 ["InputIndex"]
       42 FASTCALL2                        TABLE_INSERT R2 R15 ; [+5]
       44 MOVE                             R17 R2
       45 MOVE                             R18 R15
       46 GETIMPORT                        R16 K5 [table.insert]
       48 CALL                             R16 2 0
       49 GETTABLEKS                       R17 R1 K11 ["inputPinToConnectionMap"]
       51 GETTABLE                         R16 R17 R14
       52 JUMPIF                           R16 ; [+1]
       53 LOADB                            R9 0
       54 FORGLOOP                         R10 2 ; [-22]
       56 JUMPIFNOT                        R9 ; [+24]
       57 ADDK                             R3 R3 K2 [1]
       58 DUPTABLE                         R12 K12 [{"InputIndex", "InputName", "InputFlags"}]
       59 GETTABLEKS                       R13 R8 K10 ["InputIndex"]
       61 SETTABLEKS                       R13 R12 K10 ["InputIndex"]
       63 LOADK                            R14 K13 ["Input%*"]
       64 MOVE                             R16 R3
       65 NAMECALL                         R14 R14 K14 ["format"]
       67 CALL                             R14 2 1
       68 MOVE                             R13 R14
       69 SETTABLEKS                       R13 R12 K9 ["InputName"]
       71 GETTABLEKS                       R13 R8 K1 ["InputFlags"]
       73 SETTABLEKS                       R13 R12 K1 ["InputFlags"]
       75 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       77 MOVE                             R11 R2
       78 GETIMPORT                        R10 K5 [table.insert]
       80 CALL                             R10 2 0
       81 FORGLOOP                         R4 2 ; [-68]
       83 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R3 K1 [{"Inputs"}]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 CALL                             R4 2 1
        5 SETTABLEKS                       R4 R3 K0 ["Inputs"]
        7 DUPTABLE                         R4 K3 [{"__index"}]
        8 SETTABLEKS                       R0 R4 K2 ["__index"]
       10 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       12 GETIMPORT                        R2 K5 [setmetatable]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeLibraryContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["NodeViewTypes"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 DUPCLOSURE                       R4 K10 [PROTO_1]
       21 CAPTURE                          VAL R3
       22 RETURN                           R4 1
