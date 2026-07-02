PROTO_0:
        0 DUPTABLE                         R8 K13 [{[1], ["key"], ["elementType"], ["type"], ["stateNode"], ["index"] = 1, ["pendingProps"], ["mode"], ["flags"], ["subtreeFlags"], ["lanes"], ["childLanes"]}]
        1 SETTABLEKS                       R0 R8 K0 ["tag"]
        3 SETTABLEKS                       R2 R8 K1 ["key"]
        5 SETTABLEKS                       R4 R8 K2 ["elementType"]
        7 SETTABLEKS                       R5 R8 K3 ["type"]
        9 SETTABLEKS                       R6 R8 K4 ["stateNode"]
       11 SETTABLEKS                       R1 R8 K7 ["pendingProps"]
       13 SETTABLEKS                       R3 R8 K8 ["mode"]
       15 GETUPVAL                         R9 0
       16 SETTABLEKS                       R9 R8 K9 ["flags"]
       18 GETUPVAL                         R9 0
       19 SETTABLEKS                       R9 R8 K10 ["subtreeFlags"]
       21 JUMPIFNOT                        R7 ; [+2]
       22 MOVE                             R9 R7
       23 JUMP                             ; [+1]
       24 GETUPVAL                         R9 1
       25 SETTABLEKS                       R9 R8 K11 ["lanes"]
       27 GETUPVAL                         R9 1
       28 SETTABLEKS                       R9 R8 K12 ["childLanes"]
       30 GETUPVAL                         R9 2
       31 JUMPIFNOT                        R9 ; [+12]
       32 LOADN                            R9 0
       33 SETTABLEKS                       R9 R8 K14 ["actualDuration"]
       35 LOADN                            R9 -1
       36 SETTABLEKS                       R9 R8 K15 ["actualStartTime"]
       38 LOADN                            R9 0
       39 SETTABLEKS                       R9 R8 K16 ["selfBaseDuration"]
       41 LOADN                            R9 0
       42 SETTABLEKS                       R9 R8 K17 ["treeBaseDuration"]
       44 GETUPVAL                         R9 3
       45 JUMPIFNOT                        R9 ; [+18]
       46 GETUPVAL                         R9 4
       47 SETTABLEKS                       R9 R8 K18 ["_debugID"]
       49 GETUPVAL                         R9 4
       50 ADDK                             R9 R9 K6 [1]
       51 SETUPVAL                         R9 4
       52 LOADNIL                          R9
       53 SETTABLEKS                       R9 R8 K19 ["_debugSource"]
       55 LOADNIL                          R9
       56 SETTABLEKS                       R9 R8 K20 ["_debugOwner"]
       58 LOADB                            R9 0
       59 SETTABLEKS                       R9 R8 K21 ["_debugNeedsRemount"]
       61 LOADNIL                          R9
       62 SETTABLEKS                       R9 R8 K22 ["_debugHookTypes"]
       64 RETURN                           R8 1

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
       63 LOADN                            R3 -1
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
      160 GETUPVAL                         R13 32
      161 GETTABLEKS                       R13 R13 K12 ["keys"]
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
      213 GETUPVAL                         R13 35
      214 GETTABLEKS                       R13 R13 K21 ["isArray"]
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
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["error"]
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
       29 JUMPIFNOT                        R12 ; [+2]
       30 DUPTABLE                         R11 K12 [{["effectDuration"] = 0, ["passiveEffectDuration"] = 0}]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R11
       33 MOVE                             R12 R2
       34 CALL                             R4 8 1
       35 RETURN                           R4 1

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
       17 DUPTABLE                         R11 K6 [{["containerInfo"], ["pendingChildren"] = , ["implementation"]}]
       18 GETTABLEKS                       R12 R0 K2 ["containerInfo"]
       20 SETTABLEKS                       R12 R11 K2 ["containerInfo"]
       22 GETTABLEKS                       R12 R0 K5 ["implementation"]
       24 SETTABLEKS                       R12 R11 K5 ["implementation"]
       26 MOVE                             R12 R2
       27 CALL                             R4 8 1
       28 RETURN                           R4 1

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
        1 GETIMPORT                        R0 K1 [_G]
        3 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        5 GETIMPORT                        R1 K4 [script]
        7 GETTABLEKS                       R1 R1 K5 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Parent"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K9 ["Object"]
       18 GETTABLEKS                       R4 R2 K10 ["Array"]
       20 GETTABLEKS                       R5 R2 K11 ["util"]
       22 GETTABLEKS                       R5 R5 K12 ["inspect"]
       24 GETIMPORT                        R6 K7 [require]
       26 GETTABLEKS                       R7 R1 K13 ["Shared"]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R6 R6 K14 ["console"]
       31 GETIMPORT                        R7 K7 [require]
       33 GETTABLEKS                       R8 R1 K13 ["Shared"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K7 [require]
       38 GETIMPORT                        R9 K4 [script]
       40 GETTABLEKS                       R9 R9 K5 ["Parent"]
       42 GETTABLEKS                       R9 R9 K15 ["ReactInternalTypes"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K7 [require]
       47 GETIMPORT                        R10 K4 [script]
       49 GETTABLEKS                       R10 R10 K5 ["Parent"]
       51 GETTABLEKS                       R10 R10 K16 ["ReactRootTags"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K7 [require]
       56 GETIMPORT                        R11 K4 [script]
       58 GETTABLEKS                       R11 R11 K5 ["Parent"]
       60 GETTABLEKS                       R11 R11 K17 ["ReactWorkTags"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K7 [require]
       65 GETIMPORT                        R12 K4 [script]
       67 GETTABLEKS                       R12 R12 K5 ["Parent"]
       69 GETTABLEKS                       R12 R12 K18 ["ReactTypeOfMode"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K7 [require]
       74 GETIMPORT                        R13 K4 [script]
       76 GETTABLEKS                       R13 R13 K5 ["Parent"]
       78 GETTABLEKS                       R13 R13 K19 ["ReactFiberLane"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K7 [require]
       83 GETIMPORT                        R14 K4 [script]
       85 GETTABLEKS                       R14 R14 K5 ["Parent"]
       87 GETTABLEKS                       R14 R14 K20 ["ReactFiberHostConfig"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K7 [require]
       92 GETIMPORT                        R15 K4 [script]
       94 GETTABLEKS                       R15 R15 K5 ["Parent"]
       96 GETTABLEKS                       R15 R15 K21 ["ReactFiberOffscreenComponent"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K7 [require]
      101 GETTABLEKS                       R16 R1 K13 ["Shared"]
      103 CALL                             R15 1 1
      104 GETTABLEKS                       R15 R15 K22 ["invariant"]
      106 GETIMPORT                        R16 K7 [require]
      108 GETTABLEKS                       R17 R1 K13 ["Shared"]
      110 CALL                             R16 1 1
      111 GETTABLEKS                       R16 R16 K23 ["ReactFeatureFlags"]
      113 GETTABLEKS                       R17 R16 K24 ["enableProfilerTimer"]
      115 GETIMPORT                        R18 K7 [require]
      117 GETIMPORT                        R19 K4 [script]
      119 GETTABLEKS                       R19 R19 K5 ["Parent"]
      121 GETTABLEKS                       R19 R19 K25 ["ReactFiberFlags"]
      123 CALL                             R18 1 1
      124 GETTABLEKS                       R19 R18 K26 ["NoFlags"]
      126 GETTABLEKS                       R20 R18 K27 ["Placement"]
      128 GETTABLEKS                       R21 R18 K28 ["StaticMask"]
      130 GETTABLEKS                       R22 R9 K29 ["ConcurrentRoot"]
      132 GETTABLEKS                       R23 R9 K30 ["BlockingRoot"]
      134 GETTABLEKS                       R24 R10 K31 ["IndeterminateComponent"]
      136 GETTABLEKS                       R25 R10 K32 ["ClassComponent"]
      138 GETTABLEKS                       R26 R10 K33 ["HostRoot"]
      140 GETTABLEKS                       R27 R10 K34 ["HostComponent"]
      142 GETTABLEKS                       R28 R10 K35 ["HostText"]
      144 GETTABLEKS                       R29 R10 K36 ["HostPortal"]
      146 GETTABLEKS                       R30 R10 K37 ["ForwardRef"]
      148 GETTABLEKS                       R31 R10 K38 ["Fragment"]
      150 GETTABLEKS                       R32 R10 K39 ["Mode"]
      152 GETTABLEKS                       R33 R10 K40 ["ContextProvider"]
      154 GETTABLEKS                       R34 R10 K41 ["ContextConsumer"]
      156 GETTABLEKS                       R35 R10 K42 ["Profiler"]
      158 GETTABLEKS                       R36 R10 K43 ["SuspenseComponent"]
      160 GETTABLEKS                       R37 R10 K44 ["SuspenseListComponent"]
      162 GETTABLEKS                       R38 R10 K45 ["DehydratedFragment"]
      164 GETTABLEKS                       R39 R10 K46 ["FunctionComponent"]
      166 GETTABLEKS                       R40 R10 K47 ["MemoComponent"]
      168 GETTABLEKS                       R41 R10 K48 ["SimpleMemoComponent"]
      170 GETTABLEKS                       R42 R10 K49 ["LazyComponent"]
      172 GETTABLEKS                       R43 R10 K50 ["FundamentalComponent"]
      174 GETTABLEKS                       R44 R10 K51 ["ScopeComponent"]
      176 GETTABLEKS                       R45 R10 K52 ["OffscreenComponent"]
      178 GETTABLEKS                       R46 R10 K53 ["LegacyHiddenComponent"]
      180 GETIMPORT                        R47 K7 [require]
      182 GETTABLEKS                       R48 R1 K13 ["Shared"]
      184 CALL                             R47 1 1
      185 GETTABLEKS                       R47 R47 K54 ["getComponentName"]
      187 GETIMPORT                        R48 K7 [require]
      189 GETIMPORT                        R50 K4 [script]
      191 GETTABLEKS                       R50 R50 K5 ["Parent"]
      193 GETTABLEKS                       R49 R50 K55 ["ReactFiberDevToolsHook.new"]
      195 CALL                             R48 1 1
      196 GETTABLEKS                       R49 R48 K56 ["isDevToolsPresent"]
      198 GETIMPORT                        R50 K7 [require]
      200 GETIMPORT                        R52 K4 [script]
      202 GETTABLEKS                       R52 R52 K5 ["Parent"]
      204 GETTABLEKS                       R51 R52 K57 ["ReactFiberHotReloading.new"]
      206 CALL                             R50 1 1
      207 GETTABLEKS                       R51 R50 K58 ["resolveClassForHotReloading"]
      209 GETTABLEKS                       R52 R50 K59 ["resolveFunctionForHotReloading"]
      211 GETTABLEKS                       R53 R50 K60 ["resolveForwardRefForHotReloading"]
      213 GETTABLEKS                       R54 R12 K61 ["NoLanes"]
      215 GETTABLEKS                       R55 R11 K62 ["NoMode"]
      217 GETTABLEKS                       R56 R11 K63 ["ConcurrentMode"]
      219 GETTABLEKS                       R57 R11 K64 ["DebugTracingMode"]
      221 GETTABLEKS                       R58 R11 K65 ["ProfileMode"]
      223 GETTABLEKS                       R59 R11 K66 ["StrictMode"]
      225 GETTABLEKS                       R60 R11 K67 ["BlockingMode"]
      227 GETIMPORT                        R61 K7 [require]
      229 GETTABLEKS                       R62 R1 K13 ["Shared"]
      231 CALL                             R61 1 1
      232 GETTABLEKS                       R61 R61 K68 ["ReactSymbols"]
      234 GETTABLEKS                       R62 R61 K69 ["REACT_FORWARD_REF_TYPE"]
      236 GETTABLEKS                       R63 R61 K70 ["REACT_FRAGMENT_TYPE"]
      238 GETTABLEKS                       R64 R61 K71 ["REACT_ELEMENT_TYPE"]
      240 GETTABLEKS                       R65 R61 K72 ["REACT_DEBUG_TRACING_MODE_TYPE"]
      242 GETTABLEKS                       R66 R61 K73 ["REACT_STRICT_MODE_TYPE"]
      244 GETTABLEKS                       R67 R61 K74 ["REACT_PROFILER_TYPE"]
      246 GETTABLEKS                       R68 R61 K75 ["REACT_PROVIDER_TYPE"]
      248 GETTABLEKS                       R69 R61 K76 ["REACT_CONTEXT_TYPE"]
      250 GETTABLEKS                       R70 R61 K77 ["REACT_SUSPENSE_TYPE"]
      252 GETTABLEKS                       R71 R61 K78 ["REACT_SUSPENSE_LIST_TYPE"]
      254 GETTABLEKS                       R72 R61 K79 ["REACT_MEMO_TYPE"]
      256 GETTABLEKS                       R73 R61 K80 ["REACT_LAZY_TYPE"]
      258 GETTABLEKS                       R74 R61 K81 ["REACT_OFFSCREEN_TYPE"]
      260 GETTABLEKS                       R75 R61 K82 ["REACT_LEGACY_HIDDEN_TYPE"]
      262 LOADNIL                          R76
      263 LOADNIL                          R77
      264 LOADNIL                          R78
      265 LOADNIL                          R79
      266 LOADNIL                          R80
      267 LOADNIL                          R81
      268 LOADNIL                          R82
      269 LOADNIL                          R83
      270 LOADN                            R84 1
      271 NEWCLOSURE                       R85 P0
      272 CAPTURE                          VAL R19
      273 CAPTURE                          VAL R54
      274 CAPTURE                          VAL R17
      275 CAPTURE                          VAL R0
      276 CAPTURE                          REF R84
      277 DUPCLOSURE                       R86 K83 [PROTO_1]
      278 SETGLOBAL                        R86 K84 ["_shouldConstruct"]
      280 DUPCLOSURE                       R86 K85 [PROTO_2]
      281 DUPCLOSURE                       R87 K86 [PROTO_3]
      282 CAPTURE                          VAL R39
      283 CAPTURE                          VAL R25
      284 CAPTURE                          VAL R62
      285 CAPTURE                          VAL R30
      286 CAPTURE                          VAL R72
      287 CAPTURE                          VAL R40
      288 CAPTURE                          VAL R24
      289 DUPCLOSURE                       R88 K87 [PROTO_4]
      290 CAPTURE                          VAL R85
      291 CAPTURE                          VAL R0
      292 CAPTURE                          VAL R19
      293 CAPTURE                          VAL R17
      294 CAPTURE                          VAL R21
      295 CAPTURE                          VAL R24
      296 CAPTURE                          VAL R39
      297 CAPTURE                          VAL R41
      298 CAPTURE                          VAL R52
      299 CAPTURE                          VAL R25
      300 CAPTURE                          VAL R51
      301 CAPTURE                          VAL R30
      302 CAPTURE                          VAL R53
      303 DUPCLOSURE                       R89 K88 [PROTO_5]
      304 CAPTURE                          VAL R21
      305 CAPTURE                          VAL R20
      306 CAPTURE                          VAL R54
      307 CAPTURE                          VAL R19
      308 CAPTURE                          VAL R17
      309 DUPCLOSURE                       R90 K89 [PROTO_6]
      310 CAPTURE                          VAL R22
      311 CAPTURE                          VAL R56
      312 CAPTURE                          VAL R60
      313 CAPTURE                          VAL R59
      314 CAPTURE                          VAL R23
      315 CAPTURE                          VAL R55
      316 CAPTURE                          VAL R17
      317 CAPTURE                          VAL R49
      318 CAPTURE                          VAL R58
      319 CAPTURE                          VAL R85
      320 CAPTURE                          VAL R26
      321 NEWCLOSURE                       R91 P7
      322 CAPTURE                          VAL R24
      323 CAPTURE                          VAL R0
      324 CAPTURE                          VAL R52
      325 CAPTURE                          VAL R25
      326 CAPTURE                          VAL R51
      327 CAPTURE                          VAL R27
      328 CAPTURE                          VAL R63
      329 CAPTURE                          REF R78
      330 CAPTURE                          VAL R65
      331 CAPTURE                          VAL R32
      332 CAPTURE                          VAL R57
      333 CAPTURE                          VAL R66
      334 CAPTURE                          VAL R59
      335 CAPTURE                          VAL R67
      336 CAPTURE                          REF R77
      337 CAPTURE                          VAL R70
      338 CAPTURE                          REF R80
      339 CAPTURE                          VAL R74
      340 CAPTURE                          REF R81
      341 CAPTURE                          VAL R75
      342 CAPTURE                          REF R82
      343 CAPTURE                          VAL R68
      344 CAPTURE                          VAL R33
      345 CAPTURE                          VAL R69
      346 CAPTURE                          VAL R34
      347 CAPTURE                          VAL R62
      348 CAPTURE                          VAL R30
      349 CAPTURE                          VAL R53
      350 CAPTURE                          VAL R72
      351 CAPTURE                          VAL R40
      352 CAPTURE                          VAL R73
      353 CAPTURE                          VAL R42
      354 CAPTURE                          VAL R3
      355 CAPTURE                          VAL R5
      356 CAPTURE                          VAL R47
      357 CAPTURE                          VAL R4
      358 CAPTURE                          VAL R64
      359 CAPTURE                          VAL R15
      360 CAPTURE                          VAL R85
      361 DUPCLOSURE                       R92 K90 [PROTO_8]
      362 CAPTURE                          VAL R0
      363 CAPTURE                          VAL R91
      364 DUPCLOSURE                       R78 K91 [PROTO_9]
      365 CAPTURE                          VAL R85
      366 CAPTURE                          VAL R31
      367 DUPCLOSURE                       R79 K92 [PROTO_10]
      368 CAPTURE                          VAL R85
      369 CAPTURE                          VAL R43
      370 DUPCLOSURE                       R76 K93 [PROTO_11]
      371 CAPTURE                          VAL R85
      372 CAPTURE                          VAL R44
      373 DUPCLOSURE                       R77 K94 [PROTO_12]
      374 CAPTURE                          VAL R0
      375 CAPTURE                          VAL R6
      376 CAPTURE                          VAL R85
      377 CAPTURE                          VAL R35
      378 CAPTURE                          VAL R58
      379 CAPTURE                          VAL R67
      380 CAPTURE                          VAL R17
      381 DUPCLOSURE                       R80 K95 [PROTO_13]
      382 CAPTURE                          VAL R85
      383 CAPTURE                          VAL R36
      384 CAPTURE                          VAL R70
      385 DUPCLOSURE                       R83 K96 [PROTO_14]
      386 CAPTURE                          VAL R85
      387 CAPTURE                          VAL R37
      388 CAPTURE                          VAL R71
      389 CAPTURE                          VAL R0
      390 DUPCLOSURE                       R81 K97 [PROTO_15]
      391 CAPTURE                          VAL R85
      392 CAPTURE                          VAL R45
      393 CAPTURE                          VAL R74
      394 CAPTURE                          VAL R0
      395 DUPCLOSURE                       R82 K98 [PROTO_16]
      396 CAPTURE                          VAL R85
      397 CAPTURE                          VAL R46
      398 CAPTURE                          VAL R75
      399 CAPTURE                          VAL R0
      400 DUPCLOSURE                       R93 K99 [PROTO_17]
      401 CAPTURE                          VAL R85
      402 CAPTURE                          VAL R28
      403 DUPCLOSURE                       R94 K100 [PROTO_18]
      404 CAPTURE                          VAL R85
      405 CAPTURE                          VAL R27
      406 CAPTURE                          VAL R55
      407 DUPCLOSURE                       R95 K101 [PROTO_19]
      408 CAPTURE                          VAL R85
      409 CAPTURE                          VAL R38
      410 CAPTURE                          VAL R55
      411 DUPCLOSURE                       R96 K102 [PROTO_20]
      412 CAPTURE                          VAL R85
      413 CAPTURE                          VAL R29
      414 DUPCLOSURE                       R97 K103 [PROTO_21]
      415 CAPTURE                          VAL R85
      416 CAPTURE                          VAL R24
      417 CAPTURE                          VAL R55
      418 CAPTURE                          VAL R17
      419 DUPTABLE                         R98 K122 [{"isSimpleFunctionComponent", "resolveLazyComponentTag", "createWorkInProgress", "resetWorkInProgress", "createHostRootFiber", "createFiberFromTypeAndProps", "createFiberFromElement", "createFiberFromFragment", "createFiberFromFundamental", "createFiberFromSuspense", "createFiberFromSuspenseList", "createFiberFromOffscreen", "createFiberFromLegacyHidden", "createFiberFromText", "createFiberFromHostInstanceForDeletion", "createFiberFromDehydratedFragment", "createFiberFromPortal", "assignFiberPropertiesInDEV"}]
      420 SETTABLEKS                       R86 R98 K104 ["isSimpleFunctionComponent"]
      422 SETTABLEKS                       R87 R98 K105 ["resolveLazyComponentTag"]
      424 SETTABLEKS                       R88 R98 K106 ["createWorkInProgress"]
      426 SETTABLEKS                       R89 R98 K107 ["resetWorkInProgress"]
      428 SETTABLEKS                       R90 R98 K108 ["createHostRootFiber"]
      430 SETTABLEKS                       R91 R98 K109 ["createFiberFromTypeAndProps"]
      432 SETTABLEKS                       R92 R98 K110 ["createFiberFromElement"]
      434 SETTABLEKS                       R78 R98 K111 ["createFiberFromFragment"]
      436 SETTABLEKS                       R79 R98 K112 ["createFiberFromFundamental"]
      438 SETTABLEKS                       R80 R98 K113 ["createFiberFromSuspense"]
      440 SETTABLEKS                       R83 R98 K114 ["createFiberFromSuspenseList"]
      442 SETTABLEKS                       R81 R98 K115 ["createFiberFromOffscreen"]
      444 SETTABLEKS                       R82 R98 K116 ["createFiberFromLegacyHidden"]
      446 SETTABLEKS                       R93 R98 K117 ["createFiberFromText"]
      448 SETTABLEKS                       R94 R98 K118 ["createFiberFromHostInstanceForDeletion"]
      450 SETTABLEKS                       R95 R98 K119 ["createFiberFromDehydratedFragment"]
      452 SETTABLEKS                       R96 R98 K120 ["createFiberFromPortal"]
      454 SETTABLEKS                       R97 R98 K121 ["assignFiberPropertiesInDEV"]
      456 CLOSEUPVALS                      R77
      457 RETURN                           R98 1
