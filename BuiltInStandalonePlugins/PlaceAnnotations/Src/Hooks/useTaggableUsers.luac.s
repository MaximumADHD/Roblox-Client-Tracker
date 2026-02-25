PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 LOADNIL                          R0
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["DeserializePermissions"]
        3 MOVE                             R3 R0
        4 GETTABLEKS                       R4 R1 K1 ["creatorName"]
        6 GETTABLEKS                       R5 R1 K2 ["creatorTargetId"]
        8 GETTABLEKS                       R6 R1 K3 ["creatorType"]
       10 CALL                             R2 4 1
       11 NEWTABLE                         R3 0 0
       13 GETIMPORT                        R4 K5 [pairs]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R7 R8 K6 ["UserSubjectKey"]
       18 GETTABLE                         R5 R2 R7
       19 CALL                             R4 1 3
       20 FORGPREP_NEXT                    R4
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R10 R11 K7 ["SubjectNameKey"]
       24 GETTABLE                         R9 R8 R10
       25 DUPTABLE                         R10 K10 [{"Username", "UserId"}]
       26 SETTABLEKS                       R9 R10 K8 ["Username"]
       28 SETTABLEKS                       R7 R10 K9 ["UserId"]
       30 SETTABLE                         R10 R3 R9
       31 FORGLOOP                         R4 2 ; [-11]
       33 NEWTABLE                         R4 0 0
       35 NEWTABLE                         R5 0 0
       37 GETTABLEKS                       R6 R1 K3 ["creatorType"]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R7 R8 K11 ["GroupSubject"]
       42 JUMPIFNOTEQ                      R6 R7 ; [+35]
       44 GETIMPORT                        R6 K5 [pairs]
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R9 R10 K12 ["RoleSubjectKey"]
       49 GETTABLE                         R7 R2 R9
       50 CALL                             R6 1 3
       51 FORGPREP_NEXT                    R6
       52 LOADB                            R11 1
       53 SETTABLE                         R11 R5 R9
       54 FORGLOOP                         R6 2 ; [-3]
       56 GETTABLEKS                       R7 R1 K2 ["creatorTargetId"]
       58 FASTCALL1                        TONUMBER R7 ; [+2]
       59 GETIMPORT                        R6 K14 [tonumber]
       61 CALL                             R6 1 1
       62 JUMPIFNOT                        R6 ; [+15]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R7 R8 K15 ["getAllUsersInRolesets"]
       66 MOVE                             R8 R6
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R10 R11 K16 ["Dictionary"]
       70 GETTABLEKS                       R9 R10 K17 ["keys"]
       72 MOVE                             R10 R5
       73 CALL                             R9 1 1
       74 LOADN                            R10 0
       75 CALL                             R7 3 1
       76 MOVE                             R4 R7
       77 SETUPVAL                         R4 4
       78 GETUPVAL                         R8 3
       79 GETTABLEKS                       R7 R8 K16 ["Dictionary"]
       81 GETTABLEKS                       R6 R7 K18 ["join"]
       83 MOVE                             R7 R3
       84 MOVE                             R8 R4
       85 CALL                             R6 2 1
       86 LOADB                            R7 1
       87 MOVE                             R8 R5
       88 RETURN                           R6 3

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+2]
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K1 [pairs]
        9 GETUPVAL                         R2 0
       10 CALL                             R1 1 3
       11 FORGPREP_NEXT                    R1
       12 GETUPVAL                         R6 2
       13 JUMPIFNOT                        R6 ; [+26]
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R6 R7 K2 ["userHasRoleset"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R8 R5 K3 ["id"]
       20 GETUPVAL                         R9 1
       21 CALL                             R6 3 1
       22 JUMPIFNOT                        R6 ; [+17]
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R8 R5 K4 ["name"]
       26 GETTABLE                         R6 R7 R8
       27 JUMPIF                           R6 ; [+12]
       28 DUPTABLE                         R6 K7 [{"Username", "UserId"}]
       29 GETTABLEKS                       R7 R5 K4 ["name"]
       31 SETTABLEKS                       R7 R6 K5 ["Username"]
       33 GETTABLEKS                       R7 R5 K3 ["id"]
       35 SETTABLEKS                       R7 R6 K6 ["UserId"]
       37 GETTABLEKS                       R7 R5 K4 ["name"]
       39 SETTABLE                         R6 R0 R7
       40 FORGLOOP                         R1 2 ; [-29]
       42 GETUPVAL                         R1 5
       43 GETUPVAL                         R4 6
       44 GETTABLEKS                       R3 R4 K8 ["Dictionary"]
       46 GETTABLEKS                       R2 R3 K9 ["join"]
       48 MOVE                             R3 R0
       49 GETUPVAL                         R4 7
       50 CALL                             R2 2 -1
       51 CALL                             R1 -1 0
       52 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 NAMECALL                         R0 R0 K0 ["await"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+9]
        7 GETTABLEKS                       R1 R0 K1 ["creatorName"]
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETTABLEKS                       R1 R0 K2 ["creatorTargetId"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R1 R0 K3 ["creatorType"]
       15 JUMPIF                           R1 ; [+4]
       16 GETUPVAL                         R1 2
       17 LOADB                            R2 1
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R1 R0 K3 ["creatorType"]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R2 R3 K4 ["GroupSubject"]
       25 JUMPIFNOTEQ                      R1 R2 ; [+26]
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R2 R0 K2 ["creatorTargetId"]
       30 CALL                             R1 1 1
       31 NAMECALL                         R1 R1 K0 ["await"]
       33 CALL                             R1 1 1
       34 JUMPIFNOT                        R1 ; [+17]
       35 GETTABLEKS                       R2 R1 K5 ["memberCount"]
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R5 R6 K6 ["Dictionary"]
       40 GETTABLEKS                       R4 R5 K7 ["values"]
       42 GETUPVAL                         R5 6
       43 CALL                             R4 1 1
       44 LENGTH                           R3 R4
       45 JUMPIFNOTEQ                      R2 R3 ; [+6]
       47 GETIMPORT                        R2 K10 [os.time]
       49 CALL                             R2 0 1
       50 SETUPVAL                         R2 7
       51 RETURN                           R0 0
       52 GETUPVAL                         R1 8
       53 GETUPVAL                         R2 1
       54 CALL                             R1 1 1
       55 NAMECALL                         R1 R1 K0 ["await"]
       57 CALL                             R1 1 1
       58 NEWTABLE                         R2 0 0
       60 LOADB                            R3 0
       61 NEWTABLE                         R4 0 0
       63 JUMPIFNOT                        R1 ; [+3]
       64 GETTABLEKS                       R5 R1 K11 ["data"]
       66 JUMPIF                           R5 ; [+4]
       67 GETUPVAL                         R5 2
       68 LOADB                            R6 1
       69 CALL                             R5 1 0
       70 JUMP                             ; [+8]
       71 GETUPVAL                         R5 9
       72 GETTABLEKS                       R6 R1 K11 ["data"]
       74 MOVE                             R7 R0
       75 CALL                             R5 2 3
       76 MOVE                             R2 R5
       77 MOVE                             R3 R6
       78 MOVE                             R4 R7
       79 LOADB                            R5 0
       80 JUMPIFNOT                        R3 ; [+18]
       81 GETUPVAL                         R6 10
       82 MOVE                             R7 R2
       83 CALL                             R6 1 0
       84 GETUPVAL                         R9 5
       85 GETTABLEKS                       R8 R9 K6 ["Dictionary"]
       87 GETTABLEKS                       R7 R8 K7 ["values"]
       89 MOVE                             R8 R2
       90 CALL                             R7 1 1
       91 LENGTH                           R6 R7
       92 LOADN                            R7 136
       93 JUMPIFNOTLE                      R7 R6 ; [+5]
       95 GETUPVAL                         R7 11
       96 LOADB                            R8 1
       97 CALL                             R7 1 0
       98 LOADB                            R5 1
       99 GETIMPORT                        R6 K10 [os.time]
      101 CALL                             R6 0 1
      102 SETUPVAL                         R6 7
      103 GETTABLEKS                       R6 R0 K3 ["creatorType"]
      105 GETUPVAL                         R8 3
      106 GETTABLEKS                       R7 R8 K4 ["GroupSubject"]
      108 JUMPIFNOTEQ                      R6 R7 ; [+42]
      110 GETUPVAL                         R6 12
      111 GETTABLEKS                       R7 R0 K2 ["creatorTargetId"]
      113 CALL                             R6 1 0
      114 GETUPVAL                         R6 13
      115 MOVE                             R7 R4
      116 CALL                             R6 1 0
      117 JUMPIF                           R5 ; [+2]
      118 GETUPVAL                         R6 14
      119 JUMPIFNOT                        R6 ; [+31]
      120 NEWTABLE                         R6 0 0
      122 GETIMPORT                        R7 K13 [pairs]
      124 GETUPVAL                         R8 15
      125 CALL                             R7 1 3
      126 FORGPREP_NEXT                    R7
      127 GETUPVAL                         R13 16
      128 GETTABLEKS                       R12 R13 K14 ["userHasRoleset"]
      130 GETTABLEKS                       R13 R0 K2 ["creatorTargetId"]
      132 GETTABLEKS                       R14 R11 K15 ["UserId"]
      134 MOVE                             R15 R4
      135 CALL                             R12 3 1
      136 JUMPIF                           R12 ; [+2]
      137 LOADNIL                          R12
      138 SETTABLE                         R12 R6 R10
      139 FORGLOOP                         R7 2 ; [-13]
      141 GETUPVAL                         R7 17
      142 GETUPVAL                         R10 5
      143 GETTABLEKS                       R9 R10 K6 ["Dictionary"]
      145 GETTABLEKS                       R8 R9 K16 ["join"]
      147 GETUPVAL                         R9 15
      148 MOVE                             R10 R6
      149 CALL                             R8 2 -1
      150 CALL                             R7 -1 0
      151 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 0
        8 JUMPIFEQ                         R0 R1 ; [+6]
       10 NEWTABLE                         R0 0 0
       12 SETUPVAL                         R0 2
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 3
       15 GETUPVAL                         R0 0
       16 SETUPVAL                         R0 1
       17 GETUPVAL                         R0 3
       18 JUMPIFNOT                        R0 ; [+9]
       19 GETIMPORT                        R1 K3 [os.time]
       21 CALL                             R1 0 1
       22 GETUPVAL                         R2 3
       23 SUB                              R0 R1 R2
       24 LOADN                            R1 10
       25 JUMPIFNOTLT                      R0 R1 ; [+2]
       27 RETURN                           R0 0
       28 GETIMPORT                        R0 K6 [coroutine.wrap]
       30 NEWCLOSURE                       R1 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          UPVAL U10
       41 CAPTURE                          UPVAL U11
       42 CAPTURE                          UPVAL U12
       43 CAPTURE                          UPVAL U13
       44 CAPTURE                          UPVAL U14
       45 CAPTURE                          UPVAL U15
       46 CAPTURE                          UPVAL U16
       47 CAPTURE                          UPVAL U17
       48 CAPTURE                          UPVAL U18
       49 CALL                             R0 1 1
       50 CALL                             R0 0 0
       51 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useState"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 2
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["useState"]
        9 LOADN                            R6 255
       10 CALL                             R5 1 2
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K0 ["useState"]
       14 LOADB                            R8 0
       15 CALL                             R7 1 2
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K0 ["useState"]
       19 NEWTABLE                         R10 0 0
       21 CALL                             R9 1 2
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R11 R12 K0 ["useState"]
       25 NEWTABLE                         R12 0 0
       27 CALL                             R11 1 2
       28 GETUPVAL                         R14 0
       29 GETTABLEKS                       R13 R14 K0 ["useState"]
       31 LOADB                            R14 0
       32 CALL                             R13 1 2
       33 GETUPVAL                         R16 0
       34 GETTABLEKS                       R15 R16 K1 ["useEffect"]
       36 NEWCLOSURE                       R16 P0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R11
       39 CAPTURE                          VAL R5
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R10
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R9
       45 NEWTABLE                         R17 0 1
       47 MOVE                             R18 R2
       48 SETLIST                          R17 R18 1 [1]
       50 CALL                             R15 2 0
       51 GETUPVAL                         R16 0
       52 GETTABLEKS                       R15 R16 K1 ["useEffect"]
       54 NEWCLOSURE                       R16 P1
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R14
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U9
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          VAL R10
       74 NEWTABLE                         R17 0 2
       76 MOVE                             R18 R0
       77 MOVE                             R19 R1
       78 SETLIST                          R17 R18 2 [1]
       80 CALL                             R15 2 0
       81 GETUPVAL                         R17 2
       82 GETTABLEKS                       R16 R17 K2 ["Dictionary"]
       84 GETTABLEKS                       R15 R16 K3 ["join"]
       86 MOVE                             R16 R3
       87 MOVE                             R17 R9
       88 CALL                             R15 2 1
       89 MOVE                             R16 R15
       90 MOVE                             R17 R10
       91 MOVE                             R18 R5
       92 MOVE                             R19 R7
       93 MOVE                             R20 R11
       94 MOVE                             R21 R13
       95 RETURN                           R16 6

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Networking"]
       27 GETTABLEKS                       R5 R6 K11 ["DeserializeFromRequest"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R3 R4 K12 ["Deserialize"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R8 K10 ["Networking"]
       38 GETTABLEKS                       R6 R7 K13 ["Requests"]
       40 GETTABLEKS                       R5 R6 K14 ["GetUniverseMetadata"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K9 ["Src"]
       47 GETTABLEKS                       R8 R9 K10 ["Networking"]
       49 GETTABLEKS                       R7 R8 K13 ["Requests"]
       51 GETTABLEKS                       R6 R7 K15 ["GetPermissions"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Src"]
       58 GETTABLEKS                       R9 R10 K10 ["Networking"]
       60 GETTABLEKS                       R8 R9 K13 ["Requests"]
       62 GETTABLEKS                       R7 R8 K16 ["GetGroupInfo"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R10 R0 K9 ["Src"]
       69 GETTABLEKS                       R9 R10 K17 ["Util"]
       71 GETTABLEKS                       R8 R9 K18 ["PermissionsConstants"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R11 R0 K9 ["Src"]
       78 GETTABLEKS                       R10 R11 K17 ["Util"]
       80 GETTABLEKS                       R9 R10 K19 ["GroupUtils"]
       82 CALL                             R8 1 1
       83 LOADNIL                          R9
       84 NEWTABLE                         R10 0 0
       86 LOADNIL                          R11
       87 NEWCLOSURE                       R12 P0
       88 CAPTURE                          REF R10
       89 CAPTURE                          REF R9
       90 NEWCLOSURE                       R13 P1
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R2
       95 CAPTURE                          REF R10
       96 NEWCLOSURE                       R14 P2
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R2
      100 CAPTURE                          REF R11
      101 CAPTURE                          REF R10
      102 CAPTURE                          REF R9
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R13
      108 DUPTABLE                         R15 K22 [{"useTaggableUsers", "resetCachedVars"}]
      109 SETTABLEKS                       R14 R15 K20 ["useTaggableUsers"]
      111 SETTABLEKS                       R12 R15 K21 ["resetCachedVars"]
      113 CLOSEUPVALS                      R9
      114 RETURN                           R15 1
