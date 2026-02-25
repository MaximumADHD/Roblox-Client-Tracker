PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+4]
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["JSONDecode"]
       11 CALL                             R1 2 1
       12 NEWTABLE                         R2 0 0
       14 GETIMPORT                        R3 K3 [pairs]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 3
       18 FORGPREP_NEXT                    R3
       19 NEWTABLE                         R8 8 0
       21 SETTABLEKS                       R6 R8 K4 ["assetId"]
       23 GETTABLEKS                       R9 R7 K5 ["Enabled"]
       25 SETTABLEKS                       R9 R8 K6 ["enabled"]
       27 GETTABLEKS                       R9 R7 K7 ["AssetVersion"]
       29 SETTABLEKS                       R9 R8 K8 ["installedVersion"]
       31 GETTABLEKS                       R9 R7 K9 ["Moderated"]
       33 SETTABLEKS                       R9 R8 K10 ["isModerated"]
       35 GETTABLEKS                       R9 R7 K11 ["AutoUpdate"]
       37 SETTABLEKS                       R9 R8 K12 ["autoUpdateEnabled"]
       39 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       41 MOVE                             R10 R2
       42 MOVE                             R11 R8
       43 GETIMPORT                        R9 K15 [table.insert]
       45 CALL                             R9 2 0
       46 FORGLOOP                         R3 2 ; [-28]
       48 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
