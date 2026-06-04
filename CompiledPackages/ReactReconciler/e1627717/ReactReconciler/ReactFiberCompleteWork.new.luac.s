PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K5 [tostring]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K7 [error]
       20 LOADK                            R3 K8 ["FIXME (roblox): "]
       21 MOVE                             R4 R0
       22 LOADK                            R5 K9 [" is unimplemented"]
       23 CONCAT                           R2 R3 R5
       24 LOADN                            R3 2
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["flags"]
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        BIT32_BOR R2 R3 ; [+3]
        5 GETIMPORT                        R1 K3 [bit32.bor]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["flags"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["flags"]
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        BIT32_BOR R2 R3 ; [+3]
        5 GETIMPORT                        R1 K3 [bit32.bor]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["flags"]
       10 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R0 ; [+9]
        3 GETTABLEKS                       R3 R0 K0 ["child"]
        5 GETTABLEKS                       R4 R1 K0 ["child"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADB                            R3 1
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R1 K0 ["child"]
       16 JUMPIFEQKNIL                     R3 ; [+30]
       18 GETTABLEKS                       R5 R3 K1 ["flags"]
       20 GETUPVAL                         R6 0
       21 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       23 GETIMPORT                        R4 K4 [bit32.band]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 1
       27 JUMPIFEQ                         R4 R5 ; [+3]
       29 LOADB                            R4 0
       30 RETURN                           R4 1
       31 GETTABLEKS                       R5 R3 K5 ["subtreeFlags"]
       33 GETUPVAL                         R6 0
       34 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       36 GETIMPORT                        R4 K4 [bit32.band]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 1
       40 JUMPIFEQ                         R4 R5 ; [+3]
       42 LOADB                            R4 0
       43 RETURN                           R4 1
       44 GETTABLEKS                       R3 R3 K6 ["sibling"]
       46 JUMPBACK                         ; [-31]
       47 LOADB                            R4 1
       48 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R4 R1 K0 ["child"]
        2 JUMPIFEQKNIL                     R4 ; [+77]
        4 GETTABLEKS                       R5 R4 K1 ["tag"]
        6 GETUPVAL                         R6 0
        7 JUMPIFEQ                         R5 R6 ; [+6]
        9 GETTABLEKS                       R5 R4 K1 ["tag"]
       11 GETUPVAL                         R6 1
       12 JUMPIFNOTEQ                      R5 R6 ; [+7]
       14 GETUPVAL                         R5 2
       15 MOVE                             R6 R0
       16 GETTABLEKS                       R7 R4 K2 ["stateNode"]
       18 CALL                             R5 2 0
       19 JUMP                             ; [+32]
       20 GETUPVAL                         R5 3
       21 JUMPIFNOT                        R5 ; [+13]
       22 GETTABLEKS                       R5 R4 K1 ["tag"]
       24 GETUPVAL                         R6 4
       25 JUMPIFNOTEQ                      R5 R6 ; [+9]
       27 GETUPVAL                         R5 2
       28 MOVE                             R6 R0
       29 GETTABLEKS                       R7 R4 K2 ["stateNode"]
       31 GETTABLEKS                       R7 R7 K3 ["instance"]
       33 CALL                             R5 2 0
       34 JUMP                             ; [+17]
       35 GETTABLEKS                       R5 R4 K1 ["tag"]
       37 GETUPVAL                         R6 5
       38 JUMPIFNOTEQ                      R5 R6 ; [+2]
       40 JUMP                             ; [+11]
       41 GETTABLEKS                       R5 R4 K0 ["child"]
       43 JUMPIFEQKNIL                     R5 ; [+8]
       45 GETTABLEKS                       R5 R4 K0 ["child"]
       47 SETTABLEKS                       R4 R5 K4 ["return_"]
       49 GETTABLEKS                       R4 R4 K0 ["child"]
       51 JUMP                             ; [+27]
       52 JUMPIFNOTEQ                      R4 R1 ; [+2]
       54 RETURN                           R0 0
       55 GETTABLEKS                       R5 R4 K5 ["sibling"]
       57 JUMPIFNOTEQKNIL                  R5 ; [+13]
       59 GETTABLEKS                       R5 R4 K4 ["return_"]
       61 JUMPIFEQKNIL                     R5 ; [+5]
       63 GETTABLEKS                       R5 R4 K4 ["return_"]
       65 JUMPIFNOTEQ                      R5 R1 ; [+2]
       67 RETURN                           R0 0
       68 GETTABLEKS                       R4 R4 K4 ["return_"]
       70 JUMPBACK                         ; [-16]
       71 GETTABLEKS                       R5 R4 K5 ["sibling"]
       73 GETTABLEKS                       R6 R4 K4 ["return_"]
       75 SETTABLEKS                       R6 R5 K4 ["return_"]
       77 GETTABLEKS                       R4 R4 K5 ["sibling"]
       79 JUMPBACK                         ; [-78]
       80 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R5 R0 K0 ["memoizedProps"]
        2 JUMPIFNOTEQ                      R5 R3 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R6 R1 K1 ["stateNode"]
        7 GETUPVAL                         R7 0
        8 CALL                             R7 0 1
        9 GETUPVAL                         R8 1
       10 MOVE                             R9 R6
       11 MOVE                             R10 R2
       12 MOVE                             R11 R5
       13 MOVE                             R12 R3
       14 MOVE                             R13 R4
       15 MOVE                             R14 R7
       16 CALL                             R8 6 1
       17 SETTABLEKS                       R8 R1 K2 ["updateQueue"]
       19 JUMPIFNOT                        R8 ; [+10]
       20 GETTABLEKS                       R10 R1 K3 ["flags"]
       22 GETUPVAL                         R11 2
       23 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
       25 GETIMPORT                        R9 K6 [bit32.bor]
       27 CALL                             R9 2 1
       28 SETTABLEKS                       R9 R1 K3 ["flags"]
       30 RETURN                           R0 0

PROTO_7:
        0 JUMPIFEQ                         R2 R3 ; [+11]
        2 GETTABLEKS                       R5 R1 K0 ["flags"]
        4 GETUPVAL                         R6 0
        5 FASTCALL2                        BIT32_BOR R5 R6 ; [+3]
        7 GETIMPORT                        R4 K3 [bit32.bor]
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R1 K0 ["flags"]
       12 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R4 K1 [print]
        2 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R4 1 0
        4 GETIMPORT                        R4 K1 [print]
        6 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R4 1 0
        8 GETIMPORT                        R4 K1 [print]
       10 LOADK                            R6 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R8 K4 ["appendAllChildren"]
       12 FASTCALL1                        TOSTRING R8 ; [+2]
       13 GETIMPORT                        R7 K6 [tostring]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 CALL                             R4 1 0
       18 GETIMPORT                        R4 K8 [error]
       20 LOADK                            R5 K9 ["FIXME (roblox): appendAllChildren is unimplemented"]
       21 LOADN                            R6 2
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R4 K1 [print]
        2 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R4 1 0
        4 GETIMPORT                        R4 K1 [print]
        6 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R4 1 0
        8 GETIMPORT                        R4 K1 [print]
       10 LOADK                            R6 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R8 K4 ["appendAllChildrenToContainer"]
       12 FASTCALL1                        TOSTRING R8 ; [+2]
       13 GETIMPORT                        R7 K6 [tostring]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 CALL                             R4 1 0
       18 GETIMPORT                        R4 K8 [error]
       20 LOADK                            R5 K9 ["FIXME (roblox): appendAllChildrenToContainer is unimplemented"]
       21 LOADN                            R6 2
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["stateNode"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R4 R2 K1 ["containerInfo"]
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R4
       12 CALL                             R5 1 1
       13 GETIMPORT                        R6 K3 [print]
       15 LOADK                            R7 K4 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
       16 CALL                             R6 1 0
       17 GETIMPORT                        R6 K3 [print]
       19 LOADK                            R7 K4 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
       20 CALL                             R6 1 0
       21 GETIMPORT                        R6 K3 [print]
       23 LOADK                            R8 K5 ["UNIMPLEMENTED ERROR: "]
       24 LOADK                            R10 K6 ["appendAllChildrenToContainer"]
       25 FASTCALL1                        TOSTRING R10 ; [+2]
       26 GETIMPORT                        R9 K8 [tostring]
       28 CALL                             R9 1 1
       29 CONCAT                           R7 R8 R9
       30 CALL                             R6 1 0
       31 GETIMPORT                        R6 K10 [error]
       33 LOADK                            R7 K11 ["FIXME (roblox): appendAllChildrenToContainer is unimplemented"]
       34 LOADN                            R8 2
       35 CALL                             R6 2 0
       36 SETTABLEKS                       R5 R2 K12 ["pendingChildren"]
       38 GETTABLEKS                       R7 R1 K13 ["flags"]
       40 GETUPVAL                         R8 2
       41 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
       43 GETIMPORT                        R6 K16 [bit32.bor]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R1 K13 ["flags"]
       48 GETUPVAL                         R6 3
       49 MOVE                             R7 R4
       50 MOVE                             R8 R5
       51 CALL                             R6 2 0
       52 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["alternate"]
        3 JUMPIFEQKNIL                     R2 ; [+11]
        5 GETTABLEKS                       R2 R0 K0 ["alternate"]
        7 GETTABLEKS                       R2 R2 K1 ["child"]
        9 GETTABLEKS                       R3 R0 K1 ["child"]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 GETUPVAL                         R2 0
       16 GETUPVAL                         R3 1
       17 JUMPIF                           R1 ; [+117]
       18 GETUPVAL                         R4 2
       19 JUMPIFNOT                        R4 ; [+61]
       20 GETTABLEKS                       R5 R0 K2 ["mode"]
       22 GETUPVAL                         R6 3
       23 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       25 GETIMPORT                        R4 K5 [bit32.band]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R5 4
       29 JUMPIFEQ                         R4 R5 ; [+51]
       31 GETTABLEKS                       R4 R0 K6 ["actualDuration"]
       33 GETTABLEKS                       R5 R0 K7 ["selfBaseDuration"]
       35 GETTABLEKS                       R6 R0 K1 ["child"]
       37 JUMPIFEQKNIL                     R6 ; [+38]
       39 GETUPVAL                         R7 5
       40 MOVE                             R8 R2
       41 GETUPVAL                         R9 5
       42 GETTABLEKS                       R10 R6 K8 ["lanes"]
       44 GETTABLEKS                       R11 R6 K9 ["childLanes"]
       46 CALL                             R9 2 -1
       47 CALL                             R7 -1 1
       48 MOVE                             R2 R7
       49 GETTABLEKS                       R9 R6 K10 ["subtreeFlags"]
       51 FASTCALL2                        BIT32_BOR R3 R9 ; [+4]
       53 MOVE                             R8 R3
       54 GETIMPORT                        R7 K12 [bit32.bor]
       56 CALL                             R7 2 1
       57 MOVE                             R3 R7
       58 GETTABLEKS                       R9 R6 K13 ["flags"]
       60 FASTCALL2                        BIT32_BOR R3 R9 ; [+4]
       62 MOVE                             R8 R3
       63 GETIMPORT                        R7 K12 [bit32.bor]
       65 CALL                             R7 2 1
       66 MOVE                             R3 R7
       67 GETTABLEKS                       R7 R6 K6 ["actualDuration"]
       69 ADD                              R4 R4 R7
       70 GETTABLEKS                       R7 R6 K14 ["treeBaseDuration"]
       72 ADD                              R5 R5 R7
       73 GETTABLEKS                       R6 R6 K15 ["sibling"]
       75 JUMPBACK                         ; [-39]
       76 SETTABLEKS                       R4 R0 K6 ["actualDuration"]
       78 SETTABLEKS                       R5 R0 K14 ["treeBaseDuration"]
       80 JUMP                             ; [+43]
       81 GETTABLEKS                       R4 R0 K1 ["child"]
       83 JUMPIFEQKNIL                     R4 ; [+40]
       85 GETTABLEKS                       R8 R4 K8 ["lanes"]
       87 GETTABLEKS                       R9 R4 K9 ["childLanes"]
       89 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
       91 GETIMPORT                        R7 K12 [bit32.bor]
       93 CALL                             R7 2 1
       94 FASTCALL2                        BIT32_BOR R2 R7 ; [+4]
       96 MOVE                             R6 R2
       97 GETIMPORT                        R5 K12 [bit32.bor]
       99 CALL                             R5 2 1
      100 MOVE                             R2 R5
      101 GETTABLEKS                       R7 R4 K10 ["subtreeFlags"]
      103 FASTCALL2                        BIT32_BOR R3 R7 ; [+4]
      105 MOVE                             R6 R3
      106 GETIMPORT                        R5 K12 [bit32.bor]
      108 CALL                             R5 2 1
      109 MOVE                             R3 R5
      110 GETTABLEKS                       R7 R4 K13 ["flags"]
      112 FASTCALL2                        BIT32_BOR R3 R7 ; [+4]
      114 MOVE                             R6 R3
      115 GETIMPORT                        R5 K12 [bit32.bor]
      117 CALL                             R5 2 1
      118 MOVE                             R3 R5
      119 SETTABLEKS                       R0 R4 K16 ["return_"]
      121 GETTABLEKS                       R4 R4 K15 ["sibling"]
      123 JUMPBACK                         ; [-41]
      124 GETTABLEKS                       R5 R0 K10 ["subtreeFlags"]
      126 FASTCALL2                        BIT32_BOR R5 R3 ; [+4]
      128 MOVE                             R6 R3
      129 GETIMPORT                        R4 K12 [bit32.bor]
      131 CALL                             R4 2 1
      132 SETTABLEKS                       R4 R0 K10 ["subtreeFlags"]
      134 JUMP                             ; [+133]
      135 GETUPVAL                         R4 2
      136 JUMPIFNOT                        R4 ; [+66]
      137 GETTABLEKS                       R5 R0 K2 ["mode"]
      139 GETUPVAL                         R6 3
      140 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
      142 GETIMPORT                        R4 K5 [bit32.band]
      144 CALL                             R4 2 1
      145 GETUPVAL                         R5 4
      146 JUMPIFEQ                         R4 R5 ; [+56]
      148 GETTABLEKS                       R4 R0 K7 ["selfBaseDuration"]
      150 GETTABLEKS                       R5 R0 K1 ["child"]
      152 JUMPIFEQKNIL                     R5 ; [+47]
      154 GETUPVAL                         R6 5
      155 MOVE                             R7 R2
      156 GETUPVAL                         R8 5
      157 GETTABLEKS                       R9 R5 K8 ["lanes"]
      159 GETTABLEKS                       R10 R5 K9 ["childLanes"]
      161 CALL                             R8 2 -1
      162 CALL                             R6 -1 1
      163 MOVE                             R2 R6
      164 GETTABLEKS                       R9 R5 K10 ["subtreeFlags"]
      166 GETUPVAL                         R10 6
      167 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      169 GETIMPORT                        R8 K5 [bit32.band]
      171 CALL                             R8 2 1
      172 FASTCALL2                        BIT32_BOR R3 R8 ; [+4]
      174 MOVE                             R7 R3
      175 GETIMPORT                        R6 K12 [bit32.bor]
      177 CALL                             R6 2 1
      178 MOVE                             R3 R6
      179 GETTABLEKS                       R9 R5 K13 ["flags"]
      181 GETUPVAL                         R10 6
      182 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      184 GETIMPORT                        R8 K5 [bit32.band]
      186 CALL                             R8 2 1
      187 FASTCALL2                        BIT32_BOR R3 R8 ; [+4]
      189 MOVE                             R7 R3
      190 GETIMPORT                        R6 K12 [bit32.bor]
      192 CALL                             R6 2 1
      193 MOVE                             R3 R6
      194 GETTABLEKS                       R6 R5 K14 ["treeBaseDuration"]
      196 ADD                              R4 R4 R6
      197 GETTABLEKS                       R5 R5 K15 ["sibling"]
      199 JUMPBACK                         ; [-48]
      200 SETTABLEKS                       R4 R0 K14 ["treeBaseDuration"]
      202 JUMP                             ; [+55]
      203 GETTABLEKS                       R4 R0 K1 ["child"]
      205 JUMPIFEQKNIL                     R4 ; [+52]
      207 GETTABLEKS                       R8 R4 K8 ["lanes"]
      209 GETTABLEKS                       R9 R4 K9 ["childLanes"]
      211 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      213 GETIMPORT                        R7 K12 [bit32.bor]
      215 CALL                             R7 2 1
      216 FASTCALL2                        BIT32_BOR R2 R7 ; [+4]
      218 MOVE                             R6 R2
      219 GETIMPORT                        R5 K12 [bit32.bor]
      221 CALL                             R5 2 1
      222 MOVE                             R2 R5
      223 GETTABLEKS                       R8 R4 K10 ["subtreeFlags"]
      225 GETUPVAL                         R9 6
      226 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      228 GETIMPORT                        R7 K5 [bit32.band]
      230 CALL                             R7 2 1
      231 FASTCALL2                        BIT32_BOR R3 R7 ; [+4]
      233 MOVE                             R6 R3
      234 GETIMPORT                        R5 K12 [bit32.bor]
      236 CALL                             R5 2 1
      237 MOVE                             R3 R5
      238 GETTABLEKS                       R8 R4 K13 ["flags"]
      240 GETUPVAL                         R9 6
      241 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      243 GETIMPORT                        R7 K5 [bit32.band]
      245 CALL                             R7 2 1
      246 FASTCALL2                        BIT32_BOR R3 R7 ; [+4]
      248 MOVE                             R6 R3
      249 GETIMPORT                        R5 K12 [bit32.bor]
      251 CALL                             R5 2 1
      252 MOVE                             R3 R5
      253 SETTABLEKS                       R0 R4 K16 ["return_"]
      255 GETTABLEKS                       R4 R4 K15 ["sibling"]
      257 JUMPBACK                         ; [-53]
      258 GETTABLEKS                       R5 R0 K10 ["subtreeFlags"]
      260 FASTCALL2                        BIT32_BOR R5 R3 ; [+4]
      262 MOVE                             R6 R3
      263 GETIMPORT                        R4 K12 [bit32.bor]
      265 CALL                             R4 2 1
      266 SETTABLEKS                       R4 R0 K10 ["subtreeFlags"]
      268 SETTABLEKS                       R2 R0 K9 ["childLanes"]
      270 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["pendingProps"]
        2 GETTABLEKS                       R4 R1 K1 ["tag"]
        4 GETUPVAL                         R5 0
        5 JUMPIFEQ                         R4 R5 ; [+41]
        7 GETTABLEKS                       R4 R1 K1 ["tag"]
        9 GETUPVAL                         R5 1
       10 JUMPIFEQ                         R4 R5 ; [+36]
       12 GETTABLEKS                       R4 R1 K1 ["tag"]
       14 GETUPVAL                         R5 2
       15 JUMPIFEQ                         R4 R5 ; [+31]
       17 GETTABLEKS                       R4 R1 K1 ["tag"]
       19 GETUPVAL                         R5 3
       20 JUMPIFEQ                         R4 R5 ; [+26]
       22 GETTABLEKS                       R4 R1 K1 ["tag"]
       24 GETUPVAL                         R5 4
       25 JUMPIFEQ                         R4 R5 ; [+21]
       27 GETTABLEKS                       R4 R1 K1 ["tag"]
       29 GETUPVAL                         R5 5
       30 JUMPIFEQ                         R4 R5 ; [+16]
       32 GETTABLEKS                       R4 R1 K1 ["tag"]
       34 GETUPVAL                         R5 6
       35 JUMPIFEQ                         R4 R5 ; [+11]
       37 GETTABLEKS                       R4 R1 K1 ["tag"]
       39 GETUPVAL                         R5 7
       40 JUMPIFEQ                         R4 R5 ; [+6]
       42 GETTABLEKS                       R4 R1 K1 ["tag"]
       44 GETUPVAL                         R5 8
       45 JUMPIFNOTEQ                      R4 R5 ; [+6]
       47 GETUPVAL                         R4 9
       48 MOVE                             R5 R1
       49 CALL                             R4 1 0
       50 LOADNIL                          R4
       51 RETURN                           R4 1
       52 GETTABLEKS                       R4 R1 K1 ["tag"]
       54 GETUPVAL                         R5 10
       55 JUMPIFNOTEQ                      R4 R5 ; [+15]
       57 GETTABLEKS                       R4 R1 K2 ["type"]
       59 GETUPVAL                         R5 11
       60 MOVE                             R6 R4
       61 CALL                             R5 1 1
       62 JUMPIFNOT                        R5 ; [+3]
       63 GETUPVAL                         R5 12
       64 MOVE                             R6 R1
       65 CALL                             R5 1 0
       66 GETUPVAL                         R5 9
       67 MOVE                             R6 R1
       68 CALL                             R5 1 0
       69 LOADNIL                          R5
       70 RETURN                           R5 1
       71 GETTABLEKS                       R4 R1 K1 ["tag"]
       73 GETUPVAL                         R5 13
       74 JUMPIFNOTEQ                      R4 R5 ; [+64]
       76 GETUPVAL                         R4 14
       77 MOVE                             R5 R1
       78 CALL                             R4 1 0
       79 GETUPVAL                         R4 15
       80 MOVE                             R5 R1
       81 CALL                             R4 1 0
       82 GETUPVAL                         R4 16
       83 CALL                             R4 0 0
       84 GETTABLEKS                       R4 R1 K3 ["stateNode"]
       86 GETTABLEKS                       R5 R4 K4 ["pendingContext"]
       88 JUMPIFNOT                        R5 ; [+7]
       89 GETTABLEKS                       R5 R4 K4 ["pendingContext"]
       91 SETTABLEKS                       R5 R4 K5 ["context"]
       93 LOADNIL                          R5
       94 SETTABLEKS                       R5 R4 K4 ["pendingContext"]
       96 JUMPIFEQKNIL                     R0 ; [+5]
       98 GETTABLEKS                       R5 R0 K6 ["child"]
      100 JUMPIFNOTEQKNIL                  R5 ; [+29]
      102 GETUPVAL                         R5 17
      103 MOVE                             R6 R1
      104 CALL                             R5 1 1
      105 JUMPIFNOT                        R5 ; [+11]
      106 GETTABLEKS                       R7 R1 K7 ["flags"]
      108 GETUPVAL                         R8 18
      109 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
      111 GETIMPORT                        R6 K10 [bit32.bor]
      113 CALL                             R6 2 1
      114 SETTABLEKS                       R6 R1 K7 ["flags"]
      116 JUMP                             ; [+13]
      117 GETTABLEKS                       R6 R4 K11 ["hydrate"]
      119 JUMPIF                           R6 ; [+10]
      120 GETTABLEKS                       R7 R1 K7 ["flags"]
      122 GETUPVAL                         R8 19
      123 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
      125 GETIMPORT                        R6 K10 [bit32.bor]
      127 CALL                             R6 2 1
      128 SETTABLEKS                       R6 R1 K7 ["flags"]
      130 GETUPVAL                         R5 20
      131 MOVE                             R6 R0
      132 MOVE                             R7 R1
      133 CALL                             R5 2 0
      134 GETUPVAL                         R5 9
      135 MOVE                             R6 R1
      136 CALL                             R5 1 0
      137 LOADNIL                          R5
      138 RETURN                           R5 1
      139 GETTABLEKS                       R4 R1 K1 ["tag"]
      141 GETUPVAL                         R5 21
      142 JUMPIFNOTEQ                      R4 R5 ; [+128]
      144 GETUPVAL                         R4 22
      145 MOVE                             R5 R1
      146 CALL                             R4 1 0
      147 GETUPVAL                         R4 23
      148 CALL                             R4 0 1
      149 GETTABLEKS                       R5 R1 K2 ["type"]
      151 JUMPIFEQKNIL                     R0 ; [+29]
      153 GETTABLEKS                       R6 R1 K3 ["stateNode"]
      155 JUMPIFEQKNIL                     R6 ; [+25]
      157 GETUPVAL                         R6 24
      158 MOVE                             R7 R0
      159 MOVE                             R8 R1
      160 MOVE                             R9 R5
      161 MOVE                             R10 R3
      162 MOVE                             R11 R4
      163 CALL                             R6 5 0
      164 GETTABLEKS                       R6 R0 K12 ["ref"]
      166 GETTABLEKS                       R7 R1 K12 ["ref"]
      168 JUMPIFEQ                         R6 R7 ; [+97]
      170 GETTABLEKS                       R7 R1 K7 ["flags"]
      172 GETUPVAL                         R8 25
      173 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
      175 GETIMPORT                        R6 K10 [bit32.bor]
      177 CALL                             R6 2 1
      178 SETTABLEKS                       R6 R1 K7 ["flags"]
      180 JUMP                             ; [+85]
      181 JUMPIF                           R3 ; [+14]
      182 GETUPVAL                         R6 26
      183 GETTABLEKS                       R8 R1 K3 ["stateNode"]
      185 JUMPIFNOTEQKNIL                  R8 ; [+2]
      187 LOADB                            R7 0 +1
      188 LOADB                            R7 1
      189 LOADK                            R8 K13 ["We must have new props for new mounts. This error is likely caused by a bug in React. Please file an issue."]
      190 CALL                             R6 2 0
      191 GETUPVAL                         R6 9
      192 MOVE                             R7 R1
      193 CALL                             R6 1 0
      194 LOADNIL                          R6
      195 RETURN                           R6 1
      196 GETUPVAL                         R6 27
      197 CALL                             R6 0 1
      198 GETUPVAL                         R7 17
      199 MOVE                             R8 R1
      200 CALL                             R7 1 1
      201 JUMPIFNOT                        R7 ; [+17]
      202 GETUPVAL                         R8 28
      203 MOVE                             R9 R1
      204 MOVE                             R10 R4
      205 MOVE                             R11 R6
      206 CALL                             R8 3 1
      207 JUMPIFNOT                        R8 ; [+44]
      208 GETTABLEKS                       R9 R1 K7 ["flags"]
      210 GETUPVAL                         R10 18
      211 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      213 GETIMPORT                        R8 K10 [bit32.bor]
      215 CALL                             R8 2 1
      216 SETTABLEKS                       R8 R1 K7 ["flags"]
      218 JUMP                             ; [+33]
      219 GETUPVAL                         R8 29
      220 MOVE                             R9 R5
      221 MOVE                             R10 R3
      222 MOVE                             R11 R4
      223 MOVE                             R12 R6
      224 MOVE                             R13 R1
      225 CALL                             R8 5 1
      226 GETUPVAL                         R9 30
      227 MOVE                             R10 R8
      228 MOVE                             R11 R1
      229 LOADB                            R12 0
      230 LOADB                            R13 0
      231 CALL                             R9 4 0
      232 SETTABLEKS                       R8 R1 K3 ["stateNode"]
      234 GETUPVAL                         R9 31
      235 MOVE                             R10 R8
      236 MOVE                             R11 R5
      237 MOVE                             R12 R3
      238 MOVE                             R13 R4
      239 MOVE                             R14 R6
      240 CALL                             R9 5 1
      241 JUMPIFNOT                        R9 ; [+10]
      242 GETTABLEKS                       R10 R1 K7 ["flags"]
      244 GETUPVAL                         R11 18
      245 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      247 GETIMPORT                        R9 K10 [bit32.bor]
      249 CALL                             R9 2 1
      250 SETTABLEKS                       R9 R1 K7 ["flags"]
      252 GETTABLEKS                       R8 R1 K12 ["ref"]
      254 JUMPIFEQKNIL                     R8 ; [+11]
      256 GETTABLEKS                       R9 R1 K7 ["flags"]
      258 GETUPVAL                         R10 25
      259 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      261 GETIMPORT                        R8 K10 [bit32.bor]
      263 CALL                             R8 2 1
      264 SETTABLEKS                       R8 R1 K7 ["flags"]
      266 GETUPVAL                         R6 9
      267 MOVE                             R7 R1
      268 CALL                             R6 1 0
      269 LOADNIL                          R6
      270 RETURN                           R6 1
      271 GETTABLEKS                       R4 R1 K1 ["tag"]
      273 GETUPVAL                         R5 32
      274 JUMPIFNOTEQ                      R4 R5 ; [+67]
      276 JUMPIFNOT                        R0 ; [+13]
      277 GETTABLEKS                       R4 R1 K3 ["stateNode"]
      279 JUMPIFEQKNIL                     R4 ; [+10]
      281 GETTABLEKS                       R4 R0 K14 ["memoizedProps"]
      283 GETUPVAL                         R5 33
      284 MOVE                             R6 R0
      285 MOVE                             R7 R1
      286 MOVE                             R8 R4
      287 MOVE                             R9 R3
      288 CALL                             R5 4 0
      289 JUMP                             ; [+47]
      290 FASTCALL1                        TYPEOF R3 ; [+3]
      291 MOVE                             R5 R3
      292 GETIMPORT                        R4 K16 [typeof]
      294 CALL                             R4 1 1
      295 JUMPIFEQKS                       R4 K17 ["string"] ; [+10]
      297 GETUPVAL                         R4 26
      298 GETTABLEKS                       R6 R1 K3 ["stateNode"]
      300 JUMPIFNOTEQKNIL                  R6 ; [+2]
      302 LOADB                            R5 0 +1
      303 LOADB                            R5 1
      304 LOADK                            R6 K13 ["We must have new props for new mounts. This error is likely caused by a bug in React. Please file an issue."]
      305 CALL                             R4 2 0
      306 GETUPVAL                         R4 23
      307 CALL                             R4 0 1
      308 GETUPVAL                         R5 27
      309 CALL                             R5 0 1
      310 GETUPVAL                         R6 17
      311 MOVE                             R7 R1
      312 CALL                             R6 1 1
      313 JUMPIFNOT                        R6 ; [+15]
      314 GETUPVAL                         R7 34
      315 MOVE                             R8 R1
      316 CALL                             R7 1 1
      317 JUMPIFNOT                        R7 ; [+19]
      318 GETTABLEKS                       R8 R1 K7 ["flags"]
      320 GETUPVAL                         R9 18
      321 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      323 GETIMPORT                        R7 K10 [bit32.bor]
      325 CALL                             R7 2 1
      326 SETTABLEKS                       R7 R1 K7 ["flags"]
      328 JUMP                             ; [+8]
      329 GETUPVAL                         R7 35
      330 MOVE                             R8 R3
      331 MOVE                             R9 R4
      332 MOVE                             R10 R5
      333 MOVE                             R11 R1
      334 CALL                             R7 4 1
      335 SETTABLEKS                       R7 R1 K3 ["stateNode"]
      337 GETUPVAL                         R4 9
      338 MOVE                             R5 R1
      339 CALL                             R4 1 0
      340 LOADNIL                          R4
      341 RETURN                           R4 1
      342 GETTABLEKS                       R4 R1 K1 ["tag"]
      344 GETUPVAL                         R5 36
      345 JUMPIFNOTEQ                      R4 R5 ; [+114]
      347 GETUPVAL                         R4 9
      348 MOVE                             R5 R1
      349 CALL                             R4 1 1
      350 JUMPIF                           R4 ; [+107]
      351 GETUPVAL                         R5 18
      352 GETUPVAL                         R6 37
      353 GETUPVAL                         R7 38
      354 GETTABLEKS                       R8 R1 K18 ["subtreeFlags"]
      356 GETTABLEKS                       R9 R1 K7 ["flags"]
      358 MOVE                             R10 R9
      359 GETUPVAL                         R13 39
      360 FASTCALL2                        BIT32_BAND R9 R13 ; [+4]
      362 MOVE                             R12 R9
      363 GETIMPORT                        R11 K20 [bit32.band]
      365 CALL                             R11 2 1
      366 GETUPVAL                         R12 40
      367 JUMPIFNOTEQ                      R11 R12 ; [+11]
      369 GETUPVAL                         R13 39
      370 FASTCALL2                        BIT32_BAND R8 R13 ; [+4]
      372 MOVE                             R12 R8
      373 GETIMPORT                        R11 K20 [bit32.band]
      375 CALL                             R11 2 1
      376 GETUPVAL                         R12 40
      377 JUMPIFEQ                         R11 R12 ; [+9]
      379 FASTCALL2                        BIT32_BOR R10 R5 ; [+5]
      381 MOVE                             R12 R10
      382 MOVE                             R13 R5
      383 GETIMPORT                        R11 K10 [bit32.bor]
      385 CALL                             R11 2 1
      386 MOVE                             R10 R11
      387 GETUPVAL                         R14 41
      388 GETUPVAL                         R15 42
      389 FASTCALL2                        BIT32_BOR R14 R15 ; [+3]
      391 GETIMPORT                        R13 K10 [bit32.bor]
      393 CALL                             R13 2 1
      394 FASTCALL2                        BIT32_BAND R9 R13 ; [+4]
      396 MOVE                             R12 R9
      397 GETIMPORT                        R11 K20 [bit32.band]
      399 CALL                             R11 2 1
      400 GETUPVAL                         R12 40
      401 JUMPIFNOTEQ                      R11 R12 ; [+17]
      403 GETUPVAL                         R14 41
      404 GETUPVAL                         R15 42
      405 FASTCALL2                        BIT32_BOR R14 R15 ; [+3]
      407 GETIMPORT                        R13 K10 [bit32.bor]
      409 CALL                             R13 2 1
      410 FASTCALL2                        BIT32_BAND R8 R13 ; [+4]
      412 MOVE                             R12 R8
      413 GETIMPORT                        R11 K20 [bit32.band]
      415 CALL                             R11 2 1
      416 GETUPVAL                         R12 40
      417 JUMPIFEQ                         R11 R12 ; [+9]
      419 FASTCALL2                        BIT32_BOR R10 R6 ; [+5]
      421 MOVE                             R12 R10
      422 MOVE                             R13 R6
      423 GETIMPORT                        R11 K10 [bit32.bor]
      425 CALL                             R11 2 1
      426 MOVE                             R10 R11
      427 GETUPVAL                         R13 43
      428 FASTCALL2                        BIT32_BAND R9 R13 ; [+4]
      430 MOVE                             R12 R9
      431 GETIMPORT                        R11 K20 [bit32.band]
      433 CALL                             R11 2 1
      434 GETUPVAL                         R12 40
      435 JUMPIFNOTEQ                      R11 R12 ; [+11]
      437 GETUPVAL                         R13 43
      438 FASTCALL2                        BIT32_BAND R8 R13 ; [+4]
      440 MOVE                             R12 R8
      441 GETIMPORT                        R11 K20 [bit32.band]
      443 CALL                             R11 2 1
      444 GETUPVAL                         R12 40
      445 JUMPIFEQ                         R11 R12 ; [+9]
      447 FASTCALL2                        BIT32_BOR R10 R7 ; [+5]
      449 MOVE                             R12 R10
      450 MOVE                             R13 R7
      451 GETIMPORT                        R11 K10 [bit32.bor]
      453 CALL                             R11 2 1
      454 MOVE                             R10 R11
      455 SETTABLEKS                       R10 R1 K7 ["flags"]
      457 JUMP                             ; [0]
      458 LOADNIL                          R5
      459 RETURN                           R5 1
      460 GETTABLEKS                       R4 R1 K1 ["tag"]
      462 GETUPVAL                         R5 44
      463 JUMPIFNOTEQ                      R4 R5 ; [+291]
      465 GETUPVAL                         R4 45
      466 MOVE                             R5 R1
      467 CALL                             R4 1 0
      468 GETTABLEKS                       R4 R1 K21 ["memoizedState"]
      470 GETUPVAL                         R5 46
      471 JUMPIFNOT                        R5 ; [+114]
      472 JUMPIFEQKNIL                     R4 ; [+113]
      474 GETTABLEKS                       R5 R4 K22 ["dehydrated"]
      476 JUMPIFEQKNIL                     R5 ; [+109]
      478 JUMPIFNOTEQKNIL                  R0 ; [+47]
      480 GETUPVAL                         R5 17
      481 MOVE                             R6 R1
      482 CALL                             R5 1 1
      483 GETUPVAL                         R6 26
      484 MOVE                             R7 R5
      485 LOADK                            R8 K23 ["A dehydrated suspense component was completed without a hydrated node. This is probably a bug in React."]
      486 CALL                             R6 2 0
      487 GETUPVAL                         R6 47
      488 MOVE                             R7 R1
      489 CALL                             R6 1 0
      490 GETUPVAL                         R6 48
      491 JUMPIFNOT                        R6 ; [+3]
      492 GETUPVAL                         R6 49
      493 GETUPVAL                         R7 50
      494 CALL                             R6 1 0
      495 GETUPVAL                         R6 9
      496 MOVE                             R7 R1
      497 CALL                             R6 1 0
      498 GETUPVAL                         R6 51
      499 JUMPIFNOT                        R6 ; [+24]
      500 GETTABLEKS                       R7 R1 K24 ["mode"]
      502 GETUPVAL                         R8 52
      503 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
      505 GETIMPORT                        R6 K20 [bit32.band]
      507 CALL                             R6 2 1
      508 GETUPVAL                         R7 53
      509 JUMPIFEQ                         R6 R7 ; [+14]
      511 JUMPIFNOTEQKNIL                  R4 ; [+2]
      513 LOADB                            R6 0 +1
      514 LOADB                            R6 1
      515 JUMPIFNOT                        R6 ; [+8]
      516 GETTABLEKS                       R7 R1 K6 ["child"]
      518 JUMPIFEQKNIL                     R7 ; [+5]
      520 GETTABLEKS                       R8 R7 K25 ["treeBaseDuration"]
      522 SETTABLEKS                       R8 R1 K25 ["treeBaseDuration"]
      524 LOADNIL                          R6
      525 RETURN                           R6 1
      526 GETUPVAL                         R5 54
      527 CALL                             R5 0 0
      528 GETTABLEKS                       R6 R1 K7 ["flags"]
      530 GETUPVAL                         R7 55
      531 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
      533 GETIMPORT                        R5 K20 [bit32.band]
      535 CALL                             R5 2 1
      536 GETUPVAL                         R6 40
      537 JUMPIFNOTEQ                      R5 R6 ; [+4]
      539 LOADNIL                          R5
      540 SETTABLEKS                       R5 R1 K21 ["memoizedState"]
      542 GETTABLEKS                       R6 R1 K7 ["flags"]
      544 GETUPVAL                         R7 18
      545 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
      547 GETIMPORT                        R5 K10 [bit32.bor]
      549 CALL                             R5 2 1
      550 SETTABLEKS                       R5 R1 K7 ["flags"]
      552 GETUPVAL                         R5 9
      553 MOVE                             R6 R1
      554 CALL                             R5 1 0
      555 GETUPVAL                         R5 51
      556 JUMPIFNOT                        R5 ; [+27]
      557 GETTABLEKS                       R6 R1 K24 ["mode"]
      559 GETUPVAL                         R7 52
      560 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
      562 GETIMPORT                        R5 K20 [bit32.band]
      564 CALL                             R5 2 1
      565 GETUPVAL                         R6 53
      566 JUMPIFEQ                         R5 R6 ; [+17]
      568 JUMPIFNOTEQKNIL                  R4 ; [+2]
      570 LOADB                            R5 0 +1
      571 LOADB                            R5 1
      572 JUMPIFNOT                        R5 ; [+11]
      573 GETTABLEKS                       R6 R1 K6 ["child"]
      575 JUMPIFEQKNIL                     R6 ; [+8]
      577 GETTABLEKS                       R7 R1 K25 ["treeBaseDuration"]
      579 GETTABLEKS                       R8 R6 K25 ["treeBaseDuration"]
      581 SUB                              R7 R7 R8
      582 SETTABLEKS                       R7 R1 K25 ["treeBaseDuration"]
      584 LOADNIL                          R5
      585 RETURN                           R5 1
      586 GETTABLEKS                       R6 R1 K7 ["flags"]
      588 GETUPVAL                         R7 55
      589 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
      591 GETIMPORT                        R5 K20 [bit32.band]
      593 CALL                             R5 2 1
      594 GETUPVAL                         R6 40
      595 JUMPIFEQ                         R5 R6 ; [+20]
      597 SETTABLEKS                       R2 R1 K26 ["lanes"]
      599 GETUPVAL                         R5 51
      600 JUMPIFNOT                        R5 ; [+14]
      601 GETTABLEKS                       R6 R1 K24 ["mode"]
      603 GETUPVAL                         R7 52
      604 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
      606 GETIMPORT                        R5 K20 [bit32.band]
      608 CALL                             R5 2 1
      609 GETUPVAL                         R6 53
      610 JUMPIFEQ                         R5 R6 ; [+4]
      612 GETUPVAL                         R5 56
      613 MOVE                             R6 R1
      614 CALL                             R5 1 0
      615 RETURN                           R1 1
      616 JUMPIFNOTEQKNIL                  R4 ; [+2]
      618 LOADB                            R5 0 +1
      619 LOADB                            R5 1
      620 LOADB                            R6 0
      621 JUMPIFNOTEQKNIL                  R0 ; [+11]
      623 GETTABLEKS                       R7 R1 K14 ["memoizedProps"]
      625 GETTABLEKS                       R7 R7 K27 ["fallback"]
      627 JUMPIFEQKNIL                     R7 ; [+11]
      629 GETUPVAL                         R7 17
      630 MOVE                             R8 R1
      631 CALL                             R7 1 0
      632 JUMP                             ; [+6]
      633 GETTABLEKS                       R7 R0 K21 ["memoizedState"]
      635 JUMPIFNOTEQKNIL                  R7 ; [+2]
      637 LOADB                            R6 0 +1
      638 LOADB                            R6 1
      639 JUMPIFNOT                        R5 ; [+36]
      640 JUMPIF                           R6 ; [+35]
      641 GETTABLEKS                       R8 R1 K24 ["mode"]
      643 GETUPVAL                         R9 57
      644 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      646 GETIMPORT                        R7 K20 [bit32.band]
      648 CALL                             R7 2 1
      649 GETUPVAL                         R8 53
      650 JUMPIFEQ                         R7 R8 ; [+25]
      652 LOADB                            R7 0
      653 JUMPIFNOTEQKNIL                  R0 ; [+9]
      655 GETTABLEKS                       R8 R1 K14 ["memoizedProps"]
      657 GETTABLEKS                       R8 R8 K28 ["unstable_avoidThisFallback"]
      659 JUMPIFNOTEQKB                    R8 TRUE ; [+2]
      661 LOADB                            R7 0 +1
      662 LOADB                            R7 1
      663 JUMPIF                           R7 ; [+7]
      664 GETUPVAL                         R8 58
      665 GETUPVAL                         R9 59
      666 GETTABLEKS                       R9 R9 K29 ["current"]
      668 GETUPVAL                         R10 60
      669 CALL                             R8 2 1
      670 JUMPIFNOT                        R8 ; [+3]
      671 GETUPVAL                         R8 61
      672 CALL                             R8 0 0
      673 JUMP                             ; [+2]
      674 GETUPVAL                         R8 62
      675 CALL                             R8 0 0
      676 GETUPVAL                         R7 63
      677 JUMPIFNOT                        R7 ; [+11]
      678 JUMPIFNOT                        R5 ; [+10]
      679 GETTABLEKS                       R8 R1 K7 ["flags"]
      681 GETUPVAL                         R9 18
      682 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      684 GETIMPORT                        R7 K10 [bit32.bor]
      686 CALL                             R7 2 1
      687 SETTABLEKS                       R7 R1 K7 ["flags"]
      689 GETUPVAL                         R7 64
      690 JUMPIFNOT                        R7 ; [+12]
      691 JUMPIF                           R5 ; [+1]
      692 JUMPIFNOT                        R6 ; [+10]
      693 GETTABLEKS                       R8 R1 K7 ["flags"]
      695 GETUPVAL                         R9 18
      696 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      698 GETIMPORT                        R7 K10 [bit32.bor]
      700 CALL                             R7 2 1
      701 SETTABLEKS                       R7 R1 K7 ["flags"]
      703 GETUPVAL                         R7 65
      704 JUMPIFNOT                        R7 ; [+20]
      705 GETTABLEKS                       R7 R1 K30 ["updateQueue"]
      707 JUMPIFEQKNIL                     R7 ; [+17]
      709 GETTABLEKS                       R7 R1 K14 ["memoizedProps"]
      711 GETTABLEKS                       R7 R7 K31 ["suspenseCallback"]
      713 JUMPIFEQKNIL                     R7 ; [+11]
      715 GETTABLEKS                       R8 R1 K7 ["flags"]
      717 GETUPVAL                         R9 18
      718 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      720 GETIMPORT                        R7 K10 [bit32.bor]
      722 CALL                             R7 2 1
      723 SETTABLEKS                       R7 R1 K7 ["flags"]
      725 GETUPVAL                         R7 9
      726 MOVE                             R8 R1
      727 CALL                             R7 1 0
      728 GETUPVAL                         R7 51
      729 JUMPIFNOT                        R7 ; [+23]
      730 GETTABLEKS                       R8 R1 K24 ["mode"]
      732 GETUPVAL                         R9 52
      733 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      735 GETIMPORT                        R7 K20 [bit32.band]
      737 CALL                             R7 2 1
      738 GETUPVAL                         R8 53
      739 JUMPIFEQ                         R7 R8 ; [+13]
      741 JUMPIFNOT                        R5 ; [+11]
      742 GETTABLEKS                       R7 R1 K6 ["child"]
      744 JUMPIFEQKNIL                     R7 ; [+8]
      746 GETTABLEKS                       R8 R1 K25 ["treeBaseDuration"]
      748 GETTABLEKS                       R9 R7 K25 ["treeBaseDuration"]
      750 SUB                              R8 R8 R9
      751 SETTABLEKS                       R8 R1 K25 ["treeBaseDuration"]
      753 LOADNIL                          R7
      754 RETURN                           R7 1
      755 GETTABLEKS                       R4 R1 K1 ["tag"]
      757 GETUPVAL                         R5 66
      758 JUMPIFNOTEQ                      R4 R5 ; [+21]
      760 GETUPVAL                         R4 14
      761 MOVE                             R5 R1
      762 CALL                             R4 1 0
      763 GETUPVAL                         R4 20
      764 MOVE                             R5 R0
      765 MOVE                             R6 R1
      766 CALL                             R4 2 0
      767 JUMPIFNOTEQKNIL                  R0 ; [+7]
      769 GETUPVAL                         R4 67
      770 GETTABLEKS                       R5 R1 K3 ["stateNode"]
      772 GETTABLEKS                       R5 R5 K32 ["containerInfo"]
      774 CALL                             R4 1 0
      775 GETUPVAL                         R4 9
      776 MOVE                             R5 R1
      777 CALL                             R4 1 0
      778 LOADNIL                          R4
      779 RETURN                           R4 1
      780 GETTABLEKS                       R4 R1 K1 ["tag"]
      782 GETUPVAL                         R5 68
      783 JUMPIFNOTEQ                      R4 R5 ; [+9]
      785 GETUPVAL                         R4 69
      786 MOVE                             R5 R1
      787 CALL                             R4 1 0
      788 GETUPVAL                         R4 9
      789 MOVE                             R5 R1
      790 CALL                             R4 1 0
      791 LOADNIL                          R4
      792 RETURN                           R4 1
      793 GETTABLEKS                       R4 R1 K1 ["tag"]
      795 GETUPVAL                         R5 70
      796 JUMPIFNOTEQ                      R4 R5 ; [+15]
      798 GETTABLEKS                       R4 R1 K2 ["type"]
      800 GETUPVAL                         R5 11
      801 MOVE                             R6 R4
      802 CALL                             R5 1 1
      803 JUMPIFNOT                        R5 ; [+3]
      804 GETUPVAL                         R5 12
      805 MOVE                             R6 R1
      806 CALL                             R5 1 0
      807 GETUPVAL                         R5 9
      808 MOVE                             R6 R1
      809 CALL                             R5 1 0
      810 LOADNIL                          R5
      811 RETURN                           R5 1
      812 GETTABLEKS                       R4 R1 K1 ["tag"]
      814 GETUPVAL                         R5 71
      815 JUMPIFNOTEQ                      R4 R5 ; [+25]
      817 GETIMPORT                        R4 K34 [print]
      819 LOADK                            R5 K35 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      820 CALL                             R4 1 0
      821 GETIMPORT                        R4 K34 [print]
      823 LOADK                            R5 K35 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      824 CALL                             R4 1 0
      825 GETIMPORT                        R4 K34 [print]
      827 LOADK                            R6 K36 ["UNIMPLEMENTED ERROR: "]
      828 LOADK                            R8 K37 ["SuspenseListComponent"]
      829 FASTCALL1                        TOSTRING R8 ; [+2]
      830 GETIMPORT                        R7 K39 [tostring]
      832 CALL                             R7 1 1
      833 CONCAT                           R5 R6 R7
      834 CALL                             R4 1 0
      835 GETIMPORT                        R4 K41 [error]
      837 LOADK                            R5 K42 ["FIXME (roblox): SuspenseListComponent is unimplemented"]
      838 LOADN                            R6 2
      839 CALL                             R4 2 0
      840 JUMP                             ; [+154]
      841 GETTABLEKS                       R4 R1 K1 ["tag"]
      843 GETUPVAL                         R5 72
      844 JUMPIFNOTEQ                      R4 R5 ; [+25]
      846 GETIMPORT                        R4 K34 [print]
      848 LOADK                            R5 K35 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      849 CALL                             R4 1 0
      850 GETIMPORT                        R4 K34 [print]
      852 LOADK                            R5 K35 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      853 CALL                             R4 1 0
      854 GETIMPORT                        R4 K34 [print]
      856 LOADK                            R6 K36 ["UNIMPLEMENTED ERROR: "]
      857 LOADK                            R8 K43 ["FundamentalComponent"]
      858 FASTCALL1                        TOSTRING R8 ; [+2]
      859 GETIMPORT                        R7 K39 [tostring]
      861 CALL                             R7 1 1
      862 CONCAT                           R5 R6 R7
      863 CALL                             R4 1 0
      864 GETIMPORT                        R4 K41 [error]
      866 LOADK                            R5 K44 ["FIXME (roblox): FundamentalComponent is unimplemented"]
      867 LOADN                            R6 2
      868 CALL                             R4 2 0
      869 JUMP                             ; [+125]
      870 GETTABLEKS                       R4 R1 K1 ["tag"]
      872 GETUPVAL                         R5 73
      873 JUMPIFNOTEQ                      R4 R5 ; [+25]
      875 GETIMPORT                        R4 K34 [print]
      877 LOADK                            R5 K35 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      878 CALL                             R4 1 0
      879 GETIMPORT                        R4 K34 [print]
      881 LOADK                            R5 K35 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      882 CALL                             R4 1 0
      883 GETIMPORT                        R4 K34 [print]
      885 LOADK                            R6 K36 ["UNIMPLEMENTED ERROR: "]
      886 LOADK                            R8 K45 ["ScopeComponent"]
      887 FASTCALL1                        TOSTRING R8 ; [+2]
      888 GETIMPORT                        R7 K39 [tostring]
      890 CALL                             R7 1 1
      891 CONCAT                           R5 R6 R7
      892 CALL                             R4 1 0
      893 GETIMPORT                        R4 K41 [error]
      895 LOADK                            R5 K46 ["FIXME (roblox): ScopeComponent is unimplemented"]
      896 LOADN                            R6 2
      897 CALL                             R4 2 0
      898 JUMP                             ; [+96]
      899 GETTABLEKS                       R4 R1 K1 ["tag"]
      901 GETUPVAL                         R5 74
      902 JUMPIFNOTEQ                      R4 R5 ; [+25]
      904 GETIMPORT                        R4 K34 [print]
      906 LOADK                            R5 K35 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      907 CALL                             R4 1 0
      908 GETIMPORT                        R4 K34 [print]
      910 LOADK                            R5 K35 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      911 CALL                             R4 1 0
      912 GETIMPORT                        R4 K34 [print]
      914 LOADK                            R6 K36 ["UNIMPLEMENTED ERROR: "]
      915 LOADK                            R8 K47 ["Block"]
      916 FASTCALL1                        TOSTRING R8 ; [+2]
      917 GETIMPORT                        R7 K39 [tostring]
      919 CALL                             R7 1 1
      920 CONCAT                           R5 R6 R7
      921 CALL                             R4 1 0
      922 GETIMPORT                        R4 K41 [error]
      924 LOADK                            R5 K48 ["FIXME (roblox): Block is unimplemented"]
      925 LOADN                            R6 2
      926 CALL                             R4 2 0
      927 JUMP                             ; [+67]
      928 GETTABLEKS                       R4 R1 K1 ["tag"]
      930 GETUPVAL                         R5 75
      931 JUMPIFEQ                         R4 R5 ; [+6]
      933 GETTABLEKS                       R4 R1 K1 ["tag"]
      935 GETUPVAL                         R5 76
      936 JUMPIFNOTEQ                      R4 R5 ; [+58]
      938 GETUPVAL                         R4 77
      939 MOVE                             R5 R1
      940 CALL                             R4 1 0
      941 GETTABLEKS                       R4 R1 K21 ["memoizedState"]
      943 JUMPIFNOTEQKNIL                  R4 ; [+2]
      945 LOADB                            R5 0 +1
      946 LOADB                            R5 1
      947 JUMPIFEQKNIL                     R0 ; [+23]
      949 GETTABLEKS                       R6 R0 K21 ["memoizedState"]
      951 JUMPIFNOTEQKNIL                  R6 ; [+2]
      953 LOADB                            R7 0 +1
      954 LOADB                            R7 1
      955 JUMPIFEQ                         R7 R5 ; [+15]
      957 GETTABLEKS                       R8 R3 K24 ["mode"]
      959 JUMPIFEQKS                       R8 K49 ["unstable-defer-without-hiding"] ; [+11]
      961 GETTABLEKS                       R9 R1 K7 ["flags"]
      963 GETUPVAL                         R10 18
      964 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      966 GETIMPORT                        R8 K10 [bit32.bor]
      968 CALL                             R8 2 1
      969 SETTABLEKS                       R8 R1 K7 ["flags"]
      971 JUMPIFNOT                        R5 ; [+18]
      972 GETUPVAL                         R6 78
      973 GETUPVAL                         R7 79
      974 GETTABLEKS                       R7 R7 K50 ["subtreeRenderLanes"]
      976 GETUPVAL                         R8 50
      977 CALL                             R6 2 1
      978 JUMPIF                           R6 ; [+11]
      979 GETTABLEKS                       R7 R1 K24 ["mode"]
      981 GETUPVAL                         R8 80
      982 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
      984 GETIMPORT                        R6 K20 [bit32.band]
      986 CALL                             R6 2 1
      987 GETUPVAL                         R7 53
      988 JUMPIFNOTEQ                      R6 R7 ; [+4]
      990 GETUPVAL                         R6 9
      991 MOVE                             R7 R1
      992 CALL                             R6 1 0
      993 LOADNIL                          R6
      994 RETURN                           R6 1
      995 GETUPVAL                         R4 26
      996 LOADB                            R5 0
      997 LOADK                            R6 K51 ["Unknown unit of work tag (%s). This error is likely caused by a bug in React. Please file an issue."]
      998 GETTABLEKS                       R8 R1 K1 ["tag"]
     1000 FASTCALL1                        TOSTRING R8 ; [+2]
     1001 GETIMPORT                        R7 K39 [tostring]
     1003 CALL                             R7 1 1
     1004 CALL                             R4 3 0
     1005 LOADNIL                          R4
     1006 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K2 [script]
        4 GETTABLEKS                       R1 R1 K3 ["Parent"]
        6 GETTABLEKS                       R1 R1 K3 ["Parent"]
        8 GETIMPORT                        R2 K5 [require]
       10 GETIMPORT                        R3 K2 [script]
       12 GETTABLEKS                       R3 R3 K3 ["Parent"]
       14 GETTABLEKS                       R3 R3 K6 ["ReactInternalTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETIMPORT                        R4 K2 [script]
       21 GETTABLEKS                       R4 R4 K3 ["Parent"]
       23 GETTABLEKS                       R4 R4 K7 ["ReactFiberLane"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K8 ["OffscreenLane"]
       28 GETIMPORT                        R5 K5 [require]
       30 GETIMPORT                        R6 K2 [script]
       32 GETTABLEKS                       R6 R6 K3 ["Parent"]
       34 GETTABLEKS                       R6 R6 K9 ["ReactFiberHostConfig"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETIMPORT                        R7 K2 [script]
       41 GETTABLEKS                       R7 R7 K3 ["Parent"]
       43 GETTABLEKS                       R7 R7 K10 ["ReactFiberOffscreenComponent"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETIMPORT                        R9 K2 [script]
       50 GETTABLEKS                       R9 R9 K3 ["Parent"]
       52 GETTABLEKS                       R8 R9 K11 ["ReactMutableSource.new"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R7 K12 ["resetWorkInProgressVersions"]
       57 GETIMPORT                        R9 K5 [require]
       59 GETIMPORT                        R10 K2 [script]
       61 GETTABLEKS                       R10 R10 K3 ["Parent"]
       63 GETTABLEKS                       R10 R10 K13 ["ReactWorkTags"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R9 K14 ["IndeterminateComponent"]
       68 GETTABLEKS                       R11 R9 K15 ["FunctionComponent"]
       70 GETTABLEKS                       R12 R9 K16 ["ClassComponent"]
       72 GETTABLEKS                       R13 R9 K17 ["HostRoot"]
       74 GETTABLEKS                       R14 R9 K18 ["HostComponent"]
       76 GETTABLEKS                       R15 R9 K19 ["HostText"]
       78 GETTABLEKS                       R16 R9 K20 ["HostPortal"]
       80 GETTABLEKS                       R17 R9 K21 ["ContextProvider"]
       82 GETTABLEKS                       R18 R9 K22 ["ContextConsumer"]
       84 GETTABLEKS                       R19 R9 K23 ["ForwardRef"]
       86 GETTABLEKS                       R20 R9 K24 ["Fragment"]
       88 GETTABLEKS                       R21 R9 K25 ["Mode"]
       90 GETTABLEKS                       R22 R9 K26 ["Profiler"]
       92 GETTABLEKS                       R23 R9 K27 ["SuspenseComponent"]
       94 GETTABLEKS                       R24 R9 K28 ["SuspenseListComponent"]
       96 GETTABLEKS                       R25 R9 K29 ["MemoComponent"]
       98 GETTABLEKS                       R26 R9 K30 ["SimpleMemoComponent"]
      100 GETTABLEKS                       R27 R9 K31 ["LazyComponent"]
      102 GETTABLEKS                       R28 R9 K32 ["IncompleteClassComponent"]
      104 GETTABLEKS                       R29 R9 K33 ["FundamentalComponent"]
      106 GETTABLEKS                       R30 R9 K34 ["ScopeComponent"]
      108 GETTABLEKS                       R31 R9 K35 ["Block"]
      110 GETTABLEKS                       R32 R9 K36 ["OffscreenComponent"]
      112 GETTABLEKS                       R33 R9 K37 ["LegacyHiddenComponent"]
      114 GETIMPORT                        R34 K5 [require]
      116 GETIMPORT                        R36 K2 [script]
      118 GETTABLEKS                       R36 R36 K3 ["Parent"]
      120 GETTABLEKS                       R35 R36 K38 ["ReactFiberSuspenseComponent.new"]
      122 CALL                             R34 1 1
      123 GETIMPORT                        R35 K5 [require]
      125 GETIMPORT                        R36 K2 [script]
      127 GETTABLEKS                       R36 R36 K3 ["Parent"]
      129 GETTABLEKS                       R36 R36 K39 ["ReactTypeOfMode"]
      131 CALL                             R35 1 1
      132 GETTABLEKS                       R36 R35 K40 ["NoMode"]
      134 GETTABLEKS                       R37 R35 K41 ["ConcurrentMode"]
      136 GETTABLEKS                       R38 R35 K42 ["BlockingMode"]
      138 GETTABLEKS                       R39 R35 K43 ["ProfileMode"]
      140 GETIMPORT                        R40 K5 [require]
      142 GETIMPORT                        R41 K2 [script]
      144 GETTABLEKS                       R41 R41 K3 ["Parent"]
      146 GETTABLEKS                       R41 R41 K44 ["ReactFiberFlags"]
      148 CALL                             R40 1 1
      149 GETTABLEKS                       R41 R40 K45 ["Ref"]
      151 GETTABLEKS                       R42 R40 K46 ["Update"]
      153 GETTABLEKS                       R43 R40 K47 ["Callback"]
      155 GETTABLEKS                       R44 R40 K48 ["Passive"]
      157 GETTABLEKS                       R45 R40 K49 ["Deletion"]
      159 GETTABLEKS                       R46 R40 K50 ["NoFlags"]
      161 GETTABLEKS                       R47 R40 K51 ["DidCapture"]
      163 GETTABLEKS                       R48 R40 K52 ["Snapshot"]
      165 GETTABLEKS                       R49 R40 K53 ["MutationMask"]
      167 GETTABLEKS                       R50 R40 K54 ["LayoutMask"]
      169 GETTABLEKS                       R51 R40 K55 ["PassiveMask"]
      171 GETTABLEKS                       R52 R40 K56 ["StaticMask"]
      173 GETTABLEKS                       R53 R40 K57 ["PerformedWork"]
      175 GETIMPORT                        R54 K5 [require]
      177 GETTABLEKS                       R55 R1 K58 ["Shared"]
      179 CALL                             R54 1 1
      180 GETTABLEKS                       R54 R54 K59 ["invariant"]
      182 GETTABLEKS                       R55 R5 K60 ["createInstance"]
      184 GETTABLEKS                       R56 R5 K61 ["createTextInstance"]
      186 GETTABLEKS                       R57 R5 K62 ["appendInitialChild"]
      188 GETTABLEKS                       R58 R5 K63 ["finalizeInitialChildren"]
      190 GETTABLEKS                       R59 R5 K64 ["prepareUpdate"]
      192 GETTABLEKS                       R60 R5 K65 ["supportsMutation"]
      194 GETTABLEKS                       R61 R5 K66 ["supportsPersistence"]
      196 GETTABLEKS                       R62 R5 K67 ["createContainerChildSet"]
      198 GETTABLEKS                       R63 R5 K68 ["finalizeContainerChildren"]
      200 GETTABLEKS                       R64 R5 K69 ["preparePortalMount"]
      202 GETIMPORT                        R65 K5 [require]
      204 GETIMPORT                        R67 K2 [script]
      206 GETTABLEKS                       R67 R67 K3 ["Parent"]
      208 GETTABLEKS                       R66 R67 K70 ["ReactFiberHostContext.new"]
      210 CALL                             R65 1 1
      211 GETTABLEKS                       R66 R65 K71 ["getRootHostContainer"]
      213 GETTABLEKS                       R67 R65 K72 ["popHostContext"]
      215 GETTABLEKS                       R68 R65 K73 ["getHostContext"]
      217 GETTABLEKS                       R69 R65 K74 ["popHostContainer"]
      219 GETIMPORT                        R70 K5 [require]
      221 GETIMPORT                        R72 K2 [script]
      223 GETTABLEKS                       R72 R72 K3 ["Parent"]
      225 GETTABLEKS                       R71 R72 K75 ["ReactFiberSuspenseContext.new"]
      227 CALL                             R70 1 1
      228 GETTABLEKS                       R71 R70 K76 ["popSuspenseContext"]
      230 GETTABLEKS                       R72 R70 K77 ["suspenseStackCursor"]
      232 GETTABLEKS                       R73 R70 K78 ["InvisibleParentSuspenseContext"]
      234 GETTABLEKS                       R74 R70 K79 ["hasSuspenseContext"]
      236 GETIMPORT                        R75 K5 [require]
      238 GETIMPORT                        R77 K2 [script]
      240 GETTABLEKS                       R77 R77 K3 ["Parent"]
      242 GETTABLEKS                       R76 R77 K80 ["ReactFiberContext.new"]
      244 CALL                             R75 1 1
      245 GETTABLEKS                       R76 R75 K81 ["isContextProvider"]
      247 GETTABLEKS                       R77 R75 K82 ["popContext"]
      249 GETTABLEKS                       R78 R75 K83 ["popTopLevelContextObject"]
      251 GETIMPORT                        R79 K5 [require]
      253 GETIMPORT                        R81 K2 [script]
      255 GETTABLEKS                       R81 R81 K3 ["Parent"]
      257 GETTABLEKS                       R80 R81 K84 ["ReactFiberNewContext.new"]
      259 CALL                             R79 1 1
      260 GETTABLEKS                       R79 R79 K85 ["popProvider"]
      262 GETIMPORT                        R80 K5 [require]
      264 GETIMPORT                        R82 K2 [script]
      266 GETTABLEKS                       R82 R82 K3 ["Parent"]
      268 GETTABLEKS                       R81 R82 K86 ["ReactFiberHydrationContext.new"]
      270 CALL                             R80 1 1
      271 GETTABLEKS                       R81 R80 K87 ["prepareToHydrateHostSuspenseInstance"]
      273 GETTABLEKS                       R82 R80 K88 ["popHydrationState"]
      275 GETTABLEKS                       R83 R80 K89 ["resetHydrationState"]
      277 GETTABLEKS                       R84 R80 K90 ["prepareToHydrateHostInstance"]
      279 GETTABLEKS                       R85 R80 K91 ["prepareToHydrateHostTextInstance"]
      281 GETIMPORT                        R86 K5 [require]
      283 GETTABLEKS                       R87 R1 K58 ["Shared"]
      285 CALL                             R86 1 1
      286 GETTABLEKS                       R86 R86 K92 ["ReactFeatureFlags"]
      288 GETTABLEKS                       R87 R86 K93 ["enableSchedulerTracing"]
      290 GETTABLEKS                       R88 R86 K94 ["enableSuspenseCallback"]
      292 GETTABLEKS                       R89 R86 K95 ["enableSuspenseServerRenderer"]
      294 GETTABLEKS                       R90 R86 K96 ["enableFundamentalAPI"]
      296 GETTABLEKS                       R91 R86 K97 ["enableProfilerTimer"]
      298 GETIMPORT                        R92 K5 [require]
      300 GETIMPORT                        R94 K2 [script]
      302 GETTABLEKS                       R94 R94 K3 ["Parent"]
      304 GETTABLEKS                       R93 R94 K98 ["ReactFiberWorkLoop.new"]
      306 CALL                             R92 1 1
      307 GETTABLEKS                       R93 R92 K99 ["popRenderLanes"]
      309 GETTABLEKS                       R94 R92 K100 ["markSpawnedWork"]
      311 GETTABLEKS                       R95 R92 K101 ["renderDidSuspend"]
      313 GETTABLEKS                       R96 R92 K102 ["renderDidSuspendDelayIfPossible"]
      315 GETTABLEKS                       R97 R3 K103 ["NoLanes"]
      317 GETTABLEKS                       R98 R3 K104 ["includesSomeLane"]
      319 GETTABLEKS                       R99 R3 K105 ["mergeLanes"]
      321 GETIMPORT                        R100 K5 [require]
      323 GETIMPORT                        R102 K2 [script]
      325 GETTABLEKS                       R102 R102 K3 ["Parent"]
      327 GETTABLEKS                       R101 R102 K106 ["ReactProfilerTimer.new"]
      329 CALL                             R100 1 1
      330 GETTABLEKS                       R101 R100 K107 ["transferActualDuration"]
      332 DUPCLOSURE                       R102 K108 [PROTO_1]
      333 CAPTURE                          VAL R42
      334 DUPCLOSURE                       R103 K109 [PROTO_2]
      335 CAPTURE                          VAL R41
      336 DUPCLOSURE                       R104 K110 [PROTO_3]
      337 CAPTURE                          VAL R49
      338 CAPTURE                          VAL R46
      339 LOADNIL                          R105
      340 LOADNIL                          R106
      341 LOADNIL                          R107
      342 LOADNIL                          R108
      343 JUMPIFNOT                        R60 ; [+15]
      344 DUPCLOSURE                       R105 K111 [PROTO_4]
      345 CAPTURE                          VAL R14
      346 CAPTURE                          VAL R15
      347 CAPTURE                          VAL R57
      348 CAPTURE                          VAL R90
      349 CAPTURE                          VAL R29
      350 CAPTURE                          VAL R16
      351 DUPCLOSURE                       R106 K112 [PROTO_5]
      352 DUPCLOSURE                       R107 K113 [PROTO_6]
      353 CAPTURE                          VAL R68
      354 CAPTURE                          VAL R59
      355 CAPTURE                          VAL R42
      356 DUPCLOSURE                       R108 K114 [PROTO_7]
      357 CAPTURE                          VAL R42
      358 JUMP                             ; [+10]
      359 JUMPIFNOT                        R61 ; [+8]
      360 DUPCLOSURE                       R105 K115 [PROTO_8]
      361 DUPCLOSURE                       R109 K116 [PROTO_9]
      362 DUPCLOSURE                       R106 K117 [PROTO_10]
      363 CAPTURE                          VAL R104
      364 CAPTURE                          VAL R62
      365 CAPTURE                          VAL R42
      366 CAPTURE                          VAL R63
      367 JUMP                             ; [+1]
      368 DUPCLOSURE                       R106 K118 [PROTO_11]
      369 DUPCLOSURE                       R109 K119 [PROTO_12]
      370 CAPTURE                          VAL R97
      371 CAPTURE                          VAL R46
      372 CAPTURE                          VAL R91
      373 CAPTURE                          VAL R39
      374 CAPTURE                          VAL R36
      375 CAPTURE                          VAL R99
      376 CAPTURE                          VAL R52
      377 NEWCLOSURE                       R110 P13
      378 CAPTURE                          VAL R10
      379 CAPTURE                          VAL R27
      380 CAPTURE                          VAL R26
      381 CAPTURE                          VAL R11
      382 CAPTURE                          VAL R19
      383 CAPTURE                          VAL R20
      384 CAPTURE                          VAL R21
      385 CAPTURE                          VAL R18
      386 CAPTURE                          VAL R25
      387 CAPTURE                          VAL R109
      388 CAPTURE                          VAL R12
      389 CAPTURE                          VAL R76
      390 CAPTURE                          VAL R77
      391 CAPTURE                          VAL R13
      392 CAPTURE                          VAL R69
      393 CAPTURE                          VAL R78
      394 CAPTURE                          VAL R8
      395 CAPTURE                          VAL R82
      396 CAPTURE                          VAL R42
      397 CAPTURE                          VAL R48
      398 CAPTURE                          REF R106
      399 CAPTURE                          VAL R14
      400 CAPTURE                          VAL R67
      401 CAPTURE                          VAL R66
      402 CAPTURE                          REF R107
      403 CAPTURE                          VAL R41
      404 CAPTURE                          VAL R54
      405 CAPTURE                          VAL R68
      406 CAPTURE                          VAL R84
      407 CAPTURE                          VAL R55
      408 CAPTURE                          REF R105
      409 CAPTURE                          VAL R58
      410 CAPTURE                          VAL R15
      411 CAPTURE                          REF R108
      412 CAPTURE                          VAL R85
      413 CAPTURE                          VAL R56
      414 CAPTURE                          VAL R22
      415 CAPTURE                          VAL R43
      416 CAPTURE                          VAL R44
      417 CAPTURE                          VAL R53
      418 CAPTURE                          VAL R46
      419 CAPTURE                          VAL R50
      420 CAPTURE                          VAL R45
      421 CAPTURE                          VAL R51
      422 CAPTURE                          VAL R23
      423 CAPTURE                          VAL R71
      424 CAPTURE                          VAL R89
      425 CAPTURE                          VAL R81
      426 CAPTURE                          VAL R87
      427 CAPTURE                          VAL R94
      428 CAPTURE                          VAL R4
      429 CAPTURE                          VAL R91
      430 CAPTURE                          VAL R39
      431 CAPTURE                          VAL R36
      432 CAPTURE                          VAL R83
      433 CAPTURE                          VAL R47
      434 CAPTURE                          VAL R101
      435 CAPTURE                          VAL R38
      436 CAPTURE                          VAL R74
      437 CAPTURE                          VAL R72
      438 CAPTURE                          VAL R73
      439 CAPTURE                          VAL R95
      440 CAPTURE                          VAL R96
      441 CAPTURE                          VAL R61
      442 CAPTURE                          VAL R60
      443 CAPTURE                          VAL R88
      444 CAPTURE                          VAL R16
      445 CAPTURE                          VAL R64
      446 CAPTURE                          VAL R17
      447 CAPTURE                          VAL R79
      448 CAPTURE                          VAL R28
      449 CAPTURE                          VAL R24
      450 CAPTURE                          VAL R29
      451 CAPTURE                          VAL R30
      452 CAPTURE                          VAL R31
      453 CAPTURE                          VAL R32
      454 CAPTURE                          VAL R33
      455 CAPTURE                          VAL R93
      456 CAPTURE                          VAL R98
      457 CAPTURE                          VAL R92
      458 CAPTURE                          VAL R37
      459 DUPTABLE                         R111 K121 [{"completeWork"}]
      460 SETTABLEKS                       R110 R111 K120 ["completeWork"]
      462 CLOSEUPVALS                      R105
      463 RETURN                           R111 1
