PROTO_0:
        0 JUMPIF                           R1 ; [+1]
        1 LOADK                            R1 K0 ["."]
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K3 [string.gmatch]
        6 MOVE                             R4 R0
        7 LOADK                            R6 K4 ["([^"]
        8 MOVE                             R7 R1
        9 LOADK                            R8 K5 ["]+)"]
       10 CONCAT                           R5 R6 R8
       11 CALL                             R3 2 3
       12 FORGPREP                         R3
       13 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       15 MOVE                             R9 R2
       16 MOVE                             R10 R6
       17 GETIMPORT                        R8 K8 [table.insert]
       19 CALL                             R8 2 0
       20 FORGLOOP                         R3 1 ; [-8]
       22 RETURN                           R2 1

PROTO_1:
        0 LOADN                            R4 1
        1 LENGTH                           R2 R0
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 GETTABLE                         R5 R1 R4
        5 JUMPIF                           R5 ; [+2]
        6 LOADB                            R5 1
        7 RETURN                           R5 1
        8 GETTABLE                         R5 R0 R4
        9 GETTABLE                         R6 R1 R4
       10 JUMPIFEQ                         R5 R6 ; [+3]
       12 LOADB                            R5 0
       13 RETURN                           R5 1
       14 FORNLOOP                         R2
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["WasModified"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["SetAttribute"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["Name"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 NEWTABLE                         R2 4 0
        8 GETTABLEKS                       R3 R1 K1 ["DescendantAdded"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 NAMECALL                         R3 R3 K2 ["Connect"]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K3 ["DescendantAddedConnection"]
       17 GETTABLEKS                       R3 R1 K4 ["DescendantRemoving"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R3 R3 K2 ["Connect"]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K5 ["DescendantRemovingConnection"]
       26 GETTABLEKS                       R3 R1 K6 ["AncestryChanged"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R3 R3 K2 ["Connect"]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R2 K7 ["AncestryChangedConnection"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R4 R0 K0 ["Name"]
       38 SETTABLE                         R2 R3 R4
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Name"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+18]
        5 GETIMPORT                        R1 K2 [pairs]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R5 R0 K0 ["Name"]
       10 GETTABLE                         R2 R4 R5
       11 CALL                             R1 1 3
       12 FORGPREP_NEXT                    R1
       13 NAMECALL                         R6 R5 K3 ["Disconnect"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-4]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R2 R0 K0 ["Name"]
       21 LOADNIL                          R3
       22 SETTABLE                         R3 R1 R2
       23 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Folder"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K4 ["Parent"]
        7 SETTABLEKS                       R0 R1 K5 ["Name"]
        9 LOADK                            R4 K6 ["WasModified"]
       10 LOADB                            R5 1
       11 NAMECALL                         R2 R1 K7 ["SetAttribute"]
       13 CALL                             R2 3 0
       14 RETURN                           R1 1

PROTO_7:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIFNOT                        R3 ; [+6]
        2 GETTABLE                         R4 R0 R1
        3 GETTABLE                         R3 R4 R2
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLE                         R3 R0 R1
        6 LOADNIL                          R4
        7 SETTABLE                         R4 R3 R2
        8 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R5 R7 K2 ["TABS_KEYS"]
        7 CALL                             R4 1 3
        8 FORGPREP_NEXT                    R4
        9 MOVE                             R12 R8
       10 LOADK                            R13 K3 ["Start"]
       11 CONCAT                           R11 R12 R13
       12 NAMECALL                         R9 R0 K4 ["GetAttribute"]
       14 CALL                             R9 2 1
       15 MOVE                             R13 R8
       16 LOADK                            R14 K5 ["End"]
       17 CONCAT                           R12 R13 R14
       18 NAMECALL                         R10 R0 K4 ["GetAttribute"]
       20 CALL                             R10 2 1
       21 JUMPIFNOT                        R9 ; [+25]
       22 JUMPIFNOT                        R10 ; [+24]
       23 NEWTABLE                         R11 0 2
       25 MOVE                             R12 R9
       26 MOVE                             R13 R10
       27 SETLIST                          R11 R12 2 [1]
       29 SETTABLE                         R11 R3 R8
       30 ADDK                             R13 R9 K6 [1]
       31 MOVE                             R11 R10
       32 LOADN                            R12 1
       33 FORNPREP                         R11
       34 GETTABLE                         R14 R1 R8
       35 JUMPIFNOT                        R14 ; [+6]
       36 GETTABLE                         R15 R1 R8
       37 GETTABLE                         R14 R15 R13
       38 JUMPIFNOT                        R14 ; [+3]
       39 GETTABLE                         R14 R1 R8
       40 LOADNIL                          R15
       41 SETTABLE                         R15 R14 R13
       42 MOVE                             R14 R2
       43 MOVE                             R15 R8
       44 MOVE                             R16 R13
       45 CALL                             R14 2 0
       46 FORNLOOP                         R11
       47 MOVE                             R14 R8
       48 LOADK                            R15 K3 ["Start"]
       49 CONCAT                           R13 R14 R15
       50 LOADNIL                          R14
       51 NAMECALL                         R11 R0 K7 ["SetAttribute"]
       53 CALL                             R11 3 0
       54 MOVE                             R14 R8
       55 LOADK                            R15 K5 ["End"]
       56 CONCAT                           R13 R14 R15
       57 LOADNIL                          R14
       58 NAMECALL                         R11 R0 K7 ["SetAttribute"]
       60 CALL                             R11 3 0
       61 FORGLOOP                         R4 2 ; [-53]
       63 RETURN                           R3 1

PROTO_9:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R5 R7 K2 ["TABS_KEYS"]
        7 CALL                             R4 1 3
        8 FORGPREP_NEXT                    R4
        9 MOVE                             R9 R1
       10 MOVE                             R10 R8
       11 MOVE                             R11 R0
       12 CALL                             R9 2 1
       13 JUMPIFNOT                        R9 ; [+7]
       14 MOVE                             R9 R2
       15 MOVE                             R10 R8
       16 MOVE                             R11 R0
       17 CALL                             R9 2 0
       18 LOADN                            R9 1
       19 SETTABLE                         R9 R3 R8
       20 JUMP                             ; [+2]
       21 LOADN                            R9 0
       22 SETTABLE                         R9 R3 R8
       23 FORGLOOP                         R4 2 ; [-15]
       25 LOADK                            R6 K3 ["Folder"]
       26 NAMECALL                         R4 R0 K4 ["IsA"]
       28 CALL                             R4 2 1
       29 JUMPIF                           R4 ; [+1]
       30 RETURN                           R3 1
       31 GETIMPORT                        R4 K1 [pairs]
       33 NAMECALL                         R5 R0 K5 ["GetChildren"]
       35 CALL                             R5 1 -1
       36 CALL                             R4 -1 3
       37 FORGPREP_NEXT                    R4
       38 GETUPVAL                         R9 1
       39 MOVE                             R10 R8
       40 MOVE                             R11 R1
       41 MOVE                             R12 R2
       42 CALL                             R9 3 1
       43 GETIMPORT                        R10 K1 [pairs]
       45 MOVE                             R11 R9
       46 CALL                             R10 1 3
       47 FORGPREP_NEXT                    R10
       48 GETTABLE                         R15 R3 R13
       49 ADD                              R15 R15 R14
       50 SETTABLE                         R15 R3 R13
       51 FORGLOOP                         R10 2 ; [-4]
       53 FORGLOOP                         R4 2 ; [-16]
       55 RETURN                           R3 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R3 R5 K2 ["TABS_KEYS"]
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETTABLE                         R7 R0 R6
       11 JUMPIFNOT                        R7 ; [+4]
       12 GETTABLE                         R8 R0 R6
       13 LENGTH                           R7 R8
       14 SETTABLE                         R7 R1 R6
       15 JUMP                             ; [+2]
       16 LOADN                            R7 0
       17 SETTABLE                         R7 R1 R6
       18 FORGLOOP                         R2 2 ; [-10]
       20 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+20]
        2 GETIMPORT                        R2 K2 [Instance.new]
        4 LOADK                            R3 K3 ["Folder"]
        5 CALL                             R2 1 1
        6 SETUPVAL                         R2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K4 ["PREVIEW_ASSETS_FOLDER"]
       11 SETTABLEKS                       R3 R2 K5 ["Name"]
       13 GETUPVAL                         R2 0
       14 GETIMPORT                        R3 K7 [game]
       16 LOADK                            R5 K8 ["Workspace"]
       17 NAMECALL                         R3 R3 K9 ["GetService"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K10 ["Parent"]
       22 NAMECALL                         R2 R1 K11 ["GetFullName"]
       24 CALL                             R2 1 1
       25 GETUPVAL                         R3 2
       26 MOVE                             R4 R2
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K13 [pairs]
       30 GETUPVAL                         R5 0
       31 NAMECALL                         R5 R5 K14 ["GetChildren"]
       33 CALL                             R5 1 -1
       34 CALL                             R4 -1 3
       35 FORGPREP_NEXT                    R4
       36 GETTABLEKS                       R9 R8 K5 ["Name"]
       38 JUMPIFNOTEQ                      R9 R2 ; [+3]
       40 LOADB                            R9 0
       41 RETURN                           R9 1
       42 GETUPVAL                         R9 2
       43 GETTABLEKS                       R10 R8 K5 ["Name"]
       45 CALL                             R9 1 1
       46 LOADN                            R13 1
       47 LENGTH                           R11 R3
       48 LOADN                            R12 1
       49 FORNPREP                         R11
       50 GETTABLE                         R14 R9 R13
       51 JUMPIF                           R14 ; [+2]
       52 LOADB                            R10 1
       53 JUMP                             ; [+8]
       54 GETTABLE                         R14 R3 R13
       55 GETTABLE                         R15 R9 R13
       56 JUMPIFEQ                         R14 R15 ; [+3]
       58 LOADB                            R10 0
       59 JUMP                             ; [+2]
       60 FORNLOOP                         R11
       61 LOADB                            R10 1
       62 JUMPIFNOT                        R10 ; [+56]
       63 LENGTH                           R10 R3
       64 LENGTH                           R11 R9
       65 JUMPIFNOTLT                      R10 R11 ; [+47]
       67 GETIMPORT                        R11 K2 [Instance.new]
       69 LOADK                            R12 K3 ["Folder"]
       70 CALL                             R11 1 1
       71 GETUPVAL                         R12 0
       72 SETTABLEKS                       R12 R11 K10 ["Parent"]
       74 SETTABLEKS                       R2 R11 K5 ["Name"]
       76 LOADK                            R14 K15 ["WasModified"]
       77 LOADB                            R15 1
       78 NAMECALL                         R12 R11 K16 ["SetAttribute"]
       80 CALL                             R12 3 0
       81 MOVE                             R10 R11
       82 GETUPVAL                         R11 3
       83 MOVE                             R12 R10
       84 MOVE                             R13 R1
       85 CALL                             R11 2 0
       86 GETUPVAL                         R12 4
       87 GETTABLEKS                       R13 R8 K5 ["Name"]
       89 GETTABLE                         R11 R12 R13
       90 JUMPIFNOT                        R11 ; [+18]
       91 GETIMPORT                        R11 K13 [pairs]
       93 GETUPVAL                         R14 4
       94 GETTABLEKS                       R15 R8 K5 ["Name"]
       96 GETTABLE                         R12 R14 R15
       97 CALL                             R11 1 3
       98 FORGPREP_NEXT                    R11
       99 NAMECALL                         R16 R15 K17 ["Disconnect"]
      101 CALL                             R16 1 0
      102 FORGLOOP                         R11 2 ; [-4]
      104 GETUPVAL                         R11 4
      105 GETTABLEKS                       R12 R8 K5 ["Name"]
      107 LOADNIL                          R13
      108 SETTABLE                         R13 R11 R12
      109 NAMECALL                         R11 R8 K18 ["Destroy"]
      111 CALL                             R11 1 0
      112 RETURN                           R10 1
      113 LENGTH                           R10 R3
      114 LENGTH                           R11 R9
      115 JUMPIFNOTLT                      R11 R10 ; [+3]
      117 LOADNIL                          R10
      118 RETURN                           R10 1
      119 FORGLOOP                         R4 2 ; [-84]
      121 GETIMPORT                        R5 K2 [Instance.new]
      123 LOADK                            R6 K3 ["Folder"]
      124 CALL                             R5 1 1
      125 GETUPVAL                         R6 0
      126 SETTABLEKS                       R6 R5 K10 ["Parent"]
      128 SETTABLEKS                       R2 R5 K5 ["Name"]
      130 LOADK                            R8 K15 ["WasModified"]
      131 LOADB                            R9 1
      132 NAMECALL                         R6 R5 K16 ["SetAttribute"]
      134 CALL                             R6 3 0
      135 MOVE                             R4 R5
      136 GETUPVAL                         R5 3
      137 MOVE                             R6 R4
      138 MOVE                             R7 R1
      139 CALL                             R5 2 0
      140 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R1 K1 [pairs]
        5 GETUPVAL                         R2 0
        6 NAMECALL                         R2 R2 K2 ["GetChildren"]
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 3
       10 FORGPREP_NEXT                    R1
       11 GETIMPORT                        R6 K1 [pairs]
       13 NAMECALL                         R7 R5 K3 ["GetAttributes"]
       15 CALL                             R7 1 -1
       16 CALL                             R6 -1 3
       17 FORGPREP_NEXT                    R6
       18 MOVE                             R13 R9
       19 LOADNIL                          R14
       20 NAMECALL                         R11 R5 K4 ["SetAttribute"]
       22 CALL                             R11 3 0
       23 FORGLOOP                         R6 2 ; [-6]
       25 LOADK                            R8 K5 ["WasModified"]
       26 LOADB                            R9 1
       27 NAMECALL                         R6 R5 K4 ["SetAttribute"]
       29 CALL                             R6 3 0
       30 FORGLOOP                         R1 2 ; [-20]
       32 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R6 R1 K0 ["Name"]
        3 CALL                             R5 1 1
        4 GETIMPORT                        R6 K2 [game]
        6 GETIMPORT                        R7 K4 [pairs]
        8 MOVE                             R8 R5
        9 CALL                             R7 1 3
       10 FORGPREP_NEXT                    R7
       11 JUMPIFNOT                        R6 ; [+7]
       12 MOVE                             R14 R11
       13 NAMECALL                         R12 R6 K5 ["FindFirstChild"]
       15 CALL                             R12 2 1
       16 MOVE                             R6 R12
       17 FORGLOOP                         R7 2 ; [-7]
       19 JUMPIF                           R6 ; [+27]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R9 R1 K0 ["Name"]
       23 GETTABLE                         R7 R8 R9
       24 JUMPIFNOT                        R7 ; [+18]
       25 GETIMPORT                        R7 K4 [pairs]
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R11 R1 K0 ["Name"]
       30 GETTABLE                         R8 R10 R11
       31 CALL                             R7 1 3
       32 FORGPREP_NEXT                    R7
       33 NAMECALL                         R12 R11 K6 ["Disconnect"]
       35 CALL                             R12 1 0
       36 FORGLOOP                         R7 2 ; [-4]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R8 R1 K0 ["Name"]
       41 LOADNIL                          R9
       42 SETTABLE                         R9 R7 R8
       43 NAMECALL                         R7 R1 K7 ["Destroy"]
       45 CALL                             R7 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R7 2
       48 MOVE                             R8 R6
       49 MOVE                             R9 R3
       50 MOVE                             R10 R4
       51 CALL                             R7 3 1
       52 GETIMPORT                        R8 K4 [pairs]
       54 MOVE                             R9 R2
       55 CALL                             R8 1 3
       56 FORGPREP_NEXT                    R8
       57 MOVE                             R16 R11
       58 LOADK                            R17 K8 ["Start"]
       59 CONCAT                           R15 R16 R17
       60 MOVE                             R16 R12
       61 NAMECALL                         R13 R1 K9 ["SetAttribute"]
       63 CALL                             R13 3 0
       64 MOVE                             R16 R11
       65 LOADK                            R17 K10 ["End"]
       66 CONCAT                           R15 R16 R17
       67 GETTABLE                         R17 R7 R11
       68 ADD                              R16 R12 R17
       69 NAMECALL                         R13 R1 K9 ["SetAttribute"]
       71 CALL                             R13 3 0
       72 GETTABLE                         R13 R2 R11
       73 GETTABLE                         R14 R7 R11
       74 ADD                              R13 R13 R14
       75 SETTABLE                         R13 R2 R11
       76 FORGLOOP                         R8 2 ; [-20]
       78 GETUPVAL                         R8 3
       79 MOVE                             R9 R1
       80 MOVE                             R10 R6
       81 CALL                             R8 2 0
       82 LOADK                            R10 K11 ["WasModified"]
       83 LOADB                            R11 0
       84 NAMECALL                         R8 R1 K9 ["SetAttribute"]
       86 CALL                             R8 3 0
       87 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 GETIMPORT                        R5 K1 [pairs]
        8 GETUPVAL                         R6 0
        9 NAMECALL                         R6 R6 K2 ["GetChildren"]
       11 CALL                             R6 1 -1
       12 CALL                             R5 -1 3
       13 FORGPREP_NEXT                    R5
       14 LOADK                            R12 K3 ["WasModified"]
       15 NAMECALL                         R10 R9 K4 ["GetAttribute"]
       17 CALL                             R10 2 1
       18 JUMPIFNOT                        R10 ; [+7]
       19 MOVE                             R13 R9
       20 MOVE                             R14 R4
       21 MOVE                             R15 R2
       22 MOVE                             R16 R3
       23 NAMECALL                         R11 R0 K5 ["addAssetsFromFolder"]
       25 CALL                             R11 5 0
       26 FORGLOOP                         R5 2 ; [-13]
       28 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R3 K1 [pairs]
        5 GETUPVAL                         R4 0
        6 NAMECALL                         R4 R4 K2 ["GetChildren"]
        8 CALL                             R4 1 -1
        9 CALL                             R3 -1 3
       10 FORGPREP_NEXT                    R3
       11 LOADK                            R10 K3 ["WasModified"]
       12 NAMECALL                         R8 R7 K4 ["GetAttribute"]
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+5]
       16 GETUPVAL                         R8 1
       17 MOVE                             R9 R7
       18 MOVE                             R10 R1
       19 MOVE                             R11 R2
       20 CALL                             R8 3 0
       21 FORGLOOP                         R3 2 ; [-11]
       23 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETIMPORT                        R1 K3 [game]
       10 LOADK                            R3 K4 ["Workspace"]
       11 NAMECALL                         R1 R1 K5 ["GetService"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K6 ["PREVIEW_ASSETS_FOLDER"]
       17 NAMECALL                         R1 R1 K7 ["FindFirstChild"]
       19 CALL                             R1 2 1
       20 NEWTABLE                         R2 0 0
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R2
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R2
       26 NEWCLOSURE                       R5 P2
       27 CAPTURE                          REF R1
       28 DUPCLOSURE                       R6 K8 [PROTO_7]
       29 DUPCLOSURE                       R7 K9 [PROTO_8]
       30 CAPTURE                          UPVAL U2
       31 DUPCLOSURE                       R8 K10 [PROTO_9]
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R8
       34 DUPCLOSURE                       R9 K11 [PROTO_10]
       35 CAPTURE                          UPVAL U2
       36 NEWCLOSURE                       R10 P7
       37 CAPTURE                          REF R1
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R10 R0 K12 ["addFolderPath"]
       44 NEWCLOSURE                       R10 P8
       45 CAPTURE                          REF R1
       46 SETTABLEKS                       R10 R0 K13 ["resetAllFoldersAttributes"]
       48 NEWCLOSURE                       R10 P9
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R10 R0 K14 ["addAssetsFromFolder"]
       55 NEWCLOSURE                       R10 P10
       56 CAPTURE                          REF R1
       57 CAPTURE                          VAL R9
       58 SETTABLEKS                       R10 R0 K15 ["addDirtyFolders"]
       60 NEWCLOSURE                       R10 P11
       61 CAPTURE                          REF R1
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R10 R0 K16 ["cleanDirtyFolders"]
       65 CLOSEUPVALS                      R1
       66 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Constants"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["PreviewConstants"]
       18 CALL                             R1 1 1
       19 NEWTABLE                         R2 2 0
       21 SETTABLEKS                       R2 R2 K7 ["__index"]
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 DUPCLOSURE                       R4 K9 [PROTO_1]
       25 DUPCLOSURE                       R5 K10 [PROTO_3]
       26 DUPCLOSURE                       R6 K11 [PROTO_16]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R6 R2 K12 ["new"]
       33 RETURN                           R2 1
