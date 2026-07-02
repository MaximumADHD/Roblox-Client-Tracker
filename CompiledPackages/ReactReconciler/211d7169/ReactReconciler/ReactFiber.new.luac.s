PROTO_0:
        0 NEWTABLE                         R4 32 0
        2 SETTABLEKS                       R0 R4 K0 ["tag"]
        4 SETTABLEKS                       R2 R4 K1 ["key"]
        6 LOADNIL                          R5
        7 SETTABLEKS                       R5 R4 K2 ["elementType"]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K3 ["type"]
       12 LOADNIL                          R5
       13 SETTABLEKS                       R5 R4 K4 ["stateNode"]
       15 LOADNIL                          R5
       16 SETTABLEKS                       R5 R4 K5 ["return_"]
       18 LOADNIL                          R5
       19 SETTABLEKS                       R5 R4 K6 ["child"]
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R4 K7 ["sibling"]
       24 LOADN                            R5 1
       25 SETTABLEKS                       R5 R4 K8 ["index"]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K9 ["ref"]
       30 SETTABLEKS                       R1 R4 K10 ["pendingProps"]
       32 LOADNIL                          R5
       33 SETTABLEKS                       R5 R4 K11 ["memoizedProps"]
       35 LOADNIL                          R5
       36 SETTABLEKS                       R5 R4 K12 ["updateQueue"]
       38 LOADNIL                          R5
       39 SETTABLEKS                       R5 R4 K13 ["memoizedState"]
       41 LOADNIL                          R5
       42 SETTABLEKS                       R5 R4 K14 ["dependencies"]
       44 SETTABLEKS                       R3 R4 K15 ["mode"]
       46 GETUPVAL                         R5 0
       47 SETTABLEKS                       R5 R4 K16 ["flags"]
       49 GETUPVAL                         R5 0
       50 SETTABLEKS                       R5 R4 K17 ["subtreeFlags"]
       52 LOADNIL                          R5
       53 SETTABLEKS                       R5 R4 K18 ["deletions"]
       55 GETUPVAL                         R5 1
       56 SETTABLEKS                       R5 R4 K19 ["lanes"]
       58 GETUPVAL                         R5 1
       59 SETTABLEKS                       R5 R4 K20 ["childLanes"]
       61 LOADNIL                          R5
       62 SETTABLEKS                       R5 R4 K21 ["alternate"]
       64 GETUPVAL                         R5 2
       65 JUMPIFNOT                        R5 ; [+12]
       66 LOADN                            R5 0
       67 SETTABLEKS                       R5 R4 K22 ["actualDuration"]
       69 LOADN                            R5 -1
       70 SETTABLEKS                       R5 R4 K23 ["actualStartTime"]
       72 LOADN                            R5 0
       73 SETTABLEKS                       R5 R4 K24 ["selfBaseDuration"]
       75 LOADN                            R5 0
       76 SETTABLEKS                       R5 R4 K25 ["treeBaseDuration"]
       78 GETIMPORT                        R5 K27 [_G]
       80 GETTABLEKS                       R5 R5 K28 ["__DEV__"]
       82 JUMPIFNOT                        R5 ; [+18]
       83 GETUPVAL                         R5 3
       84 SETTABLEKS                       R5 R4 K29 ["_debugID"]
       86 GETUPVAL                         R5 3
       87 ADDK                             R5 R5 K30 [1]
       88 SETUPVAL                         R5 3
       89 LOADNIL                          R5
       90 SETTABLEKS                       R5 R4 K31 ["_debugSource"]
       92 LOADNIL                          R5
       93 SETTABLEKS                       R5 R4 K32 ["_debugOwner"]
       95 LOADB                            R5 0
       96 SETTABLEKS                       R5 R4 K33 ["_debugNeedsRemount"]
       98 LOADNIL                          R5
       99 SETTABLEKS                       R5 R4 K34 ["_debugHookTypes"]
      101 RETURN                           R4 1

PROTO_1:
        0 GETGLOBAL                        R4 K0 ["FiberNode"]
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 CALL                             R4 4 -1
        7 RETURN                           R4 -1

