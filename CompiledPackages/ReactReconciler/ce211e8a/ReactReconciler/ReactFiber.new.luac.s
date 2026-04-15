PROTO_0:
        0 DUPTABLE                         R8 K12 [{"tag", "key", "elementType", "type", "stateNode", "index", "pendingProps", "mode", "flags", "subtreeFlags", "lanes", "childLanes"}]
        1 SETTABLEKS                       R0 R8 K0 ["tag"]
        3 SETTABLEKS                       R2 R8 K1 ["key"]
        5 SETTABLEKS                       R4 R8 K2 ["elementType"]
        7 SETTABLEKS                       R5 R8 K3 ["type"]
        9 SETTABLEKS                       R6 R8 K4 ["stateNode"]
       11 LOADN                            R9 1
       12 SETTABLEKS                       R9 R8 K5 ["index"]
       14 SETTABLEKS                       R1 R8 K6 ["pendingProps"]
       16 SETTABLEKS                       R3 R8 K7 ["mode"]
       18 GETUPVAL                         R9 0
       19 SETTABLEKS                       R9 R8 K8 ["flags"]
       21 GETUPVAL                         R9 0
       22 SETTABLEKS                       R9 R8 K9 ["subtreeFlags"]
       24 JUMPIFNOT                        R7 ; [+2]
       25 MOVE                             R9 R7
       26 JUMP                             ; [+1]
       27 GETUPVAL                         R9 1
       28 SETTABLEKS                       R9 R8 K10 ["lanes"]
       30 GETUPVAL                         R9 1
       31 SETTABLEKS                       R9 R8 K11 ["childLanes"]
       33 GETUPVAL                         R9 2
       34 JUMPIFNOT                        R9 ; [+12]
       35 LOADN                            R9 0
       36 SETTABLEKS                       R9 R8 K13 ["actualDuration"]
       38 LOADN                            R9 255
       39 SETTABLEKS                       R9 R8 K14 ["actualStartTime"]
       41 LOADN                            R9 0
       42 SETTABLEKS                       R9 R8 K15 ["selfBaseDuration"]
       44 LOADN                            R9 0
       45 SETTABLEKS                       R9 R8 K16 ["treeBaseDuration"]
       47 GETUPVAL                         R9 3
       48 JUMPIFNOT                        R9 ; [+18]
       49 GETUPVAL                         R9 4
       50 SETTABLEKS                       R9 R8 K17 ["_debugID"]
       52 GETUPVAL                         R9 4
       53 ADDK                             R9 R9 K18 [1]
       54 SETUPVAL                         R9 4
       55 LOADNIL                          R9
       56 SETTABLEKS                       R9 R8 K19 ["_debugSource"]
       58 LOADNIL                          R9
       59 SETTABLEKS                       R9 R8 K20 ["_debugOwner"]
       61 LOADB                            R9 0
       62 SETTABLEKS                       R9 R8 K21 ["_debugNeedsRemount"]
       64 LOADNIL                          R9
       65 SETTABLEKS                       R9 R8 K22 ["_debugHookTypes"]
       67 RETURN                           R8 1

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K2 ["function"] ; [+5]
        8 GETTABLEKS                       R3 R0 K3 ["isReactComponent"]
       10 NOT                              R2 R3
       11 NOT                              R1 R2
       12 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["function"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+3]
        7 GETUPVAL                         R2 0
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+18]
       11 GETTABLEKS                       R2 R0 K4 ["isReactComponent"]
       13 JUMPIFNOT                        R2 ; [+2]
       14 GETUPVAL                         R2 1
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R0 K5 ["$$typeof"]
       18 GETUPVAL                         R3 2
       19 JUMPIFNOTEQ                      R2 R3 ; [+3]
       21 GETUPVAL                         R3 3
       22 RETURN                           R3 1
       23 GETUPVAL                         R3 4
       24 JUMPIFNOTEQ                      R2 R3 ; [+3]
       26 GETUPVAL                         R3 5
       27 RETURN                           R3 1
       28 GETUPVAL                         R2 6
       29 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["alternate"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+40]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K1 ["tag"]
        7 MOVE                             R5 R1
        8 GETTABLEKS                       R6 R0 K2 ["key"]
       10 GETTABLEKS                       R7 R0 K3 ["mode"]
       12 GETTABLEKS                       R8 R0 K4 ["elementType"]
       14 GETTABLEKS                       R9 R0 K5 ["type"]
       16 GETTABLEKS                       R10 R0 K6 ["stateNode"]
       18 CALL                             R3 7 1
       19 MOVE                             R2 R3
       20 GETUPVAL                         R3 1
       21 JUMPIFNOT                        R3 ; [+16]
       22 GETTABLEKS                       R3 R0 K7 ["_debugID"]
       24 SETTABLEKS                       R3 R2 K7 ["_debugID"]
       26 GETTABLEKS                       R3 R0 K8 ["_debugSource"]
       28 SETTABLEKS                       R3 R2 K8 ["_debugSource"]
       30 GETTABLEKS                       R3 R0 K9 ["_debugOwner"]
       32 SETTABLEKS                       R3 R2 K9 ["_debugOwner"]
       34 GETTABLEKS                       R3 R0 K10 ["_debugHookTypes"]
       36 SETTABLEKS                       R3 R2 K10 ["_debugHookTypes"]
       38 SETTABLEKS                       R0 R2 K0 ["alternate"]
       40 SETTABLEKS                       R2 R0 K0 ["alternate"]
       42 JUMP                             ; [+23]
       43 SETTABLEKS                       R1 R2 K11 ["pendingProps"]
       45 GETTABLEKS                       R3 R0 K5 ["type"]
       47 SETTABLEKS                       R3 R2 K5 ["type"]
       49 GETUPVAL                         R3 2
       50 SETTABLEKS                       R3 R2 K12 ["flags"]
       52 GETUPVAL                         R3 2
       53 SETTABLEKS                       R3 R2 K13 ["subtreeFlags"]
       55 LOADNIL                          R3
       56 SETTABLEKS                       R3 R2 K14 ["deletions"]
       58 GETUPVAL                         R3 3
       59 JUMPIFNOT                        R3 ; [+6]
       60 LOADN                            R3 0
       61 SETTABLEKS                       R3 R2 K15 ["actualDuration"]
       63 LOADN                            R3 255
       64 SETTABLEKS                       R3 R2 K16 ["actualStartTime"]
       66 GETTABLEKS                       R4 R0 K12 ["flags"]
       68 GETUPVAL                         R5 4
       69 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       71 GETIMPORT                        R3 K19 [bit32.band]
       73 CALL                             R3 2 1
       74 SETTABLEKS                       R3 R2 K12 ["flags"]
       76 GETTABLEKS                       R3 R0 K20 ["childLanes"]
       78 SETTABLEKS                       R3 R2 K20 ["childLanes"]
       80 GETTABLEKS                       R3 R0 K21 ["lanes"]
       82 SETTABLEKS                       R3 R2 K21 ["lanes"]
       84 GETTABLEKS                       R3 R0 K22 ["child"]
       86 SETTABLEKS                       R3 R2 K22 ["child"]
       88 GETTABLEKS                       R3 R0 K23 ["memoizedProps"]
       90 SETTABLEKS                       R3 R2 K23 ["memoizedProps"]
       92 GETTABLEKS                       R3 R0 K24 ["memoizedState"]
       94 SETTABLEKS                       R3 R2 K24 ["memoizedState"]
       96 GETTABLEKS                       R3 R0 K25 ["updateQueue"]
       98 SETTABLEKS                       R3 R2 K25 ["updateQueue"]
      100 GETTABLEKS                       R3 R0 K26 ["dependencies"]
      102 JUMPIFNOTEQKNIL                  R3 ; [+5]
      104 LOADNIL                          R4
      105 SETTABLEKS                       R4 R2 K26 ["dependencies"]
      107 JUMP                             ; [+11]
      108 DUPTABLE                         R4 K28 [{"lanes", "firstContext"}]
      109 GETTABLEKS                       R5 R3 K21 ["lanes"]
      111 SETTABLEKS                       R5 R4 K21 ["lanes"]
      113 GETTABLEKS                       R5 R3 K27 ["firstContext"]
      115 SETTABLEKS                       R5 R4 K27 ["firstContext"]
      117 SETTABLEKS                       R4 R2 K26 ["dependencies"]
      119 GETTABLEKS                       R4 R0 K29 ["sibling"]
      121 SETTABLEKS                       R4 R2 K29 ["sibling"]
      123 GETTABLEKS                       R4 R0 K30 ["index"]
      125 SETTABLEKS                       R4 R2 K30 ["index"]
      127 GETTABLEKS                       R4 R0 K31 ["ref"]
      129 SETTABLEKS                       R4 R2 K31 ["ref"]
      131 GETUPVAL                         R4 3
      132 JUMPIFNOT                        R4 ; [+8]
      133 GETTABLEKS                       R4 R0 K32 ["selfBaseDuration"]
      135 SETTABLEKS                       R4 R2 K32 ["selfBaseDuration"]
      137 GETTABLEKS                       R4 R0 K33 ["treeBaseDuration"]
      139 SETTABLEKS                       R4 R2 K33 ["treeBaseDuration"]
      141 GETUPVAL                         R4 1
      142 JUMPIFNOT                        R4 ; [+49]
      143 GETTABLEKS                       R4 R0 K34 ["_debugNeedsRemount"]
      145 SETTABLEKS                       R4 R2 K34 ["_debugNeedsRemount"]
      147 GETTABLEKS                       R4 R2 K1 ["tag"]
      149 GETUPVAL                         R5 5
      150 JUMPIFEQ                         R4 R5 ; [+11]
      152 GETTABLEKS                       R4 R2 K1 ["tag"]
      154 GETUPVAL                         R5 6
      155 JUMPIFEQ                         R4 R5 ; [+6]
      157 GETTABLEKS                       R4 R2 K1 ["tag"]
      159 GETUPVAL                         R5 7
      160 JUMPIFNOTEQ                      R4 R5 ; [+8]
      162 GETUPVAL                         R4 8
      163 GETTABLEKS                       R5 R0 K5 ["type"]
      165 CALL                             R4 1 1
      166 SETTABLEKS                       R4 R2 K5 ["type"]
      168 RETURN                           R2 1
      169 GETTABLEKS                       R4 R2 K1 ["tag"]
      171 GETUPVAL                         R5 9
      172 JUMPIFNOTEQ                      R4 R5 ; [+8]
      174 GETUPVAL                         R4 10
      175 GETTABLEKS                       R5 R0 K5 ["type"]
      177 CALL                             R4 1 1
      178 SETTABLEKS                       R4 R2 K5 ["type"]
      180 RETURN                           R2 1
      181 GETTABLEKS                       R4 R2 K1 ["tag"]
      183 GETUPVAL                         R5 11
      184 JUMPIFNOTEQ                      R4 R5 ; [+7]
      186 GETUPVAL                         R4 12
      187 GETTABLEKS                       R5 R0 K5 ["type"]
      189 CALL                             R4 1 1
      190 SETTABLEKS                       R4 R2 K5 ["type"]
      192 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["flags"]
        2 GETUPVAL                         R5 0
        3 GETUPVAL                         R6 1
        4 FASTCALL2                        BIT32_BOR R5 R6 ; [+3]
        6 GETIMPORT                        R4 K3 [bit32.bor]
        8 CALL                             R4 2 1
        9 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       11 GETIMPORT                        R2 K5 [bit32.band]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K0 ["flags"]
       16 GETTABLEKS                       R2 R0 K6 ["alternate"]
       18 JUMPIFNOTEQKNIL                  R2 ; [+36]
       20 GETUPVAL                         R3 2
       21 SETTABLEKS                       R3 R0 K7 ["childLanes"]
       23 SETTABLEKS                       R1 R0 K8 ["lanes"]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R0 K9 ["child"]
       28 GETUPVAL                         R3 3
       29 SETTABLEKS                       R3 R0 K10 ["subtreeFlags"]
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R0 K11 ["memoizedProps"]
       34 LOADNIL                          R3
       35 SETTABLEKS                       R3 R0 K12 ["memoizedState"]
       37 LOADNIL                          R3
       38 SETTABLEKS                       R3 R0 K13 ["updateQueue"]
       40 LOADNIL                          R3
       41 SETTABLEKS                       R3 R0 K14 ["dependencies"]
       43 LOADNIL                          R3
       44 SETTABLEKS                       R3 R0 K15 ["stateNode"]
       46 GETUPVAL                         R3 4
       47 JUMPIFNOT                        R3 ; [+71]
       48 LOADN                            R3 0
       49 SETTABLEKS                       R3 R0 K16 ["selfBaseDuration"]
       51 LOADN                            R3 0
       52 SETTABLEKS                       R3 R0 K17 ["treeBaseDuration"]
       54 RETURN                           R0 1
       55 GETTABLEKS                       R3 R2 K7 ["childLanes"]
       57 SETTABLEKS                       R3 R0 K7 ["childLanes"]
       59 GETTABLEKS                       R3 R2 K8 ["lanes"]
       61 SETTABLEKS                       R3 R0 K8 ["lanes"]
       63 GETTABLEKS                       R3 R2 K9 ["child"]
       65 SETTABLEKS                       R3 R0 K9 ["child"]
       67 GETTABLEKS                       R3 R2 K10 ["subtreeFlags"]
       69 SETTABLEKS                       R3 R0 K10 ["subtreeFlags"]
       71 LOADNIL                          R3
       72 SETTABLEKS                       R3 R0 K18 ["deletions"]
       74 GETTABLEKS                       R3 R2 K11 ["memoizedProps"]
       76 SETTABLEKS                       R3 R0 K11 ["memoizedProps"]
       78 GETTABLEKS                       R3 R2 K12 ["memoizedState"]
       80 SETTABLEKS                       R3 R0 K12 ["memoizedState"]
       82 GETTABLEKS                       R3 R2 K13 ["updateQueue"]
       84 SETTABLEKS                       R3 R0 K13 ["updateQueue"]
       86 GETTABLEKS                       R3 R2 K19 ["type"]
       88 SETTABLEKS                       R3 R0 K19 ["type"]
       90 GETTABLEKS                       R3 R2 K14 ["dependencies"]
       92 JUMPIFNOTEQKNIL                  R3 ; [+5]
       94 LOADNIL                          R4
       95 SETTABLEKS                       R4 R0 K14 ["dependencies"]
       97 JUMP                             ; [+11]
       98 DUPTABLE                         R4 K21 [{"lanes", "firstContext"}]
       99 GETTABLEKS                       R5 R3 K8 ["lanes"]
      101 SETTABLEKS                       R5 R4 K8 ["lanes"]
      103 GETTABLEKS                       R5 R3 K20 ["firstContext"]
      105 SETTABLEKS                       R5 R4 K20 ["firstContext"]
      107 SETTABLEKS                       R4 R0 K14 ["dependencies"]
      109 GETUPVAL                         R4 4
      110 JUMPIFNOT                        R4 ; [+8]
      111 GETTABLEKS                       R4 R2 K16 ["selfBaseDuration"]
      113 SETTABLEKS                       R4 R0 K16 ["selfBaseDuration"]
      115 GETTABLEKS                       R4 R2 K17 ["treeBaseDuration"]
      117 SETTABLEKS                       R4 R0 K17 ["treeBaseDuration"]
      119 RETURN                           R0 1

