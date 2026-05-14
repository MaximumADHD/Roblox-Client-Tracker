PROTO_0:
        0 DUPTABLE                         R1 K5 [{"GroupRenaming", "GroupRenameDialogOpen", "Theme", "UISelectedGroupId", "InPlayMode"}]
        1 LOADK                            R2 K6 [""]
        2 SETTABLEKS                       R2 R1 K0 ["GroupRenaming"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["GroupRenameDialogOpen"]
        7 LOADK                            R2 K6 [""]
        8 SETTABLEKS                       R2 R1 K2 ["Theme"]
       10 LOADK                            R2 K6 [""]
       11 SETTABLEKS                       R2 R1 K3 ["UISelectedGroupId"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K4 ["InPlayMode"]
       16 SETTABLEKS                       R1 R0 K7 ["state"]
       18 GETTABLEKS                       R1 R0 K7 ["state"]
       20 NAMECALL                         R2 R0 K8 ["GetGroups"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K9 ["Groups"]
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["JoinDictionaries"]
        3 GETTABLEKS                       R3 R0 K1 ["state"]
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["Set"]
       10 MOVE                             R6 R1
       11 LOADK                            R7 K3 ["Groups"]
       12 MOVE                             R10 R2
       13 NAMECALL                         R8 R0 K4 ["GetGroups"]
       15 CALL                             R8 2 -1
       16 CALL                             R5 -1 -1
       17 NAMECALL                         R3 R0 K5 ["setState"]
       19 CALL                             R3 -1 0
       20 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["Virtual"]
        7 JUMPIF                           R7 ; [+1]
        8 ADDK                             R1 R1 K1 [1]
        9 FORGLOOP                         R2 2 ; [-5]
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InPlayMode"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["props"]
        7 GETTABLEKS                       R0 R0 K2 ["OnAttemptModifyInPlayMode"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K3 ["Name"]
       14 JUMPIFNOTEQKS                    R0 K4 ["Default"] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 3
       18 LOADK                            R2 K5 ["DeleteCollisionGroup"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K3 ["Name"]
       22 NAMECALL                         R0 R0 K6 ["Invoke"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InPlayMode"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["props"]
        7 GETTABLEKS                       R1 R1 K2 ["OnAttemptModifyInPlayMode"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["Name"]
       14 JUMPIFNOTEQKS                    R1 K4 ["Default"] ; [+2]
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R0 ; [+24]
       18 GETUPVAL                         R1 1
       19 DUPTABLE                         R3 K6 [{"GroupRenameDialogOpen"}]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K5 ["GroupRenameDialogOpen"]
       23 NAMECALL                         R1 R1 K7 ["setStateAndRefresh"]
       25 CALL                             R1 2 0
       26 NEWTABLE                         R1 2 0
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K3 ["Name"]
       31 SETTABLEKS                       R2 R1 K8 ["oldName"]
       33 SETTABLEKS                       R0 R1 K9 ["newName"]
       35 GETUPVAL                         R2 3
       36 LOADK                            R4 K10 ["RenameCollisionGroup"]
       37 MOVE                             R5 R1
       38 NAMECALL                         R2 R2 K11 ["Invoke"]
       40 CALL                             R2 3 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R1 1
       43 GETTABLEKS                       R1 R1 K12 ["state"]
       45 GETTABLEKS                       R1 R1 K13 ["GroupRenaming"]
       47 JUMPIFNOTEQKS                    R1 K14 [""] ; [+12]
       49 GETUPVAL                         R1 1
       50 DUPTABLE                         R3 K15 [{"GroupRenaming"}]
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K3 ["Name"]
       54 SETTABLEKS                       R4 R3 K13 ["GroupRenaming"]
       56 NAMECALL                         R1 R1 K7 ["setStateAndRefresh"]
       58 CALL                             R1 2 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R1 1
       61 DUPTABLE                         R3 K15 [{"GroupRenaming"}]
       62 LOADK                            R4 K14 [""]
       63 SETTABLEKS                       R4 R3 K13 ["GroupRenaming"]
       65 NAMECALL                         R1 R1 K7 ["setStateAndRefresh"]
       67 CALL                             R1 2 0
       68 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InPlayMode"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["props"]
        7 GETTABLEKS                       R0 R0 K2 ["OnAttemptModifyInPlayMode"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R2 K3 ["AddSelectedPartsToCollisionGroup"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K4 ["Name"]
       16 NAMECALL                         R0 R0 K5 ["Invoke"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Name"]
        3 JUMPIFEQKS                       R1 K1 ["Default"] ; [+9]
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K2 ["SelectPartsInCollisionGroup"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["Name"]
       10 NAMECALL                         R1 R1 K3 ["Invoke"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R3 K5 [{"UISelectedGroupId"}]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K6 ["Id"]
       18 SETTABLEKS                       R4 R3 K4 ["UISelectedGroupId"]
       20 NAMECALL                         R1 R1 K7 ["setStateAndRefresh"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Collisions"]
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 GETTABLEKS                       R6 R5 K3 ["Name"]
        9 GETTABLEKS                       R7 R0 K3 ["Name"]
       11 JUMPIFNOTEQ                      R6 R7 ; [+4]
       13 GETTABLEKS                       R6 R5 K4 ["Collides"]
       15 RETURN                           R6 1
       16 FORGLOOP                         R1 2 ; [-10]
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Virtual"]
        3 JUMPIF                           R1 ; [+2]
        4 GETTABLEKS                       R1 R0 K0 ["Virtual"]
        6 JUMPIFNOT                        R1 ; [+25]
        7 GETUPVAL                         R3 1
        8 LOADN                            R4 0
        9 MOVE                             R5 R3
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R10 R9 K0 ["Virtual"]
       15 JUMPIF                           R10 ; [+1]
       16 ADDK                             R4 R4 K1 [1]
       17 FORGLOOP                         R5 2 ; [-5]
       19 MOVE                             R2 R4
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K2 ["GroupCountMax"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+8]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K3 ["props"]
       28 GETTABLEKS                       R2 R2 K4 ["OnCannotConfigureSelection"]
       30 CALL                             R2 0 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 4
       33 GETTABLEKS                       R2 R2 K5 ["InPlayMode"]
       35 JUMPIFNOT                        R2 ; [+7]
       36 GETUPVAL                         R2 3
       37 GETTABLEKS                       R2 R2 K3 ["props"]
       39 GETTABLEKS                       R2 R2 K6 ["OnAttemptModifyInPlayMode"]
       41 CALL                             R2 0 0
       42 RETURN                           R0 0
       43 NEWTABLE                         R2 2 0
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K7 ["Name"]
       48 SETTABLEKS                       R3 R2 K8 ["groupName"]
       50 GETTABLEKS                       R3 R0 K7 ["Name"]
       52 SETTABLEKS                       R3 R2 K9 ["otherGroupName"]
       54 GETUPVAL                         R3 5
       55 LOADK                            R5 K10 ["ToggleCollidesWith"]
       56 MOVE                             R6 R2
       57 NAMECALL                         R3 R3 K11 ["Invoke"]
       59 CALL                             R3 3 0
       60 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K1 ["plugin"]
        8 LOADK                            R5 K2 ["Groups"]
        9 NAMECALL                         R3 R2 K3 ["GetItem"]
       11 CALL                             R3 2 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+3]
       14 NEWTABLE                         R3 0 0
       16 LOADK                            R6 K4 ["SelectedGroupIds"]
       17 NAMECALL                         R4 R2 K3 ["GetItem"]
       19 CALL                             R4 2 1
       20 JUMPIFNOTEQKNIL                  R4 ; [+3]
       22 NEWTABLE                         R4 0 0
       24 GETIMPORT                        R5 K6 [pairs]
       26 MOVE                             R6 R3
       27 CALL                             R5 1 3
       28 FORGPREP_NEXT                    R5
       29 GETTABLEKS                       R11 R1 K7 ["GroupRenaming"]
       31 GETTABLEKS                       R12 R9 K8 ["Name"]
       33 JUMPIFEQ                         R11 R12 ; [+2]
       35 LOADB                            R10 0 +1
       36 LOADB                            R10 1
       37 SETTABLEKS                       R10 R9 K9 ["Renaming"]
       39 GETTABLEKS                       R11 R1 K10 ["UISelectedGroupId"]
       41 GETTABLEKS                       R12 R9 K11 ["Id"]
       43 JUMPIFEQ                         R11 R12 ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 SETTABLEKS                       R10 R9 K12 ["UISelected"]
       49 GETUPVAL                         R10 0
       50 MOVE                             R11 R4
       51 GETTABLEKS                       R12 R9 K11 ["Id"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K13 ["Selected"]
       56 NEWCLOSURE                       R10 P0
       57 CAPTURE                          REF R1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R10 R9 K14 ["OnDeleted"]
       63 NEWCLOSURE                       R10 P1
       64 CAPTURE                          REF R1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R10 R9 K15 ["OnRenamed"]
       70 NEWCLOSURE                       R10 P2
       71 CAPTURE                          REF R1
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R9
       75 SETTABLEKS                       R10 R9 K16 ["OnMembershipSet"]
       77 NEWCLOSURE                       R10 P3
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R10 R9 K17 ["OnSelected"]
       83 NEWCLOSURE                       R10 P4
       84 CAPTURE                          VAL R9
       85 SETTABLEKS                       R10 R9 K18 ["GetCollidesWith"]
       87 NEWCLOSURE                       R10 P5
       88 CAPTURE                          VAL R9
       89 CAPTURE                          REF R3
       90 CAPTURE                          UPVAL U1
       91 CAPTURE                          VAL R0
       92 CAPTURE                          REF R1
       93 CAPTURE                          VAL R2
       94 SETTABLEKS                       R10 R9 K19 ["ToggleCollidesWith"]
       96 FORGLOOP                         R5 2 ; [-68]
       98 CLOSEUPVALS                      R1
       99 RETURN                           R3 1

PROTO_10:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 JUMPIFEQ                         R6 R2 ; [+6]
        6 GETTABLE                         R8 R1 R6
        7 JUMPIFEQ                         R7 R8 ; [+3]
        9 LOADB                            R8 1
       10 RETURN                           R8 1
       11 FORGLOOP                         R3 2 ; [-8]
       13 LOADB                            R3 0
       14 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 JUMPIFEQ                         R1 R3 ; [+3]
        4 LOADB                            R3 1
        5 RETURN                           R3 1
        6 GETTABLEKS                       R4 R2 K1 ["Groups"]
        8 LENGTH                           R3 R4
        9 GETTABLEKS                       R5 R0 K2 ["state"]
       11 GETTABLEKS                       R5 R5 K1 ["Groups"]
       13 LENGTH                           R4 R5
       14 JUMPIFEQ                         R3 R4 ; [+3]
       16 LOADB                            R3 1
       17 RETURN                           R3 1
       18 DUPCLOSURE                       R3 K3 [PROTO_10]
       19 GETTABLEKS                       R5 R0 K2 ["state"]
       21 MOVE                             R6 R2
       22 LOADNIL                          R7
       23 LOADNIL                          R8
       24 FORGPREP                         R6
       25 JUMPIFEQKS                       R9 K1 ["Groups"] ; [+6]
       27 GETTABLE                         R11 R5 R9
       28 JUMPIFEQ                         R10 R11 ; [+3]
       30 LOADB                            R4 1
       31 JUMP                             ; [+3]
       32 FORGLOOP                         R6 2 ; [-8]
       34 LOADB                            R4 0
       35 JUMPIF                           R4 ; [+17]
       36 GETTABLEKS                       R5 R0 K2 ["state"]
       38 MOVE                             R6 R5
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 JUMPIFEQKS                       R9 K1 ["Groups"] ; [+6]
       44 GETTABLE                         R11 R2 R9
       45 JUMPIFEQ                         R10 R11 ; [+3]
       47 LOADB                            R4 1
       48 JUMP                             ; [+3]
       49 FORGLOOP                         R6 2 ; [-8]
       51 LOADB                            R4 0
       52 JUMPIFNOT                        R4 ; [+2]
       53 LOADB                            R4 1
       54 RETURN                           R4 1
       55 GETTABLEKS                       R4 R2 K1 ["Groups"]
       57 LOADNIL                          R5
       58 LOADNIL                          R6
       59 FORGPREP                         R4
       60 GETTABLEKS                       R10 R0 K2 ["state"]
       62 GETTABLEKS                       R10 R10 K1 ["Groups"]
       64 GETTABLE                         R9 R10 R7
       65 GETTABLEKS                       R10 R9 K4 ["Name"]
       67 GETTABLEKS                       R11 R8 K4 ["Name"]
       69 JUMPIFNOTEQ                      R10 R11 ; [+7]
       71 GETTABLEKS                       R10 R9 K5 ["Id"]
       73 GETTABLEKS                       R11 R8 K5 ["Id"]
       75 JUMPIFEQ                         R10 R11 ; [+3]
       77 LOADB                            R10 1
       78 RETURN                           R10 1
       79 GETTABLEKS                       R11 R9 K6 ["Collisions"]
       81 LENGTH                           R10 R11
       82 GETTABLEKS                       R12 R8 K6 ["Collisions"]
       84 LENGTH                           R11 R12
       85 JUMPIFEQ                         R10 R11 ; [+3]
       87 LOADB                            R10 1
       88 RETURN                           R10 1
       89 GETTABLEKS                       R10 R9 K7 ["Selected"]
       91 GETTABLEKS                       R11 R8 K7 ["Selected"]
       93 JUMPIFEQ                         R10 R11 ; [+3]
       95 LOADB                            R10 1
       96 RETURN                           R10 1
       97 GETTABLEKS                       R10 R8 K6 ["Collisions"]
       99 LOADNIL                          R11
      100 LOADNIL                          R12
      101 FORGPREP                         R10
      102 GETTABLEKS                       R16 R9 K6 ["Collisions"]
      104 GETTABLE                         R15 R16 R13
      105 MOVE                             R17 R14
      106 LOADNIL                          R18
      107 LOADNIL                          R19
      108 FORGPREP                         R17
      109 JUMPIFEQKNIL                     R20 ; [+6]
      111 GETTABLE                         R22 R15 R20
      112 JUMPIFEQ                         R21 R22 ; [+3]
      114 LOADB                            R16 1
      115 JUMP                             ; [+3]
      116 FORGLOOP                         R17 2 ; [-8]
      118 LOADB                            R16 0
      119 JUMPIFNOT                        R16 ; [+2]
      120 LOADB                            R16 1
      121 RETURN                           R16 1
      122 FORGLOOP                         R10 2 ; [-21]
      124 FORGLOOP                         R4 2 ; [-65]
      126 LOADB                            R4 0
      127 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"GroupRenameDialogOpen"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["GroupRenameDialogOpen"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["InPlayMode"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["props"]
        9 GETTABLEKS                       R1 R1 K3 ["OnAttemptModifyInPlayMode"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K4 ["CreateCollisionGroup"]
       15 MOVE                             R4 R0
       16 NAMECALL                         R1 R1 K5 ["Invoke"]
       18 CALL                             R1 3 0
       19 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["state"]
        5 GETTABLEKS                       R1 R1 K3 ["Groups"]
        7 CALL                             R0 1 3
        8 FORGPREP_NEXT                    R0
        9 GETTABLEKS                       R5 R4 K4 ["Id"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K2 ["state"]
       14 GETTABLEKS                       R6 R6 K5 ["UISelectedGroupId"]
       16 JUMPIFNOTEQ                      R5 R6 ; [+5]
       18 GETTABLEKS                       R5 R4 K6 ["OnDeleted"]
       20 CALL                             R5 0 0
       21 RETURN                           R0 0
       22 FORGLOOP                         R0 2 ; [-14]
       24 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["state"]
        5 GETTABLEKS                       R1 R1 K3 ["Groups"]
        7 CALL                             R0 1 3
        8 FORGPREP_NEXT                    R0
        9 GETTABLEKS                       R5 R4 K4 ["Id"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K2 ["state"]
       14 GETTABLEKS                       R6 R6 K5 ["UISelectedGroupId"]
       16 JUMPIFNOTEQ                      R5 R6 ; [+5]
       18 GETTABLEKS                       R5 R4 K6 ["OnRenamed"]
       20 CALL                             R5 0 0
       21 RETURN                           R0 0
       22 FORGLOOP                         R0 2 ; [-14]
       24 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["createElement"]
       10 GETUPVAL                         R4 1
       11 DUPTABLE                         R5 K10 [{"Groups", "GroupRenameDialogOpen", "OnGroupRenameDialogClosed", "OnGroupAdded", "OnGroupDeleted", "OnGroupRenamed"}]
       12 GETTABLEKS                       R6 R0 K11 ["state"]
       14 GETTABLEKS                       R6 R6 K4 ["Groups"]
       16 SETTABLEKS                       R6 R5 K4 ["Groups"]
       18 GETTABLEKS                       R6 R0 K11 ["state"]
       20 GETTABLEKS                       R6 R6 K5 ["GroupRenameDialogOpen"]
       22 SETTABLEKS                       R6 R5 K5 ["GroupRenameDialogOpen"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R6 R5 K6 ["OnGroupRenameDialogClosed"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R6 R5 K7 ["OnGroupAdded"]
       33 NEWCLOSURE                       R6 P2
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R6 R5 K8 ["OnGroupDeleted"]
       37 NEWCLOSURE                       R6 P3
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R6 R5 K9 ["OnGroupRenamed"]
       41 CALL                             R3 2 -1
       42 RETURN                           R3 -1

PROTO_17:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 GETUPVAL                         R1 0
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K0 ["setStateAndRefresh"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R3 K1 [{"plugin"}]
        1 GETTABLEKS                       R4 R0 K2 ["props"]
        3 GETTABLEKS                       R4 R4 K3 ["Plugin"]
        5 NAMECALL                         R4 R4 K4 ["get"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K0 ["plugin"]
       10 NAMECALL                         R1 R0 K5 ["setState"]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K2 ["props"]
       15 GETTABLEKS                       R1 R1 K0 ["plugin"]
       17 LOADK                            R3 K6 ["SetStateAndRefresh"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R1 R1 K7 ["OnInvoke"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K8 ["setStateAndRefreshConnection"]
       25 GETTABLEKS                       R1 R0 K8 ["setStateAndRefreshConnection"]
       27 LOADK                            R2 K9 ["setStateAndRefresh"]
       28 SETTABLEKS                       R2 R1 K10 ["Name"]
       30 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["setStateAndRefreshConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K2 ["Parent"]
       31 GETTABLEKS                       R5 R5 K2 ["Parent"]
       33 GETTABLEKS                       R5 R5 K9 ["contains"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETIMPORT                        R6 K1 [script]
       40 GETTABLEKS                       R6 R6 K2 ["Parent"]
       42 GETTABLEKS                       R6 R6 K2 ["Parent"]
       44 GETTABLEKS                       R6 R6 K10 ["Util"]
       46 GETTABLEKS                       R6 R6 K11 ["Immutable"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETIMPORT                        R7 K1 [script]
       53 GETTABLEKS                       R7 R7 K2 ["Parent"]
       55 GETTABLEKS                       R7 R7 K12 ["MainView"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K4 [require]
       60 GETIMPORT                        R8 K1 [script]
       62 GETTABLEKS                       R8 R8 K2 ["Parent"]
       64 GETTABLEKS                       R8 R8 K2 ["Parent"]
       66 GETTABLEKS                       R8 R8 K13 ["Constants"]
       68 CALL                             R7 1 1
       69 GETTABLEKS                       R8 R1 K14 ["Component"]
       71 LOADK                            R10 K15 ["Gui"]
       72 NAMECALL                         R8 R8 K16 ["extend"]
       74 CALL                             R8 2 1
       75 DUPCLOSURE                       R9 K17 [PROTO_0]
       76 SETTABLEKS                       R9 R8 K18 ["init"]
       78 DUPCLOSURE                       R9 K19 [PROTO_1]
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R9 R8 K20 ["setStateAndRefresh"]
       82 DUPCLOSURE                       R9 K21 [PROTO_2]
       83 DUPCLOSURE                       R10 K22 [PROTO_9]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R7
       86 SETTABLEKS                       R10 R8 K23 ["GetGroups"]
       88 DUPCLOSURE                       R10 K24 [PROTO_11]
       89 SETTABLEKS                       R10 R8 K25 ["shouldUpdate"]
       91 DUPCLOSURE                       R10 K26 [PROTO_16]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R10 R8 K27 ["render"]
       96 DUPCLOSURE                       R10 K28 [PROTO_18]
       97 SETTABLEKS                       R10 R8 K29 ["didMount"]
       99 DUPCLOSURE                       R10 K30 [PROTO_19]
      100 SETTABLEKS                       R10 R8 K31 ["willUnmount"]
      102 GETTABLEKS                       R10 R3 K32 ["withContext"]
      104 DUPTABLE                         R11 K37 [{"Plugin", "Stylizer", "Localization", "Mouse"}]
      105 GETTABLEKS                       R12 R3 K33 ["Plugin"]
      107 SETTABLEKS                       R12 R11 K33 ["Plugin"]
      109 GETTABLEKS                       R12 R3 K34 ["Stylizer"]
      111 SETTABLEKS                       R12 R11 K34 ["Stylizer"]
      113 GETTABLEKS                       R12 R3 K35 ["Localization"]
      115 SETTABLEKS                       R12 R11 K35 ["Localization"]
      117 GETTABLEKS                       R12 R3 K36 ["Mouse"]
      119 SETTABLEKS                       R12 R11 K36 ["Mouse"]
      121 CALL                             R10 1 1
      122 MOVE                             R11 R8
      123 CALL                             R10 1 1
      124 MOVE                             R8 R10
      125 RETURN                           R8 1
