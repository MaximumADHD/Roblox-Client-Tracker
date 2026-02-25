PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETIMPORT                        R2 K1 [game]
        6 NAMECALL                         R2 R2 K2 ["GetDescendants"]
        8 CALL                             R2 1 1
        9 GETIMPORT                        R3 K4 [pairs]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 3
       13 FORGPREP_NEXT                    R3
       14 LOADK                            R10 K5 ["Model"]
       15 NAMECALL                         R8 R7 K6 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIFNOT                        R8 ; [+40]
       19 LOADK                            R10 K7 ["PackageLink"]
       20 NAMECALL                         R8 R7 K8 ["FindFirstChildWhichIsA"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+35]
       24 GETTABLEKS                       R10 R8 K9 ["PackageId"]
       26 FASTCALL2K                       STRING_SUB R10 K10 ; [+4]
       28 LOADK                            R11 K10 [14]
       29 GETIMPORT                        R9 K13 [string.sub]
       31 CALL                             R9 2 1
       32 GETTABLE                         R10 R1 R9
       33 JUMPIF                           R10 ; [+25]
       34 LOADB                            R10 1
       35 SETTABLE                         R10 R1 R9
       36 NEWTABLE                         R10 4 0
       38 SETTABLEKS                       R9 R10 K14 ["AssetId"]
       40 GETTABLEKS                       R11 R7 K15 ["Name"]
       42 SETTABLEKS                       R11 R10 K15 ["Name"]
       44 GETIMPORT                        R11 K17 [string.format]
       46 LOADK                            R12 K18 ["rbxthumb://type=Asset&w=150&h=150&id=%s"]
       47 GETTABLEKS                       R13 R10 K14 ["AssetId"]
       49 CALL                             R11 2 1
       50 SETTABLEKS                       R11 R10 K19 ["Image"]
       52 FASTCALL2                        TABLE_INSERT R0 R10 ; [+5]
       54 MOVE                             R12 R0
       55 MOVE                             R13 R10
       56 GETIMPORT                        R11 K22 [table.insert]
       58 CALL                             R11 2 0
       59 FORGLOOP                         R3 2 ; [-46]
       61 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