PROTO_6:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOTEQ                      R0 R2 ; [+10]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 FASTCALL                         BIT32_BOR ; [+2]
        8 GETIMPORT                        R2 K2 [bit32.bor]
       10 CALL                             R2 3 1
       11 MOVE                             R1 R2
       12 JUMP                             ; [+13]
       13 GETUPVAL                         R2 4
       14 JUMPIFNOTEQ                      R0 R2 ; [+10]
       16 GETUPVAL                         R3 2
       17 GETUPVAL                         R4 3
       18 FASTCALL2                        BIT32_BOR R3 R4 ; [+3]
       20 GETIMPORT                        R2 K2 [bit32.bor]
       22 CALL                             R2 2 1
       23 MOVE                             R1 R2
       24 JUMP                             ; [+1]
       25 GETUPVAL                         R1 5
       26 GETUPVAL                         R2 6
       27 JUMPIFNOT                        R2 ; [+11]
       28 GETUPVAL                         R2 7
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+8]
       31 GETUPVAL                         R4 8
       32 FASTCALL2                        BIT32_BOR R1 R4 ; [+4]
       34 MOVE                             R3 R1
       35 GETIMPORT                        R2 K2 [bit32.bor]
       37 CALL                             R2 2 1
       38 MOVE                             R1 R2
       39 GETUPVAL                         R2 9
       40 GETUPVAL                         R3 10
       41 LOADNIL                          R4
       42 LOADNIL                          R5
       43 MOVE                             R6 R1
       44 CALL                             R2 4 1
       45 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R9 R0
        4 GETIMPORT                        R8 K1 [type]
        6 CALL                             R8 1 1
        7 JUMPIFNOTEQKS                    R8 K2 ["function"] ; [+8]
        9 GETUPVAL                         R9 1
       10 JUMPIFNOT                        R9 ; [+234]
       11 GETUPVAL                         R9 2
       12 MOVE                             R10 R7
       13 CALL                             R9 1 1
       14 MOVE                             R7 R9
       15 JUMP                             ; [+229]
       16 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+12]
       18 GETTABLEKS                       R9 R0 K4 ["isReactComponent"]
       20 JUMPIFNOT                        R9 ; [+8]
       21 GETUPVAL                         R6 3
       22 GETUPVAL                         R9 1
       23 JUMPIFNOT                        R9 ; [+221]
       24 GETUPVAL                         R9 4
       25 MOVE                             R10 R7
       26 CALL                             R9 1 1
       27 MOVE                             R7 R9
       28 JUMP                             ; [+216]
       29 JUMPIFNOTEQKS                    R8 K5 ["string"] ; [+3]
       31 GETUPVAL                         R6 5
       32 JUMP                             ; [+212]
       33 GETUPVAL                         R9 6
       34 JUMPIFNOTEQ                      R0 R9 ; [+9]
       36 GETUPVAL                         R9 7
       37 GETTABLEKS                       R10 R2 K6 ["children"]
       39 MOVE                             R11 R4
       40 MOVE                             R12 R5
       41 MOVE                             R13 R1
       42 CALL                             R9 4 -1
       43 RETURN                           R9 -1
       44 GETUPVAL                         R9 8
       45 JUMPIFNOTEQ                      R0 R9 ; [+11]
       47 GETUPVAL                         R6 9
       48 GETUPVAL                         R11 10
       49 FASTCALL2                        BIT32_BOR R4 R11 ; [+4]
       51 MOVE                             R10 R4
       52 GETIMPORT                        R9 K9 [bit32.bor]
       54 CALL                             R9 2 1
       55 MOVE                             R4 R9
       56 JUMP                             ; [+188]
       57 GETUPVAL                         R9 11
       58 JUMPIFNOTEQ                      R0 R9 ; [+11]
       60 GETUPVAL                         R6 9
       61 GETUPVAL                         R11 12
       62 FASTCALL2                        BIT32_BOR R4 R11 ; [+4]
       64 MOVE                             R10 R4
       65 GETIMPORT                        R9 K9 [bit32.bor]
       67 CALL                             R9 2 1
       68 MOVE                             R4 R9
       69 JUMP                             ; [+175]
       70 GETUPVAL                         R9 13
       71 JUMPIFNOTEQ                      R0 R9 ; [+8]
       73 GETUPVAL                         R9 14
       74 MOVE                             R10 R2
       75 MOVE                             R11 R4
       76 MOVE                             R12 R5
       77 MOVE                             R13 R1
       78 CALL                             R9 4 -1
       79 RETURN                           R9 -1
       80 GETUPVAL                         R9 15
       81 JUMPIFNOTEQ                      R0 R9 ; [+8]
       83 GETUPVAL                         R9 16
       84 MOVE                             R10 R2
       85 MOVE                             R11 R4
       86 MOVE                             R12 R5
       87 MOVE                             R13 R1
       88 CALL                             R9 4 -1
       89 RETURN                           R9 -1
       90 GETUPVAL                         R9 17
       91 JUMPIFNOTEQ                      R0 R9 ; [+8]
       93 GETUPVAL                         R9 18
       94 MOVE                             R10 R2
       95 MOVE                             R11 R4
       96 MOVE                             R12 R5
       97 MOVE                             R13 R1
       98 CALL                             R9 4 -1
       99 RETURN                           R9 -1
      100 GETUPVAL                         R9 19
      101 JUMPIFNOTEQ                      R0 R9 ; [+8]
      103 GETUPVAL                         R9 20
      104 MOVE                             R10 R2
      105 MOVE                             R11 R4
      106 MOVE                             R12 R5
      107 MOVE                             R13 R1
      108 CALL                             R9 4 -1
      109 RETURN                           R9 -1
      110 LOADB                            R9 0
      111 LOADNIL                          R10
      112 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+39]
      114 GETTABLEKS                       R10 R0 K10 ["$$typeof"]
      116 GETUPVAL                         R11 21
      117 JUMPIFNOTEQ                      R10 R11 ; [+4]
      119 GETUPVAL                         R6 22
      120 LOADB                            R9 1
      121 JUMP                             ; [+30]
      122 GETUPVAL                         R11 23
      123 JUMPIFNOTEQ                      R10 R11 ; [+4]
      125 GETUPVAL                         R6 24
      126 LOADB                            R9 1
      127 JUMP                             ; [+24]
      128 GETUPVAL                         R11 25
      129 JUMPIFNOTEQ                      R10 R11 ; [+10]
      131 GETUPVAL                         R6 26
      132 GETUPVAL                         R11 1
      133 JUMPIFNOT                        R11 ; [+4]
      134 GETUPVAL                         R11 27
      135 MOVE                             R12 R7
      136 CALL                             R11 1 1
      137 MOVE                             R7 R11
      138 LOADB                            R9 1
      139 JUMP                             ; [+12]
      140 GETUPVAL                         R11 28
      141 JUMPIFNOTEQ                      R10 R11 ; [+4]
      143 GETUPVAL                         R6 29
      144 LOADB                            R9 1
      145 JUMP                             ; [+6]
      146 GETUPVAL                         R11 30
      147 JUMPIFNOTEQ                      R10 R11 ; [+4]
      149 GETUPVAL                         R6 31
      150 LOADNIL                          R7
      151 LOADB                            R9 1
      152 JUMPIF                           R9 ; [+92]
      153 LOADK                            R11 K11 [""]
      154 GETUPVAL                         R12 1
      155 JUMPIFNOT                        R12 ; [+52]
      156 JUMPIFEQKNIL                     R0 ; [+11]
      158 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+15]
      160 GETUPVAL                         R14 32
      161 GETTABLEKS                       R13 R14 K12 ["keys"]
      163 MOVE                             R14 R0
      164 CALL                             R13 1 1
      165 LENGTH                           R12 R13
      166 JUMPIFNOTEQKN                    R12 K13 [0] ; [+7]
      168 MOVE                             R12 R11
      169 LOADK                            R13 K14 [" You likely forgot to export your component from the file "]
      170 LOADK                            R14 K15 ["it's defined in, or you might have mixed up default and "]
      171 LOADK                            R15 K16 ["named imports."]
      172 CONCAT                           R11 R12 R15
      173 JUMP                             ; [+10]
      174 JUMPIFEQKNIL                     R0 ; [+9]
      176 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+7]
      178 MOVE                             R12 R11
      179 LOADK                            R13 K17 ["\n"]
      180 GETUPVAL                         R14 33
      181 MOVE                             R15 R0
      182 CALL                             R14 1 1
      183 CONCAT                           R11 R12 R14
      184 LOADNIL                          R12
      185 JUMPIFNOT                        R3 ; [+5]
      186 GETUPVAL                         R13 34
      187 GETTABLEKS                       R14 R3 K0 ["type"]
      189 CALL                             R13 1 1
      190 MOVE                             R12 R13
      191 JUMPIFEQKNIL                     R12 ; [+9]
      193 JUMPIFEQKS                       R12 K11 [""] ; [+7]
      195 MOVE                             R13 R11
      196 LOADK                            R14 K18 ["\n\nCheck the render method of `"]
      197 MOVE                             R15 R12
      198 LOADK                            R16 K19 ["`."]
      199 CONCAT                           R11 R13 R16
      200 JUMP                             ; [+7]
      201 JUMPIFNOT                        R3 ; [+6]
      202 MOVE                             R13 R11
      203 LOADK                            R14 K17 ["\n"]
      204 GETUPVAL                         R15 33
      205 MOVE                             R16 R3
      206 CALL                             R15 1 1
      207 CONCAT                           R11 R13 R15
      208 LOADNIL                          R12
      209 JUMPIFNOTEQKNIL                  R0 ; [+3]
      211 LOADK                            R12 K20 ["nil"]
      212 JUMP                             ; [+26]
      213 GETUPVAL                         R14 35
      214 GETTABLEKS                       R13 R14 K21 ["isArray"]
      216 MOVE                             R14 R0
      217 CALL                             R13 1 1
      218 JUMPIFNOT                        R13 ; [+2]
      219 LOADK                            R12 K22 ["array"]
      220 JUMP                             ; [+18]
      221 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+16]
      223 GETUPVAL                         R13 36
      224 JUMPIFNOTEQ                      R10 R13 ; [+13]
      226 GETIMPORT                        R13 K24 [string.format]
      228 LOADK                            R14 K25 ["<%s />"]
      229 GETUPVAL                         R16 34
      230 GETTABLEKS                       R17 R0 K0 ["type"]
      232 CALL                             R16 1 1
      233 ORK                              R15 R16 K26 ["Unknown"]
      234 CALL                             R13 2 1
      235 MOVE                             R12 R13
      236 LOADK                            R11 K27 [" Did you accidentally export a JSX literal or Element instead of a component?"]
      237 JUMP                             ; [+1]
      238 MOVE                             R12 R8
      239 GETUPVAL                         R13 37
      240 LOADB                            R14 0
      241 LOADK                            R15 K28 ["Element type is invalid: expected a string (for built-in components) or a class/function (for composite components) but got: %s.%s"]
      242 MOVE                             R16 R12
      243 MOVE                             R17 R11
      244 CALL                             R13 4 0
      245 GETUPVAL                         R9 38
      246 MOVE                             R10 R6
      247 MOVE                             R11 R2
      248 MOVE                             R12 R1
      249 MOVE                             R13 R4
      250 MOVE                             R14 R0
      251 MOVE                             R15 R7
      252 LOADNIL                          R16
      253 MOVE                             R17 R5
      254 CALL                             R9 8 1
      255 GETUPVAL                         R10 1
      256 JUMPIFNOT                        R10 ; [+2]
      257 SETTABLEKS                       R3 R9 K29 ["_debugOwner"]
      259 RETURN                           R9 1

