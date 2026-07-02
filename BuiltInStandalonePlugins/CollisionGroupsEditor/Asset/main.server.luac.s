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
        1 JUMPIF                           R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["GetRegisteredCollisionGroups"]
        5 CALL                             R0 1 1
        6 SETUPVAL                         R0 0
        7 LOADB                            R0 0
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K0 ["GetRegisteredCollisionGroups"]
       12 CALL                             R0 1 1
       13 LOADB                            R1 0
       14 LENGTH                           R2 R0
       15 GETUPVAL                         R4 0
       16 LENGTH                           R3 R4
       17 JUMPIFEQ                         R2 R3 ; [+2]
       19 LOADB                            R1 1
       20 JUMPIF                           R1 ; [+19]
       21 LOADN                            R5 1
       22 LENGTH                           R3 R0
       23 LOADN                            R4 1
       24 FORNPREP                         R3
       25 GETUPVAL                         R7 0
       26 GETTABLE                         R6 R7 R5
       27 GETTABLE                         R7 R0 R5
       28 GETTABLEKS                       R8 R6 K1 ["name"]
       30 GETTABLEKS                       R9 R7 K1 ["name"]
       32 JUMPIFEQ                         R8 R9 ; [+3]
       34 LOADB                            R2 1
       35 JUMP                             ; [+2]
       36 FORNLOOP                         R3
       37 LOADB                            R2 0
       38 JUMPIFNOT                        R2 ; [+1]
       39 LOADB                            R1 1
       40 SETUPVAL                         R0 0
       41 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K1 [plugin]
        7 LOADK                            R4 K2 ["Groups"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R2 R2 K3 ["SetItem"]
       11 CALL                             R2 3 0
       12 GETIMPORT                        R2 K1 [plugin]
       14 LOADK                            R4 K4 ["SelectedGroupIds"]
       15 MOVE                             R5 R1
       16 NAMECALL                         R2 R2 K3 ["SetItem"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K1 [plugin]
        7 LOADK                            R5 K2 ["Groups"]
        8 MOVE                             R6 R1
        9 NAMECALL                         R3 R3 K3 ["SetItem"]
       11 CALL                             R3 3 0
       12 GETIMPORT                        R3 K1 [plugin]
       14 LOADK                            R5 K4 ["SelectedGroupIds"]
       15 MOVE                             R6 R2
       16 NAMECALL                         R3 R3 K3 ["SetItem"]
       18 CALL                             R3 3 0
       19 GETIMPORT                        R1 K1 [plugin]
       21 LOADK                            R3 K5 ["SetStateAndRefresh"]
       22 MOVE                             R4 R0
       23 NAMECALL                         R1 R1 K6 ["Invoke"]
       25 CALL                             R1 3 0
       26 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETIMPORT                        R3 K1 [plugin]
        9 LOADK                            R5 K2 ["Groups"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R3 K3 ["SetItem"]
       13 CALL                             R3 3 0
       14 GETIMPORT                        R3 K1 [plugin]
       16 LOADK                            R5 K4 ["SelectedGroupIds"]
       17 MOVE                             R6 R2
       18 NAMECALL                         R3 R3 K3 ["SetItem"]
       20 CALL                             R3 3 0
       21 GETIMPORT                        R1 K1 [plugin]
       23 LOADK                            R3 K5 ["SetStateAndRefresh"]
       24 MOVE                             R4 R0
       25 NAMECALL                         R1 R1 K6 ["Invoke"]
       27 CALL                             R1 3 0
       28 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETIMPORT                        R3 K1 [plugin]
        9 LOADK                            R5 K2 ["Groups"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R3 K3 ["SetItem"]
       13 CALL                             R3 3 0
       14 GETIMPORT                        R3 K1 [plugin]
       16 LOADK                            R5 K4 ["SelectedGroupIds"]
       17 MOVE                             R6 R2
       18 NAMECALL                         R3 R3 K3 ["SetItem"]
       20 CALL                             R3 3 0
       21 GETIMPORT                        R1 K1 [plugin]
       23 LOADK                            R3 K5 ["SetStateAndRefresh"]
       24 MOVE                             R4 R0
       25 NAMECALL                         R1 R1 K6 ["Invoke"]
       27 CALL                             R1 3 0
       28 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETIMPORT                        R3 K1 [plugin]
        9 LOADK                            R5 K2 ["Groups"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R3 K3 ["SetItem"]
       13 CALL                             R3 3 0
       14 GETIMPORT                        R3 K1 [plugin]
       16 LOADK                            R5 K4 ["SelectedGroupIds"]
       17 MOVE                             R6 R2
       18 NAMECALL                         R3 R3 K3 ["SetItem"]
       20 CALL                             R3 3 0
       21 GETIMPORT                        R1 K1 [plugin]
       23 LOADK                            R3 K5 ["SetStateAndRefresh"]
       24 MOVE                             R4 R0
       25 NAMECALL                         R1 R1 K6 ["Invoke"]
       27 CALL                             R1 3 0
       28 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [game]
        3 LOADK                            R4 K2 ["Selection"]
        4 NAMECALL                         R2 R2 K3 ["GetService"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R2 R2 K4 ["SelectionChanged"]
        9 DUPCLOSURE                       R4 K5 [PROTO_4]
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 NAMECALL                         R2 R2 K6 ["Connect"]
       14 CALL                             R2 2 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R0 K9 [table.insert]
       18 CALL                             R0 -1 0
       19 GETUPVAL                         R1 0
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K10 ["OnUndo"]
       23 DUPCLOSURE                       R4 K11 [PROTO_5]
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 NAMECALL                         R2 R2 K6 ["Connect"]
       28 CALL                             R2 2 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R0 K9 [table.insert]
       32 CALL                             R0 -1 0
       33 GETUPVAL                         R1 0
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K12 ["OnRedo"]
       37 DUPCLOSURE                       R4 K13 [PROTO_6]
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U2
       40 NAMECALL                         R2 R2 K6 ["Connect"]
       42 CALL                             R2 2 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R0 K9 [table.insert]
       46 CALL                             R0 -1 0
       47 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["IsCollisionGroupRegistered"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K2 [pcall]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["RegisterCollisionGroup"]
       13 GETUPVAL                         R3 0
       14 MOVE                             R4 R0
       15 CALL                             R1 3 2
       16 RETURN                           R1 1

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+31]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 0
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETIMPORT                        R4 K1 [plugin]
       12 LOADK                            R6 K2 ["Groups"]
       13 MOVE                             R7 R2
       14 NAMECALL                         R4 R4 K3 ["SetItem"]
       16 CALL                             R4 3 0
       17 GETIMPORT                        R4 K1 [plugin]
       19 LOADK                            R6 K4 ["SelectedGroupIds"]
       20 MOVE                             R7 R3
       21 NAMECALL                         R4 R4 K3 ["SetItem"]
       23 CALL                             R4 3 0
       24 GETIMPORT                        R2 K1 [plugin]
       26 LOADK                            R4 K5 ["SetStateAndRefresh"]
       27 MOVE                             R5 R1
       28 NAMECALL                         R2 R2 K6 ["Invoke"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0
       32 GETIMPORT                        R1 K8 [ipairs]
       34 GETUPVAL                         R2 3
       35 CALL                             R1 1 3
       36 FORGPREP_INEXT                   R1
       37 NAMECALL                         R6 R5 K9 ["Disconnect"]
       39 CALL                             R6 1 0
       40 FORGLOOP                         R1 2 [inext] ; [-4]
       42 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Deleting collision group"]
        2 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K2 ["UnregisterCollisionGroup"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 LOADK                            R3 K3 ["Deleted collision group"]
       12 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
       14 CALL                             R1 2 0
       15 NEWTABLE                         R1 0 0
       17 GETUPVAL                         R2 2
       18 CALL                             R2 0 1
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K5 [plugin]
       24 LOADK                            R6 K6 ["Groups"]
       25 MOVE                             R7 R2
       26 NAMECALL                         R4 R4 K7 ["SetItem"]
       28 CALL                             R4 3 0
       29 GETIMPORT                        R4 K5 [plugin]
       31 LOADK                            R6 K8 ["SelectedGroupIds"]
       32 MOVE                             R7 R3
       33 NAMECALL                         R4 R4 K7 ["SetItem"]
       35 CALL                             R4 3 0
       36 GETIMPORT                        R2 K5 [plugin]
       38 LOADK                            R4 K9 ["SetStateAndRefresh"]
       39 MOVE                             R5 R1
       40 NAMECALL                         R2 R2 K10 ["Invoke"]
       42 CALL                             R2 3 0
       43 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Renaming collision group"]
        2 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R3 R0 K2 ["oldName"]
        8 GETTABLEKS                       R4 R0 K3 ["newName"]
       10 NAMECALL                         R1 R1 K4 ["RenameCollisionGroup"]
       12 CALL                             R1 3 0
       13 GETIMPORT                        R1 K6 [pairs]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R3 R0 K2 ["oldName"]
       18 CALL                             R2 1 -1
       19 CALL                             R1 -1 3
       20 FORGPREP_NEXT                    R1
       21 GETTABLEKS                       R6 R5 K7 ["CollisionGroup"]
       23 GETTABLEKS                       R7 R0 K2 ["oldName"]
       25 JUMPIFNOTEQ                      R6 R7 ; [+5]
       27 GETTABLEKS                       R6 R0 K3 ["newName"]
       29 SETTABLEKS                       R6 R5 K7 ["CollisionGroup"]
       31 FORGLOOP                         R1 2 ; [-11]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K8 ["Renamed collision group"]
       35 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
       37 CALL                             R1 2 0
       38 DUPTABLE                         R1 K11 [{["GroupRenaming"] = ""}]
       39 GETUPVAL                         R2 3
       40 CALL                             R2 0 1
       41 GETUPVAL                         R3 4
       42 MOVE                             R4 R2
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K13 [plugin]
       46 LOADK                            R6 K14 ["Groups"]
       47 MOVE                             R7 R2
       48 NAMECALL                         R4 R4 K15 ["SetItem"]
       50 CALL                             R4 3 0
       51 GETIMPORT                        R4 K13 [plugin]
       53 LOADK                            R6 K16 ["SelectedGroupIds"]
       54 MOVE                             R7 R3
       55 NAMECALL                         R4 R4 K15 ["SetItem"]
       57 CALL                             R4 3 0
       58 GETIMPORT                        R2 K13 [plugin]
       60 LOADK                            R4 K17 ["SetStateAndRefresh"]
       61 MOVE                             R5 R1
       62 NAMECALL                         R2 R2 K18 ["Invoke"]
       64 CALL                             R2 3 0
       65 RETURN                           R0 0

PROTO_13:
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
       23 CALL                             R2 0 1
       24 GETUPVAL                         R3 3
       25 MOVE                             R4 R2
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K7 [plugin]
       29 LOADK                            R6 K8 ["Groups"]
       30 MOVE                             R7 R2
       31 NAMECALL                         R4 R4 K9 ["SetItem"]
       33 CALL                             R4 3 0
       34 GETIMPORT                        R4 K7 [plugin]
       36 LOADK                            R6 K10 ["SelectedGroupIds"]
       37 MOVE                             R7 R3
       38 NAMECALL                         R4 R4 K9 ["SetItem"]
       40 CALL                             R4 3 0
       41 GETIMPORT                        R2 K7 [plugin]
       43 LOADK                            R4 K11 ["SetStateAndRefresh"]
       44 MOVE                             R5 R1
       45 NAMECALL                         R2 R2 K12 ["Invoke"]
       47 CALL                             R2 3 0
       48 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["groupName"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R3 K1 ["IsCollisionGroupRegistered"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+2]
        8 LOADB                            R1 1
        9 JUMP                             ; [+9]
       10 GETIMPORT                        R3 K3 [pcall]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["RegisterCollisionGroup"]
       15 GETUPVAL                         R5 0
       16 MOVE                             R6 R2
       17 CALL                             R3 3 2
       18 MOVE                             R1 R3
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETTABLEKS                       R2 R0 K5 ["otherGroupName"]
       22 GETUPVAL                         R3 0
       23 MOVE                             R5 R2
       24 NAMECALL                         R3 R3 K1 ["IsCollisionGroupRegistered"]
       26 CALL                             R3 2 1
       27 JUMPIFNOT                        R3 ; [+2]
       28 LOADB                            R1 1
       29 JUMP                             ; [+9]
       30 GETIMPORT                        R3 K3 [pcall]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K4 ["RegisterCollisionGroup"]
       35 GETUPVAL                         R5 0
       36 MOVE                             R6 R2
       37 CALL                             R3 3 2
       38 MOVE                             R1 R3
       39 JUMPIF                           R1 ; [+13]
       40 GETIMPORT                        R2 K7 [warn]
       42 LOADK                            R4 K8 ["Could not toggle collision between \"%*\" and \"%*\""]
       43 GETTABLEKS                       R6 R0 K0 ["groupName"]
       45 GETTABLEKS                       R7 R0 K5 ["otherGroupName"]
       47 NAMECALL                         R4 R4 K9 ["format"]
       49 CALL                             R4 3 1
       50 MOVE                             R3 R4
       51 CALL                             R2 1 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R5 R0 K0 ["groupName"]
       56 GETTABLEKS                       R6 R0 K5 ["otherGroupName"]
       58 NAMECALL                         R3 R3 K10 ["CollisionGroupsAreCollidable"]
       60 CALL                             R3 3 1
       61 NOT                              R2 R3
       62 GETUPVAL                         R3 1
       63 LOADK                            R5 K11 ["Setting group collision state"]
       64 NAMECALL                         R3 R3 K12 ["SetWaypoint"]
       66 CALL                             R3 2 0
       67 GETUPVAL                         R3 0
       68 GETTABLEKS                       R5 R0 K0 ["groupName"]
       70 GETTABLEKS                       R6 R0 K5 ["otherGroupName"]
       72 MOVE                             R7 R2
       73 NAMECALL                         R3 R3 K13 ["CollisionGroupSetCollidable"]
       75 CALL                             R3 4 0
       76 GETUPVAL                         R3 1
       77 LOADK                            R5 K14 ["Set group collision state"]
       78 NAMECALL                         R3 R3 K12 ["SetWaypoint"]
       80 CALL                             R3 2 0
       81 NEWTABLE                         R3 0 0
       83 GETUPVAL                         R4 2
       84 CALL                             R4 0 1
       85 GETUPVAL                         R5 3
       86 MOVE                             R6 R4
       87 CALL                             R5 1 1
       88 GETIMPORT                        R6 K16 [plugin]
       90 LOADK                            R8 K17 ["Groups"]
       91 MOVE                             R9 R4
       92 NAMECALL                         R6 R6 K18 ["SetItem"]
       94 CALL                             R6 3 0
       95 GETIMPORT                        R6 K16 [plugin]
       97 LOADK                            R8 K19 ["SelectedGroupIds"]
       98 MOVE                             R9 R5
       99 NAMECALL                         R6 R6 K18 ["SetItem"]
      101 CALL                             R6 3 0
      102 GETIMPORT                        R4 K16 [plugin]
      104 LOADK                            R6 K20 ["SetStateAndRefresh"]
      105 MOVE                             R7 R3
      106 NAMECALL                         R4 R4 K21 ["Invoke"]
      108 CALL                             R4 3 0
      109 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Creating collision group"]
        2 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K2 ["RegisterCollisionGroup"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 LOADK                            R3 K3 ["Created collision group"]
       12 NAMECALL                         R1 R1 K1 ["SetWaypoint"]
       14 CALL                             R1 2 0
       15 NEWTABLE                         R1 0 0
       17 GETUPVAL                         R2 2
       18 CALL                             R2 0 1
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K5 [plugin]
       24 LOADK                            R6 K6 ["Groups"]
       25 MOVE                             R7 R2
       26 NAMECALL                         R4 R4 K7 ["SetItem"]
       28 CALL                             R4 3 0
       29 GETIMPORT                        R4 K5 [plugin]
       31 LOADK                            R6 K8 ["SelectedGroupIds"]
       32 MOVE                             R7 R3
       33 NAMECALL                         R4 R4 K7 ["SetItem"]
       35 CALL                             R4 3 0
       36 GETIMPORT                        R2 K5 [plugin]
       38 LOADK                            R4 K9 ["SetStateAndRefresh"]
       39 MOVE                             R5 R1
       40 NAMECALL                         R2 R2 K10 ["Invoke"]
       42 CALL                             R2 3 0
       43 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["Selection"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K4 ["Set"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [plugin]
        3 LOADK                            R4 K2 ["WindowEnabledChanged"]
        4 DUPCLOSURE                       R5 K3 [PROTO_10]
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       11 CALL                             R2 3 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R0 K7 [table.insert]
       15 CALL                             R0 -1 0
       16 GETUPVAL                         R1 0
       17 GETIMPORT                        R2 K1 [plugin]
       19 LOADK                            R4 K8 ["DeleteCollisionGroup"]
       20 DUPCLOSURE                       R5 K9 [PROTO_11]
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       27 CALL                             R2 3 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R0 K7 [table.insert]
       31 CALL                             R0 -1 0
       32 GETUPVAL                         R1 0
       33 GETIMPORT                        R2 K1 [plugin]
       35 LOADK                            R4 K10 ["RenameCollisionGroup"]
       36 DUPCLOSURE                       R5 K11 [PROTO_12]
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U3
       42 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       44 CALL                             R2 3 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R0 K7 [table.insert]
       48 CALL                             R0 -1 0
       49 GETUPVAL                         R1 0
       50 GETIMPORT                        R2 K1 [plugin]
       52 LOADK                            R4 K12 ["AddSelectedPartsToCollisionGroup"]
       53 DUPCLOSURE                       R5 K13 [PROTO_13]
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          UPVAL U3
       58 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       60 CALL                             R2 3 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R0 K7 [table.insert]
       64 CALL                             R0 -1 0
       65 GETUPVAL                         R1 0
       66 GETIMPORT                        R2 K1 [plugin]
       68 LOADK                            R4 K14 ["ToggleCollidesWith"]
       69 DUPCLOSURE                       R5 K15 [PROTO_14]
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          UPVAL U3
       74 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       76 CALL                             R2 3 -1
       77 FASTCALL                         TABLE_INSERT ; [+2]
       78 GETIMPORT                        R0 K7 [table.insert]
       80 CALL                             R0 -1 0
       81 GETUPVAL                         R1 0
       82 GETIMPORT                        R2 K1 [plugin]
       84 LOADK                            R4 K16 ["CreateCollisionGroup"]
       85 DUPCLOSURE                       R5 K17 [PROTO_15]
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          UPVAL U3
       90 NAMECALL                         R2 R2 K4 ["OnInvoke"]
       92 CALL                             R2 3 -1
       93 FASTCALL                         TABLE_INSERT ; [+2]
       94 GETIMPORT                        R0 K7 [table.insert]
       96 CALL                             R0 -1 0
       97 GETUPVAL                         R1 0
       98 GETIMPORT                        R2 K1 [plugin]
      100 LOADK                            R4 K18 ["SelectPartsInCollisionGroup"]
      101 DUPCLOSURE                       R5 K19 [PROTO_16]
      102 CAPTURE                          UPVAL U7
      103 NAMECALL                         R2 R2 K4 ["OnInvoke"]
      105 CALL                             R2 3 -1
      106 FASTCALL                         TABLE_INSERT ; [+2]
      107 GETIMPORT                        R0 K7 [table.insert]
      109 CALL                             R0 -1 0
      110 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETIMPORT                        R0 K1 [plugin]
        7 LOADK                            R2 K2 ["SetStateAndRefresh"]
        8 LOADNIL                          R3
        9 NAMECALL                         R0 R0 K3 ["Invoke"]
       11 CALL                             R0 3 0
       12 GETIMPORT                        R0 K5 [wait]
       14 LOADN                            R1 1
       15 CALL                             R0 1 0
       16 JUMPBACK                         ; [-17]
       17 RETURN                           R0 0

PROTO_20:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [spawn]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelType"]
        4 GETIMPORT                        R1 K6 [Enum.StudioDataModelType.PlayClient]
        6 JUMPIFNOTEQ                      R0 R1 ; [+29]
        8 DUPTABLE                         R0 K9 [{["InPlayMode"] = True}]
        9 GETUPVAL                         R1 0
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K1 [plugin]
       16 LOADK                            R5 K10 ["Groups"]
       17 MOVE                             R6 R1
       18 NAMECALL                         R3 R3 K11 ["SetItem"]
       20 CALL                             R3 3 0
       21 GETIMPORT                        R3 K1 [plugin]
       23 LOADK                            R5 K12 ["SelectedGroupIds"]
       24 MOVE                             R6 R2
       25 NAMECALL                         R3 R3 K11 ["SetItem"]
       27 CALL                             R3 3 0
       28 GETIMPORT                        R1 K1 [plugin]
       30 LOADK                            R3 K13 ["SetStateAndRefresh"]
       31 MOVE                             R4 R0
       32 NAMECALL                         R1 R1 K14 ["Invoke"]
       34 CALL                             R1 3 0
       35 RETURN                           R0 0
       36 DUPTABLE                         R0 K16 [{["InPlayMode"] = False}]
       37 GETUPVAL                         R1 0
       38 CALL                             R1 0 1
       39 GETUPVAL                         R2 1
       40 MOVE                             R3 R1
       41 CALL                             R2 1 1
       42 GETIMPORT                        R3 K1 [plugin]
       44 LOADK                            R5 K10 ["Groups"]
       45 MOVE                             R6 R1
       46 NAMECALL                         R3 R3 K11 ["SetItem"]
       48 CALL                             R3 3 0
       49 GETIMPORT                        R3 K1 [plugin]
       51 LOADK                            R5 K12 ["SelectedGroupIds"]
       52 MOVE                             R6 R2
       53 NAMECALL                         R3 R3 K11 ["SetItem"]
       55 CALL                             R3 3 0
       56 GETIMPORT                        R1 K1 [plugin]
       58 LOADK                            R3 K13 ["SetStateAndRefresh"]
       59 MOVE                             R4 R0
       60 NAMECALL                         R1 R1 K14 ["Invoke"]
       62 CALL                             R1 3 0
       63 LOADB                            R0 1
       64 SETUPVAL                         R0 2
       65 GETIMPORT                        R0 K18 [spawn]
       67 NEWCLOSURE                       R1 P0
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          UPVAL U3
       70 CALL                             R0 1 0
       71 GETIMPORT                        R0 K1 [plugin]
       73 LOADK                            R2 K19 ["PollGuiEnabled"]
       74 NAMECALL                         R0 R0 K14 ["Invoke"]
       76 CALL                             R0 2 0
       77 GETUPVAL                         R0 4
       78 CALL                             R0 0 0
       79 GETUPVAL                         R0 5
       80 JUMPIFNOT                        R0 ; [+21]
       81 GETIMPORT                        R0 K21 [require]
       83 GETUPVAL                         R1 6
       84 GETTABLEKS                       R1 R1 K22 ["Packages"]
       86 GETTABLEKS                       R1 R1 K23 ["DeveloperTools"]
       88 CALL                             R0 1 1
       89 GETTABLEKS                       R1 R0 K24 ["forPlugin"]
       91 LOADK                            R2 K25 ["CollisionGroupsEditor"]
       92 GETIMPORT                        R3 K1 [plugin]
       94 CALL                             R1 2 1
       95 SETUPVAL                         R1 7
       96 GETUPVAL                         R1 7
       97 GETIMPORT                        R3 K1 [plugin]
       99 NAMECALL                         R1 R1 K26 ["addPluginRouter"]
      101 CALL                             R1 2 0
      102 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 GETIMPORT                        R0 K1 [ipairs]
       12 GETUPVAL                         R1 1
       13 CALL                             R0 1 3
       14 FORGPREP_INEXT                   R0
       15 NAMECALL                         R5 R4 K2 ["Disconnect"]
       17 CALL                             R5 1 0
       18 FORGLOOP                         R0 2 [inext] ; [-4]
       20 LOADB                            R0 0
       21 SETUPVAL                         R0 2
       22 GETUPVAL                         R0 3
       23 JUMPIFNOT                        R0 ; [+4]
       24 GETUPVAL                         R0 3
       25 NAMECALL                         R0 R0 K3 ["destroy"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIFNOT                        R0 ; [+28]
        5 GETIMPORT                        R0 K4 [ipairs]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 3
        9 FORGPREP_INEXT                   R0
       10 NAMECALL                         R5 R4 K5 ["Disconnect"]
       12 CALL                             R5 1 0
       13 FORGLOOP                         R0 2 [inext] ; [-4]
       15 GETIMPORT                        R0 K4 [ipairs]
       17 GETUPVAL                         R1 1
       18 CALL                             R0 1 3
       19 FORGPREP_INEXT                   R0
       20 NAMECALL                         R5 R4 K5 ["Disconnect"]
       22 CALL                             R5 1 0
       23 FORGLOOP                         R0 2 [inext] ; [-4]
       25 LOADB                            R0 0
       26 SETUPVAL                         R0 2
       27 GETUPVAL                         R0 3
       28 JUMPIFNOT                        R0 ; [+4]
       29 GETUPVAL                         R0 3
       30 NAMECALL                         R0 R0 K6 ["destroy"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R0 0
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["CurrentDataModelTypeAboutToChange"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R1 R1 K1 ["Connect"]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K2 ["CurrentDataModelTypeChanged"]
       12 DUPCLOSURE                       R3 K3 [PROTO_25]
       13 CAPTURE                          UPVAL U4
       14 NAMECALL                         R1 R1 K1 ["Connect"]
       16 CALL                             R1 2 0
       17 GETIMPORT                        R1 K5 [plugin]
       19 GETTABLEKS                       R1 R1 K6 ["HostDataModelTypeIsCurrent"]
       21 JUMPIFNOT                        R1 ; [+2]
       22 GETUPVAL                         R1 4
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

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
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Plugin"]
       32 GETTABLEKS                       R5 R5 K13 ["getSelectedParts"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Plugin"]
       39 GETTABLEKS                       R6 R6 K14 ["getPartsInGroup"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Plugin"]
       46 GETTABLEKS                       R7 R7 K15 ["getGroups"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Plugin"]
       53 GETTABLEKS                       R8 R8 K16 ["getSelectedGroupIds"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K8 [game]
       58 LOADK                            R10 K17 ["StudioService"]
       59 NAMECALL                         R8 R8 K10 ["GetService"]
       61 CALL                             R8 2 1
       62 NAMECALL                         R8 R8 K18 ["HasInternalPermission"]
       64 CALL                             R8 1 1
       65 LOADNIL                          R9
       66 LOADNIL                          R10
       67 NEWCLOSURE                       R11 P0
       68 CAPTURE                          REF R10
       69 NEWCLOSURE                       R9 P1
       70 CAPTURE                          REF R10
       71 CAPTURE                          VAL R2
       72 DUPCLOSURE                       R12 K19 [PROTO_2]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 DUPCLOSURE                       R13 K20 [PROTO_3]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 NEWTABLE                         R14 0 0
       80 DUPCLOSURE                       R15 K21 [PROTO_7]
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R3
       85 DUPCLOSURE                       R16 K22 [PROTO_8]
       86 CAPTURE                          VAL R14
       87 DUPCLOSURE                       R17 K23 [PROTO_9]
       88 CAPTURE                          VAL R2
       89 NEWTABLE                         R18 0 0
       91 DUPCLOSURE                       R19 K24 [PROTO_17]
       92 CAPTURE                          VAL R18
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R4
      101 DUPCLOSURE                       R20 K25 [PROTO_18]
      102 CAPTURE                          VAL R18
      103 LOADB                            R21 0
      104 NEWCLOSURE                       R22 P9
      105 CAPTURE                          REF R21
      106 CAPTURE                          REF R9
      107 NEWCLOSURE                       R23 P10
      108 CAPTURE                          REF R21
      109 LOADNIL                          R24
      110 NEWCLOSURE                       R25 P11
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R7
      113 CAPTURE                          REF R21
      114 CAPTURE                          REF R9
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R0
      118 CAPTURE                          REF R24
      119 NEWCLOSURE                       R26 P12
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R14
      122 CAPTURE                          REF R21
      123 CAPTURE                          REF R24
      124 NEWCLOSURE                       R27 P13
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R14
      127 CAPTURE                          REF R21
      128 CAPTURE                          REF R24
      129 CAPTURE                          VAL R25
      130 GETIMPORT                        R28 K27 [plugin]
      132 GETTABLEKS                       R28 R28 K28 ["MultipleDocumentInterfaceInstance"]
      134 MOVE                             R29 R27
      135 GETTABLEKS                       R30 R28 K29 ["FocusedDataModelSession"]
      137 CALL                             R29 1 0
      138 CLOSEUPVALS                      R9
      139 RETURN                           R0 0
