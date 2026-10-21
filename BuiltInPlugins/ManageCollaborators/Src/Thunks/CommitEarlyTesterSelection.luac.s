PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["earlyTesterController"]
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 NAMECALL                         R0 R0 K1 ["getAllRoles"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+13]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["Failed to fetch group roles"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R4 3
       14 LOADB                            R5 1
       15 CALL                             R4 1 -1
       16 NAMECALL                         R2 R2 K5 ["dispatch"]
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0
       20 MOVE                             R2 R1
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETTABLEKS                       R7 R6 K6 ["name"]
       26 GETUPVAL                         R8 4
       27 JUMPIFNOTEQ                      R7 R8 ; [+32]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K7 ["localization"]
       32 LOADK                            R9 K8 ["Label"]
       33 LOADK                            R10 K9 ["EarlyTesterRoleCopy"]
       34 DUPTABLE                         R11 K12 [{"experienceName", "universeId"}]
       35 GETUPVAL                         R12 5
       36 GETIMPORT                        R14 K14 [game]
       38 GETTABLEKS                       R14 R14 K15 ["GameId"]
       40 NAMECALL                         R12 R12 K16 ["getName"]
       42 CALL                             R12 2 1
       43 SETTABLEKS                       R12 R11 K10 ["experienceName"]
       45 GETIMPORT                        R13 K14 [game]
       47 GETTABLEKS                       R13 R13 K15 ["GameId"]
       49 FASTCALL1                        TOSTRING R13 ; [+2]
       50 GETIMPORT                        R12 K18 [tostring]
       52 CALL                             R12 1 1
       53 SETTABLEKS                       R12 R11 K11 ["universeId"]
       55 NAMECALL                         R7 R7 K19 ["getText"]
       57 CALL                             R7 4 1
       58 SETUPVAL                         R7 4
       59 JUMP                             ; [+2]
       60 FORGLOOP                         R2 2 ; [-37]
       62 GETUPVAL                         R2 2
       63 GETUPVAL                         R4 6
       64 GETUPVAL                         R5 7
       65 GETTABLEKS                       R5 R5 K20 ["CreatingNew"]
       67 LOADNIL                          R6
       68 GETUPVAL                         R7 4
       69 GETUPVAL                         R8 8
       70 LOADB                            R9 1
       71 CALL                             R4 5 -1
       72 NAMECALL                         R2 R2 K5 ["dispatch"]
       74 CALL                             R2 -1 0
       75 GETUPVAL                         R2 2
       76 GETUPVAL                         R4 9
       77 GETUPVAL                         R5 10
       78 GETTABLEKS                       R5 R5 K21 ["Main"]
       80 CALL                             R4 1 -1
       81 NAMECALL                         R2 R2 K5 ["dispatch"]
       83 CALL                             R2 -1 0
       84 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["EarlyTesters"]
        5 LOADN                            R3 0
        6 GETTABLEKS                       R4 R2 K2 ["PendingMembers"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 ADDK                             R3 R3 K3 [1]
       12 FORGLOOP                         R4 1 ; [-2]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["MAX_EARLY_TESTER_MEMBERS"]
       17 SUB                              R4 R5 R3
       18 LOADN                            R5 0
       19 JUMPIFNOTLT                      R5 R4 ; [+96]
       21 NEWTABLE                         R5 0 0
       23 LOADN                            R6 0
       24 GETTABLEKS                       R7 R2 K5 ["SearchSelection"]
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 FORGPREP                         R7
       29 ADDK                             R6 R6 K3 [1]
       30 JUMPIFLT                         R4 R6 ; [+10]
       32 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       34 MOVE                             R13 R5
       35 MOVE                             R14 R11
       36 GETIMPORT                        R12 K8 [table.insert]
       38 CALL                             R12 2 0
       39 FORGLOOP                         R7 2 ; [-11]
       41 GETTABLEKS                       R7 R2 K9 ["Mode"]
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K10 ["Unset"]
       46 JUMPIFNOTEQ                      R7 R8 ; [+63]
       48 GETTABLEKS                       R7 R1 K11 ["gameMetadataController"]
       50 GETTABLEKS                       R8 R1 K12 ["localization"]
       52 LOADK                            R10 K13 ["Label"]
       53 LOADK                            R11 K14 ["EarlyTesterRole"]
       54 DUPTABLE                         R12 K16 [{"experienceName"}]
       55 GETIMPORT                        R15 K18 [game]
       57 GETTABLEKS                       R15 R15 K19 ["GameId"]
       59 NAMECALL                         R13 R7 K20 ["getName"]
       61 CALL                             R13 2 1
       62 SETTABLEKS                       R13 R12 K15 ["experienceName"]
       64 NAMECALL                         R8 R8 K21 ["getText"]
       66 CALL                             R8 4 1
       67 GETUPVAL                         R9 2
       68 GETTABLEKS                       R9 R9 K22 ["fflagEarlyTesterRoleNameUniverseId"]
       70 JUMPIFNOT                        R9 ; [+25]
       71 NAMECALL                         R9 R0 K0 ["getState"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R9 R9 K23 ["GameOwnerMetadata"]
       76 GETTABLEKS                       R9 R9 K24 ["creatorId"]
       78 GETIMPORT                        R10 K27 [coroutine.wrap]
       80 NEWCLOSURE                       R11 P0
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          REF R8
       86 CAPTURE                          VAL R7
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          UPVAL U1
       89 CAPTURE                          VAL R5
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          UPVAL U6
       92 CALL                             R10 1 1
       93 CALL                             R10 0 0
       94 CLOSEUPVALS                      R8
       95 RETURN                           R0 0
       96 GETUPVAL                         R11 4
       97 GETUPVAL                         R12 1
       98 GETTABLEKS                       R12 R12 K28 ["CreatingNew"]
      100 LOADNIL                          R13
      101 MOVE                             R14 R8
      102 MOVE                             R15 R5
      103 LOADB                            R16 1
      104 CALL                             R11 5 -1
      105 NAMECALL                         R9 R0 K29 ["dispatch"]
      107 CALL                             R9 -1 0
      108 CLOSEUPVALS                      R8
      109 JUMP                             ; [+6]
      110 GETUPVAL                         R9 7
      111 MOVE                             R10 R5
      112 CALL                             R9 1 -1
      113 NAMECALL                         R7 R0 K29 ["dispatch"]
      115 CALL                             R7 -1 0
      116 GETUPVAL                         R7 5
      117 GETUPVAL                         R8 6
      118 GETTABLEKS                       R8 R8 K30 ["Main"]
      120 CALL                             R7 1 -1
      121 NAMECALL                         R5 R0 K29 ["dispatch"]
      123 CALL                             R5 -1 0
      124 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["AddEarlyTesterMembers"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Actions"]
       31 GETTABLEKS                       R4 R4 K10 ["SetEarlyTesterPendingRole"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K8 ["Actions"]
       40 GETTABLEKS                       R5 R5 K11 ["SetEarlyTesterScreen"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K8 ["Actions"]
       49 GETTABLEKS                       R6 R6 K12 ["SetEarlyTesterLoadError"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K13 ["Util"]
       58 GETTABLEKS                       R7 R7 K14 ["EarlyTesterMode"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K7 ["Src"]
       65 GETTABLEKS                       R8 R8 K13 ["Util"]
       67 GETTABLEKS                       R8 R8 K15 ["EarlyTesterScreen"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETTABLEKS                       R9 R0 K7 ["Src"]
       74 GETTABLEKS                       R9 R9 K16 ["Controllers"]
       76 GETTABLEKS                       R9 R9 K17 ["EarlyTesterController"]
       78 CALL                             R8 1 1
       79 DUPCLOSURE                       R9 K18 [PROTO_3]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R2
       88 RETURN                           R9 1