PROTO_2:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K2 ["function"] ; [+5]
        8 GETTABLEKS                       R3 R0 K3 ["isReactComponent"]
       10 NOT                              R2 R3
       11 NOT                              R1 R2
       12 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+6]
        8 GETGLOBAL                        R2 K3 ["shouldConstruct"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 NOT                              R1 R2
       13 RETURN                           R1 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["function"] ; [+11]
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K1 [typeof]
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+13]
       14 GETTABLEKS                       R1 R0 K4 ["isReactComponent"]
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETGLOBAL                        R1 K5 ["shouldConstruct"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 JUMPIFNOT                        R1 ; [+2]
       22 GETUPVAL                         R1 0
       23 RETURN                           R1 1
       24 GETUPVAL                         R1 1
       25 RETURN                           R1 1
       26 JUMPIFEQKNIL                     R0 ; [+20]
       28 FASTCALL1                        TYPEOF R0 ; [+3]
       29 MOVE                             R2 R0
       30 GETIMPORT                        R1 K1 [typeof]
       32 CALL                             R1 1 1
       33 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+13]
       35 GETTABLEKS                       R1 R0 K6 ["$$typeof"]
       37 GETUPVAL                         R2 2
       38 JUMPIFNOTEQ                      R1 R2 ; [+3]
       40 GETUPVAL                         R2 3
       41 RETURN                           R2 1
       42 GETUPVAL                         R2 4
       43 JUMPIFNOTEQ                      R1 R2 ; [+3]
       45 GETUPVAL                         R2 5
       46 RETURN                           R2 1
       47 GETUPVAL                         R1 6
       48 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["alternate"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+53]
        4 GETTABLEKS                       R3 R0 K1 ["tag"]
        6 GETTABLEKS                       R4 R0 K2 ["key"]
        8 GETTABLEKS                       R5 R0 K3 ["mode"]
       10 GETGLOBAL                        R6 K4 ["FiberNode"]
       12 MOVE                             R7 R3
       13 MOVE                             R8 R1
       14 MOVE                             R9 R4
       15 MOVE                             R10 R5
       16 CALL                             R6 4 1
       17 MOVE                             R2 R6
       18 GETTABLEKS                       R3 R0 K5 ["elementType"]
       20 SETTABLEKS                       R3 R2 K5 ["elementType"]
       22 GETTABLEKS                       R3 R0 K6 ["type"]
       24 SETTABLEKS                       R3 R2 K6 ["type"]
       26 GETTABLEKS                       R3 R0 K7 ["stateNode"]
       28 SETTABLEKS                       R3 R2 K7 ["stateNode"]
       30 GETIMPORT                        R3 K9 [_G]
       32 GETTABLEKS                       R3 R3 K10 ["__DEV__"]
       34 JUMPIFNOT                        R3 ; [+16]
       35 GETTABLEKS                       R3 R0 K11 ["_debugID"]
       37 SETTABLEKS                       R3 R2 K11 ["_debugID"]
       39 GETTABLEKS                       R3 R0 K12 ["_debugSource"]
       41 SETTABLEKS                       R3 R2 K12 ["_debugSource"]
       43 GETTABLEKS                       R3 R0 K13 ["_debugOwner"]
       45 SETTABLEKS                       R3 R2 K13 ["_debugOwner"]
       47 GETTABLEKS                       R3 R0 K14 ["_debugHookTypes"]
       49 SETTABLEKS                       R3 R2 K14 ["_debugHookTypes"]
       51 SETTABLEKS                       R0 R2 K0 ["alternate"]
       53 SETTABLEKS                       R2 R0 K0 ["alternate"]
       55 JUMP                             ; [+23]
       56 SETTABLEKS                       R1 R2 K15 ["pendingProps"]
       58 GETTABLEKS                       R3 R0 K6 ["type"]
       60 SETTABLEKS                       R3 R2 K6 ["type"]
       62 GETUPVAL                         R3 0
       63 SETTABLEKS                       R3 R2 K16 ["flags"]
       65 GETUPVAL                         R3 0
       66 SETTABLEKS                       R3 R2 K17 ["subtreeFlags"]
       68 LOADNIL                          R3
       69 SETTABLEKS                       R3 R2 K18 ["deletions"]
       71 GETUPVAL                         R3 1
       72 JUMPIFNOT                        R3 ; [+6]
       73 LOADN                            R3 0
       74 SETTABLEKS                       R3 R2 K19 ["actualDuration"]
       76 LOADN                            R3 -1
       77 SETTABLEKS                       R3 R2 K20 ["actualStartTime"]
       79 GETTABLEKS                       R4 R0 K16 ["flags"]
       81 GETUPVAL                         R5 2
       82 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       84 GETIMPORT                        R3 K23 [bit32.band]
       86 CALL                             R3 2 1
       87 SETTABLEKS                       R3 R2 K16 ["flags"]
       89 GETTABLEKS                       R3 R0 K24 ["childLanes"]
       91 SETTABLEKS                       R3 R2 K24 ["childLanes"]
       93 GETTABLEKS                       R3 R0 K25 ["lanes"]
       95 SETTABLEKS                       R3 R2 K25 ["lanes"]
       97 GETTABLEKS                       R3 R0 K26 ["child"]
       99 SETTABLEKS                       R3 R2 K26 ["child"]
      101 GETTABLEKS                       R3 R0 K27 ["memoizedProps"]
      103 SETTABLEKS                       R3 R2 K27 ["memoizedProps"]
      105 GETTABLEKS                       R3 R0 K28 ["memoizedState"]
      107 SETTABLEKS                       R3 R2 K28 ["memoizedState"]
      109 GETTABLEKS                       R3 R0 K29 ["updateQueue"]
      111 SETTABLEKS                       R3 R2 K29 ["updateQueue"]
      113 GETTABLEKS                       R3 R0 K30 ["dependencies"]
      115 JUMPIFNOTEQKNIL                  R3 ; [+5]
      117 LOADNIL                          R4
      118 SETTABLEKS                       R4 R2 K30 ["dependencies"]
      120 JUMP                             ; [+11]
      121 DUPTABLE                         R4 K32 [{"lanes", "firstContext"}]
      122 GETTABLEKS                       R5 R3 K25 ["lanes"]
      124 SETTABLEKS                       R5 R4 K25 ["lanes"]
      126 GETTABLEKS                       R5 R3 K31 ["firstContext"]
      128 SETTABLEKS                       R5 R4 K31 ["firstContext"]
      130 SETTABLEKS                       R4 R2 K30 ["dependencies"]
      132 GETTABLEKS                       R4 R0 K33 ["sibling"]
      134 SETTABLEKS                       R4 R2 K33 ["sibling"]
      136 GETTABLEKS                       R4 R0 K34 ["index"]
      138 SETTABLEKS                       R4 R2 K34 ["index"]
      140 GETTABLEKS                       R4 R0 K35 ["ref"]
      142 SETTABLEKS                       R4 R2 K35 ["ref"]
      144 GETUPVAL                         R4 1
      145 JUMPIFNOT                        R4 ; [+8]
      146 GETTABLEKS                       R4 R0 K36 ["selfBaseDuration"]
      148 SETTABLEKS                       R4 R2 K36 ["selfBaseDuration"]
      150 GETTABLEKS                       R4 R0 K37 ["treeBaseDuration"]
      152 SETTABLEKS                       R4 R2 K37 ["treeBaseDuration"]
      154 GETIMPORT                        R4 K9 [_G]
      156 GETTABLEKS                       R4 R4 K10 ["__DEV__"]
      158 JUMPIFNOT                        R4 ; [+49]
      159 GETTABLEKS                       R4 R0 K38 ["_debugNeedsRemount"]
      161 SETTABLEKS                       R4 R2 K38 ["_debugNeedsRemount"]
      163 GETTABLEKS                       R4 R2 K1 ["tag"]
      165 GETUPVAL                         R5 3
      166 JUMPIFEQ                         R4 R5 ; [+11]
      168 GETTABLEKS                       R4 R2 K1 ["tag"]
      170 GETUPVAL                         R5 4
      171 JUMPIFEQ                         R4 R5 ; [+6]
      173 GETTABLEKS                       R4 R2 K1 ["tag"]
      175 GETUPVAL                         R5 5
      176 JUMPIFNOTEQ                      R4 R5 ; [+8]
      178 GETUPVAL                         R4 6
      179 GETTABLEKS                       R5 R0 K6 ["type"]
      181 CALL                             R4 1 1
      182 SETTABLEKS                       R4 R2 K6 ["type"]
      184 RETURN                           R2 1
      185 GETTABLEKS                       R4 R2 K1 ["tag"]
      187 GETUPVAL                         R5 7
      188 JUMPIFNOTEQ                      R4 R5 ; [+8]
      190 GETUPVAL                         R4 8
      191 GETTABLEKS                       R5 R0 K6 ["type"]
      193 CALL                             R4 1 1
      194 SETTABLEKS                       R4 R2 K6 ["type"]
      196 RETURN                           R2 1
      197 GETTABLEKS                       R4 R2 K1 ["tag"]
      199 GETUPVAL                         R5 9
      200 JUMPIFNOTEQ                      R4 R5 ; [+7]
      202 GETUPVAL                         R4 10
      203 GETTABLEKS                       R5 R0 K6 ["type"]
      205 CALL                             R4 1 1
      206 SETTABLEKS                       R4 R2 K6 ["type"]
      208 RETURN                           R2 1

PROTO_6:
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

