PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 SETUPVAL                         R0 1
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+13]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 1
       12 GETTABLEKS                       R2 R1 K0 ["current"]
       14 RETURN                           R2 1
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+15]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+3]
        5 MOVE                             R1 R0
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+3]
       12 MOVE                             R1 R0
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R2 K0 ["current"]
       16 RETURN                           R1 1
       17 MOVE                             R1 R0
       18 RETURN                           R1 1
       19 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+67]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+56]
       11 JUMPIFEQKNIL                     R0 ; [+53]
       13 GETTABLEKS                       R3 R0 K0 ["render"]
       15 FASTCALL1                        TYPEOF R3 ; [+2]
       16 GETIMPORT                        R2 K2 [typeof]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K3 ["function"] ; [+45]
       21 GETTABLEKS                       R3 R0 K0 ["render"]
       23 GETUPVAL                         R4 0
       24 JUMPIFNOT                        R4 ; [+15]
       25 GETUPVAL                         R4 1
       26 JUMPIFNOTEQKNIL                  R4 ; [+3]
       28 MOVE                             R2 R3
       29 JUMP                             ; [+12]
       30 GETUPVAL                         R4 1
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKNIL                  R4 ; [+3]
       35 MOVE                             R2 R3
       36 JUMP                             ; [+5]
       37 GETTABLEKS                       R2 R4 K4 ["current"]
       39 JUMP                             ; [+2]
       40 MOVE                             R2 R3
       41 JUMP                             ; [0]
       42 GETTABLEKS                       R3 R0 K0 ["render"]
       44 JUMPIFEQ                         R3 R2 ; [+20]
       46 NEWTABLE                         R3 4 0
       48 GETUPVAL                         R4 2
       49 SETTABLEKS                       R4 R3 K5 ["$$typeof"]
       51 SETTABLEKS                       R2 R3 K0 ["render"]
       53 LOADNIL                          R4
       54 SETTABLEKS                       R4 R3 K6 ["displayName"]
       56 GETTABLEKS                       R4 R0 K6 ["displayName"]
       58 JUMPIFEQKNIL                     R4 ; [+5]
       60 GETTABLEKS                       R4 R0 K6 ["displayName"]
       62 SETTABLEKS                       R4 R3 K6 ["displayName"]
       64 RETURN                           R3 1
       65 RETURN                           R0 1
       66 GETTABLEKS                       R2 R1 K4 ["current"]
       68 RETURN                           R2 1
       69 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+100]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+3]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R0 K0 ["elementType"]
        9 GETTABLEKS                       R3 R1 K1 ["type"]
       11 LOADB                            R4 0
       12 FASTCALL1                        TYPEOF R3 ; [+3]
       13 MOVE                             R7 R3
       14 GETIMPORT                        R6 K3 [typeof]
       16 CALL                             R6 1 1
       17 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+6]
       19 JUMPIFEQKNIL                     R3 ; [+4]
       21 GETTABLEKS                       R5 R3 K5 ["$$typeof"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 GETTABLEKS                       R6 R0 K6 ["tag"]
       27 GETUPVAL                         R7 2
       28 JUMPIFNOTEQ                      R6 R7 ; [+10]
       30 FASTCALL1                        TYPEOF R3 ; [+3]
       31 MOVE                             R8 R3
       32 GETIMPORT                        R7 K3 [typeof]
       34 CALL                             R7 1 1
       35 JUMPIFNOTEQKS                    R7 K7 ["function"] ; [+51]
       37 LOADB                            R4 1
       38 JUMP                             ; [+48]
       39 GETUPVAL                         R7 3
       40 JUMPIFNOTEQ                      R6 R7 ; [+15]
       42 FASTCALL1                        TYPEOF R3 ; [+3]
       43 MOVE                             R8 R3
       44 GETIMPORT                        R7 K3 [typeof]
       46 CALL                             R7 1 1
       47 JUMPIFNOTEQKS                    R7 K7 ["function"] ; [+3]
       49 LOADB                            R4 1
       50 JUMP                             ; [+36]
       51 GETUPVAL                         R7 4
       52 JUMPIFNOTEQ                      R5 R7 ; [+34]
       54 LOADB                            R4 1
       55 JUMP                             ; [+31]
       56 GETUPVAL                         R7 5
       57 JUMPIFNOTEQ                      R6 R7 ; [+11]
       59 GETUPVAL                         R7 6
       60 JUMPIFNOTEQ                      R5 R7 ; [+3]
       62 LOADB                            R4 1
       63 JUMP                             ; [+23]
       64 GETUPVAL                         R7 4
       65 JUMPIFNOTEQ                      R5 R7 ; [+21]
       67 LOADB                            R4 1
       68 JUMP                             ; [+18]
       69 GETUPVAL                         R7 7
       70 JUMPIFEQ                         R6 R7 ; [+4]
       72 GETUPVAL                         R7 8
       73 JUMPIFNOTEQ                      R6 R7 ; [+11]
       75 GETUPVAL                         R7 9
       76 JUMPIFNOTEQ                      R5 R7 ; [+3]
       78 LOADB                            R4 1
       79 JUMP                             ; [+7]
       80 GETUPVAL                         R7 4
       81 JUMPIFNOTEQ                      R5 R7 ; [+5]
       83 LOADB                            R4 1
       84 JUMP                             ; [+2]
       85 LOADB                            R7 0
       86 RETURN                           R7 1
       87 JUMPIFNOT                        R4 ; [+12]
       88 GETUPVAL                         R6 1
       89 MOVE                             R7 R2
       90 CALL                             R6 1 1
       91 JUMPIFEQKNIL                     R6 ; [+8]
       93 GETUPVAL                         R7 1
       94 MOVE                             R8 R3
       95 CALL                             R7 1 1
       96 JUMPIFNOTEQ                      R6 R7 ; [+3]
       98 LOADB                            R7 1
       99 RETURN                           R7 1
      100 LOADB                            R6 0
      101 RETURN                           R6 1
      102 LOADB                            R2 0
      103 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+17]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 JUMPIFNOTEQKNIL                  R1 ; [+6]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K0 ["new"]
       12 CALL                             R1 0 1
       13 SETUPVAL                         R1 2
       14 GETUPVAL                         R1 2
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K1 ["add"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["current"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+30]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K0 ["staleFamilies"]
        8 GETTABLEKS                       R3 R1 K1 ["updatedFamilies"]
       10 GETIMPORT                        R4 K3 [require]
       12 GETIMPORT                        R7 K6 [script]
       14 GETTABLEKS                       R6 R7 K7 ["Parent"]
       16 GETTABLEKS                       R5 R6 K4 ["ReactFiberWorkLoop.new"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K8 ["flushPassiveEffects"]
       21 GETTABLEKS                       R6 R4 K9 ["flushSync"]
       23 MOVE                             R7 R5
       24 CALL                             R7 0 0
       25 MOVE                             R7 R6
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CALL                             R7 1 0
       32 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [require]
        2 GETIMPORT                        R4 K4 [script]
        4 GETTABLEKS                       R3 R4 K5 ["Parent"]
        6 GETTABLEKS                       R2 R3 K2 ["ReactFiberReconciler.new"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R0 R1 K6 ["updateContainer"]
       11 MOVE                             R1 R0
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 1
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 CALL                             R1 4 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+36]
        2 GETIMPORT                        R3 K1 [require]
        4 GETIMPORT                        R6 K4 [script]
        6 GETTABLEKS                       R5 R6 K5 ["Parent"]
        8 GETTABLEKS                       R4 R5 K2 ["ReactFiberContext.new"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R2 R3 K6 ["emptyContextObject"]
       13 GETTABLEKS                       R3 R0 K7 ["context"]
       15 JUMPIFEQ                         R3 R2 ; [+2]
       17 RETURN                           R0 0
       18 GETIMPORT                        R3 K1 [require]
       20 GETIMPORT                        R6 K4 [script]
       22 GETTABLEKS                       R5 R6 K5 ["Parent"]
       24 GETTABLEKS                       R4 R5 K8 ["ReactFiberWorkLoop.new"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K9 ["flushPassiveEffects"]
       29 GETTABLEKS                       R5 R3 K10 ["flushSync"]
       31 MOVE                             R6 R4
       32 CALL                             R6 0 0
       33 MOVE                             R6 R5
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R0
       37 CALL                             R6 1 0
       38 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+120]
        2 GETTABLEKS                       R3 R0 K0 ["alternate"]
        4 GETTABLEKS                       R4 R0 K1 ["child"]
        6 GETTABLEKS                       R5 R0 K2 ["sibling"]
        8 GETTABLEKS                       R6 R0 K3 ["tag"]
       10 GETTABLEKS                       R7 R0 K4 ["type"]
       12 LOADNIL                          R8
       13 GETUPVAL                         R9 1
       14 JUMPIFEQ                         R6 R9 ; [+7]
       16 GETUPVAL                         R9 2
       17 JUMPIFEQ                         R6 R9 ; [+4]
       19 GETUPVAL                         R9 3
       20 JUMPIFNOTEQ                      R6 R9 ; [+3]
       22 MOVE                             R8 R7
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R9 4
       25 JUMPIFNOTEQ                      R6 R9 ; [+3]
       27 GETTABLEKS                       R8 R7 K5 ["render"]
       29 GETUPVAL                         R9 5
       30 JUMPIFNOTEQKNIL                  R9 ; [+9]
       32 GETIMPORT                        R9 K7 [error]
       34 GETUPVAL                         R11 6
       35 GETTABLEKS                       R10 R11 K8 ["new"]
       37 LOADK                            R11 K9 ["Expected resolveFamily to be set during hot reload."]
       38 CALL                             R10 1 -1
       39 CALL                             R9 -1 0
       40 LOADB                            R9 0
       41 LOADB                            R10 0
       42 JUMPIFEQKNIL                     R8 ; [+24]
       44 GETUPVAL                         R11 5
       45 MOVE                             R12 R8
       46 CALL                             R11 1 1
       47 JUMPIFEQKNIL                     R11 ; [+19]
       49 MOVE                             R14 R11
       50 NAMECALL                         R12 R2 K10 ["has"]
       52 CALL                             R12 2 1
       53 JUMPIFNOT                        R12 ; [+2]
       54 LOADB                            R10 1
       55 JUMP                             ; [+11]
       56 MOVE                             R14 R11
       57 NAMECALL                         R12 R1 K10 ["has"]
       59 CALL                             R12 2 1
       60 JUMPIFNOT                        R12 ; [+6]
       61 GETUPVAL                         R12 3
       62 JUMPIFNOTEQ                      R6 R12 ; [+3]
       64 LOADB                            R10 1
       65 JUMP                             ; [+1]
       66 LOADB                            R9 1
       67 GETUPVAL                         R11 7
       68 JUMPIFEQKNIL                     R11 ; [+16]
       70 GETUPVAL                         R11 7
       71 MOVE                             R13 R0
       72 NAMECALL                         R11 R11 K10 ["has"]
       74 CALL                             R11 2 1
       75 JUMPIF                           R11 ; [+8]
       76 JUMPIFEQKNIL                     R3 ; [+8]
       78 GETUPVAL                         R11 7
       79 MOVE                             R13 R3
       80 NAMECALL                         R11 R11 K10 ["has"]
       82 CALL                             R11 2 1
       83 JUMPIFNOT                        R11 ; [+1]
       84 LOADB                            R10 1
       85 JUMPIFNOT                        R10 ; [+3]
       86 LOADB                            R11 1
       87 SETTABLEKS                       R11 R0 K11 ["_debugNeedsRemount"]
       89 JUMPIF                           R10 ; [+1]
       90 JUMPIFNOT                        R9 ; [+16]
       91 GETIMPORT                        R11 K13 [require]
       93 GETIMPORT                        R14 K16 [script]
       95 GETTABLEKS                       R13 R14 K17 ["Parent"]
       97 GETTABLEKS                       R12 R13 K14 ["ReactFiberWorkLoop.new"]
       99 CALL                             R11 1 1
      100 GETTABLEKS                       R12 R11 K18 ["scheduleUpdateOnFiber"]
      102 MOVE                             R13 R12
      103 MOVE                             R14 R0
      104 GETUPVAL                         R15 8
      105 GETUPVAL                         R16 9
      106 CALL                             R13 3 0
      107 JUMPIFEQKNIL                     R4 ; [+7]
      109 JUMPIF                           R10 ; [+5]
      110 GETUPVAL                         R11 10
      111 MOVE                             R12 R4
      112 MOVE                             R13 R1
      113 MOVE                             R14 R2
      114 CALL                             R11 3 0
      115 JUMPIFEQKNIL                     R5 ; [+6]
      117 GETUPVAL                         R11 10
      118 MOVE                             R12 R5
      119 MOVE                             R13 R1
      120 MOVE                             R14 R2
      121 CALL                             R11 3 0
      122 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["current"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+21]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["new"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K0 ["new"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K1 ["map"]
       12 MOVE                             R5 R1
       13 DUPCLOSURE                       R6 K2 [PROTO_11]
       14 CALL                             R4 2 -1
       15 CALL                             R3 -1 1
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R5 R0 K3 ["current"]
       19 MOVE                             R6 R3
       20 MOVE                             R7 R2
       21 CALL                             R4 3 0
       22 RETURN                           R2 1
       23 GETIMPORT                        R2 K5 [error]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R3 R4 K0 ["new"]
       28 LOADK                            R4 K6 ["Did not expect findHostInstancesForRefresh to be called in production."]
       29 CALL                             R3 1 -1
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+54]
        2 GETTABLEKS                       R3 R0 K0 ["child"]
        4 GETTABLEKS                       R4 R0 K1 ["sibling"]
        6 GETTABLEKS                       R5 R0 K2 ["tag"]
        8 GETTABLEKS                       R6 R0 K3 ["type"]
       10 LOADNIL                          R7
       11 GETUPVAL                         R8 1
       12 JUMPIFEQ                         R5 R8 ; [+7]
       14 GETUPVAL                         R8 2
       15 JUMPIFEQ                         R5 R8 ; [+4]
       17 GETUPVAL                         R8 3
       18 JUMPIFNOTEQ                      R5 R8 ; [+3]
       20 MOVE                             R7 R6
       21 JUMP                             ; [+5]
       22 GETUPVAL                         R8 4
       23 JUMPIFNOTEQ                      R5 R8 ; [+3]
       25 GETTABLEKS                       R7 R6 K4 ["render"]
       27 LOADB                            R8 0
       28 JUMPIFEQKNIL                     R7 ; [+7]
       30 MOVE                             R11 R7
       31 NAMECALL                         R9 R1 K5 ["has"]
       33 CALL                             R9 2 1
       34 JUMPIFNOT                        R9 ; [+1]
       35 LOADB                            R8 1
       36 JUMPIFNOT                        R8 ; [+5]
       37 GETUPVAL                         R9 5
       38 MOVE                             R10 R0
       39 MOVE                             R11 R2
       40 CALL                             R9 2 0
       41 JUMP                             ; [+7]
       42 JUMPIFEQKNIL                     R3 ; [+6]
       44 GETUPVAL                         R9 6
       45 MOVE                             R10 R3
       46 MOVE                             R11 R1
       47 MOVE                             R12 R2
       48 CALL                             R9 3 0
       49 JUMPIFEQKNIL                     R4 ; [+6]
       51 GETUPVAL                         R9 6
       52 MOVE                             R10 R4
       53 MOVE                             R11 R1
       54 MOVE                             R12 R2
       55 CALL                             R9 3 0
       56 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+55]
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+1]
        7 RETURN                           R0 0
        8 MOVE                             R3 R0
        9 GETTABLEKS                       R4 R3 K0 ["tag"]
       11 GETUPVAL                         R5 2
       12 JUMPIFNOTEQ                      R4 R5 ; [+7]
       14 GETTABLEKS                       R7 R3 K1 ["stateNode"]
       16 NAMECALL                         R5 R1 K2 ["add"]
       18 CALL                             R5 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R5 3
       21 JUMPIFNOTEQ                      R4 R5 ; [+9]
       23 GETTABLEKS                       R8 R3 K1 ["stateNode"]
       25 GETTABLEKS                       R7 R8 K3 ["containerInfo"]
       27 NAMECALL                         R5 R1 K2 ["add"]
       29 CALL                             R5 2 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R5 4
       32 JUMPIFNOTEQ                      R4 R5 ; [+9]
       34 GETTABLEKS                       R8 R3 K1 ["stateNode"]
       36 GETTABLEKS                       R7 R8 K3 ["containerInfo"]
       38 NAMECALL                         R5 R1 K2 ["add"]
       40 CALL                             R5 2 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R5 R3 K4 ["return_"]
       44 JUMPIFNOTEQKNIL                  R5 ; [+9]
       46 GETIMPORT                        R5 K6 [error]
       48 GETUPVAL                         R7 5
       49 GETTABLEKS                       R6 R7 K7 ["new"]
       51 LOADK                            R7 K8 ["Expected to reach root first."]
       52 CALL                             R6 1 -1
       53 CALL                             R5 -1 0
       54 GETTABLEKS                       R3 R3 K4 ["return_"]
       56 JUMPBACK                         ; [-48]
       57 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+65]
        2 MOVE                             R2 R0
        3 LOADB                            R3 0
        4 GETTABLEKS                       R4 R2 K0 ["tag"]
        6 GETUPVAL                         R5 1
        7 JUMPIFNOTEQ                      R4 R5 ; [+8]
        9 LOADB                            R3 1
       10 GETTABLEKS                       R6 R2 K1 ["stateNode"]
       12 NAMECALL                         R4 R1 K2 ["add"]
       14 CALL                             R4 2 0
       15 JUMP                             ; [+11]
       16 GETTABLEKS                       R4 R2 K3 ["child"]
       18 JUMPIFEQKNIL                     R4 ; [+8]
       20 GETTABLEKS                       R4 R2 K3 ["child"]
       22 SETTABLEKS                       R2 R4 K4 ["return_"]
       24 GETTABLEKS                       R2 R2 K3 ["child"]
       26 JUMP                             ; [+39]
       27 JUMPIFNOTEQ                      R2 R0 ; [+2]
       29 RETURN                           R3 1
       30 GETTABLEKS                       R4 R2 K5 ["sibling"]
       32 JUMPIFNOTEQKNIL                  R4 ; [+13]
       34 GETTABLEKS                       R4 R2 K4 ["return_"]
       36 JUMPIFEQKNIL                     R4 ; [+5]
       38 GETTABLEKS                       R4 R2 K4 ["return_"]
       40 JUMPIFNOTEQ                      R4 R0 ; [+2]
       42 RETURN                           R3 1
       43 GETTABLEKS                       R2 R2 K4 ["return_"]
       45 JUMPBACK                         ; [-16]
       46 GETTABLEKS                       R6 R2 K5 ["sibling"]
       48 JUMPIFNOTEQKNIL                  R6 ; [+2]
       50 LOADB                            R5 0 +1
       51 LOADB                            R5 1
       52 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       54 LOADK                            R6 K6 ["should be non-nil"]
       55 GETIMPORT                        R4 K8 [assert]
       57 CALL                             R4 2 0
       58 GETTABLEKS                       R4 R2 K5 ["sibling"]
       60 GETTABLEKS                       R5 R2 K4 ["return_"]
       62 SETTABLEKS                       R5 R4 K4 ["return_"]
       64 GETTABLEKS                       R2 R2 K5 ["sibling"]
       66 JUMPBACK                         ; [-63]
       67 LOADB                            R2 0
       68 RETURN                           R2 1

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
       17 GETTABLEKS                       R3 R2 K7 ["Array"]
       19 GETTABLEKS                       R4 R2 K8 ["Error"]
       21 GETTABLEKS                       R5 R2 K9 ["Set"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Shared"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K4 [require]
       30 GETIMPORT                        R10 K1 [script]
       32 GETTABLEKS                       R9 R10 K2 ["Parent"]
       34 GETTABLEKS                       R8 R9 K11 ["ReactInternalTypes"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K4 [require]
       39 GETIMPORT                        R11 K1 [script]
       41 GETTABLEKS                       R10 R11 K2 ["Parent"]
       43 GETTABLEKS                       R9 R10 K12 ["ReactFiberHostConfig"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K4 [require]
       48 GETIMPORT                        R12 K1 [script]
       50 GETTABLEKS                       R11 R12 K2 ["Parent"]
       52 GETTABLEKS                       R10 R11 K13 ["ReactFiberLane"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R9 K14 ["SyncLane"]
       57 GETTABLEKS                       R11 R9 K15 ["NoTimestamp"]
       59 GETIMPORT                        R12 K4 [require]
       61 GETIMPORT                        R15 K1 [script]
       63 GETTABLEKS                       R14 R15 K2 ["Parent"]
       65 GETTABLEKS                       R13 R14 K16 ["ReactWorkTags"]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R13 R12 K17 ["ClassComponent"]
       70 GETTABLEKS                       R14 R12 K18 ["FunctionComponent"]
       72 GETTABLEKS                       R15 R12 K19 ["ForwardRef"]
       74 GETTABLEKS                       R16 R12 K20 ["HostComponent"]
       76 GETTABLEKS                       R17 R12 K21 ["HostPortal"]
       78 GETTABLEKS                       R18 R12 K22 ["HostRoot"]
       80 GETTABLEKS                       R19 R12 K23 ["MemoComponent"]
       82 GETTABLEKS                       R20 R12 K24 ["SimpleMemoComponent"]
       84 GETIMPORT                        R22 K4 [require]
       86 GETTABLEKS                       R23 R0 K10 ["Shared"]
       88 CALL                             R22 1 1
       89 GETTABLEKS                       R21 R22 K25 ["ReactSymbols"]
       91 GETTABLEKS                       R22 R21 K26 ["REACT_FORWARD_REF_TYPE"]
       93 GETTABLEKS                       R23 R21 K27 ["REACT_MEMO_TYPE"]
       95 GETTABLEKS                       R24 R21 K28 ["REACT_LAZY_TYPE"]
       97 GETTABLEKS                       R25 R1 K29 ["__DEV__"]
       99 LOADNIL                          R26
      100 LOADNIL                          R27
      101 NEWTABLE                         R28 16 0
      103 LOADNIL                          R29
      104 LOADNIL                          R30
      105 LOADNIL                          R31
      106 LOADNIL                          R32
      107 NEWCLOSURE                       R33 P0
      108 CAPTURE                          VAL R25
      109 CAPTURE                          REF R26
      110 SETTABLEKS                       R33 R28 K30 ["setRefreshHandler"]
      112 NEWCLOSURE                       R34 P1
      113 CAPTURE                          VAL R25
      114 CAPTURE                          REF R26
      115 SETTABLEKS                       R34 R28 K31 ["resolveFunctionForHotReloading"]
      117 NEWCLOSURE                       R35 P2
      118 CAPTURE                          VAL R25
      119 CAPTURE                          REF R26
      120 SETTABLEKS                       R35 R28 K32 ["resolveClassForHotReloading"]
      122 NEWCLOSURE                       R36 P3
      123 CAPTURE                          VAL R25
      124 CAPTURE                          REF R26
      125 CAPTURE                          VAL R22
      126 SETTABLEKS                       R36 R28 K33 ["resolveForwardRefForHotReloading"]
      128 NEWCLOSURE                       R37 P4
      129 CAPTURE                          VAL R25
      130 CAPTURE                          REF R26
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R24
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R22
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R23
      139 SETTABLEKS                       R37 R28 K34 ["isCompatibleFamilyForHotReloading"]
      141 NEWCLOSURE                       R38 P5
      142 CAPTURE                          VAL R25
      143 CAPTURE                          REF R26
      144 CAPTURE                          REF R27
      145 CAPTURE                          VAL R5
      146 SETTABLEKS                       R38 R28 K35 ["markFailedErrorBoundaryForHotReloading"]
      148 LOADNIL                          R39
      149 NEWCLOSURE                       R39 P6
      150 CAPTURE                          VAL R25
      151 CAPTURE                          REF R26
      152 CAPTURE                          REF R32
      153 SETTABLEKS                       R39 R28 K36 ["scheduleRefresh"]
      155 LOADNIL                          R40
      156 DUPCLOSURE                       R40 K37 [PROTO_9]
      157 CAPTURE                          VAL R25
      158 SETTABLEKS                       R40 R28 K38 ["scheduleRoot"]
      160 NEWCLOSURE                       R32 P8
      161 CAPTURE                          VAL R25
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R15
      166 CAPTURE                          REF R26
      167 CAPTURE                          VAL R4
      168 CAPTURE                          REF R27
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R11
      171 CAPTURE                          REF R32
      172 LOADNIL                          R41
      173 NEWCLOSURE                       R41 P9
      174 CAPTURE                          VAL R25
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R3
      177 CAPTURE                          REF R31
      178 CAPTURE                          VAL R4
      179 SETTABLEKS                       R41 R28 K39 ["findHostInstancesForRefresh"]
      181 NEWCLOSURE                       R31 P10
      182 CAPTURE                          VAL R25
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R15
      187 CAPTURE                          REF R30
      188 CAPTURE                          REF R31
      189 NEWCLOSURE                       R30 P11
      190 CAPTURE                          VAL R25
      191 CAPTURE                          REF R29
      192 CAPTURE                          VAL R16
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R4
      196 DUPCLOSURE                       R29 K40 [PROTO_15]
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R16
      199 CLOSEUPVALS                      R26
      200 RETURN                           R28 1
