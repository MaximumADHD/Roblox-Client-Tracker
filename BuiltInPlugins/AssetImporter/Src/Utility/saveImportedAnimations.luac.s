PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetKeyframeSequences"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 GETIMPORT                        R2 K1 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R2 ; [+4]
       10 JUMPIFNOT                        R3 ; [+3]
       11 LENGTH                           R4 R3
       12 JUMPIFNOTEQKN                    R4 K2 [0] ; [+4]
       14 NEWTABLE                         R4 0 0
       16 RETURN                           R4 1
       17 JUMPIFNOT                        R1 ; [+6]
       18 JUMPIFEQKS                       R1 K3 [""] ; [+5]
       20 MOVE                             R5 R1
       21 LOADK                            R6 K4 ["_"]
       22 CONCAT                           R4 R5 R6
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 NEWTABLE                         R5 0 0
       27 MOVE                             R6 R3
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 NAMECALL                         R11 R10 K5 ["Clone"]
       33 CALL                             R11 1 1
       34 JUMPIFNOT                        R4 ; [+21]
       35 GETTABLEKS                       R13 R11 K6 ["Name"]
       37 LOADN                            R14 1
       38 LENGTH                           R15 R4
       39 FASTCALL                         STRING_SUB ; [+2]
       40 GETIMPORT                        R12 K9 [string.sub]
       42 CALL                             R12 3 1
       43 JUMPIFNOTEQ                      R12 R4 ; [+12]
       45 GETTABLEKS                       R13 R11 K6 ["Name"]
       47 LENGTH                           R15 R4
       48 ADDK                             R14 R15 K10 [1]
       49 FASTCALL2                        STRING_SUB R13 R14 ; [+3]
       51 GETIMPORT                        R12 K9 [string.sub]
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K6 ["Name"]
       56 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       58 MOVE                             R13 R5
       59 MOVE                             R14 R11
       60 GETIMPORT                        R12 K13 [table.insert]
       62 CALL                             R12 2 0
       63 FORGLOOP                         R6 2 ; [-33]
       65 RETURN                           R5 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+5]
        1 LOADK                            R4 K0 ["Model"]
        2 NAMECALL                         R2 R0 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 LENGTH                           R2 R1
        8 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       10 RETURN                           R0 0
       11 LOADK                            R4 K3 ["AnimSaves"]
       12 NAMECALL                         R2 R0 K4 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 LOADNIL                          R3
       16 JUMPIFNOT                        R2 ; [+7]
       17 LOADK                            R6 K5 ["ObjectValue"]
       18 NAMECALL                         R4 R2 K1 ["IsA"]
       20 CALL                             R4 2 1
       21 JUMPIFNOT                        R4 ; [+2]
       22 MOVE                             R3 R2
       23 JUMP                             ; [+10]
       24 GETIMPORT                        R4 K8 [Instance.new]
       26 LOADK                            R5 K5 ["ObjectValue"]
       27 CALL                             R4 1 1
       28 MOVE                             R3 R4
       29 LOADK                            R4 K3 ["AnimSaves"]
       30 SETTABLEKS                       R4 R3 K9 ["Name"]
       32 SETTABLEKS                       R0 R3 K10 ["Parent"]
       34 GETTABLEKS                       R4 R3 K11 ["Value"]
       36 LOADNIL                          R5
       37 JUMPIFNOT                        R4 ; [+11]
       38 LOADK                            R8 K5 ["ObjectValue"]
       39 NAMECALL                         R6 R4 K1 ["IsA"]
       41 CALL                             R6 2 1
       42 JUMPIFNOT                        R6 ; [+6]
       43 GETTABLEKS                       R6 R4 K11 ["Value"]
       45 JUMPIFNOTEQ                      R6 R0 ; [+3]
       47 MOVE                             R5 R4
       48 JUMP                             ; [+38]
       49 GETUPVAL                         R6 0
       50 LOADK                            R8 K12 ["RBX_ANIMSAVES"]
       51 NAMECALL                         R6 R6 K4 ["FindFirstChild"]
       53 CALL                             R6 2 1
       54 JUMPIF                           R6 ; [+11]
       55 GETIMPORT                        R7 K8 [Instance.new]
       57 LOADK                            R8 K0 ["Model"]
       58 CALL                             R7 1 1
       59 MOVE                             R6 R7
       60 LOADK                            R7 K12 ["RBX_ANIMSAVES"]
       61 SETTABLEKS                       R7 R6 K9 ["Name"]
       63 GETUPVAL                         R7 0
       64 SETTABLEKS                       R7 R6 K10 ["Parent"]
       66 GETTABLEKS                       R8 R0 K9 ["Name"]
       68 JUMPIFEQKS                       R8 K13 [""] ; [+4]
       70 GETTABLEKS                       R7 R0 K9 ["Name"]
       72 JUMP                             ; [+1]
       73 LOADK                            R7 K14 ["ImportedModel"]
       74 GETIMPORT                        R8 K8 [Instance.new]
       76 LOADK                            R9 K5 ["ObjectValue"]
       77 CALL                             R8 1 1
       78 MOVE                             R5 R8
       79 SETTABLEKS                       R7 R5 K9 ["Name"]
       81 SETTABLEKS                       R0 R5 K11 ["Value"]
       83 SETTABLEKS                       R6 R5 K10 ["Parent"]
       85 SETTABLEKS                       R5 R3 K11 ["Value"]
       87 MOVE                             R6 R1
       88 LOADNIL                          R7
       89 LOADNIL                          R8
       90 FORGPREP                         R6
       91 SETTABLEKS                       R5 R10 K10 ["Parent"]
       93 FORGLOOP                         R6 2 ; [-3]
       95 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["ServerStorage"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 2 0
       22 DUPCLOSURE                       R4 K11 [PROTO_1]
       23 SETTABLEKS                       R4 R3 K12 ["extractFromSession"]
       25 DUPCLOSURE                       R4 K13 [PROTO_2]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R3 K14 ["saveToAnimSaves"]
       29 RETURN                           R3 1