PROTO_7:
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
       27 JUMPIFNOT                        R2 ; [+10]
       28 GETUPVAL                         R2 7
       29 JUMPIFNOT                        R2 ; [+8]
       30 GETUPVAL                         R4 8
       31 FASTCALL2                        BIT32_BOR R1 R4 ; [+4]
       33 MOVE                             R3 R1
       34 GETIMPORT                        R2 K2 [bit32.bor]
       36 CALL                             R2 2 1
       37 MOVE                             R1 R2
       38 GETUPVAL                         R2 9
       39 GETUPVAL                         R3 10
       40 LOADNIL                          R4
       41 LOADNIL                          R5
       42 MOVE                             R6 R1
       43 CALL                             R2 4 -1
       44 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R9 R0
        4 GETIMPORT                        R8 K1 [typeof]
        6 CALL                             R8 1 1
        7 JUMPIFNOTEQKS                    R8 K2 ["function"] ; [+11]
        9 GETIMPORT                        R8 K4 [_G]
       11 GETTABLEKS                       R8 R8 K5 ["__DEV__"]
       13 JUMPIFNOT                        R8 ; [+287]
       14 GETUPVAL                         R8 1
       15 MOVE                             R9 R7
       16 CALL                             R8 1 1
       17 MOVE                             R7 R8
       18 JUMP                             ; [+282]
       19 FASTCALL1                        TYPEOF R0 ; [+3]
       20 MOVE                             R9 R0
       21 GETIMPORT                        R8 K1 [typeof]
       23 CALL                             R8 1 1
       24 JUMPIFNOTEQKS                    R8 K6 ["table"] ; [+15]
       26 GETTABLEKS                       R8 R0 K7 ["isReactComponent"]
       28 JUMPIFNOT                        R8 ; [+11]
       29 GETUPVAL                         R6 2
       30 GETIMPORT                        R8 K4 [_G]
       32 GETTABLEKS                       R8 R8 K5 ["__DEV__"]
       34 JUMPIFNOT                        R8 ; [+266]
       35 GETUPVAL                         R8 3
       36 MOVE                             R9 R7
       37 CALL                             R8 1 1
       38 MOVE                             R7 R8
       39 JUMP                             ; [+261]
       40 FASTCALL1                        TYPEOF R0 ; [+3]
       41 MOVE                             R9 R0
       42 GETIMPORT                        R8 K1 [typeof]
       44 CALL                             R8 1 1
       45 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+3]
       47 GETUPVAL                         R6 4
       48 JUMP                             ; [+252]
       49 GETUPVAL                         R8 5
       50 JUMPIFNOTEQ                      R0 R8 ; [+9]
       52 GETUPVAL                         R8 6
       53 GETTABLEKS                       R9 R2 K9 ["children"]
       55 MOVE                             R10 R4
       56 MOVE                             R11 R5
       57 MOVE                             R12 R1
       58 CALL                             R8 4 -1
       59 RETURN                           R8 -1
       60 GETUPVAL                         R8 7
       61 JUMPIFNOTEQ                      R0 R8 ; [+11]
       63 GETUPVAL                         R6 8
       64 GETUPVAL                         R10 9
       65 FASTCALL2                        BIT32_BOR R4 R10 ; [+4]
       67 MOVE                             R9 R4
       68 GETIMPORT                        R8 K12 [bit32.bor]
       70 CALL                             R8 2 1
       71 MOVE                             R4 R8
       72 JUMP                             ; [+228]
       73 GETUPVAL                         R8 10
       74 JUMPIFNOTEQ                      R0 R8 ; [+11]
       76 GETUPVAL                         R6 8
       77 GETUPVAL                         R10 11
       78 FASTCALL2                        BIT32_BOR R4 R10 ; [+4]
       80 MOVE                             R9 R4
       81 GETIMPORT                        R8 K12 [bit32.bor]
       83 CALL                             R8 2 1
       84 MOVE                             R4 R8
       85 JUMP                             ; [+215]
       86 GETUPVAL                         R8 12
       87 JUMPIFNOTEQ                      R0 R8 ; [+8]
       89 GETUPVAL                         R8 13
       90 MOVE                             R9 R2
       91 MOVE                             R10 R4
       92 MOVE                             R11 R5
       93 MOVE                             R12 R1
       94 CALL                             R8 4 -1
       95 RETURN                           R8 -1
       96 GETUPVAL                         R8 14
       97 JUMPIFNOTEQ                      R0 R8 ; [+8]
       99 GETUPVAL                         R8 15
      100 MOVE                             R9 R2
      101 MOVE                             R10 R4
      102 MOVE                             R11 R5
      103 MOVE                             R12 R1
      104 CALL                             R8 4 -1
      105 RETURN                           R8 -1
      106 GETUPVAL                         R8 16
      107 JUMPIFNOTEQ                      R0 R8 ; [+8]
      109 GETUPVAL                         R8 17
      110 MOVE                             R9 R2
      111 MOVE                             R10 R4
      112 MOVE                             R11 R5
      113 MOVE                             R12 R1
      114 CALL                             R8 4 -1
      115 RETURN                           R8 -1
      116 GETUPVAL                         R8 18
      117 JUMPIFNOTEQ                      R0 R8 ; [+8]
      119 GETUPVAL                         R8 19
      120 MOVE                             R9 R2
      121 MOVE                             R10 R4
      122 MOVE                             R11 R5
      123 MOVE                             R12 R1
      124 CALL                             R8 4 -1
      125 RETURN                           R8 -1
      126 LOADB                            R8 0
      127 FASTCALL1                        TYPEOF R0 ; [+3]
      128 MOVE                             R10 R0
      129 GETIMPORT                        R9 K1 [typeof]
      131 CALL                             R9 1 1
      132 JUMPIFNOTEQKS                    R9 K6 ["table"] ; [+50]
      134 GETTABLEKS                       R9 R0 K13 ["$$typeof"]
      136 GETUPVAL                         R10 20
      137 JUMPIFNOTEQ                      R9 R10 ; [+4]
      139 GETUPVAL                         R6 21
      140 LOADB                            R8 1
      141 JUMP                             ; [+41]
      142 GETTABLEKS                       R9 R0 K13 ["$$typeof"]
      144 GETUPVAL                         R10 22
      145 JUMPIFNOTEQ                      R9 R10 ; [+4]
      147 GETUPVAL                         R6 23
      148 LOADB                            R8 1
      149 JUMP                             ; [+33]
      150 GETTABLEKS                       R9 R0 K13 ["$$typeof"]
      152 GETUPVAL                         R10 24
      153 JUMPIFNOTEQ                      R9 R10 ; [+13]
      155 GETUPVAL                         R6 25
      156 GETIMPORT                        R9 K4 [_G]
      158 GETTABLEKS                       R9 R9 K5 ["__DEV__"]
      160 JUMPIFNOT                        R9 ; [+4]
      161 GETUPVAL                         R9 26
      162 MOVE                             R10 R7
      163 CALL                             R9 1 1
      164 MOVE                             R7 R9
      165 LOADB                            R8 1
      166 JUMP                             ; [+16]
      167 GETTABLEKS                       R9 R0 K13 ["$$typeof"]
      169 GETUPVAL                         R10 27
      170 JUMPIFNOTEQ                      R9 R10 ; [+4]
      172 GETUPVAL                         R6 28
      173 LOADB                            R8 1
      174 JUMP                             ; [+8]
      175 GETTABLEKS                       R9 R0 K13 ["$$typeof"]
      177 GETUPVAL                         R10 29
      178 JUMPIFNOTEQ                      R9 R10 ; [+4]
      180 GETUPVAL                         R6 30
      181 LOADNIL                          R7
      182 LOADB                            R8 1
      183 JUMPIF                           R8 ; [+117]
      184 LOADK                            R9 K14 [""]
      185 GETIMPORT                        R10 K4 [_G]
      187 GETTABLEKS                       R10 R10 K5 ["__DEV__"]
      189 JUMPIFNOT                        R10 ; [+62]
      190 JUMPIFEQKNIL                     R0 ; [+16]
      192 FASTCALL1                        TYPEOF R0 ; [+3]
      193 MOVE                             R11 R0
      194 GETIMPORT                        R10 K1 [typeof]
      196 CALL                             R10 1 1
      197 JUMPIFNOTEQKS                    R10 K6 ["table"] ; [+15]
      199 GETUPVAL                         R11 31
      200 GETTABLEKS                       R11 R11 K15 ["keys"]
      202 MOVE                             R12 R0
      203 CALL                             R11 1 1
      204 LENGTH                           R10 R11
      205 JUMPIFNOTEQKN                    R10 K16 [0] ; [+7]
      207 MOVE                             R10 R9
      208 LOADK                            R11 K17 [" You likely forgot to export your component from the file "]
      209 LOADK                            R12 K18 ["it's defined in, or you might have mixed up default and "]
      210 LOADK                            R13 K19 ["named imports."]
      211 CONCAT                           R9 R10 R13
      212 JUMP                             ; [+15]
      213 JUMPIFEQKNIL                     R0 ; [+14]
      215 FASTCALL1                        TYPEOF R0 ; [+3]
      216 MOVE                             R11 R0
      217 GETIMPORT                        R10 K1 [typeof]
      219 CALL                             R10 1 1
      220 JUMPIFNOTEQKS                    R10 K6 ["table"] ; [+7]
      222 MOVE                             R10 R9
      223 LOADK                            R11 K20 ["\n"]
      224 GETUPVAL                         R12 32
      225 MOVE                             R13 R0
      226 CALL                             R12 1 1
      227 CONCAT                           R9 R10 R12
      228 LOADNIL                          R10
      229 JUMPIFNOT                        R3 ; [+5]
      230 GETUPVAL                         R11 33
      231 GETTABLEKS                       R12 R3 K21 ["type"]
      233 CALL                             R11 1 1
      234 MOVE                             R10 R11
      235 JUMPIFEQKNIL                     R10 ; [+9]
      237 JUMPIFEQKS                       R10 K14 [""] ; [+7]
      239 MOVE                             R11 R9
      240 LOADK                            R12 K22 ["\n\nCheck the render method of `"]
      241 MOVE                             R13 R10
      242 LOADK                            R14 K23 ["`."]
      243 CONCAT                           R9 R11 R14
      244 JUMP                             ; [+7]
      245 JUMPIFNOT                        R3 ; [+6]
      246 MOVE                             R11 R9
      247 LOADK                            R12 K20 ["\n"]
      248 GETUPVAL                         R13 32
      249 MOVE                             R14 R3
      250 CALL                             R13 1 1
      251 CONCAT                           R9 R11 R13
      252 LOADNIL                          R10
      253 JUMPIFNOTEQKNIL                  R0 ; [+3]
      255 LOADK                            R10 K24 ["nil"]
      256 JUMP                             ; [+38]
      257 GETUPVAL                         R11 34
      258 GETTABLEKS                       R11 R11 K25 ["isArray"]
      260 MOVE                             R12 R0
      261 CALL                             R11 1 1
      262 JUMPIFNOT                        R11 ; [+2]
      263 LOADK                            R10 K26 ["array"]
      264 JUMP                             ; [+30]
      265 FASTCALL1                        TYPEOF R0 ; [+3]
      266 MOVE                             R12 R0
      267 GETIMPORT                        R11 K1 [typeof]
      269 CALL                             R11 1 1
      270 JUMPIFNOTEQKS                    R11 K6 ["table"] ; [+18]
      272 GETTABLEKS                       R11 R0 K13 ["$$typeof"]
      274 GETUPVAL                         R12 35
      275 JUMPIFNOTEQ                      R11 R12 ; [+13]
      277 LOADK                            R11 K27 ["<%s />"]
      278 GETUPVAL                         R14 33
      279 GETTABLEKS                       R15 R0 K21 ["type"]
      281 CALL                             R14 1 1
      282 ORK                              R13 R14 K28 ["Unknown"]
      283 NAMECALL                         R11 R11 K29 ["format"]
      285 CALL                             R11 2 1
      286 MOVE                             R10 R11
      287 LOADK                            R9 K30 [" Did you accidentally export a JSX literal or Element instead of a component?"]
      288 JUMP                             ; [+6]
      289 FASTCALL1                        TYPEOF R0 ; [+3]
      290 MOVE                             R12 R0
      291 GETIMPORT                        R11 K1 [typeof]
      293 CALL                             R11 1 1
      294 MOVE                             R10 R11
      295 GETUPVAL                         R11 36
      296 LOADB                            R12 0
      297 LOADK                            R13 K31 ["Element type is invalid: expected a string (for built-in components) or a class/function (for composite components) but got: %s.%s"]
      298 MOVE                             R14 R10
      299 MOVE                             R15 R9
      300 CALL                             R11 4 0
      301 MOVE                             R9 R6
      302 MOVE                             R10 R4
      303 GETGLOBAL                        R11 K32 ["FiberNode"]
      305 MOVE                             R12 R9
      306 MOVE                             R13 R2
      307 MOVE                             R14 R1
      308 MOVE                             R15 R10
      309 CALL                             R11 4 1
      310 MOVE                             R8 R11
      311 SETTABLEKS                       R0 R8 K33 ["elementType"]
      313 SETTABLEKS                       R7 R8 K21 ["type"]
      315 SETTABLEKS                       R5 R8 K34 ["lanes"]
      317 GETIMPORT                        R9 K4 [_G]
      319 GETTABLEKS                       R9 R9 K5 ["__DEV__"]
      321 JUMPIFNOT                        R9 ; [+2]
      322 SETTABLEKS                       R3 R8 K35 ["_debugOwner"]
      324 RETURN                           R8 1

