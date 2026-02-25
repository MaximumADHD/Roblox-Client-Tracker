PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["flags"]
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["flags"]
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["effectTag"]
        9 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["$$typeof"]
        9 JUMP                             ; [+1]
       10 MOVE                             R1 R0
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R4 R1
       13 GETIMPORT                        R3 K1 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R3 R1
       20 GETIMPORT                        R2 K5 [tostring]
       22 CALL                             R2 1 1
       23 RETURN                           R2 1
       24 MOVE                             R2 R1
       25 RETURN                           R2 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R2 R0 K3 ["$$typeof"]
        9 JUMP                             ; [+1]
       10 MOVE                             R2 R0
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K1 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+8]
       18 FASTCALL1                        TOSTRING R2 ; [+3]
       19 MOVE                             R4 R2
       20 GETIMPORT                        R3 K5 [tostring]
       22 CALL                             R3 1 1
       23 MOVE                             R1 R3
       24 JUMP                             ; [+1]
       25 MOVE                             R1 R2
       26 GETUPVAL                         R2 0
       27 JUMPIFEQ                         R1 R2 ; [+4]
       29 GETUPVAL                         R2 1
       30 JUMPIFNOTEQ                      R1 R2 ; [+6]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R3 R0 K6 ["type"]
       35 CALL                             R2 1 -1
       36 RETURN                           R2 -1
       37 GETUPVAL                         R2 3
       38 JUMPIFEQ                         R1 R2 ; [+4]
       40 GETUPVAL                         R2 4
       41 JUMPIFNOTEQ                      R1 R2 ; [+4]
       43 GETTABLEKS                       R2 R0 K7 ["render"]
       45 RETURN                           R2 1
       46 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 GETTABLEKS                       R2 R0 K1 ["tag"]
        4 MOVE                             R3 R1
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K3 [typeof]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+52]
       12 JUMPIFEQKNIL                     R1 ; [+50]
       14 FASTCALL1                        TYPEOF R1 ; [+3]
       15 MOVE                             R7 R1
       16 GETIMPORT                        R6 K3 [typeof]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+4]
       21 GETTABLEKS                       R5 R1 K5 ["$$typeof"]
       23 JUMP                             ; [+1]
       24 MOVE                             R5 R1
       25 FASTCALL1                        TYPEOF R5 ; [+3]
       26 MOVE                             R7 R5
       27 GETIMPORT                        R6 K3 [typeof]
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+8]
       32 FASTCALL1                        TOSTRING R5 ; [+3]
       33 MOVE                             R7 R5
       34 GETIMPORT                        R6 K7 [tostring]
       36 CALL                             R6 1 1
       37 MOVE                             R4 R6
       38 JUMP                             ; [+1]
       39 MOVE                             R4 R5
       40 GETUPVAL                         R5 0
       41 JUMPIFEQ                         R4 R5 ; [+4]
       43 GETUPVAL                         R5 1
       44 JUMPIFNOTEQ                      R4 R5 ; [+7]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R6 R1 K0 ["type"]
       49 CALL                             R5 1 1
       50 MOVE                             R3 R5
       51 JUMP                             ; [+11]
       52 GETUPVAL                         R5 3
       53 JUMPIFEQ                         R4 R5 ; [+4]
       55 GETUPVAL                         R5 4
       56 JUMPIFNOTEQ                      R4 R5 ; [+4]
       58 GETTABLEKS                       R3 R1 K8 ["render"]
       60 JUMP                             ; [+2]
       61 MOVE                             R3 R1
       62 JUMP                             ; [0]
       63 LOADNIL                          R4
       64 GETUPVAL                         R5 5
       65 JUMPIFEQ                         R2 R5 ; [+4]
       67 GETUPVAL                         R5 6
       68 JUMPIFNOTEQ                      R2 R5 ; [+5]
       70 GETUPVAL                         R5 7
       71 MOVE                             R6 R3
       72 CALL                             R5 1 -1
       73 RETURN                           R5 -1
       74 GETUPVAL                         R5 8
       75 JUMPIFEQ                         R2 R5 ; [+4]
       77 GETUPVAL                         R5 9
       78 JUMPIFNOTEQ                      R2 R5 ; [+5]
       80 GETUPVAL                         R5 7
       81 MOVE                             R6 R3
       82 CALL                             R5 1 -1
       83 RETURN                           R5 -1
       84 GETUPVAL                         R5 10
       85 JUMPIFNOTEQ                      R2 R5 ; [+9]
       87 GETUPVAL                         R5 11
       88 GETTABLEKS                       R6 R0 K9 ["elementType"]
       90 MOVE                             R7 R3
       91 LOADK                            R8 K10 ["ForwardRef"]
       92 LOADK                            R9 K11 ["Anonymous"]
       93 CALL                             R5 4 -1
       94 RETURN                           R5 -1
       95 GETUPVAL                         R5 12
       96 JUMPIFNOTEQ                      R2 R5 ; [+3]
       98 LOADNIL                          R5
       99 RETURN                           R5 1
      100 GETUPVAL                         R5 13
      101 JUMPIFNOTEQ                      R2 R5 ; [+2]
      103 RETURN                           R1 1
      104 GETUPVAL                         R5 14
      105 JUMPIFEQ                         R2 R5 ; [+7]
      107 GETUPVAL                         R5 15
      108 JUMPIFEQ                         R2 R5 ; [+4]
      110 GETUPVAL                         R5 16
      111 JUMPIFNOTEQ                      R2 R5 ; [+3]
      113 LOADNIL                          R5
      114 RETURN                           R5 1
      115 GETUPVAL                         R5 17
      116 JUMPIFEQ                         R2 R5 ; [+4]
      118 GETUPVAL                         R5 18
      119 JUMPIFNOTEQ                      R2 R5 ; [+6]
      121 GETUPVAL                         R5 7
      122 MOVE                             R6 R3
      123 LOADK                            R7 K11 ["Anonymous"]
      124 CALL                             R5 2 -1
      125 RETURN                           R5 -1
      126 GETUPVAL                         R5 19
      127 JUMPIFNOTEQ                      R2 R5 ; [+3]
      129 LOADK                            R5 K12 ["Suspense"]
      130 RETURN                           R5 1
      131 GETUPVAL                         R5 20
      132 JUMPIFNOTEQ                      R2 R5 ; [+3]
      134 LOADK                            R5 K13 ["SuspenseList"]
      135 RETURN                           R5 1
      136 FASTCALL1                        TYPEOF R1 ; [+3]
      137 MOVE                             R8 R1
      138 GETIMPORT                        R7 K3 [typeof]
      140 CALL                             R7 1 1
      141 JUMPIFNOTEQKS                    R7 K4 ["table"] ; [+4]
      143 GETTABLEKS                       R6 R1 K5 ["$$typeof"]
      145 JUMP                             ; [+1]
      146 MOVE                             R6 R1
      147 FASTCALL1                        TYPEOF R6 ; [+3]
      148 MOVE                             R8 R6
      149 GETIMPORT                        R7 K3 [typeof]
      151 CALL                             R7 1 1
      152 JUMPIFNOTEQKS                    R7 K4 ["table"] ; [+8]
      154 FASTCALL1                        TOSTRING R6 ; [+3]
      155 MOVE                             R8 R6
      156 GETIMPORT                        R7 K7 [tostring]
      158 CALL                             R7 1 1
      159 MOVE                             R5 R7
      160 JUMP                             ; [+1]
      161 MOVE                             R5 R6
      162 GETUPVAL                         R6 21
      163 JUMPIFEQ                         R5 R6 ; [+7]
      165 GETUPVAL                         R6 22
      166 JUMPIFEQ                         R5 R6 ; [+4]
      168 GETUPVAL                         R6 23
      169 JUMPIFNOTEQ                      R5 R6 ; [+3]
      171 LOADNIL                          R6
      172 RETURN                           R6 1
      173 GETUPVAL                         R6 24
      174 JUMPIFEQ                         R5 R6 ; [+4]
      176 GETUPVAL                         R6 25
      177 JUMPIFNOTEQ                      R5 R6 ; [+19]
      179 GETTABLEKS                       R7 R0 K0 ["type"]
      181 GETTABLEKS                       R6 R7 K14 ["_context"]
      183 JUMPIF                           R6 ; [+4]
      184 GETTABLEKS                       R7 R0 K0 ["type"]
      186 GETTABLEKS                       R6 R7 K15 ["context"]
      188 MOVE                             R4 R6
      189 GETIMPORT                        R6 K18 [string.format]
      191 LOADK                            R7 K19 ["%s.Provider"]
      192 GETTABLEKS                       R9 R4 K21 ["displayName"]
      194 ORK                              R8 R9 K20 ["Context"]
      195 CALL                             R6 2 -1
      196 RETURN                           R6 -1
      197 GETUPVAL                         R6 26
      198 JUMPIFEQ                         R5 R6 ; [+4]
      200 GETUPVAL                         R6 27
      201 JUMPIFNOTEQ                      R5 R6 ; [+17]
      203 GETTABLEKS                       R7 R0 K0 ["type"]
      205 GETTABLEKS                       R6 R7 K14 ["_context"]
      207 JUMPIF                           R6 ; [+2]
      208 GETTABLEKS                       R6 R0 K0 ["type"]
      210 MOVE                             R4 R6
      211 GETIMPORT                        R6 K18 [string.format]
      213 LOADK                            R7 K22 ["%s.Consumer"]
      214 GETTABLEKS                       R9 R4 K21 ["displayName"]
      216 ORK                              R8 R9 K20 ["Context"]
      217 CALL                             R6 2 -1
      218 RETURN                           R6 -1
      219 GETUPVAL                         R6 28
      220 JUMPIFEQ                         R5 R6 ; [+4]
      222 GETUPVAL                         R6 29
      223 JUMPIFNOTEQ                      R5 R6 ; [+3]
      225 LOADNIL                          R6
      226 RETURN                           R6 1
      227 GETUPVAL                         R6 30
      228 JUMPIFEQ                         R5 R6 ; [+4]
      230 GETUPVAL                         R6 31
      231 JUMPIFNOTEQ                      R5 R6 ; [+10]
      233 GETIMPORT                        R6 K18 [string.format]
      235 LOADK                            R7 K23 ["Profiler(%s)"]
      236 GETTABLEKS                       R9 R0 K24 ["memoizedProps"]
      238 GETTABLEKS                       R8 R9 K25 ["id"]
      240 CALL                             R6 2 -1
      241 RETURN                           R6 -1
      242 GETUPVAL                         R6 32
      243 JUMPIFEQ                         R5 R6 ; [+4]
      245 GETUPVAL                         R6 33
      246 JUMPIFNOTEQ                      R5 R6 ; [+3]
      248 LOADK                            R6 K26 ["Scope"]
      249 RETURN                           R6 1
      250 LOADNIL                          R6
      251 RETURN                           R6 1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"NoFlags", "PerformedWork", "Placement"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["NoFlags"]
        4 LOADN                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["PerformedWork"]
        7 LOADN                            R2 2
        8 SETTABLEKS                       R2 R1 K2 ["Placement"]
       10 DUPTABLE                         R2 K10 [{"ImmediatePriority", "UserBlockingPriority", "NormalPriority", "LowPriority", "IdlePriority", "NoPriority"}]
       11 LOADN                            R3 99
       12 SETTABLEKS                       R3 R2 K4 ["ImmediatePriority"]
       14 LOADN                            R3 98
       15 SETTABLEKS                       R3 R2 K5 ["UserBlockingPriority"]
       17 LOADN                            R3 97
       18 SETTABLEKS                       R3 R2 K6 ["NormalPriority"]
       20 LOADN                            R3 96
       21 SETTABLEKS                       R3 R2 K7 ["LowPriority"]
       23 LOADN                            R3 95
       24 SETTABLEKS                       R3 R2 K8 ["IdlePriority"]
       26 LOADN                            R3 90
       27 SETTABLEKS                       R3 R2 K9 ["NoPriority"]
       29 DUPTABLE                         R3 K36 [{"Block", "ClassComponent", "ContextConsumer", "ContextProvider", "CoroutineComponent", "CoroutineHandlerPhase", "DehydratedSuspenseComponent", "ForwardRef", "Fragment", "FunctionComponent", "HostComponent", "HostPortal", "HostRoot", "HostText", "IncompleteClassComponent", "IndeterminateComponent", "LazyComponent", "MemoComponent", "Mode", "OffscreenComponent", "Profiler", "SimpleMemoComponent", "SuspenseComponent", "SuspenseListComponent", "YieldComponent"}]
       30 LOADN                            R4 22
       31 SETTABLEKS                       R4 R3 K11 ["Block"]
       33 LOADN                            R4 1
       34 SETTABLEKS                       R4 R3 K12 ["ClassComponent"]
       36 LOADN                            R4 9
       37 SETTABLEKS                       R4 R3 K13 ["ContextConsumer"]
       39 LOADN                            R4 10
       40 SETTABLEKS                       R4 R3 K14 ["ContextProvider"]
       42 LOADN                            R4 255
       43 SETTABLEKS                       R4 R3 K15 ["CoroutineComponent"]
       45 LOADN                            R4 255
       46 SETTABLEKS                       R4 R3 K16 ["CoroutineHandlerPhase"]
       48 LOADN                            R4 18
       49 SETTABLEKS                       R4 R3 K17 ["DehydratedSuspenseComponent"]
       51 LOADN                            R4 11
       52 SETTABLEKS                       R4 R3 K18 ["ForwardRef"]
       54 LOADN                            R4 7
       55 SETTABLEKS                       R4 R3 K19 ["Fragment"]
       57 LOADN                            R4 0
       58 SETTABLEKS                       R4 R3 K20 ["FunctionComponent"]
       60 LOADN                            R4 5
       61 SETTABLEKS                       R4 R3 K21 ["HostComponent"]
       63 LOADN                            R4 4
       64 SETTABLEKS                       R4 R3 K22 ["HostPortal"]
       66 LOADN                            R4 3
       67 SETTABLEKS                       R4 R3 K23 ["HostRoot"]
       69 LOADN                            R4 6
       70 SETTABLEKS                       R4 R3 K24 ["HostText"]
       72 LOADN                            R4 17
       73 SETTABLEKS                       R4 R3 K25 ["IncompleteClassComponent"]
       75 LOADN                            R4 2
       76 SETTABLEKS                       R4 R3 K26 ["IndeterminateComponent"]
       78 LOADN                            R4 16
       79 SETTABLEKS                       R4 R3 K27 ["LazyComponent"]
       81 LOADN                            R4 14
       82 SETTABLEKS                       R4 R3 K28 ["MemoComponent"]
       84 LOADN                            R4 8
       85 SETTABLEKS                       R4 R3 K29 ["Mode"]
       87 LOADN                            R4 23
       88 SETTABLEKS                       R4 R3 K30 ["OffscreenComponent"]
       90 LOADN                            R4 12
       91 SETTABLEKS                       R4 R3 K31 ["Profiler"]
       93 LOADN                            R4 15
       94 SETTABLEKS                       R4 R3 K32 ["SimpleMemoComponent"]
       96 LOADN                            R4 13
       97 SETTABLEKS                       R4 R3 K33 ["SuspenseComponent"]
       99 LOADN                            R4 19
      100 SETTABLEKS                       R4 R3 K34 ["SuspenseListComponent"]
      102 LOADN                            R4 255
      103 SETTABLEKS                       R4 R3 K35 ["YieldComponent"]
      105 DUPCLOSURE                       R4 K37 [PROTO_2]
      106 GETTABLEKS                       R5 R3 K12 ["ClassComponent"]
      108 GETTABLEKS                       R6 R3 K25 ["IncompleteClassComponent"]
      110 GETTABLEKS                       R7 R3 K20 ["FunctionComponent"]
      112 GETTABLEKS                       R8 R3 K26 ["IndeterminateComponent"]
      114 GETTABLEKS                       R9 R3 K18 ["ForwardRef"]
      116 GETTABLEKS                       R10 R3 K23 ["HostRoot"]
      118 GETTABLEKS                       R11 R3 K21 ["HostComponent"]
      120 GETTABLEKS                       R12 R3 K22 ["HostPortal"]
      122 GETTABLEKS                       R13 R3 K24 ["HostText"]
      124 GETTABLEKS                       R14 R3 K19 ["Fragment"]
      126 GETTABLEKS                       R15 R3 K28 ["MemoComponent"]
      128 GETTABLEKS                       R16 R3 K32 ["SimpleMemoComponent"]
      130 GETTABLEKS                       R17 R3 K33 ["SuspenseComponent"]
      132 GETTABLEKS                       R18 R3 K34 ["SuspenseListComponent"]
      134 DUPCLOSURE                       R19 K38 [PROTO_3]
      135 CAPTURE                          UPVAL U0
      136 CAPTURE                          UPVAL U1
      137 CAPTURE                          VAL R19
      138 CAPTURE                          UPVAL U2
      139 CAPTURE                          UPVAL U3
      140 NEWCLOSURE                       R20 P2
      141 CAPTURE                          UPVAL U0
      142 CAPTURE                          UPVAL U1
      143 CAPTURE                          VAL R19
      144 CAPTURE                          UPVAL U2
      145 CAPTURE                          UPVAL U3
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R6
      148 CAPTURE                          UPVAL U4
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R9
      152 CAPTURE                          UPVAL U5
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R18
      162 CAPTURE                          UPVAL U6
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          UPVAL U8
      165 CAPTURE                          UPVAL U9
      166 CAPTURE                          UPVAL U10
      167 CAPTURE                          UPVAL U11
      168 CAPTURE                          UPVAL U12
      169 CAPTURE                          UPVAL U13
      170 CAPTURE                          UPVAL U14
      171 CAPTURE                          UPVAL U15
      172 CAPTURE                          UPVAL U16
      173 CAPTURE                          UPVAL U17
      174 CAPTURE                          UPVAL U18
      175 DUPTABLE                         R21 K44 [{"getDisplayNameForFiber", "getTypeSymbol", "ReactPriorityLevels", "ReactTypeOfWork", "ReactTypeOfSideEffect"}]
      176 SETTABLEKS                       R20 R21 K39 ["getDisplayNameForFiber"]
      178 SETTABLEKS                       R4 R21 K40 ["getTypeSymbol"]
      180 SETTABLEKS                       R2 R21 K41 ["ReactPriorityLevels"]
      182 SETTABLEKS                       R3 R21 K42 ["ReactTypeOfWork"]
      184 SETTABLEKS                       R1 R21 K43 ["ReactTypeOfSideEffect"]
      186 RETURN                           R21 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["has"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+14]
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 0
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 NAMECALL                         R2 R2 K1 ["set"]
       13 CALL                             R2 3 0
       14 GETUPVAL                         R2 2
       15 MOVE                             R4 R1
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K1 ["set"]
       19 CALL                             R2 3 0
       20 GETUPVAL                         R1 0
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K2 ["get"]
       24 CALL                             R1 2 1
       25 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+92]
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 ORK                              R3 R4 K0 ["nil"]
        6 GETUPVAL                         R5 2
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R5 K1 ["has"]
       10 CALL                             R5 2 1
       11 JUMPIF                           R5 ; [+14]
       12 GETUPVAL                         R5 3
       13 CALL                             R5 0 1
       14 GETUPVAL                         R6 2
       15 MOVE                             R8 R1
       16 MOVE                             R9 R5
       17 NAMECALL                         R6 R6 K2 ["set"]
       19 CALL                             R6 3 0
       20 GETUPVAL                         R6 4
       21 MOVE                             R8 R5
       22 MOVE                             R9 R1
       23 NAMECALL                         R6 R6 K2 ["set"]
       25 CALL                             R6 3 0
       26 GETUPVAL                         R4 2
       27 MOVE                             R6 R1
       28 NAMECALL                         R4 R4 K3 ["get"]
       30 CALL                             R4 2 1
       31 JUMPIFEQKNIL                     R2 ; [+5]
       33 GETUPVAL                         R5 1
       34 MOVE                             R6 R2
       35 CALL                             R5 1 1
       36 JUMP                             ; [+1]
       37 LOADK                            R5 K0 ["nil"]
       38 JUMPIFNOT                        R2 ; [+26]
       39 GETUPVAL                         R7 2
       40 MOVE                             R9 R2
       41 NAMECALL                         R7 R7 K1 ["has"]
       43 CALL                             R7 2 1
       44 JUMPIF                           R7 ; [+14]
       45 GETUPVAL                         R7 3
       46 CALL                             R7 0 1
       47 GETUPVAL                         R8 2
       48 MOVE                             R10 R2
       49 MOVE                             R11 R7
       50 NAMECALL                         R8 R8 K2 ["set"]
       52 CALL                             R8 3 0
       53 GETUPVAL                         R8 4
       54 MOVE                             R10 R7
       55 MOVE                             R11 R2
       56 NAMECALL                         R8 R8 K2 ["set"]
       58 CALL                             R8 3 0
       59 GETUPVAL                         R6 2
       60 MOVE                             R8 R2
       61 NAMECALL                         R6 R6 K3 ["get"]
       63 CALL                             R6 2 1
       64 JUMP                             ; [+1]
       65 LOADK                            R6 K4 [""]
       66 GETUPVAL                         R8 5
       67 GETTABLEKS                       R7 R8 K5 ["log"]
       69 GETIMPORT                        R8 K8 [string.format]
       71 LOADK                            R9 K9 ["[renderer] %s %s (%d) %s"]
       72 MOVE                             R10 R0
       73 MOVE                             R11 R3
       74 MOVE                             R12 R4
       75 JUMPIFNOT                        R2 ; [+15]
       76 GETIMPORT                        R13 K8 [string.format]
       78 LOADK                            R14 K10 ["%s (%s)"]
       79 FASTCALL1                        TOSTRING R5 ; [+3]
       80 MOVE                             R16 R5
       81 GETIMPORT                        R15 K12 [tostring]
       83 CALL                             R15 1 1
       84 FASTCALL1                        TOSTRING R6 ; [+3]
       85 MOVE                             R17 R6
       86 GETIMPORT                        R16 K12 [tostring]
       88 CALL                             R16 1 1
       89 CALL                             R13 3 1
       90 JUMP                             ; [+1]
       91 LOADK                            R13 K4 [""]
       92 CALL                             R8 5 -1
       93 CALL                             R7 -1 0
       94 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["clear"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["clear"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 NAMECALL                         R1 R1 K0 ["clear"]
       11 CALL                             R1 1 0
       12 MOVE                             R1 R0
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETTABLEKS                       R6 R5 K1 ["isEnabled"]
       18 JUMPIFNOT                        R6 ; [+64]
       19 GETTABLEKS                       R6 R5 K2 ["type"]
       21 GETUPVAL                         R7 3
       22 JUMPIFNOTEQ                      R6 R7 ; [+8]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R8 R5 K3 ["value"]
       27 NAMECALL                         R6 R6 K4 ["add"]
       29 CALL                             R6 2 0
       30 JUMP                             ; [+52]
       31 GETTABLEKS                       R6 R5 K2 ["type"]
       33 GETUPVAL                         R7 4
       34 JUMPIFNOTEQ                      R6 R7 ; [+8]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R8 R5 K3 ["value"]
       39 NAMECALL                         R6 R6 K4 ["add"]
       41 CALL                             R6 2 0
       42 JUMP                             ; [+40]
       43 GETTABLEKS                       R6 R5 K2 ["type"]
       45 GETUPVAL                         R7 5
       46 JUMPIFNOTEQ                      R6 R7 ; [+15]
       48 GETTABLEKS                       R6 R5 K5 ["isValid"]
       50 JUMPIFNOT                        R6 ; [+32]
       51 GETTABLEKS                       R6 R5 K3 ["value"]
       53 JUMPIFEQKS                       R6 K6 [""] ; [+29]
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R8 R5 K3 ["value"]
       58 NAMECALL                         R6 R6 K4 ["add"]
       60 CALL                             R6 2 0
       61 JUMP                             ; [+21]
       62 GETTABLEKS                       R6 R5 K2 ["type"]
       64 GETUPVAL                         R7 6
       65 JUMPIFNOTEQ                      R6 R7 ; [+7]
       67 GETUPVAL                         R6 1
       68 LOADK                            R8 K7 ["%("]
       69 NAMECALL                         R6 R6 K4 ["add"]
       71 CALL                             R6 2 0
       72 JUMP                             ; [+10]
       73 GETUPVAL                         R7 7
       74 GETTABLEKS                       R6 R7 K8 ["warn"]
       76 GETIMPORT                        R7 K11 [string.format]
       78 LOADK                            R8 K12 ["Invalid component filter type \"%d\""]
       79 GETTABLEKS                       R9 R5 K2 ["type"]
       81 CALL                             R7 2 -1
       82 CALL                             R6 -1 0
       83 FORGLOOP                         R1 2 ; [-68]
       85 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 1
        1 GETTABLEKS                       R3 R0 K0 ["current"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R3 K1 ["has"]
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+14]
       10 GETUPVAL                         R3 3
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 2
       13 MOVE                             R6 R2
       14 MOVE                             R7 R3
       15 NAMECALL                         R4 R4 K2 ["set"]
       17 CALL                             R4 3 0
       18 GETUPVAL                         R4 4
       19 MOVE                             R6 R3
       20 MOVE                             R7 R2
       21 NAMECALL                         R4 R4 K2 ["set"]
       23 CALL                             R4 3 0
       24 GETUPVAL                         R3 2
       25 MOVE                             R5 R2
       26 NAMECALL                         R3 R3 K3 ["get"]
       28 CALL                             R3 2 1
       29 MOVE                             R1 R3
       30 SETUPVAL                         R1 0
       31 GETUPVAL                         R1 5
       32 GETTABLEKS                       R2 R0 K0 ["current"]
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 6
       36 GETTABLEKS                       R2 R0 K0 ["current"]
       38 LOADB                            R3 0
       39 CALL                             R1 2 0
       40 LOADN                            R1 255
       41 SETUPVAL                         R1 0
       42 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 1
        1 GETTABLEKS                       R3 R0 K0 ["current"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R3 K1 ["has"]
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+14]
       10 GETUPVAL                         R3 3
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 2
       13 MOVE                             R6 R2
       14 MOVE                             R7 R3
       15 NAMECALL                         R4 R4 K2 ["set"]
       17 CALL                             R4 3 0
       18 GETUPVAL                         R4 4
       19 MOVE                             R6 R3
       20 MOVE                             R7 R2
       21 NAMECALL                         R4 R4 K2 ["set"]
       23 CALL                             R4 3 0
       24 GETUPVAL                         R3 2
       25 MOVE                             R5 R2
       26 NAMECALL                         R3 R3 K3 ["get"]
       28 CALL                             R3 2 1
       29 MOVE                             R1 R3
       30 SETUPVAL                         R1 0
       31 GETUPVAL                         R1 5
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R3 R0 K0 ["current"]
       35 CALL                             R1 2 0
       36 GETUPVAL                         R1 6
       37 GETTABLEKS                       R2 R0 K0 ["current"]
       39 LOADNIL                          R3
       40 LOADB                            R4 0
       41 LOADB                            R5 0
       42 CALL                             R1 4 0
       43 GETUPVAL                         R1 7
       44 MOVE                             R2 R0
       45 CALL                             R1 1 0
       46 LOADN                            R1 255
       47 SETUPVAL                         R1 0
       48 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["Cannot modify filter preferences while profiling"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K3 ["getFiberRoots"]
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U8
       18 CAPTURE                          UPVAL U9
       19 NAMECALL                         R1 R1 K4 ["forEach"]
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 10
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 11
       26 NAMECALL                         R1 R1 K5 ["clear"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R1 R2 K3 ["getFiberRoots"]
       32 GETUPVAL                         R2 2
       33 CALL                             R1 1 1
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          UPVAL U13
       42 CAPTURE                          UPVAL U14
       43 NAMECALL                         R1 R1 K4 ["forEach"]
       45 CALL                             R1 2 0
       46 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_debugSource"]
        2 GETTABLEKS                       R2 R0 K1 ["tag"]
        4 GETTABLEKS                       R3 R0 K2 ["type"]
        6 GETUPVAL                         R4 0
        7 JUMPIFNOTEQ                      R2 R4 ; [+3]
        9 LOADB                            R4 1
       10 RETURN                           R4 1
       11 GETUPVAL                         R4 1
       12 JUMPIFEQ                         R2 R4 ; [+10]
       14 GETUPVAL                         R4 2
       15 JUMPIFEQ                         R2 R4 ; [+7]
       17 GETUPVAL                         R4 3
       18 JUMPIFEQ                         R2 R4 ; [+4]
       20 GETUPVAL                         R4 4
       21 JUMPIFNOTEQ                      R2 R4 ; [+3]
       23 LOADB                            R4 1
       24 RETURN                           R4 1
       25 GETUPVAL                         R4 5
       26 JUMPIFNOTEQ                      R2 R4 ; [+3]
       28 LOADB                            R4 0
       29 RETURN                           R4 1
       30 GETUPVAL                         R4 6
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 7
       34 JUMPIFEQ                         R4 R5 ; [+13]
       36 GETUPVAL                         R5 8
       37 JUMPIFEQ                         R4 R5 ; [+10]
       39 GETUPVAL                         R5 9
       40 JUMPIFEQ                         R4 R5 ; [+7]
       42 GETUPVAL                         R5 10
       43 JUMPIFEQ                         R4 R5 ; [+4]
       45 GETUPVAL                         R5 11
       46 JUMPIFNOTEQ                      R4 R5 ; [+3]
       48 LOADB                            R5 1
       49 RETURN                           R5 1
       50 GETUPVAL                         R4 12
       51 MOVE                             R5 R0
       52 CALL                             R4 1 1
       53 GETUPVAL                         R5 13
       54 MOVE                             R7 R4
       55 NAMECALL                         R5 R5 K3 ["has"]
       57 CALL                             R5 2 1
       58 JUMPIFNOT                        R5 ; [+2]
       59 LOADB                            R5 1
       60 RETURN                           R5 1
       61 GETUPVAL                         R6 14
       62 GETTABLEKS                       R5 R6 K4 ["size"]
       64 LOADN                            R6 0
       65 JUMPIFNOTLT                      R6 R5 ; [+20]
       67 GETUPVAL                         R5 15
       68 MOVE                             R6 R0
       69 CALL                             R5 1 1
       70 JUMPIFEQKNIL                     R5 ; [+15]
       72 GETUPVAL                         R6 14
       73 LOADNIL                          R7
       74 LOADNIL                          R8
       75 FORGPREP                         R6
       76 GETIMPORT                        R11 K7 [string.match]
       78 MOVE                             R12 R5
       79 MOVE                             R13 R10
       80 CALL                             R11 2 1
       81 JUMPIFNOT                        R11 ; [+2]
       82 LOADB                            R11 1
       83 RETURN                           R11 1
       84 FORGLOOP                         R6 2 ; [-9]
       86 JUMPIFEQKNIL                     R1 ; [+23]
       88 GETUPVAL                         R6 16
       89 GETTABLEKS                       R5 R6 K4 ["size"]
       91 LOADN                            R6 0
       92 JUMPIFNOTLT                      R6 R5 ; [+17]
       94 GETTABLEKS                       R5 R1 K8 ["fileName"]
       96 GETUPVAL                         R6 16
       97 LOADNIL                          R7
       98 LOADNIL                          R8
       99 FORGPREP                         R6
      100 GETIMPORT                        R11 K7 [string.match]
      102 MOVE                             R12 R5
      103 MOVE                             R13 R10
      104 CALL                             R11 2 1
      105 JUMPIFNOT                        R11 ; [+2]
      106 LOADB                            R11 1
      107 RETURN                           R11 1
      108 FORGLOOP                         R6 2 ; [-9]
      110 LOADB                            R5 0
      111 RETURN                           R5 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 GETTABLEKS                       R2 R0 K1 ["tag"]
        4 GETUPVAL                         R3 0
        5 JUMPIFEQ                         R2 R3 ; [+4]
        7 GETUPVAL                         R3 1
        8 JUMPIFNOTEQ                      R2 R3 ; [+3]
       10 GETUPVAL                         R3 2
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 3
       13 JUMPIFEQ                         R2 R3 ; [+4]
       15 GETUPVAL                         R3 4
       16 JUMPIFNOTEQ                      R2 R3 ; [+3]
       18 GETUPVAL                         R3 5
       19 RETURN                           R3 1
       20 GETUPVAL                         R3 6
       21 JUMPIFNOTEQ                      R2 R3 ; [+3]
       23 GETUPVAL                         R3 7
       24 RETURN                           R3 1
       25 GETUPVAL                         R3 8
       26 JUMPIFNOTEQ                      R2 R3 ; [+3]
       28 GETUPVAL                         R3 9
       29 RETURN                           R3 1
       30 GETUPVAL                         R3 10
       31 JUMPIFNOTEQ                      R2 R3 ; [+3]
       33 GETUPVAL                         R3 11
       34 RETURN                           R3 1
       35 GETUPVAL                         R3 12
       36 JUMPIFEQ                         R2 R3 ; [+7]
       38 GETUPVAL                         R3 13
       39 JUMPIFEQ                         R2 R3 ; [+4]
       41 GETUPVAL                         R3 14
       42 JUMPIFNOTEQ                      R2 R3 ; [+3]
       44 GETUPVAL                         R3 15
       45 RETURN                           R3 1
       46 GETUPVAL                         R3 16
       47 JUMPIFEQ                         R2 R3 ; [+4]
       49 GETUPVAL                         R3 17
       50 JUMPIFNOTEQ                      R2 R3 ; [+3]
       52 GETUPVAL                         R3 18
       53 RETURN                           R3 1
       54 GETUPVAL                         R3 19
       55 JUMPIFNOTEQ                      R2 R3 ; [+3]
       57 GETUPVAL                         R3 20
       58 RETURN                           R3 1
       59 GETUPVAL                         R3 21
       60 JUMPIFNOTEQ                      R2 R3 ; [+3]
       62 GETUPVAL                         R3 22
       63 RETURN                           R3 1
       64 GETUPVAL                         R3 23
       65 MOVE                             R4 R1
       66 CALL                             R3 1 1
       67 GETUPVAL                         R4 24
       68 JUMPIFEQ                         R3 R4 ; [+7]
       70 GETUPVAL                         R4 25
       71 JUMPIFEQ                         R3 R4 ; [+4]
       73 GETUPVAL                         R4 26
       74 JUMPIFNOTEQ                      R3 R4 ; [+3]
       76 GETUPVAL                         R4 27
       77 RETURN                           R4 1
       78 GETUPVAL                         R4 28
       79 JUMPIFEQ                         R3 R4 ; [+4]
       81 GETUPVAL                         R4 29
       82 JUMPIFNOTEQ                      R3 R4 ; [+3]
       84 GETUPVAL                         R4 27
       85 RETURN                           R4 1
       86 GETUPVAL                         R4 30
       87 JUMPIFEQ                         R3 R4 ; [+4]
       89 GETUPVAL                         R4 31
       90 JUMPIFNOTEQ                      R3 R4 ; [+3]
       92 GETUPVAL                         R4 27
       93 RETURN                           R4 1
       94 GETUPVAL                         R4 32
       95 JUMPIFEQ                         R3 R4 ; [+4]
       97 GETUPVAL                         R4 33
       98 JUMPIFNOTEQ                      R3 R4 ; [+3]
      100 GETUPVAL                         R4 15
      101 RETURN                           R4 1
      102 GETUPVAL                         R4 34
      103 JUMPIFEQ                         R3 R4 ; [+4]
      105 GETUPVAL                         R4 35
      106 JUMPIFNOTEQ                      R3 R4 ; [+3]
      108 GETUPVAL                         R4 36
      109 RETURN                           R4 1
      110 GETUPVAL                         R4 15
      111 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["has"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 1
        7 GETTABLEKS                       R1 R0 K1 ["alternate"]
        9 JUMPIFEQKNIL                     R1 ; [+8]
       11 GETUPVAL                         R2 0
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K0 ["has"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+1]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 0
       19 MOVE                             R4 R0
       20 NAMECALL                         R2 R2 K2 ["add"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+13]
        6 GETUPVAL                         R3 2
        7 JUMPIFEQ                         R2 R3 ; [+10]
        9 GETUPVAL                         R3 3
       10 JUMPIFEQ                         R2 R3 ; [+7]
       12 GETUPVAL                         R3 4
       13 JUMPIFEQ                         R2 R3 ; [+4]
       15 GETUPVAL                         R3 5
       16 JUMPIFNOTEQ                      R2 R3 ; [+69]
       18 JUMPIFNOTEQKNIL                  R0 ; [+18]
       20 DUPTABLE                         R3 K5 [{"context", "didHooksChange", "isFirstMount", "props", "state"}]
       21 GETUPVAL                         R4 6
       22 SETTABLEKS                       R4 R3 K0 ["context"]
       24 LOADB                            R4 0
       25 SETTABLEKS                       R4 R3 K1 ["didHooksChange"]
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K2 ["isFirstMount"]
       30 GETUPVAL                         R4 6
       31 SETTABLEKS                       R4 R3 K3 ["props"]
       33 GETUPVAL                         R4 6
       34 SETTABLEKS                       R4 R3 K4 ["state"]
       36 RETURN                           R3 1
       37 GETUPVAL                         R3 7
       38 MOVE                             R4 R1
       39 CALL                             R3 1 1
       40 GETUPVAL                         R4 8
       41 GETTABLEKS                       R5 R0 K6 ["memoizedProps"]
       43 GETTABLEKS                       R6 R1 K6 ["memoizedProps"]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R5 8
       47 GETTABLEKS                       R6 R0 K7 ["memoizedState"]
       49 GETTABLEKS                       R7 R1 K7 ["memoizedState"]
       51 CALL                             R5 2 1
       52 DUPTABLE                         R6 K5 [{"context", "didHooksChange", "isFirstMount", "props", "state"}]
       53 JUMPIFNOTEQKNIL                  R3 ; [+3]
       55 GETUPVAL                         R7 6
       56 JUMP                             ; [+1]
       57 MOVE                             R7 R3
       58 SETTABLEKS                       R7 R6 K0 ["context"]
       60 GETUPVAL                         R7 9
       61 GETTABLEKS                       R8 R0 K7 ["memoizedState"]
       63 GETTABLEKS                       R9 R1 K7 ["memoizedState"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K1 ["didHooksChange"]
       68 LOADB                            R7 0
       69 SETTABLEKS                       R7 R6 K2 ["isFirstMount"]
       71 JUMPIFNOTEQKNIL                  R4 ; [+3]
       73 GETUPVAL                         R7 6
       74 JUMP                             ; [+1]
       75 MOVE                             R7 R4
       76 SETTABLEKS                       R7 R6 K3 ["props"]
       78 JUMPIFNOTEQKNIL                  R5 ; [+3]
       80 GETUPVAL                         R7 6
       81 JUMP                             ; [+1]
       82 MOVE                             R7 R5
       83 SETTABLEKS                       R7 R6 K4 ["state"]
       85 RETURN                           R6 1
       86 LOADNIL                          R3
       87 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+44]
        6 GETUPVAL                         R1 2
        7 JUMPIFEQKNIL                     R1 ; [+41]
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 4
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R3 K0 ["has"]
       16 CALL                             R3 2 1
       17 JUMPIF                           R3 ; [+14]
       18 GETUPVAL                         R3 5
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 4
       21 MOVE                             R6 R2
       22 MOVE                             R7 R3
       23 NAMECALL                         R4 R4 K1 ["set"]
       25 CALL                             R4 3 0
       26 GETUPVAL                         R4 6
       27 MOVE                             R6 R3
       28 MOVE                             R7 R2
       29 NAMECALL                         R4 R4 K1 ["set"]
       31 CALL                             R4 3 0
       32 GETUPVAL                         R3 4
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K2 ["get"]
       36 CALL                             R3 2 1
       37 MOVE                             R1 R3
       38 GETUPVAL                         R2 7
       39 MOVE                             R3 R0
       40 CALL                             R2 1 1
       41 JUMPIFEQKNIL                     R2 ; [+7]
       43 GETUPVAL                         R3 2
       44 MOVE                             R5 R1
       45 MOVE                             R6 R2
       46 NAMECALL                         R3 R3 K1 ["set"]
       48 CALL                             R3 3 0
       49 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+38]
        6 GETTABLEKS                       R1 R0 K0 ["stateNode"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 2
       10 JUMPIFEQKNIL                     R1 ; [+25]
       12 GETTABLEKS                       R4 R1 K1 ["constructor"]
       14 JUMPIFNOT                        R4 ; [+9]
       15 GETTABLEKS                       R5 R1 K1 ["constructor"]
       17 GETTABLEKS                       R4 R5 K2 ["contextType"]
       19 JUMPIFEQKNIL                     R4 ; [+4]
       21 GETTABLEKS                       R3 R1 K3 ["context"]
       23 JUMP                             ; [+12]
       24 GETTABLEKS                       R2 R1 K3 ["context"]
       26 JUMPIFNOT                        R2 ; [+9]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R5 R6 K4 ["keys"]
       30 MOVE                             R6 R2
       31 CALL                             R5 1 1
       32 LENGTH                           R4 R5
       33 JUMPIFNOTEQKN                    R4 K5 [0] ; [+2]
       35 GETUPVAL                         R2 2
       36 NEWTABLE                         R4 0 2
       38 MOVE                             R5 R2
       39 MOVE                             R6 R3
       40 SETLIST                          R4 R5 2 [1]
       42 RETURN                           R4 1
       43 LOADNIL                          R1
       44 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+44]
        6 GETUPVAL                         R1 2
        7 JUMPIFEQKNIL                     R1 ; [+41]
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 4
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R3 K0 ["has"]
       16 CALL                             R3 2 1
       17 JUMPIF                           R3 ; [+14]
       18 GETUPVAL                         R3 5
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 4
       21 MOVE                             R6 R2
       22 MOVE                             R7 R3
       23 NAMECALL                         R4 R4 K1 ["set"]
       25 CALL                             R4 3 0
       26 GETUPVAL                         R4 6
       27 MOVE                             R6 R3
       28 MOVE                             R7 R2
       29 NAMECALL                         R4 R4 K1 ["set"]
       31 CALL                             R4 3 0
       32 GETUPVAL                         R3 4
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K2 ["get"]
       36 CALL                             R3 2 1
       37 MOVE                             R1 R3
       38 GETUPVAL                         R2 7
       39 MOVE                             R3 R0
       40 CALL                             R2 1 1
       41 JUMPIFEQKNIL                     R2 ; [+7]
       43 GETUPVAL                         R3 2
       44 MOVE                             R5 R1
       45 MOVE                             R6 R2
       46 NAMECALL                         R3 R3 K1 ["set"]
       48 CALL                             R3 3 0
       49 GETTABLEKS                       R1 R0 K3 ["child"]
       51 JUMPIFEQKNIL                     R1 ; [+7]
       53 GETUPVAL                         R2 8
       54 MOVE                             R3 R1
       55 CALL                             R2 1 0
       56 GETTABLEKS                       R1 R1 K4 ["sibling"]
       58 JUMPBACK                         ; [-8]
       59 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+75]
        6 GETUPVAL                         R1 2
        7 JUMPIFEQKNIL                     R1 ; [+72]
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 4
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R3 K0 ["has"]
       16 CALL                             R3 2 1
       17 JUMPIF                           R3 ; [+14]
       18 GETUPVAL                         R3 5
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 4
       21 MOVE                             R6 R2
       22 MOVE                             R7 R3
       23 NAMECALL                         R4 R4 K1 ["set"]
       25 CALL                             R4 3 0
       26 GETUPVAL                         R4 6
       27 MOVE                             R6 R3
       28 MOVE                             R7 R2
       29 NAMECALL                         R4 R4 K1 ["set"]
       31 CALL                             R4 3 0
       32 GETUPVAL                         R3 4
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K2 ["get"]
       36 CALL                             R3 2 1
       37 MOVE                             R1 R3
       38 GETUPVAL                         R3 2
       39 MOVE                             R5 R1
       40 NAMECALL                         R3 R3 K0 ["has"]
       42 CALL                             R3 2 1
       43 JUMPIFNOT                        R3 ; [+6]
       44 GETUPVAL                         R2 2
       45 MOVE                             R4 R1
       46 NAMECALL                         R2 R2 K2 ["get"]
       48 CALL                             R2 2 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R2
       51 GETUPVAL                         R3 7
       52 MOVE                             R4 R0
       53 CALL                             R3 1 1
       54 JUMPIFEQKNIL                     R2 ; [+3]
       56 JUMPIFNOTEQKNIL                  R3 ; [+3]
       58 LOADNIL                          R4
       59 RETURN                           R4 1
       60 GETTABLEN                        R4 R2 1
       61 GETTABLEN                        R5 R2 2
       62 GETTABLEN                        R6 R3 1
       63 GETTABLEN                        R7 R3 2
       64 GETUPVAL                         R8 8
       65 JUMPIFEQ                         R6 R8 ; [+6]
       67 GETUPVAL                         R8 9
       68 MOVE                             R9 R4
       69 MOVE                             R10 R6
       70 CALL                             R8 2 -1
       71 RETURN                           R8 -1
       72 GETUPVAL                         R8 8
       73 JUMPIFEQ                         R7 R8 ; [+6]
       75 JUMPIFNOTEQ                      R5 R7 ; [+2]
       77 LOADB                            R8 0 +1
       78 LOADB                            R8 1
       79 RETURN                           R8 1
       80 LOADNIL                          R1
       81 RETURN                           R1 1

PROTO_20:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 JUMPIFNOTLT                      R1 R5 ; [+3]
        7 MOVE                             R1 R5
        8 JUMP                             ; [0]
        9 FORGLOOP                         R2 2 ; [-5]
       11 RETURN                           R1 1

PROTO_21:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 LOADN                            R3 0
        5 MOVE                             R4 R1
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 JUMPIFNOTLT                      R3 R7 ; [+3]
       11 MOVE                             R3 R7
       12 JUMP                             ; [0]
       13 FORGLOOP                         R4 2 ; [-5]
       15 MOVE                             R2 R3
       16 LOADN                            R4 0
       17 MOVE                             R5 R0
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 JUMPIFNOTLT                      R4 R8 ; [+3]
       23 MOVE                             R4 R8
       24 JUMP                             ; [0]
       25 FORGLOOP                         R5 2 ; [-5]
       27 MOVE                             R3 R4
       28 JUMPIFEQ                         R2 R3 ; [+3]
       30 LOADB                            R4 0
       31 RETURN                           R4 1
       32 LOADN                            R6 1
       33 MOVE                             R4 R2
       34 LOADN                            R5 1
       35 FORNPREP                         R4
       36 GETUPVAL                         R7 0
       37 GETTABLE                         R8 R0 R6
       38 GETTABLE                         R9 R1 R6
       39 CALL                             R7 2 1
       40 JUMPIF                           R7 ; [+2]
       41 LOADB                            R7 0
       42 RETURN                           R7 1
       43 FORNLOOP                         R4
       44 LOADB                            R4 1
       45 RETURN                           R4 1

PROTO_22:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+42]
        3 LOADB                            R1 0
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+34]
       11 LOADB                            R1 0
       12 GETTABLEKS                       R2 R0 K3 ["tag"]
       14 JUMPIFEQKNIL                     R2 ; [+29]
       16 LOADB                            R1 0
       17 GETTABLEKS                       R2 R0 K4 ["create"]
       19 JUMPIFEQKNIL                     R2 ; [+24]
       21 LOADB                            R1 0
       22 GETTABLEKS                       R2 R0 K5 ["destroy"]
       24 JUMPIFEQKNIL                     R2 ; [+19]
       26 LOADB                            R1 0
       27 GETTABLEKS                       R2 R0 K6 ["deps"]
       29 JUMPIFEQKNIL                     R2 ; [+14]
       31 GETTABLEKS                       R2 R0 K6 ["deps"]
       33 JUMPIFEQKNIL                     R2 ; [+8]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R1 R2 K7 ["isArray"]
       38 GETTABLEKS                       R2 R0 K6 ["deps"]
       40 CALL                             R1 1 1
       41 JUMPIFNOT                        R1 ; [+2]
       42 GETTABLEKS                       R1 R0 K8 ["next"]
       44 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["memoizedState"]
        2 GETTABLEKS                       R3 R1 K0 ["memoizedState"]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 JUMPIFNOT                        R4 ; [+15]
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R3
       10 CALL                             R4 1 1
       11 JUMPIFNOT                        R4 ; [+11]
       12 LOADB                            R4 0
       13 JUMPIFEQ                         R2 R3 ; [+8]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R6 R3 K1 ["deps"]
       18 GETTABLEKS                       R7 R2 K1 ["deps"]
       20 CALL                             R5 2 1
       21 NOT                              R4 R5
       22 RETURN                           R4 1
       23 JUMPIFNOTEQ                      R3 R2 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 RETURN                           R4 1

PROTO_24:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K0 ["baseState"]
        8 JUMPIFNOT                        R2 ; [+48]
        9 GETTABLEKS                       R2 R1 K1 ["memoizedState"]
       11 JUMPIFNOT                        R2 ; [+45]
       12 GETTABLEKS                       R2 R1 K2 ["next"]
       14 JUMPIFNOT                        R2 ; [+42]
       15 GETTABLEKS                       R2 R1 K3 ["queue"]
       17 JUMPIFNOT                        R2 ; [+39]
       18 JUMPIFEQKNIL                     R1 ; [+38]
       20 MOVE                             R3 R0
       21 MOVE                             R4 R1
       22 GETTABLEKS                       R5 R3 K1 ["memoizedState"]
       24 GETTABLEKS                       R6 R4 K1 ["memoizedState"]
       26 GETUPVAL                         R7 0
       27 MOVE                             R8 R5
       28 CALL                             R7 1 1
       29 JUMPIFNOT                        R7 ; [+15]
       30 GETUPVAL                         R7 0
       31 MOVE                             R8 R6
       32 CALL                             R7 1 1
       33 JUMPIFNOT                        R7 ; [+11]
       34 LOADB                            R2 0
       35 JUMPIFEQ                         R5 R6 ; [+13]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R8 R6 K4 ["deps"]
       40 GETTABLEKS                       R9 R5 K4 ["deps"]
       42 CALL                             R7 2 1
       43 NOT                              R2 R7
       44 JUMP                             ; [+4]
       45 JUMPIFNOTEQ                      R6 R5 ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 JUMPIFNOT                        R2 ; [+2]
       50 LOADB                            R2 1
       51 RETURN                           R2 1
       52 GETTABLEKS                       R1 R1 K2 ["next"]
       54 GETTABLEKS                       R0 R0 K2 ["next"]
       56 JUMPBACK                         ; [-39]
       57 LOADB                            R2 0
       58 RETURN                           R2 1

PROTO_25:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K0 ["baseState"]
        8 JUMPIFEQKNIL                     R2 ; [+15]
       10 GETTABLEKS                       R2 R1 K1 ["memoizedState"]
       12 JUMPIFEQKNIL                     R2 ; [+11]
       14 GETTABLEKS                       R2 R1 K2 ["next"]
       16 JUMPIFEQKNIL                     R2 ; [+7]
       18 GETTABLEKS                       R2 R1 K3 ["queue"]
       20 JUMPIFEQKNIL                     R2 ; [+3]
       22 LOADNIL                          R2
       23 RETURN                           R2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K4 ["new"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R3 R4 K5 ["concat"]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K6 ["keys"]
       33 MOVE                             R5 R0
       34 CALL                             R4 1 1
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K6 ["keys"]
       38 MOVE                             R6 R1
       39 CALL                             R5 1 -1
       40 CALL                             R3 -1 -1
       41 CALL                             R2 -1 1
       42 NEWTABLE                         R3 0 0
       44 MOVE                             R4 R2
       45 LOADNIL                          R5
       46 LOADNIL                          R6
       47 FORGPREP                         R4
       48 GETTABLE                         R9 R0 R8
       49 GETTABLE                         R10 R1 R8
       50 JUMPIFEQ                         R9 R10 ; [+8]
       52 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       54 MOVE                             R10 R3
       55 MOVE                             R11 R8
       56 GETIMPORT                        R9 K9 [table.insert]
       58 CALL                             R9 2 0
       59 FORGLOOP                         R4 2 ; [-12]
       61 RETURN                           R3 1

PROTO_26:
        0 GETTABLEKS                       R2 R1 K0 ["tag"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+13]
        5 GETUPVAL                         R3 1
        6 JUMPIFEQ                         R2 R3 ; [+10]
        8 GETUPVAL                         R3 2
        9 JUMPIFEQ                         R2 R3 ; [+7]
       11 GETUPVAL                         R3 3
       12 JUMPIFEQ                         R2 R3 ; [+4]
       14 GETUPVAL                         R3 4
       15 JUMPIFNOTEQ                      R2 R3 ; [+23]
       17 GETTABLEKS                       R6 R1 K1 ["flags"]
       19 JUMPIFEQKNIL                     R6 ; [+4]
       21 GETTABLEKS                       R5 R1 K1 ["flags"]
       23 JUMP                             ; [+3]
       24 GETTABLEKS                       R5 R1 K2 ["effectTag"]
       26 JUMP                             ; [0]
       27 GETUPVAL                         R6 5
       28 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       30 GETIMPORT                        R4 K5 [bit32.band]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 5
       34 JUMPIFEQ                         R4 R5 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 RETURN                           R3 1
       39 LOADB                            R3 1
       40 GETTABLEKS                       R4 R0 K6 ["memoizedProps"]
       42 GETTABLEKS                       R5 R1 K6 ["memoizedProps"]
       44 JUMPIFNOTEQ                      R4 R5 ; [+16]
       46 LOADB                            R3 1
       47 GETTABLEKS                       R4 R0 K7 ["memoizedState"]
       49 GETTABLEKS                       R5 R1 K7 ["memoizedState"]
       51 JUMPIFNOTEQ                      R4 R5 ; [+9]
       53 GETTABLEKS                       R4 R0 K8 ["ref"]
       55 GETTABLEKS                       R5 R1 K8 ["ref"]
       57 JUMPIFNOTEQ                      R4 R5 ; [+2]
       59 LOADB                            R3 0 +1
       60 LOADB                            R3 1
       61 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["isInteger"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+6]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["error"]
       13 LOADK                            R2 K3 ["pushOperation() was called but the value is not an integer."]
       14 MOVE                             R3 R0
       15 CALL                             R1 2 0
       16 GETUPVAL                         R2 3
       17 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R1 K6 [table.insert]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R5 2
        5 GETUPVAL                         R6 2
        6 ADDK                             R6 R6 K0 [1]
        7 SETUPVAL                         R6 2
        8 MOVE                             R4 R5
        9 LENGTH                           R5 R2
       10 SETTABLE                         R5 R3 R4
       11 MOVE                             R3 R2
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETUPVAL                         R8 1
       16 GETUPVAL                         R10 2
       17 GETUPVAL                         R11 2
       18 ADDK                             R11 R11 K0 [1]
       19 SETUPVAL                         R11 2
       20 MOVE                             R9 R10
       21 SETTABLE                         R7 R8 R9
       22 FORGLOOP                         R3 2 ; [-8]
       24 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+15]
        4 GETUPVAL                         R2 1
        5 LENGTH                           R1 R2
        6 JUMPIFNOTEQKN                    R1 K0 [0] ; [+11]
        8 GETUPVAL                         R2 2
        9 LENGTH                           R1 R2
       10 JUMPIFNOTEQKN                    R1 K0 [0] ; [+7]
       12 GETUPVAL                         R1 3
       13 JUMPIFNOTEQKNIL                  R1 ; [+4]
       15 GETUPVAL                         R1 4
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 1
       19 LENGTH                           R3 R4
       20 GETUPVAL                         R5 2
       21 LENGTH                           R4 R5
       22 ADD                              R2 R3 R4
       23 GETUPVAL                         R4 3
       24 JUMPIFNOTEQKNIL                  R4 ; [+3]
       26 LOADN                            R3 0
       27 JUMP                             ; [+1]
       28 LOADN                            R3 1
       29 ADD                              R1 R2 R3
       30 NEWTABLE                         R2 0 0
       32 LOADN                            R3 1
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          REF R3
       35 MOVE                             R6 R3
       36 ADDK                             R3 R3 K1 [1]
       37 MOVE                             R5 R6
       38 GETUPVAL                         R6 5
       39 SETTABLE                         R6 R2 R5
       40 MOVE                             R6 R3
       41 ADDK                             R3 R3 K1 [1]
       42 MOVE                             R5 R6
       43 GETUPVAL                         R6 6
       44 SETTABLE                         R6 R2 R5
       45 MOVE                             R6 R3
       46 ADDK                             R3 R3 K1 [1]
       47 MOVE                             R5 R6
       48 GETUPVAL                         R6 7
       49 SETTABLE                         R6 R2 R5
       50 GETUPVAL                         R5 8
       51 NEWCLOSURE                       R7 P1
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          VAL R2
       54 CAPTURE                          REF R3
       55 NAMECALL                         R5 R5 K2 ["forEach"]
       57 CALL                             R5 2 0
       58 LOADN                            R5 0
       59 JUMPIFNOTLT                      R5 R1 ; [+42]
       61 MOVE                             R6 R3
       62 ADDK                             R3 R3 K1 [1]
       63 MOVE                             R5 R6
       64 GETUPVAL                         R6 10
       65 SETTABLE                         R6 R2 R5
       66 MOVE                             R6 R3
       67 ADDK                             R3 R3 K1 [1]
       68 MOVE                             R5 R6
       69 SETTABLE                         R1 R2 R5
       70 GETUPVAL                         R8 1
       71 LENGTH                           R7 R8
       72 LOADN                            R5 1
       73 LOADN                            R6 255
       74 FORNPREP                         R5
       75 MOVE                             R9 R3
       76 ADDK                             R3 R3 K1 [1]
       77 MOVE                             R8 R9
       78 GETUPVAL                         R10 1
       79 GETTABLE                         R9 R10 R7
       80 SETTABLE                         R9 R2 R8
       81 FORNLOOP                         R5
       82 LOADN                            R7 1
       83 GETUPVAL                         R8 2
       84 LENGTH                           R5 R8
       85 LOADN                            R6 1
       86 FORNPREP                         R5
       87 ADD                              R9 R3 R7
       88 SUBK                             R8 R9 K1 [1]
       89 GETUPVAL                         R10 2
       90 GETTABLE                         R9 R10 R7
       91 SETTABLE                         R9 R2 R8
       92 FORNLOOP                         R5
       93 GETUPVAL                         R6 2
       94 LENGTH                           R5 R6
       95 ADD                              R3 R3 R5
       96 GETUPVAL                         R5 3
       97 JUMPIFEQKNIL                     R5 ; [+4]
       99 GETUPVAL                         R5 3
      100 SETTABLE                         R5 R2 R3
      101 ADDK                             R3 R3 K1 [1]
      102 LOADN                            R7 1
      103 GETUPVAL                         R8 0
      104 LENGTH                           R5 R8
      105 LOADN                            R6 1
      106 FORNPREP                         R5
      107 ADD                              R9 R3 R7
      108 SUBK                             R8 R9 K1 [1]
      109 GETUPVAL                         R10 0
      110 GETTABLE                         R9 R10 R7
      111 SETTABLE                         R9 R2 R8
      112 FORNLOOP                         R5
      113 GETUPVAL                         R6 0
      114 LENGTH                           R5 R6
      115 ADD                              R3 R3 R5
      116 GETUPVAL                         R5 11
      117 JUMPIFEQKNIL                     R5 ; [+9]
      119 GETUPVAL                         R6 11
      120 FASTCALL2                        TABLE_INSERT R6 R2 ; [+4]
      122 MOVE                             R7 R2
      123 GETIMPORT                        R5 K5 [table.insert]
      125 CALL                             R5 2 0
      126 JUMP                             ; [+6]
      127 GETUPVAL                         R6 12
      128 GETTABLEKS                       R5 R6 K6 ["emit"]
      130 LOADK                            R6 K7 ["operations"]
      131 MOVE                             R7 R2
      132 CALL                             R5 2 0
      133 NEWTABLE                         R5 0 0
      135 SETUPVAL                         R5 0
      136 NEWTABLE                         R5 0 0
      138 SETUPVAL                         R5 1
      139 NEWTABLE                         R5 0 0
      141 SETUPVAL                         R5 2
      142 LOADNIL                          R5
      143 SETUPVAL                         R5 3
      144 GETUPVAL                         R5 8
      145 NAMECALL                         R5 R5 K8 ["clear"]
      147 CALL                             R5 1 0
      148 LOADN                            R5 0
      149 SETUPVAL                         R5 7
      150 CLOSEUPVALS                      R3
      151 RETURN                           R0 0

PROTO_31:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K0 ["get"]
        8 CALL                             R1 2 1
        9 JUMPIFEQKNIL                     R1 ; [+2]
       11 RETURN                           R1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K2 ["size"]
       15 ADDK                             R2 R3 K1 [1]
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 0
       20 MOVE                             R6 R0
       21 MOVE                             R7 R2
       22 NAMECALL                         R4 R4 K3 ["set"]
       24 CALL                             R4 3 0
       25 GETUPVAL                         R4 2
       26 LENGTH                           R6 R3
       27 ADDK                             R5 R6 K1 [1]
       28 ADD                              R4 R4 R5
       29 SETUPVAL                         R4 2
       30 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__DEBUG__"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["recordMount()"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 GETTABLEKS                       R3 R0 K2 ["tag"]
       11 GETUPVAL                         R4 2
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETUPVAL                         R4 3
       17 MOVE                             R5 R0
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 4
       20 MOVE                             R7 R4
       21 NAMECALL                         R5 R5 K3 ["has"]
       23 CALL                             R5 2 1
       24 JUMPIF                           R5 ; [+14]
       25 GETUPVAL                         R5 5
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 4
       28 MOVE                             R8 R4
       29 MOVE                             R9 R5
       30 NAMECALL                         R6 R6 K4 ["set"]
       32 CALL                             R6 3 0
       33 GETUPVAL                         R6 6
       34 MOVE                             R8 R5
       35 MOVE                             R9 R4
       36 NAMECALL                         R6 R6 K4 ["set"]
       38 CALL                             R6 3 0
       39 GETUPVAL                         R5 4
       40 MOVE                             R7 R4
       41 NAMECALL                         R5 R5 K5 ["get"]
       43 CALL                             R5 2 1
       44 MOVE                             R3 R5
       45 GETTABLEKS                       R5 R0 K6 ["_debugOwner"]
       47 JUMPIFNOTEQKNIL                  R5 ; [+2]
       49 LOADB                            R4 0 +1
       50 LOADB                            R4 1
       51 GETTABLEKS                       R6 R0 K7 ["treeBaseDuration"]
       53 JUMPIFNOTEQKNIL                  R6 ; [+2]
       55 LOADB                            R5 0 +1
       56 LOADB                            R5 1
       57 JUMPIFNOT                        R2 ; [+139]
       58 GETUPVAL                         R6 7
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R7 R8 K8 ["__DEV__"]
       62 JUMPIFNOT                        R7 ; [+12]
       63 GETUPVAL                         R8 8
       64 GETTABLEKS                       R7 R8 K9 ["isInteger"]
       66 MOVE                             R8 R6
       67 CALL                             R7 1 1
       68 JUMPIF                           R7 ; [+6]
       69 GETUPVAL                         R8 9
       70 GETTABLEKS                       R7 R8 K10 ["error"]
       72 LOADK                            R8 K11 ["pushOperation() was called but the value is not an integer."]
       73 MOVE                             R9 R6
       74 CALL                             R7 2 0
       75 GETUPVAL                         R8 10
       76 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       78 MOVE                             R9 R6
       79 GETIMPORT                        R7 K14 [table.insert]
       81 CALL                             R7 2 0
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R6 R7 K8 ["__DEV__"]
       85 JUMPIFNOT                        R6 ; [+12]
       86 GETUPVAL                         R7 8
       87 GETTABLEKS                       R6 R7 K9 ["isInteger"]
       89 MOVE                             R7 R3
       90 CALL                             R6 1 1
       91 JUMPIF                           R6 ; [+6]
       92 GETUPVAL                         R7 9
       93 GETTABLEKS                       R6 R7 K10 ["error"]
       95 LOADK                            R7 K11 ["pushOperation() was called but the value is not an integer."]
       96 MOVE                             R8 R3
       97 CALL                             R6 2 0
       98 GETUPVAL                         R7 10
       99 FASTCALL2                        TABLE_INSERT R7 R3 ; [+4]
      101 MOVE                             R8 R3
      102 GETIMPORT                        R6 K14 [table.insert]
      104 CALL                             R6 2 0
      105 GETUPVAL                         R6 11
      106 GETUPVAL                         R8 0
      107 GETTABLEKS                       R7 R8 K8 ["__DEV__"]
      109 JUMPIFNOT                        R7 ; [+12]
      110 GETUPVAL                         R8 8
      111 GETTABLEKS                       R7 R8 K9 ["isInteger"]
      113 MOVE                             R8 R6
      114 CALL                             R7 1 1
      115 JUMPIF                           R7 ; [+6]
      116 GETUPVAL                         R8 9
      117 GETTABLEKS                       R7 R8 K10 ["error"]
      119 LOADK                            R8 K11 ["pushOperation() was called but the value is not an integer."]
      120 MOVE                             R9 R6
      121 CALL                             R7 2 0
      122 GETUPVAL                         R8 10
      123 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      125 MOVE                             R9 R6
      126 GETIMPORT                        R7 K14 [table.insert]
      128 CALL                             R7 2 0
      129 JUMPIFNOT                        R5 ; [+2]
      130 LOADN                            R6 1
      131 JUMP                             ; [+1]
      132 LOADN                            R6 0
      133 GETUPVAL                         R8 0
      134 GETTABLEKS                       R7 R8 K8 ["__DEV__"]
      136 JUMPIFNOT                        R7 ; [+12]
      137 GETUPVAL                         R8 8
      138 GETTABLEKS                       R7 R8 K9 ["isInteger"]
      140 MOVE                             R8 R6
      141 CALL                             R7 1 1
      142 JUMPIF                           R7 ; [+6]
      143 GETUPVAL                         R8 9
      144 GETTABLEKS                       R7 R8 K10 ["error"]
      146 LOADK                            R8 K11 ["pushOperation() was called but the value is not an integer."]
      147 MOVE                             R9 R6
      148 CALL                             R7 2 0
      149 GETUPVAL                         R8 10
      150 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      152 MOVE                             R9 R6
      153 GETIMPORT                        R7 K14 [table.insert]
      155 CALL                             R7 2 0
      156 JUMPIFNOT                        R4 ; [+2]
      157 LOADN                            R6 1
      158 JUMP                             ; [+1]
      159 LOADN                            R6 0
      160 GETUPVAL                         R8 0
      161 GETTABLEKS                       R7 R8 K8 ["__DEV__"]
      163 JUMPIFNOT                        R7 ; [+12]
      164 GETUPVAL                         R8 8
      165 GETTABLEKS                       R7 R8 K9 ["isInteger"]
      167 MOVE                             R8 R6
      168 CALL                             R7 1 1
      169 JUMPIF                           R7 ; [+6]
      170 GETUPVAL                         R8 9
      171 GETTABLEKS                       R7 R8 K10 ["error"]
      173 LOADK                            R8 K11 ["pushOperation() was called but the value is not an integer."]
      174 MOVE                             R9 R6
      175 CALL                             R7 2 0
      176 GETUPVAL                         R8 10
      177 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      179 MOVE                             R9 R6
      180 GETIMPORT                        R7 K14 [table.insert]
      182 CALL                             R7 2 0
      183 GETUPVAL                         R6 12
      184 JUMPIFNOT                        R6 ; [+327]
      185 GETUPVAL                         R6 13
      186 JUMPIFEQKNIL                     R6 ; [+325]
      188 GETUPVAL                         R6 13
      189 MOVE                             R8 R3
      190 GETUPVAL                         R9 14
      191 MOVE                             R10 R0
      192 CALL                             R9 1 -1
      193 NAMECALL                         R6 R6 K4 ["set"]
      195 CALL                             R6 -1 0
      196 JUMP                             ; [+315]
      197 GETTABLEKS                       R6 R0 K15 ["key"]
      199 GETUPVAL                         R7 15
      200 MOVE                             R8 R0
      201 CALL                             R7 1 1
      202 GETUPVAL                         R8 16
      203 MOVE                             R9 R0
      204 CALL                             R8 1 1
      205 GETTABLEKS                       R9 R0 K6 ["_debugOwner"]
      207 JUMPIFEQKNIL                     R9 ; [+31]
      209 GETUPVAL                         R11 3
      210 MOVE                             R12 R9
      211 CALL                             R11 1 1
      212 GETUPVAL                         R12 4
      213 MOVE                             R14 R11
      214 NAMECALL                         R12 R12 K3 ["has"]
      216 CALL                             R12 2 1
      217 JUMPIF                           R12 ; [+14]
      218 GETUPVAL                         R12 5
      219 CALL                             R12 0 1
      220 GETUPVAL                         R13 4
      221 MOVE                             R15 R11
      222 MOVE                             R16 R12
      223 NAMECALL                         R13 R13 K4 ["set"]
      225 CALL                             R13 3 0
      226 GETUPVAL                         R13 6
      227 MOVE                             R15 R12
      228 MOVE                             R16 R11
      229 NAMECALL                         R13 R13 K4 ["set"]
      231 CALL                             R13 3 0
      232 GETUPVAL                         R12 4
      233 MOVE                             R14 R11
      234 NAMECALL                         R12 R12 K5 ["get"]
      236 CALL                             R12 2 1
      237 MOVE                             R10 R12
      238 JUMP                             ; [+1]
      239 LOADN                            R10 0
      240 GETUPVAL                         R13 17
      241 GETTABLEKS                       R12 R13 K16 ["toJSBoolean"]
      243 MOVE                             R13 R1
      244 CALL                             R12 1 1
      245 JUMPIFNOT                        R12 ; [+30]
      246 GETUPVAL                         R12 3
      247 MOVE                             R13 R1
      248 CALL                             R12 1 1
      249 GETUPVAL                         R13 4
      250 MOVE                             R15 R12
      251 NAMECALL                         R13 R13 K3 ["has"]
      253 CALL                             R13 2 1
      254 JUMPIF                           R13 ; [+14]
      255 GETUPVAL                         R13 5
      256 CALL                             R13 0 1
      257 GETUPVAL                         R14 4
      258 MOVE                             R16 R12
      259 MOVE                             R17 R13
      260 NAMECALL                         R14 R14 K4 ["set"]
      262 CALL                             R14 3 0
      263 GETUPVAL                         R14 6
      264 MOVE                             R16 R13
      265 MOVE                             R17 R12
      266 NAMECALL                         R14 R14 K4 ["set"]
      268 CALL                             R14 3 0
      269 GETUPVAL                         R13 4
      270 MOVE                             R15 R12
      271 NAMECALL                         R13 R13 K5 ["get"]
      273 CALL                             R13 2 1
      274 MOVE                             R11 R13
      275 JUMP                             ; [+1]
      276 LOADN                            R11 0
      277 JUMPIFNOTEQKNIL                  R7 ; [+3]
      279 LOADN                            R12 0
      280 JUMP                             ; [+28]
      281 GETUPVAL                         R13 18
      282 MOVE                             R15 R7
      283 NAMECALL                         R13 R13 K5 ["get"]
      285 CALL                             R13 2 1
      286 JUMPIFEQKNIL                     R13 ; [+3]
      288 MOVE                             R12 R13
      289 JUMP                             ; [+19]
      290 GETUPVAL                         R16 18
      291 GETTABLEKS                       R15 R16 K18 ["size"]
      293 ADDK                             R14 R15 K17 [1]
      294 GETUPVAL                         R15 19
      295 MOVE                             R16 R7
      296 CALL                             R15 1 1
      297 GETUPVAL                         R16 18
      298 MOVE                             R18 R7
      299 MOVE                             R19 R14
      300 NAMECALL                         R16 R16 K4 ["set"]
      302 CALL                             R16 3 0
      303 GETUPVAL                         R16 20
      304 LENGTH                           R18 R15
      305 ADDK                             R17 R18 K17 [1]
      306 ADD                              R16 R16 R17
      307 SETUPVAL                         R16 20
      308 MOVE                             R12 R14
      309 JUMPIFNOTEQKNIL                  R6 ; [+3]
      311 LOADNIL                          R13
      312 JUMP                             ; [+5]
      313 FASTCALL1                        TOSTRING R6 ; [+3]
      314 MOVE                             R14 R6
      315 GETIMPORT                        R13 K20 [tostring]
      317 CALL                             R13 1 1
      318 JUMPIFNOTEQKNIL                  R13 ; [+3]
      320 LOADN                            R14 0
      321 JUMP                             ; [+28]
      322 GETUPVAL                         R15 18
      323 MOVE                             R17 R13
      324 NAMECALL                         R15 R15 K5 ["get"]
      326 CALL                             R15 2 1
      327 JUMPIFEQKNIL                     R15 ; [+3]
      329 MOVE                             R14 R15
      330 JUMP                             ; [+19]
      331 GETUPVAL                         R18 18
      332 GETTABLEKS                       R17 R18 K18 ["size"]
      334 ADDK                             R16 R17 K17 [1]
      335 GETUPVAL                         R17 19
      336 MOVE                             R18 R13
      337 CALL                             R17 1 1
      338 GETUPVAL                         R18 18
      339 MOVE                             R20 R13
      340 MOVE                             R21 R16
      341 NAMECALL                         R18 R18 K4 ["set"]
      343 CALL                             R18 3 0
      344 GETUPVAL                         R18 20
      345 LENGTH                           R20 R17
      346 ADDK                             R19 R20 K17 [1]
      347 ADD                              R18 R18 R19
      348 SETUPVAL                         R18 20
      349 MOVE                             R14 R16
      350 GETUPVAL                         R15 7
      351 GETUPVAL                         R17 0
      352 GETTABLEKS                       R16 R17 K8 ["__DEV__"]
      354 JUMPIFNOT                        R16 ; [+12]
      355 GETUPVAL                         R17 8
      356 GETTABLEKS                       R16 R17 K9 ["isInteger"]
      358 MOVE                             R17 R15
      359 CALL                             R16 1 1
      360 JUMPIF                           R16 ; [+6]
      361 GETUPVAL                         R17 9
      362 GETTABLEKS                       R16 R17 K10 ["error"]
      364 LOADK                            R17 K11 ["pushOperation() was called but the value is not an integer."]
      365 MOVE                             R18 R15
      366 CALL                             R16 2 0
      367 GETUPVAL                         R17 10
      368 FASTCALL2                        TABLE_INSERT R17 R15 ; [+4]
      370 MOVE                             R18 R15
      371 GETIMPORT                        R16 K14 [table.insert]
      373 CALL                             R16 2 0
      374 GETUPVAL                         R16 0
      375 GETTABLEKS                       R15 R16 K8 ["__DEV__"]
      377 JUMPIFNOT                        R15 ; [+12]
      378 GETUPVAL                         R16 8
      379 GETTABLEKS                       R15 R16 K9 ["isInteger"]
      381 MOVE                             R16 R3
      382 CALL                             R15 1 1
      383 JUMPIF                           R15 ; [+6]
      384 GETUPVAL                         R16 9
      385 GETTABLEKS                       R15 R16 K10 ["error"]
      387 LOADK                            R16 K11 ["pushOperation() was called but the value is not an integer."]
      388 MOVE                             R17 R3
      389 CALL                             R15 2 0
      390 GETUPVAL                         R16 10
      391 FASTCALL2                        TABLE_INSERT R16 R3 ; [+4]
      393 MOVE                             R17 R3
      394 GETIMPORT                        R15 K14 [table.insert]
      396 CALL                             R15 2 0
      397 GETUPVAL                         R16 0
      398 GETTABLEKS                       R15 R16 K8 ["__DEV__"]
      400 JUMPIFNOT                        R15 ; [+12]
      401 GETUPVAL                         R16 8
      402 GETTABLEKS                       R15 R16 K9 ["isInteger"]
      404 MOVE                             R16 R8
      405 CALL                             R15 1 1
      406 JUMPIF                           R15 ; [+6]
      407 GETUPVAL                         R16 9
      408 GETTABLEKS                       R15 R16 K10 ["error"]
      410 LOADK                            R16 K11 ["pushOperation() was called but the value is not an integer."]
      411 MOVE                             R17 R8
      412 CALL                             R15 2 0
      413 GETUPVAL                         R16 10
      414 FASTCALL2                        TABLE_INSERT R16 R8 ; [+4]
      416 MOVE                             R17 R8
      417 GETIMPORT                        R15 K14 [table.insert]
      419 CALL                             R15 2 0
      420 GETUPVAL                         R16 0
      421 GETTABLEKS                       R15 R16 K8 ["__DEV__"]
      423 JUMPIFNOT                        R15 ; [+12]
      424 GETUPVAL                         R16 8
      425 GETTABLEKS                       R15 R16 K9 ["isInteger"]
      427 MOVE                             R16 R11
      428 CALL                             R15 1 1
      429 JUMPIF                           R15 ; [+6]
      430 GETUPVAL                         R16 9
      431 GETTABLEKS                       R15 R16 K10 ["error"]
      433 LOADK                            R16 K11 ["pushOperation() was called but the value is not an integer."]
      434 MOVE                             R17 R11
      435 CALL                             R15 2 0
      436 GETUPVAL                         R16 10
      437 FASTCALL2                        TABLE_INSERT R16 R11 ; [+4]
      439 MOVE                             R17 R11
      440 GETIMPORT                        R15 K14 [table.insert]
      442 CALL                             R15 2 0
      443 GETUPVAL                         R16 0
      444 GETTABLEKS                       R15 R16 K8 ["__DEV__"]
      446 JUMPIFNOT                        R15 ; [+12]
      447 GETUPVAL                         R16 8
      448 GETTABLEKS                       R15 R16 K9 ["isInteger"]
      450 MOVE                             R16 R10
      451 CALL                             R15 1 1
      452 JUMPIF                           R15 ; [+6]
      453 GETUPVAL                         R16 9
      454 GETTABLEKS                       R15 R16 K10 ["error"]
      456 LOADK                            R16 K11 ["pushOperation() was called but the value is not an integer."]
      457 MOVE                             R17 R10
      458 CALL                             R15 2 0
      459 GETUPVAL                         R16 10
      460 FASTCALL2                        TABLE_INSERT R16 R10 ; [+4]
      462 MOVE                             R17 R10
      463 GETIMPORT                        R15 K14 [table.insert]
      465 CALL                             R15 2 0
      466 GETUPVAL                         R16 0
      467 GETTABLEKS                       R15 R16 K8 ["__DEV__"]
      469 JUMPIFNOT                        R15 ; [+12]
      470 GETUPVAL                         R16 8
      471 GETTABLEKS                       R15 R16 K9 ["isInteger"]
      473 MOVE                             R16 R12
      474 CALL                             R15 1 1
      475 JUMPIF                           R15 ; [+6]
      476 GETUPVAL                         R16 9
      477 GETTABLEKS                       R15 R16 K10 ["error"]
      479 LOADK                            R16 K11 ["pushOperation() was called but the value is not an integer."]
      480 MOVE                             R17 R12
      481 CALL                             R15 2 0
      482 GETUPVAL                         R16 10
      483 FASTCALL2                        TABLE_INSERT R16 R12 ; [+4]
      485 MOVE                             R17 R12
      486 GETIMPORT                        R15 K14 [table.insert]
      488 CALL                             R15 2 0
      489 GETUPVAL                         R16 0
      490 GETTABLEKS                       R15 R16 K8 ["__DEV__"]
      492 JUMPIFNOT                        R15 ; [+12]
      493 GETUPVAL                         R16 8
      494 GETTABLEKS                       R15 R16 K9 ["isInteger"]
      496 MOVE                             R16 R14
      497 CALL                             R15 1 1
      498 JUMPIF                           R15 ; [+6]
      499 GETUPVAL                         R16 9
      500 GETTABLEKS                       R15 R16 K10 ["error"]
      502 LOADK                            R16 K11 ["pushOperation() was called but the value is not an integer."]
      503 MOVE                             R17 R14
      504 CALL                             R15 2 0
      505 GETUPVAL                         R16 10
      506 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
      508 MOVE                             R17 R14
      509 GETIMPORT                        R15 K14 [table.insert]
      511 CALL                             R15 2 0
      512 JUMPIFNOT                        R5 ; [+9]
      513 GETUPVAL                         R6 21
      514 MOVE                             R8 R3
      515 GETUPVAL                         R9 22
      516 NAMECALL                         R6 R6 K4 ["set"]
      518 CALL                             R6 3 0
      519 GETUPVAL                         R6 23
      520 MOVE                             R7 R0
      521 CALL                             R6 1 0
      522 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__DEBUG__"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["recordUnmount()"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 2
        9 JUMPIFEQKNIL                     R2 ; [+12]
       11 GETUPVAL                         R2 2
       12 JUMPIFEQ                         R0 R2 ; [+6]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K2 ["alternate"]
       17 JUMPIFNOTEQ                      R0 R2 ; [+4]
       19 GETUPVAL                         R2 3
       20 LOADNIL                          R3
       21 CALL                             R2 1 0
       22 GETTABLEKS                       R3 R0 K3 ["tag"]
       24 GETUPVAL                         R4 4
       25 JUMPIFEQ                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 GETUPVAL                         R3 5
       30 MOVE                             R4 R0
       31 CALL                             R3 1 1
       32 GETUPVAL                         R4 6
       33 MOVE                             R6 R3
       34 NAMECALL                         R4 R4 K4 ["has"]
       36 CALL                             R4 2 1
       37 JUMPIF                           R4 ; [+6]
       38 GETUPVAL                         R4 7
       39 MOVE                             R6 R3
       40 NAMECALL                         R4 R4 K5 ["delete"]
       42 CALL                             R4 2 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R5 6
       45 MOVE                             R7 R3
       46 NAMECALL                         R5 R5 K4 ["has"]
       48 CALL                             R5 2 1
       49 JUMPIF                           R5 ; [+14]
       50 GETUPVAL                         R5 8
       51 CALL                             R5 0 1
       52 GETUPVAL                         R6 6
       53 MOVE                             R8 R3
       54 MOVE                             R9 R5
       55 NAMECALL                         R6 R6 K6 ["set"]
       57 CALL                             R6 3 0
       58 GETUPVAL                         R6 9
       59 MOVE                             R8 R5
       60 MOVE                             R9 R3
       61 NAMECALL                         R6 R6 K6 ["set"]
       63 CALL                             R6 3 0
       64 GETUPVAL                         R4 6
       65 MOVE                             R6 R3
       66 NAMECALL                         R4 R4 K7 ["get"]
       68 CALL                             R4 2 1
       69 JUMPIFNOT                        R2 ; [+2]
       70 SETUPVAL                         R4 10
       71 JUMP                             ; [+20]
       72 GETUPVAL                         R5 11
       73 MOVE                             R6 R0
       74 CALL                             R5 1 1
       75 JUMPIF                           R5 ; [+16]
       76 JUMPIFNOT                        R1 ; [+8]
       77 GETUPVAL                         R6 12
       78 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       80 MOVE                             R7 R4
       81 GETIMPORT                        R5 K10 [table.insert]
       83 CALL                             R5 2 0
       84 JUMP                             ; [+7]
       85 GETUPVAL                         R6 13
       86 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       88 MOVE                             R7 R4
       89 GETIMPORT                        R5 K10 [table.insert]
       91 CALL                             R5 2 0
       92 GETUPVAL                         R5 6
       93 MOVE                             R7 R3
       94 NAMECALL                         R5 R5 K5 ["delete"]
       96 CALL                             R5 2 0
       97 GETUPVAL                         R5 9
       98 MOVE                             R7 R4
       99 NAMECALL                         R5 R5 K5 ["delete"]
      101 CALL                             R5 2 0
      102 GETUPVAL                         R5 7
      103 MOVE                             R7 R3
      104 NAMECALL                         R5 R5 K5 ["delete"]
      106 CALL                             R5 2 0
      107 GETTABLEKS                       R6 R0 K11 ["treeBaseDuration"]
      109 JUMPIFNOTEQKNIL                  R6 ; [+2]
      111 LOADB                            R5 0 +1
      112 LOADB                            R5 1
      113 JUMPIFNOT                        R5 ; [+10]
      114 GETUPVAL                         R6 14
      115 MOVE                             R8 R4
      116 NAMECALL                         R6 R6 K5 ["delete"]
      118 CALL                             R6 2 0
      119 GETUPVAL                         R6 15
      120 MOVE                             R8 R4
      121 NAMECALL                         R6 R6 K5 ["delete"]
      123 CALL                             R6 2 0
      124 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+5]
        2 GETUPVAL                         R4 1
        3 LOADK                            R5 K0 ["mountFiberRecursively()"]
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 CALL                             R4 3 0
        7 GETUPVAL                         R4 2
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 GETUPVAL                         R6 3
       11 MOVE                             R7 R0
       12 CALL                             R6 1 1
       13 NOT                              R5 R6
       14 JUMPIFNOT                        R5 ; [+4]
       15 GETUPVAL                         R6 4
       16 MOVE                             R7 R0
       17 MOVE                             R8 R1
       18 CALL                             R6 2 0
       19 GETUPVAL                         R6 5
       20 JUMPIFNOT                        R6 ; [+14]
       21 JUMPIFNOT                        R3 ; [+13]
       22 GETUPVAL                         R6 6
       23 MOVE                             R7 R0
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 7
       26 JUMPIFNOTEQ                      R6 R7 ; [+8]
       28 GETUPVAL                         R7 8
       29 GETTABLEKS                       R9 R0 K1 ["stateNode"]
       31 NAMECALL                         R7 R7 K2 ["add"]
       33 CALL                             R7 2 0
       34 LOADB                            R3 0
       35 GETTABLEKS                       R7 R0 K3 ["tag"]
       37 GETUPVAL                         R9 9
       38 GETTABLEKS                       R8 R9 K4 ["SuspenseComponent"]
       40 JUMPIFEQ                         R7 R8 ; [+2]
       42 LOADB                            R6 0 +1
       43 LOADB                            R6 1
       44 JUMPIFNOT                        R6 ; [+61]
       45 GETTABLEKS                       R8 R0 K5 ["memoizedState"]
       47 JUMPIFNOTEQKNIL                  R8 ; [+2]
       49 LOADB                            R7 0 +1
       50 LOADB                            R7 1
       51 JUMPIFNOT                        R7 ; [+24]
       52 GETTABLEKS                       R8 R0 K6 ["child"]
       54 JUMPIFNOT                        R8 ; [+3]
       55 GETTABLEKS                       R9 R8 K7 ["sibling"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R9
       59 JUMPIFNOT                        R9 ; [+3]
       60 GETTABLEKS                       R10 R9 K6 ["child"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R10
       64 JUMPIFEQKNIL                     R10 ; [+55]
       66 GETUPVAL                         R11 10
       67 MOVE                             R12 R10
       68 JUMPIFNOT                        R5 ; [+2]
       69 MOVE                             R13 R0
       70 JUMP                             ; [+1]
       71 MOVE                             R13 R1
       72 LOADB                            R14 1
       73 MOVE                             R15 R3
       74 CALL                             R11 4 0
       75 JUMP                             ; [+44]
       76 LOADNIL                          R8
       77 GETUPVAL                         R10 11
       78 JUMPIFEQKN                       R10 K8 [-1] ; [+2]
       80 LOADB                            R9 0 +1
       81 LOADB                            R9 1
       82 JUMPIFNOT                        R9 ; [+3]
       83 GETTABLEKS                       R8 R0 K6 ["child"]
       85 JUMP                             ; [+8]
       86 GETTABLEKS                       R10 R0 K6 ["child"]
       88 JUMPIFEQKNIL                     R10 ; [+5]
       90 GETTABLEKS                       R10 R0 K6 ["child"]
       92 GETTABLEKS                       R8 R10 K6 ["child"]
       94 JUMPIFEQKNIL                     R8 ; [+25]
       96 GETUPVAL                         R10 10
       97 MOVE                             R11 R8
       98 JUMPIFNOT                        R5 ; [+2]
       99 MOVE                             R12 R0
      100 JUMP                             ; [+1]
      101 MOVE                             R12 R1
      102 LOADB                            R13 1
      103 MOVE                             R14 R3
      104 CALL                             R10 4 0
      105 JUMP                             ; [+14]
      106 GETTABLEKS                       R7 R0 K6 ["child"]
      108 JUMPIFEQKNIL                     R7 ; [+11]
      110 GETUPVAL                         R7 10
      111 GETTABLEKS                       R8 R0 K6 ["child"]
      113 JUMPIFNOT                        R5 ; [+2]
      114 MOVE                             R9 R0
      115 JUMP                             ; [+1]
      116 MOVE                             R9 R1
      117 LOADB                            R10 1
      118 MOVE                             R11 R3
      119 CALL                             R7 4 0
      120 GETUPVAL                         R7 12
      121 MOVE                             R8 R4
      122 CALL                             R7 1 0
      123 JUMPIFNOT                        R2 ; [+11]
      124 GETTABLEKS                       R7 R0 K7 ["sibling"]
      126 JUMPIFEQKNIL                     R7 ; [+8]
      128 GETUPVAL                         R7 10
      129 GETTABLEKS                       R8 R0 K7 ["sibling"]
      131 MOVE                             R9 R1
      132 LOADB                            R10 1
      133 MOVE                             R11 R3
      134 CALL                             R7 4 0
      135 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["__DEBUG__"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 LOADK                            R2 K1 ["unmountFiberChildrenRecursively()"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 LOADB                            R1 0
        9 GETTABLEKS                       R2 R0 K2 ["tag"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K3 ["SuspenseComponent"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+7]
       16 GETTABLEKS                       R2 R0 K4 ["memoizedState"]
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 GETTABLEKS                       R2 R0 K5 ["child"]
       24 JUMPIFNOT                        R1 ; [+12]
       25 GETTABLEKS                       R3 R0 K5 ["child"]
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETTABLEKS                       R4 R3 K6 ["sibling"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 JUMPIFNOT                        R4 ; [+3]
       33 GETTABLEKS                       R2 R4 K5 ["child"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R2
       37 JUMPIFEQKNIL                     R2 ; [+15]
       39 GETTABLEKS                       R3 R2 K7 ["return_"]
       41 JUMPIFEQKNIL                     R3 ; [+8]
       43 GETUPVAL                         R3 3
       44 MOVE                             R4 R2
       45 CALL                             R3 1 0
       46 GETUPVAL                         R3 4
       47 MOVE                             R4 R2
       48 LOADB                            R5 1
       49 CALL                             R3 2 0
       50 GETTABLEKS                       R2 R2 K6 ["sibling"]
       52 JUMPBACK                         ; [-16]
       53 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R5 R2
        5 NAMECALL                         R3 R3 K0 ["has"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+14]
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 1
       12 MOVE                             R6 R2
       13 MOVE                             R7 R3
       14 NAMECALL                         R4 R4 K1 ["set"]
       16 CALL                             R4 3 0
       17 GETUPVAL                         R4 3
       18 MOVE                             R6 R3
       19 MOVE                             R7 R2
       20 NAMECALL                         R4 R4 K1 ["set"]
       22 CALL                             R4 3 0
       23 GETUPVAL                         R3 1
       24 MOVE                             R5 R2
       25 NAMECALL                         R3 R3 K2 ["get"]
       27 CALL                             R3 2 1
       28 MOVE                             R1 R3
       29 GETTABLEKS                       R2 R0 K3 ["actualDuration"]
       31 GETTABLEKS                       R3 R0 K4 ["treeBaseDuration"]
       33 GETUPVAL                         R4 4
       34 MOVE                             R6 R1
       35 ORK                              R7 R3 K5 [0]
       36 NAMECALL                         R4 R4 K1 ["set"]
       38 CALL                             R4 3 0
       39 GETUPVAL                         R4 5
       40 JUMPIFNOT                        R4 ; [+208]
       41 GETTABLEKS                       R4 R0 K6 ["alternate"]
       43 JUMPIFEQKNIL                     R4 ; [+5]
       45 GETTABLEKS                       R5 R4 K4 ["treeBaseDuration"]
       47 JUMPIFEQ                         R3 R5 ; [+77]
       49 ORK                              R7 R3 K5 [0]
       50 MULK                             R6 R7 K7 [1000]
       51 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       52 GETIMPORT                        R5 K10 [math.floor]
       54 CALL                             R5 1 1
       55 GETUPVAL                         R6 6
       56 GETUPVAL                         R8 7
       57 GETTABLEKS                       R7 R8 K11 ["__DEV__"]
       59 JUMPIFNOT                        R7 ; [+12]
       60 GETUPVAL                         R8 8
       61 GETTABLEKS                       R7 R8 K12 ["isInteger"]
       63 MOVE                             R8 R6
       64 CALL                             R7 1 1
       65 JUMPIF                           R7 ; [+6]
       66 GETUPVAL                         R8 9
       67 GETTABLEKS                       R7 R8 K13 ["error"]
       69 LOADK                            R8 K14 ["pushOperation() was called but the value is not an integer."]
       70 MOVE                             R9 R6
       71 CALL                             R7 2 0
       72 GETUPVAL                         R8 10
       73 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       75 MOVE                             R9 R6
       76 GETIMPORT                        R7 K17 [table.insert]
       78 CALL                             R7 2 0
       79 GETUPVAL                         R7 7
       80 GETTABLEKS                       R6 R7 K11 ["__DEV__"]
       82 JUMPIFNOT                        R6 ; [+12]
       83 GETUPVAL                         R7 8
       84 GETTABLEKS                       R6 R7 K12 ["isInteger"]
       86 MOVE                             R7 R1
       87 CALL                             R6 1 1
       88 JUMPIF                           R6 ; [+6]
       89 GETUPVAL                         R7 9
       90 GETTABLEKS                       R6 R7 K13 ["error"]
       92 LOADK                            R7 K14 ["pushOperation() was called but the value is not an integer."]
       93 MOVE                             R8 R1
       94 CALL                             R6 2 0
       95 GETUPVAL                         R7 10
       96 FASTCALL2                        TABLE_INSERT R7 R1 ; [+4]
       98 MOVE                             R8 R1
       99 GETIMPORT                        R6 K17 [table.insert]
      101 CALL                             R6 2 0
      102 GETUPVAL                         R7 7
      103 GETTABLEKS                       R6 R7 K11 ["__DEV__"]
      105 JUMPIFNOT                        R6 ; [+12]
      106 GETUPVAL                         R7 8
      107 GETTABLEKS                       R6 R7 K12 ["isInteger"]
      109 MOVE                             R7 R5
      110 CALL                             R6 1 1
      111 JUMPIF                           R6 ; [+6]
      112 GETUPVAL                         R7 9
      113 GETTABLEKS                       R6 R7 K13 ["error"]
      115 LOADK                            R7 K14 ["pushOperation() was called but the value is not an integer."]
      116 MOVE                             R8 R5
      117 CALL                             R6 2 0
      118 GETUPVAL                         R7 10
      119 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
      121 MOVE                             R8 R5
      122 GETIMPORT                        R6 K17 [table.insert]
      124 CALL                             R6 2 0
      125 JUMPIFEQKNIL                     R4 ; [+6]
      127 GETUPVAL                         R5 11
      128 MOVE                             R6 R4
      129 MOVE                             R7 R0
      130 CALL                             R5 2 1
      131 JUMPIFNOT                        R5 ; [+117]
      132 JUMPIFEQKNIL                     R2 ; [+116]
      134 MOVE                             R5 R2
      135 GETTABLEKS                       R6 R0 K18 ["child"]
      137 JUMPIFEQKNIL                     R6 ; [+8]
      139 GETTABLEKS                       R8 R6 K3 ["actualDuration"]
      141 ORK                              R7 R8 K5 [0]
      142 SUB                              R5 R5 R7
      143 GETTABLEKS                       R6 R6 K19 ["sibling"]
      145 JUMPBACK                         ; [-9]
      146 GETUPVAL                         R7 12
      147 GETTABLEKS                       R9 R7 K20 ["durations"]
      149 FASTCALL2                        TABLE_INSERT R9 R1 ; [+4]
      151 MOVE                             R10 R1
      152 GETIMPORT                        R8 K17 [table.insert]
      154 CALL                             R8 2 0
      155 GETTABLEKS                       R9 R7 K20 ["durations"]
      157 FASTCALL2                        TABLE_INSERT R9 R2 ; [+4]
      159 MOVE                             R10 R2
      160 GETIMPORT                        R8 K17 [table.insert]
      162 CALL                             R8 2 0
      163 GETTABLEKS                       R9 R7 K20 ["durations"]
      165 FASTCALL2                        TABLE_INSERT R9 R5 ; [+4]
      167 MOVE                             R10 R5
      168 GETIMPORT                        R8 K17 [table.insert]
      170 CALL                             R8 2 0
      171 GETTABLEKS                       R9 R7 K21 ["maxActualDuration"]
      173 FASTCALL2                        MATH_MAX R9 R2 ; [+4]
      175 MOVE                             R10 R2
      176 GETIMPORT                        R8 K23 [math.max]
      178 CALL                             R8 2 1
      179 SETTABLEKS                       R8 R7 K21 ["maxActualDuration"]
      181 GETUPVAL                         R8 13
      182 JUMPIFNOT                        R8 ; [+66]
      183 GETUPVAL                         R8 14
      184 MOVE                             R9 R4
      185 MOVE                             R10 R0
      186 CALL                             R8 2 1
      187 JUMPIFEQKNIL                     R8 ; [+12]
      189 GETTABLEKS                       R9 R7 K24 ["changeDescriptions"]
      191 JUMPIFEQKNIL                     R9 ; [+8]
      193 GETTABLEKS                       R9 R7 K24 ["changeDescriptions"]
      195 MOVE                             R11 R1
      196 MOVE                             R12 R8
      197 NAMECALL                         R9 R9 K1 ["set"]
      199 CALL                             R9 3 0
      200 GETUPVAL                         R9 15
      201 MOVE                             R10 R0
      202 CALL                             R9 1 1
      203 GETUPVAL                         R10 16
      204 JUMPIFNOTEQ                      R9 R10 ; [+44]
      206 GETUPVAL                         R9 17
      207 JUMPIFEQKNIL                     R9 ; [+41]
      209 GETUPVAL                         R10 0
      210 MOVE                             R11 R0
      211 CALL                             R10 1 1
      212 GETUPVAL                         R11 1
      213 MOVE                             R13 R10
      214 NAMECALL                         R11 R11 K0 ["has"]
      216 CALL                             R11 2 1
      217 JUMPIF                           R11 ; [+14]
      218 GETUPVAL                         R11 2
      219 CALL                             R11 0 1
      220 GETUPVAL                         R12 1
      221 MOVE                             R14 R10
      222 MOVE                             R15 R11
      223 NAMECALL                         R12 R12 K1 ["set"]
      225 CALL                             R12 3 0
      226 GETUPVAL                         R12 3
      227 MOVE                             R14 R11
      228 MOVE                             R15 R10
      229 NAMECALL                         R12 R12 K1 ["set"]
      231 CALL                             R12 3 0
      232 GETUPVAL                         R11 1
      233 MOVE                             R13 R10
      234 NAMECALL                         R11 R11 K2 ["get"]
      236 CALL                             R11 2 1
      237 MOVE                             R9 R11
      238 GETUPVAL                         R10 18
      239 MOVE                             R11 R0
      240 CALL                             R10 1 1
      241 JUMPIFEQKNIL                     R10 ; [+7]
      243 GETUPVAL                         R11 17
      244 MOVE                             R13 R9
      245 MOVE                             R14 R10
      246 NAMECALL                         R11 R11 K1 ["set"]
      248 CALL                             R11 3 0
      249 RETURN                           R0 0

PROTO_37:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 JUMPIFEQKNIL                     R3 ; [+8]
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R3
        7 MOVE                             R6 R2
        8 CALL                             R4 2 0
        9 GETTABLEKS                       R3 R3 K0 ["sibling"]
       11 JUMPBACK                         ; [-9]
       12 LENGTH                           R4 R2
       13 LOADN                            R5 2
       14 JUMPIFNOTLT                      R4 R5 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R5 1
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K1 ["__DEV__"]
       21 JUMPIFNOT                        R6 ; [+12]
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R6 R7 K2 ["isInteger"]
       25 MOVE                             R7 R5
       26 CALL                             R6 1 1
       27 JUMPIF                           R6 ; [+6]
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R6 R7 K3 ["error"]
       31 LOADK                            R7 K4 ["pushOperation() was called but the value is not an integer."]
       32 MOVE                             R8 R5
       33 CALL                             R6 2 0
       34 GETUPVAL                         R7 5
       35 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       37 MOVE                             R8 R5
       38 GETIMPORT                        R6 K7 [table.insert]
       40 CALL                             R6 2 0
       41 GETUPVAL                         R6 6
       42 MOVE                             R7 R0
       43 CALL                             R6 1 1
       44 GETUPVAL                         R7 7
       45 MOVE                             R9 R6
       46 NAMECALL                         R7 R7 K8 ["has"]
       48 CALL                             R7 2 1
       49 JUMPIF                           R7 ; [+14]
       50 GETUPVAL                         R7 8
       51 CALL                             R7 0 1
       52 GETUPVAL                         R8 7
       53 MOVE                             R10 R6
       54 MOVE                             R11 R7
       55 NAMECALL                         R8 R8 K9 ["set"]
       57 CALL                             R8 3 0
       58 GETUPVAL                         R8 9
       59 MOVE                             R10 R7
       60 MOVE                             R11 R6
       61 NAMECALL                         R8 R8 K9 ["set"]
       63 CALL                             R8 3 0
       64 GETUPVAL                         R7 7
       65 MOVE                             R9 R6
       66 NAMECALL                         R7 R7 K10 ["get"]
       68 CALL                             R7 2 1
       69 MOVE                             R5 R7
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R6 R7 K1 ["__DEV__"]
       73 JUMPIFNOT                        R6 ; [+12]
       74 GETUPVAL                         R7 3
       75 GETTABLEKS                       R6 R7 K2 ["isInteger"]
       77 MOVE                             R7 R5
       78 CALL                             R6 1 1
       79 JUMPIF                           R6 ; [+6]
       80 GETUPVAL                         R7 4
       81 GETTABLEKS                       R6 R7 K3 ["error"]
       83 LOADK                            R7 K4 ["pushOperation() was called but the value is not an integer."]
       84 MOVE                             R8 R5
       85 CALL                             R6 2 0
       86 GETUPVAL                         R7 5
       87 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       89 MOVE                             R8 R5
       90 GETIMPORT                        R6 K7 [table.insert]
       92 CALL                             R6 2 0
       93 GETUPVAL                         R6 2
       94 GETTABLEKS                       R5 R6 K1 ["__DEV__"]
       96 JUMPIFNOT                        R5 ; [+12]
       97 GETUPVAL                         R6 3
       98 GETTABLEKS                       R5 R6 K2 ["isInteger"]
      100 MOVE                             R6 R4
      101 CALL                             R5 1 1
      102 JUMPIF                           R5 ; [+6]
      103 GETUPVAL                         R6 4
      104 GETTABLEKS                       R5 R6 K3 ["error"]
      106 LOADK                            R6 K4 ["pushOperation() was called but the value is not an integer."]
      107 MOVE                             R7 R4
      108 CALL                             R5 2 0
      109 GETUPVAL                         R6 5
      110 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
      112 MOVE                             R7 R4
      113 GETIMPORT                        R5 K7 [table.insert]
      115 CALL                             R5 2 0
      116 LOADN                            R7 1
      117 LENGTH                           R5 R2
      118 LOADN                            R6 1
      119 FORNPREP                         R5
      120 GETTABLE                         R8 R2 R7
      121 GETUPVAL                         R10 2
      122 GETTABLEKS                       R9 R10 K1 ["__DEV__"]
      124 JUMPIFNOT                        R9 ; [+12]
      125 GETUPVAL                         R10 3
      126 GETTABLEKS                       R9 R10 K2 ["isInteger"]
      128 MOVE                             R10 R8
      129 CALL                             R9 1 1
      130 JUMPIF                           R9 ; [+6]
      131 GETUPVAL                         R10 4
      132 GETTABLEKS                       R9 R10 K3 ["error"]
      134 LOADK                            R10 K4 ["pushOperation() was called but the value is not an integer."]
      135 MOVE                             R11 R8
      136 CALL                             R9 2 0
      137 GETUPVAL                         R10 5
      138 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      140 MOVE                             R11 R8
      141 GETIMPORT                        R9 K7 [table.insert]
      143 CALL                             R9 2 0
      144 FORNLOOP                         R5
      145 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+36]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 GETUPVAL                         R6 2
        8 MOVE                             R8 R5
        9 NAMECALL                         R6 R6 K0 ["has"]
       11 CALL                             R6 2 1
       12 JUMPIF                           R6 ; [+14]
       13 GETUPVAL                         R6 3
       14 CALL                             R6 0 1
       15 GETUPVAL                         R7 2
       16 MOVE                             R9 R5
       17 MOVE                             R10 R6
       18 NAMECALL                         R7 R7 K1 ["set"]
       20 CALL                             R7 3 0
       21 GETUPVAL                         R7 4
       22 MOVE                             R9 R6
       23 MOVE                             R10 R5
       24 NAMECALL                         R7 R7 K1 ["set"]
       26 CALL                             R7 3 0
       27 GETUPVAL                         R6 2
       28 MOVE                             R8 R5
       29 NAMECALL                         R6 R6 K2 ["get"]
       31 CALL                             R6 2 1
       32 MOVE                             R4 R6
       33 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       35 MOVE                             R3 R1
       36 GETIMPORT                        R2 K5 [table.insert]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0
       40 GETTABLEKS                       R2 R0 K6 ["child"]
       42 JUMPIFEQKNIL                     R2 ; [+8]
       44 GETUPVAL                         R3 5
       45 MOVE                             R4 R2
       46 MOVE                             R5 R1
       47 CALL                             R3 2 0
       48 GETTABLEKS                       R2 R2 K7 ["sibling"]
       50 JUMPBACK                         ; [-9]
       51 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["__DEBUG__"]
        3 JUMPIFNOT                        R4 ; [+5]
        4 GETUPVAL                         R4 1
        5 LOADK                            R5 K1 ["updateFiberRecursively()"]
        6 MOVE                             R6 R0
        7 MOVE                             R7 R2
        8 CALL                             R4 3 0
        9 GETUPVAL                         R4 2
       10 JUMPIFNOT                        R4 ; [+29]
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R0
       13 CALL                             R4 1 1
       14 JUMPIFNOT                        R3 ; [+11]
       15 GETUPVAL                         R5 4
       16 JUMPIFNOTEQ                      R4 R5 ; [+23]
       18 GETUPVAL                         R5 5
       19 GETTABLEKS                       R7 R0 K2 ["stateNode"]
       21 NAMECALL                         R5 R5 K3 ["add"]
       23 CALL                             R5 2 0
       24 LOADB                            R3 0
       25 JUMP                             ; [+14]
       26 GETUPVAL                         R5 6
       27 JUMPIFEQ                         R4 R5 ; [+7]
       29 GETUPVAL                         R5 7
       30 JUMPIFEQ                         R4 R5 ; [+4]
       32 GETUPVAL                         R5 8
       33 JUMPIFNOTEQ                      R4 R5 ; [+6]
       35 GETUPVAL                         R5 9
       36 MOVE                             R6 R1
       37 MOVE                             R7 R0
       38 CALL                             R5 2 1
       39 MOVE                             R3 R5
       40 GETUPVAL                         R4 10
       41 JUMPIFEQKNIL                     R4 ; [+42]
       43 GETUPVAL                         R5 10
       44 GETTABLEKS                       R4 R5 K4 ["id"]
       46 GETUPVAL                         R6 11
       47 MOVE                             R7 R0
       48 CALL                             R6 1 1
       49 GETUPVAL                         R7 12
       50 MOVE                             R9 R6
       51 NAMECALL                         R7 R7 K5 ["has"]
       53 CALL                             R7 2 1
       54 JUMPIF                           R7 ; [+14]
       55 GETUPVAL                         R7 13
       56 CALL                             R7 0 1
       57 GETUPVAL                         R8 12
       58 MOVE                             R10 R6
       59 MOVE                             R11 R7
       60 NAMECALL                         R8 R8 K6 ["set"]
       62 CALL                             R8 3 0
       63 GETUPVAL                         R8 14
       64 MOVE                             R10 R7
       65 MOVE                             R11 R6
       66 NAMECALL                         R8 R8 K6 ["set"]
       68 CALL                             R8 3 0
       69 GETUPVAL                         R7 12
       70 MOVE                             R9 R6
       71 NAMECALL                         R7 R7 K7 ["get"]
       73 CALL                             R7 2 1
       74 MOVE                             R5 R7
       75 JUMPIFNOTEQ                      R4 R5 ; [+8]
       77 GETUPVAL                         R4 9
       78 MOVE                             R5 R1
       79 MOVE                             R6 R0
       80 CALL                             R4 2 1
       81 JUMPIFNOT                        R4 ; [+2]
       82 LOADB                            R4 1
       83 SETUPVAL                         R4 15
       84 GETUPVAL                         R5 16
       85 MOVE                             R6 R0
       86 CALL                             R5 1 1
       87 NOT                              R4 R5
       88 GETTABLEKS                       R6 R0 K8 ["tag"]
       90 GETUPVAL                         R7 17
       91 JUMPIFEQ                         R6 R7 ; [+2]
       93 LOADB                            R5 0 +1
       94 LOADB                            R5 1
       95 LOADB                            R6 0
       96 MOVE                             R7 R5
       97 JUMPIFNOT                        R7 ; [+6]
       98 GETTABLEKS                       R8 R1 K9 ["memoizedState"]
      100 JUMPIFNOTEQKNIL                  R8 ; [+2]
      102 LOADB                            R7 0 +1
      103 LOADB                            R7 1
      104 MOVE                             R8 R5
      105 JUMPIFNOT                        R8 ; [+6]
      106 GETTABLEKS                       R9 R0 K9 ["memoizedState"]
      108 JUMPIFNOTEQKNIL                  R9 ; [+2]
      110 LOADB                            R8 0 +1
      111 LOADB                            R8 1
      112 JUMPIFNOT                        R7 ; [+28]
      113 JUMPIFNOT                        R8 ; [+27]
      114 GETTABLEKS                       R9 R0 K10 ["child"]
      116 JUMPIFNOT                        R9 ; [+3]
      117 GETTABLEKS                       R10 R9 K11 ["sibling"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R10
      121 GETTABLEKS                       R11 R1 K10 ["child"]
      123 JUMPIFNOT                        R11 ; [+3]
      124 GETTABLEKS                       R12 R11 K11 ["sibling"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R12
      128 JUMPIFEQKNIL                     R10 ; [+147]
      130 JUMPIFEQKNIL                     R12 ; [+145]
      132 GETUPVAL                         R13 18
      133 MOVE                             R14 R10
      134 MOVE                             R15 R12
      135 MOVE                             R16 R0
      136 MOVE                             R17 R3
      137 CALL                             R13 4 1
      138 JUMPIFNOT                        R13 ; [+137]
      139 LOADB                            R6 1
      140 JUMP                             ; [+135]
      141 JUMPIFNOT                        R7 ; [+13]
      142 JUMPIF                           R8 ; [+12]
      143 GETTABLEKS                       R9 R0 K10 ["child"]
      145 JUMPIFEQKNIL                     R9 ; [+7]
      147 GETUPVAL                         R10 19
      148 MOVE                             R11 R9
      149 MOVE                             R12 R0
      150 LOADB                            R13 1
      151 MOVE                             R14 R3
      152 CALL                             R10 4 0
      153 LOADB                            R6 1
      154 JUMP                             ; [+121]
      155 JUMPIF                           R7 ; [+21]
      156 JUMPIFNOT                        R8 ; [+20]
      157 GETUPVAL                         R9 20
      158 MOVE                             R10 R1
      159 CALL                             R9 1 0
      160 GETTABLEKS                       R9 R0 K10 ["child"]
      162 JUMPIFNOT                        R9 ; [+3]
      163 GETTABLEKS                       R10 R9 K11 ["sibling"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R10
      167 JUMPIFEQKNIL                     R10 ; [+108]
      169 GETUPVAL                         R11 19
      170 MOVE                             R12 R10
      171 MOVE                             R13 R0
      172 LOADB                            R14 1
      173 MOVE                             R15 R3
      174 CALL                             R11 4 0
      175 LOADB                            R6 1
      176 JUMP                             ; [+99]
      177 GETTABLEKS                       R9 R0 K10 ["child"]
      179 GETTABLEKS                       R10 R1 K10 ["child"]
      181 JUMPIFEQ                         R9 R10 ; [+48]
      183 GETTABLEKS                       R9 R0 K10 ["child"]
      185 GETTABLEKS                       R10 R1 K10 ["child"]
      187 JUMPIFNOT                        R9 ; [+38]
      188 GETTABLEKS                       R11 R9 K12 ["alternate"]
      190 JUMPIFNOT                        R11 ; [+17]
      191 GETTABLEKS                       R11 R9 K12 ["alternate"]
      193 GETUPVAL                         R12 18
      194 MOVE                             R13 R9
      195 MOVE                             R14 R11
      196 JUMPIFNOT                        R4 ; [+2]
      197 MOVE                             R15 R0
      198 JUMP                             ; [+1]
      199 MOVE                             R15 R2
      200 MOVE                             R16 R3
      201 CALL                             R12 4 1
      202 JUMPIFNOT                        R12 ; [+1]
      203 LOADB                            R6 1
      204 JUMPIFEQ                         R11 R10 ; [+13]
      206 LOADB                            R6 1
      207 JUMP                             ; [+10]
      208 GETUPVAL                         R11 19
      209 MOVE                             R12 R9
      210 JUMPIFNOT                        R4 ; [+2]
      211 MOVE                             R13 R0
      212 JUMP                             ; [+1]
      213 MOVE                             R13 R2
      214 LOADB                            R14 0
      215 MOVE                             R15 R3
      216 CALL                             R11 4 0
      217 LOADB                            R6 1
      218 GETTABLEKS                       R9 R9 K11 ["sibling"]
      220 JUMPIF                           R6 ; [+4]
      221 JUMPIFEQKNIL                     R10 ; [+3]
      223 GETTABLEKS                       R10 R10 K11 ["sibling"]
      225 JUMPBACK                         ; [-39]
      226 JUMPIFEQKNIL                     R10 ; [+49]
      228 LOADB                            R6 1
      229 JUMP                             ; [+46]
      230 GETUPVAL                         R9 2
      231 JUMPIFNOT                        R9 ; [+44]
      232 JUMPIFNOT                        R3 ; [+43]
      233 GETUPVAL                         R9 21
      234 GETUPVAL                         R11 11
      235 MOVE                             R12 R0
      236 CALL                             R11 1 1
      237 GETUPVAL                         R12 12
      238 MOVE                             R14 R11
      239 NAMECALL                         R12 R12 K5 ["has"]
      241 CALL                             R12 2 1
      242 JUMPIF                           R12 ; [+14]
      243 GETUPVAL                         R12 13
      244 CALL                             R12 0 1
      245 GETUPVAL                         R13 12
      246 MOVE                             R15 R11
      247 MOVE                             R16 R12
      248 NAMECALL                         R13 R13 K6 ["set"]
      250 CALL                             R13 3 0
      251 GETUPVAL                         R13 14
      252 MOVE                             R15 R12
      253 MOVE                             R16 R11
      254 NAMECALL                         R13 R13 K6 ["set"]
      256 CALL                             R13 3 0
      257 GETUPVAL                         R12 12
      258 MOVE                             R14 R11
      259 NAMECALL                         R12 R12 K7 ["get"]
      261 CALL                             R12 2 1
      262 MOVE                             R10 R12
      263 CALL                             R9 1 1
      264 MOVE                             R10 R9
      265 LOADNIL                          R11
      266 LOADNIL                          R12
      267 FORGPREP                         R10
      268 GETUPVAL                         R15 5
      269 GETTABLEKS                       R17 R14 K2 ["stateNode"]
      271 NAMECALL                         R15 R15 K3 ["add"]
      273 CALL                             R15 2 0
      274 FORGLOOP                         R10 2 ; [-7]
      276 JUMPIFNOT                        R4 ; [+10]
      277 GETTABLEKS                       R10 R0 K13 ["treeBaseDuration"]
      279 JUMPIFNOTEQKNIL                  R10 ; [+2]
      281 LOADB                            R9 0 +1
      282 LOADB                            R9 1
      283 JUMPIFNOT                        R9 ; [+3]
      284 GETUPVAL                         R10 22
      285 MOVE                             R11 R0
      286 CALL                             R10 1 0
      287 JUMPIFNOT                        R6 ; [+21]
      288 JUMPIFNOT                        R4 ; [+18]
      289 GETTABLEKS                       R9 R0 K10 ["child"]
      291 JUMPIFNOT                        R8 ; [+7]
      292 GETTABLEKS                       R10 R0 K10 ["child"]
      294 JUMPIFNOT                        R10 ; [+3]
      295 GETTABLEKS                       R9 R10 K11 ["sibling"]
      297 JUMP                             ; [+1]
      298 LOADNIL                          R9
      299 JUMPIFEQKNIL                     R9 ; [+5]
      301 GETUPVAL                         R10 23
      302 MOVE                             R11 R0
      303 MOVE                             R12 R9
      304 CALL                             R10 2 0
      305 LOADB                            R10 0
      306 RETURN                           R10 1
      307 LOADB                            R9 1
      308 RETURN                           R9 1
      309 LOADB                            R9 0
      310 RETURN                           R9 1

PROTO_40:
        0 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K2 [{"timestamp"}]
        7 GETTABLEKS                       R6 R0 K1 ["timestamp"]
        9 GETUPVAL                         R7 1
       10 SUB                              R5 R6 R7
       11 SETTABLEKS                       R5 R4 K1 ["timestamp"]
       13 CALL                             R1 3 1
       14 RETURN                           R1 1

PROTO_42:
        0 GETUPVAL                         R2 1
        1 GETTABLEKS                       R3 R0 K0 ["current"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R3 K1 ["has"]
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+14]
       10 GETUPVAL                         R3 3
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 2
       13 MOVE                             R6 R2
       14 MOVE                             R7 R3
       15 NAMECALL                         R4 R4 K2 ["set"]
       17 CALL                             R4 3 0
       18 GETUPVAL                         R4 4
       19 MOVE                             R6 R3
       20 MOVE                             R7 R2
       21 NAMECALL                         R4 R4 K2 ["set"]
       23 CALL                             R4 3 0
       24 GETUPVAL                         R3 2
       25 MOVE                             R5 R2
       26 NAMECALL                         R3 R3 K3 ["get"]
       28 CALL                             R3 2 1
       29 MOVE                             R1 R3
       30 SETUPVAL                         R1 0
       31 GETUPVAL                         R1 5
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R3 R0 K0 ["current"]
       35 CALL                             R1 2 0
       36 GETUPVAL                         R1 6
       37 JUMPIFNOT                        R1 ; [+54]
       38 GETTABLEKS                       R1 R0 K4 ["memoizedInteractions"]
       40 JUMPIFEQKNIL                     R1 ; [+51]
       42 GETUPVAL                         R2 7
       43 GETTABLEKS                       R1 R2 K5 ["from"]
       45 GETTABLEKS                       R2 R0 K4 ["memoizedInteractions"]
       47 CALL                             R1 1 1
       48 DUPTABLE                         R2 K12 [{"changeDescriptions", "durations", "commitTime", "interactions", "maxActualDuration", "priorityLevel"}]
       49 GETUPVAL                         R4 9
       50 JUMPIFNOT                        R4 ; [+5]
       51 GETUPVAL                         R4 10
       52 GETTABLEKS                       R3 R4 K13 ["new"]
       54 CALL                             R3 0 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R3
       57 SETTABLEKS                       R3 R2 K6 ["changeDescriptions"]
       59 NEWTABLE                         R3 0 0
       61 SETTABLEKS                       R3 R2 K7 ["durations"]
       63 GETIMPORT                        R4 K16 [os.clock]
       65 CALL                             R4 0 1
       66 GETUPVAL                         R5 11
       67 SUB                              R3 R4 R5
       68 SETTABLEKS                       R3 R2 K8 ["commitTime"]
       70 GETUPVAL                         R4 7
       71 GETTABLEKS                       R3 R4 K17 ["map"]
       73 GETUPVAL                         R5 7
       74 GETTABLEKS                       R4 R5 K5 ["from"]
       76 GETTABLEKS                       R5 R0 K4 ["memoizedInteractions"]
       78 CALL                             R4 1 1
       79 NEWCLOSURE                       R5 P0
       80 CAPTURE                          UPVAL U12
       81 CAPTURE                          UPVAL U11
       82 CALL                             R3 2 1
       83 SETTABLEKS                       R3 R2 K9 ["interactions"]
       85 LOADN                            R3 0
       86 SETTABLEKS                       R3 R2 K10 ["maxActualDuration"]
       88 LOADNIL                          R3
       89 SETTABLEKS                       R3 R2 K11 ["priorityLevel"]
       91 SETUPVAL                         R2 8
       92 GETUPVAL                         R1 13
       93 GETTABLEKS                       R2 R0 K0 ["current"]
       95 LOADNIL                          R3
       96 LOADB                            R4 0
       97 LOADB                            R5 0
       98 CALL                             R1 4 0
       99 GETUPVAL                         R1 14
      100 MOVE                             R2 R0
      101 CALL                             R1 1 0
      102 LOADN                            R1 255
      103 SETUPVAL                         R1 0
      104 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R0 ; [+18]
        5 LENGTH                           R1 R0
        6 LOADN                            R2 0
        7 JUMPIFNOTLT                      R2 R1 ; [+14]
        9 MOVE                             R1 R0
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K0 ["emit"]
       16 LOADK                            R7 K1 ["operations"]
       17 MOVE                             R8 R5
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-7]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 2
       23 JUMPIFEQKNIL                     R1 ; [+3]
       25 LOADB                            R1 1
       26 SETUPVAL                         R1 3
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R1 R2 K2 ["getFiberRoots"]
       30 GETUPVAL                         R2 4
       31 CALL                             R1 1 1
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U9
       38 CAPTURE                          UPVAL U10
       39 CAPTURE                          UPVAL U11
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          UPVAL U13
       42 CAPTURE                          UPVAL U14
       43 CAPTURE                          UPVAL U15
       44 CAPTURE                          UPVAL U16
       45 CAPTURE                          UPVAL U17
       46 CAPTURE                          UPVAL U18
       47 CAPTURE                          UPVAL U19
       48 NAMECALL                         R1 R1 K3 ["forEach"]
       50 CALL                             R1 2 0
       51 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_45:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R1 K0 ["Unknown"]
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K1 ["Immediate"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 1
       10 JUMPIFNOTEQ                      R0 R1 ; [+3]
       12 LOADK                            R1 K2 ["User-Blocking"]
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 2
       15 JUMPIFNOTEQ                      R0 R1 ; [+3]
       17 LOADK                            R1 K3 ["Normal"]
       18 RETURN                           R1 1
       19 GETUPVAL                         R1 3
       20 JUMPIFNOTEQ                      R0 R1 ; [+3]
       22 LOADK                            R1 K4 ["Low"]
       23 RETURN                           R1 1
       24 GETUPVAL                         R1 4
       25 JUMPIFNOTEQ                      R0 R1 ; [+3]
       27 LOADK                            R1 K5 ["Idle"]
       28 RETURN                           R1 1
       29 LOADK                            R1 K0 ["Unknown"]
       30 RETURN                           R1 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K2 [{"timestamp"}]
        7 GETTABLEKS                       R6 R0 K1 ["timestamp"]
        9 GETUPVAL                         R7 1
       10 SUB                              R5 R6 R7
       11 SETTABLEKS                       R5 R4 K1 ["timestamp"]
       13 CALL                             R1 3 1
       14 RETURN                           R1 1

PROTO_47:
        0 GETTABLEKS                       R2 R0 K0 ["current"]
        2 GETTABLEKS                       R3 R2 K1 ["alternate"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R2
        6 CALL                             R5 1 1
        7 GETUPVAL                         R6 2
        8 MOVE                             R8 R5
        9 NAMECALL                         R6 R6 K2 ["has"]
       11 CALL                             R6 2 1
       12 JUMPIF                           R6 ; [+14]
       13 GETUPVAL                         R6 3
       14 CALL                             R6 0 1
       15 GETUPVAL                         R7 2
       16 MOVE                             R9 R5
       17 MOVE                             R10 R6
       18 NAMECALL                         R7 R7 K3 ["set"]
       20 CALL                             R7 3 0
       21 GETUPVAL                         R7 4
       22 MOVE                             R9 R6
       23 MOVE                             R10 R5
       24 NAMECALL                         R7 R7 K3 ["set"]
       26 CALL                             R7 3 0
       27 GETUPVAL                         R6 2
       28 MOVE                             R8 R5
       29 NAMECALL                         R6 R6 K4 ["get"]
       31 CALL                             R6 2 1
       32 MOVE                             R4 R6
       33 SETUPVAL                         R4 0
       34 GETUPVAL                         R4 5
       35 JUMPIFEQKNIL                     R4 ; [+3]
       37 LOADB                            R4 1
       38 SETUPVAL                         R4 6
       39 GETUPVAL                         R4 7
       40 JUMPIFNOT                        R4 ; [+4]
       41 GETUPVAL                         R4 8
       42 NAMECALL                         R4 R4 K5 ["clear"]
       44 CALL                             R4 1 0
       45 GETTABLEKS                       R5 R0 K6 ["memoizedInteractions"]
       47 JUMPIFNOTEQKNIL                  R5 ; [+2]
       49 LOADB                            R4 0 +1
       50 LOADB                            R4 1
       51 GETUPVAL                         R5 9
       52 JUMPIFNOT                        R5 ; [+85]
       53 JUMPIFNOT                        R4 ; [+84]
       54 GETUPVAL                         R6 10
       55 GETTABLEKS                       R5 R6 K7 ["from"]
       57 GETTABLEKS                       R6 R0 K6 ["memoizedInteractions"]
       59 CALL                             R5 1 1
       60 DUPTABLE                         R6 K14 [{"changeDescriptions", "durations", "commitTime", "interactions", "maxActualDuration", "priorityLevel"}]
       61 GETUPVAL                         R8 12
       62 JUMPIFNOT                        R8 ; [+5]
       63 GETUPVAL                         R8 13
       64 GETTABLEKS                       R7 R8 K15 ["new"]
       66 CALL                             R7 0 1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R7
       69 SETTABLEKS                       R7 R6 K8 ["changeDescriptions"]
       71 NEWTABLE                         R7 0 0
       73 SETTABLEKS                       R7 R6 K9 ["durations"]
       75 GETIMPORT                        R8 K18 [os.clock]
       77 CALL                             R8 0 1
       78 GETUPVAL                         R9 14
       79 SUB                              R7 R8 R9
       80 SETTABLEKS                       R7 R6 K10 ["commitTime"]
       82 GETUPVAL                         R8 10
       83 GETTABLEKS                       R7 R8 K19 ["map"]
       85 GETUPVAL                         R9 10
       86 GETTABLEKS                       R8 R9 K7 ["from"]
       88 GETTABLEKS                       R9 R0 K6 ["memoizedInteractions"]
       90 CALL                             R8 1 1
       91 NEWCLOSURE                       R9 P0
       92 CAPTURE                          UPVAL U15
       93 CAPTURE                          UPVAL U14
       94 CALL                             R7 2 1
       95 SETTABLEKS                       R7 R6 K11 ["interactions"]
       97 LOADN                            R7 0
       98 SETTABLEKS                       R7 R6 K12 ["maxActualDuration"]
      100 JUMPIFNOTEQKNIL                  R1 ; [+3]
      102 LOADNIL                          R7
      103 JUMP                             ; [+31]
      104 JUMPIFNOTEQKNIL                  R1 ; [+3]
      106 LOADK                            R7 K20 ["Unknown"]
      107 JUMP                             ; [+27]
      108 GETUPVAL                         R8 16
      109 JUMPIFNOTEQ                      R1 R8 ; [+3]
      111 LOADK                            R7 K21 ["Immediate"]
      112 JUMP                             ; [+22]
      113 GETUPVAL                         R8 17
      114 JUMPIFNOTEQ                      R1 R8 ; [+3]
      116 LOADK                            R7 K22 ["User-Blocking"]
      117 JUMP                             ; [+17]
      118 GETUPVAL                         R8 18
      119 JUMPIFNOTEQ                      R1 R8 ; [+3]
      121 LOADK                            R7 K23 ["Normal"]
      122 JUMP                             ; [+12]
      123 GETUPVAL                         R8 19
      124 JUMPIFNOTEQ                      R1 R8 ; [+3]
      126 LOADK                            R7 K24 ["Low"]
      127 JUMP                             ; [+7]
      128 GETUPVAL                         R8 20
      129 JUMPIFNOTEQ                      R1 R8 ; [+3]
      131 LOADK                            R7 K25 ["Idle"]
      132 JUMP                             ; [+2]
      133 LOADK                            R7 K20 ["Unknown"]
      134 JUMP                             ; [0]
      135 SETTABLEKS                       R7 R6 K13 ["priorityLevel"]
      137 SETUPVAL                         R6 11
      138 JUMPIFNOT                        R3 ; [+58]
      139 LOADB                            R5 0
      140 GETTABLEKS                       R6 R3 K26 ["memoizedState"]
      142 JUMPIFEQKNIL                     R6 ; [+9]
      144 GETTABLEKS                       R7 R3 K26 ["memoizedState"]
      146 GETTABLEKS                       R6 R7 K27 ["element"]
      148 JUMPIFNOTEQKNIL                  R6 ; [+2]
      150 LOADB                            R5 0 +1
      151 LOADB                            R5 1
      152 LOADB                            R6 0
      153 GETTABLEKS                       R7 R2 K26 ["memoizedState"]
      155 JUMPIFEQKNIL                     R7 ; [+9]
      157 GETTABLEKS                       R8 R2 K26 ["memoizedState"]
      159 GETTABLEKS                       R7 R8 K27 ["element"]
      161 JUMPIFNOTEQKNIL                  R7 ; [+2]
      163 LOADB                            R6 0 +1
      164 LOADB                            R6 1
      165 JUMPIF                           R5 ; [+12]
      166 JUMPIFNOT                        R6 ; [+11]
      167 GETUPVAL                         R7 21
      168 GETUPVAL                         R8 0
      169 MOVE                             R9 R2
      170 CALL                             R7 2 0
      171 GETUPVAL                         R7 22
      172 MOVE                             R8 R2
      173 LOADNIL                          R9
      174 LOADB                            R10 0
      175 LOADB                            R11 0
      176 CALL                             R7 4 0
      177 JUMP                             ; [+29]
      178 JUMPIFNOT                        R5 ; [+8]
      179 JUMPIFNOT                        R6 ; [+7]
      180 GETUPVAL                         R7 23
      181 MOVE                             R8 R2
      182 MOVE                             R9 R3
      183 LOADNIL                          R10
      184 LOADB                            R11 0
      185 CALL                             R7 4 0
      186 JUMP                             ; [+20]
      187 JUMPIFNOT                        R5 ; [+19]
      188 JUMPIF                           R6 ; [+18]
      189 GETUPVAL                         R7 24
      190 GETUPVAL                         R8 0
      191 CALL                             R7 1 0
      192 GETUPVAL                         R7 25
      193 MOVE                             R8 R2
      194 LOADB                            R9 0
      195 CALL                             R7 2 0
      196 JUMP                             ; [+10]
      197 GETUPVAL                         R5 21
      198 GETUPVAL                         R6 0
      199 MOVE                             R7 R2
      200 CALL                             R5 2 0
      201 GETUPVAL                         R5 22
      202 MOVE                             R6 R2
      203 LOADNIL                          R7
      204 LOADB                            R8 0
      205 LOADB                            R9 0
      206 CALL                             R5 4 0
      207 GETUPVAL                         R5 9
      208 JUMPIFNOT                        R5 ; [+26]
      209 JUMPIFNOT                        R4 ; [+25]
      210 GETUPVAL                         R5 26
      211 GETUPVAL                         R7 0
      212 NAMECALL                         R5 R5 K4 ["get"]
      214 CALL                             R5 2 1
      215 JUMPIFEQKNIL                     R5 ; [+9]
      217 GETUPVAL                         R8 11
      218 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      220 MOVE                             R7 R5
      221 GETIMPORT                        R6 K30 [table.insert]
      223 CALL                             R6 2 0
      224 JUMP                             ; [+10]
      225 GETUPVAL                         R6 26
      226 GETUPVAL                         R8 0
      227 NEWTABLE                         R9 0 1
      229 GETUPVAL                         R10 11
      230 SETLIST                          R9 R10 1 [1]
      232 NAMECALL                         R6 R6 K3 ["set"]
      234 CALL                             R6 3 0
      235 GETUPVAL                         R5 27
      236 MOVE                             R6 R0
      237 CALL                             R5 1 0
      238 GETUPVAL                         R5 7
      239 JUMPIFNOT                        R5 ; [+6]
      240 GETUPVAL                         R6 28
      241 GETTABLEKS                       R5 R6 K31 ["emit"]
      243 LOADK                            R6 K32 ["traceUpdates"]
      244 GETUPVAL                         R7 8
      245 CALL                             R5 2 0
      246 LOADN                            R5 255
      247 SETUPVAL                         R5 0
      248 RETURN                           R0 0

PROTO_48:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R1 1
        7 MOVE                             R3 R2
        8 GETTABLEKS                       R4 R3 K0 ["tag"]
       10 GETUPVAL                         R5 1
       11 JUMPIFEQ                         R4 R5 ; [+6]
       13 GETTABLEKS                       R4 R3 K0 ["tag"]
       15 GETUPVAL                         R5 2
       16 JUMPIFNOTEQ                      R4 R5 ; [+9]
       18 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       20 MOVE                             R5 R1
       21 MOVE                             R6 R3
       22 GETIMPORT                        R4 K3 [table.insert]
       24 CALL                             R4 2 0
       25 JUMP                             ; [+10]
       26 GETTABLEKS                       R4 R3 K4 ["child"]
       28 JUMPIFNOT                        R4 ; [+7]
       29 GETTABLEKS                       R4 R3 K4 ["child"]
       31 SETTABLEKS                       R3 R4 K5 ["return_"]
       33 GETTABLEKS                       R3 R3 K4 ["child"]
       35 JUMP                             ; [+25]
       36 JUMPIFNOTEQ                      R3 R2 ; [+2]
       38 RETURN                           R1 1
       39 GETTABLEKS                       R4 R3 K6 ["sibling"]
       41 JUMPIF                           R4 ; [+11]
       42 GETTABLEKS                       R4 R3 K5 ["return_"]
       44 JUMPIFNOT                        R4 ; [+4]
       45 GETTABLEKS                       R4 R3 K5 ["return_"]
       47 JUMPIFNOTEQ                      R4 R2 ; [+2]
       49 RETURN                           R1 1
       50 GETTABLEKS                       R3 R3 K5 ["return_"]
       52 JUMPBACK                         ; [-14]
       53 GETTABLEKS                       R4 R3 K6 ["sibling"]
       55 GETTABLEKS                       R5 R3 K5 ["return_"]
       57 SETTABLEKS                       R5 R4 K5 ["return_"]
       59 GETTABLEKS                       R3 R3 K6 ["sibling"]
       61 JUMPBACK                         ; [-54]
       62 RETURN                           R1 1

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["stateNode"]
        2 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 LOADB                            R1 0
        8 GETTABLEKS                       R2 R0 K0 ["tag"]
       10 GETUPVAL                         R3 2
       11 JUMPIFNOTEQ                      R2 R3 ; [+7]
       13 GETTABLEKS                       R2 R0 K1 ["memoizedState"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 JUMPIFNOT                        R1 ; [+10]
       20 GETTABLEKS                       R2 R0 K2 ["child"]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETTABLEKS                       R3 R0 K2 ["child"]
       25 GETTABLEKS                       R2 R3 K3 ["sibling"]
       27 JUMPIFEQKNIL                     R2 ; [+2]
       29 MOVE                             R0 R2
       30 GETUPVAL                         R2 3
       31 GETUPVAL                         R3 1
       32 CALL                             R2 1 1
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R3 R4 K4 ["map"]
       36 MOVE                             R4 R2
       37 DUPCLOSURE                       R5 K5 [PROTO_49]
       38 CALL                             R3 2 1
       39 RETURN                           R3 1

PROTO_51:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 2
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 RETURN                           R2 1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["get"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+5]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 RETURN                           R2 1
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_53:
        0 ORK                              R1 R1 K0 [False]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K1 ["findFiberByHostInstance"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFEQKNIL                     R2 ; [+41]
        8 JUMPIFNOT                        R1 ; [+9]
        9 JUMPIFEQKNIL                     R2 ; [+8]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 JUMPIFNOT                        R3 ; [+3]
       15 GETTABLEKS                       R2 R2 K2 ["return_"]
       17 JUMPBACK                         ; [-9]
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R2
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 3
       22 MOVE                             R7 R4
       23 NAMECALL                         R5 R5 K3 ["has"]
       25 CALL                             R5 2 1
       26 JUMPIF                           R5 ; [+14]
       27 GETUPVAL                         R5 4
       28 CALL                             R5 0 1
       29 GETUPVAL                         R6 3
       30 MOVE                             R8 R4
       31 MOVE                             R9 R5
       32 NAMECALL                         R6 R6 K4 ["set"]
       34 CALL                             R6 3 0
       35 GETUPVAL                         R6 5
       36 MOVE                             R8 R5
       37 MOVE                             R9 R4
       38 NAMECALL                         R6 R6 K4 ["set"]
       40 CALL                             R6 3 0
       41 GETUPVAL                         R5 3
       42 MOVE                             R7 R4
       43 NAMECALL                         R5 R5 K5 ["get"]
       45 CALL                             R5 2 1
       46 MOVE                             R3 R5
       47 RETURN                           R3 1
       48 LOADNIL                          R3
       49 RETURN                           R3 1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 JUMPIFEQ                         R3 R0 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 LOADK                            R3 K0 ["Unable to find node on an unmounted component."]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["get"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+16]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["warn"]
       10 GETIMPORT                        R3 K4 [string.format]
       12 LOADK                            R4 K5 ["Could not find Fiber with id \"%s\""]
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R6 R0
       15 GETIMPORT                        R5 K7 [tostring]
       17 CALL                             R5 1 1
       18 CALL                             R3 2 -1
       19 CALL                             R2 -1 0
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 GETTABLEKS                       R2 R1 K8 ["alternate"]
       24 JUMPIF                           R2 ; [+15]
       25 GETUPVAL                         R3 2
       26 MOVE                             R4 R1
       27 CALL                             R3 1 1
       28 GETUPVAL                         R4 3
       29 JUMPIFNOTEQKNIL                  R3 ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 LOADK                            R6 K9 ["Unable to find node on an unmounted component."]
       34 CALL                             R4 2 0
       35 JUMPIFEQ                         R3 R1 ; [+3]
       37 LOADNIL                          R4
       38 RETURN                           R4 1
       39 RETURN                           R1 1
       40 MOVE                             R3 R1
       41 MOVE                             R4 R2
       42 GETTABLEKS                       R5 R3 K10 ["return_"]
       44 JUMPIFEQKNIL                     R5 ; [+116]
       46 GETTABLEKS                       R6 R5 K8 ["alternate"]
       48 JUMPIFNOTEQKNIL                  R6 ; [+9]
       50 GETTABLEKS                       R7 R5 K10 ["return_"]
       52 JUMPIFEQKNIL                     R7 ; [+108]
       54 MOVE                             R3 R7
       55 MOVE                             R4 R7
       56 JUMP                             ; [+103]
       57 JUMP                             ; [+103]
       58 GETTABLEKS                       R7 R5 K11 ["child"]
       60 GETTABLEKS                       R8 R6 K11 ["child"]
       62 JUMPIFNOTEQ                      R7 R8 ; [+37]
       64 GETTABLEKS                       R7 R5 K11 ["child"]
       66 JUMPIFNOT                        R7 ; [+29]
       67 JUMPIFNOTEQ                      R7 R3 ; [+12]
       69 GETUPVAL                         R8 3
       70 GETUPVAL                         R10 2
       71 MOVE                             R11 R5
       72 CALL                             R10 1 1
       73 JUMPIFEQ                         R10 R5 ; [+2]
       75 LOADB                            R9 0 +1
       76 LOADB                            R9 1
       77 LOADK                            R10 K9 ["Unable to find node on an unmounted component."]
       78 CALL                             R8 2 0
       79 RETURN                           R1 1
       80 JUMPIFNOTEQ                      R7 R4 ; [+12]
       82 GETUPVAL                         R8 3
       83 GETUPVAL                         R10 2
       84 MOVE                             R11 R5
       85 CALL                             R10 1 1
       86 JUMPIFEQ                         R10 R5 ; [+2]
       88 LOADB                            R9 0 +1
       89 LOADB                            R9 1
       90 LOADK                            R10 K9 ["Unable to find node on an unmounted component."]
       91 CALL                             R8 2 0
       92 RETURN                           R2 1
       93 GETTABLEKS                       R7 R7 K12 ["sibling"]
       95 JUMPBACK                         ; [-30]
       96 GETUPVAL                         R8 3
       97 LOADB                            R9 0
       98 LOADK                            R10 K9 ["Unable to find node on an unmounted component."]
       99 CALL                             R8 2 0
      100 GETTABLEKS                       R7 R3 K10 ["return_"]
      102 GETTABLEKS                       R8 R4 K10 ["return_"]
      104 JUMPIFEQ                         R7 R8 ; [+4]
      106 MOVE                             R3 R5
      107 MOVE                             R4 R6
      108 JUMP                             ; [+42]
      109 LOADB                            R7 0
      110 GETTABLEKS                       R8 R5 K11 ["child"]
      112 JUMPIFNOT                        R8 ; [+15]
      113 JUMPIFNOTEQ                      R8 R3 ; [+5]
      115 LOADB                            R7 1
      116 MOVE                             R3 R5
      117 MOVE                             R4 R6
      118 JUMP                             ; [+9]
      119 JUMPIFNOTEQ                      R8 R4 ; [+5]
      121 LOADB                            R7 1
      122 MOVE                             R4 R5
      123 MOVE                             R3 R6
      124 JUMP                             ; [+3]
      125 GETTABLEKS                       R8 R8 K12 ["sibling"]
      127 JUMPBACK                         ; [-16]
      128 JUMPIF                           R7 ; [+22]
      129 GETTABLEKS                       R8 R6 K11 ["child"]
      131 JUMPIFNOT                        R8 ; [+15]
      132 JUMPIFNOTEQ                      R8 R3 ; [+5]
      134 LOADB                            R7 1
      135 MOVE                             R3 R6
      136 MOVE                             R4 R5
      137 JUMP                             ; [+9]
      138 JUMPIFNOTEQ                      R8 R4 ; [+5]
      140 LOADB                            R7 1
      141 MOVE                             R4 R6
      142 MOVE                             R3 R5
      143 JUMP                             ; [+3]
      144 GETTABLEKS                       R8 R8 K12 ["sibling"]
      146 JUMPBACK                         ; [-16]
      147 GETUPVAL                         R9 3
      148 MOVE                             R10 R7
      149 LOADK                            R11 K13 ["Child was not found in either parent set. This indicates a bug in React related to the return pointer. Please file an issue."]
      150 CALL                             R9 2 0
      151 GETUPVAL                         R7 3
      152 GETTABLEKS                       R9 R3 K8 ["alternate"]
      154 JUMPIFEQ                         R9 R4 ; [+2]
      156 LOADB                            R8 0 +1
      157 LOADB                            R8 1
      158 LOADK                            R9 K14 ["Return fibers should always be each others' alternates. This error is likely caused by a bug in React. Please file an issue."]
      159 CALL                             R7 2 0
      160 JUMPBACK                         ; [-119]
      161 GETUPVAL                         R5 3
      162 GETTABLEKS                       R7 R3 K15 ["tag"]
      164 GETUPVAL                         R8 4
      165 JUMPIFEQ                         R7 R8 ; [+2]
      167 LOADB                            R6 0 +1
      168 LOADB                            R6 1
      169 LOADK                            R7 K9 ["Unable to find node on an unmounted component."]
      170 CALL                             R5 2 0
      171 GETTABLEKS                       R6 R3 K16 ["stateNode"]
      173 GETTABLEKS                       R5 R6 K17 ["current"]
      175 JUMPIFNOTEQ                      R5 R3 ; [+2]
      177 RETURN                           R1 1
      178 RETURN                           R2 1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 MOVE                             R6 R1
        8 CALL                             R4 2 1
        9 SETTABLEKS                       R4 R3 K0 ["$attribute"]
       11 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["get"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+15]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["warn"]
       10 GETIMPORT                        R3 K4 [string.format]
       12 LOADK                            R4 K5 ["Could not find Fiber with id \"%s\""]
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R6 R0
       15 GETIMPORT                        R5 K7 [tostring]
       17 CALL                             R5 1 1
       18 CALL                             R3 2 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R1 K8 ["elementType"]
       23 GETTABLEKS                       R3 R1 K9 ["tag"]
       25 GETTABLEKS                       R4 R1 K10 ["type"]
       27 GETUPVAL                         R5 2
       28 JUMPIFEQ                         R3 R5 ; [+10]
       30 GETUPVAL                         R5 3
       31 JUMPIFEQ                         R3 R5 ; [+7]
       33 GETUPVAL                         R5 4
       34 JUMPIFEQ                         R3 R5 ; [+4]
       36 GETUPVAL                         R5 5
       37 JUMPIFNOTEQ                      R3 R5 ; [+5]
       39 GETUPVAL                         R5 6
       40 SETTABLEKS                       R4 R5 K11 ["$type"]
       42 RETURN                           R0 0
       43 GETUPVAL                         R5 7
       44 JUMPIFNOTEQ                      R3 R5 ; [+7]
       46 GETUPVAL                         R5 6
       47 GETTABLEKS                       R6 R4 K12 ["render"]
       49 SETTABLEKS                       R6 R5 K11 ["$type"]
       51 RETURN                           R0 0
       52 GETUPVAL                         R5 8
       53 JUMPIFEQ                         R3 R5 ; [+4]
       55 GETUPVAL                         R5 9
       56 JUMPIFNOTEQ                      R3 R5 ; [+15]
       58 GETUPVAL                         R5 6
       59 JUMPIFEQKNIL                     R2 ; [+8]
       61 GETTABLEKS                       R7 R2 K10 ["type"]
       63 JUMPIFEQKNIL                     R7 ; [+4]
       65 GETTABLEKS                       R6 R2 K10 ["type"]
       67 JUMPIF                           R6 ; [+1]
       68 MOVE                             R6 R4
       69 SETTABLEKS                       R6 R5 K11 ["$type"]
       71 RETURN                           R0 0
       72 GETUPVAL                         R5 6
       73 LOADNIL                          R6
       74 SETTABLEKS                       R6 R5 K11 ["$type"]
       76 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K0 ["_debugOwner"]
        9 NEWTABLE                         R3 0 1
       11 DUPTABLE                         R4 K4 [{"displayName", "id", "type"}]
       12 GETUPVAL                         R6 1
       13 MOVE                             R7 R1
       14 CALL                             R6 1 1
       15 ORK                              R5 R6 K5 ["Anonymous"]
       16 SETTABLEKS                       R5 R4 K1 ["displayName"]
       18 SETTABLEKS                       R0 R4 K2 ["id"]
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R1
       22 CALL                             R5 1 1
       23 SETTABLEKS                       R5 R4 K3 ["type"]
       25 SETLIST                          R3 R4 1 [1]
       27 JUMPIFNOT                        R2 ; [+55]
       28 MOVE                             R4 R2
       29 JUMPIFEQKNIL                     R4 ; [+53]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R5 R6 K6 ["unshift"]
       34 MOVE                             R6 R3
       35 DUPTABLE                         R7 K4 [{"displayName", "id", "type"}]
       36 GETUPVAL                         R9 1
       37 MOVE                             R10 R4
       38 CALL                             R9 1 1
       39 ORK                              R8 R9 K5 ["Anonymous"]
       40 SETTABLEKS                       R8 R7 K1 ["displayName"]
       42 GETUPVAL                         R9 4
       43 MOVE                             R10 R4
       44 CALL                             R9 1 1
       45 GETUPVAL                         R10 5
       46 MOVE                             R12 R9
       47 NAMECALL                         R10 R10 K7 ["has"]
       49 CALL                             R10 2 1
       50 JUMPIF                           R10 ; [+14]
       51 GETUPVAL                         R10 6
       52 CALL                             R10 0 1
       53 GETUPVAL                         R11 5
       54 MOVE                             R13 R9
       55 MOVE                             R14 R10
       56 NAMECALL                         R11 R11 K8 ["set"]
       58 CALL                             R11 3 0
       59 GETUPVAL                         R11 7
       60 MOVE                             R13 R10
       61 MOVE                             R14 R9
       62 NAMECALL                         R11 R11 K8 ["set"]
       64 CALL                             R11 3 0
       65 GETUPVAL                         R10 5
       66 MOVE                             R12 R9
       67 NAMECALL                         R10 R10 K9 ["get"]
       69 CALL                             R10 2 1
       70 MOVE                             R8 R10
       71 SETTABLEKS                       R8 R7 K2 ["id"]
       73 GETUPVAL                         R8 2
       74 MOVE                             R9 R4
       75 CALL                             R8 1 1
       76 SETTABLEKS                       R8 R7 K3 ["type"]
       78 CALL                             R5 2 0
       79 GETTABLEKS                       R5 R4 K0 ["_debugOwner"]
       81 ORK                              R4 R5 K10 []
       82 JUMPBACK                         ; [-54]
       83 RETURN                           R3 1

PROTO_59:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFEQKNIL                     R3 ; [+11]
        7 GETTABLEKS                       R1 R3 K0 ["stateNode"]
        9 GETTABLEKS                       R4 R3 K1 ["memoizedProps"]
       11 JUMPIFEQKNIL                     R4 ; [+5]
       13 GETTABLEKS                       R4 R3 K1 ["memoizedProps"]
       15 GETTABLEKS                       R2 R4 K2 ["style"]
       17 DUPTABLE                         R4 K4 [{"instance", "style"}]
       18 SETTABLEKS                       R1 R4 K3 ["instance"]
       20 SETTABLEKS                       R2 R4 K2 ["style"]
       22 RETURN                           R4 1

PROTO_60:
        0 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R2 R3 R4
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 DUPCLOSURE                       R2 K0 [PROTO_60]
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 GETUPVAL                         R3 3
        3 GETTABLEKS                       R2 R3 K0 ["currentDispatcherRef"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R2 R3 R4
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K0 ["_debugOwner"]
        9 GETTABLEKS                       R3 R1 K1 ["_debugSource"]
       11 GETTABLEKS                       R4 R1 K2 ["stateNode"]
       13 GETTABLEKS                       R5 R1 K3 ["key"]
       15 GETTABLEKS                       R6 R1 K4 ["memoizedProps"]
       17 GETTABLEKS                       R7 R1 K5 ["memoizedState"]
       19 GETTABLEKS                       R8 R1 K6 ["dependencies"]
       21 GETTABLEKS                       R9 R1 K7 ["tag"]
       23 GETTABLEKS                       R10 R1 K8 ["type"]
       25 GETUPVAL                         R11 1
       26 MOVE                             R12 R1
       27 CALL                             R11 1 1
       28 GETUPVAL                         R13 2
       29 JUMPIFEQ                         R9 R13 ; [+8]
       31 GETUPVAL                         R13 3
       32 JUMPIFEQ                         R9 R13 ; [+5]
       34 LOADB                            R12 0
       35 GETUPVAL                         R13 4
       36 JUMPIFNOTEQ                      R9 R13 ; [+6]
       38 NOT                              R13 R7
       39 NOT                              R12 R13
       40 JUMPIF                           R12 ; [+2]
       41 NOT                              R13 R8
       42 NOT                              R12 R13
       43 GETUPVAL                         R13 5
       44 MOVE                             R14 R10
       45 CALL                             R13 1 1
       46 LOADB                            R14 0
       47 LOADNIL                          R15
       48 GETUPVAL                         R16 6
       49 JUMPIFEQ                         R9 R16 ; [+19]
       51 GETUPVAL                         R16 2
       52 JUMPIFEQ                         R9 R16 ; [+16]
       54 GETUPVAL                         R16 7
       55 JUMPIFEQ                         R9 R16 ; [+13]
       57 GETUPVAL                         R16 8
       58 JUMPIFEQ                         R9 R16 ; [+10]
       60 GETUPVAL                         R16 9
       61 JUMPIFEQ                         R9 R16 ; [+7]
       63 GETUPVAL                         R16 4
       64 JUMPIFEQ                         R9 R16 ; [+4]
       66 GETUPVAL                         R16 3
       67 JUMPIFNOTEQ                      R9 R16 ; [+21]
       69 LOADB                            R14 1
       70 JUMPIFNOT                        R4 ; [+60]
       71 GETTABLEKS                       R16 R4 K9 ["context"]
       73 JUMPIFEQKNIL                     R16 ; [+57]
       75 LOADB                            R16 0
       76 GETUPVAL                         R17 10
       77 JUMPIFNOTEQ                      R11 R17 ; [+7]
       79 GETTABLEKS                       R17 R10 K10 ["contextTypes"]
       81 JUMPIF                           R17 ; [+2]
       82 GETTABLEKS                       R17 R10 K11 ["contextType"]
       84 NOT                              R16 R17
       85 JUMPIF                           R16 ; [+45]
       86 GETTABLEKS                       R15 R4 K9 ["context"]
       88 JUMP                             ; [+42]
       89 GETUPVAL                         R16 11
       90 JUMPIFEQ                         R13 R16 ; [+4]
       92 GETUPVAL                         R16 12
       93 JUMPIFNOTEQ                      R13 R16 ; [+37]
       95 GETTABLEKS                       R17 R10 K12 ["_context"]
       97 OR                               R16 R17 R10
       98 GETTABLEKS                       R17 R16 K14 ["_currentValue"]
      100 ORK                              R15 R17 K13 []
      101 GETTABLEKS                       R17 R1 K15 ["return_"]
      103 JUMPIFEQKNIL                     R17 ; [+27]
      105 GETTABLEKS                       R18 R17 K8 ["type"]
      107 GETUPVAL                         R19 5
      108 MOVE                             R20 R18
      109 CALL                             R19 1 1
      110 GETUPVAL                         R20 13
      111 JUMPIFEQ                         R19 R20 ; [+4]
      113 GETUPVAL                         R20 14
      114 JUMPIFNOTEQ                      R19 R20 ; [+13]
      116 GETTABLEKS                       R20 R18 K12 ["_context"]
      118 JUMPIF                           R20 ; [+2]
      119 GETTABLEKS                       R20 R18 K9 ["context"]
      121 JUMPIFNOTEQ                      R20 R16 ; [+6]
      123 GETTABLEKS                       R21 R17 K4 ["memoizedProps"]
      125 GETTABLEKS                       R15 R21 K16 ["value"]
      127 JUMP                             ; [+3]
      128 GETTABLEKS                       R17 R17 K15 ["return_"]
      130 JUMPBACK                         ; [-28]
      131 LOADB                            R16 0
      132 JUMPIFEQKNIL                     R15 ; [+9]
      134 GETTABLEKS                       R18 R10 K10 ["contextTypes"]
      136 NOT                              R17 R18
      137 NOT                              R16 R17
      138 DUPTABLE                         R17 K17 [{"value"}]
      139 SETTABLEKS                       R15 R17 K16 ["value"]
      141 MOVE                             R15 R17
      142 LOADNIL                          R17
      143 JUMPIFNOT                        R2 ; [+58]
      144 NEWTABLE                         R17 0 0
      146 MOVE                             R18 R2
      147 JUMPIFEQKNIL                     R18 ; [+54]
      149 DUPTABLE                         R21 K20 [{"displayName", "id", "type"}]
      150 GETUPVAL                         R23 15
      151 MOVE                             R24 R18
      152 CALL                             R23 1 1
      153 ORK                              R22 R23 K21 ["Anonymous"]
      154 SETTABLEKS                       R22 R21 K18 ["displayName"]
      156 GETUPVAL                         R23 16
      157 MOVE                             R24 R18
      158 CALL                             R23 1 1
      159 GETUPVAL                         R24 17
      160 MOVE                             R26 R23
      161 NAMECALL                         R24 R24 K22 ["has"]
      163 CALL                             R24 2 1
      164 JUMPIF                           R24 ; [+14]
      165 GETUPVAL                         R24 18
      166 CALL                             R24 0 1
      167 GETUPVAL                         R25 17
      168 MOVE                             R27 R23
      169 MOVE                             R28 R24
      170 NAMECALL                         R25 R25 K23 ["set"]
      172 CALL                             R25 3 0
      173 GETUPVAL                         R25 19
      174 MOVE                             R27 R24
      175 MOVE                             R28 R23
      176 NAMECALL                         R25 R25 K23 ["set"]
      178 CALL                             R25 3 0
      179 GETUPVAL                         R24 17
      180 MOVE                             R26 R23
      181 NAMECALL                         R24 R24 K24 ["get"]
      183 CALL                             R24 2 1
      184 MOVE                             R22 R24
      185 SETTABLEKS                       R22 R21 K19 ["id"]
      187 GETUPVAL                         R22 1
      188 MOVE                             R23 R18
      189 CALL                             R22 1 1
      190 SETTABLEKS                       R22 R21 K8 ["type"]
      192 FASTCALL2                        TABLE_INSERT R17 R21 ; [+4]
      194 MOVE                             R20 R17
      195 GETIMPORT                        R19 K27 [table.insert]
      197 CALL                             R19 2 0
      198 GETTABLEKS                       R19 R18 K0 ["_debugOwner"]
      200 ORK                              R18 R19 K13 []
      201 JUMPBACK                         ; [-55]
      202 LOADB                            R18 0
      203 GETUPVAL                         R19 20
      204 JUMPIFNOTEQ                      R9 R19 ; [+5]
      206 JUMPIFNOTEQKNIL                  R7 ; [+2]
      208 LOADB                            R18 0 +1
      209 LOADB                            R18 1
      210 LOADNIL                          R19
      211 JUMPIFNOT                        R12 ; [+38]
      212 NEWTABLE                         R20 0 0
      214 GETIMPORT                        R21 K29 [pairs]
      216 GETUPVAL                         R22 21
      217 CALL                             R21 1 3
      218 FORGPREP_NEXT                    R21
      219 GETIMPORT                        R26 K31 [pcall]
      221 NEWCLOSURE                       R27 P0
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R24
      224 CAPTURE                          UPVAL U21
      225 CALL                             R26 1 0
      226 FORGLOOP                         R21 2 ; [-8]
      228 GETIMPORT                        R21 K31 [pcall]
      230 NEWCLOSURE                       R22 P1
      231 CAPTURE                          REF R19
      232 CAPTURE                          UPVAL U22
      233 CAPTURE                          VAL R1
      234 CAPTURE                          UPVAL U23
      235 CALL                             R21 1 0
      236 GETIMPORT                        R21 K29 [pairs]
      238 GETUPVAL                         R22 21
      239 CALL                             R21 1 3
      240 FORGPREP_NEXT                    R21
      241 GETIMPORT                        R26 K31 [pcall]
      243 NEWCLOSURE                       R27 P2
      244 CAPTURE                          UPVAL U21
      245 CAPTURE                          VAL R24
      246 CAPTURE                          VAL R20
      247 CALL                             R26 1 0
      248 FORGLOOP                         R21 2 ; [-8]
      250 LOADNIL                          R20
      251 MOVE                             R21 R1
      252 GETTABLEKS                       R22 R21 K15 ["return_"]
      254 JUMPIFEQKNIL                     R22 ; [+4]
      256 GETTABLEKS                       R21 R21 K15 ["return_"]
      258 JUMPBACK                         ; [-7]
      259 GETTABLEKS                       R22 R21 K2 ["stateNode"]
      261 JUMPIFEQKNIL                     R22 ; [+7]
      263 GETTABLEKS                       R23 R22 K32 ["_debugRootType"]
      265 JUMPIFEQKNIL                     R23 ; [+3]
      267 GETTABLEKS                       R20 R22 K32 ["_debugRootType"]
      269 DUPTABLE                         R23 K51 [{"id", "canEditHooks", "canEditFunctionProps", "canEditHooksAndDeletePaths", "canEditHooksAndRenamePaths", "canEditFunctionPropsDeletePaths", "canEditFunctionPropsRenamePaths", "canToggleSuspense", "canViewSource", "hasLegacyContext", "key", "displayName", "type_", "context", "hooks", "props", "state", "owners", "source", "rootType", "rendererPackageName", "rendererVersion"}]
      270 SETTABLEKS                       R0 R23 K19 ["id"]
      272 GETUPVAL                         R26 24
      273 FASTCALL1                        TYPEOF R26 ; [+2]
      274 GETIMPORT                        R25 K53 [typeof]
      276 CALL                             R25 1 1
      277 JUMPIFEQKS                       R25 K54 ["function"] ; [+2]
      279 LOADB                            R24 0 +1
      280 LOADB                            R24 1
      281 SETTABLEKS                       R24 R23 K33 ["canEditHooks"]
      283 GETUPVAL                         R26 25
      284 FASTCALL1                        TYPEOF R26 ; [+2]
      285 GETIMPORT                        R25 K53 [typeof]
      287 CALL                             R25 1 1
      288 JUMPIFEQKS                       R25 K54 ["function"] ; [+2]
      290 LOADB                            R24 0 +1
      291 LOADB                            R24 1
      292 SETTABLEKS                       R24 R23 K34 ["canEditFunctionProps"]
      294 GETUPVAL                         R26 26
      295 FASTCALL1                        TYPEOF R26 ; [+2]
      296 GETIMPORT                        R25 K53 [typeof]
      298 CALL                             R25 1 1
      299 JUMPIFEQKS                       R25 K54 ["function"] ; [+2]
      301 LOADB                            R24 0 +1
      302 LOADB                            R24 1
      303 SETTABLEKS                       R24 R23 K35 ["canEditHooksAndDeletePaths"]
      305 GETUPVAL                         R26 27
      306 FASTCALL1                        TYPEOF R26 ; [+2]
      307 GETIMPORT                        R25 K53 [typeof]
      309 CALL                             R25 1 1
      310 JUMPIFEQKS                       R25 K54 ["function"] ; [+2]
      312 LOADB                            R24 0 +1
      313 LOADB                            R24 1
      314 SETTABLEKS                       R24 R23 K36 ["canEditHooksAndRenamePaths"]
      316 GETUPVAL                         R26 28
      317 FASTCALL1                        TYPEOF R26 ; [+2]
      318 GETIMPORT                        R25 K53 [typeof]
      320 CALL                             R25 1 1
      321 JUMPIFEQKS                       R25 K54 ["function"] ; [+2]
      323 LOADB                            R24 0 +1
      324 LOADB                            R24 1
      325 SETTABLEKS                       R24 R23 K37 ["canEditFunctionPropsDeletePaths"]
      327 GETUPVAL                         R26 29
      328 FASTCALL1                        TYPEOF R26 ; [+2]
      329 GETIMPORT                        R25 K53 [typeof]
      331 CALL                             R25 1 1
      332 JUMPIFEQKS                       R25 K54 ["function"] ; [+2]
      334 LOADB                            R24 0 +1
      335 LOADB                            R24 1
      336 SETTABLEKS                       R24 R23 K38 ["canEditFunctionPropsRenamePaths"]
      338 GETUPVAL                         R24 30
      339 JUMPIFNOT                        R24 ; [+4]
      340 NOT                              R24 R18
      341 JUMPIF                           R24 ; [+2]
      342 GETUPVAL                         R25 31
      343 GETTABLE                         R24 R25 R0
      344 SETTABLEKS                       R24 R23 K39 ["canToggleSuspense"]
      346 SETTABLEKS                       R14 R23 K40 ["canViewSource"]
      348 SETTABLEKS                       R16 R23 K41 ["hasLegacyContext"]
      350 SETTABLEKS                       R5 R23 K3 ["key"]
      352 GETUPVAL                         R24 15
      353 MOVE                             R25 R1
      354 CALL                             R24 1 1
      355 SETTABLEKS                       R24 R23 K18 ["displayName"]
      357 SETTABLEKS                       R11 R23 K42 ["type_"]
      359 SETTABLEKS                       R15 R23 K9 ["context"]
      361 SETTABLEKS                       R19 R23 K43 ["hooks"]
      363 SETTABLEKS                       R6 R23 K44 ["props"]
      365 JUMPIFNOT                        R12 ; [+2]
      366 LOADNIL                          R24
      367 JUMP                             ; [+1]
      368 MOVE                             R24 R7
      369 SETTABLEKS                       R24 R23 K45 ["state"]
      371 SETTABLEKS                       R17 R23 K46 ["owners"]
      373 ORK                              R24 R3 K13 []
      374 SETTABLEKS                       R24 R23 K47 ["source"]
      376 SETTABLEKS                       R20 R23 K48 ["rootType"]
      378 GETUPVAL                         R25 23
      379 GETTABLEKS                       R24 R25 K49 ["rendererPackageName"]
      381 SETTABLEKS                       R24 R23 K49 ["rendererPackageName"]
      383 GETUPVAL                         R25 23
      384 GETTABLEKS                       R24 R25 K55 ["version"]
      386 SETTABLEKS                       R24 R23 K50 ["rendererVersion"]
      388 CLOSEUPVALS                      R19
      389 RETURN                           R23 1

PROTO_65:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKNIL                     R2 ; [+9]
        4 LOADB                            R1 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["id"]
        8 JUMPIFNOTEQ                      R2 R0 ; [+3]
       10 GETUPVAL                         R2 1
       11 NOT                              R1 R2
       12 RETURN                           R1 1

PROTO_66:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R8 1
        6 GETTABLEKS                       R7 R8 K0 ["toJSBoolean"]
        8 GETTABLE                         R8 R1 R6
        9 CALL                             R7 1 1
       10 JUMPIF                           R7 ; [+3]
       11 NEWTABLE                         R7 0 0
       13 SETTABLE                         R7 R1 R6
       14 GETTABLE                         R1 R1 R6
       15 FORGLOOP                         R2 2 ; [-11]
       17 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 ["hooks"] ; [+17]
        3 LENGTH                           R1 R0
        4 JUMPIFNOTEQKN                    R1 K1 [1] ; [+3]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 LENGTH                           R2 R0
        9 GETTABLE                         R1 R0 R2
       10 JUMPIFEQKS                       R1 K2 ["subHooks"] ; [+6]
       12 LENGTH                           R3 R0
       13 SUBK                             R2 R3 K1 [1]
       14 GETTABLE                         R1 R0 R2
       15 JUMPIFNOTEQKS                    R1 K2 ["subHooks"] ; [+3]
       17 LOADB                            R1 1
       18 RETURN                           R1 1
       19 GETUPVAL                         R2 1
       20 JUMPIFNOTEQKNIL                  R2 ; [+3]
       22 GETUPVAL                         R1 2
       23 JUMP                             ; [+3]
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R3 1
       26 GETTABLE                         R1 R2 R3
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R2 R3 K3 ["toJSBoolean"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 1
       32 JUMPIF                           R2 ; [+2]
       33 LOADB                            R2 0
       34 RETURN                           R2 1
       35 LOADN                            R4 1
       36 LENGTH                           R2 R0
       37 LOADN                            R3 1
       38 FORNPREP                         R2
       39 GETTABLE                         R5 R0 R4
       40 GETTABLE                         R1 R1 R5
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R5 R6 K3 ["toJSBoolean"]
       44 MOVE                             R6 R1
       45 CALL                             R5 1 1
       46 JUMPIF                           R5 ; [+2]
       47 LOADB                            R5 0
       48 RETURN                           R5 1
       49 FORNLOOP                         R2
       50 LOADB                            R2 1
       51 RETURN                           R2 1

PROTO_68:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

PROTO_69:
        0 GETTABLEKS                       R1 R0 K0 ["hooks"]
        2 GETTABLEKS                       R2 R0 K1 ["id"]
        4 GETTABLEKS                       R3 R0 K2 ["props"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K3 ["get"]
       10 CALL                             R4 2 1
       11 JUMPIFNOTEQKNIL                  R4 ; [+15]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K4 ["warn"]
       16 GETIMPORT                        R6 K7 [string.format]
       18 LOADK                            R7 K8 ["Could not find Fiber with id \"%s\""]
       19 FASTCALL1                        TOSTRING R2 ; [+3]
       20 MOVE                             R9 R2
       21 GETIMPORT                        R8 K10 [tostring]
       23 CALL                             R8 1 1
       24 CALL                             R6 2 -1
       25 CALL                             R5 -1 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R5 R4 K11 ["elementType"]
       29 GETTABLEKS                       R6 R4 K12 ["stateNode"]
       31 GETTABLEKS                       R7 R4 K13 ["tag"]
       33 GETTABLEKS                       R8 R4 K14 ["type"]
       35 GETUPVAL                         R9 2
       36 JUMPIFEQ                         R7 R9 ; [+7]
       38 GETUPVAL                         R9 3
       39 JUMPIFEQ                         R7 R9 ; [+4]
       41 GETUPVAL                         R9 4
       42 JUMPIFNOTEQ                      R7 R9 ; [+5]
       44 GETUPVAL                         R9 5
       45 SETTABLEKS                       R6 R9 K15 ["$r"]
       47 RETURN                           R0 0
       48 GETUPVAL                         R9 6
       49 JUMPIFNOTEQ                      R7 R9 ; [+12]
       51 GETUPVAL                         R9 5
       52 DUPTABLE                         R10 K16 [{"hooks", "props", "type"}]
       53 SETTABLEKS                       R1 R10 K0 ["hooks"]
       55 SETTABLEKS                       R3 R10 K2 ["props"]
       57 SETTABLEKS                       R8 R10 K14 ["type"]
       59 SETTABLEKS                       R10 R9 K15 ["$r"]
       61 RETURN                           R0 0
       62 GETUPVAL                         R9 7
       63 JUMPIFNOTEQ                      R7 R9 ; [+12]
       65 GETUPVAL                         R9 5
       66 DUPTABLE                         R10 K17 [{"props", "type"}]
       67 SETTABLEKS                       R3 R10 K2 ["props"]
       69 GETTABLEKS                       R11 R8 K18 ["render"]
       71 SETTABLEKS                       R11 R10 K14 ["type"]
       73 SETTABLEKS                       R10 R9 K15 ["$r"]
       75 RETURN                           R0 0
       76 GETUPVAL                         R9 8
       77 JUMPIFEQ                         R7 R9 ; [+4]
       79 GETUPVAL                         R9 9
       80 JUMPIFNOTEQ                      R7 R9 ; [+20]
       82 GETUPVAL                         R9 5
       83 DUPTABLE                         R10 K17 [{"props", "type"}]
       84 SETTABLEKS                       R3 R10 K2 ["props"]
       86 JUMPIFEQKNIL                     R5 ; [+8]
       88 GETTABLEKS                       R12 R5 K14 ["type"]
       90 JUMPIFEQKNIL                     R12 ; [+4]
       92 GETTABLEKS                       R11 R5 K14 ["type"]
       94 JUMPIF                           R11 ; [+1]
       95 MOVE                             R11 R8
       96 SETTABLEKS                       R11 R10 K14 ["type"]
       98 SETTABLEKS                       R10 R9 K15 ["$r"]
      100 RETURN                           R0 0
      101 GETUPVAL                         R9 5
      102 LOADNIL                          R10
      103 SETTABLEKS                       R10 R9 K15 ["$r"]
      105 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+25]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 MOVE                             R6 R1
        7 CALL                             R4 2 1
        8 GETIMPORT                        R5 K2 [string.format]
       10 LOADK                            R6 K3 ["$reactTemp%s"]
       11 FASTCALL1                        TOSTRING R2 ; [+3]
       12 MOVE                             R8 R2
       13 GETIMPORT                        R7 K5 [tostring]
       15 CALL                             R7 1 1
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 3
       18 SETTABLE                         R4 R6 R5
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R6 R7 K6 ["log"]
       22 MOVE                             R7 R5
       23 CALL                             R6 1 0
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R6 R7 K6 ["log"]
       27 MOVE                             R7 R4
       28 CALL                             R6 1 0
       29 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 MOVE                             R6 R1
        8 CALL                             R4 2 -1
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+42]
        4 JUMPIFEQKNIL                     R1 ; [+34]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R1
        8 CALL                             R3 1 0
        9 LOADNIL                          R3
       10 GETTABLEN                        R4 R1 1
       11 JUMPIFNOTEQKS                    R4 K0 ["hooks"] ; [+2]
       13 LOADK                            R3 K0 ["hooks"]
       14 DUPTABLE                         R4 K5 [{"id", "type", "path", "value"}]
       15 SETTABLEKS                       R0 R4 K1 ["id"]
       17 LOADK                            R5 K6 ["hydrated-path"]
       18 SETTABLEKS                       R5 R4 K2 ["type"]
       20 SETTABLEKS                       R1 R4 K3 ["path"]
       22 GETUPVAL                         R5 2
       23 GETUPVAL                         R6 3
       24 GETUPVAL                         R7 4
       25 MOVE                             R8 R1
       26 CALL                             R6 2 1
       27 MOVE                             R8 R3
       28 LOADNIL                          R9
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R8
       31 CAPTURE                          VAL R9
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 MOVE                             R8 R1
       35 CALL                             R5 3 1
       36 SETTABLEKS                       R5 R4 K4 ["value"]
       38 RETURN                           R4 1
       39 DUPTABLE                         R3 K7 [{"id", "type"}]
       40 SETTABLEKS                       R0 R3 K1 ["id"]
       42 LOADK                            R4 K8 ["no-change"]
       43 SETTABLEKS                       R4 R3 K2 ["type"]
       45 RETURN                           R3 1
       46 LOADB                            R3 0
       47 SETUPVAL                         R3 7
       48 GETUPVAL                         R3 4
       49 JUMPIFEQKNIL                     R3 ; [+6]
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R3 R4 K1 ["id"]
       54 JUMPIFEQ                         R3 R0 ; [+4]
       56 NEWTABLE                         R3 0 0
       58 SETUPVAL                         R3 5
       59 GETUPVAL                         R3 8
       60 MOVE                             R4 R0
       61 CALL                             R3 1 1
       62 SETUPVAL                         R3 4
       63 GETUPVAL                         R3 4
       64 JUMPIFNOTEQKNIL                  R3 ; [+8]
       66 DUPTABLE                         R3 K7 [{"id", "type"}]
       67 SETTABLEKS                       R0 R3 K1 ["id"]
       69 LOADK                            R4 K9 ["not-found"]
       70 SETTABLEKS                       R4 R3 K2 ["type"]
       72 RETURN                           R3 1
       73 JUMPIFEQKNIL                     R1 ; [+4]
       75 GETUPVAL                         R3 1
       76 MOVE                             R4 R1
       77 CALL                             R3 1 0
       78 GETUPVAL                         R3 9
       79 GETUPVAL                         R4 4
       80 CALL                             R3 1 0
       81 GETUPVAL                         R4 10
       82 GETTABLEKS                       R3 R4 K10 ["assign"]
       84 NEWTABLE                         R4 0 0
       86 GETUPVAL                         R5 4
       87 CALL                             R3 2 1
       88 GETUPVAL                         R4 2
       89 GETTABLEKS                       R5 R3 K11 ["context"]
       91 LOADNIL                          R7
       92 LOADK                            R8 K11 ["context"]
       93 NEWCLOSURE                       R6 P0
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R8
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          UPVAL U6
       98 CALL                             R4 2 1
       99 SETTABLEKS                       R4 R3 K11 ["context"]
      101 GETUPVAL                         R4 2
      102 GETTABLEKS                       R5 R3 K0 ["hooks"]
      104 LOADK                            R7 K0 ["hooks"]
      105 LOADK                            R8 K0 ["hooks"]
      106 NEWCLOSURE                       R6 P0
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R8
      109 CAPTURE                          UPVAL U5
      110 CAPTURE                          UPVAL U6
      111 CALL                             R4 2 1
      112 SETTABLEKS                       R4 R3 K0 ["hooks"]
      114 GETUPVAL                         R4 2
      115 GETTABLEKS                       R5 R3 K12 ["props"]
      117 LOADNIL                          R7
      118 LOADK                            R8 K12 ["props"]
      119 NEWCLOSURE                       R6 P0
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R8
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          UPVAL U6
      124 CALL                             R4 2 1
      125 SETTABLEKS                       R4 R3 K12 ["props"]
      127 GETUPVAL                         R4 2
      128 GETTABLEKS                       R5 R3 K13 ["state"]
      130 LOADNIL                          R7
      131 LOADK                            R8 K13 ["state"]
      132 NEWCLOSURE                       R6 P0
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R8
      135 CAPTURE                          UPVAL U5
      136 CAPTURE                          UPVAL U6
      137 CALL                             R4 2 1
      138 SETTABLEKS                       R4 R3 K13 ["state"]
      140 DUPTABLE                         R4 K14 [{"id", "type", "value"}]
      141 SETTABLEKS                       R0 R4 K1 ["id"]
      143 LOADK                            R5 K15 ["full-data"]
      144 SETTABLEKS                       R5 R4 K2 ["type"]
      146 SETTABLEKS                       R3 R4 K4 ["value"]
      148 RETURN                           R4 1

PROTO_73:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETUPVAL                         R1 1
        5 JUMP                             ; [+3]
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+15]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K0 ["warn"]
       14 GETIMPORT                        R3 K3 [string.format]
       16 LOADK                            R4 K4 ["Could not find Fiber with id \"%s\""]
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R6 R0
       19 GETIMPORT                        R5 K6 [tostring]
       21 CALL                             R5 1 1
       22 CALL                             R3 2 -1
       23 CALL                             R2 -1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R2 R1 K7 ["props"]
       27 JUMPIFEQKNIL                     R2 ; [+8]
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R2 R3 K8 ["log"]
       32 LOADK                            R3 K9 ["Props:"]
       33 GETTABLEKS                       R4 R1 K7 ["props"]
       35 CALL                             R2 2 0
       36 GETTABLEKS                       R2 R1 K10 ["state"]
       38 JUMPIFEQKNIL                     R2 ; [+8]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R2 R3 K8 ["log"]
       43 LOADK                            R3 K11 ["State:"]
       44 GETTABLEKS                       R4 R1 K10 ["state"]
       46 CALL                             R2 2 0
       47 GETTABLEKS                       R2 R1 K12 ["hooks"]
       49 JUMPIFEQKNIL                     R2 ; [+8]
       51 GETUPVAL                         R3 3
       52 GETTABLEKS                       R2 R3 K8 ["log"]
       54 LOADK                            R3 K13 ["Hooks:"]
       55 GETTABLEKS                       R4 R1 K12 ["hooks"]
       57 CALL                             R2 2 0
       58 GETIMPORT                        R3 K15 [pcall]
       60 NEWCLOSURE                       R4 P0
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          UPVAL U7
       66 CALL                             R3 1 2
       67 JUMPIF                           R3 ; [+2]
       68 LOADNIL                          R2
       69 JUMP                             ; [+1]
       70 MOVE                             R2 R4
       71 JUMPIFEQKNIL                     R2 ; [+7]
       73 GETUPVAL                         R4 3
       74 GETTABLEKS                       R3 R4 K8 ["log"]
       76 LOADK                            R4 K16 ["Nodes:"]
       77 MOVE                             R5 R2
       78 CALL                             R3 2 0
       79 GETTABLEKS                       R3 R1 K17 ["source"]
       81 JUMPIFEQKNIL                     R3 ; [+8]
       83 GETUPVAL                         R4 3
       84 GETTABLEKS                       R3 R4 K8 ["log"]
       86 LOADK                            R4 K18 ["Location:"]
       87 GETTABLEKS                       R5 R1 K17 ["source"]
       89 CALL                             R3 2 0
       90 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 1
        3 JUMPIFEQKNIL                     R4 ; [+95]
        5 GETTABLEKS                       R5 R4 K0 ["stateNode"]
        7 JUMPIFNOTEQKS                    R0 K1 ["context"] ; [+32]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K2 ["slice"]
       12 MOVE                             R7 R3
       13 LOADN                            R8 1
       14 CALL                             R6 2 1
       15 MOVE                             R3 R6
       16 GETTABLEKS                       R6 R4 K3 ["tag"]
       18 GETUPVAL                         R7 2
       19 JUMPIFNOTEQ                      R6 R7 ; [+14]
       21 LENGTH                           R6 R3
       22 JUMPIFNOTEQKN                    R6 K4 [0] ; [+2]
       24 JUMP                             ; [+5]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R7 R5 K1 ["context"]
       28 MOVE                             R8 R3
       29 CALL                             R6 2 0
       30 NAMECALL                         R6 R5 K5 ["forceUpdate"]
       32 CALL                             R6 1 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R6 R4 K3 ["tag"]
       36 GETUPVAL                         R7 4
       37 JUMPIFNOTEQ                      R6 R7 ; [+61]
       39 RETURN                           R0 0
       40 JUMPIFNOTEQKS                    R0 K6 ["hooks"] ; [+21]
       42 GETUPVAL                         R7 5
       43 FASTCALL1                        TYPE R7 ; [+2]
       44 GETIMPORT                        R6 K8 [type]
       46 CALL                             R6 1 1
       47 JUMPIFNOTEQKS                    R6 K9 ["function"] ; [+51]
       49 FASTCALL2K                       ASSERT R2 K10 ; [+5]
       51 MOVE                             R7 R2
       52 LOADK                            R8 K10 ["Expected hookID to be defined"]
       53 GETIMPORT                        R6 K12 [assert]
       55 CALL                             R6 2 0
       56 GETUPVAL                         R6 5
       57 MOVE                             R7 R4
       58 MOVE                             R8 R2
       59 MOVE                             R9 R3
       60 CALL                             R6 3 0
       61 RETURN                           R0 0
       62 JUMPIFNOTEQKS                    R0 K13 ["props"] ; [+26]
       64 JUMPIFNOTEQKNIL                  R5 ; [+13]
       66 GETUPVAL                         R7 6
       67 FASTCALL1                        TYPE R7 ; [+2]
       68 GETIMPORT                        R6 K8 [type]
       70 CALL                             R6 1 1
       71 JUMPIFNOTEQKS                    R6 K9 ["function"] ; [+27]
       73 GETUPVAL                         R6 6
       74 MOVE                             R7 R4
       75 MOVE                             R8 R3
       76 CALL                             R6 2 0
       77 RETURN                           R0 0
       78 GETUPVAL                         R6 7
       79 GETTABLEKS                       R7 R5 K13 ["props"]
       81 MOVE                             R8 R3
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R4 K14 ["pendingProps"]
       85 NAMECALL                         R6 R5 K5 ["forceUpdate"]
       87 CALL                             R6 1 0
       88 RETURN                           R0 0
       89 JUMPIFNOTEQKS                    R0 K15 ["state"] ; [+9]
       91 GETUPVAL                         R6 3
       92 GETTABLEKS                       R7 R5 K15 ["state"]
       94 MOVE                             R8 R3
       95 CALL                             R6 2 0
       96 NAMECALL                         R6 R5 K5 ["forceUpdate"]
       98 CALL                             R6 1 0
       99 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 CALL                             R5 1 1
        3 JUMPIFEQKNIL                     R5 ; [+107]
        5 GETTABLEKS                       R6 R5 K0 ["stateNode"]
        7 JUMPIFNOTEQKS                    R0 K1 ["context"] ; [+40]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R7 R8 K2 ["slice"]
       12 MOVE                             R8 R3
       13 LOADN                            R9 1
       14 CALL                             R7 2 1
       15 MOVE                             R3 R7
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K2 ["slice"]
       19 MOVE                             R8 R4
       20 LOADN                            R9 1
       21 CALL                             R7 2 1
       22 MOVE                             R4 R7
       23 GETTABLEKS                       R7 R5 K3 ["tag"]
       25 GETUPVAL                         R8 2
       26 JUMPIFNOTEQ                      R7 R8 ; [+15]
       28 LENGTH                           R7 R3
       29 JUMPIFNOTEQKN                    R7 K4 [0] ; [+2]
       31 JUMP                             ; [+6]
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R8 R6 K1 ["context"]
       35 MOVE                             R9 R3
       36 MOVE                             R10 R4
       37 CALL                             R7 3 0
       38 NAMECALL                         R7 R6 K5 ["forceUpdate"]
       40 CALL                             R7 1 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R7 R5 K3 ["tag"]
       44 GETUPVAL                         R8 4
       45 JUMPIFNOTEQ                      R7 R8 ; [+65]
       47 RETURN                           R0 0
       48 JUMPIFNOTEQKS                    R0 K6 ["hooks"] ; [+22]
       50 GETUPVAL                         R8 5
       51 FASTCALL1                        TYPE R8 ; [+2]
       52 GETIMPORT                        R7 K8 [type]
       54 CALL                             R7 1 1
       55 JUMPIFNOTEQKS                    R7 K9 ["function"] ; [+55]
       57 FASTCALL2K                       ASSERT R2 K10 ; [+5]
       59 MOVE                             R8 R2
       60 LOADK                            R9 K10 ["Expected hookID to be defined"]
       61 GETIMPORT                        R7 K12 [assert]
       63 CALL                             R7 2 0
       64 GETUPVAL                         R7 5
       65 MOVE                             R8 R5
       66 MOVE                             R9 R2
       67 MOVE                             R10 R3
       68 MOVE                             R11 R4
       69 CALL                             R7 4 0
       70 RETURN                           R0 0
       71 JUMPIFNOTEQKS                    R0 K13 ["props"] ; [+28]
       73 JUMPIFNOTEQKNIL                  R6 ; [+14]
       75 GETUPVAL                         R8 6
       76 FASTCALL1                        TYPE R8 ; [+2]
       77 GETIMPORT                        R7 K8 [type]
       79 CALL                             R7 1 1
       80 JUMPIFNOTEQKS                    R7 K9 ["function"] ; [+30]
       82 GETUPVAL                         R7 6
       83 MOVE                             R8 R5
       84 MOVE                             R9 R3
       85 MOVE                             R10 R4
       86 CALL                             R7 3 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R7 7
       89 GETTABLEKS                       R8 R6 K13 ["props"]
       91 MOVE                             R9 R3
       92 MOVE                             R10 R4
       93 CALL                             R7 3 1
       94 SETTABLEKS                       R7 R5 K14 ["pendingProps"]
       96 NAMECALL                         R7 R6 K5 ["forceUpdate"]
       98 CALL                             R7 1 0
       99 RETURN                           R0 0
      100 JUMPIFNOTEQKS                    R0 K15 ["state"] ; [+10]
      102 GETUPVAL                         R7 3
      103 GETTABLEKS                       R8 R6 K15 ["state"]
      105 MOVE                             R9 R3
      106 MOVE                             R10 R4
      107 CALL                             R7 3 0
      108 NAMECALL                         R7 R6 K5 ["forceUpdate"]
      110 CALL                             R7 1 0
      111 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 CALL                             R5 1 1
        3 JUMPIFEQKNIL                     R5 ; [+102]
        5 GETTABLEKS                       R6 R5 K0 ["stateNode"]
        7 JUMPIFNOTEQKS                    R0 K1 ["context"] ; [+35]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R7 R8 K2 ["slice"]
       12 MOVE                             R8 R3
       13 LOADN                            R9 1
       14 CALL                             R7 2 1
       15 MOVE                             R3 R7
       16 GETTABLEKS                       R7 R5 K3 ["tag"]
       18 GETUPVAL                         R8 2
       19 JUMPIFNOTEQ                      R7 R8 ; [+17]
       21 LENGTH                           R7 R3
       22 JUMPIFNOTEQKN                    R7 K4 [0] ; [+4]
       24 SETTABLEKS                       R4 R6 K1 ["context"]
       26 JUMP                             ; [+6]
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R8 R6 K1 ["context"]
       30 MOVE                             R9 R3
       31 MOVE                             R10 R4
       32 CALL                             R7 3 0
       33 NAMECALL                         R7 R6 K5 ["forceUpdate"]
       35 CALL                             R7 1 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R7 R5 K3 ["tag"]
       39 GETUPVAL                         R8 4
       40 JUMPIFNOTEQ                      R7 R8 ; [+65]
       42 RETURN                           R0 0
       43 JUMPIFNOTEQKS                    R0 K6 ["hooks"] ; [+22]
       45 GETUPVAL                         R8 5
       46 FASTCALL1                        TYPE R8 ; [+2]
       47 GETIMPORT                        R7 K8 [type]
       49 CALL                             R7 1 1
       50 JUMPIFNOTEQKS                    R7 K9 ["function"] ; [+55]
       52 FASTCALL2K                       ASSERT R2 K10 ; [+5]
       54 MOVE                             R8 R2
       55 LOADK                            R9 K10 ["Expected hookID to be defined"]
       56 GETIMPORT                        R7 K12 [assert]
       58 CALL                             R7 2 0
       59 GETUPVAL                         R7 5
       60 MOVE                             R8 R5
       61 MOVE                             R9 R2
       62 MOVE                             R10 R3
       63 MOVE                             R11 R4
       64 CALL                             R7 4 0
       65 RETURN                           R0 0
       66 JUMPIFNOTEQKS                    R0 K13 ["props"] ; [+28]
       68 JUMPIFNOTEQKNIL                  R6 ; [+14]
       70 GETUPVAL                         R8 6
       71 FASTCALL1                        TYPE R8 ; [+2]
       72 GETIMPORT                        R7 K8 [type]
       74 CALL                             R7 1 1
       75 JUMPIFNOTEQKS                    R7 K9 ["function"] ; [+30]
       77 GETUPVAL                         R7 6
       78 MOVE                             R8 R5
       79 MOVE                             R9 R3
       80 MOVE                             R10 R4
       81 CALL                             R7 3 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R7 7
       84 GETTABLEKS                       R8 R6 K13 ["props"]
       86 MOVE                             R9 R3
       87 MOVE                             R10 R4
       88 CALL                             R7 3 1
       89 SETTABLEKS                       R7 R5 K14 ["pendingProps"]
       91 NAMECALL                         R7 R6 K5 ["forceUpdate"]
       93 CALL                             R7 1 0
       94 RETURN                           R0 0
       95 JUMPIFNOTEQKS                    R0 K15 ["state"] ; [+10]
       97 GETUPVAL                         R7 3
       98 GETTABLEKS                       R8 R6 K15 ["state"]
      100 MOVE                             R9 R3
      101 MOVE                             R10 R4
      102 CALL                             R7 3 0
      103 NAMECALL                         R7 R6 K5 ["forceUpdate"]
      105 CALL                             R7 1 0
      106 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+21]
        3 GETUPVAL                         R2 0
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K0 ["get"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 1
        9 JUMPIFNOTEQ                      R2 R3 ; [+13]
       11 GETUPVAL                         R3 2
       12 NEWTABLE                         R4 0 2
       14 MOVE                             R5 R1
       15 MOVE                             R6 R0
       16 SETLIST                          R4 R5 2 [1]
       18 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       20 GETIMPORT                        R2 K3 [table.insert]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_78:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K0 ["new"]
        7 CALL                             R4 0 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K0 ["new"]
       11 CALL                             R5 0 1
       12 GETUPVAL                         R7 1
       13 JUMPIFEQKNIL                     R7 ; [+8]
       15 GETUPVAL                         R7 1
       16 MOVE                             R9 R1
       17 NAMECALL                         R7 R7 K2 ["get"]
       19 CALL                             R7 2 1
       20 ORK                              R6 R7 K1 ["Unknown"]
       21 JUMP                             ; [+1]
       22 LOADK                            R6 K1 ["Unknown"]
       23 GETUPVAL                         R7 2
       24 JUMPIFEQKNIL                     R7 ; [+9]
       26 GETUPVAL                         R7 2
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 NAMECALL                         R7 R7 K3 ["forEach"]
       33 CALL                             R7 2 0
       34 MOVE                             R7 R0
       35 LOADNIL                          R8
       36 LOADNIL                          R9
       37 FORGPREP                         R7
       38 GETTABLEKS                       R12 R11 K4 ["changeDescriptions"]
       40 GETTABLEKS                       R13 R11 K5 ["durations"]
       42 GETTABLEKS                       R14 R11 K6 ["interactions"]
       44 GETTABLEKS                       R15 R11 K7 ["maxActualDuration"]
       46 GETTABLEKS                       R16 R11 K8 ["priorityLevel"]
       48 GETTABLEKS                       R17 R11 K9 ["commitTime"]
       50 NEWTABLE                         R18 0 0
       52 MOVE                             R19 R14
       53 LOADNIL                          R20
       54 LOADNIL                          R21
       55 FORGPREP                         R19
       56 GETTABLEKS                       R26 R23 K10 ["id"]
       58 NAMECALL                         R24 R4 K11 ["has"]
       60 CALL                             R24 2 1
       61 JUMPIF                           R24 ; [+6]
       62 GETTABLEKS                       R26 R23 K10 ["id"]
       64 MOVE                             R27 R23
       65 NAMECALL                         R24 R4 K12 ["set"]
       67 CALL                             R24 3 0
       68 GETTABLEKS                       R26 R23 K10 ["id"]
       70 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
       72 MOVE                             R25 R18
       73 GETIMPORT                        R24 K15 [table.insert]
       75 CALL                             R24 2 0
       76 GETTABLEKS                       R26 R23 K10 ["id"]
       78 NAMECALL                         R24 R5 K2 ["get"]
       80 CALL                             R24 2 1
       81 JUMPIFEQKNIL                     R24 ; [+9]
       83 FASTCALL2                        TABLE_INSERT R24 R10 ; [+5]
       85 MOVE                             R26 R24
       86 MOVE                             R27 R10
       87 GETIMPORT                        R25 K15 [table.insert]
       89 CALL                             R25 2 0
       90 JUMP                             ; [+10]
       91 GETTABLEKS                       R27 R23 K10 ["id"]
       93 NEWTABLE                         R28 0 1
       95 MOVE                             R29 R10
       96 SETLIST                          R28 R29 1 [1]
       98 NAMECALL                         R25 R5 K12 ["set"]
      100 CALL                             R25 3 0
      101 FORGLOOP                         R19 2 ; [-46]
      103 NEWTABLE                         R19 0 0
      105 NEWTABLE                         R20 0 0
      107 LOADN                            R23 1
      108 LENGTH                           R21 R13
      109 LOADN                            R22 3
      110 FORNPREP                         R21
      111 GETTABLE                         R24 R13 R23
      112 NEWTABLE                         R27 0 2
      114 MOVE                             R28 R24
      115 ADDK                             R30 R23 K16 [1]
      116 GETTABLE                         R29 R13 R30
      117 SETLIST                          R27 R28 2 [1]
      119 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      121 MOVE                             R26 R19
      122 GETIMPORT                        R25 K15 [table.insert]
      124 CALL                             R25 2 0
      125 NEWTABLE                         R27 0 2
      127 MOVE                             R28 R24
      128 ADDK                             R30 R23 K17 [2]
      129 GETTABLE                         R29 R13 R30
      130 SETLIST                          R27 R28 2 [1]
      132 FASTCALL2                        TABLE_INSERT R20 R27 ; [+4]
      134 MOVE                             R26 R20
      135 GETIMPORT                        R25 K15 [table.insert]
      137 CALL                             R25 2 0
      138 FORNLOOP                         R21
      139 DUPTABLE                         R23 K23 [{"changeDescriptions", "duration", "fiberActualDurations", "fiberSelfDurations", "interactionIDs", "priorityLevel", "timestamp"}]
      140 JUMPIFEQKNIL                     R12 ; [+9]
      142 GETUPVAL                         R25 4
      143 GETTABLEKS                       R24 R25 K24 ["from"]
      145 NAMECALL                         R25 R12 K25 ["entries"]
      147 CALL                             R25 1 -1
      148 CALL                             R24 -1 1
      149 JUMP                             ; [+1]
      150 GETUPVAL                         R24 5
      151 SETTABLEKS                       R24 R23 K4 ["changeDescriptions"]
      153 SETTABLEKS                       R15 R23 K18 ["duration"]
      155 SETTABLEKS                       R19 R23 K19 ["fiberActualDurations"]
      157 SETTABLEKS                       R20 R23 K20 ["fiberSelfDurations"]
      159 SETTABLEKS                       R18 R23 K21 ["interactionIDs"]
      161 SETTABLEKS                       R16 R23 K8 ["priorityLevel"]
      163 SETTABLEKS                       R17 R23 K22 ["timestamp"]
      165 FASTCALL2                        TABLE_INSERT R2 R23 ; [+4]
      167 MOVE                             R22 R2
      168 GETIMPORT                        R21 K15 [table.insert]
      170 CALL                             R21 2 0
      171 FORGLOOP                         R7 2 ; [-134]
      173 GETUPVAL                         R8 4
      174 GETTABLEKS                       R7 R8 K24 ["from"]
      176 NAMECALL                         R8 R5 K25 ["entries"]
      178 CALL                             R8 1 -1
      179 CALL                             R7 -1 1
      180 GETUPVAL                         R9 4
      181 GETTABLEKS                       R8 R9 K24 ["from"]
      183 NAMECALL                         R9 R4 K25 ["entries"]
      185 CALL                             R9 1 -1
      186 CALL                             R8 -1 1
      187 GETUPVAL                         R10 6
      188 DUPTABLE                         R11 K31 [{"commitData", "displayName", "initialTreeBaseDurations", "interactionCommits", "interactions", "rootID"}]
      189 SETTABLEKS                       R2 R11 K26 ["commitData"]
      191 SETTABLEKS                       R6 R11 K27 ["displayName"]
      193 SETTABLEKS                       R3 R11 K28 ["initialTreeBaseDurations"]
      195 GETUPVAL                         R13 4
      196 GETTABLEKS                       R12 R13 K24 ["from"]
      198 NAMECALL                         R13 R5 K25 ["entries"]
      200 CALL                             R13 1 -1
      201 CALL                             R12 -1 1
      202 SETTABLEKS                       R12 R11 K29 ["interactionCommits"]
      204 GETUPVAL                         R13 4
      205 GETTABLEKS                       R12 R13 K24 ["from"]
      207 NAMECALL                         R13 R4 K25 ["entries"]
      209 CALL                             R13 1 -1
      210 CALL                             R12 -1 1
      211 SETTABLEKS                       R12 R11 K6 ["interactions"]
      213 SETTABLEKS                       R1 R11 K30 ["rootID"]
      215 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      217 GETIMPORT                        R9 K15 [table.insert]
      219 CALL                             R9 2 0
      220 RETURN                           R0 0

PROTO_79:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOTEQKNIL                  R1 ; [+5]
        5 GETIMPORT                        R1 K1 [error]
        7 LOADK                            R2 K2 ["getProfilingData() called before any profiling data was recorded"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R1 R1 K3 ["forEach"]
       20 CALL                             R1 2 0
       21 DUPTABLE                         R1 K6 [{"dataForRoots", "rendererID"}]
       22 SETTABLEKS                       R0 R1 K4 ["dataForRoots"]
       24 GETUPVAL                         R2 7
       25 SETTABLEKS                       R2 R1 K5 ["rendererID"]
       27 RETURN                           R1 1

PROTO_80:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["current"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R3 K1 ["has"]
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+14]
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 1
       13 MOVE                             R6 R2
       14 MOVE                             R7 R3
       15 NAMECALL                         R4 R4 K2 ["set"]
       17 CALL                             R4 3 0
       18 GETUPVAL                         R4 3
       19 MOVE                             R6 R3
       20 MOVE                             R7 R2
       21 NAMECALL                         R4 R4 K2 ["set"]
       23 CALL                             R4 3 0
       24 GETUPVAL                         R3 1
       25 MOVE                             R5 R2
       26 NAMECALL                         R3 R3 K3 ["get"]
       28 CALL                             R3 2 1
       29 MOVE                             R1 R3
       30 GETUPVAL                         R2 4
       31 MOVE                             R4 R1
       32 GETUPVAL                         R5 5
       33 GETTABLEKS                       R6 R0 K0 ["current"]
       35 CALL                             R5 1 -1
       36 NAMECALL                         R2 R2 K2 ["set"]
       38 CALL                             R2 -1 0
       39 GETUPVAL                         R2 6
       40 JUMPIFNOT                        R2 ; [+61]
       41 GETTABLEKS                       R2 R0 K0 ["current"]
       43 GETUPVAL                         R3 7
       44 MOVE                             R4 R2
       45 CALL                             R3 1 1
       46 GETUPVAL                         R4 8
       47 JUMPIFNOTEQ                      R3 R4 ; [+44]
       49 GETUPVAL                         R3 9
       50 JUMPIFEQKNIL                     R3 ; [+41]
       52 GETUPVAL                         R4 0
       53 MOVE                             R5 R2
       54 CALL                             R4 1 1
       55 GETUPVAL                         R5 1
       56 MOVE                             R7 R4
       57 NAMECALL                         R5 R5 K1 ["has"]
       59 CALL                             R5 2 1
       60 JUMPIF                           R5 ; [+14]
       61 GETUPVAL                         R5 2
       62 CALL                             R5 0 1
       63 GETUPVAL                         R6 1
       64 MOVE                             R8 R4
       65 MOVE                             R9 R5
       66 NAMECALL                         R6 R6 K2 ["set"]
       68 CALL                             R6 3 0
       69 GETUPVAL                         R6 3
       70 MOVE                             R8 R5
       71 MOVE                             R9 R4
       72 NAMECALL                         R6 R6 K2 ["set"]
       74 CALL                             R6 3 0
       75 GETUPVAL                         R5 1
       76 MOVE                             R7 R4
       77 NAMECALL                         R5 R5 K3 ["get"]
       79 CALL                             R5 2 1
       80 MOVE                             R3 R5
       81 GETUPVAL                         R4 10
       82 MOVE                             R5 R2
       83 CALL                             R4 1 1
       84 JUMPIFEQKNIL                     R4 ; [+7]
       86 GETUPVAL                         R5 9
       87 MOVE                             R7 R3
       88 MOVE                             R8 R4
       89 NAMECALL                         R5 R5 K2 ["set"]
       91 CALL                             R5 3 0
       92 GETTABLEKS                       R3 R2 K4 ["child"]
       94 JUMPIFEQKNIL                     R3 ; [+7]
       96 GETUPVAL                         R4 11
       97 MOVE                             R5 R3
       98 CALL                             R4 1 0
       99 GETTABLEKS                       R3 R3 K5 ["sibling"]
      101 JUMPBACK                         ; [-8]
      102 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R1 R2 K0 ["new"]
        7 CALL                             R1 0 1
        8 SETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K0 ["new"]
       12 GETUPVAL                         R2 5
       13 CALL                             R1 1 1
       14 SETUPVAL                         R1 4
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R1 R2 K0 ["new"]
       18 GETUPVAL                         R2 7
       19 CALL                             R1 1 1
       20 SETUPVAL                         R1 6
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R1 R2 K0 ["new"]
       24 CALL                             R1 0 1
       25 SETUPVAL                         R1 8
       26 GETUPVAL                         R2 9
       27 GETTABLEKS                       R1 R2 K1 ["getFiberRoots"]
       29 GETUPVAL                         R2 10
       30 CALL                             R1 1 1
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U12
       34 CAPTURE                          UPVAL U13
       35 CAPTURE                          UPVAL U14
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U15
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U16
       40 CAPTURE                          UPVAL U17
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U18
       43 CAPTURE                          UPVAL U19
       44 NAMECALL                         R1 R1 K2 ["forEach"]
       46 CALL                             R1 2 0
       47 LOADB                            R1 1
       48 SETUPVAL                         R1 0
       49 GETIMPORT                        R1 K5 [os.clock]
       51 CALL                             R1 0 1
       52 SETUPVAL                         R1 20
       53 GETUPVAL                         R2 3
       54 GETTABLEKS                       R1 R2 K0 ["new"]
       56 CALL                             R1 0 1
       57 SETUPVAL                         R1 21
       58 RETURN                           R0 0

PROTO_82:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

PROTO_83:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_84:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R5 R2
        5 NAMECALL                         R3 R3 K0 ["has"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+14]
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 1
       12 MOVE                             R6 R2
       13 MOVE                             R7 R3
       14 NAMECALL                         R4 R4 K1 ["set"]
       16 CALL                             R4 3 0
       17 GETUPVAL                         R4 3
       18 MOVE                             R6 R3
       19 MOVE                             R7 R2
       20 NAMECALL                         R4 R4 K1 ["set"]
       22 CALL                             R4 3 0
       23 GETUPVAL                         R3 1
       24 MOVE                             R5 R2
       25 NAMECALL                         R3 R3 K2 ["get"]
       27 CALL                             R3 2 1
       28 MOVE                             R1 R3
       29 GETUPVAL                         R2 4
       30 MOVE                             R4 R1
       31 NAMECALL                         R2 R2 K0 ["has"]
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

PROTO_85:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R3 ; [+2]
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+8]
        7 GETUPVAL                         R3 1
        8 FASTCALL1                        TYPEOF R3 ; [+2]
        9 GETIMPORT                        R2 K1 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFEQKS                       R2 K2 ["function"] ; [+5]
       14 GETIMPORT                        R2 K4 [error]
       16 LOADK                            R3 K5 ["Expected overrideSuspense() to not get called for earlier React versions."]
       17 CALL                             R2 1 0
       18 JUMPIFNOT                        R1 ; [+14]
       19 GETUPVAL                         R2 2
       20 MOVE                             R4 R0
       21 NAMECALL                         R2 R2 K6 ["add"]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K7 ["size"]
       27 JUMPIFNOTEQKN                    R2 K8 [1] ; [+18]
       29 GETUPVAL                         R2 0
       30 GETUPVAL                         R3 3
       31 CALL                             R2 1 0
       32 JUMP                             ; [+13]
       33 GETUPVAL                         R2 2
       34 MOVE                             R4 R0
       35 NAMECALL                         R2 R2 K9 ["delete"]
       37 CALL                             R2 2 0
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R2 R3 K7 ["size"]
       41 JUMPIFNOTEQKN                    R2 K10 [0] ; [+4]
       43 GETUPVAL                         R2 0
       44 GETUPVAL                         R3 4
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 5
       47 MOVE                             R4 R0
       48 NAMECALL                         R2 R2 K11 ["get"]
       50 CALL                             R2 2 1
       51 JUMPIFEQKNIL                     R2 ; [+4]
       53 GETUPVAL                         R3 1
       54 MOVE                             R4 R2
       55 CALL                             R3 1 0
       56 RETURN                           R0 0

PROTO_86:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 LOADNIL                          R1
        3 SETUPVAL                         R1 0
        4 LOADN                            R1 255
        5 SETUPVAL                         R1 1
        6 LOADB                            R1 0
        7 SETUPVAL                         R1 2
        8 SETUPVAL                         R0 3
        9 RETURN                           R0 0

PROTO_87:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K0 ["return_"]
        9 JUMPIFEQKNIL                     R1 ; [+4]
       11 GETTABLEKS                       R2 R1 K1 ["alternate"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 2
       16 JUMPIFEQ                         R3 R1 ; [+6]
       18 GETUPVAL                         R3 2
       19 JUMPIFNOTEQ                      R3 R2 ; [+51]
       21 JUMPIFEQKNIL                     R2 ; [+49]
       23 GETUPVAL                         R3 3
       24 MOVE                             R4 R0
       25 CALL                             R3 1 1
       26 GETUPVAL                         R5 0
       27 GETUPVAL                         R7 4
       28 ADDK                             R6 R7 K2 [1]
       29 GETTABLE                         R4 R5 R6
       30 JUMPIFNOTEQKNIL                  R4 ; [+5]
       32 GETIMPORT                        R5 K4 [error]
       34 LOADK                            R6 K5 ["Expected to see a frame at the next depth."]
       35 CALL                             R5 1 0
       36 GETTABLEKS                       R5 R3 K6 ["index"]
       38 GETTABLEKS                       R6 R4 K6 ["index"]
       40 JUMPIFNOTEQ                      R5 R6 ; [+30]
       42 GETTABLEKS                       R5 R3 K7 ["key"]
       44 GETTABLEKS                       R6 R4 K7 ["key"]
       46 JUMPIFNOTEQ                      R5 R6 ; [+24]
       48 GETTABLEKS                       R5 R3 K8 ["displayName"]
       50 GETTABLEKS                       R6 R4 K8 ["displayName"]
       52 JUMPIFNOTEQ                      R5 R6 ; [+18]
       54 SETUPVAL                         R0 2
       55 GETUPVAL                         R6 4
       56 ADDK                             R5 R6 K2 [1]
       57 SETUPVAL                         R5 4
       58 GETUPVAL                         R5 4
       59 GETUPVAL                         R8 0
       60 LENGTH                           R7 R8
       61 SUBK                             R6 R7 K2 [1]
       62 JUMPIFNOTEQ                      R5 R6 ; [+4]
       64 LOADB                            R5 0
       65 SETUPVAL                         R5 1
       66 JUMP                             ; [+2]
       67 LOADB                            R5 1
       68 SETUPVAL                         R5 1
       69 LOADB                            R5 0
       70 RETURN                           R5 1
       71 LOADB                            R3 0
       72 SETUPVAL                         R3 1
       73 LOADB                            R3 1
       74 RETURN                           R3 1

PROTO_88:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R6 R2
        5 NAMECALL                         R4 R4 K1 ["get"]
        7 CALL                             R4 2 1
        8 ORK                              R3 R4 K0 [0]
        9 GETUPVAL                         R4 1
       10 MOVE                             R6 R2
       11 ADDK                             R7 R3 K2 [1]
       12 NAMECALL                         R4 R4 K3 ["set"]
       14 CALL                             R4 3 0
       15 GETIMPORT                        R4 K6 [string.format]
       17 LOADK                            R5 K7 ["%s:%d"]
       18 MOVE                             R6 R2
       19 MOVE                             R7 R3
       20 CALL                             R4 3 1
       21 GETUPVAL                         R5 2
       22 MOVE                             R7 R0
       23 MOVE                             R8 R4
       24 NAMECALL                         R5 R5 K3 ["set"]
       26 CALL                             R5 3 0
       27 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["get"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+5]
        7 GETIMPORT                        R2 K2 [error]
        9 LOADK                            R3 K3 ["Expected root pseudo key to be known."]
       10 CALL                             R2 1 0
       11 LOADN                            R4 1
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K5 ["lastIndexOf"]
       15 MOVE                             R7 R1
       16 LOADK                            R8 K6 [":"]
       17 CALL                             R6 2 1
       18 SUBK                             R5 R6 K4 [1]
       19 FASTCALL3                        STRING_SUB R1 R4 R5
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K9 [string.sub]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R3 2
       26 MOVE                             R5 R2
       27 NAMECALL                         R3 R3 K0 ["get"]
       29 CALL                             R3 2 1
       30 JUMPIFNOTEQKNIL                  R3 ; [+5]
       32 GETIMPORT                        R4 K2 [error]
       34 LOADK                            R5 K10 ["Expected counter to be known."]
       35 CALL                             R4 1 0
       36 LOADN                            R4 1
       37 JUMPIFNOTLT                      R4 R3 ; [+8]
       39 GETUPVAL                         R4 2
       40 MOVE                             R6 R2
       41 SUBK                             R7 R3 K4 [1]
       42 NAMECALL                         R4 R4 K11 ["set"]
       44 CALL                             R4 3 0
       45 JUMP                             ; [+5]
       46 GETUPVAL                         R4 2
       47 MOVE                             R6 R2
       48 NAMECALL                         R4 R4 K12 ["delete"]
       50 CALL                             R4 2 0
       51 GETUPVAL                         R4 0
       52 MOVE                             R6 R0
       53 NAMECALL                         R4 R4 K12 ["delete"]
       55 CALL                             R4 2 0
       56 RETURN                           R0 0

PROTO_91:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R3 R0 K0 ["child"]
        4 LOADN                            R6 0
        5 LOADN                            R4 2
        6 LOADN                            R5 1
        7 FORNPREP                         R4
        8 JUMPIFEQKNIL                     R3 ; [+35]
       10 GETTABLEKS                       R9 R3 K1 ["key"]
       12 FASTCALL1                        TYPE R9 ; [+2]
       13 GETIMPORT                        R8 K3 [type]
       15 CALL                             R8 1 1
       16 JUMPIFNOTEQKS                    R8 K4 ["string"] ; [+4]
       18 GETTABLEKS                       R7 R3 K1 ["key"]
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R7 0
       22 MOVE                             R8 R3
       23 CALL                             R7 1 1
       24 JUMPIFEQKNIL                     R7 ; [+14]
       26 GETTABLEKS                       R9 R3 K2 ["type"]
       28 FASTCALL1                        TYPEOF R9 ; [+2]
       29 GETIMPORT                        R8 K6 [typeof]
       31 CALL                             R8 1 1
       32 JUMPIFNOTEQKS                    R8 K7 ["function"] ; [+3]
       34 MOVE                             R1 R7
       35 JUMP                             ; [+3]
       36 JUMPIFNOTEQKNIL                  R2 ; [+2]
       38 MOVE                             R2 R7
       39 JUMPIFNOTEQKNIL                  R1 ; [+4]
       41 GETTABLEKS                       R3 R3 K0 ["child"]
       43 FORNLOOP                         R4
       44 MOVE                             R4 R1
       45 JUMPIF                           R4 ; [+3]
       46 MOVE                             R4 R2
       47 JUMPIF                           R4 ; [+1]
       48 LOADK                            R4 K8 ["Anonymous"]
       49 RETURN                           R4 1

PROTO_92:
        0 GETTABLEKS                       R1 R0 K0 ["key"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K1 ["index"]
        7 GETTABLEKS                       R4 R0 K2 ["tag"]
        9 GETUPVAL                         R5 1
       10 JUMPIFNOTEQ                      R4 R5 ; [+43]
       12 GETUPVAL                         R5 2
       13 MOVE                             R6 R0
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 3
       16 MOVE                             R8 R5
       17 NAMECALL                         R6 R6 K3 ["has"]
       19 CALL                             R6 2 1
       20 JUMPIF                           R6 ; [+14]
       21 GETUPVAL                         R6 4
       22 CALL                             R6 0 1
       23 GETUPVAL                         R7 3
       24 MOVE                             R9 R5
       25 MOVE                             R10 R6
       26 NAMECALL                         R7 R7 K4 ["set"]
       28 CALL                             R7 3 0
       29 GETUPVAL                         R7 5
       30 MOVE                             R9 R6
       31 MOVE                             R10 R5
       32 NAMECALL                         R7 R7 K4 ["set"]
       34 CALL                             R7 3 0
       35 GETUPVAL                         R6 3
       36 MOVE                             R8 R5
       37 NAMECALL                         R6 R6 K5 ["get"]
       39 CALL                             R6 2 1
       40 MOVE                             R4 R6
       41 GETUPVAL                         R5 6
       42 MOVE                             R7 R4
       43 NAMECALL                         R5 R5 K5 ["get"]
       45 CALL                             R5 2 1
       46 JUMPIFNOTEQKNIL                  R5 ; [+5]
       48 GETIMPORT                        R6 K7 [error]
       50 LOADK                            R7 K8 ["Expected mounted root to have known pseudo key."]
       51 CALL                             R6 1 0
       52 MOVE                             R2 R5
       53 JUMP                             ; [+7]
       54 GETTABLEKS                       R4 R0 K2 ["tag"]
       56 GETUPVAL                         R5 7
       57 JUMPIFNOTEQ                      R4 R5 ; [+3]
       59 GETTABLEKS                       R2 R0 K9 ["type"]
       61 DUPTABLE                         R4 K11 [{"displayName", "key", "index"}]
       62 SETTABLEKS                       R2 R4 K10 ["displayName"]
       64 SETTABLEKS                       R1 R4 K0 ["key"]
       66 SETTABLEKS                       R3 R4 K1 ["index"]
       68 RETURN                           R4 1

PROTO_93:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["get"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 NEWTABLE                         R2 0 0
       11 JUMPIFEQKNIL                     R1 ; [+12]
       13 MOVE                             R4 R2
       14 GETUPVAL                         R5 1
       15 MOVE                             R6 R1
       16 CALL                             R5 1 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R3 K3 [table.insert]
       20 CALL                             R3 -1 0
       21 GETTABLEKS                       R1 R1 K4 ["return_"]
       23 JUMPBACK                         ; [-13]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K5 ["reverse"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 0
       29 RETURN                           R2 1

PROTO_94:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+3]
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 1
       11 JUMPIFEQKNIL                     R0 ; [+8]
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+3]
       17 GETTABLEKS                       R0 R0 K0 ["return_"]
       19 JUMPBACK                         ; [-9]
       20 JUMPIFNOTEQKNIL                  R0 ; [+3]
       22 LOADNIL                          R1
       23 RETURN                           R1 1
       24 DUPTABLE                         R1 K3 [{"id", "isFullMatch"}]
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R0
       27 CALL                             R3 1 1
       28 GETUPVAL                         R4 4
       29 MOVE                             R6 R3
       30 NAMECALL                         R4 R4 K4 ["has"]
       32 CALL                             R4 2 1
       33 JUMPIF                           R4 ; [+14]
       34 GETUPVAL                         R4 5
       35 CALL                             R4 0 1
       36 GETUPVAL                         R5 4
       37 MOVE                             R7 R3
       38 MOVE                             R8 R4
       39 NAMECALL                         R5 R5 K5 ["set"]
       41 CALL                             R5 3 0
       42 GETUPVAL                         R5 6
       43 MOVE                             R7 R4
       44 MOVE                             R8 R3
       45 NAMECALL                         R5 R5 K5 ["set"]
       47 CALL                             R5 3 0
       48 GETUPVAL                         R4 4
       49 MOVE                             R6 R3
       50 NAMECALL                         R4 R4 K6 ["get"]
       52 CALL                             R4 2 1
       53 MOVE                             R2 R4
       54 SETTABLEKS                       R2 R1 K1 ["id"]
       56 GETUPVAL                         R3 7
       57 GETUPVAL                         R5 0
       58 LENGTH                           R4 R5
       59 JUMPIFEQ                         R3 R4 ; [+2]
       61 LOADB                            R2 0 +1
       62 LOADB                            R2 1
       63 SETTABLEKS                       R2 R1 K2 ["isFullMatch"]
       65 RETURN                           R1 1

PROTO_95:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 CALL                             R4 0 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K0 ["new"]
        7 CALL                             R5 0 1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K0 ["new"]
       11 CALL                             R6 0 1
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K0 ["new"]
       15 CALL                             R7 0 1
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K0 ["new"]
       19 CALL                             R8 0 1
       20 LOADN                            R9 255
       21 NEWCLOSURE                       R10 P0
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R5
       25 GETUPVAL                         R12 3
       26 GETTABLEKS                       R11 R12 K1 ["getInternalReactConstants"]
       28 GETTABLEKS                       R12 R2 K2 ["version"]
       30 CALL                             R11 1 1
       31 GETTABLEKS                       R12 R11 K3 ["getDisplayNameForFiber"]
       33 GETTABLEKS                       R13 R11 K4 ["getTypeSymbol"]
       35 GETTABLEKS                       R14 R11 K5 ["ReactPriorityLevels"]
       37 GETTABLEKS                       R15 R11 K6 ["ReactTypeOfWork"]
       39 GETTABLEKS                       R16 R11 K7 ["ReactTypeOfSideEffect"]
       41 GETTABLEKS                       R17 R16 K8 ["PerformedWork"]
       43 GETTABLEKS                       R18 R15 K9 ["FunctionComponent"]
       45 GETTABLEKS                       R19 R15 K10 ["ClassComponent"]
       47 GETTABLEKS                       R20 R15 K11 ["ContextConsumer"]
       49 GETTABLEKS                       R21 R15 K12 ["DehydratedSuspenseComponent"]
       51 GETTABLEKS                       R22 R15 K13 ["Fragment"]
       53 GETTABLEKS                       R23 R15 K14 ["ForwardRef"]
       55 GETTABLEKS                       R24 R15 K15 ["HostRoot"]
       57 GETTABLEKS                       R25 R15 K16 ["HostPortal"]
       59 GETTABLEKS                       R26 R15 K17 ["HostComponent"]
       61 GETTABLEKS                       R27 R15 K18 ["HostText"]
       63 GETTABLEKS                       R28 R15 K19 ["IncompleteClassComponent"]
       65 GETTABLEKS                       R29 R15 K20 ["IndeterminateComponent"]
       67 GETTABLEKS                       R30 R15 K21 ["MemoComponent"]
       69 GETTABLEKS                       R31 R15 K22 ["OffscreenComponent"]
       71 GETTABLEKS                       R32 R15 K23 ["SimpleMemoComponent"]
       73 GETTABLEKS                       R33 R15 K24 ["SuspenseComponent"]
       75 GETTABLEKS                       R34 R15 K25 ["SuspenseListComponent"]
       77 GETTABLEKS                       R35 R14 K26 ["ImmediatePriority"]
       79 GETTABLEKS                       R36 R14 K27 ["UserBlockingPriority"]
       81 GETTABLEKS                       R37 R14 K28 ["NormalPriority"]
       83 GETTABLEKS                       R38 R14 K29 ["LowPriority"]
       85 GETTABLEKS                       R39 R14 K30 ["IdlePriority"]
       87 GETTABLEKS                       R40 R2 K31 ["overrideHookState"]
       89 GETTABLEKS                       R41 R2 K32 ["overrideHookStateDeletePath"]
       91 GETTABLEKS                       R42 R2 K33 ["overrideHookStateRenamePath"]
       93 GETTABLEKS                       R43 R2 K34 ["overrideProps"]
       95 GETTABLEKS                       R44 R2 K35 ["overridePropsDeletePath"]
       97 GETTABLEKS                       R45 R2 K36 ["overridePropsRenamePath"]
       99 GETTABLEKS                       R46 R2 K37 ["setSuspenseHandler"]
      101 GETTABLEKS                       R47 R2 K38 ["scheduleUpdate"]
      103 LOADB                            R48 0
      104 FASTCALL1                        TYPEOF R46 ; [+3]
      105 MOVE                             R50 R46
      106 GETIMPORT                        R49 K40 [typeof]
      108 CALL                             R49 1 1
      109 JUMPIFNOTEQKS                    R49 K41 ["function"] ; [+10]
      111 FASTCALL1                        TYPEOF R47 ; [+3]
      112 MOVE                             R50 R47
      113 GETIMPORT                        R49 K40 [typeof]
      115 CALL                             R49 1 1
      116 JUMPIFEQKS                       R49 K41 ["function"] ; [+2]
      118 LOADB                            R48 0 +1
      119 LOADB                            R48 1
      120 GETUPVAL                         R50 4
      121 GETTABLEKS                       R49 R50 K42 ["__DEV__"]
      123 JUMPIFNOT                        R49 ; [+26]
      124 GETUPVAL                         R49 5
      125 MOVE                             R50 R2
      126 CALL                             R49 1 0
      127 GETUPVAL                         R51 6
      128 GETTABLEKS                       R50 R51 K43 ["__REACT_DEVTOOLS_APPEND_COMPONENT_STACK__"]
      130 JUMPIFNOTEQKB                    R50 FALSE ; [+2]
      132 LOADB                            R49 0 +1
      133 LOADB                            R49 1
      134 GETUPVAL                         R52 6
      135 GETTABLEKS                       R51 R52 K44 ["__REACT_DEVTOOLS_BREAK_ON_CONSOLE_ERRORS__"]
      137 JUMPIFEQKB                       R51 TRUE ; [+2]
      139 LOADB                            R50 0 +1
      140 LOADB                            R50 1
      141 JUMPIF                           R49 ; [+1]
      142 JUMPIFNOT                        R50 ; [+7]
      143 GETUPVAL                         R51 7
      144 DUPTABLE                         R52 K47 [{"appendComponentStack", "breakOnConsoleErrors"}]
      145 SETTABLEKS                       R49 R52 K45 ["appendComponentStack"]
      147 SETTABLEKS                       R50 R52 K46 ["breakOnConsoleErrors"]
      149 CALL                             R51 1 0
      150 NEWCLOSURE                       R49 P1
      151 CAPTURE                          UPVAL U8
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R4
      154 CAPTURE                          UPVAL U2
      155 CAPTURE                          VAL R5
      156 CAPTURE                          UPVAL U9
      157 GETUPVAL                         R51 1
      158 GETTABLEKS                       R50 R51 K0 ["new"]
      160 CALL                             R50 0 1
      161 GETUPVAL                         R52 1
      162 GETTABLEKS                       R51 R52 K0 ["new"]
      164 CALL                             R51 0 1
      165 GETUPVAL                         R53 1
      166 GETTABLEKS                       R52 R53 K0 ["new"]
      168 CALL                             R52 0 1
      169 GETUPVAL                         R54 0
      170 GETTABLEKS                       R53 R54 K0 ["new"]
      172 CALL                             R53 0 1
      173 GETUPVAL                         R55 0
      174 GETTABLEKS                       R54 R55 K0 ["new"]
      176 CALL                             R54 0 1
      177 LOADNIL                          R55
      178 LOADNIL                          R56
      179 LOADNIL                          R57
      180 LOADNIL                          R58
      181 LOADNIL                          R59
      182 LOADB                            R60 0
      183 LOADN                            R61 0
      184 LOADB                            R62 0
      185 LOADNIL                          R63
      186 LOADNIL                          R64
      187 LOADB                            R65 0
      188 NEWTABLE                         R66 0 0
      190 GETUPVAL                         R68 1
      191 GETTABLEKS                       R67 R68 K0 ["new"]
      193 CALL                             R67 0 1
      194 LOADB                            R68 0
      195 GETUPVAL                         R70 1
      196 GETTABLEKS                       R69 R70 K0 ["new"]
      198 CALL                             R69 0 1
      199 LOADNIL                          R70
      200 LOADNIL                          R71
      201 LOADN                            R72 255
      202 LOADB                            R73 0
      203 LOADNIL                          R74
      204 LOADNIL                          R75
      205 LOADNIL                          R76
      206 LOADNIL                          R77
      207 LOADNIL                          R78
      208 LOADNIL                          R79
      209 LOADNIL                          R80
      210 LOADNIL                          R81
      211 LOADNIL                          R82
      212 LOADNIL                          R83
      213 LOADNIL                          R84
      214 LOADNIL                          R85
      215 LOADNIL                          R86
      216 LOADNIL                          R87
      217 LOADNIL                          R88
      218 LOADNIL                          R89
      219 LOADNIL                          R90
      220 LOADNIL                          R91
      221 LOADNIL                          R92
      222 LOADNIL                          R93
      223 LOADNIL                          R94
      224 LOADNIL                          R95
      225 NEWCLOSURE                       R96 P2
      226 CAPTURE                          VAL R52
      227 CAPTURE                          VAL R50
      228 CAPTURE                          VAL R51
      229 CAPTURE                          UPVAL U10
      230 CAPTURE                          UPVAL U11
      231 CAPTURE                          UPVAL U12
      232 CAPTURE                          UPVAL U13
      233 CAPTURE                          UPVAL U9
      234 GETUPVAL                         R98 6
      235 GETTABLEKS                       R97 R98 K48 ["__REACT_DEVTOOLS_COMPONENT_FILTERS__"]
      237 JUMPIFEQKNIL                     R97 ; [+7]
      239 MOVE                             R97 R96
      240 GETUPVAL                         R99 6
      241 GETTABLEKS                       R98 R99 K48 ["__REACT_DEVTOOLS_COMPONENT_FILTERS__"]
      243 CALL                             R97 1 0
      244 JUMP                             ; [+4]
      245 MOVE                             R97 R96
      246 GETUPVAL                         R98 14
      247 CALL                             R98 0 -1
      248 CALL                             R97 -1 0
      249 NEWCLOSURE                       R97 P3
      250 CAPTURE                          REF R60
      251 CAPTURE                          VAL R0
      252 CAPTURE                          VAL R1
      253 CAPTURE                          REF R9
      254 CAPTURE                          REF R78
      255 CAPTURE                          VAL R4
      256 CAPTURE                          UPVAL U2
      257 CAPTURE                          VAL R5
      258 CAPTURE                          REF R79
      259 CAPTURE                          REF R80
      260 CAPTURE                          VAL R96
      261 CAPTURE                          VAL R54
      262 CAPTURE                          REF R81
      263 CAPTURE                          REF R75
      264 CAPTURE                          REF R83
      265 NEWCLOSURE                       R98 P4
      266 CAPTURE                          VAL R21
      267 CAPTURE                          VAL R25
      268 CAPTURE                          VAL R27
      269 CAPTURE                          VAL R22
      270 CAPTURE                          VAL R31
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R13
      273 CAPTURE                          UPVAL U15
      274 CAPTURE                          UPVAL U16
      275 CAPTURE                          UPVAL U17
      276 CAPTURE                          UPVAL U18
      277 CAPTURE                          UPVAL U19
      278 CAPTURE                          REF R84
      279 CAPTURE                          VAL R52
      280 CAPTURE                          VAL R50
      281 CAPTURE                          VAL R12
      282 CAPTURE                          VAL R51
      283 NEWCLOSURE                       R84 P5
      284 CAPTURE                          VAL R19
      285 CAPTURE                          VAL R28
      286 CAPTURE                          UPVAL U20
      287 CAPTURE                          VAL R18
      288 CAPTURE                          VAL R29
      289 CAPTURE                          UPVAL U21
      290 CAPTURE                          VAL R23
      291 CAPTURE                          UPVAL U22
      292 CAPTURE                          VAL R24
      293 CAPTURE                          UPVAL U23
      294 CAPTURE                          VAL R26
      295 CAPTURE                          UPVAL U24
      296 CAPTURE                          VAL R25
      297 CAPTURE                          VAL R27
      298 CAPTURE                          VAL R22
      299 CAPTURE                          UPVAL U25
      300 CAPTURE                          VAL R30
      301 CAPTURE                          VAL R32
      302 CAPTURE                          UPVAL U26
      303 CAPTURE                          VAL R33
      304 CAPTURE                          UPVAL U27
      305 CAPTURE                          VAL R34
      306 CAPTURE                          UPVAL U28
      307 CAPTURE                          VAL R13
      308 CAPTURE                          UPVAL U15
      309 CAPTURE                          UPVAL U16
      310 CAPTURE                          UPVAL U17
      311 CAPTURE                          UPVAL U29
      312 CAPTURE                          UPVAL U30
      313 CAPTURE                          UPVAL U31
      314 CAPTURE                          UPVAL U32
      315 CAPTURE                          UPVAL U33
      316 CAPTURE                          UPVAL U18
      317 CAPTURE                          UPVAL U19
      318 CAPTURE                          UPVAL U34
      319 CAPTURE                          UPVAL U35
      320 CAPTURE                          UPVAL U36
      321 NEWCLOSURE                       R78 P6
      322 CAPTURE                          VAL R6
      323 NEWCLOSURE                       R99 P7
      324 CAPTURE                          REF R84
      325 CAPTURE                          UPVAL U20
      326 CAPTURE                          UPVAL U21
      327 CAPTURE                          UPVAL U26
      328 CAPTURE                          UPVAL U22
      329 CAPTURE                          UPVAL U24
      330 CAPTURE                          UPVAL U37
      331 CAPTURE                          REF R85
      332 CAPTURE                          REF R74
      333 CAPTURE                          REF R86
      334 NEWCLOSURE                       R100 P8
      335 CAPTURE                          REF R84
      336 CAPTURE                          UPVAL U20
      337 CAPTURE                          REF R57
      338 CAPTURE                          REF R78
      339 CAPTURE                          VAL R4
      340 CAPTURE                          UPVAL U2
      341 CAPTURE                          VAL R5
      342 CAPTURE                          REF R87
      343 NEWTABLE                         R101 0 0
      345 NEWCLOSURE                       R87 P9
      346 CAPTURE                          REF R84
      347 CAPTURE                          UPVAL U20
      348 CAPTURE                          VAL R101
      349 CAPTURE                          UPVAL U38
      350 NEWCLOSURE                       R102 P10
      351 CAPTURE                          REF R84
      352 CAPTURE                          UPVAL U20
      353 CAPTURE                          REF R57
      354 CAPTURE                          REF R78
      355 CAPTURE                          VAL R4
      356 CAPTURE                          UPVAL U2
      357 CAPTURE                          VAL R5
      358 CAPTURE                          REF R87
      359 CAPTURE                          VAL R102
      360 NEWCLOSURE                       R85 P11
      361 CAPTURE                          REF R84
      362 CAPTURE                          UPVAL U20
      363 CAPTURE                          REF R57
      364 CAPTURE                          REF R78
      365 CAPTURE                          VAL R4
      366 CAPTURE                          UPVAL U2
      367 CAPTURE                          VAL R5
      368 CAPTURE                          REF R87
      369 CAPTURE                          VAL R101
      370 CAPTURE                          REF R74
      371 DUPCLOSURE                       R103 K49 [PROTO_20]
      372 DUPCLOSURE                       R104 K50 [PROTO_21]
      373 CAPTURE                          UPVAL U39
      374 DUPCLOSURE                       R105 K51 [PROTO_22]
      375 CAPTURE                          UPVAL U40
      376 DUPCLOSURE                       R106 K52 [PROTO_23]
      377 CAPTURE                          VAL R105
      378 CAPTURE                          VAL R104
      379 DUPCLOSURE                       R86 K53 [PROTO_24]
      380 CAPTURE                          VAL R105
      381 CAPTURE                          VAL R104
      382 DUPCLOSURE                       R74 K54 [PROTO_25]
      383 CAPTURE                          UPVAL U1
      384 CAPTURE                          UPVAL U40
      385 CAPTURE                          UPVAL U38
      386 NEWCLOSURE                       R107 P18
      387 CAPTURE                          VAL R19
      388 CAPTURE                          VAL R18
      389 CAPTURE                          VAL R20
      390 CAPTURE                          VAL R30
      391 CAPTURE                          VAL R32
      392 CAPTURE                          VAL R17
      393 NEWTABLE                         R108 0 0
      395 NEWTABLE                         R109 0 0
      397 NEWTABLE                         R110 0 0
      399 NEWTABLE                         R111 0 0
      401 GETUPVAL                         R113 0
      402 GETTABLEKS                       R112 R113 K0 ["new"]
      404 CALL                             R112 0 1
      405 LOADN                            R113 0
      406 LOADNIL                          R114
      407 NEWCLOSURE                       R115 P19
      408 CAPTURE                          VAL R3
      409 CAPTURE                          UPVAL U41
      410 CAPTURE                          UPVAL U9
      411 CAPTURE                          REF R108
      412 NEWCLOSURE                       R83 P20
      413 CAPTURE                          REF R108
      414 CAPTURE                          REF R109
      415 CAPTURE                          REF R110
      416 CAPTURE                          REF R114
      417 CAPTURE                          REF R60
      418 CAPTURE                          VAL R1
      419 CAPTURE                          REF R9
      420 CAPTURE                          REF R113
      421 CAPTURE                          VAL R112
      422 CAPTURE                          UPVAL U42
      423 CAPTURE                          UPVAL U43
      424 CAPTURE                          REF R111
      425 CAPTURE                          VAL R0
      426 NEWCLOSURE                       R116 P21
      427 CAPTURE                          VAL R112
      428 CAPTURE                          UPVAL U42
      429 CAPTURE                          REF R113
      430 NEWCLOSURE                       R117 P22
      431 CAPTURE                          VAL R3
      432 CAPTURE                          VAL R49
      433 CAPTURE                          VAL R24
      434 CAPTURE                          REF R78
      435 CAPTURE                          VAL R4
      436 CAPTURE                          UPVAL U2
      437 CAPTURE                          VAL R5
      438 CAPTURE                          UPVAL U44
      439 CAPTURE                          UPVAL U41
      440 CAPTURE                          UPVAL U9
      441 CAPTURE                          REF R108
      442 CAPTURE                          UPVAL U23
      443 CAPTURE                          REF R60
      444 CAPTURE                          REF R56
      445 CAPTURE                          REF R88
      446 CAPTURE                          VAL R12
      447 CAPTURE                          REF R84
      448 CAPTURE                          UPVAL U45
      449 CAPTURE                          VAL R112
      450 CAPTURE                          UPVAL U42
      451 CAPTURE                          REF R113
      452 CAPTURE                          VAL R8
      453 CAPTURE                          REF R9
      454 CAPTURE                          REF R89
      455 NEWCLOSURE                       R80 P23
      456 CAPTURE                          VAL R3
      457 CAPTURE                          VAL R49
      458 CAPTURE                          REF R71
      459 CAPTURE                          REF R77
      460 CAPTURE                          VAL R24
      461 CAPTURE                          REF R78
      462 CAPTURE                          VAL R4
      463 CAPTURE                          VAL R6
      464 CAPTURE                          UPVAL U2
      465 CAPTURE                          VAL R5
      466 CAPTURE                          REF R114
      467 CAPTURE                          VAL R98
      468 CAPTURE                          REF R110
      469 CAPTURE                          REF R109
      470 CAPTURE                          VAL R8
      471 CAPTURE                          VAL R7
      472 NEWCLOSURE                       R75 P24
      473 CAPTURE                          UPVAL U8
      474 CAPTURE                          VAL R49
      475 CAPTURE                          REF R90
      476 CAPTURE                          VAL R98
      477 CAPTURE                          VAL R117
      478 CAPTURE                          REF R68
      479 CAPTURE                          REF R84
      480 CAPTURE                          UPVAL U24
      481 CAPTURE                          VAL R69
      482 CAPTURE                          VAL R15
      483 CAPTURE                          REF R75
      484 CAPTURE                          VAL R31
      485 CAPTURE                          REF R91
      486 NEWCLOSURE                       R79 P25
      487 CAPTURE                          VAL R3
      488 CAPTURE                          VAL R49
      489 CAPTURE                          VAL R15
      490 CAPTURE                          REF R79
      491 CAPTURE                          REF R80
      492 NEWCLOSURE                       R89 P26
      493 CAPTURE                          REF R78
      494 CAPTURE                          VAL R4
      495 CAPTURE                          UPVAL U2
      496 CAPTURE                          VAL R5
      497 CAPTURE                          VAL R7
      498 CAPTURE                          REF R60
      499 CAPTURE                          UPVAL U46
      500 CAPTURE                          VAL R3
      501 CAPTURE                          UPVAL U41
      502 CAPTURE                          UPVAL U9
      503 CAPTURE                          REF R108
      504 CAPTURE                          VAL R107
      505 CAPTURE                          REF R55
      506 CAPTURE                          REF R62
      507 CAPTURE                          VAL R99
      508 CAPTURE                          REF R84
      509 CAPTURE                          UPVAL U20
      510 CAPTURE                          REF R57
      511 CAPTURE                          REF R87
      512 NEWCLOSURE                       R118 P27
      513 CAPTURE                          REF R92
      514 CAPTURE                          UPVAL U47
      515 CAPTURE                          VAL R3
      516 CAPTURE                          UPVAL U41
      517 CAPTURE                          UPVAL U9
      518 CAPTURE                          REF R108
      519 CAPTURE                          REF R78
      520 CAPTURE                          VAL R4
      521 CAPTURE                          UPVAL U2
      522 CAPTURE                          VAL R5
      523 NEWCLOSURE                       R92 P28
      524 CAPTURE                          VAL R98
      525 CAPTURE                          REF R78
      526 CAPTURE                          VAL R4
      527 CAPTURE                          UPVAL U2
      528 CAPTURE                          VAL R5
      529 CAPTURE                          REF R92
      530 NEWCLOSURE                       R119 P29
      531 CAPTURE                          VAL R3
      532 CAPTURE                          VAL R49
      533 CAPTURE                          REF R68
      534 CAPTURE                          REF R84
      535 CAPTURE                          UPVAL U24
      536 CAPTURE                          VAL R69
      537 CAPTURE                          UPVAL U21
      538 CAPTURE                          UPVAL U20
      539 CAPTURE                          UPVAL U29
      540 CAPTURE                          VAL R107
      541 CAPTURE                          REF R64
      542 CAPTURE                          REF R78
      543 CAPTURE                          VAL R4
      544 CAPTURE                          UPVAL U2
      545 CAPTURE                          VAL R5
      546 CAPTURE                          REF R65
      547 CAPTURE                          VAL R98
      548 CAPTURE                          VAL R33
      549 CAPTURE                          VAL R119
      550 CAPTURE                          REF R75
      551 CAPTURE                          REF R79
      552 CAPTURE                          REF R76
      553 CAPTURE                          REF R89
      554 CAPTURE                          VAL R118
      555 DUPCLOSURE                       R120 K55 [PROTO_40]
      556 NEWCLOSURE                       R121 P31
      557 CAPTURE                          REF R111
      558 CAPTURE                          VAL R0
      559 CAPTURE                          REF R70
      560 CAPTURE                          REF R73
      561 CAPTURE                          VAL R1
      562 CAPTURE                          REF R9
      563 CAPTURE                          REF R78
      564 CAPTURE                          VAL R4
      565 CAPTURE                          UPVAL U2
      566 CAPTURE                          VAL R5
      567 CAPTURE                          REF R81
      568 CAPTURE                          REF R60
      569 CAPTURE                          UPVAL U40
      570 CAPTURE                          REF R55
      571 CAPTURE                          REF R62
      572 CAPTURE                          UPVAL U0
      573 CAPTURE                          REF R61
      574 CAPTURE                          UPVAL U38
      575 CAPTURE                          REF R75
      576 CAPTURE                          REF R83
      577 NEWCLOSURE                       R122 P32
      578 CAPTURE                          REF R80
      579 NEWCLOSURE                       R123 P33
      580 CAPTURE                          VAL R35
      581 CAPTURE                          VAL R36
      582 CAPTURE                          VAL R37
      583 CAPTURE                          VAL R38
      584 CAPTURE                          VAL R39
      585 NEWCLOSURE                       R124 P34
      586 CAPTURE                          REF R9
      587 CAPTURE                          REF R78
      588 CAPTURE                          VAL R4
      589 CAPTURE                          UPVAL U2
      590 CAPTURE                          VAL R5
      591 CAPTURE                          REF R70
      592 CAPTURE                          REF R73
      593 CAPTURE                          REF R68
      594 CAPTURE                          VAL R69
      595 CAPTURE                          REF R60
      596 CAPTURE                          UPVAL U40
      597 CAPTURE                          REF R55
      598 CAPTURE                          REF R62
      599 CAPTURE                          UPVAL U0
      600 CAPTURE                          REF R61
      601 CAPTURE                          UPVAL U38
      602 CAPTURE                          VAL R35
      603 CAPTURE                          VAL R36
      604 CAPTURE                          VAL R37
      605 CAPTURE                          VAL R38
      606 CAPTURE                          VAL R39
      607 CAPTURE                          REF R81
      608 CAPTURE                          REF R75
      609 CAPTURE                          VAL R119
      610 CAPTURE                          REF R82
      611 CAPTURE                          REF R80
      612 CAPTURE                          REF R63
      613 CAPTURE                          REF R83
      614 CAPTURE                          VAL R0
      615 NEWCLOSURE                       R76 P35
      616 CAPTURE                          REF R93
      617 CAPTURE                          VAL R26
      618 CAPTURE                          VAL R27
      619 NEWCLOSURE                       R125 P36
      620 CAPTURE                          REF R93
      621 CAPTURE                          VAL R33
      622 CAPTURE                          REF R76
      623 CAPTURE                          UPVAL U40
      624 NEWCLOSURE                       R126 P37
      625 CAPTURE                          VAL R5
      626 CAPTURE                          VAL R12
      627 NEWCLOSURE                       R127 P38
      628 CAPTURE                          VAL R2
      629 CAPTURE                          VAL R98
      630 CAPTURE                          REF R78
      631 CAPTURE                          VAL R4
      632 CAPTURE                          UPVAL U2
      633 CAPTURE                          VAL R5
      634 DUPCLOSURE                       R128 K56 [PROTO_54]
      635 CAPTURE                          UPVAL U48
      636 CAPTURE                          UPVAL U49
      637 NEWCLOSURE                       R93 P40
      638 CAPTURE                          VAL R5
      639 CAPTURE                          UPVAL U9
      640 CAPTURE                          UPVAL U49
      641 CAPTURE                          UPVAL U48
      642 CAPTURE                          VAL R24
      643 NEWCLOSURE                       R129 P41
      644 CAPTURE                          REF R94
      645 CAPTURE                          UPVAL U6
      646 CAPTURE                          UPVAL U50
      647 CAPTURE                          REF R64
      648 NEWCLOSURE                       R130 P42
      649 CAPTURE                          VAL R5
      650 CAPTURE                          UPVAL U9
      651 CAPTURE                          VAL R19
      652 CAPTURE                          VAL R18
      653 CAPTURE                          VAL R28
      654 CAPTURE                          VAL R29
      655 CAPTURE                          VAL R3
      656 CAPTURE                          VAL R23
      657 CAPTURE                          VAL R30
      658 CAPTURE                          VAL R32
      659 NEWCLOSURE                       R131 P43
      660 CAPTURE                          REF R93
      661 CAPTURE                          VAL R12
      662 CAPTURE                          REF R84
      663 CAPTURE                          UPVAL U40
      664 CAPTURE                          REF R78
      665 CAPTURE                          VAL R4
      666 CAPTURE                          UPVAL U2
      667 CAPTURE                          VAL R5
      668 NEWCLOSURE                       R132 P44
      669 CAPTURE                          REF R93
      670 NEWCLOSURE                       R133 P45
      671 CAPTURE                          REF R93
      672 CAPTURE                          REF R84
      673 CAPTURE                          VAL R18
      674 CAPTURE                          VAL R32
      675 CAPTURE                          VAL R23
      676 CAPTURE                          VAL R13
      677 CAPTURE                          VAL R19
      678 CAPTURE                          VAL R28
      679 CAPTURE                          VAL R29
      680 CAPTURE                          VAL R30
      681 CAPTURE                          UPVAL U20
      682 CAPTURE                          UPVAL U32
      683 CAPTURE                          UPVAL U33
      684 CAPTURE                          UPVAL U30
      685 CAPTURE                          UPVAL U31
      686 CAPTURE                          VAL R12
      687 CAPTURE                          REF R78
      688 CAPTURE                          VAL R4
      689 CAPTURE                          UPVAL U2
      690 CAPTURE                          VAL R5
      691 CAPTURE                          VAL R33
      692 CAPTURE                          UPVAL U9
      693 CAPTURE                          UPVAL U51
      694 CAPTURE                          VAL R2
      695 CAPTURE                          VAL R40
      696 CAPTURE                          VAL R43
      697 CAPTURE                          VAL R41
      698 CAPTURE                          VAL R42
      699 CAPTURE                          VAL R44
      700 CAPTURE                          VAL R45
      701 CAPTURE                          VAL R48
      702 CAPTURE                          VAL R67
      703 NEWCLOSURE                       R94 P46
      704 CAPTURE                          REF R64
      705 CAPTURE                          REF R65
      706 NEWCLOSURE                       R134 P47
      707 CAPTURE                          REF R66
      708 CAPTURE                          UPVAL U45
      709 NEWCLOSURE                       R135 P48
      710 CAPTURE                          REF R66
      711 CAPTURE                          UPVAL U45
      712 NEWCLOSURE                       R136 P49
      713 CAPTURE                          VAL R5
      714 CAPTURE                          UPVAL U9
      715 CAPTURE                          VAL R19
      716 CAPTURE                          VAL R28
      717 CAPTURE                          VAL R29
      718 CAPTURE                          VAL R3
      719 CAPTURE                          VAL R18
      720 CAPTURE                          VAL R23
      721 CAPTURE                          VAL R30
      722 CAPTURE                          VAL R32
      723 NEWCLOSURE                       R137 P50
      724 CAPTURE                          REF R94
      725 CAPTURE                          UPVAL U50
      726 CAPTURE                          REF R64
      727 CAPTURE                          UPVAL U6
      728 CAPTURE                          UPVAL U9
      729 NEWCLOSURE                       R138 P51
      730 CAPTURE                          REF R94
      731 CAPTURE                          UPVAL U52
      732 CAPTURE                          UPVAL U50
      733 CAPTURE                          REF R64
      734 NEWCLOSURE                       R139 P52
      735 CAPTURE                          REF R94
      736 CAPTURE                          VAL R134
      737 CAPTURE                          UPVAL U53
      738 CAPTURE                          UPVAL U50
      739 CAPTURE                          REF R64
      740 CAPTURE                          REF R66
      741 CAPTURE                          UPVAL U45
      742 CAPTURE                          REF R65
      743 CAPTURE                          VAL R133
      744 CAPTURE                          VAL R136
      745 CAPTURE                          UPVAL U38
      746 NEWCLOSURE                       R140 P53
      747 CAPTURE                          REF R94
      748 CAPTURE                          REF R64
      749 CAPTURE                          VAL R133
      750 CAPTURE                          UPVAL U9
      751 CAPTURE                          REF R93
      752 CAPTURE                          VAL R33
      753 CAPTURE                          REF R76
      754 CAPTURE                          UPVAL U40
      755 NEWCLOSURE                       R141 P54
      756 CAPTURE                          REF R93
      757 CAPTURE                          UPVAL U40
      758 CAPTURE                          VAL R19
      759 CAPTURE                          UPVAL U54
      760 CAPTURE                          VAL R18
      761 CAPTURE                          VAL R41
      762 CAPTURE                          VAL R44
      763 CAPTURE                          UPVAL U55
      764 NEWCLOSURE                       R142 P55
      765 CAPTURE                          REF R93
      766 CAPTURE                          UPVAL U40
      767 CAPTURE                          VAL R19
      768 CAPTURE                          UPVAL U56
      769 CAPTURE                          VAL R18
      770 CAPTURE                          VAL R42
      771 CAPTURE                          VAL R45
      772 CAPTURE                          UPVAL U57
      773 NEWCLOSURE                       R143 P56
      774 CAPTURE                          REF R93
      775 CAPTURE                          UPVAL U40
      776 CAPTURE                          VAL R19
      777 CAPTURE                          UPVAL U58
      778 CAPTURE                          VAL R18
      779 CAPTURE                          VAL R40
      780 CAPTURE                          VAL R43
      781 CAPTURE                          UPVAL U59
      782 NEWCLOSURE                       R144 P57
      783 CAPTURE                          REF R63
      784 CAPTURE                          UPVAL U0
      785 CAPTURE                          REF R56
      786 CAPTURE                          REF R58
      787 CAPTURE                          REF R59
      788 CAPTURE                          UPVAL U40
      789 CAPTURE                          UPVAL U37
      790 CAPTURE                          VAL R1
      791 NEWCLOSURE                       R145 P58
      792 CAPTURE                          REF R60
      793 CAPTURE                          REF R62
      794 CAPTURE                          REF R56
      795 CAPTURE                          UPVAL U0
      796 CAPTURE                          REF R58
      797 CAPTURE                          VAL R7
      798 CAPTURE                          REF R59
      799 CAPTURE                          VAL R8
      800 CAPTURE                          REF R57
      801 CAPTURE                          VAL R0
      802 CAPTURE                          VAL R1
      803 CAPTURE                          REF R78
      804 CAPTURE                          VAL R4
      805 CAPTURE                          UPVAL U2
      806 CAPTURE                          VAL R5
      807 CAPTURE                          REF R88
      808 CAPTURE                          REF R84
      809 CAPTURE                          UPVAL U20
      810 CAPTURE                          REF R87
      811 CAPTURE                          VAL R102
      812 CAPTURE                          REF R61
      813 CAPTURE                          REF R63
      814 NEWCLOSURE                       R146 P59
      815 CAPTURE                          REF R60
      816 CAPTURE                          REF R62
      817 GETUPVAL                         R147 60
      818 GETUPVAL                         R148 61
      819 CALL                             R147 1 1
      820 JUMPIFNOTEQKS                    R147 K57 ["true"] ; [+10]
      822 MOVE                             R147 R145
      823 GETUPVAL                         R149 60
      824 GETUPVAL                         R150 62
      825 CALL                             R149 1 1
      826 JUMPIFEQKS                       R149 K57 ["true"] ; [+2]
      828 LOADB                            R148 0 +1
      829 LOADB                            R148 1
      830 CALL                             R147 1 0
      831 DUPCLOSURE                       R147 K58 [PROTO_83]
      832 NEWCLOSURE                       R148 P61
      833 CAPTURE                          REF R78
      834 CAPTURE                          VAL R4
      835 CAPTURE                          UPVAL U2
      836 CAPTURE                          VAL R5
      837 CAPTURE                          VAL R67
      838 NEWCLOSURE                       R149 P62
      839 CAPTURE                          VAL R46
      840 CAPTURE                          VAL R47
      841 CAPTURE                          VAL R67
      842 CAPTURE                          VAL R148
      843 CAPTURE                          VAL R147
      844 CAPTURE                          VAL R5
      845 NEWCLOSURE                       R77 P63
      846 CAPTURE                          REF R71
      847 CAPTURE                          REF R72
      848 CAPTURE                          REF R73
      849 CAPTURE                          REF R70
      850 NEWCLOSURE                       R90 P64
      851 CAPTURE                          REF R70
      852 CAPTURE                          REF R73
      853 CAPTURE                          REF R71
      854 CAPTURE                          REF R95
      855 CAPTURE                          REF R72
      856 NEWCLOSURE                       R91 P65
      857 CAPTURE                          REF R73
      858 NEWCLOSURE                       R81 P66
      859 CAPTURE                          REF R88
      860 CAPTURE                          VAL R54
      861 CAPTURE                          VAL R53
      862 NEWCLOSURE                       R82 P67
      863 CAPTURE                          VAL R53
      864 CAPTURE                          UPVAL U63
      865 CAPTURE                          VAL R54
      866 NEWCLOSURE                       R88 P68
      867 CAPTURE                          VAL R12
      868 NEWCLOSURE                       R95 P69
      869 CAPTURE                          VAL R12
      870 CAPTURE                          VAL R24
      871 CAPTURE                          REF R78
      872 CAPTURE                          VAL R4
      873 CAPTURE                          UPVAL U2
      874 CAPTURE                          VAL R5
      875 CAPTURE                          VAL R53
      876 CAPTURE                          VAL R26
      877 NEWCLOSURE                       R150 P70
      878 CAPTURE                          VAL R5
      879 CAPTURE                          REF R95
      880 CAPTURE                          UPVAL U40
      881 NEWCLOSURE                       R151 P71
      882 CAPTURE                          REF R70
      883 CAPTURE                          REF R71
      884 CAPTURE                          VAL R98
      885 CAPTURE                          REF R78
      886 CAPTURE                          VAL R4
      887 CAPTURE                          UPVAL U2
      888 CAPTURE                          VAL R5
      889 CAPTURE                          REF R72
      890 NEWCLOSURE                       R152 P72
      891 CAPTURE                          REF R68
      892 DUPTABLE                         R153 K88 [{"cleanup", "copyElementPath", "deletePath", "findNativeNodesForFiberID", "flushInitialOperations", "getBestMatchForTrackedPath", "getDisplayNameForFiberID", "getFiberIDForNative", "getInstanceAndStyle", "getOwnersList", "getPathForElement", "getProfilingData", "handleCommitFiberRoot", "handleCommitFiberUnmount", "inspectElement", "logElementToConsole", "prepareViewAttributeSource", "prepareViewElementSource", "overrideSuspense", "overrideValueAtPath", "renamePath", "renderer", "setTraceUpdatesEnabled", "setTrackedPath", "startProfiling", "stopProfiling", "storeAsGlobal", "updateComponentFilters", "getDisplayNameForRoot"}]
      893 SETTABLEKS                       R120 R153 K59 ["cleanup"]
      895 SETTABLEKS                       R138 R153 K60 ["copyElementPath"]
      897 SETTABLEKS                       R141 R153 K61 ["deletePath"]
      899 SETTABLEKS                       R125 R153 K62 ["findNativeNodesForFiberID"]
      901 SETTABLEKS                       R121 R153 K63 ["flushInitialOperations"]
      903 SETTABLEKS                       R151 R153 K64 ["getBestMatchForTrackedPath"]
      905 SETTABLEKS                       R126 R153 K65 ["getDisplayNameForFiberID"]
      907 SETTABLEKS                       R127 R153 K66 ["getFiberIDForNative"]
      909 SETTABLEKS                       R132 R153 K67 ["getInstanceAndStyle"]
      911 SETTABLEKS                       R131 R153 K68 ["getOwnersList"]
      913 SETTABLEKS                       R150 R153 K69 ["getPathForElement"]
      915 SETTABLEKS                       R144 R153 K70 ["getProfilingData"]
      917 SETTABLEKS                       R124 R153 K71 ["handleCommitFiberRoot"]
      919 SETTABLEKS                       R122 R153 K72 ["handleCommitFiberUnmount"]
      921 SETTABLEKS                       R139 R153 K73 ["inspectElement"]
      923 SETTABLEKS                       R140 R153 K74 ["logElementToConsole"]
      925 SETTABLEKS                       R129 R153 K75 ["prepareViewAttributeSource"]
      927 SETTABLEKS                       R130 R153 K76 ["prepareViewElementSource"]
      929 SETTABLEKS                       R149 R153 K77 ["overrideSuspense"]
      931 SETTABLEKS                       R143 R153 K78 ["overrideValueAtPath"]
      933 SETTABLEKS                       R142 R153 K79 ["renamePath"]
      935 SETTABLEKS                       R2 R153 K80 ["renderer"]
      937 SETTABLEKS                       R152 R153 K81 ["setTraceUpdatesEnabled"]
      939 SETTABLEKS                       R77 R153 K82 ["setTrackedPath"]
      941 SETTABLEKS                       R145 R153 K83 ["startProfiling"]
      943 SETTABLEKS                       R146 R153 K84 ["stopProfiling"]
      945 SETTABLEKS                       R137 R153 K85 ["storeAsGlobal"]
      947 SETTABLEKS                       R97 R153 K86 ["updateComponentFilters"]
      949 SETTABLEKS                       R88 R153 K87 ["getDisplayNameForRoot"]
      951 CLOSEUPVALS                      R9
      952 RETURN                           R153 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Shared"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R3 K8 ["console"]
       26 GETTABLEKS                       R5 R2 K9 ["Map"]
       28 GETTABLEKS                       R6 R2 K10 ["Set"]
       30 GETTABLEKS                       R7 R2 K11 ["Array"]
       32 GETTABLEKS                       R8 R2 K12 ["Boolean"]
       34 GETTABLEKS                       R9 R2 K13 ["Object"]
       36 GETTABLEKS                       R10 R2 K14 ["Number"]
       38 GETTABLEKS                       R11 R2 K15 ["String"]
       40 NEWTABLE                         R12 2 0
       42 GETIMPORT                        R14 K4 [require]
       44 GETTABLEKS                       R15 R0 K7 ["Shared"]
       46 CALL                             R14 1 1
       47 GETTABLEKS                       R13 R14 K16 ["invariant"]
       49 GETIMPORT                        R14 K4 [require]
       51 GETIMPORT                        R18 K1 [script]
       53 GETTABLEKS                       R17 R18 K2 ["Parent"]
       55 GETTABLEKS                       R16 R17 K2 ["Parent"]
       57 GETTABLEKS                       R15 R16 K17 ["types"]
       59 CALL                             R14 1 1
       60 GETTABLEKS                       R15 R14 K18 ["ComponentFilterDisplayName"]
       62 GETTABLEKS                       R16 R14 K19 ["ComponentFilterElementType"]
       64 GETTABLEKS                       R17 R14 K20 ["ComponentFilterHOC"]
       66 GETTABLEKS                       R18 R14 K21 ["ComponentFilterLocation"]
       68 GETTABLEKS                       R19 R14 K22 ["ElementTypeClass"]
       70 GETTABLEKS                       R20 R14 K23 ["ElementTypeContext"]
       72 GETTABLEKS                       R21 R14 K24 ["ElementTypeFunction"]
       74 GETTABLEKS                       R22 R14 K25 ["ElementTypeForwardRef"]
       76 GETTABLEKS                       R23 R14 K26 ["ElementTypeHostComponent"]
       78 GETTABLEKS                       R24 R14 K27 ["ElementTypeMemo"]
       80 GETTABLEKS                       R25 R14 K28 ["ElementTypeOtherOrUnknown"]
       82 GETTABLEKS                       R26 R14 K29 ["ElementTypeProfiler"]
       84 GETTABLEKS                       R27 R14 K30 ["ElementTypeRoot"]
       86 GETTABLEKS                       R28 R14 K31 ["ElementTypeSuspense"]
       88 GETTABLEKS                       R29 R14 K32 ["ElementTypeSuspenseList"]
       90 GETIMPORT                        R30 K4 [require]
       92 GETIMPORT                        R34 K1 [script]
       94 GETTABLEKS                       R33 R34 K2 ["Parent"]
       96 GETTABLEKS                       R32 R33 K2 ["Parent"]
       98 GETTABLEKS                       R31 R32 K33 ["utils"]
      100 CALL                             R30 1 1
      101 GETTABLEKS                       R31 R30 K34 ["deletePathInObject"]
      103 GETTABLEKS                       R32 R30 K35 ["getDisplayName"]
      105 GETTABLEKS                       R33 R30 K36 ["getWrappedDisplayName"]
      107 GETTABLEKS                       R34 R30 K37 ["getDefaultComponentFilters"]
      109 GETTABLEKS                       R35 R30 K38 ["getInObject"]
      111 GETTABLEKS                       R36 R30 K39 ["getUID"]
      113 GETTABLEKS                       R37 R30 K40 ["renamePathInObject"]
      115 GETTABLEKS                       R38 R30 K41 ["setInObject"]
      117 GETTABLEKS                       R39 R30 K42 ["utfEncodeString"]
      119 GETIMPORT                        R40 K4 [require]
      121 GETIMPORT                        R44 K1 [script]
      123 GETTABLEKS                       R43 R44 K2 ["Parent"]
      125 GETTABLEKS                       R42 R43 K2 ["Parent"]
      127 GETTABLEKS                       R41 R42 K43 ["storage"]
      129 CALL                             R40 1 1
      130 GETTABLEKS                       R41 R40 K44 ["sessionStorageGetItem"]
      132 GETIMPORT                        R42 K4 [require]
      134 GETIMPORT                        R45 K1 [script]
      136 GETTABLEKS                       R44 R45 K2 ["Parent"]
      138 GETTABLEKS                       R43 R44 K33 ["utils"]
      140 CALL                             R42 1 1
      141 GETTABLEKS                       R43 R42 K45 ["cleanForBridge"]
      143 GETTABLEKS                       R44 R42 K46 ["copyToClipboard"]
      145 GETTABLEKS                       R45 R42 K47 ["copyWithDelete"]
      147 GETTABLEKS                       R46 R42 K48 ["copyWithRename"]
      149 GETTABLEKS                       R47 R42 K49 ["copyWithSet"]
      151 GETIMPORT                        R48 K4 [require]
      153 GETIMPORT                        R52 K1 [script]
      155 GETTABLEKS                       R51 R52 K2 ["Parent"]
      157 GETTABLEKS                       R50 R51 K2 ["Parent"]
      159 GETTABLEKS                       R49 R50 K50 ["constants"]
      161 CALL                             R48 1 1
      162 GETTABLEKS                       R49 R48 K51 ["__DEBUG__"]
      164 GETTABLEKS                       R50 R48 K52 ["SESSION_STORAGE_RELOAD_AND_PROFILE_KEY"]
      166 GETTABLEKS                       R51 R48 K53 ["SESSION_STORAGE_RECORD_CHANGE_DESCRIPTIONS_KEY"]
      168 GETTABLEKS                       R52 R48 K54 ["TREE_OPERATION_ADD"]
      170 GETTABLEKS                       R53 R48 K55 ["TREE_OPERATION_REMOVE"]
      172 GETTABLEKS                       R54 R48 K56 ["TREE_OPERATION_REORDER_CHILDREN"]
      174 GETTABLEKS                       R55 R48 K57 ["TREE_OPERATION_UPDATE_TREE_BASE_DURATION"]
      176 GETIMPORT                        R56 K4 [require]
      178 GETTABLEKS                       R57 R0 K58 ["ReactDebugTools"]
      180 CALL                             R56 1 1
      181 GETTABLEKS                       R57 R56 K59 ["inspectHooksOfFiber"]
      183 GETIMPORT                        R58 K4 [require]
      185 GETIMPORT                        R61 K1 [script]
      187 GETTABLEKS                       R60 R61 K2 ["Parent"]
      189 GETTABLEKS                       R59 R60 K8 ["console"]
      191 CALL                             R58 1 1
      192 GETTABLEKS                       R59 R58 K60 ["patch"]
      194 GETTABLEKS                       R60 R58 K61 ["registerRenderer"]
      196 GETIMPORT                        R61 K4 [require]
      198 GETIMPORT                        R64 K1 [script]
      200 GETTABLEKS                       R63 R64 K2 ["Parent"]
      202 GETTABLEKS                       R62 R63 K62 ["ReactSymbols"]
      204 CALL                             R61 1 1
      205 GETTABLEKS                       R62 R61 K63 ["CONCURRENT_MODE_NUMBER"]
      207 GETTABLEKS                       R63 R61 K64 ["CONCURRENT_MODE_SYMBOL_STRING"]
      209 GETTABLEKS                       R64 R61 K65 ["DEPRECATED_ASYNC_MODE_SYMBOL_STRING"]
      211 GETTABLEKS                       R65 R61 K66 ["PROVIDER_NUMBER"]
      213 GETTABLEKS                       R66 R61 K67 ["PROVIDER_SYMBOL_STRING"]
      215 GETTABLEKS                       R67 R61 K68 ["CONTEXT_NUMBER"]
      217 GETTABLEKS                       R68 R61 K69 ["CONTEXT_SYMBOL_STRING"]
      219 GETTABLEKS                       R69 R61 K70 ["STRICT_MODE_NUMBER"]
      221 GETTABLEKS                       R70 R61 K71 ["STRICT_MODE_SYMBOL_STRING"]
      223 GETTABLEKS                       R71 R61 K72 ["PROFILER_NUMBER"]
      225 GETTABLEKS                       R72 R61 K73 ["PROFILER_SYMBOL_STRING"]
      227 GETTABLEKS                       R73 R61 K74 ["SCOPE_NUMBER"]
      229 GETTABLEKS                       R74 R61 K75 ["SCOPE_SYMBOL_STRING"]
      231 GETTABLEKS                       R75 R61 K76 ["FORWARD_REF_NUMBER"]
      233 GETTABLEKS                       R76 R61 K77 ["FORWARD_REF_SYMBOL_STRING"]
      235 GETTABLEKS                       R77 R61 K78 ["MEMO_NUMBER"]
      237 GETTABLEKS                       R78 R61 K79 ["MEMO_SYMBOL_STRING"]
      239 GETTABLEKS                       R79 R3 K80 ["objectIs"]
      241 GETIMPORT                        R80 K4 [require]
      243 GETTABLEKS                       R81 R0 K81 ["ReactReconciler"]
      245 CALL                             R80 1 1
      246 NEWTABLE                         R81 0 0
      248 CALL                             R80 1 1
      249 GETTABLEKS                       R81 R80 K82 ["getNearestMountedFiber"]
      251 GETIMPORT                        R82 K4 [require]
      253 GETTABLEKS                       R83 R0 K81 ["ReactReconciler"]
      255 CALL                             R82 1 1
      256 GETIMPORT                        R83 K4 [require]
      258 GETIMPORT                        R86 K1 [script]
      260 GETTABLEKS                       R85 R86 K2 ["Parent"]
      262 GETTABLEKS                       R84 R85 K17 ["types"]
      264 CALL                             R83 1 1
      265 GETIMPORT                        R84 K4 [require]
      267 GETIMPORT                        R91 K1 [script]
      269 GETTABLEKS                       R90 R91 K2 ["Parent"]
      271 GETTABLEKS                       R89 R90 K2 ["Parent"]
      273 GETTABLEKS                       R88 R89 K83 ["devtools"]
      275 GETTABLEKS                       R87 R88 K84 ["views"]
      277 GETTABLEKS                       R86 R87 K85 ["Profiler"]
      279 GETTABLEKS                       R85 R86 K17 ["types"]
      281 CALL                             R84 1 1
      282 GETIMPORT                        R85 K4 [require]
      284 GETIMPORT                        R89 K1 [script]
      286 GETTABLEKS                       R88 R89 K2 ["Parent"]
      288 GETTABLEKS                       R87 R88 K2 ["Parent"]
      290 GETTABLEKS                       R86 R87 K17 ["types"]
      292 CALL                             R85 1 1
      293 GETIMPORT                        R86 K87 [newproxy]
      295 CALL                             R86 0 1
      296 DUPCLOSURE                       R87 K88 [PROTO_0]
      297 DUPCLOSURE                       R88 K89 [PROTO_1]
      298 DUPCLOSURE                       R89 K90 [PROTO_5]
      299 CAPTURE                          VAL R77
      300 CAPTURE                          VAL R78
      301 CAPTURE                          VAL R75
      302 CAPTURE                          VAL R76
      303 CAPTURE                          VAL R32
      304 CAPTURE                          VAL R33
      305 CAPTURE                          VAL R62
      306 CAPTURE                          VAL R63
      307 CAPTURE                          VAL R64
      308 CAPTURE                          VAL R65
      309 CAPTURE                          VAL R66
      310 CAPTURE                          VAL R67
      311 CAPTURE                          VAL R68
      312 CAPTURE                          VAL R69
      313 CAPTURE                          VAL R70
      314 CAPTURE                          VAL R71
      315 CAPTURE                          VAL R72
      316 CAPTURE                          VAL R73
      317 CAPTURE                          VAL R74
      318 SETTABLEKS                       R89 R12 K91 ["getInternalReactConstants"]
      320 DUPCLOSURE                       R89 K92 [PROTO_96]
      321 CAPTURE                          VAL R5
      322 CAPTURE                          VAL R6
      323 CAPTURE                          VAL R36
      324 CAPTURE                          VAL R12
      325 CAPTURE                          VAL R1
      326 CAPTURE                          VAL R60
      327 CAPTURE                          VAL R1
      328 CAPTURE                          VAL R59
      329 CAPTURE                          VAL R49
      330 CAPTURE                          VAL R4
      331 CAPTURE                          VAL R15
      332 CAPTURE                          VAL R16
      333 CAPTURE                          VAL R18
      334 CAPTURE                          VAL R17
      335 CAPTURE                          VAL R34
      336 CAPTURE                          VAL R62
      337 CAPTURE                          VAL R63
      338 CAPTURE                          VAL R64
      339 CAPTURE                          VAL R69
      340 CAPTURE                          VAL R70
      341 CAPTURE                          VAL R19
      342 CAPTURE                          VAL R21
      343 CAPTURE                          VAL R22
      344 CAPTURE                          VAL R27
      345 CAPTURE                          VAL R23
      346 CAPTURE                          VAL R25
      347 CAPTURE                          VAL R24
      348 CAPTURE                          VAL R28
      349 CAPTURE                          VAL R29
      350 CAPTURE                          VAL R20
      351 CAPTURE                          VAL R65
      352 CAPTURE                          VAL R66
      353 CAPTURE                          VAL R67
      354 CAPTURE                          VAL R68
      355 CAPTURE                          VAL R71
      356 CAPTURE                          VAL R72
      357 CAPTURE                          VAL R26
      358 CAPTURE                          VAL R86
      359 CAPTURE                          VAL R9
      360 CAPTURE                          VAL R79
      361 CAPTURE                          VAL R7
      362 CAPTURE                          VAL R10
      363 CAPTURE                          VAL R39
      364 CAPTURE                          VAL R53
      365 CAPTURE                          VAL R52
      366 CAPTURE                          VAL R8
      367 CAPTURE                          VAL R55
      368 CAPTURE                          VAL R54
      369 CAPTURE                          VAL R13
      370 CAPTURE                          VAL R81
      371 CAPTURE                          VAL R35
      372 CAPTURE                          VAL R57
      373 CAPTURE                          VAL R44
      374 CAPTURE                          VAL R43
      375 CAPTURE                          VAL R31
      376 CAPTURE                          VAL R45
      377 CAPTURE                          VAL R37
      378 CAPTURE                          VAL R46
      379 CAPTURE                          VAL R38
      380 CAPTURE                          VAL R47
      381 CAPTURE                          VAL R41
      382 CAPTURE                          VAL R50
      383 CAPTURE                          VAL R51
      384 CAPTURE                          VAL R11
      385 SETTABLEKS                       R89 R12 K93 ["attach"]
      387 RETURN                           R12 1
