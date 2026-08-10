PROTO_0:
        0 LOADN                            R3 1
        1 LENGTH                           R1 R0
        2 LOADN                            R2 1
        3 FORNPREP                         R1
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R3
        6 GETTABLE                         R5 R0 R3
        7 GETTABLEKS                       R6 R4 K0 ["name"]
        9 GETTABLEKS                       R7 R5 K0 ["name"]
       11 JUMPIFEQ                         R6 R7 ; [+3]
       13 LOADB                            R6 1
       14 RETURN                           R6 1
       15 FORNLOOP                         R1
       16 LOADB                            R1 0
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K0 ["GetRegisteredCollisionGroups"]
        8 CALL                             R0 1 1
        9 SETUPVAL                         R0 0
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R0 3
       12 NAMECALL                         R0 R0 K0 ["GetRegisteredCollisionGroups"]
       14 CALL                             R0 1 1
       15 SETUPVAL                         R0 0
       16 LOADB                            R0 0
       17 RETURN                           R0 1
       18 NEWTABLE                         R0 0 0
       20 GETUPVAL                         R1 1
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+6]
       23 GETUPVAL                         R1 2
       24 NAMECALL                         R1 R1 K0 ["GetRegisteredCollisionGroups"]
       26 CALL                             R1 1 1
       27 MOVE                             R0 R1
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R1 3
       30 NAMECALL                         R1 R1 K0 ["GetRegisteredCollisionGroups"]
       32 CALL                             R1 1 1
       33 MOVE                             R0 R1
       34 LOADB                            R1 0
       35 LENGTH                           R2 R0
       36 GETUPVAL                         R4 0
       37 LENGTH                           R3 R4
       38 JUMPIFEQ                         R2 R3 ; [+2]
       40 LOADB                            R1 1
       41 JUMPIF                           R1 ; [+20]
       42 MOVE                             R3 R0
       43 LOADN                            R6 1
       44 LENGTH                           R4 R3
       45 LOADN                            R5 1
       46 FORNPREP                         R4
       47 GETUPVAL                         R8 0
       48 GETTABLE                         R7 R8 R6
       49 GETTABLE                         R8 R3 R6
       50 GETTABLEKS                       R9 R7 K1 ["name"]
       52 GETTABLEKS                       R10 R8 K1 ["name"]
       54 JUMPIFEQ                         R9 R10 ; [+3]
       56 LOADB                            R2 1
       57 JUMP                             ; [+2]
       58 FORNLOOP                         R4
       59 LOADB                            R2 0
       60 JUMPIFNOT                        R2 ; [+1]
       61 LOADB                            R1 1
       62 SETUPVAL                         R0 0
       63 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETIMPORT                        R2 K1 [workspace]
        5 JUMPIFEQ                         R1 R2 ; [+17]
        7 LOADB                            R1 0
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R7 1
       13 JUMPIFNOTEQ                      R6 R7 ; [+3]
       15 LOADB                            R1 1
       16 JUMP                             ; [+2]
       17 FORGLOOP                         R2 2 ; [-6]
       19 JUMPIF                           R1 ; [+3]
       20 GETIMPORT                        R2 K1 [workspace]
       22 SETUPVAL                         R2 1
       23 NEWTABLE                         R1 0 0
       25 MOVE                             R2 R0
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 LOADB                            R7 0
       30 GETIMPORT                        R8 K1 [workspace]
       32 JUMPIFEQ                         R6 R8 ; [+3]
       34 GETTABLEKS                       R7 R6 K2 ["UseWorkspaceCollisionGroups"]
       36 NAMECALL                         R14 R6 K3 ["GetFullName"]
       38 CALL                             R14 1 1
       39 MOVE                             R11 R14
       40 LOADK                            R12 K4 ["|"]
       41 FASTCALL1                        TOSTRING R7 ; [+3]
       42 MOVE                             R14 R7
       43 GETIMPORT                        R13 K6 [tostring]
       45 CALL                             R13 1 1
       46 CONCAT                           R10 R11 R13
       47 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       49 MOVE                             R9 R1
       50 GETIMPORT                        R8 K9 [table.insert]
       52 CALL                             R8 2 0
       53 FORGLOOP                         R2 2 ; [-25]
       55 GETIMPORT                        R2 K11 [table.concat]
       57 MOVE                             R3 R1
       58 LOADK                            R4 K12 [";"]
       59 CALL                             R2 2 1
       60 GETUPVAL                         R3 2
       61 JUMPIFNOTEQKNIL                  R3 ; [+4]
       63 SETUPVAL                         R2 2
       64 LOADB                            R3 0
       65 RETURN                           R3 1
       66 GETUPVAL                         R3 2
       67 JUMPIFEQ                         R2 R3 ; [+4]
       69 SETUPVAL                         R2 2
       70 LOADB                            R3 1
       71 RETURN                           R3 1
       72 LOADB                            R3 0
       73 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 MOVE                             R0 R1
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 1
       12 MOVE                             R0 R1
       13 GETUPVAL                         R1 3
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K1 [plugin]
       18 LOADK                            R4 K2 ["Groups"]
       19 MOVE                             R5 R0
       20 NAMECALL                         R2 R2 K3 ["SetItem"]
       22 CALL                             R2 3 0
       23 GETIMPORT                        R2 K1 [plugin]
       25 LOADK                            R4 K4 ["SelectedGroupIds"]
       26 MOVE                             R5 R1
       27 NAMECALL                         R2 R2 K3 ["SetItem"]
       29 CALL                             R2 3 0
       30 GETUPVAL                         R2 0
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+61]
       33 GETUPVAL                         R2 4
       34 CALL                             R2 0 1
       35 NEWTABLE                         R3 0 0
       37 LOADN                            R4 1
       38 MOVE                             R5 R2
       39 LOADNIL                          R6
       40 LOADNIL                          R7
       41 FORGPREP                         R5
       42 GETUPVAL                         R10 2
       43 JUMPIFNOTEQ                      R9 R10 ; [+2]
       45 MOVE                             R4 R8
       46 GETIMPORT                        R10 K6 [workspace]
       48 JUMPIFNOTEQ                      R9 R10 ; [+9]
       50 DUPTABLE                         R12 K12 [{["Name"] = "Workspace", ["Path"] = "Workspace", ["IsWorldModel"] = False}]
       51 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       53 MOVE                             R11 R3
       54 GETIMPORT                        R10 K15 [table.insert]
       56 CALL                             R10 2 0
       57 JUMP                             ; [+20]
       58 GETTABLEKS                       R10 R9 K16 ["UseWorkspaceCollisionGroups"]
       60 DUPTABLE                         R13 K18 [{["Name"], ["Path"], ["IsWorldModel"] = True, ["UseWorkspaceCollisionGroups"]}]
       61 GETTABLEKS                       R14 R9 K7 ["Name"]
       63 SETTABLEKS                       R14 R13 K7 ["Name"]
       65 NAMECALL                         R14 R9 K19 ["GetFullName"]
       67 CALL                             R14 1 1
       68 SETTABLEKS                       R14 R13 K9 ["Path"]
       70 SETTABLEKS                       R10 R13 K16 ["UseWorkspaceCollisionGroups"]
       72 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       74 MOVE                             R12 R3
       75 GETIMPORT                        R11 K15 [table.insert]
       77 CALL                             R11 2 0
       78 FORGLOOP                         R5 2 ; [-37]
       80 GETIMPORT                        R5 K1 [plugin]
       82 LOADK                            R7 K20 ["Worlds"]
       83 MOVE                             R8 R3
       84 NAMECALL                         R5 R5 K3 ["SetItem"]
       86 CALL                             R5 3 0
       87 GETIMPORT                        R5 K1 [plugin]
       89 LOADK                            R7 K21 ["ActiveWorldIndex"]
       90 MOVE                             R8 R4
       91 NAMECALL                         R5 R5 K3 ["SetItem"]
       93 CALL                             R5 3 0
       94 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETIMPORT                        R1 K1 [plugin]
        4 LOADK                            R3 K2 ["SetStateAndRefresh"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R1 R1 K3 ["Invoke"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+35]
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["Get"]
        6 CALL                             R0 1 1
        7 LENGTH                           R1 R0
        8 JUMPIFNOTEQKN                    R1 K1 [1] ; [+29]
       10 GETTABLEN                        R1 R0 1
       11 LOADNIL                          R2
       12 LOADK                            R5 K2 ["WorldModel"]
       13 NAMECALL                         R3 R1 K3 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+2]
       17 MOVE                             R2 R1
       18 JUMP                             ; [+15]
       19 LOADK                            R5 K2 ["WorldModel"]
       20 NAMECALL                         R3 R1 K4 ["FindFirstAncestorWhichIsA"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+2]
       24 MOVE                             R2 R3
       25 JUMP                             ; [+8]
       26 GETIMPORT                        R6 K6 [workspace]
       28 NAMECALL                         R4 R1 K7 ["IsDescendantOf"]
       30 CALL                             R4 2 1
       31 JUMPIFNOT                        R4 ; [+2]
       32 GETIMPORT                        R2 K6 [workspace]
       34 MOVE                             R3 R2
       35 JUMPIF                           R3 ; [+1]
       36 GETUPVAL                         R3 2
       37 SETUPVAL                         R3 2
       38 NEWTABLE                         R0 0 0
       40 GETUPVAL                         R1 3
       41 CALL                             R1 0 0
       42 GETIMPORT                        R1 K9 [plugin]
       44 LOADK                            R3 K10 ["SetStateAndRefresh"]
       45 MOVE                             R4 R0
       46 NAMECALL                         R1 R1 K11 ["Invoke"]
       48 CALL                             R1 3 0
       49 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 GETIMPORT                        R1 K1 [plugin]
        6 LOADK                            R3 K2 ["SetStateAndRefresh"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R1 R1 K3 ["Invoke"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 GETIMPORT                        R1 K1 [plugin]
        6 LOADK                            R3 K2 ["SetStateAndRefresh"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R1 R1 K3 ["Invoke"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SelectionChanged"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R2 R2 K1 ["Connect"]
       11 CALL                             R2 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R0 K4 [table.insert]
       15 CALL                             R0 -1 0
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R2 5
       18 GETTABLEKS                       R2 R2 K5 ["OnUndo"]
       20 DUPCLOSURE                       R4 K6 [PROTO_6]
       21 CAPTURE                          UPVAL U4
       22 NAMECALL                         R2 R2 K1 ["Connect"]
       24 CALL                             R2 2 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R0 K4 [table.insert]
       28 CALL                             R0 -1 0
       29 GETUPVAL                         R1 0
       30 GETUPVAL                         R2 5
       31 GETTABLEKS                       R2 R2 K7 ["OnRedo"]
       33 DUPCLOSURE                       R4 K8 [PROTO_7]
       34 CAPTURE                          UPVAL U4
       35 NAMECALL                         R2 R2 K1 ["Connect"]
       37 CALL                             R2 2 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R0 K4 [table.insert]
       41 CALL                             R0 -1 0
       42 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 GETIMPORT                        R0 K5 [table.clear]
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["IsCollisionGroupRegistered"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+2]
        9 LOADB                            R1 1
       10 RETURN                           R1 1
       11 GETIMPORT                        R1 K2 [pcall]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["RegisterCollisionGroup"]
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R0
       18 CALL                             R1 3 2
       19 RETURN                           R1 1
       20 GETUPVAL                         R1 2
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K0 ["IsCollisionGroupRegistered"]
       24 CALL                             R1 2 1
       25 JUMPIFNOT                        R1 ; [+2]
       26 LOADB                            R1 1
       27 RETURN                           R1 1
       28 GETIMPORT                        R1 K2 [pcall]
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K3 ["RegisterCollisionGroup"]
       33 GETUPVAL                         R3 2
       34 MOVE                             R4 R0
       35 CALL                             R1 3 2
       36 RETURN                           R1 1

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+14]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 0
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 0
        7 GETIMPORT                        R2 K1 [plugin]
        9 LOADK                            R4 K2 ["SetStateAndRefresh"]
       10 MOVE                             R5 R1
       11 NAMECALL                         R2 R2 K3 ["Invoke"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R1 K5 [ipairs]
       17 GETUPVAL                         R2 2
       18 CALL                             R1 1 3
       19 FORGPREP_INEXT                   R1
       20 NAMECALL                         R6 R5 K6 ["Disconnect"]
       22 CALL                             R6 1 0
       23 FORGLOOP                         R1 2 [inext] ; [-4]
       25 GETIMPORT                        R1 K9 [table.clear]
       27 GETUPVAL                         R2 2
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+35]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 GETTABLE                         R2 R1 R0
        6 JUMPIF                           R2 ; [+2]
        7 GETIMPORT                        R2 K1 [workspace]
        9 SETUPVAL                         R2 2
       10 GETUPVAL                         R3 3
       11 NAMECALL                         R3 R3 K2 ["Get"]
       13 CALL                             R3 1 1
       14 LENGTH                           R2 R3
       15 JUMPIFNOTEQKN                    R2 K3 [0] ; [+11]
       17 GETUPVAL                         R2 3
       18 NEWTABLE                         R4 0 1
       20 GETUPVAL                         R5 2
       21 SETLIST                          R4 R5 1 [1]
       23 NAMECALL                         R2 R2 K4 ["Set"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0
       27 NEWTABLE                         R2 0 0
       29 GETUPVAL                         R3 4
       30 CALL                             R3 0 0
       31 GETIMPORT                        R3 K6 [plugin]
       33 LOADK                            R5 K7 ["SetStateAndRefresh"]
       34 MOVE                             R6 R2
       35 NAMECALL                         R3 R3 K8 ["Invoke"]
       37 CALL                             R3 3 0
       38 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+29]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K1 [workspace]
        6 JUMPIFEQ                         R1 R2 ; [+25]
        8 GETUPVAL                         R1 2
        9 LOADK                            R3 K2 ["Changing world collision group source"]
       10 NAMECALL                         R1 R1 K3 ["SetWaypoint"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 SETTABLEKS                       R0 R1 K4 ["UseWorkspaceCollisionGroups"]
       16 GETUPVAL                         R2 2
       17 LOADK                            R4 K5 ["Changed world collision group source"]
       18 NAMECALL                         R2 R2 K3 ["SetWaypoint"]
       20 CALL                             R2 2 0
       21 NEWTABLE                         R2 0 0
       23 GETUPVAL                         R3 3
       24 CALL                             R3 0 0
       25 GETIMPORT                        R3 K7 [plugin]
       27 LOADK                            R5 K8 ["SetStateAndRefresh"]
       28 MOVE                             R6 R2
       29 NAMECALL                         R3 R3 K9 ["Invoke"]
       31 CALL                             R3 3 0
       32 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Deleting collision group"]
        2 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 2
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K2 ["UnregisterCollisionGroup"]
       12 CALL                             R1 2 0
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R1 3
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K2 ["UnregisterCollisionGroup"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 0
       20 LOADK                            R3 K3 ["Deleted collision group"]
       21 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
       23 CALL                             R1 2 0
       24 NEWTABLE                         R1 0 0
       26 GETUPVAL                         R2 4
       27 CALL                             R2 0 0
       28 GETIMPORT                        R2 K5 [plugin]
       30 LOADK                            R4 K6 ["SetStateAndRefresh"]
       31 MOVE                             R5 R1
       32 NAMECALL                         R2 R2 K7 ["Invoke"]
       34 CALL                             R2 3 0
       35 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Renaming collision group"]
        2 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R3 R0 K2 ["oldName"]
       11 GETTABLEKS                       R4 R0 K3 ["newName"]
       13 NAMECALL                         R1 R1 K4 ["RenameCollisionGroup"]
       15 CALL                             R1 3 0
       16 JUMP                             ; [+8]
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R3 R0 K2 ["oldName"]
       20 GETTABLEKS                       R4 R0 K3 ["newName"]
       22 NAMECALL                         R1 R1 K4 ["RenameCollisionGroup"]
       24 CALL                             R1 3 0
       25 GETIMPORT                        R1 K6 [pairs]
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R3 R0 K2 ["oldName"]
       30 GETUPVAL                         R4 2
       31 CALL                             R2 2 -1
       32 CALL                             R1 -1 3
       33 FORGPREP_NEXT                    R1
       34 GETTABLEKS                       R6 R5 K7 ["CollisionGroup"]
       36 GETTABLEKS                       R7 R0 K2 ["oldName"]
       38 JUMPIFNOTEQ                      R6 R7 ; [+5]
       40 GETTABLEKS                       R6 R0 K3 ["newName"]
       42 SETTABLEKS                       R6 R5 K7 ["CollisionGroup"]
       44 FORGLOOP                         R1 2 ; [-11]
       46 GETUPVAL                         R1 0
       47 LOADK                            R3 K8 ["Renamed collision group"]
       48 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
       50 CALL                             R1 2 0
       51 DUPTABLE                         R1 K11 [{["GroupRenaming"] = ""}]
       52 GETUPVAL                         R2 5
       53 CALL                             R2 0 0
       54 GETIMPORT                        R2 K13 [plugin]
       56 LOADK                            R4 K14 ["SetStateAndRefresh"]
       57 MOVE                             R5 R1
       58 NAMECALL                         R2 R2 K15 ["Invoke"]
       60 CALL                             R2 3 0
       61 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Setting part membership to collision group"]
        2 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
        4 CALL                             R1 2 0
        5 GETIMPORT                        R1 K3 [pairs]
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 -1
        9 CALL                             R1 -1 3
       10 FORGPREP_NEXT                    R1
       11 SETTABLEKS                       R0 R5 K4 ["CollisionGroup"]
       13 FORGLOOP                         R1 2 ; [-3]
       15 GETUPVAL                         R1 0
       16 LOADK                            R3 K5 ["Set part membership to collision group"]
       17 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
       19 CALL                             R1 2 0
       20 NEWTABLE                         R1 0 0
       22 GETUPVAL                         R2 2
       23 CALL                             R2 0 0
       24 GETIMPORT                        R2 K7 [plugin]
       26 LOADK                            R4 K8 ["SetStateAndRefresh"]
       27 MOVE                             R5 R1
       28 NAMECALL                         R2 R2 K9 ["Invoke"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["groupName"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K1 ["otherGroupName"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+13]
       10 GETIMPORT                        R2 K3 [warn]
       12 LOADK                            R4 K4 ["Could not toggle collision between \"%*\" and \"%*\""]
       13 GETTABLEKS                       R6 R0 K0 ["groupName"]
       15 GETTABLEKS                       R7 R0 K1 ["otherGroupName"]
       17 NAMECALL                         R4 R4 K5 ["format"]
       19 CALL                             R4 3 1
       20 MOVE                             R3 R4
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 LOADB                            R2 0
       24 GETUPVAL                         R3 1
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+10]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R5 R0 K0 ["groupName"]
       30 GETTABLEKS                       R6 R0 K1 ["otherGroupName"]
       32 NAMECALL                         R3 R3 K6 ["CollisionGroupsAreCollidable"]
       34 CALL                             R3 3 1
       35 NOT                              R2 R3
       36 JUMP                             ; [+9]
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R5 R0 K0 ["groupName"]
       40 GETTABLEKS                       R6 R0 K1 ["otherGroupName"]
       42 NAMECALL                         R3 R3 K6 ["CollisionGroupsAreCollidable"]
       44 CALL                             R3 3 1
       45 NOT                              R2 R3
       46 GETUPVAL                         R3 4
       47 LOADK                            R5 K7 ["Setting group collision state"]
       48 NAMECALL                         R3 R3 K8 ["SetWaypoint"]
       50 CALL                             R3 2 0
       51 GETUPVAL                         R3 1
       52 CALL                             R3 0 1
       53 JUMPIFNOT                        R3 ; [+10]
       54 GETUPVAL                         R3 2
       55 GETTABLEKS                       R5 R0 K0 ["groupName"]
       57 GETTABLEKS                       R6 R0 K1 ["otherGroupName"]
       59 MOVE                             R7 R2
       60 NAMECALL                         R3 R3 K9 ["CollisionGroupSetCollidable"]
       62 CALL                             R3 4 0
       63 JUMP                             ; [+9]
       64 GETUPVAL                         R3 3
       65 GETTABLEKS                       R5 R0 K0 ["groupName"]
       67 GETTABLEKS                       R6 R0 K1 ["otherGroupName"]
       69 MOVE                             R7 R2
       70 NAMECALL                         R3 R3 K9 ["CollisionGroupSetCollidable"]
       72 CALL                             R3 4 0
       73 GETUPVAL                         R3 4
       74 LOADK                            R5 K10 ["Set group collision state"]
       75 NAMECALL                         R3 R3 K8 ["SetWaypoint"]
       77 CALL                             R3 2 0
       78 NEWTABLE                         R3 0 0
       80 GETUPVAL                         R4 5
       81 CALL                             R4 0 0
       82 GETIMPORT                        R4 K12 [plugin]
       84 LOADK                            R6 K13 ["SetStateAndRefresh"]
       85 MOVE                             R7 R3
       86 NAMECALL                         R4 R4 K14 ["Invoke"]
       88 CALL                             R4 3 0
       89 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Creating collision group"]
        2 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 2
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K2 ["RegisterCollisionGroup"]
       12 CALL                             R1 2 0
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R1 3
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K2 ["RegisterCollisionGroup"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 0
       20 LOADK                            R3 K3 ["Created collision group"]
       21 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
       23 CALL                             R1 2 0
       24 NEWTABLE                         R1 0 0
       26 GETUPVAL                         R2 4
       27 CALL                             R2 0 0
       28 GETIMPORT                        R2 K5 [plugin]
       30 LOADK                            R4 K6 ["SetStateAndRefresh"]
       31 MOVE                             R5 R1
       32 NAMECALL                         R2 R2 K7 ["Invoke"]
       34 CALL                             R2 3 0
       35 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["Set"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [plugin]
        3 LOADK                            R4 K2 ["WindowEnabledChanged"]
        4 DUPCLOSURE                       R5 K3 [PROTO_11]
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       10 CALL                             R2 3 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R0 K7 [table.insert]
       14 CALL                             R0 -1 0
       15 GETUPVAL                         R1 0
       16 GETIMPORT                        R2 K1 [plugin]
       18 LOADK                            R4 K8 ["SetActiveWorld"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          UPVAL U2
       25 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       27 CALL                             R2 3 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R0 K7 [table.insert]
       31 CALL                             R0 -1 0
       32 GETUPVAL                         R1 0
       33 GETIMPORT                        R2 K1 [plugin]
       35 LOADK                            R4 K9 ["SetUseWorkspaceCollisionGroups"]
       36 NEWCLOSURE                       R5 P2
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U2
       41 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       43 CALL                             R2 3 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R0 K7 [table.insert]
       47 CALL                             R0 -1 0
       48 GETUPVAL                         R1 0
       49 GETIMPORT                        R2 K1 [plugin]
       51 LOADK                            R4 K10 ["DeleteCollisionGroup"]
       52 NEWCLOSURE                       R5 P3
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U9
       57 CAPTURE                          UPVAL U2
       58 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       60 CALL                             R2 3 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R0 K7 [table.insert]
       64 CALL                             R0 -1 0
       65 GETUPVAL                         R1 0
       66 GETIMPORT                        R2 K1 [plugin]
       68 LOADK                            R4 K11 ["RenameCollisionGroup"]
       69 NEWCLOSURE                       R5 P4
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          UPVAL U9
       74 CAPTURE                          UPVAL U10
       75 CAPTURE                          UPVAL U2
       76 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       78 CALL                             R2 3 -1
       79 FASTCALL                         TABLE_INSERT ; [+2]
       80 GETIMPORT                        R0 K7 [table.insert]
       82 CALL                             R0 -1 0
       83 GETUPVAL                         R1 0
       84 GETIMPORT                        R2 K1 [plugin]
       86 LOADK                            R4 K12 ["AddSelectedPartsToCollisionGroup"]
       87 DUPCLOSURE                       R5 K13 [PROTO_16]
       88 CAPTURE                          UPVAL U8
       89 CAPTURE                          UPVAL U11
       90 CAPTURE                          UPVAL U2
       91 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       93 CALL                             R2 3 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R0 K7 [table.insert]
       97 CALL                             R0 -1 0
       98 GETUPVAL                         R1 0
       99 GETIMPORT                        R2 K1 [plugin]
      101 LOADK                            R4 K14 ["ToggleCollidesWith"]
      102 NEWCLOSURE                       R5 P6
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          UPVAL U4
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          UPVAL U9
      107 CAPTURE                          UPVAL U8
      108 CAPTURE                          UPVAL U2
      109 NAMECALL                         R2 R2 K4 ["OnInvoke"]
      111 CALL                             R2 3 -1
      112 FASTCALL                         TABLE_INSERT ; [+2]
      113 GETIMPORT                        R0 K7 [table.insert]
      115 CALL                             R0 -1 0
      116 GETUPVAL                         R1 0
      117 GETIMPORT                        R2 K1 [plugin]
      119 LOADK                            R4 K15 ["CreateCollisionGroup"]
      120 NEWCLOSURE                       R5 P7
      121 CAPTURE                          UPVAL U8
      122 CAPTURE                          UPVAL U4
      123 CAPTURE                          UPVAL U6
      124 CAPTURE                          UPVAL U9
      125 CAPTURE                          UPVAL U2
      126 NAMECALL                         R2 R2 K4 ["OnInvoke"]
      128 CALL                             R2 3 -1
      129 FASTCALL                         TABLE_INSERT ; [+2]
      130 GETIMPORT                        R0 K7 [table.insert]
      132 CALL                             R0 -1 0
      133 GETUPVAL                         R1 0
      134 GETIMPORT                        R2 K1 [plugin]
      136 LOADK                            R4 K16 ["SelectPartsInCollisionGroup"]
      137 NEWCLOSURE                       R5 P8
      138 CAPTURE                          UPVAL U7
      139 CAPTURE                          UPVAL U10
      140 CAPTURE                          UPVAL U6
      141 NAMECALL                         R2 R2 K4 ["OnInvoke"]
      143 CALL                             R2 3 -1
      144 FASTCALL                         TABLE_INSERT ; [+2]
      145 GETIMPORT                        R0 K7 [table.insert]
      147 CALL                             R0 -1 0
      148 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 GETIMPORT                        R0 K5 [table.clear]
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+32]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+14]
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+11]
        8 NEWTABLE                         R0 0 0
       10 GETUPVAL                         R1 3
       11 CALL                             R1 0 0
       12 GETIMPORT                        R1 K1 [plugin]
       14 LOADK                            R3 K2 ["SetStateAndRefresh"]
       15 MOVE                             R4 R0
       16 NAMECALL                         R1 R1 K3 ["Invoke"]
       18 CALL                             R1 3 0
       19 GETUPVAL                         R0 4
       20 CALL                             R0 0 1
       21 JUMPIFNOT                        R0 ; [+7]
       22 GETIMPORT                        R0 K1 [plugin]
       24 LOADK                            R2 K2 ["SetStateAndRefresh"]
       25 LOADNIL                          R3
       26 NAMECALL                         R0 R0 K3 ["Invoke"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K6 [task.wait]
       31 LOADN                            R1 1
       32 CALL                             R0 1 0
       33 JUMPBACK                         ; [-34]
       34 RETURN                           R0 0

PROTO_23:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K2 [task.spawn]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_24:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R0 K1 [workspace]
        2 SETUPVAL                         R0 0
        3 LOADNIL                          R0
        4 SETUPVAL                         R0 1
        5 LOADNIL                          R0
        6 SETUPVAL                         R0 2
        7 GETIMPORT                        R0 K3 [plugin]
        9 GETTABLEKS                       R0 R0 K4 ["HostDataModelType"]
       11 GETIMPORT                        R1 K8 [Enum.StudioDataModelType.PlayClient]
       13 JUMPIFNOTEQ                      R0 R1 ; [+12]
       15 DUPTABLE                         R0 K11 [{["InPlayMode"] = True}]
       16 GETUPVAL                         R1 3
       17 CALL                             R1 0 0
       18 GETIMPORT                        R1 K3 [plugin]
       20 LOADK                            R3 K12 ["SetStateAndRefresh"]
       21 MOVE                             R4 R0
       22 NAMECALL                         R1 R1 K13 ["Invoke"]
       24 CALL                             R1 3 0
       25 RETURN                           R0 0
       26 DUPTABLE                         R0 K15 [{["InPlayMode"] = False}]
       27 GETUPVAL                         R1 3
       28 CALL                             R1 0 0
       29 GETIMPORT                        R1 K3 [plugin]
       31 LOADK                            R3 K12 ["SetStateAndRefresh"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K13 ["Invoke"]
       35 CALL                             R1 3 0
       36 LOADB                            R0 1
       37 SETUPVAL                         R0 4
       38 GETIMPORT                        R0 K18 [task.spawn]
       40 NEWCLOSURE                       R1 P0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U7
       46 CALL                             R0 1 0
       47 GETIMPORT                        R0 K3 [plugin]
       49 LOADK                            R2 K19 ["PollGuiEnabled"]
       50 NAMECALL                         R0 R0 K13 ["Invoke"]
       52 CALL                             R0 2 0
       53 GETUPVAL                         R0 8
       54 CALL                             R0 0 0
       55 GETUPVAL                         R0 9
       56 JUMPIFNOT                        R0 ; [+21]
       57 GETIMPORT                        R0 K21 [require]
       59 GETUPVAL                         R1 10
       60 GETTABLEKS                       R1 R1 K22 ["Packages"]
       62 GETTABLEKS                       R1 R1 K23 ["DeveloperTools"]
       64 CALL                             R0 1 1
       65 GETTABLEKS                       R1 R0 K24 ["forPlugin"]
       67 LOADK                            R2 K25 ["CollisionGroupsEditor"]
       68 GETIMPORT                        R3 K3 [plugin]
       70 CALL                             R1 2 1
       71 SETUPVAL                         R1 11
       72 GETUPVAL                         R1 11
       73 GETIMPORT                        R3 K3 [plugin]
       75 NAMECALL                         R1 R1 K26 ["addPluginRouter"]
       77 CALL                             R1 2 0
       78 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 GETIMPORT                        R0 K5 [table.clear]
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K1 [ipairs]
       16 GETUPVAL                         R1 1
       17 CALL                             R0 1 3
       18 FORGPREP_INEXT                   R0
       19 NAMECALL                         R5 R4 K2 ["Disconnect"]
       21 CALL                             R5 1 0
       22 FORGLOOP                         R0 2 [inext] ; [-4]
       24 GETIMPORT                        R0 K5 [table.clear]
       26 GETUPVAL                         R1 1
       27 CALL                             R0 1 0
       28 LOADB                            R0 0
       29 SETUPVAL                         R0 2
       30 GETUPVAL                         R0 3
       31 JUMPIFNOT                        R0 ; [+4]
       32 GETUPVAL                         R0 3
       33 NAMECALL                         R0 R0 K6 ["destroy"]
       35 CALL                             R0 1 0
       36 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIFNOT                        R0 ; [+36]
        5 GETIMPORT                        R0 K4 [ipairs]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 3
        9 FORGPREP_INEXT                   R0
       10 NAMECALL                         R5 R4 K5 ["Disconnect"]
       12 CALL                             R5 1 0
       13 FORGLOOP                         R0 2 [inext] ; [-4]
       15 GETIMPORT                        R0 K8 [table.clear]
       17 GETUPVAL                         R1 0
       18 CALL                             R0 1 0
       19 GETIMPORT                        R0 K4 [ipairs]
       21 GETUPVAL                         R1 1
       22 CALL                             R0 1 3
       23 FORGPREP_INEXT                   R0
       24 NAMECALL                         R5 R4 K5 ["Disconnect"]
       26 CALL                             R5 1 0
       27 FORGLOOP                         R0 2 [inext] ; [-4]
       29 GETIMPORT                        R0 K8 [table.clear]
       31 GETUPVAL                         R1 1
       32 CALL                             R0 1 0
       33 LOADB                            R0 0
       34 SETUPVAL                         R0 2
       35 GETUPVAL                         R0 3
       36 JUMPIFNOT                        R0 ; [+4]
       37 GETUPVAL                         R0 3
       38 NAMECALL                         R0 R0 K9 ["destroy"]
       40 CALL                             R0 1 0
       41 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R0 0
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["CurrentDataModelTypeAboutToChange"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 NAMECALL                         R1 R1 K1 ["Connect"]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R1 R0 K2 ["CurrentDataModelTypeChanged"]
       16 DUPCLOSURE                       R3 K3 [PROTO_28]
       17 CAPTURE                          UPVAL U5
       18 NAMECALL                         R1 R1 K1 ["Connect"]
       20 CALL                             R1 2 0
       21 GETIMPORT                        R1 K5 [plugin]
       23 GETTABLEKS                       R1 R1 K6 ["HostDataModelTypeIsCurrent"]
       25 JUMPIFNOT                        R1 ; [+2]
       26 GETUPVAL                         R1 5
       27 CALL                             R1 0 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Common"]
       11 GETTABLEKS                       R2 R2 K6 ["commonInit"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 CALL                             R2 0 0
       16 GETIMPORT                        R2 K8 [game]
       18 LOADK                            R4 K9 ["PhysicsService"]
       19 NAMECALL                         R2 R2 K10 ["GetService"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K8 [game]
       24 LOADK                            R5 K11 ["ChangeHistoryService"]
       25 NAMECALL                         R3 R3 K10 ["GetService"]
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K8 [game]
       30 LOADK                            R6 K12 ["Selection"]
       31 NAMECALL                         R4 R4 K10 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Plugin"]
       38 GETTABLEKS                       R6 R6 K14 ["getWorlds"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K13 ["Plugin"]
       45 GETTABLEKS                       R7 R7 K15 ["getSelectedParts"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R0 K13 ["Plugin"]
       52 GETTABLEKS                       R8 R8 K16 ["getPartsInGroup"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K4 [require]
       57 GETTABLEKS                       R9 R0 K13 ["Plugin"]
       59 GETTABLEKS                       R9 R9 K17 ["getGroups"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K4 [require]
       64 GETTABLEKS                       R10 R0 K13 ["Plugin"]
       66 GETTABLEKS                       R10 R10 K18 ["getSelectedGroupIds"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K8 [game]
       71 LOADK                            R12 K19 ["StudioService"]
       72 NAMECALL                         R10 R10 K10 ["GetService"]
       74 CALL                             R10 2 1
       75 NAMECALL                         R10 R10 K20 ["HasInternalPermission"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K8 [game]
       80 LOADK                            R13 K21 ["CGEControlsRowPolish"]
       81 NAMECALL                         R11 R11 K22 ["GetFastFlag"]
       83 CALL                             R11 2 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R13 R0 K13 ["Plugin"]
       88 GETTABLEKS                       R13 R13 K23 ["getEngineFeatureMultiworldCollisionGroups"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K25 [workspace]
       93 LOADNIL                          R14
       94 LOADNIL                          R15
       95 NEWCLOSURE                       R16 P0
       96 CAPTURE                          REF R15
       97 NEWCLOSURE                       R14 P1
       98 CAPTURE                          REF R15
       99 CAPTURE                          VAL R12
      100 CAPTURE                          REF R13
      101 CAPTURE                          VAL R2
      102 LOADNIL                          R17
      103 NEWCLOSURE                       R18 P2
      104 CAPTURE                          VAL R5
      105 CAPTURE                          REF R13
      106 CAPTURE                          REF R17
      107 NEWCLOSURE                       R19 P3
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R8
      110 CAPTURE                          REF R13
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R5
      113 DUPCLOSURE                       R20 K26 [PROTO_4]
      114 CAPTURE                          VAL R19
      115 NEWTABLE                         R21 0 0
      117 NEWCLOSURE                       R22 P5
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R12
      121 CAPTURE                          REF R13
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R3
      124 DUPCLOSURE                       R23 K27 [PROTO_9]
      125 CAPTURE                          VAL R21
      126 NEWCLOSURE                       R24 P7
      127 CAPTURE                          VAL R12
      128 CAPTURE                          REF R13
      129 CAPTURE                          VAL R2
      130 NEWTABLE                         R25 0 0
      132 NEWCLOSURE                       R26 P8
      133 CAPTURE                          VAL R25
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R19
      136 CAPTURE                          VAL R21
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R5
      139 CAPTURE                          REF R13
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R24
      146 DUPCLOSURE                       R27 K28 [PROTO_21]
      147 CAPTURE                          VAL R25
      148 LOADB                            R28 0
      149 NEWCLOSURE                       R29 P10
      150 CAPTURE                          REF R28
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R19
      154 CAPTURE                          REF R14
      155 NEWCLOSURE                       R30 P11
      156 CAPTURE                          REF R28
      157 LOADNIL                          R31
      158 NEWCLOSURE                       R32 P12
      159 CAPTURE                          REF R13
      160 CAPTURE                          REF R15
      161 CAPTURE                          REF R17
      162 CAPTURE                          VAL R19
      163 CAPTURE                          REF R28
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R18
      166 CAPTURE                          REF R14
      167 CAPTURE                          VAL R26
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R0
      170 CAPTURE                          REF R31
      171 NEWCLOSURE                       R33 P13
      172 CAPTURE                          VAL R25
      173 CAPTURE                          VAL R21
      174 CAPTURE                          REF R28
      175 CAPTURE                          REF R31
      176 NEWCLOSURE                       R34 P14
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R25
      179 CAPTURE                          VAL R21
      180 CAPTURE                          REF R28
      181 CAPTURE                          REF R31
      182 CAPTURE                          VAL R32
      183 GETIMPORT                        R35 K30 [plugin]
      185 GETTABLEKS                       R35 R35 K31 ["MultipleDocumentInterfaceInstance"]
      187 MOVE                             R36 R34
      188 GETTABLEKS                       R37 R35 K32 ["FocusedDataModelSession"]
      190 CALL                             R36 1 0
      191 CLOSEUPVALS                      R13
      192 RETURN                           R0 0
