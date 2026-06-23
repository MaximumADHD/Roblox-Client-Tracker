PROTO_0:
        0 DUPTABLE                         R2 K1 [{"ClassName"}]
        1 LOADK                            R3 K2 ["Animation"]
        2 SETTABLEKS                       R3 R2 K0 ["ClassName"]
        4 JUMPIFNOT                        R0 ; [+3]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K3 ["_optional"]
        8 JUMPIFNOT                        R1 ; [+16]
        9 NEWTABLE                         R3 0 1
       11 DUPTABLE                         R4 K5 [{"Name", "ClassName", "_optional"}]
       12 LOADK                            R5 K6 ["Weight"]
       13 SETTABLEKS                       R5 R4 K4 ["Name"]
       15 LOADK                            R5 K7 ["NumberValue"]
       16 SETTABLEKS                       R5 R4 K0 ["ClassName"]
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K3 ["_optional"]
       21 SETLIST                          R3 R4 1 [1]
       23 SETTABLEKS                       R3 R2 K8 ["_children"]
       25 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R6 0
        3 LOADB                            R7 0
        4 MOVE                             R8 R2
        5 CALL                             R6 2 1
        6 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K2 [table.insert]
       11 CALL                             R4 2 0
       12 LOADN                            R4 1
       13 JUMPIFNOTLT                      R4 R1 ; [+11]
       15 GETUPVAL                         R6 0
       16 LOADB                            R7 1
       17 MOVE                             R8 R2
       18 CALL                             R6 2 1
       19 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K2 [table.insert]
       24 CALL                             R4 2 0
       25 DUPTABLE                         R4 K6 [{"Name", "ClassName", "_children"}]
       26 SETTABLEKS                       R0 R4 K3 ["Name"]
       28 LOADK                            R5 K7 ["StringValue"]
       29 SETTABLEKS                       R5 R4 K4 ["ClassName"]
       31 SETTABLEKS                       R3 R4 K5 ["_children"]
       33 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ANIMATION_ASSET_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 LOADK                            R5 K1 ["No ANIMATION_ASSET_INFO for %*"]
        5 MOVE                             R7 R0
        6 NAMECALL                         R5 R5 K2 ["format"]
        8 CALL                             R5 2 1
        9 MOVE                             R4 R5
       10 FASTCALL2                        ASSERT R1 R4 ; [+4]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K4 [assert]
       15 CALL                             R2 2 0
       16 NEWTABLE                         R2 0 0
       18 GETIMPORT                        R3 K8 [Enum.AssetType.IdleAnimation]
       20 JUMPIFNOTEQ                      R0 R3 ; [+13]
       22 GETUPVAL                         R5 1
       23 LOADK                            R6 K9 ["idle"]
       24 LOADN                            R7 2
       25 LOADB                            R8 1
       26 CALL                             R5 3 1
       27 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       29 MOVE                             R4 R2
       30 GETIMPORT                        R3 K12 [table.insert]
       32 CALL                             R3 2 0
       33 JUMP                             ; [+34]
       34 GETTABLEKS                       R3 R1 K13 ["stringValueNames"]
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 FORGPREP                         R3
       39 NEWTABLE                         R11 0 0
       41 DUPTABLE                         R15 K15 [{"ClassName"}]
       42 LOADK                            R16 K16 ["Animation"]
       43 SETTABLEKS                       R16 R15 K14 ["ClassName"]
       45 MOVE                             R14 R15
       46 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
       48 MOVE                             R13 R11
       49 GETIMPORT                        R12 K12 [table.insert]
       51 CALL                             R12 2 0
       52 DUPTABLE                         R10 K19 [{"Name", "ClassName", "_children"}]
       53 SETTABLEKS                       R7 R10 K17 ["Name"]
       55 LOADK                            R12 K20 ["StringValue"]
       56 SETTABLEKS                       R12 R10 K14 ["ClassName"]
       58 SETTABLEKS                       R11 R10 K18 ["_children"]
       60 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       62 MOVE                             R9 R2
       63 GETIMPORT                        R8 K12 [table.insert]
       65 CALL                             R8 2 0
       66 FORGLOOP                         R3 2 ; [-28]
       68 DUPTABLE                         R3 K21 [{"ClassName", "Name", "_children"}]
       69 LOADK                            R4 K22 ["Model"]
       70 SETTABLEKS                       R4 R3 K14 ["ClassName"]
       72 GETTABLEKS                       R4 R1 K23 ["modelName"]
       74 SETTABLEKS                       R4 R3 K17 ["Name"]
       76 NEWTABLE                         R4 0 1
       78 DUPTABLE                         R5 K19 [{"Name", "ClassName", "_children"}]
       79 LOADK                            R6 K24 ["R15Anim"]
       80 SETTABLEKS                       R6 R5 K17 ["Name"]
       82 LOADK                            R6 K25 ["Folder"]
       83 SETTABLEKS                       R6 R5 K14 ["ClassName"]
       85 SETTABLEKS                       R2 R5 K18 ["_children"]
       87 SETLIST                          R4 R5 1 [1]
       89 SETTABLEKS                       R4 R3 K18 ["_children"]
       91 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 DUPCLOSURE                       R3 K7 [PROTO_1]
       14 CAPTURE                          VAL R2
       15 DUPCLOSURE                       R4 K8 [PROTO_2]
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 RETURN                           R4 1