PROTO_8:
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 JUMPIFNOT                        R4 ; [+2]
        3 GETTABLEKS                       R3 R0 K0 ["_owner"]
        5 GETTABLEKS                       R4 R0 K1 ["type"]
        7 GETTABLEKS                       R5 R0 K2 ["key"]
        9 GETTABLEKS                       R6 R0 K3 ["props"]
       11 GETUPVAL                         R7 1
       12 MOVE                             R8 R4
       13 MOVE                             R9 R5
       14 MOVE                             R10 R6
       15 MOVE                             R11 R3
       16 MOVE                             R12 R1
       17 MOVE                             R13 R2
       18 CALL                             R7 6 1
       19 GETUPVAL                         R8 0
       20 JUMPIFNOT                        R8 ; [+8]
       21 GETTABLEKS                       R8 R0 K4 ["_source"]
       23 SETTABLEKS                       R8 R7 K5 ["_debugSource"]
       25 GETTABLEKS                       R8 R0 K0 ["_owner"]
       27 SETTABLEKS                       R8 R7 K6 ["_debugOwner"]
       29 RETURN                           R7 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R3
        4 MOVE                             R8 R1
        5 LOADNIL                          R9
        6 LOADNIL                          R10
        7 LOADNIL                          R11
        8 MOVE                             R12 R2
        9 CALL                             R4 8 1
       10 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R1
        3 MOVE                             R8 R4
        4 MOVE                             R9 R2
        5 MOVE                             R10 R0
        6 MOVE                             R11 R0
        7 LOADNIL                          R12
        8 MOVE                             R13 R3
        9 CALL                             R5 8 1
       10 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R1
        3 MOVE                             R8 R4
        4 MOVE                             R9 R2
        5 MOVE                             R10 R0
        6 MOVE                             R11 R0
        7 LOADNIL                          R12
        8 MOVE                             R13 R3
        9 CALL                             R5 8 1
       10 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+13]
        2 GETTABLEKS                       R5 R0 K0 ["id"]
        4 FASTCALL1                        TYPEOF R5 ; [+2]
        5 GETIMPORT                        R4 K2 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K3 ["string"] ; [+6]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K4 ["error"]
       13 LOADK                            R5 K5 ["Profiler must specify an \"id\" as a prop"]
       14 CALL                             R4 1 0
       15 GETUPVAL                         R4 2
       16 GETUPVAL                         R5 3
       17 MOVE                             R6 R0
       18 MOVE                             R7 R3
       19 GETUPVAL                         R10 4
       20 FASTCALL2                        BIT32_BOR R1 R10 ; [+4]
       22 MOVE                             R9 R1
       23 GETIMPORT                        R8 K8 [bit32.bor]
       25 CALL                             R8 2 1
       26 GETUPVAL                         R9 5
       27 GETUPVAL                         R10 5
       28 GETUPVAL                         R12 6
       29 JUMPIFNOT                        R12 ; [+8]
       30 DUPTABLE                         R11 K11 [{"effectDuration", "passiveEffectDuration"}]
       31 LOADN                            R12 0
       32 SETTABLEKS                       R12 R11 K9 ["effectDuration"]
       34 LOADN                            R12 0
       35 SETTABLEKS                       R12 R11 K10 ["passiveEffectDuration"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R11
       39 MOVE                             R12 R2
       40 CALL                             R4 8 1
       41 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R3
        4 MOVE                             R8 R1
        5 GETUPVAL                         R9 2
        6 GETUPVAL                         R10 2
        7 LOADNIL                          R11
        8 MOVE                             R12 R2
        9 CALL                             R4 8 1
       10 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R3
        4 MOVE                             R8 R1
        5 GETUPVAL                         R9 2
        6 GETUPVAL                         R11 3
        7 JUMPIFNOT                        R11 ; [+2]
        8 GETUPVAL                         R10 2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R10
       11 LOADNIL                          R11
       12 MOVE                             R12 R2
       13 CALL                             R4 8 1
       14 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R3
        4 MOVE                             R8 R1
        5 GETUPVAL                         R9 2
        6 GETUPVAL                         R11 3
        7 JUMPIFNOT                        R11 ; [+2]
        8 GETUPVAL                         R10 2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R10
       11 LOADNIL                          R11
       12 MOVE                             R12 R2
       13 CALL                             R4 8 1
       14 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R3
        4 MOVE                             R8 R1
        5 GETUPVAL                         R9 2
        6 GETUPVAL                         R11 3
        7 JUMPIFNOT                        R11 ; [+2]
        8 GETUPVAL                         R10 2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R10
       11 LOADNIL                          R11
       12 MOVE                             R12 R2
       13 CALL                             R4 8 1
       14 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 MOVE                             R7 R1
        5 LOADNIL                          R8
        6 LOADNIL                          R9
        7 LOADNIL                          R10
        8 MOVE                             R11 R2
        9 CALL                             R3 8 1
       10 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 2
        5 LOADK                            R5 K0 ["DELETED"]
        6 LOADK                            R6 K0 ["DELETED"]
        7 CALL                             R0 6 1
        8 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 MOVE                             R8 R0
        8 CALL                             R1 7 1
        9 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R4 R0 K0 ["children"]
        2 JUMPIFEQKNIL                     R4 ; [+4]
        4 GETTABLEKS                       R3 R0 K0 ["children"]
        6 JUMP                             ; [+2]
        7 NEWTABLE                         R3 0 0
        9 GETUPVAL                         R4 0
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R3
       12 GETTABLEKS                       R7 R0 K1 ["key"]
       14 MOVE                             R8 R1
       15 LOADNIL                          R9
       16 LOADNIL                          R10
       17 DUPTABLE                         R11 K5 [{"containerInfo", "pendingChildren", "implementation"}]
       18 GETTABLEKS                       R12 R0 K2 ["containerInfo"]
       20 SETTABLEKS                       R12 R11 K2 ["containerInfo"]
       22 LOADNIL                          R12
       23 SETTABLEKS                       R12 R11 K3 ["pendingChildren"]
       25 GETTABLEKS                       R12 R0 K4 ["implementation"]
       27 SETTABLEKS                       R12 R11 K4 ["implementation"]
       29 MOVE                             R12 R2
       30 CALL                             R4 8 1
       31 RETURN                           R4 1

PROTO_21:
        0 JUMPIFNOTEQKNIL                  R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 GETUPVAL                         R6 2
        7 CALL                             R2 4 1
        8 MOVE                             R0 R2
        9 GETTABLEKS                       R2 R1 K0 ["tag"]
       11 SETTABLEKS                       R2 R0 K0 ["tag"]
       13 GETTABLEKS                       R2 R1 K1 ["key"]
       15 SETTABLEKS                       R2 R0 K1 ["key"]
       17 GETTABLEKS                       R2 R1 K2 ["elementType"]
       19 SETTABLEKS                       R2 R0 K2 ["elementType"]
       21 GETTABLEKS                       R2 R1 K3 ["type"]
       23 SETTABLEKS                       R2 R0 K3 ["type"]
       25 GETTABLEKS                       R2 R1 K4 ["stateNode"]
       27 SETTABLEKS                       R2 R0 K4 ["stateNode"]
       29 GETTABLEKS                       R2 R1 K5 ["return_"]
       31 SETTABLEKS                       R2 R0 K5 ["return_"]
       33 GETTABLEKS                       R2 R1 K6 ["child"]
       35 SETTABLEKS                       R2 R0 K6 ["child"]
       37 GETTABLEKS                       R2 R1 K7 ["sibling"]
       39 SETTABLEKS                       R2 R0 K7 ["sibling"]
       41 GETTABLEKS                       R2 R1 K8 ["index"]
       43 SETTABLEKS                       R2 R0 K8 ["index"]
       45 GETTABLEKS                       R2 R1 K9 ["ref"]
       47 SETTABLEKS                       R2 R0 K9 ["ref"]
       49 GETTABLEKS                       R2 R1 K10 ["pendingProps"]
       51 SETTABLEKS                       R2 R0 K10 ["pendingProps"]
       53 GETTABLEKS                       R2 R1 K11 ["memoizedProps"]
       55 SETTABLEKS                       R2 R0 K11 ["memoizedProps"]
       57 GETTABLEKS                       R2 R1 K12 ["updateQueue"]
       59 SETTABLEKS                       R2 R0 K12 ["updateQueue"]
       61 GETTABLEKS                       R2 R1 K13 ["memoizedState"]
       63 SETTABLEKS                       R2 R0 K13 ["memoizedState"]
       65 GETTABLEKS                       R2 R1 K14 ["dependencies"]
       67 SETTABLEKS                       R2 R0 K14 ["dependencies"]
       69 GETTABLEKS                       R2 R1 K15 ["mode"]
       71 SETTABLEKS                       R2 R0 K15 ["mode"]
       73 GETTABLEKS                       R2 R1 K16 ["flags"]
       75 SETTABLEKS                       R2 R0 K16 ["flags"]
       77 GETTABLEKS                       R2 R1 K17 ["subtreeFlags"]
       79 SETTABLEKS                       R2 R0 K17 ["subtreeFlags"]
       81 GETTABLEKS                       R2 R1 K18 ["deletions"]
       83 SETTABLEKS                       R2 R0 K18 ["deletions"]
       85 GETTABLEKS                       R2 R1 K19 ["lanes"]
       87 SETTABLEKS                       R2 R0 K19 ["lanes"]
       89 GETTABLEKS                       R2 R1 K20 ["childLanes"]
       91 SETTABLEKS                       R2 R0 K20 ["childLanes"]
       93 GETTABLEKS                       R2 R1 K21 ["alternate"]
       95 SETTABLEKS                       R2 R0 K21 ["alternate"]
       97 GETUPVAL                         R2 3
       98 JUMPIFNOT                        R2 ; [+16]
       99 GETTABLEKS                       R2 R1 K22 ["actualDuration"]
      101 SETTABLEKS                       R2 R0 K22 ["actualDuration"]
      103 GETTABLEKS                       R2 R1 K23 ["actualStartTime"]
      105 SETTABLEKS                       R2 R0 K23 ["actualStartTime"]
      107 GETTABLEKS                       R2 R1 K24 ["selfBaseDuration"]
      109 SETTABLEKS                       R2 R0 K24 ["selfBaseDuration"]
      111 GETTABLEKS                       R2 R1 K25 ["treeBaseDuration"]
      113 SETTABLEKS                       R2 R0 K25 ["treeBaseDuration"]
      115 GETTABLEKS                       R2 R1 K26 ["_debugID"]
      117 SETTABLEKS                       R2 R0 K26 ["_debugID"]
      119 GETTABLEKS                       R2 R1 K27 ["_debugSource"]
      121 SETTABLEKS                       R2 R0 K27 ["_debugSource"]
      123 GETTABLEKS                       R2 R1 K28 ["_debugOwner"]
      125 SETTABLEKS                       R2 R0 K28 ["_debugOwner"]
      127 GETTABLEKS                       R2 R1 K29 ["_debugNeedsRemount"]
      129 SETTABLEKS                       R2 R0 K29 ["_debugNeedsRemount"]
      131 GETTABLEKS                       R2 R1 K30 ["_debugHookTypes"]
      133 SETTABLEKS                       R2 R0 K30 ["_debugHookTypes"]
      135 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Object"]
       19 GETTABLEKS                       R4 R2 K8 ["Array"]
       21 GETTABLEKS                       R6 R2 K9 ["util"]
       23 GETTABLEKS                       R5 R6 K10 ["inspect"]
       25 GETTABLEKS                       R6 R1 K11 ["__DEV__"]
       27 GETIMPORT                        R8 K4 [require]
       29 GETTABLEKS                       R9 R0 K12 ["Shared"]
       31 CALL                             R8 1 1
       32 GETTABLEKS                       R7 R8 K13 ["console"]
       34 GETIMPORT                        R8 K4 [require]
       36 GETTABLEKS                       R9 R0 K12 ["Shared"]
       38 CALL                             R8 1 1
       39 GETIMPORT                        R9 K4 [require]
       41 GETIMPORT                        R12 K1 [script]
       43 GETTABLEKS                       R11 R12 K2 ["Parent"]
       45 GETTABLEKS                       R10 R11 K14 ["ReactInternalTypes"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K4 [require]
       50 GETIMPORT                        R13 K1 [script]
       52 GETTABLEKS                       R12 R13 K2 ["Parent"]
       54 GETTABLEKS                       R11 R12 K15 ["ReactRootTags"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K4 [require]
       59 GETIMPORT                        R14 K1 [script]
       61 GETTABLEKS                       R13 R14 K2 ["Parent"]
       63 GETTABLEKS                       R12 R13 K16 ["ReactWorkTags"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K4 [require]
       68 GETIMPORT                        R15 K1 [script]
       70 GETTABLEKS                       R14 R15 K2 ["Parent"]
       72 GETTABLEKS                       R13 R14 K17 ["ReactTypeOfMode"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K4 [require]
       77 GETIMPORT                        R16 K1 [script]
       79 GETTABLEKS                       R15 R16 K2 ["Parent"]
       81 GETTABLEKS                       R14 R15 K18 ["ReactFiberLane"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K4 [require]
       86 GETIMPORT                        R17 K1 [script]
       88 GETTABLEKS                       R16 R17 K2 ["Parent"]
       90 GETTABLEKS                       R15 R16 K19 ["ReactFiberHostConfig"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K4 [require]
       95 GETIMPORT                        R18 K1 [script]
       97 GETTABLEKS                       R17 R18 K2 ["Parent"]
       99 GETTABLEKS                       R16 R17 K20 ["ReactFiberOffscreenComponent"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R17 K4 [require]
      104 GETTABLEKS                       R18 R0 K12 ["Shared"]
      106 CALL                             R17 1 1
      107 GETTABLEKS                       R16 R17 K21 ["invariant"]
      109 GETIMPORT                        R18 K4 [require]
      111 GETTABLEKS                       R19 R0 K12 ["Shared"]
      113 CALL                             R18 1 1
      114 GETTABLEKS                       R17 R18 K22 ["ReactFeatureFlags"]
      116 GETTABLEKS                       R18 R17 K23 ["enableProfilerTimer"]
      118 GETIMPORT                        R19 K4 [require]
      120 GETIMPORT                        R22 K1 [script]
      122 GETTABLEKS                       R21 R22 K2 ["Parent"]
      124 GETTABLEKS                       R20 R21 K24 ["ReactFiberFlags"]
      126 CALL                             R19 1 1
      127 GETTABLEKS                       R20 R19 K25 ["NoFlags"]
      129 GETTABLEKS                       R21 R19 K26 ["Placement"]
      131 GETTABLEKS                       R22 R19 K27 ["StaticMask"]
      133 GETTABLEKS                       R23 R10 K28 ["ConcurrentRoot"]
      135 GETTABLEKS                       R24 R10 K29 ["BlockingRoot"]
      137 GETTABLEKS                       R25 R11 K30 ["IndeterminateComponent"]
      139 GETTABLEKS                       R26 R11 K31 ["ClassComponent"]
      141 GETTABLEKS                       R27 R11 K32 ["HostRoot"]
      143 GETTABLEKS                       R28 R11 K33 ["HostComponent"]
      145 GETTABLEKS                       R29 R11 K34 ["HostText"]
      147 GETTABLEKS                       R30 R11 K35 ["HostPortal"]
      149 GETTABLEKS                       R31 R11 K36 ["ForwardRef"]
      151 GETTABLEKS                       R32 R11 K37 ["Fragment"]
      153 GETTABLEKS                       R33 R11 K38 ["Mode"]
      155 GETTABLEKS                       R34 R11 K39 ["ContextProvider"]
      157 GETTABLEKS                       R35 R11 K40 ["ContextConsumer"]
      159 GETTABLEKS                       R36 R11 K41 ["Profiler"]
      161 GETTABLEKS                       R37 R11 K42 ["SuspenseComponent"]
      163 GETTABLEKS                       R38 R11 K43 ["SuspenseListComponent"]
      165 GETTABLEKS                       R39 R11 K44 ["DehydratedFragment"]
      167 GETTABLEKS                       R40 R11 K45 ["FunctionComponent"]
      169 GETTABLEKS                       R41 R11 K46 ["MemoComponent"]
      171 GETTABLEKS                       R42 R11 K47 ["SimpleMemoComponent"]
      173 GETTABLEKS                       R43 R11 K48 ["LazyComponent"]
      175 GETTABLEKS                       R44 R11 K49 ["FundamentalComponent"]
      177 GETTABLEKS                       R45 R11 K50 ["ScopeComponent"]
      179 GETTABLEKS                       R46 R11 K51 ["OffscreenComponent"]
      181 GETTABLEKS                       R47 R11 K52 ["LegacyHiddenComponent"]
      183 GETIMPORT                        R49 K4 [require]
      185 GETTABLEKS                       R50 R0 K12 ["Shared"]
      187 CALL                             R49 1 1
      188 GETTABLEKS                       R48 R49 K53 ["getComponentName"]
      190 GETIMPORT                        R49 K4 [require]
      192 GETIMPORT                        R52 K1 [script]
      194 GETTABLEKS                       R51 R52 K2 ["Parent"]
      196 GETTABLEKS                       R50 R51 K54 ["ReactFiberDevToolsHook.new"]
      198 CALL                             R49 1 1
      199 GETTABLEKS                       R50 R49 K55 ["isDevToolsPresent"]
      201 GETIMPORT                        R51 K4 [require]
      203 GETIMPORT                        R54 K1 [script]
      205 GETTABLEKS                       R53 R54 K2 ["Parent"]
      207 GETTABLEKS                       R52 R53 K56 ["ReactFiberHotReloading.new"]
      209 CALL                             R51 1 1
      210 GETTABLEKS                       R52 R51 K57 ["resolveClassForHotReloading"]
      212 GETTABLEKS                       R53 R51 K58 ["resolveFunctionForHotReloading"]
      214 GETTABLEKS                       R54 R51 K59 ["resolveForwardRefForHotReloading"]
      216 GETTABLEKS                       R55 R13 K60 ["NoLanes"]
      218 GETTABLEKS                       R56 R12 K61 ["NoMode"]
      220 GETTABLEKS                       R57 R12 K62 ["ConcurrentMode"]
      222 GETTABLEKS                       R58 R12 K63 ["DebugTracingMode"]
      224 GETTABLEKS                       R59 R12 K64 ["ProfileMode"]
      226 GETTABLEKS                       R60 R12 K65 ["StrictMode"]
      228 GETTABLEKS                       R61 R12 K66 ["BlockingMode"]
      230 GETIMPORT                        R63 K4 [require]
      232 GETTABLEKS                       R64 R0 K12 ["Shared"]
      234 CALL                             R63 1 1
      235 GETTABLEKS                       R62 R63 K67 ["ReactSymbols"]
      237 GETTABLEKS                       R63 R62 K68 ["REACT_FORWARD_REF_TYPE"]
      239 GETTABLEKS                       R64 R62 K69 ["REACT_FRAGMENT_TYPE"]
      241 GETTABLEKS                       R65 R62 K70 ["REACT_ELEMENT_TYPE"]
      243 GETTABLEKS                       R66 R62 K71 ["REACT_DEBUG_TRACING_MODE_TYPE"]
      245 GETTABLEKS                       R67 R62 K72 ["REACT_STRICT_MODE_TYPE"]
      247 GETTABLEKS                       R68 R62 K73 ["REACT_PROFILER_TYPE"]
      249 GETTABLEKS                       R69 R62 K74 ["REACT_PROVIDER_TYPE"]
      251 GETTABLEKS                       R70 R62 K75 ["REACT_CONTEXT_TYPE"]
      253 GETTABLEKS                       R71 R62 K76 ["REACT_SUSPENSE_TYPE"]
      255 GETTABLEKS                       R72 R62 K77 ["REACT_SUSPENSE_LIST_TYPE"]
      257 GETTABLEKS                       R73 R62 K78 ["REACT_MEMO_TYPE"]
      259 GETTABLEKS                       R74 R62 K79 ["REACT_LAZY_TYPE"]
      261 GETTABLEKS                       R75 R62 K80 ["REACT_OFFSCREEN_TYPE"]
      263 GETTABLEKS                       R76 R62 K81 ["REACT_LEGACY_HIDDEN_TYPE"]
      265 LOADNIL                          R77
      266 LOADNIL                          R78
      267 LOADNIL                          R79
      268 LOADNIL                          R80
      269 LOADNIL                          R81
      270 LOADNIL                          R82
      271 LOADNIL                          R83
      272 LOADNIL                          R84
      273 LOADN                            R85 1
      274 NEWCLOSURE                       R86 P0
      275 CAPTURE                          VAL R20
      276 CAPTURE                          VAL R55
      277 CAPTURE                          VAL R18
      278 CAPTURE                          VAL R6
      279 CAPTURE                          REF R85
      280 DUPCLOSURE                       R87 K82 [PROTO_1]
      281 SETGLOBAL                        R87 K83 ["_shouldConstruct"]
      283 DUPCLOSURE                       R87 K84 [PROTO_2]
      284 DUPCLOSURE                       R88 K85 [PROTO_3]
      285 CAPTURE                          VAL R40
      286 CAPTURE                          VAL R26
      287 CAPTURE                          VAL R63
      288 CAPTURE                          VAL R31
      289 CAPTURE                          VAL R73
      290 CAPTURE                          VAL R41
      291 CAPTURE                          VAL R25
      292 DUPCLOSURE                       R89 K86 [PROTO_4]
      293 CAPTURE                          VAL R86
      294 CAPTURE                          VAL R6
      295 CAPTURE                          VAL R20
      296 CAPTURE                          VAL R18
      297 CAPTURE                          VAL R22
      298 CAPTURE                          VAL R25
      299 CAPTURE                          VAL R40
      300 CAPTURE                          VAL R42
      301 CAPTURE                          VAL R53
      302 CAPTURE                          VAL R26
      303 CAPTURE                          VAL R52
      304 CAPTURE                          VAL R31
      305 CAPTURE                          VAL R54
      306 DUPCLOSURE                       R90 K87 [PROTO_5]
      307 CAPTURE                          VAL R22
      308 CAPTURE                          VAL R21
      309 CAPTURE                          VAL R55
      310 CAPTURE                          VAL R20
      311 CAPTURE                          VAL R18
      312 DUPCLOSURE                       R91 K88 [PROTO_6]
      313 CAPTURE                          VAL R23
      314 CAPTURE                          VAL R57
      315 CAPTURE                          VAL R61
      316 CAPTURE                          VAL R60
      317 CAPTURE                          VAL R24
      318 CAPTURE                          VAL R56
      319 CAPTURE                          VAL R18
      320 CAPTURE                          VAL R50
      321 CAPTURE                          VAL R59
      322 CAPTURE                          VAL R86
      323 CAPTURE                          VAL R27
      324 NEWCLOSURE                       R92 P7
      325 CAPTURE                          VAL R25
      326 CAPTURE                          VAL R6
      327 CAPTURE                          VAL R53
      328 CAPTURE                          VAL R26
      329 CAPTURE                          VAL R52
      330 CAPTURE                          VAL R28
      331 CAPTURE                          VAL R64
      332 CAPTURE                          REF R79
      333 CAPTURE                          VAL R66
      334 CAPTURE                          VAL R33
      335 CAPTURE                          VAL R58
      336 CAPTURE                          VAL R67
      337 CAPTURE                          VAL R60
      338 CAPTURE                          VAL R68
      339 CAPTURE                          REF R78
      340 CAPTURE                          VAL R71
      341 CAPTURE                          REF R81
      342 CAPTURE                          VAL R75
      343 CAPTURE                          REF R82
      344 CAPTURE                          VAL R76
      345 CAPTURE                          REF R83
      346 CAPTURE                          VAL R69
      347 CAPTURE                          VAL R34
      348 CAPTURE                          VAL R70
      349 CAPTURE                          VAL R35
      350 CAPTURE                          VAL R63
      351 CAPTURE                          VAL R31
      352 CAPTURE                          VAL R54
      353 CAPTURE                          VAL R73
      354 CAPTURE                          VAL R41
      355 CAPTURE                          VAL R74
      356 CAPTURE                          VAL R43
      357 CAPTURE                          VAL R3
      358 CAPTURE                          VAL R5
      359 CAPTURE                          VAL R48
      360 CAPTURE                          VAL R4
      361 CAPTURE                          VAL R65
      362 CAPTURE                          VAL R16
      363 CAPTURE                          VAL R86
      364 DUPCLOSURE                       R93 K89 [PROTO_8]
      365 CAPTURE                          VAL R6
      366 CAPTURE                          VAL R92
      367 DUPCLOSURE                       R79 K90 [PROTO_9]
      368 CAPTURE                          VAL R86
      369 CAPTURE                          VAL R32
      370 DUPCLOSURE                       R80 K91 [PROTO_10]
      371 CAPTURE                          VAL R86
      372 CAPTURE                          VAL R44
      373 DUPCLOSURE                       R77 K92 [PROTO_11]
      374 CAPTURE                          VAL R86
      375 CAPTURE                          VAL R45
      376 DUPCLOSURE                       R78 K93 [PROTO_12]
      377 CAPTURE                          VAL R6
      378 CAPTURE                          VAL R7
      379 CAPTURE                          VAL R86
      380 CAPTURE                          VAL R36
      381 CAPTURE                          VAL R59
      382 CAPTURE                          VAL R68
      383 CAPTURE                          VAL R18
      384 DUPCLOSURE                       R81 K94 [PROTO_13]
      385 CAPTURE                          VAL R86
      386 CAPTURE                          VAL R37
      387 CAPTURE                          VAL R71
      388 DUPCLOSURE                       R84 K95 [PROTO_14]
      389 CAPTURE                          VAL R86
      390 CAPTURE                          VAL R38
      391 CAPTURE                          VAL R72
      392 CAPTURE                          VAL R6
      393 DUPCLOSURE                       R82 K96 [PROTO_15]
      394 CAPTURE                          VAL R86
      395 CAPTURE                          VAL R46
      396 CAPTURE                          VAL R75
      397 CAPTURE                          VAL R6
      398 DUPCLOSURE                       R83 K97 [PROTO_16]
      399 CAPTURE                          VAL R86
      400 CAPTURE                          VAL R47
      401 CAPTURE                          VAL R76
      402 CAPTURE                          VAL R6
      403 DUPCLOSURE                       R94 K98 [PROTO_17]
      404 CAPTURE                          VAL R86
      405 CAPTURE                          VAL R29
      406 DUPCLOSURE                       R95 K99 [PROTO_18]
      407 CAPTURE                          VAL R86
      408 CAPTURE                          VAL R28
      409 CAPTURE                          VAL R56
      410 DUPCLOSURE                       R96 K100 [PROTO_19]
      411 CAPTURE                          VAL R86
      412 CAPTURE                          VAL R39
      413 CAPTURE                          VAL R56
      414 DUPCLOSURE                       R97 K101 [PROTO_20]
      415 CAPTURE                          VAL R86
      416 CAPTURE                          VAL R30
      417 DUPCLOSURE                       R98 K102 [PROTO_21]
      418 CAPTURE                          VAL R86
      419 CAPTURE                          VAL R25
      420 CAPTURE                          VAL R56
      421 CAPTURE                          VAL R18
      422 DUPTABLE                         R99 K121 [{"isSimpleFunctionComponent", "resolveLazyComponentTag", "createWorkInProgress", "resetWorkInProgress", "createHostRootFiber", "createFiberFromTypeAndProps", "createFiberFromElement", "createFiberFromFragment", "createFiberFromFundamental", "createFiberFromSuspense", "createFiberFromSuspenseList", "createFiberFromOffscreen", "createFiberFromLegacyHidden", "createFiberFromText", "createFiberFromHostInstanceForDeletion", "createFiberFromDehydratedFragment", "createFiberFromPortal", "assignFiberPropertiesInDEV"}]
      423 SETTABLEKS                       R87 R99 K103 ["isSimpleFunctionComponent"]
      425 SETTABLEKS                       R88 R99 K104 ["resolveLazyComponentTag"]
      427 SETTABLEKS                       R89 R99 K105 ["createWorkInProgress"]
      429 SETTABLEKS                       R90 R99 K106 ["resetWorkInProgress"]
      431 SETTABLEKS                       R91 R99 K107 ["createHostRootFiber"]
      433 SETTABLEKS                       R92 R99 K108 ["createFiberFromTypeAndProps"]
      435 SETTABLEKS                       R93 R99 K109 ["createFiberFromElement"]
      437 SETTABLEKS                       R79 R99 K110 ["createFiberFromFragment"]
      439 SETTABLEKS                       R80 R99 K111 ["createFiberFromFundamental"]
      441 SETTABLEKS                       R81 R99 K112 ["createFiberFromSuspense"]
      443 SETTABLEKS                       R84 R99 K113 ["createFiberFromSuspenseList"]
      445 SETTABLEKS                       R82 R99 K114 ["createFiberFromOffscreen"]
      447 SETTABLEKS                       R83 R99 K115 ["createFiberFromLegacyHidden"]
      449 SETTABLEKS                       R94 R99 K116 ["createFiberFromText"]
      451 SETTABLEKS                       R95 R99 K117 ["createFiberFromHostInstanceForDeletion"]
      453 SETTABLEKS                       R96 R99 K118 ["createFiberFromDehydratedFragment"]
      455 SETTABLEKS                       R97 R99 K119 ["createFiberFromPortal"]
      457 SETTABLEKS                       R98 R99 K120 ["assignFiberPropertiesInDEV"]
      459 CLOSEUPVALS                      R78
      460 RETURN                           R99 1