PROTO_9:
        0 LOADNIL                          R3
        1 GETIMPORT                        R4 K1 [_G]
        3 GETTABLEKS                       R4 R4 K2 ["__DEV__"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 GETTABLEKS                       R3 R0 K3 ["_owner"]
        8 GETTABLEKS                       R4 R0 K4 ["type"]
       10 GETTABLEKS                       R5 R0 K5 ["key"]
       12 GETTABLEKS                       R6 R0 K6 ["props"]
       14 GETUPVAL                         R7 0
       15 MOVE                             R8 R4
       16 MOVE                             R9 R5
       17 MOVE                             R10 R6
       18 MOVE                             R11 R3
       19 MOVE                             R12 R1
       20 MOVE                             R13 R2
       21 CALL                             R7 6 1
       22 GETIMPORT                        R8 K1 [_G]
       24 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
       26 JUMPIFNOT                        R8 ; [+8]
       27 GETTABLEKS                       R8 R0 K7 ["_source"]
       29 SETTABLEKS                       R8 R7 K8 ["_debugSource"]
       31 GETTABLEKS                       R8 R0 K3 ["_owner"]
       33 SETTABLEKS                       R8 R7 K9 ["_debugOwner"]
       35 RETURN                           R7 1

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETGLOBAL                        R6 K0 ["FiberNode"]
        3 MOVE                             R7 R5
        4 MOVE                             R8 R0
        5 MOVE                             R9 R3
        6 MOVE                             R10 R1
        7 CALL                             R6 4 1
        8 MOVE                             R4 R6
        9 SETTABLEKS                       R2 R4 K1 ["lanes"]
       11 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R6 0
        1 GETGLOBAL                        R7 K0 ["FiberNode"]
        3 MOVE                             R8 R6
        4 MOVE                             R9 R1
        5 MOVE                             R10 R4
        6 MOVE                             R11 R2
        7 CALL                             R7 4 1
        8 MOVE                             R5 R7
        9 SETTABLEKS                       R0 R5 K1 ["elementType"]
       11 SETTABLEKS                       R0 R5 K2 ["type"]
       13 SETTABLEKS                       R3 R5 K3 ["lanes"]
       15 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R6 0
        1 GETGLOBAL                        R7 K0 ["FiberNode"]
        3 MOVE                             R8 R6
        4 MOVE                             R9 R1
        5 MOVE                             R10 R4
        6 MOVE                             R11 R2
        7 CALL                             R7 4 1
        8 MOVE                             R5 R7
        9 SETTABLEKS                       R0 R5 K1 ["type"]
       11 SETTABLEKS                       R0 R5 K2 ["elementType"]
       13 SETTABLEKS                       R3 R5 K3 ["lanes"]
       15 RETURN                           R5 1

PROTO_13:
        0 GETIMPORT                        R4 K1 [_G]
        2 GETTABLEKS                       R4 R4 K2 ["__DEV__"]
        4 JUMPIFNOT                        R4 ; [+13]
        5 GETTABLEKS                       R5 R0 K3 ["id"]
        7 FASTCALL1                        TYPEOF R5 ; [+2]
        8 GETIMPORT                        R4 K5 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFEQKS                       R4 K6 ["string"] ; [+6]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K7 ["error"]
       16 LOADK                            R5 K8 ["Profiler must specify an \"id\" as a prop"]
       17 CALL                             R4 1 0
       18 GETUPVAL                         R5 1
       19 GETUPVAL                         R8 2
       20 FASTCALL2                        BIT32_BOR R1 R8 ; [+4]
       22 MOVE                             R7 R1
       23 GETIMPORT                        R6 K11 [bit32.bor]
       25 CALL                             R6 2 1
       26 GETGLOBAL                        R7 K12 ["FiberNode"]
       28 MOVE                             R8 R5
       29 MOVE                             R9 R0
       30 MOVE                             R10 R3
       31 MOVE                             R11 R6
       32 CALL                             R7 4 1
       33 MOVE                             R4 R7
       34 GETUPVAL                         R5 3
       35 SETTABLEKS                       R5 R4 K13 ["elementType"]
       37 GETUPVAL                         R5 3
       38 SETTABLEKS                       R5 R4 K14 ["type"]
       40 SETTABLEKS                       R2 R4 K15 ["lanes"]
       42 GETUPVAL                         R5 4
       43 JUMPIFNOT                        R5 ; [+3]
       44 DUPTABLE                         R5 K19 [{["effectDuration"] = 0, ["passiveEffectDuration"] = 0}]
       45 SETTABLEKS                       R5 R4 K20 ["stateNode"]
       47 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETGLOBAL                        R6 K0 ["FiberNode"]
        3 MOVE                             R7 R5
        4 MOVE                             R8 R0
        5 MOVE                             R9 R3
        6 MOVE                             R10 R1
        7 CALL                             R6 4 1
        8 MOVE                             R4 R6
        9 GETUPVAL                         R5 1
       10 SETTABLEKS                       R5 R4 K1 ["type"]
       12 GETUPVAL                         R5 1
       13 SETTABLEKS                       R5 R4 K2 ["elementType"]
       15 SETTABLEKS                       R2 R4 K3 ["lanes"]
       17 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R5 0
        1 GETGLOBAL                        R6 K0 ["FiberNode"]
        3 MOVE                             R7 R5
        4 MOVE                             R8 R0
        5 MOVE                             R9 R3
        6 MOVE                             R10 R1
        7 CALL                             R6 4 1
        8 MOVE                             R4 R6
        9 GETIMPORT                        R5 K2 [_G]
       11 GETTABLEKS                       R5 R5 K3 ["__DEV__"]
       13 JUMPIFNOT                        R5 ; [+3]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K4 ["type"]
       17 GETUPVAL                         R5 1
       18 SETTABLEKS                       R5 R4 K5 ["elementType"]
       20 SETTABLEKS                       R2 R4 K6 ["lanes"]
       22 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R5 0
        1 GETGLOBAL                        R6 K0 ["FiberNode"]
        3 MOVE                             R7 R5
        4 MOVE                             R8 R0
        5 MOVE                             R9 R3
        6 MOVE                             R10 R1
        7 CALL                             R6 4 1
        8 MOVE                             R4 R6
        9 GETIMPORT                        R5 K2 [_G]
       11 GETTABLEKS                       R5 R5 K3 ["__DEV__"]
       13 JUMPIFNOT                        R5 ; [+3]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K4 ["type"]
       17 GETUPVAL                         R5 1
       18 SETTABLEKS                       R5 R4 K5 ["elementType"]
       20 SETTABLEKS                       R2 R4 K6 ["lanes"]
       22 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R5 0
        1 GETGLOBAL                        R6 K0 ["FiberNode"]
        3 MOVE                             R7 R5
        4 MOVE                             R8 R0
        5 MOVE                             R9 R3
        6 MOVE                             R10 R1
        7 CALL                             R6 4 1
        8 MOVE                             R4 R6
        9 GETIMPORT                        R5 K2 [_G]
       11 GETTABLEKS                       R5 R5 K3 ["__DEV__"]
       13 JUMPIFNOT                        R5 ; [+3]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K4 ["type"]
       17 GETUPVAL                         R5 1
       18 SETTABLEKS                       R5 R4 K5 ["elementType"]
       20 SETTABLEKS                       R2 R4 K6 ["lanes"]
       22 RETURN                           R4 1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETGLOBAL                        R5 K0 ["FiberNode"]
        3 MOVE                             R6 R4
        4 MOVE                             R7 R0
        5 LOADNIL                          R8
        6 MOVE                             R9 R1
        7 CALL                             R5 4 1
        8 MOVE                             R3 R5
        9 SETTABLEKS                       R2 R3 K1 ["lanes"]
       11 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETGLOBAL                        R3 K0 ["FiberNode"]
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 MOVE                             R7 R2
        8 CALL                             R3 4 1
        9 MOVE                             R0 R3
       10 LOADK                            R1 K1 ["DELETED"]
       11 SETTABLEKS                       R1 R0 K2 ["elementType"]
       13 LOADK                            R1 K1 ["DELETED"]
       14 SETTABLEKS                       R1 R0 K3 ["type"]
       16 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETGLOBAL                        R4 K0 ["FiberNode"]
        4 MOVE                             R5 R2
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 MOVE                             R8 R3
        8 CALL                             R4 4 1
        9 MOVE                             R1 R4
       10 SETTABLEKS                       R0 R1 K1 ["stateNode"]
       12 RETURN                           R1 1

PROTO_21:
        0 LOADNIL                          R3
        1 GETTABLEKS                       R4 R0 K0 ["children"]
        3 JUMPIFEQKNIL                     R4 ; [+4]
        5 GETTABLEKS                       R3 R0 K0 ["children"]
        7 JUMP                             ; [+2]
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R5 0
       11 MOVE                             R6 R3
       12 GETTABLEKS                       R7 R0 K1 ["key"]
       14 GETGLOBAL                        R8 K2 ["FiberNode"]
       16 MOVE                             R9 R5
       17 MOVE                             R10 R6
       18 MOVE                             R11 R7
       19 MOVE                             R12 R1
       20 CALL                             R8 4 1
       21 MOVE                             R4 R8
       22 SETTABLEKS                       R2 R4 K3 ["lanes"]
       24 DUPTABLE                         R5 K8 [{["containerInfo"], ["pendingChildren"] = , ["implementation"]}]
       25 GETTABLEKS                       R6 R0 K4 ["containerInfo"]
       27 SETTABLEKS                       R6 R5 K4 ["containerInfo"]
       29 GETTABLEKS                       R6 R0 K7 ["implementation"]
       31 SETTABLEKS                       R6 R5 K7 ["implementation"]
       33 SETTABLEKS                       R5 R4 K9 ["stateNode"]
       35 RETURN                           R4 1

PROTO_22:
        0 JUMPIFNOTEQKNIL                  R0 ; [+11]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETGLOBAL                        R4 K0 ["FiberNode"]
        6 MOVE                             R5 R2
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 MOVE                             R8 R3
       10 CALL                             R4 4 1
       11 MOVE                             R0 R4
       12 GETTABLEKS                       R2 R1 K1 ["tag"]
       14 SETTABLEKS                       R2 R0 K1 ["tag"]
       16 GETTABLEKS                       R2 R1 K2 ["key"]
       18 SETTABLEKS                       R2 R0 K2 ["key"]
       20 GETTABLEKS                       R2 R1 K3 ["elementType"]
       22 SETTABLEKS                       R2 R0 K3 ["elementType"]
       24 GETTABLEKS                       R2 R1 K4 ["type"]
       26 SETTABLEKS                       R2 R0 K4 ["type"]
       28 GETTABLEKS                       R2 R1 K5 ["stateNode"]
       30 SETTABLEKS                       R2 R0 K5 ["stateNode"]
       32 GETTABLEKS                       R2 R1 K6 ["return_"]
       34 SETTABLEKS                       R2 R0 K6 ["return_"]
       36 GETTABLEKS                       R2 R1 K7 ["child"]
       38 SETTABLEKS                       R2 R0 K7 ["child"]
       40 GETTABLEKS                       R2 R1 K8 ["sibling"]
       42 SETTABLEKS                       R2 R0 K8 ["sibling"]
       44 GETTABLEKS                       R2 R1 K9 ["index"]
       46 SETTABLEKS                       R2 R0 K9 ["index"]
       48 GETTABLEKS                       R2 R1 K10 ["ref"]
       50 SETTABLEKS                       R2 R0 K10 ["ref"]
       52 GETTABLEKS                       R2 R1 K11 ["pendingProps"]
       54 SETTABLEKS                       R2 R0 K11 ["pendingProps"]
       56 GETTABLEKS                       R2 R1 K12 ["memoizedProps"]
       58 SETTABLEKS                       R2 R0 K12 ["memoizedProps"]
       60 GETTABLEKS                       R2 R1 K13 ["updateQueue"]
       62 SETTABLEKS                       R2 R0 K13 ["updateQueue"]
       64 GETTABLEKS                       R2 R1 K14 ["memoizedState"]
       66 SETTABLEKS                       R2 R0 K14 ["memoizedState"]
       68 GETTABLEKS                       R2 R1 K15 ["dependencies"]
       70 SETTABLEKS                       R2 R0 K15 ["dependencies"]
       72 GETTABLEKS                       R2 R1 K16 ["mode"]
       74 SETTABLEKS                       R2 R0 K16 ["mode"]
       76 GETTABLEKS                       R2 R1 K17 ["flags"]
       78 SETTABLEKS                       R2 R0 K17 ["flags"]
       80 GETTABLEKS                       R2 R1 K18 ["subtreeFlags"]
       82 SETTABLEKS                       R2 R0 K18 ["subtreeFlags"]
       84 GETTABLEKS                       R2 R1 K19 ["deletions"]
       86 SETTABLEKS                       R2 R0 K19 ["deletions"]
       88 GETTABLEKS                       R2 R1 K20 ["lanes"]
       90 SETTABLEKS                       R2 R0 K20 ["lanes"]
       92 GETTABLEKS                       R2 R1 K21 ["childLanes"]
       94 SETTABLEKS                       R2 R0 K21 ["childLanes"]
       96 GETTABLEKS                       R2 R1 K22 ["alternate"]
       98 SETTABLEKS                       R2 R0 K22 ["alternate"]
      100 GETUPVAL                         R2 2
      101 JUMPIFNOT                        R2 ; [+16]
      102 GETTABLEKS                       R2 R1 K23 ["actualDuration"]
      104 SETTABLEKS                       R2 R0 K23 ["actualDuration"]
      106 GETTABLEKS                       R2 R1 K24 ["actualStartTime"]
      108 SETTABLEKS                       R2 R0 K24 ["actualStartTime"]
      110 GETTABLEKS                       R2 R1 K25 ["selfBaseDuration"]
      112 SETTABLEKS                       R2 R0 K25 ["selfBaseDuration"]
      114 GETTABLEKS                       R2 R1 K26 ["treeBaseDuration"]
      116 SETTABLEKS                       R2 R0 K26 ["treeBaseDuration"]
      118 GETTABLEKS                       R2 R1 K27 ["_debugID"]
      120 SETTABLEKS                       R2 R0 K27 ["_debugID"]
      122 GETTABLEKS                       R2 R1 K28 ["_debugSource"]
      124 SETTABLEKS                       R2 R0 K28 ["_debugSource"]
      126 GETTABLEKS                       R2 R1 K29 ["_debugOwner"]
      128 SETTABLEKS                       R2 R0 K29 ["_debugOwner"]
      130 GETTABLEKS                       R2 R1 K30 ["_debugNeedsRemount"]
      132 SETTABLEKS                       R2 R0 K30 ["_debugNeedsRemount"]
      134 GETTABLEKS                       R2 R1 K31 ["_debugHookTypes"]
      136 SETTABLEKS                       R2 R0 K31 ["_debugHookTypes"]
      138 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 GETTABLEKS                       R3 R1 K7 ["Array"]
       16 GETTABLEKS                       R4 R1 K8 ["util"]
       18 GETTABLEKS                       R4 R4 K9 ["inspect"]
       20 GETIMPORT                        R5 K4 [require]
       22 GETTABLEKS                       R6 R0 K10 ["Shared"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R5 R5 K11 ["console"]
       27 GETIMPORT                        R6 K4 [require]
       29 GETTABLEKS                       R7 R0 K10 ["Shared"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K4 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R8 R8 K2 ["Parent"]
       38 GETTABLEKS                       R8 R8 K12 ["ReactInternalTypes"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K4 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R9 R9 K2 ["Parent"]
       47 GETTABLEKS                       R9 R9 K13 ["ReactRootTags"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K4 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K2 ["Parent"]
       56 GETTABLEKS                       R10 R10 K14 ["ReactWorkTags"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K4 [require]
       61 GETIMPORT                        R11 K1 [script]
       63 GETTABLEKS                       R11 R11 K2 ["Parent"]
       65 GETTABLEKS                       R11 R11 K15 ["ReactTypeOfMode"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K4 [require]
       70 GETIMPORT                        R12 K1 [script]
       72 GETTABLEKS                       R12 R12 K2 ["Parent"]
       74 GETTABLEKS                       R12 R12 K16 ["ReactFiberLane"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K4 [require]
       79 GETIMPORT                        R13 K1 [script]
       81 GETTABLEKS                       R13 R13 K2 ["Parent"]
       83 GETTABLEKS                       R13 R13 K17 ["ReactFiberHostConfig"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K4 [require]
       88 GETIMPORT                        R14 K1 [script]
       90 GETTABLEKS                       R14 R14 K2 ["Parent"]
       92 GETTABLEKS                       R14 R14 K18 ["ReactFiberOffscreenComponent"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R15 R0 K10 ["Shared"]
       99 CALL                             R14 1 1
      100 GETTABLEKS                       R14 R14 K19 ["invariant"]
      102 GETIMPORT                        R15 K4 [require]
      104 GETTABLEKS                       R16 R0 K10 ["Shared"]
      106 CALL                             R15 1 1
      107 GETTABLEKS                       R15 R15 K20 ["ReactFeatureFlags"]
      109 GETTABLEKS                       R16 R15 K21 ["enableProfilerTimer"]
      111 GETIMPORT                        R17 K4 [require]
      113 GETIMPORT                        R18 K1 [script]
      115 GETTABLEKS                       R18 R18 K2 ["Parent"]
      117 GETTABLEKS                       R18 R18 K22 ["ReactFiberFlags"]
      119 CALL                             R17 1 1
      120 GETTABLEKS                       R18 R17 K23 ["NoFlags"]
      122 GETTABLEKS                       R19 R17 K24 ["Placement"]
      124 GETTABLEKS                       R20 R17 K25 ["StaticMask"]
      126 GETTABLEKS                       R21 R8 K26 ["ConcurrentRoot"]
      128 GETTABLEKS                       R22 R8 K27 ["BlockingRoot"]
      130 GETTABLEKS                       R23 R9 K28 ["IndeterminateComponent"]
      132 GETTABLEKS                       R24 R9 K29 ["ClassComponent"]
      134 GETTABLEKS                       R25 R9 K30 ["HostRoot"]
      136 GETTABLEKS                       R26 R9 K31 ["HostComponent"]
      138 GETTABLEKS                       R27 R9 K32 ["HostText"]
      140 GETTABLEKS                       R28 R9 K33 ["HostPortal"]
      142 GETTABLEKS                       R29 R9 K34 ["ForwardRef"]
      144 GETTABLEKS                       R30 R9 K35 ["Fragment"]
      146 GETTABLEKS                       R31 R9 K36 ["Mode"]
      148 GETTABLEKS                       R32 R9 K37 ["ContextProvider"]
      150 GETTABLEKS                       R33 R9 K38 ["ContextConsumer"]
      152 GETTABLEKS                       R34 R9 K39 ["Profiler"]
      154 GETTABLEKS                       R35 R9 K40 ["SuspenseComponent"]
      156 GETTABLEKS                       R36 R9 K41 ["SuspenseListComponent"]
      158 GETTABLEKS                       R37 R9 K42 ["DehydratedFragment"]
      160 GETTABLEKS                       R38 R9 K43 ["FunctionComponent"]
      162 GETTABLEKS                       R39 R9 K44 ["MemoComponent"]
      164 GETTABLEKS                       R40 R9 K45 ["SimpleMemoComponent"]
      166 GETTABLEKS                       R41 R9 K46 ["LazyComponent"]
      168 GETTABLEKS                       R42 R9 K47 ["FundamentalComponent"]
      170 GETTABLEKS                       R43 R9 K48 ["ScopeComponent"]
      172 GETTABLEKS                       R44 R9 K49 ["OffscreenComponent"]
      174 GETTABLEKS                       R45 R9 K50 ["LegacyHiddenComponent"]
      176 GETIMPORT                        R46 K4 [require]
      178 GETTABLEKS                       R47 R0 K10 ["Shared"]
      180 CALL                             R46 1 1
      181 GETTABLEKS                       R46 R46 K51 ["getComponentName"]
      183 GETIMPORT                        R47 K4 [require]
      185 GETIMPORT                        R49 K1 [script]
      187 GETTABLEKS                       R49 R49 K2 ["Parent"]
      189 GETTABLEKS                       R48 R49 K52 ["ReactFiberDevToolsHook.new"]
      191 CALL                             R47 1 1
      192 GETTABLEKS                       R48 R47 K53 ["isDevToolsPresent"]
      194 GETIMPORT                        R49 K4 [require]
      196 GETIMPORT                        R51 K1 [script]
      198 GETTABLEKS                       R51 R51 K2 ["Parent"]
      200 GETTABLEKS                       R50 R51 K54 ["ReactFiberHotReloading.new"]
      202 CALL                             R49 1 1
      203 GETTABLEKS                       R50 R49 K55 ["resolveClassForHotReloading"]
      205 GETTABLEKS                       R51 R49 K56 ["resolveFunctionForHotReloading"]
      207 GETTABLEKS                       R52 R49 K57 ["resolveForwardRefForHotReloading"]
      209 GETTABLEKS                       R53 R11 K58 ["NoLanes"]
      211 GETTABLEKS                       R54 R10 K59 ["NoMode"]
      213 GETTABLEKS                       R55 R10 K60 ["ConcurrentMode"]
      215 GETTABLEKS                       R56 R10 K61 ["DebugTracingMode"]
      217 GETTABLEKS                       R57 R10 K62 ["ProfileMode"]
      219 GETTABLEKS                       R58 R10 K63 ["StrictMode"]
      221 GETTABLEKS                       R59 R10 K64 ["BlockingMode"]
      223 GETIMPORT                        R60 K4 [require]
      225 GETTABLEKS                       R61 R0 K10 ["Shared"]
      227 CALL                             R60 1 1
      228 GETTABLEKS                       R60 R60 K65 ["ReactSymbols"]
      230 GETTABLEKS                       R61 R60 K66 ["REACT_FORWARD_REF_TYPE"]
      232 GETTABLEKS                       R62 R60 K67 ["REACT_FRAGMENT_TYPE"]
      234 GETTABLEKS                       R63 R60 K68 ["REACT_ELEMENT_TYPE"]
      236 GETTABLEKS                       R64 R60 K69 ["REACT_DEBUG_TRACING_MODE_TYPE"]
      238 GETTABLEKS                       R65 R60 K70 ["REACT_STRICT_MODE_TYPE"]
      240 GETTABLEKS                       R66 R60 K71 ["REACT_PROFILER_TYPE"]
      242 GETTABLEKS                       R67 R60 K72 ["REACT_PROVIDER_TYPE"]
      244 GETTABLEKS                       R68 R60 K73 ["REACT_CONTEXT_TYPE"]
      246 GETTABLEKS                       R69 R60 K74 ["REACT_SUSPENSE_TYPE"]
      248 GETTABLEKS                       R70 R60 K75 ["REACT_SUSPENSE_LIST_TYPE"]
      250 GETTABLEKS                       R71 R60 K76 ["REACT_MEMO_TYPE"]
      252 GETTABLEKS                       R72 R60 K77 ["REACT_LAZY_TYPE"]
      254 GETTABLEKS                       R73 R60 K78 ["REACT_OFFSCREEN_TYPE"]
      256 GETTABLEKS                       R74 R60 K79 ["REACT_LEGACY_HIDDEN_TYPE"]
      258 LOADNIL                          R75
      259 LOADNIL                          R76
      260 LOADNIL                          R77
      261 LOADNIL                          R78
      262 LOADNIL                          R79
      263 LOADNIL                          R80
      264 LOADNIL                          R81
      265 LOADNIL                          R82
      266 LOADN                            R83 1
      267 NEWCLOSURE                       R84 P0
      268 CAPTURE                          VAL R18
      269 CAPTURE                          VAL R53
      270 CAPTURE                          VAL R16
      271 CAPTURE                          REF R83
      272 SETGLOBAL                        R84 K80 ["FiberNode"]
      274 DUPCLOSURE                       R84 K81 [PROTO_1]
      275 DUPCLOSURE                       R85 K82 [PROTO_2]
      276 SETGLOBAL                        R85 K83 ["shouldConstruct"]
      278 DUPCLOSURE                       R85 K84 [PROTO_3]
      279 DUPCLOSURE                       R86 K85 [PROTO_4]
      280 CAPTURE                          VAL R24
      281 CAPTURE                          VAL R38
      282 CAPTURE                          VAL R61
      283 CAPTURE                          VAL R29
      284 CAPTURE                          VAL R71
      285 CAPTURE                          VAL R39
      286 CAPTURE                          VAL R23
      287 DUPCLOSURE                       R87 K86 [PROTO_5]
      288 CAPTURE                          VAL R18
      289 CAPTURE                          VAL R16
      290 CAPTURE                          VAL R20
      291 CAPTURE                          VAL R23
      292 CAPTURE                          VAL R38
      293 CAPTURE                          VAL R40
      294 CAPTURE                          VAL R51
      295 CAPTURE                          VAL R24
      296 CAPTURE                          VAL R50
      297 CAPTURE                          VAL R29
      298 CAPTURE                          VAL R52
      299 DUPCLOSURE                       R88 K87 [PROTO_6]
      300 CAPTURE                          VAL R20
      301 CAPTURE                          VAL R19
      302 CAPTURE                          VAL R53
      303 CAPTURE                          VAL R18
      304 CAPTURE                          VAL R16
      305 DUPCLOSURE                       R89 K88 [PROTO_7]
      306 CAPTURE                          VAL R21
      307 CAPTURE                          VAL R55
      308 CAPTURE                          VAL R59
      309 CAPTURE                          VAL R58
      310 CAPTURE                          VAL R22
      311 CAPTURE                          VAL R54
      312 CAPTURE                          VAL R16
      313 CAPTURE                          VAL R48
      314 CAPTURE                          VAL R57
      315 CAPTURE                          VAL R84
      316 CAPTURE                          VAL R25
      317 NEWCLOSURE                       R90 P8
      318 CAPTURE                          VAL R23
      319 CAPTURE                          VAL R51
      320 CAPTURE                          VAL R24
      321 CAPTURE                          VAL R50
      322 CAPTURE                          VAL R26
      323 CAPTURE                          VAL R62
      324 CAPTURE                          REF R77
      325 CAPTURE                          VAL R64
      326 CAPTURE                          VAL R31
      327 CAPTURE                          VAL R56
      328 CAPTURE                          VAL R65
      329 CAPTURE                          VAL R58
      330 CAPTURE                          VAL R66
      331 CAPTURE                          REF R76
      332 CAPTURE                          VAL R69
      333 CAPTURE                          REF R79
      334 CAPTURE                          VAL R73
      335 CAPTURE                          REF R80
      336 CAPTURE                          VAL R74
      337 CAPTURE                          REF R81
      338 CAPTURE                          VAL R67
      339 CAPTURE                          VAL R32
      340 CAPTURE                          VAL R68
      341 CAPTURE                          VAL R33
      342 CAPTURE                          VAL R61
      343 CAPTURE                          VAL R29
      344 CAPTURE                          VAL R52
      345 CAPTURE                          VAL R71
      346 CAPTURE                          VAL R39
      347 CAPTURE                          VAL R72
      348 CAPTURE                          VAL R41
      349 CAPTURE                          VAL R2
      350 CAPTURE                          VAL R4
      351 CAPTURE                          VAL R46
      352 CAPTURE                          VAL R3
      353 CAPTURE                          VAL R63
      354 CAPTURE                          VAL R14
      355 DUPCLOSURE                       R91 K89 [PROTO_9]
      356 CAPTURE                          VAL R90
      357 DUPCLOSURE                       R77 K90 [PROTO_10]
      358 CAPTURE                          VAL R30
      359 DUPCLOSURE                       R78 K91 [PROTO_11]
      360 CAPTURE                          VAL R42
      361 DUPCLOSURE                       R75 K92 [PROTO_12]
      362 CAPTURE                          VAL R43
      363 DUPCLOSURE                       R76 K93 [PROTO_13]
      364 CAPTURE                          VAL R5
      365 CAPTURE                          VAL R34
      366 CAPTURE                          VAL R57
      367 CAPTURE                          VAL R66
      368 CAPTURE                          VAL R16
      369 DUPCLOSURE                       R79 K94 [PROTO_14]
      370 CAPTURE                          VAL R35
      371 CAPTURE                          VAL R69
      372 DUPCLOSURE                       R82 K95 [PROTO_15]
      373 CAPTURE                          VAL R36
      374 CAPTURE                          VAL R70
      375 DUPCLOSURE                       R80 K96 [PROTO_16]
      376 CAPTURE                          VAL R44
      377 CAPTURE                          VAL R73
      378 DUPCLOSURE                       R81 K97 [PROTO_17]
      379 CAPTURE                          VAL R45
      380 CAPTURE                          VAL R74
      381 DUPCLOSURE                       R92 K98 [PROTO_18]
      382 CAPTURE                          VAL R27
      383 DUPCLOSURE                       R93 K99 [PROTO_19]
      384 CAPTURE                          VAL R26
      385 CAPTURE                          VAL R54
      386 DUPCLOSURE                       R94 K100 [PROTO_20]
      387 CAPTURE                          VAL R37
      388 CAPTURE                          VAL R54
      389 DUPCLOSURE                       R95 K101 [PROTO_21]
      390 CAPTURE                          VAL R28
      391 DUPCLOSURE                       R96 K102 [PROTO_22]
      392 CAPTURE                          VAL R23
      393 CAPTURE                          VAL R54
      394 CAPTURE                          VAL R16
      395 DUPTABLE                         R97 K121 [{"isSimpleFunctionComponent", "resolveLazyComponentTag", "createWorkInProgress", "resetWorkInProgress", "createHostRootFiber", "createFiberFromTypeAndProps", "createFiberFromElement", "createFiberFromFragment", "createFiberFromFundamental", "createFiberFromSuspense", "createFiberFromSuspenseList", "createFiberFromOffscreen", "createFiberFromLegacyHidden", "createFiberFromText", "createFiberFromHostInstanceForDeletion", "createFiberFromDehydratedFragment", "createFiberFromPortal", "assignFiberPropertiesInDEV"}]
      396 SETTABLEKS                       R85 R97 K103 ["isSimpleFunctionComponent"]
      398 SETTABLEKS                       R86 R97 K104 ["resolveLazyComponentTag"]
      400 SETTABLEKS                       R87 R97 K105 ["createWorkInProgress"]
      402 SETTABLEKS                       R88 R97 K106 ["resetWorkInProgress"]
      404 SETTABLEKS                       R89 R97 K107 ["createHostRootFiber"]
      406 SETTABLEKS                       R90 R97 K108 ["createFiberFromTypeAndProps"]
      408 SETTABLEKS                       R91 R97 K109 ["createFiberFromElement"]
      410 SETTABLEKS                       R77 R97 K110 ["createFiberFromFragment"]
      412 SETTABLEKS                       R78 R97 K111 ["createFiberFromFundamental"]
      414 SETTABLEKS                       R79 R97 K112 ["createFiberFromSuspense"]
      416 SETTABLEKS                       R82 R97 K113 ["createFiberFromSuspenseList"]
      418 SETTABLEKS                       R80 R97 K114 ["createFiberFromOffscreen"]
      420 SETTABLEKS                       R81 R97 K115 ["createFiberFromLegacyHidden"]
      422 SETTABLEKS                       R92 R97 K116 ["createFiberFromText"]
      424 SETTABLEKS                       R93 R97 K117 ["createFiberFromHostInstanceForDeletion"]
      426 SETTABLEKS                       R94 R97 K118 ["createFiberFromDehydratedFragment"]
      428 SETTABLEKS                       R95 R97 K119 ["createFiberFromPortal"]
      430 SETTABLEKS                       R96 R97 K120 ["assignFiberPropertiesInDEV"]
      432 CLOSEUPVALS                      R76
      433 RETURN                           R97 1
