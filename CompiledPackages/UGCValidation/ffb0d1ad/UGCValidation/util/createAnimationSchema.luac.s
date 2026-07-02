PROTO_0:
        0 DUPTABLE                         R2 K2 [{[1] = "Animation"}]
        1 JUMPIFNOT                        R0 ; [+3]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K3 ["_optional"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 NEWTABLE                         R3 0 1
        8 DUPTABLE                         R4 K8 [{["Name"] = "Weight", [2] = "NumberValue", ["_optional"] = True}]
        9 SETLIST                          R3 R4 1 [1]
       11 SETTABLEKS                       R3 R2 K9 ["_children"]
       13 RETURN                           R2 1

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
       25 DUPTABLE                         R4 K7 [{["Name"], ["ClassName"] = "StringValue", ["_children"]}]
       26 SETTABLEKS                       R0 R4 K3 ["Name"]
       28 SETTABLEKS                       R3 R4 K6 ["_children"]
       30 RETURN                           R4 1

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
       33 JUMP                             ; [+28]
       34 GETTABLEKS                       R3 R1 K13 ["stringValueNames"]
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 FORGPREP                         R3
       39 NEWTABLE                         R11 0 0
       41 DUPTABLE                         R15 K16 [{["ClassName"] = "Animation"}]
       42 MOVE                             R14 R15
       43 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
       45 MOVE                             R13 R11
       46 GETIMPORT                        R12 K12 [table.insert]
       48 CALL                             R12 2 0
       49 DUPTABLE                         R10 K20 [{["Name"], ["ClassName"] = "StringValue", ["_children"]}]
       50 SETTABLEKS                       R7 R10 K17 ["Name"]
       52 SETTABLEKS                       R11 R10 K19 ["_children"]
       54 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       56 MOVE                             R9 R2
       57 GETIMPORT                        R8 K12 [table.insert]
       59 CALL                             R8 2 0
       60 FORGLOOP                         R3 2 ; [-22]
       62 DUPTABLE                         R3 K22 [{["ClassName"] = "Model", ["Name"], ["_children"]}]
       63 GETTABLEKS                       R4 R1 K23 ["modelName"]
       65 SETTABLEKS                       R4 R3 K17 ["Name"]
       67 NEWTABLE                         R4 0 1
       69 DUPTABLE                         R5 K26 [{["Name"] = "R15Anim", ["ClassName"] = "Folder", ["_children"]}]
       70 SETTABLEKS                       R2 R5 K19 ["_children"]
       72 SETLIST                          R4 R5 1 [1]
       74 SETTABLEKS                       R4 R3 K19 ["_children"]
       76 RETURN                           R3 1

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
