PROTO_0:
        0 DUPTABLE                         R0 K2 [{[1] = 1}]
        1 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["empty"]
        7 CALL                             R2 0 1
        8 SETTABLEKS                       R2 R0 K0 ["children"]
       10 RETURN                           R2 1

PROTO_2:
        0 ADD                              R4 R1 R2
        1 IDIVK                            R3 R4 K0 [2]
        2 GETTABLE                         R4 R0 R3
        3 GETTABLEKS                       R5 R4 K1 ["children"]
        5 JUMPIFNOT                        R5 ; [+3]
        6 GETTABLEKS                       R6 R5 K2 ["treeDescendantCount"]
        8 JUMP                             ; [+1]
        9 LOADN                            R6 1
       10 SETTABLEKS                       R6 R4 K3 ["childNodeTreeCount"]
       12 SUBK                             R6 R3 K4 [1]
       13 JUMPIFNOTLE                      R1 R6 ; [+17]
       15 GETUPVAL                         R7 0
       16 MOVE                             R8 R0
       17 MOVE                             R9 R1
       18 MOVE                             R10 R6
       19 CALL                             R7 3 1
       20 SETTABLEKS                       R7 R4 K5 ["childNodeLeft"]
       22 SETTABLEKS                       R4 R7 K6 ["childNodeParent"]
       24 GETTABLEKS                       R8 R4 K3 ["childNodeTreeCount"]
       26 GETTABLEKS                       R9 R7 K3 ["childNodeTreeCount"]
       28 ADD                              R8 R8 R9
       29 SETTABLEKS                       R8 R4 K3 ["childNodeTreeCount"]
       31 ADDK                             R7 R3 K4 [1]
       32 JUMPIFNOTLE                      R7 R2 ; [+17]
       34 GETUPVAL                         R8 0
       35 MOVE                             R9 R0
       36 MOVE                             R10 R7
       37 MOVE                             R11 R2
       38 CALL                             R8 3 1
       39 SETTABLEKS                       R8 R4 K7 ["childNodeRight"]
       41 SETTABLEKS                       R4 R8 K6 ["childNodeParent"]
       43 GETTABLEKS                       R9 R4 K3 ["childNodeTreeCount"]
       45 GETTABLEKS                       R10 R8 K3 ["childNodeTreeCount"]
       47 ADD                              R9 R9 R10
       48 SETTABLEKS                       R9 R4 K3 ["childNodeTreeCount"]
       50 LOADB                            R8 0
       51 SETTABLEKS                       R8 R4 K8 ["childNodeColor"]
       53 RETURN                           R4 1

PROTO_3:
        0 LENGTH                           R3 R0
        1 JUMPIFEQKN                       R3 K0 [7] ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        7 LOADK                            R3 K1 ["Array count is not at expected limit."]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 0
       12 MOVE                             R2 R0
       13 LOADN                            R3 1
       14 LENGTH                           R4 R0
       15 CALL                             R1 3 1
       16 RETURN                           R1 1

PROTO_4:
        0 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["childNodeRight"]
        2 MOVE                             R2 R3
        3 GETTABLEKS                       R3 R1 K1 ["childNodeParent"]
        5 GETTABLEKS                       R4 R2 K2 ["childNodeLeft"]
        7 GETTABLEKS                       R5 R1 K3 ["childNodeTreeCount"]
        9 GETTABLEKS                       R6 R2 K3 ["childNodeTreeCount"]
       11 SUB                              R5 R5 R6
       12 SETTABLEKS                       R5 R1 K3 ["childNodeTreeCount"]
       14 JUMPIFNOT                        R4 ; [+7]
       15 GETTABLEKS                       R5 R1 K3 ["childNodeTreeCount"]
       17 GETTABLEKS                       R6 R4 K3 ["childNodeTreeCount"]
       19 ADD                              R5 R5 R6
       20 SETTABLEKS                       R5 R1 K3 ["childNodeTreeCount"]
       22 SETTABLEKS                       R4 R1 K0 ["childNodeRight"]
       24 JUMPIFNOT                        R4 ; [+2]
       25 SETTABLEKS                       R1 R4 K1 ["childNodeParent"]
       27 SETTABLEKS                       R3 R2 K1 ["childNodeParent"]
       29 JUMPIF                           R3 ; [+2]
       30 MOVE                             R0 R2
       31 JUMP                             ; [+9]
       32 GETTABLEKS                       R5 R3 K2 ["childNodeLeft"]
       34 JUMPIFNOTEQ                      R1 R5 ; [+4]
       36 SETTABLEKS                       R2 R3 K2 ["childNodeLeft"]
       38 JUMP                             ; [+2]
       39 SETTABLEKS                       R2 R3 K0 ["childNodeRight"]
       41 JUMPIFNOT                        R4 ; [+7]
       42 GETTABLEKS                       R5 R2 K3 ["childNodeTreeCount"]
       44 GETTABLEKS                       R6 R4 K3 ["childNodeTreeCount"]
       46 SUB                              R5 R5 R6
       47 SETTABLEKS                       R5 R2 K3 ["childNodeTreeCount"]
       49 GETTABLEKS                       R5 R2 K3 ["childNodeTreeCount"]
       51 GETTABLEKS                       R6 R1 K3 ["childNodeTreeCount"]
       53 ADD                              R5 R5 R6
       54 SETTABLEKS                       R5 R2 K3 ["childNodeTreeCount"]
       56 SETTABLEKS                       R1 R2 K2 ["childNodeLeft"]
       58 SETTABLEKS                       R2 R1 K1 ["childNodeParent"]
       60 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R3 R1 K0 ["childNodeLeft"]
        2 MOVE                             R2 R3
        3 GETTABLEKS                       R3 R1 K1 ["childNodeParent"]
        5 GETTABLEKS                       R4 R2 K2 ["childNodeRight"]
        7 GETTABLEKS                       R5 R1 K3 ["childNodeTreeCount"]
        9 GETTABLEKS                       R6 R2 K3 ["childNodeTreeCount"]
       11 SUB                              R5 R5 R6
       12 SETTABLEKS                       R5 R1 K3 ["childNodeTreeCount"]
       14 JUMPIFNOT                        R4 ; [+7]
       15 GETTABLEKS                       R5 R1 K3 ["childNodeTreeCount"]
       17 GETTABLEKS                       R6 R4 K3 ["childNodeTreeCount"]
       19 ADD                              R5 R5 R6
       20 SETTABLEKS                       R5 R1 K3 ["childNodeTreeCount"]
       22 SETTABLEKS                       R4 R1 K0 ["childNodeLeft"]
       24 JUMPIFNOT                        R4 ; [+2]
       25 SETTABLEKS                       R1 R4 K1 ["childNodeParent"]
       27 SETTABLEKS                       R3 R2 K1 ["childNodeParent"]
       29 JUMPIF                           R3 ; [+2]
       30 MOVE                             R0 R2
       31 JUMP                             ; [+9]
       32 GETTABLEKS                       R5 R3 K0 ["childNodeLeft"]
       34 JUMPIFNOTEQ                      R1 R5 ; [+4]
       36 SETTABLEKS                       R2 R3 K0 ["childNodeLeft"]
       38 JUMP                             ; [+2]
       39 SETTABLEKS                       R2 R3 K2 ["childNodeRight"]
       41 JUMPIFNOT                        R4 ; [+7]
       42 GETTABLEKS                       R5 R2 K3 ["childNodeTreeCount"]
       44 GETTABLEKS                       R6 R4 K3 ["childNodeTreeCount"]
       46 SUB                              R5 R5 R6
       47 SETTABLEKS                       R5 R2 K3 ["childNodeTreeCount"]
       49 GETTABLEKS                       R5 R2 K3 ["childNodeTreeCount"]
       51 GETTABLEKS                       R6 R1 K3 ["childNodeTreeCount"]
       53 ADD                              R5 R5 R6
       54 SETTABLEKS                       R5 R2 K3 ["childNodeTreeCount"]
       56 SETTABLEKS                       R1 R2 K2 ["childNodeRight"]
       58 SETTABLEKS                       R2 R1 K1 ["childNodeParent"]
       60 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["childNodeParent"]
        2 JUMPIFNOT                        R2 ; [+99]
        3 GETTABLEKS                       R3 R2 K1 ["childNodeColor"]
        5 JUMPIFEQKB                       R3 FALSE ; [+96]
        7 GETTABLEKS                       R4 R2 K0 ["childNodeParent"]
        9 MOVE                             R3 R4
       10 GETTABLEKS                       R4 R3 K2 ["childNodeLeft"]
       12 JUMPIFNOTEQ                      R2 R4 ; [+44]
       14 GETTABLEKS                       R4 R3 K3 ["childNodeRight"]
       16 JUMPIFNOT                        R4 ; [+15]
       17 GETTABLEKS                       R5 R4 K1 ["childNodeColor"]
       19 JUMPIFNOTEQKB                    R5 TRUE ; [+12]
       21 LOADB                            R5 0
       22 SETTABLEKS                       R5 R2 K1 ["childNodeColor"]
       24 LOADB                            R5 0
       25 SETTABLEKS                       R5 R4 K1 ["childNodeColor"]
       27 LOADB                            R5 1
       28 SETTABLEKS                       R5 R3 K1 ["childNodeColor"]
       30 MOVE                             R1 R3
       31 JUMP                             ; [+69]
       32 GETTABLEKS                       R5 R2 K3 ["childNodeRight"]
       34 JUMPIFNOTEQ                      R1 R5 ; [+7]
       36 MOVE                             R1 R2
       37 GETUPVAL                         R5 0
       38 MOVE                             R6 R0
       39 MOVE                             R7 R1
       40 CALL                             R5 2 1
       41 MOVE                             R0 R5
       42 GETTABLEKS                       R6 R1 K0 ["childNodeParent"]
       44 MOVE                             R5 R6
       45 LOADB                            R6 0
       46 SETTABLEKS                       R6 R5 K1 ["childNodeColor"]
       48 LOADB                            R5 1
       49 SETTABLEKS                       R5 R3 K1 ["childNodeColor"]
       51 GETUPVAL                         R5 1
       52 MOVE                             R6 R0
       53 MOVE                             R7 R3
       54 CALL                             R5 2 1
       55 MOVE                             R0 R5
       56 JUMP                             ; [+44]
       57 MOVE                             R4 R3
       58 JUMPIFNOT                        R4 ; [+2]
       59 GETTABLEKS                       R4 R3 K2 ["childNodeLeft"]
       61 JUMPIFNOT                        R4 ; [+15]
       62 GETTABLEKS                       R5 R4 K1 ["childNodeColor"]
       64 JUMPIFNOTEQKB                    R5 TRUE ; [+12]
       66 LOADB                            R5 0
       67 SETTABLEKS                       R5 R2 K1 ["childNodeColor"]
       69 LOADB                            R5 0
       70 SETTABLEKS                       R5 R4 K1 ["childNodeColor"]
       72 LOADB                            R5 1
       73 SETTABLEKS                       R5 R3 K1 ["childNodeColor"]
       75 MOVE                             R1 R3
       76 JUMP                             ; [+24]
       77 GETTABLEKS                       R5 R2 K2 ["childNodeLeft"]
       79 JUMPIFNOTEQ                      R1 R5 ; [+7]
       81 MOVE                             R1 R2
       82 GETUPVAL                         R5 1
       83 MOVE                             R6 R0
       84 MOVE                             R7 R1
       85 CALL                             R5 2 1
       86 MOVE                             R0 R5
       87 GETTABLEKS                       R6 R1 K0 ["childNodeParent"]
       89 MOVE                             R5 R6
       90 LOADB                            R6 0
       91 SETTABLEKS                       R6 R5 K1 ["childNodeColor"]
       93 LOADB                            R5 1
       94 SETTABLEKS                       R5 R3 K1 ["childNodeColor"]
       96 GETUPVAL                         R5 0
       97 MOVE                             R6 R0
       98 MOVE                             R7 R3
       99 CALL                             R5 2 1
      100 MOVE                             R0 R5
      101 JUMPBACK                         ; [-102]
      102 LOADB                            R2 0
      103 SETTABLEKS                       R2 R0 K1 ["childNodeColor"]
      105 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 SETTABLEKS                       R2 R1 K0 ["childNodeTreeCount"]
        5 MOVE                             R3 R0
        6 GETTABLEKS                       R4 R3 K0 ["childNodeTreeCount"]
        8 ADD                              R4 R4 R2
        9 SETTABLEKS                       R4 R3 K0 ["childNodeTreeCount"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R5 R1 K1 ["datum"]
       14 GETTABLEKS                       R6 R3 K1 ["datum"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R4 ; [+9]
       18 GETTABLEKS                       R4 R3 K2 ["childNodeLeft"]
       20 JUMPIFNOT                        R4 ; [+2]
       21 MOVE                             R3 R4
       22 JUMP                             ; [+12]
       23 SETTABLEKS                       R1 R3 K2 ["childNodeLeft"]
       25 JUMP                             ; [+10]
       26 JUMP                             ; [+8]
       27 GETTABLEKS                       R4 R3 K3 ["childNodeRight"]
       29 JUMPIFNOT                        R4 ; [+2]
       30 MOVE                             R3 R4
       31 JUMP                             ; [+3]
       32 SETTABLEKS                       R1 R3 K3 ["childNodeRight"]
       34 JUMP                             ; [+1]
       35 JUMPBACK                         ; [-30]
       36 SETTABLEKS                       R3 R1 K4 ["childNodeParent"]
       38 LOADB                            R4 1
       39 SETTABLEKS                       R4 R1 K5 ["childNodeColor"]
       41 GETUPVAL                         R4 2
       42 MOVE                             R5 R0
       43 MOVE                             R6 R1
       44 CALL                             R4 2 1
       45 RETURN                           R4 1

PROTO_9:
        0 LOADN                            R2 1
        1 LENGTH                           R3 R0
        2 JUMPIFNOTLE                      R2 R3 ; [+15]
        4 ADD                              R5 R2 R3
        5 IDIVK                            R4 R5 K0 [2]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R6 R1 K1 ["datum"]
        9 GETTABLE                         R7 R0 R4
       10 GETTABLEKS                       R7 R7 K1 ["datum"]
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+2]
       14 SUBK                             R3 R4 K2 [1]
       15 JUMP                             ; [+1]
       16 ADDK                             R2 R4 K2 [1]
       17 JUMPBACK                         ; [-16]
       18 FASTCALL3                        TABLE_INSERT R0 R2 R1
       20 MOVE                             R5 R0
       21 MOVE                             R6 R2
       22 MOVE                             R7 R1
       23 GETIMPORT                        R4 K5 [table.insert]
       25 CALL                             R4 3 0
       26 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETTABLEKS                       R3 R2 K0 ["childNodeTreeCount"]
        4 ADD                              R3 R3 R1
        5 SETTABLEKS                       R3 R2 K0 ["childNodeTreeCount"]
        7 GETTABLEKS                       R2 R2 K1 ["childNodeParent"]
        9 JUMPBACK                         ; [-9]
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ensureChildList"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R2 K1 ["treeDescendantCount"]
        7 ADD                              R3 R3 R1
        8 SETTABLEKS                       R3 R2 K1 ["treeDescendantCount"]
       10 GETTABLEKS                       R5 R2 K1 ["treeDescendantCount"]
       12 LOADN                            R6 1
       13 JUMPIFLE                         R6 R5 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       19 LOADK                            R5 K2 ["Tree descendant count went below 1"]
       20 GETIMPORT                        R3 K4 [assert]
       22 CALL                             R3 2 0
       23 GETTABLEKS                       R3 R0 K5 ["childNodeTreeCount"]
       25 JUMPIFNOT                        R3 ; [+10]
       26 MOVE                             R3 R0
       27 JUMPIFNOT                        R3 ; [+8]
       28 GETTABLEKS                       R4 R3 K5 ["childNodeTreeCount"]
       30 ADD                              R4 R4 R1
       31 SETTABLEKS                       R4 R3 K5 ["childNodeTreeCount"]
       33 GETTABLEKS                       R3 R3 K6 ["childNodeParent"]
       35 JUMPBACK                         ; [-9]
       36 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["tree"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R0 K0 ["tree"]
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R0 K0 ["tree"]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R0 K1 ["array"]
       13 JUMPIFNOT                        R2 ; [+35]
       14 LENGTH                           R3 R2
       15 LOADN                            R4 7
       16 JUMPIFNOTLT                      R3 R4 ; [+6]
       18 GETUPVAL                         R3 1
       19 MOVE                             R4 R2
       20 MOVE                             R5 R1
       21 CALL                             R3 2 0
       22 RETURN                           R0 0
       23 LENGTH                           R6 R2
       24 JUMPIFEQKN                       R6 K2 [7] ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       30 LOADK                            R6 K3 ["Array count is not at expected limit."]
       31 GETIMPORT                        R4 K5 [assert]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R3 2
       35 MOVE                             R4 R2
       36 LOADN                            R5 1
       37 LENGTH                           R6 R2
       38 CALL                             R3 3 1
       39 GETUPVAL                         R4 0
       40 MOVE                             R5 R3
       41 MOVE                             R6 R1
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R0 K0 ["tree"]
       45 LOADNIL                          R4
       46 SETTABLEKS                       R4 R0 K1 ["array"]
       48 RETURN                           R0 0
       49 NEWTABLE                         R3 0 1
       51 MOVE                             R4 R1
       52 SETLIST                          R3 R4 1 [1]
       54 SETTABLEKS                       R3 R0 K1 ["array"]
       56 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["childNodeLeft"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R0 R0 K0 ["childNodeLeft"]
        5 JUMPBACK                         ; [-6]
        6 RETURN                           R0 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["childNodeParent"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R3 R2 K1 ["childNodeLeft"]
        5 JUMPIFNOTEQ                      R3 R0 ; [+4]
        7 SETTABLEKS                       R1 R2 K1 ["childNodeLeft"]
        9 JUMP                             ; [+2]
       10 SETTABLEKS                       R1 R2 K2 ["childNodeRight"]
       12 GETTABLEKS                       R3 R1 K2 ["childNodeRight"]
       14 JUMPIFNOT                        R3 ; [+2]
       15 SETTABLEKS                       R0 R3 K0 ["childNodeParent"]
       17 GETTABLEKS                       R4 R0 K2 ["childNodeRight"]
       19 GETTABLEKS                       R5 R0 K1 ["childNodeLeft"]
       21 GETTABLEKS                       R7 R1 K0 ["childNodeParent"]
       23 MOVE                             R6 R7
       24 LOADNIL                          R7
       25 SETTABLEKS                       R7 R0 K1 ["childNodeLeft"]
       27 SETTABLEKS                       R3 R0 K2 ["childNodeRight"]
       29 GETTABLEKS                       R7 R0 K0 ["childNodeParent"]
       31 SETTABLEKS                       R7 R1 K0 ["childNodeParent"]
       33 GETTABLEKS                       R7 R1 K3 ["childNodeColor"]
       35 GETTABLEKS                       R8 R0 K3 ["childNodeColor"]
       37 SETTABLEKS                       R7 R0 K3 ["childNodeColor"]
       39 SETTABLEKS                       R8 R1 K3 ["childNodeColor"]
       41 GETTABLEKS                       R7 R1 K4 ["childNodeTreeCount"]
       43 GETTABLEKS                       R8 R0 K4 ["childNodeTreeCount"]
       45 SETTABLEKS                       R7 R0 K4 ["childNodeTreeCount"]
       47 SETTABLEKS                       R8 R1 K4 ["childNodeTreeCount"]
       49 JUMPIFNOTEQ                      R4 R1 ; [+11]
       51 SETTABLEKS                       R0 R1 K2 ["childNodeRight"]
       53 SETTABLEKS                       R5 R1 K1 ["childNodeLeft"]
       55 SETTABLEKS                       R1 R0 K0 ["childNodeParent"]
       57 JUMPIFNOT                        R5 ; [+24]
       58 SETTABLEKS                       R1 R5 K0 ["childNodeParent"]
       60 JUMP                             ; [+21]
       61 SETTABLEKS                       R5 R1 K1 ["childNodeLeft"]
       63 SETTABLEKS                       R4 R1 K2 ["childNodeRight"]
       65 GETTABLEKS                       R7 R6 K1 ["childNodeLeft"]
       67 JUMPIFNOTEQ                      R7 R1 ; [+4]
       69 SETTABLEKS                       R0 R6 K1 ["childNodeLeft"]
       71 JUMP                             ; [+2]
       72 SETTABLEKS                       R0 R6 K2 ["childNodeRight"]
       74 SETTABLEKS                       R6 R0 K0 ["childNodeParent"]
       76 JUMPIFNOT                        R4 ; [+2]
       77 SETTABLEKS                       R1 R4 K0 ["childNodeParent"]
       79 JUMPIFNOT                        R5 ; [+2]
       80 SETTABLEKS                       R1 R5 K0 ["childNodeParent"]
       82 GETUPVAL                         R8 0
       83 MOVE                             R9 R0
       84 CALL                             R8 1 1
       85 GETUPVAL                         R9 0
       86 MOVE                             R10 R1
       87 CALL                             R9 1 1
       88 SUB                              R7 R8 R9
       89 JUMPIFEQKN                       R7 K5 [0] ; [+13]
       91 MOVE                             R8 R0
       92 JUMPIFEQ                         R8 R1 ; [+10]
       94 GETTABLEKS                       R9 R8 K4 ["childNodeTreeCount"]
       96 ADD                              R9 R9 R7
       97 SETTABLEKS                       R9 R8 K4 ["childNodeTreeCount"]
       99 GETTABLEKS                       R9 R8 K0 ["childNodeParent"]
      101 MOVE                             R8 R9
      102 JUMPBACK                         ; [-11]
      103 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["childNodeParent"]
        2 MOVE                             R1 R2
        3 GETTABLEKS                       R2 R1 K1 ["childNodeLeft"]
        5 JUMPIFNOTEQ                      R2 R0 ; [+5]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K1 ["childNodeLeft"]
       10 JUMP                             ; [+3]
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K2 ["childNodeRight"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R0 K0 ["childNodeParent"]
       17 GETUPVAL                         R3 0
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 MINUS                            R2 R3
       21 MOVE                             R3 R1
       22 JUMPIFNOT                        R3 ; [+8]
       23 GETTABLEKS                       R4 R3 K3 ["childNodeTreeCount"]
       25 ADD                              R4 R4 R2
       26 SETTABLEKS                       R4 R3 K3 ["childNodeTreeCount"]
       28 GETTABLEKS                       R3 R3 K0 ["childNodeParent"]
       30 JUMPBACK                         ; [-9]
       31 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["childNodeParent"]
        2 MOVE                             R1 R2
        3 GETTABLEKS                       R2 R1 K1 ["childNodeLeft"]
        5 JUMPIFNOTEQ                      R2 R0 ; [+6]
        7 GETTABLEKS                       R3 R1 K2 ["childNodeRight"]
        9 MOVE                             R2 R3
       10 LOADK                            R3 K3 ["right"]
       11 RETURN                           R2 2
       12 GETTABLEKS                       R3 R1 K1 ["childNodeLeft"]
       14 MOVE                             R2 R3
       15 LOADK                            R3 K4 ["left"]
       16 RETURN                           R2 2

PROTO_17:
        0 GETTABLEKS                       R5 R1 K0 ["childNodeParent"]
        2 MOVE                             R4 R5
        3 GETTABLEKS                       R5 R4 K1 ["childNodeLeft"]
        5 JUMPIFNOTEQ                      R5 R1 ; [+6]
        7 GETTABLEKS                       R5 R4 K2 ["childNodeRight"]
        9 MOVE                             R2 R5
       10 LOADK                            R3 K3 ["right"]
       11 JUMP                             ; [+4]
       12 GETTABLEKS                       R5 R4 K1 ["childNodeLeft"]
       14 MOVE                             R2 R5
       15 LOADK                            R3 K4 ["left"]
       16 JUMPIFNOTEQKS                    R3 K4 ["left"] ; [+4]
       18 GETTABLEKS                       R4 R2 K1 ["childNodeLeft"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R2 K2 ["childNodeRight"]
       23 GETTABLEKS                       R5 R2 K5 ["childNodeColor"]
       25 JUMPIFNOTEQKB                    R5 FALSE ; [+39]
       27 MOVE                             R5 R4
       28 GETTABLEKS                       R5 R5 K5 ["childNodeColor"]
       30 JUMPIFNOTEQKB                    R5 TRUE ; [+34]
       32 GETTABLEKS                       R6 R2 K0 ["childNodeParent"]
       34 MOVE                             R5 R6
       35 JUMPIFNOTEQKS                    R3 K4 ["left"] ; [+7]
       37 GETUPVAL                         R6 0
       38 MOVE                             R7 R0
       39 MOVE                             R8 R5
       40 CALL                             R6 2 1
       41 MOVE                             R0 R6
       42 JUMP                             ; [+5]
       43 GETUPVAL                         R6 1
       44 MOVE                             R7 R0
       45 MOVE                             R8 R5
       46 CALL                             R6 2 1
       47 MOVE                             R0 R6
       48 GETTABLEKS                       R6 R5 K5 ["childNodeColor"]
       50 SETTABLEKS                       R6 R2 K5 ["childNodeColor"]
       52 GETTABLEKS                       R6 R2 K2 ["childNodeRight"]
       54 JUMPIFNOT                        R6 ; [+3]
       55 LOADB                            R7 0
       56 SETTABLEKS                       R7 R6 K5 ["childNodeColor"]
       58 GETTABLEKS                       R7 R2 K1 ["childNodeLeft"]
       60 JUMPIFNOT                        R7 ; [+3]
       61 LOADB                            R8 0
       62 SETTABLEKS                       R8 R7 K5 ["childNodeColor"]
       64 RETURN                           R0 1
       65 GETIMPORT                        R5 K7 [error]
       67 LOADK                            R6 K8 ["Should not reach this case"]
       68 CALL                             R5 1 0
       69 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R5 R1 K0 ["childNodeParent"]
        2 MOVE                             R4 R5
        3 GETTABLEKS                       R5 R4 K1 ["childNodeLeft"]
        5 JUMPIFNOTEQ                      R5 R1 ; [+6]
        7 GETTABLEKS                       R5 R4 K2 ["childNodeRight"]
        9 MOVE                             R2 R5
       10 LOADK                            R3 K3 ["right"]
       11 JUMP                             ; [+4]
       12 GETTABLEKS                       R5 R4 K1 ["childNodeLeft"]
       14 MOVE                             R2 R5
       15 LOADK                            R3 K4 ["left"]
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 JUMPIFNOTEQKS                    R3 K4 ["left"] ; [+6]
       20 GETTABLEKS                       R4 R2 K2 ["childNodeRight"]
       22 GETTABLEKS                       R5 R2 K1 ["childNodeLeft"]
       24 JUMP                             ; [+4]
       25 GETTABLEKS                       R4 R2 K1 ["childNodeLeft"]
       27 GETTABLEKS                       R5 R2 K2 ["childNodeRight"]
       29 JUMPIFNOT                        R4 ; [+32]
       30 GETTABLEKS                       R6 R4 K5 ["childNodeColor"]
       32 JUMPIFNOTEQKB                    R6 TRUE ; [+29]
       34 JUMPIFNOT                        R5 ; [+4]
       35 GETTABLEKS                       R6 R5 K5 ["childNodeColor"]
       37 JUMPIFNOTEQKB                    R6 FALSE ; [+24]
       39 GETTABLEKS                       R6 R2 K5 ["childNodeColor"]
       41 JUMPIFNOTEQKB                    R6 FALSE ; [+20]
       43 JUMPIFNOTEQKS                    R3 K4 ["left"] ; [+7]
       45 GETUPVAL                         R6 0
       46 MOVE                             R7 R0
       47 MOVE                             R8 R2
       48 CALL                             R6 2 1
       49 MOVE                             R0 R6
       50 JUMP                             ; [+5]
       51 GETUPVAL                         R6 1
       52 MOVE                             R7 R0
       53 MOVE                             R8 R2
       54 CALL                             R6 2 1
       55 MOVE                             R0 R6
       56 LOADB                            R6 0
       57 SETTABLEKS                       R6 R4 K5 ["childNodeColor"]
       59 LOADB                            R6 1
       60 SETTABLEKS                       R6 R2 K5 ["childNodeColor"]
       62 GETUPVAL                         R6 2
       63 MOVE                             R7 R0
       64 MOVE                             R8 R1
       65 CALL                             R6 2 -1
       66 RETURN                           R6 -1

PROTO_19:
        0 GETTABLEKS                       R3 R1 K0 ["childNodeParent"]
        2 MOVE                             R2 R3
        3 GETTABLEKS                       R3 R2 K1 ["childNodeColor"]
        5 JUMPIFNOTEQKB                    R3 TRUE ; [+48]
        7 GETTABLEKS                       R6 R1 K0 ["childNodeParent"]
        9 MOVE                             R5 R6
       10 GETTABLEKS                       R6 R5 K2 ["childNodeLeft"]
       12 JUMPIFNOTEQ                      R6 R1 ; [+6]
       14 GETTABLEKS                       R6 R5 K3 ["childNodeRight"]
       16 MOVE                             R3 R6
       17 LOADK                            R4 K4 ["right"]
       18 JUMP                             ; [+4]
       19 GETTABLEKS                       R6 R5 K2 ["childNodeLeft"]
       21 MOVE                             R3 R6
       22 LOADK                            R4 K5 ["left"]
       23 GETTABLEKS                       R5 R3 K1 ["childNodeColor"]
       25 JUMPIFNOTEQKB                    R5 FALSE ; [+28]
       27 GETTABLEKS                       R5 R3 K2 ["childNodeLeft"]
       29 JUMPIFNOT                        R5 ; [+6]
       30 GETTABLEKS                       R5 R3 K2 ["childNodeLeft"]
       32 GETTABLEKS                       R5 R5 K1 ["childNodeColor"]
       34 JUMPIFNOTEQKB                    R5 FALSE ; [+19]
       36 GETTABLEKS                       R5 R3 K3 ["childNodeRight"]
       38 JUMPIFNOT                        R5 ; [+6]
       39 GETTABLEKS                       R5 R3 K3 ["childNodeRight"]
       41 GETTABLEKS                       R5 R5 K1 ["childNodeColor"]
       43 JUMPIFNOTEQKB                    R5 FALSE ; [+10]
       45 GETTABLEKS                       R5 R3 K1 ["childNodeColor"]
       47 GETTABLEKS                       R6 R2 K1 ["childNodeColor"]
       49 SETTABLEKS                       R5 R2 K1 ["childNodeColor"]
       51 SETTABLEKS                       R6 R3 K1 ["childNodeColor"]
       53 RETURN                           R0 1
       54 GETUPVAL                         R3 0
       55 MOVE                             R4 R0
       56 MOVE                             R5 R1
       57 CALL                             R3 2 -1
       58 RETURN                           R3 -1

PROTO_20:
        0 GETTABLEKS                       R3 R1 K0 ["childNodeParent"]
        2 MOVE                             R2 R3
        3 GETTABLEKS                       R6 R1 K0 ["childNodeParent"]
        5 MOVE                             R5 R6
        6 GETTABLEKS                       R6 R5 K1 ["childNodeLeft"]
        8 JUMPIFNOTEQ                      R6 R1 ; [+6]
       10 GETTABLEKS                       R6 R5 K2 ["childNodeRight"]
       12 MOVE                             R3 R6
       13 LOADK                            R4 K3 ["right"]
       14 JUMP                             ; [+4]
       15 GETTABLEKS                       R6 R5 K1 ["childNodeLeft"]
       17 MOVE                             R3 R6
       18 LOADK                            R4 K4 ["left"]
       19 GETTABLEKS                       R5 R3 K5 ["childNodeColor"]
       21 JUMPIFNOTEQKB                    R5 FALSE ; [+31]
       23 GETTABLEKS                       R5 R2 K5 ["childNodeColor"]
       25 JUMPIFNOTEQKB                    R5 FALSE ; [+27]
       27 GETTABLEKS                       R5 R3 K1 ["childNodeLeft"]
       29 JUMPIFNOT                        R5 ; [+6]
       30 GETTABLEKS                       R5 R3 K1 ["childNodeLeft"]
       32 GETTABLEKS                       R5 R5 K5 ["childNodeColor"]
       34 JUMPIFNOTEQKB                    R5 FALSE ; [+18]
       36 GETTABLEKS                       R5 R3 K2 ["childNodeRight"]
       38 JUMPIFNOT                        R5 ; [+6]
       39 GETTABLEKS                       R5 R3 K2 ["childNodeRight"]
       41 GETTABLEKS                       R5 R5 K5 ["childNodeColor"]
       43 JUMPIFNOTEQKB                    R5 FALSE ; [+9]
       45 LOADB                            R5 1
       46 SETTABLEKS                       R5 R3 K5 ["childNodeColor"]
       48 GETUPVAL                         R5 0
       49 MOVE                             R6 R0
       50 MOVE                             R7 R2
       51 CALL                             R5 2 -1
       52 RETURN                           R5 -1
       53 GETUPVAL                         R5 1
       54 MOVE                             R6 R0
       55 MOVE                             R7 R1
       56 CALL                             R5 2 -1
       57 RETURN                           R5 -1

PROTO_21:
        0 GETTABLEKS                       R3 R1 K0 ["childNodeParent"]
        2 MOVE                             R2 R3
        3 GETTABLEKS                       R6 R1 K0 ["childNodeParent"]
        5 MOVE                             R5 R6
        6 GETTABLEKS                       R6 R5 K1 ["childNodeLeft"]
        8 JUMPIFNOTEQ                      R6 R1 ; [+6]
       10 GETTABLEKS                       R6 R5 K2 ["childNodeRight"]
       12 MOVE                             R3 R6
       13 LOADK                            R4 K3 ["right"]
       14 JUMP                             ; [+4]
       15 GETTABLEKS                       R6 R5 K1 ["childNodeLeft"]
       17 MOVE                             R3 R6
       18 LOADK                            R4 K4 ["left"]
       19 GETTABLEKS                       R5 R3 K5 ["childNodeColor"]
       21 JUMPIFNOTEQKB                    R5 TRUE ; [+47]
       23 GETTABLEKS                       R5 R2 K5 ["childNodeColor"]
       25 JUMPIFNOTEQKB                    R5 FALSE ; [+43]
       27 GETTABLEKS                       R5 R3 K1 ["childNodeLeft"]
       29 JUMPIFNOT                        R5 ; [+6]
       30 GETTABLEKS                       R5 R3 K1 ["childNodeLeft"]
       32 GETTABLEKS                       R5 R5 K5 ["childNodeColor"]
       34 JUMPIFNOTEQKB                    R5 FALSE ; [+34]
       36 GETTABLEKS                       R5 R3 K2 ["childNodeRight"]
       38 JUMPIFNOT                        R5 ; [+6]
       39 GETTABLEKS                       R5 R3 K2 ["childNodeRight"]
       41 GETTABLEKS                       R5 R5 K5 ["childNodeColor"]
       43 JUMPIFNOTEQKB                    R5 FALSE ; [+25]
       45 JUMPIFNOTEQKS                    R4 K4 ["left"] ; [+7]
       47 GETUPVAL                         R5 0
       48 MOVE                             R6 R0
       49 MOVE                             R7 R2
       50 CALL                             R5 2 1
       51 MOVE                             R0 R5
       52 JUMP                             ; [+5]
       53 GETUPVAL                         R5 1
       54 MOVE                             R6 R0
       55 MOVE                             R7 R2
       56 CALL                             R5 2 1
       57 MOVE                             R0 R5
       58 LOADB                            R5 1
       59 SETTABLEKS                       R5 R2 K5 ["childNodeColor"]
       61 LOADB                            R5 0
       62 SETTABLEKS                       R5 R3 K5 ["childNodeColor"]
       64 GETUPVAL                         R5 2
       65 MOVE                             R6 R0
       66 MOVE                             R7 R1
       67 CALL                             R5 2 -1
       68 RETURN                           R5 -1
       69 GETUPVAL                         R5 3
       70 MOVE                             R6 R0
       71 MOVE                             R7 R1
       72 CALL                             R5 2 -1
       73 RETURN                           R5 -1

PROTO_22:
        0 JUMPIFNOTEQ                      R0 R1 ; [+5]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R1 K0 ["childNodeColor"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["childNodeLeft"]
        2 GETTABLEKS                       R3 R1 K1 ["childNodeRight"]
        4 OR                               R4 R2 R3
        5 JUMPIFNOTEQ                      R1 R0 ; [+11]
        7 JUMPIFNOT                        R4 ; [+7]
        8 LOADB                            R5 0
        9 SETTABLEKS                       R5 R4 K2 ["childNodeColor"]
       11 LOADNIL                          R5
       12 SETTABLEKS                       R5 R4 K3 ["childNodeParent"]
       14 RETURN                           R4 1
       15 LOADNIL                          R5
       16 RETURN                           R5 1
       17 GETTABLEKS                       R5 R1 K2 ["childNodeColor"]
       19 JUMPIFNOTEQKB                    R5 TRUE ; [+40]
       21 JUMPIFNOT                        R4 ; [+5]
       22 GETIMPORT                        R5 K5 [error]
       24 LOADK                            R6 K6 ["Red node cannot have a child"]
       25 CALL                             R5 1 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R6 R1 K3 ["childNodeParent"]
       29 MOVE                             R5 R6
       30 GETTABLEKS                       R6 R5 K0 ["childNodeLeft"]
       32 JUMPIFNOTEQ                      R6 R1 ; [+5]
       34 LOADNIL                          R6
       35 SETTABLEKS                       R6 R5 K0 ["childNodeLeft"]
       37 JUMP                             ; [+3]
       38 LOADNIL                          R6
       39 SETTABLEKS                       R6 R5 K1 ["childNodeRight"]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R1 K3 ["childNodeParent"]
       44 GETUPVAL                         R7 0
       45 MOVE                             R8 R1
       46 CALL                             R7 1 1
       47 MINUS                            R6 R7
       48 MOVE                             R7 R5
       49 JUMPIFNOT                        R7 ; [+8]
       50 GETTABLEKS                       R8 R7 K7 ["childNodeTreeCount"]
       52 ADD                              R8 R8 R6
       53 SETTABLEKS                       R8 R7 K7 ["childNodeTreeCount"]
       55 GETTABLEKS                       R7 R7 K3 ["childNodeParent"]
       57 JUMPBACK                         ; [-9]
       58 RETURN                           R0 1
       59 RETURN                           R0 0
       60 JUMPIFNOT                        R4 ; [+38]
       61 GETTABLEKS                       R5 R4 K2 ["childNodeColor"]
       63 JUMPIFNOTEQKB                    R5 TRUE ; [+35]
       65 GETUPVAL                         R6 0
       66 MOVE                             R7 R1
       67 CALL                             R6 1 1
       68 MINUS                            R5 R6
       69 MOVE                             R6 R1
       70 JUMPIFNOT                        R6 ; [+8]
       71 GETTABLEKS                       R7 R6 K7 ["childNodeTreeCount"]
       73 ADD                              R7 R7 R5
       74 SETTABLEKS                       R7 R6 K7 ["childNodeTreeCount"]
       76 GETTABLEKS                       R6 R6 K3 ["childNodeParent"]
       78 JUMPBACK                         ; [-9]
       79 GETTABLEKS                       R6 R1 K3 ["childNodeParent"]
       81 MOVE                             R5 R6
       82 GETTABLEKS                       R6 R5 K0 ["childNodeLeft"]
       84 JUMPIFNOTEQ                      R6 R1 ; [+4]
       86 SETTABLEKS                       R4 R5 K0 ["childNodeLeft"]
       88 JUMP                             ; [+2]
       89 SETTABLEKS                       R4 R5 K1 ["childNodeRight"]
       91 GETTABLEKS                       R6 R1 K3 ["childNodeParent"]
       93 SETTABLEKS                       R6 R4 K3 ["childNodeParent"]
       95 LOADB                            R6 0
       96 SETTABLEKS                       R6 R4 K2 ["childNodeColor"]
       98 RETURN                           R0 1
       99 GETUPVAL                         R5 1
      100 MOVE                             R6 R0
      101 MOVE                             R7 R1
      102 CALL                             R5 2 1
      103 MOVE                             R0 R5
      104 GETTABLEKS                       R6 R1 K3 ["childNodeParent"]
      106 MOVE                             R5 R6
      107 GETTABLEKS                       R6 R5 K0 ["childNodeLeft"]
      109 JUMPIFNOTEQ                      R6 R1 ; [+5]
      111 LOADNIL                          R6
      112 SETTABLEKS                       R6 R5 K0 ["childNodeLeft"]
      114 JUMP                             ; [+3]
      115 LOADNIL                          R6
      116 SETTABLEKS                       R6 R5 K1 ["childNodeRight"]
      118 LOADNIL                          R6
      119 SETTABLEKS                       R6 R1 K3 ["childNodeParent"]
      121 GETUPVAL                         R7 0
      122 MOVE                             R8 R1
      123 CALL                             R7 1 1
      124 MINUS                            R6 R7
      125 MOVE                             R7 R5
      126 JUMPIFNOT                        R7 ; [+8]
      127 GETTABLEKS                       R8 R7 K7 ["childNodeTreeCount"]
      129 ADD                              R8 R8 R6
      130 SETTABLEKS                       R8 R7 K7 ["childNodeTreeCount"]
      132 GETTABLEKS                       R7 R7 K3 ["childNodeParent"]
      134 JUMPBACK                         ; [-9]
      135 RETURN                           R0 1
      136 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R1 K0 ["childNodeLeft"]
        2 JUMPIFNOT                        R2 ; [+19]
        3 GETTABLEKS                       R2 R1 K1 ["childNodeRight"]
        5 JUMPIFNOT                        R2 ; [+16]
        6 GETTABLEKS                       R3 R1 K1 ["childNodeRight"]
        8 GETTABLEKS                       R4 R3 K0 ["childNodeLeft"]
       10 JUMPIFNOT                        R4 ; [+3]
       11 GETTABLEKS                       R3 R3 K0 ["childNodeLeft"]
       13 JUMPBACK                         ; [-6]
       14 MOVE                             R2 R3
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R1
       17 MOVE                             R5 R2
       18 CALL                             R3 2 0
       19 JUMPIFNOTEQ                      R0 R1 ; [+2]
       21 MOVE                             R0 R2
       22 GETUPVAL                         R2 1
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["array"]
        2 JUMPIFNOT                        R2 ; [+30]
        3 GETIMPORT                        R2 K3 [table.find]
        5 GETTABLEKS                       R3 R0 K0 ["array"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+16]
       10 GETIMPORT                        R3 K5 [error]
       12 LOADK                            R5 K6 ["Removing explorer node %* from parent (presumably %*), but it's not inside of its children array"]
       13 GETTABLEKS                       R7 R1 K7 ["datum"]
       15 GETTABLEKS                       R7 R7 K8 ["id"]
       17 GETTABLEKS                       R8 R1 K7 ["datum"]
       19 GETTABLEKS                       R8 R8 K9 ["parentId"]
       21 NAMECALL                         R5 R5 K10 ["format"]
       23 CALL                             R5 3 1
       24 MOVE                             R4 R5
       25 CALL                             R3 1 0
       26 GETIMPORT                        R3 K12 [table.remove]
       28 GETTABLEKS                       R4 R0 K0 ["array"]
       30 MOVE                             R5 R2
       31 CALL                             R3 2 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R4 R0 K13 ["tree"]
       35 JUMPIFNOTEQKNIL                  R4 ; [+2]
       37 LOADB                            R3 0 +1
       38 LOADB                            R3 1
       39 FASTCALL2K                       ASSERT R3 K14 ; [+4]
       41 LOADK                            R4 K14 ["Removing explorer node from parent, but it has neither an array nor a tree"]
       42 GETIMPORT                        R2 K16 [assert]
       44 CALL                             R2 2 0
       45 GETTABLEKS                       R3 R0 K13 ["tree"]
       47 GETTABLEKS                       R4 R1 K17 ["childNodeLeft"]
       49 JUMPIFNOT                        R4 ; [+19]
       50 GETTABLEKS                       R4 R1 K18 ["childNodeRight"]
       52 JUMPIFNOT                        R4 ; [+16]
       53 GETTABLEKS                       R5 R1 K18 ["childNodeRight"]
       55 GETTABLEKS                       R6 R5 K17 ["childNodeLeft"]
       57 JUMPIFNOT                        R6 ; [+3]
       58 GETTABLEKS                       R5 R5 K17 ["childNodeLeft"]
       60 JUMPBACK                         ; [-6]
       61 MOVE                             R4 R5
       62 GETUPVAL                         R5 0
       63 MOVE                             R6 R1
       64 MOVE                             R7 R4
       65 CALL                             R5 2 0
       66 JUMPIFNOTEQ                      R3 R1 ; [+2]
       68 MOVE                             R3 R4
       69 GETUPVAL                         R4 1
       70 MOVE                             R5 R3
       71 MOVE                             R6 R1
       72 CALL                             R4 2 1
       73 MOVE                             R2 R4
       74 SETTABLEKS                       R2 R0 K13 ["tree"]
       76 LOADNIL                          R2
       77 SETTABLEKS                       R2 R1 K19 ["childNodeColor"]
       79 LOADNIL                          R2
       80 SETTABLEKS                       R2 R1 K20 ["childNodeTreeCount"]
       82 LOADNIL                          R2
       83 SETTABLEKS                       R2 R1 K17 ["childNodeLeft"]
       85 LOADNIL                          R2
       86 SETTABLEKS                       R2 R1 K18 ["childNodeRight"]
       88 LOADNIL                          R2
       89 SETTABLEKS                       R2 R1 K21 ["childNodeParent"]
       91 GETTABLEKS                       R2 R0 K13 ["tree"]
       93 JUMPIF                           R2 ; [+4]
       94 NEWTABLE                         R2 0 0
       96 SETTABLEKS                       R2 R0 K0 ["array"]
       98 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["children"]
        2 SETTABLEKS                       R1 R0 K0 ["children"]
        4 GETTABLEKS                       R3 R0 K1 ["childNodeTreeCount"]
        6 JUMPIFNOT                        R3 ; [+18]
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETTABLEKS                       R3 R2 K2 ["treeDescendantCount"]
       10 JUMP                             ; [+1]
       11 LOADN                            R3 1
       12 GETTABLEKS                       R4 R1 K2 ["treeDescendantCount"]
       14 SUB                              R5 R4 R3
       15 MOVE                             R6 R0
       16 JUMPIFNOT                        R6 ; [+8]
       17 GETTABLEKS                       R7 R6 K1 ["childNodeTreeCount"]
       19 ADD                              R7 R7 R5
       20 SETTABLEKS                       R7 R6 K1 ["childNodeTreeCount"]
       22 GETTABLEKS                       R6 R6 K3 ["childNodeParent"]
       24 JUMPBACK                         ; [-9]
       25 RETURN                           R2 1

PROTO_27:
        0 GETTABLEKS                       R2 R0 K0 ["childNodeLeft"]
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETTABLEKS                       R3 R2 K1 ["childNodeTreeCount"]
        5 JUMPIFNOTLE                      R1 R3 ; [+6]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R2
        9 MOVE                             R6 R1
       10 CALL                             R4 2 -1
       11 RETURN                           R4 -1
       12 SUB                              R1 R1 R3
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R0
       15 CALL                             R3 1 1
       16 JUMPIFNOTLE                      R1 R3 ; [+20]
       18 JUMPIFNOTEQKN                    R1 K2 [1] ; [+2]
       20 RETURN                           R0 1
       21 GETTABLEKS                       R5 R0 K3 ["children"]
       23 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       25 LOADK                            R6 K4 ["treeCount > index > 1 => node must have children"]
       26 GETIMPORT                        R4 K6 [assert]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K7 ["getNthDescendant"]
       32 GETTABLEKS                       R5 R0 K3 ["children"]
       34 SUBK                             R6 R1 K2 [1]
       35 CALL                             R4 2 -1
       36 RETURN                           R4 -1
       37 SUB                              R1 R1 R3
       38 GETTABLEKS                       R4 R0 K8 ["childNodeRight"]
       40 JUMPIFNOT                        R4 ; [+9]
       41 GETTABLEKS                       R5 R4 K1 ["childNodeTreeCount"]
       43 JUMPIFNOTLE                      R1 R5 ; [+6]
       45 GETUPVAL                         R5 0
       46 MOVE                             R6 R4
       47 MOVE                             R7 R1
       48 CALL                             R5 2 -1
       49 RETURN                           R5 -1
       50 LOADNIL                          R5
       51 RETURN                           R5 1

PROTO_28:
        0 LOADN                            R4 0
        1 JUMPIFLT                         R4 R1 ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        7 LOADK                            R4 K0 ["index <= 0"]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 2 0
       11 JUMPIF                           R0 ; [+2]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R0 K3 ["array"]
       16 JUMPIFNOT                        R2 ; [+24]
       17 MOVE                             R3 R2
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 JUMPIFNOTEQKN                    R1 K4 [1] ; [+2]
       23 RETURN                           R7 1
       24 GETUPVAL                         R8 0
       25 MOVE                             R9 R7
       26 CALL                             R8 1 1
       27 JUMPIFNOTLT                      R8 R1 ; [+3]
       29 SUB                              R1 R1 R8
       30 JUMP                             ; [+8]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K5 ["getNthDescendant"]
       34 GETTABLEKS                       R10 R7 K6 ["children"]
       36 SUBK                             R11 R1 K4 [1]
       37 CALL                             R9 2 -1
       38 RETURN                           R9 -1
       39 FORGLOOP                         R3 2 ; [-19]
       41 GETTABLEKS                       R3 R0 K7 ["tree"]
       43 JUMPIFNOT                        R3 ; [+5]
       44 GETUPVAL                         R4 2
       45 MOVE                             R5 R3
       46 MOVE                             R6 R1
       47 CALL                             R4 2 -1
       48 RETURN                           R4 -1
       49 LOADNIL                          R4
       50 RETURN                           R4 1

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["childNodeLeft"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R2
        5 MOVE                             R5 R1
        6 CALL                             R3 2 0
        7 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        9 MOVE                             R4 R1
       10 MOVE                             R5 R0
       11 GETIMPORT                        R3 K3 [table.insert]
       13 CALL                             R3 2 0
       14 GETTABLEKS                       R3 R0 K4 ["childNodeRight"]
       16 JUMPIFNOT                        R3 ; [+4]
       17 GETUPVAL                         R4 0
       18 MOVE                             R5 R3
       19 MOVE                             R6 R1
       20 CALL                             R4 2 0
       21 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 MOVE                             R1 R0
        2 JUMPIFNOT                        R0 ; [+26]
        3 GETTABLEKS                       R2 R0 K0 ["childNodeRight"]
        5 JUMPIFNOT                        R2 ; [+9]
        6 GETTABLEKS                       R0 R0 K0 ["childNodeRight"]
        8 GETTABLEKS                       R2 R0 K1 ["childNodeLeft"]
       10 JUMPIFNOT                        R2 ; [+16]
       11 GETTABLEKS                       R0 R0 K1 ["childNodeLeft"]
       13 JUMPBACK                         ; [-6]
       14 JUMP                             ; [+12]
       15 GETTABLEKS                       R2 R0 K2 ["childNodeParent"]
       17 JUMPIFNOT                        R2 ; [+8]
       18 GETTABLEKS                       R3 R2 K0 ["childNodeRight"]
       20 JUMPIFNOTEQ                      R3 R0 ; [+5]
       22 MOVE                             R0 R2
       23 GETTABLEKS                       R2 R2 K2 ["childNodeParent"]
       25 JUMPBACK                         ; [-9]
       26 MOVE                             R0 R2
       27 SETUPVAL                         R0 0
       28 RETURN                           R1 1
       29 LOADNIL                          R2
       30 RETURN                           R2 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 MOVE                             R1 R0
        2 JUMPIFNOT                        R0 ; [+26]
        3 GETTABLEKS                       R2 R0 K0 ["childNodeLeft"]
        5 JUMPIFNOT                        R2 ; [+9]
        6 GETTABLEKS                       R0 R0 K0 ["childNodeLeft"]
        8 GETTABLEKS                       R2 R0 K1 ["childNodeRight"]
       10 JUMPIFNOT                        R2 ; [+16]
       11 GETTABLEKS                       R0 R0 K1 ["childNodeRight"]
       13 JUMPBACK                         ; [-6]
       14 JUMP                             ; [+12]
       15 GETTABLEKS                       R2 R0 K2 ["childNodeParent"]
       17 JUMPIFNOT                        R2 ; [+8]
       18 GETTABLEKS                       R3 R2 K0 ["childNodeLeft"]
       20 JUMPIFNOTEQ                      R3 R0 ; [+5]
       22 MOVE                             R0 R2
       23 GETTABLEKS                       R2 R2 K2 ["childNodeParent"]
       25 JUMPBACK                         ; [-9]
       26 MOVE                             R0 R2
       27 SETUPVAL                         R0 0
       28 RETURN                           R1 1
       29 LOADNIL                          R2
       30 RETURN                           R2 1

PROTO_32:
        0 JUMPIFNOTEQKN                    R1 K0 [1] ; [+7]
        2 MOVE                             R2 R0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R2
        5 CLOSEUPVALS                      R2
        6 RETURN                           R3 1
        7 CLOSEUPVALS                      R2
        8 JUMPIFNOTEQKN                    R1 K1 [-1] ; [+7]
       10 MOVE                             R2 R0
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          REF R2
       13 CLOSEUPVALS                      R2
       14 RETURN                           R3 1
       15 CLOSEUPVALS                      R2
       16 GETIMPORT                        R2 K3 [error]
       18 LOADK                            R4 K4 ["Invalid direction %*"]
       19 MOVE                             R6 R1
       20 NAMECALL                         R4 R4 K5 ["format"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 ADD                              R1 R1 R2
        6 SETUPVAL                         R1 1
        7 RETURN                           R0 1

PROTO_34:
        0 GETIMPORT                        R3 K2 [table.find]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 FASTCALL2K                       ASSERT R3 K3 ; [+5]
        7 MOVE                             R5 R3
        8 LOADK                            R6 K3 ["Node not in parent's child list"]
        9 GETIMPORT                        R4 K5 [assert]
       11 CALL                             R4 2 0
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          REF R3
       15 CAPTURE                          VAL R2
       16 CLOSEUPVALS                      R3
       17 RETURN                           R4 1

PROTO_35:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_36:
        0 GETTABLEKS                       R3 R0 K0 ["array"]
        2 JUMPIFNOT                        R3 ; [+20]
        3 GETTABLEKS                       R4 R0 K0 ["array"]
        5 GETIMPORT                        R5 K3 [table.find]
        7 MOVE                             R6 R4
        8 MOVE                             R7 R1
        9 CALL                             R5 2 1
       10 FASTCALL2K                       ASSERT R5 K4 ; [+5]
       12 MOVE                             R7 R5
       13 LOADK                            R8 K4 ["Node not in parent's child list"]
       14 GETIMPORT                        R6 K6 [assert]
       16 CALL                             R6 2 0
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          REF R5
       20 CAPTURE                          VAL R2
       21 CLOSEUPVALS                      R5
       22 RETURN                           R3 1
       23 GETTABLEKS                       R3 R0 K7 ["tree"]
       25 JUMPIFNOT                        R3 ; [+5]
       26 GETUPVAL                         R3 0
       27 MOVE                             R4 R1
       28 MOVE                             R5 R2
       29 CALL                             R3 2 -1
       30 RETURN                           R3 -1
       31 DUPCLOSURE                       R3 K8 [PROTO_35]
       32 RETURN                           R3 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 1
        4 ADDK                             R1 R1 K0 [1]
        5 SETUPVAL                         R1 1
        6 RETURN                           R0 1

PROTO_38:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["array"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 LOADN                            R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          REF R2
        7 CLOSEUPVALS                      R2
        8 RETURN                           R3 1
        9 CLOSEUPVALS                      R2
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["first"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R2
       18 LOADN                            R5 1
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1
       21 DUPCLOSURE                       R3 K2 [PROTO_38]
       22 RETURN                           R3 1

PROTO_40:
        0 JUMPIFNOT                        R0 ; [+20]
        1 GETTABLEKS                       R1 R0 K0 ["array"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETIMPORT                        R2 K2 [next]
        6 GETTABLEKS                       R3 R0 K0 ["array"]
        8 CALL                             R2 1 1
        9 JUMPIFEQKNIL                     R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1
       14 GETTABLEKS                       R2 R0 K3 ["tree"]
       16 JUMPIFEQKNIL                     R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_41:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["array"]
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETTABLEKS                       R2 R0 K0 ["array"]
        9 GETTABLEN                        R1 R2 1
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K1 ["tree"]
       13 JUMPIFNOTEQKNIL                  R1 ; [+3]
       15 LOADNIL                          R1
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K1 ["tree"]
       19 JUMPIFEQKNIL                     R1 ; [+8]
       21 GETTABLEKS                       R2 R1 K2 ["childNodeLeft"]
       23 JUMPIFEQKNIL                     R2 ; [+4]
       25 GETTABLEKS                       R1 R1 K2 ["childNodeLeft"]
       27 JUMPBACK                         ; [-9]
       28 RETURN                           R1 1

PROTO_42:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["array"]
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETTABLEKS                       R2 R0 K0 ["array"]
        9 GETTABLEKS                       R4 R0 K0 ["array"]
       11 LENGTH                           R3 R4
       12 GETTABLE                         R1 R2 R3
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K1 ["tree"]
       16 JUMPIFNOTEQKNIL                  R1 ; [+3]
       18 LOADNIL                          R1
       19 RETURN                           R1 1
       20 GETTABLEKS                       R1 R0 K1 ["tree"]
       22 JUMPIFEQKNIL                     R1 ; [+8]
       24 GETTABLEKS                       R2 R1 K2 ["childNodeRight"]
       26 JUMPIFEQKNIL                     R2 ; [+4]
       28 GETTABLEKS                       R1 R1 K2 ["childNodeRight"]
       30 JUMPBACK                         ; [-9]
       31 RETURN                           R1 1

PROTO_43:
        0 GETTABLE                         R5 R2 R0
        1 JUMPIFNOT                        R5 ; [+10]
        2 MOVE                             R5 R4
        3 MOVE                             R7 R1
        4 GETTABLEKS                       R8 R0 K0 ["datum"]
        6 GETTABLEKS                       R8 R8 K1 ["name"]
        8 LOADK                            R9 K2 [" (INVALID circular reference!) ..."]
        9 CONCAT                           R6 R7 R9
       10 CALL                             R5 1 0
       11 RETURN                           R0 0
       12 LOADB                            R5 1
       13 SETTABLE                         R5 R2 R0
       14 GETTABLEKS                       R6 R0 K3 ["childNodeParent"]
       16 JUMPIFEQ                         R3 R6 ; [+18]
       18 LOADK                            R6 K4 [" (Bad parent %*)"]
       19 GETTABLEKS                       R9 R0 K3 ["childNodeParent"]
       21 JUMPIFNOT                        R9 ; [+7]
       22 GETTABLEKS                       R8 R0 K3 ["childNodeParent"]
       24 GETTABLEKS                       R8 R8 K0 ["datum"]
       26 GETTABLEKS                       R8 R8 K1 ["name"]
       28 JUMP                             ; [+1]
       29 LOADK                            R8 K5 ["nil"]
       30 NAMECALL                         R6 R6 K6 ["format"]
       32 CALL                             R6 2 1
       33 MOVE                             R5 R6
       34 JUMP                             ; [+1]
       35 LOADK                            R5 K7 [""]
       36 GETTABLEKS                       R7 R0 K8 ["childNodeColor"]
       38 JUMPIFNOTEQKB                    R7 FALSE ; [+3]
       40 LOADK                            R6 K9 ["b"]
       41 JUMP                             ; [+1]
       42 LOADK                            R6 K10 ["r"]
       43 MOVE                             R7 R4
       44 LOADK                            R9 K11 ["%*%* [%* %* (%*)]%* %*"]
       45 MOVE                             R11 R1
       46 GETTABLEKS                       R12 R0 K0 ["datum"]
       48 GETTABLEKS                       R12 R12 K1 ["name"]
       50 MOVE                             R13 R6
       51 GETTABLEKS                       R14 R0 K12 ["childNodeTreeCount"]
       53 GETUPVAL                         R15 0
       54 MOVE                             R16 R0
       55 CALL                             R15 1 1
       56 MOVE                             R16 R5
       57 GETTABLEKS                       R17 R0 K0 ["datum"]
       59 GETTABLEKS                       R17 R17 K13 ["id"]
       61 NAMECALL                         R9 R9 K6 ["format"]
       63 CALL                             R9 8 1
       64 MOVE                             R8 R9
       65 CALL                             R7 1 0
       66 GETTABLEKS                       R7 R0 K14 ["childNodeLeft"]
       68 JUMPIF                           R7 ; [+3]
       69 GETTABLEKS                       R7 R0 K15 ["childNodeRight"]
       71 JUMPIFNOT                        R7 ; [+38]
       72 GETTABLEKS                       R7 R0 K14 ["childNodeLeft"]
       74 JUMPIFNOT                        R7 ; [+11]
       75 GETUPVAL                         R7 1
       76 GETTABLEKS                       R8 R0 K14 ["childNodeLeft"]
       78 MOVE                             R10 R1
       79 LOADK                            R11 K16 ["| "]
       80 CONCAT                           R9 R10 R11
       81 MOVE                             R10 R2
       82 MOVE                             R11 R0
       83 MOVE                             R12 R4
       84 CALL                             R7 5 0
       85 JUMP                             ; [+5]
       86 MOVE                             R7 R4
       87 MOVE                             R9 R1
       88 LOADK                            R10 K17 ["| nil"]
       89 CONCAT                           R8 R9 R10
       90 CALL                             R7 1 0
       91 GETTABLEKS                       R7 R0 K15 ["childNodeRight"]
       93 JUMPIFNOT                        R7 ; [+11]
       94 GETUPVAL                         R7 1
       95 GETTABLEKS                       R8 R0 K15 ["childNodeRight"]
       97 MOVE                             R10 R1
       98 LOADK                            R11 K16 ["| "]
       99 CONCAT                           R9 R10 R11
      100 MOVE                             R10 R2
      101 MOVE                             R11 R0
      102 MOVE                             R12 R4
      103 CALL                             R7 5 0
      104 RETURN                           R0 0
      105 MOVE                             R7 R4
      106 MOVE                             R9 R1
      107 LOADK                            R10 K17 ["| nil"]
      108 CONCAT                           R8 R9 R10
      109 CALL                             R7 1 0
      110 RETURN                           R0 0

PROTO_44:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 GETIMPORT                        R2 K1 [print]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 LOADK                            R5 K2 [""]
        7 NEWTABLE                         R6 0 0
        9 LOADNIL                          R7
       10 MOVE                             R8 R2
       11 CALL                             R3 5 0
       12 RETURN                           R0 0

PROTO_45:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 GETIMPORT                        R2 K1 [print]
        4 JUMPIF                           R0 ; [+4]
        5 MOVE                             R3 R2
        6 LOADK                            R4 K2 ["[Child list not present, ==nil] [1]"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0
        9 LOADB                            R4 1
       10 GETTABLEKS                       R5 R0 K3 ["array"]
       12 JUMPIFEQKNIL                     R5 ; [+7]
       14 GETTABLEKS                       R5 R0 K4 ["tree"]
       16 JUMPIFEQKNIL                     R5 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       22 LOADK                            R5 K5 ["Has both array and tree"]
       23 GETIMPORT                        R3 K7 [assert]
       25 CALL                             R3 2 0
       26 GETTABLEKS                       R3 R0 K3 ["array"]
       28 JUMPIFNOT                        R3 ; [+32]
       29 MOVE                             R3 R2
       30 LOADK                            R5 K8 ["[Backed by array] [%*]"]
       31 GETTABLEKS                       R7 R0 K9 ["treeDescendantCount"]
       33 NAMECALL                         R5 R5 K10 ["format"]
       35 CALL                             R5 2 1
       36 MOVE                             R4 R5
       37 CALL                             R3 1 0
       38 GETTABLEKS                       R3 R0 K3 ["array"]
       40 LOADNIL                          R4
       41 LOADNIL                          R5
       42 FORGPREP                         R3
       43 MOVE                             R8 R2
       44 LOADK                            R10 K11 ["| %*: %* [%*]"]
       45 MOVE                             R12 R6
       46 GETTABLEKS                       R13 R7 K12 ["datum"]
       48 GETTABLEKS                       R13 R13 K13 ["name"]
       50 GETUPVAL                         R14 0
       51 MOVE                             R15 R7
       52 CALL                             R14 1 1
       53 NAMECALL                         R10 R10 K10 ["format"]
       55 CALL                             R10 4 1
       56 MOVE                             R9 R10
       57 CALL                             R8 1 0
       58 FORGLOOP                         R3 2 ; [-16]
       60 RETURN                           R0 0
       61 GETTABLEKS                       R3 R0 K4 ["tree"]
       63 JUMPIFNOT                        R3 ; [+19]
       64 MOVE                             R3 R2
       65 LOADK                            R5 K14 ["[Backed by tree] [%*]"]
       66 GETTABLEKS                       R7 R0 K9 ["treeDescendantCount"]
       68 NAMECALL                         R5 R5 K10 ["format"]
       70 CALL                             R5 2 1
       71 MOVE                             R4 R5
       72 CALL                             R3 1 0
       73 GETUPVAL                         R3 1
       74 GETTABLEKS                       R4 R0 K4 ["tree"]
       76 LOADK                            R5 K15 [""]
       77 NEWTABLE                         R6 0 0
       79 LOADNIL                          R7
       80 MOVE                             R8 R2
       81 CALL                             R3 5 0
       82 RETURN                           R0 0
       83 GETTABLEKS                       R5 R0 K9 ["treeDescendantCount"]
       85 JUMPIFEQKN                       R5 K16 [1] ; [+2]
       87 LOADB                            R4 0 +1
       88 LOADB                            R4 1
       89 FASTCALL2K                       ASSERT R4 K17 ; [+4]
       91 LOADK                            R5 K17 ["Not backed by anything, but has descendant count"]
       92 GETIMPORT                        R3 K7 [assert]
       94 CALL                             R3 2 0
       95 MOVE                             R3 R2
       96 LOADK                            R4 K18 ["[Not backed by anything] [1]"]
       97 CALL                             R3 1 0
       98 RETURN                           R0 0

PROTO_46:
        0 JUMPIF                           R0 ; [+2]
        1 LOADN                            R1 1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K0 ["childNodeLeft"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K1 ["childNodeRight"]
       10 CALL                             R2 1 1
       11 JUMPIFEQ                         R1 R2 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       17 LOADK                            R5 K2 ["All paths from a node to its descendants must go through the same number of black nodes"]
       18 GETIMPORT                        R3 K4 [assert]
       20 CALL                             R3 2 0
       21 GETTABLEKS                       R5 R0 K5 ["childNodeColor"]
       23 JUMPIFNOTEQKB                    R5 FALSE ; [+3]
       25 LOADN                            R4 1
       26 JUMP                             ; [+1]
       27 LOADN                            R4 0
       28 ADD                              R3 R1 R4
       29 RETURN                           R3 1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETIMPORT                        R1 K1 [error]
        5 LOADK                            R2 K2 ["RB-tree is circular"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 LOADB                            R2 1
        9 SETTABLE                         R2 R1 R0
       10 GETTABLEKS                       R1 R0 K3 ["childNodeColor"]
       12 JUMPIFNOTEQKB                    R1 TRUE ; [+37]
       14 GETTABLEKS                       R3 R0 K4 ["childNodeLeft"]
       16 NOT                              R2 R3
       17 JUMPIF                           R2 ; [+8]
       18 GETTABLEKS                       R3 R0 K4 ["childNodeLeft"]
       20 GETTABLEKS                       R3 R3 K3 ["childNodeColor"]
       22 JUMPIFEQKB                       R3 FALSE ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       28 LOADK                            R3 K5 ["If a node is red, then its children are black (left)"]
       29 GETIMPORT                        R1 K7 [assert]
       31 CALL                             R1 2 0
       32 GETTABLEKS                       R3 R0 K8 ["childNodeRight"]
       34 NOT                              R2 R3
       35 JUMPIF                           R2 ; [+8]
       36 GETTABLEKS                       R3 R0 K8 ["childNodeRight"]
       38 GETTABLEKS                       R3 R3 K3 ["childNodeColor"]
       40 JUMPIFEQKB                       R3 FALSE ; [+2]
       42 LOADB                            R2 0 +1
       43 LOADB                            R2 1
       44 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       46 LOADK                            R3 K9 ["If a node is red, then its children are black (right)"]
       47 GETIMPORT                        R1 K7 [assert]
       49 CALL                             R1 2 0
       50 GETTABLEKS                       R1 R0 K4 ["childNodeLeft"]
       52 JUMPIFNOT                        R1 ; [+18]
       53 GETTABLEKS                       R3 R0 K4 ["childNodeLeft"]
       55 GETTABLEKS                       R3 R3 K10 ["childNodeParent"]
       57 JUMPIFEQ                         R3 R0 ; [+2]
       59 LOADB                            R2 0 +1
       60 LOADB                            R2 1
       61 FASTCALL2K                       ASSERT R2 K11 ; [+4]
       63 LOADK                            R3 K11 ["Left's parent isn't node"]
       64 GETIMPORT                        R1 K7 [assert]
       66 CALL                             R1 2 0
       67 GETUPVAL                         R1 1
       68 GETTABLEKS                       R2 R0 K4 ["childNodeLeft"]
       70 CALL                             R1 1 0
       71 GETTABLEKS                       R1 R0 K8 ["childNodeRight"]
       73 JUMPIFNOT                        R1 ; [+18]
       74 GETTABLEKS                       R3 R0 K8 ["childNodeRight"]
       76 GETTABLEKS                       R3 R3 K10 ["childNodeParent"]
       78 JUMPIFEQ                         R3 R0 ; [+2]
       80 LOADB                            R2 0 +1
       81 LOADB                            R2 1
       82 FASTCALL2K                       ASSERT R2 K11 ; [+4]
       84 LOADK                            R3 K11 ["Left's parent isn't node"]
       85 GETIMPORT                        R1 K7 [assert]
       87 CALL                             R1 2 0
       88 GETUPVAL                         R1 1
       89 GETTABLEKS                       R2 R0 K8 ["childNodeRight"]
       91 CALL                             R1 1 0
       92 RETURN                           R0 0

PROTO_48:
        0 JUMPIFNOT                        R0 ; [+26]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["childNodeRight"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K1 ["childNodeLeft"]
        8 CALL                             R2 1 1
        9 ADD                              R4 R1 R2
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R0
       12 CALL                             R5 1 1
       13 ADD                              R3 R4 R5
       14 GETTABLEKS                       R6 R0 K2 ["childNodeTreeCount"]
       16 JUMPIFEQ                         R6 R3 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       22 LOADK                            R6 K3 ["Count must be the sum of the children's count + 1"]
       23 GETIMPORT                        R4 K5 [assert]
       25 CALL                             R4 2 0
       26 RETURN                           R3 1
       27 LOADN                            R1 0
       28 RETURN                           R1 1

PROTO_49:
        0 GETTABLEKS                       R3 R0 K0 ["childNodeColor"]
        2 JUMPIFEQKB                       R3 FALSE ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["The root must be black"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 NEWTABLE                         R1 0 0
       14 DUPCLOSURE                       R2 K4 [PROTO_46]
       15 CAPTURE                          VAL R2
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R3
       19 DUPCLOSURE                       R4 K5 [PROTO_48]
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U0
       22 MOVE                             R5 R3
       23 MOVE                             R6 R0
       24 CALL                             R5 1 0
       25 JUMPIF                           R0 ; [+1]
       26 JUMP                             ; [+26]
       27 MOVE                             R5 R2
       28 GETTABLEKS                       R6 R0 K6 ["childNodeLeft"]
       30 CALL                             R5 1 1
       31 MOVE                             R6 R2
       32 GETTABLEKS                       R7 R0 K7 ["childNodeRight"]
       34 CALL                             R6 1 1
       35 JUMPIFEQ                         R5 R6 ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 FASTCALL2K                       ASSERT R8 K8 ; [+4]
       41 LOADK                            R9 K8 ["All paths from a node to its descendants must go through the same number of black nodes"]
       42 GETIMPORT                        R7 K3 [assert]
       44 CALL                             R7 2 0
       45 GETTABLEKS                       R9 R0 K0 ["childNodeColor"]
       47 JUMPIFNOTEQKB                    R9 FALSE ; [+3]
       49 LOADN                            R8 1
       50 JUMP                             ; [+1]
       51 LOADN                            R8 0
       52 ADD                              R7 R5 R8
       53 JUMPIFNOT                        R0 ; [+26]
       54 MOVE                             R5 R4
       55 GETTABLEKS                       R6 R0 K7 ["childNodeRight"]
       57 CALL                             R5 1 1
       58 MOVE                             R6 R4
       59 GETTABLEKS                       R7 R0 K6 ["childNodeLeft"]
       61 CALL                             R6 1 1
       62 ADD                              R8 R5 R6
       63 GETUPVAL                         R9 0
       64 MOVE                             R10 R0
       65 CALL                             R9 1 1
       66 ADD                              R7 R8 R9
       67 GETTABLEKS                       R10 R0 K9 ["childNodeTreeCount"]
       69 JUMPIFEQ                         R10 R7 ; [+2]
       71 LOADB                            R9 0 +1
       72 LOADB                            R9 1
       73 FASTCALL2K                       ASSERT R9 K10 ; [+4]
       75 LOADK                            R10 K10 ["Count must be the sum of the children's count + 1"]
       76 GETIMPORT                        R8 K3 [assert]
       78 CALL                             R8 2 0
       79 JUMP                             ; [0]
       80 GETTABLEKS                       R7 R0 K11 ["childNodeParent"]
       82 NOT                              R6 R7
       83 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       85 LOADK                            R7 K12 ["Root must have no parent"]
       86 GETIMPORT                        R5 K3 [assert]
       88 CALL                             R5 2 0
       89 RETURN                           R0 0

PROTO_50:
        0 LOADNIL                          R1
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R10 R6 K0 ["datum"]
        9 GETTABLEKS                       R11 R1 K0 ["datum"]
       11 CALL                             R9 2 1
       12 NOT                              R8 R9
       13 FASTCALL2K                       ASSERT R8 K1 ; [+4]
       15 LOADK                            R9 K1 ["Array is not sorted"]
       16 GETIMPORT                        R7 K3 [assert]
       18 CALL                             R7 2 0
       19 MOVE                             R1 R6
       20 FORGLOOP                         R2 2 ; [-16]
       22 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R1 R0 K0 ["tree"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K0 ["tree"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R2 R0 K1 ["array"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_52:
        0 DUPTABLE                         R1 K7 [{[1], ["uiState"], ["children"], ["childNodeColor"] = False, ["childNodeTreeCount"] = 1}]
        1 DUPTABLE                         R2 K14 [{["id"] = "", ["name"], ["className"] = "Folder", ["hasChildren"] = False}]
        2 SETTABLEKS                       R0 R2 K10 ["name"]
        4 SETTABLEKS                       R2 R1 K0 ["datum"]
        6 DUPTABLE                         R2 K17 [{["isExpanded"] = True}]
        7 SETTABLEKS                       R2 R1 K1 ["uiState"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K18 ["empty"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K2 ["children"]
       15 RETURN                           R1 1

PROTO_53:
        0 GETTABLEKS                       R4 R0 K0 ["array"]
        2 NOT                              R3 R4
        3 JUMPIF                           R3 ; [+7]
        4 GETTABLEKS                       R5 R0 K0 ["array"]
        6 LENGTH                           R4 R5
        7 JUMPIFEQKN                       R4 K1 [0] ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["Array must be empty"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R0 K0 ["array"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K5 ["testCreateNode"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R0 K6 ["tree"]
       27 RETURN                           R2 1

PROTO_54:
        0 GETTABLEKS                       R5 R0 K0 ["childNodeRight"]
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        5 LOADK                            R5 K1 ["Right must be empty"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["testCreateNode"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R0 K0 ["childNodeRight"]
       16 SETTABLEKS                       R0 R3 K5 ["childNodeParent"]
       18 SETTABLEKS                       R2 R3 K6 ["childNodeColor"]
       20 MOVE                             R4 R0
       21 JUMPIFNOT                        R4 ; [+8]
       22 GETTABLEKS                       R5 R4 K7 ["childNodeTreeCount"]
       24 ADDK                             R5 R5 K8 [1]
       25 SETTABLEKS                       R5 R4 K7 ["childNodeTreeCount"]
       27 GETTABLEKS                       R4 R4 K5 ["childNodeParent"]
       29 JUMPBACK                         ; [-9]
       30 RETURN                           R3 1

PROTO_55:
        0 GETTABLEKS                       R5 R0 K0 ["childNodeLeft"]
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        5 LOADK                            R5 K1 ["Left must be empty"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["testCreateNode"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R0 K0 ["childNodeLeft"]
       16 SETTABLEKS                       R0 R3 K5 ["childNodeParent"]
       18 SETTABLEKS                       R2 R3 K6 ["childNodeColor"]
       20 MOVE                             R4 R0
       21 JUMPIFNOT                        R4 ; [+8]
       22 GETTABLEKS                       R5 R4 K7 ["childNodeTreeCount"]
       24 ADDK                             R5 R5 K8 [1]
       25 SETTABLEKS                       R5 R4 K7 ["childNodeTreeCount"]
       27 GETTABLEKS                       R4 R4 K5 ["childNodeParent"]
       29 JUMPBACK                         ; [-9]
       30 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["compareDatum"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Util"]
       23 GETTABLEKS                       R4 R4 K9 ["getTreeCount"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Util"]
       30 GETTABLEKS                       R5 R5 K10 ["profile"]
       32 CALL                             R4 1 1
       33 NEWTABLE                         R5 32 0
       35 LOADN                            R6 7
       36 SETTABLEKS                       R6 R5 K11 ["ARRAY_LIMIT"]
       38 LOADB                            R7 1
       39 FASTCALL2K                       ASSERT R7 K12 ; [+4]
       41 LOADK                            R8 K12 ["ARRAY_LIMIT must be a power of two minus one so we can efficiently promote an array to a tree."]
       42 GETIMPORT                        R6 K14 [assert]
       44 CALL                             R6 2 0
       45 LOADB                            R6 0
       46 SETTABLEKS                       R6 R5 K15 ["BLACK"]
       48 LOADB                            R6 1
       49 SETTABLEKS                       R6 R5 K16 ["RED"]
       51 DUPCLOSURE                       R6 K17 [PROTO_0]
       52 SETTABLEKS                       R6 R5 K18 ["empty"]
       54 DUPCLOSURE                       R6 K19 [PROTO_1]
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R6 R5 K20 ["ensureChildList"]
       58 DUPCLOSURE                       R6 K21 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 DUPCLOSURE                       R7 K22 [PROTO_3]
       61 CAPTURE                          VAL R6
       62 DUPCLOSURE                       R8 K23 [PROTO_4]
       63 DUPCLOSURE                       R9 K24 [PROTO_5]
       64 DUPCLOSURE                       R10 K25 [PROTO_6]
       65 DUPCLOSURE                       R11 K26 [PROTO_7]
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R10
       68 DUPCLOSURE                       R12 K27 [PROTO_8]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R11
       72 DUPCLOSURE                       R13 K28 [PROTO_9]
       73 CAPTURE                          VAL R2
       74 DUPCLOSURE                       R14 K29 [PROTO_10]
       75 DUPCLOSURE                       R15 K30 [PROTO_11]
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R15 R5 K31 ["patchNodeDescendantCount"]
       79 DUPCLOSURE                       R15 K32 [PROTO_12]
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R15 R5 K33 ["insert"]
       85 DUPCLOSURE                       R15 K34 [PROTO_13]
       86 DUPCLOSURE                       R16 K35 [PROTO_14]
       87 CAPTURE                          VAL R3
       88 DUPCLOSURE                       R17 K36 [PROTO_15]
       89 CAPTURE                          VAL R3
       90 DUPCLOSURE                       R18 K37 [PROTO_16]
       91 LOADNIL                          R19
       92 DUPCLOSURE                       R20 K38 [PROTO_17]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R9
       95 DUPCLOSURE                       R21 K39 [PROTO_18]
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R20
       99 DUPCLOSURE                       R22 K40 [PROTO_19]
      100 CAPTURE                          VAL R21
      101 NEWCLOSURE                       R23 P20
      102 CAPTURE                          REF R19
      103 CAPTURE                          VAL R22
      104 NEWCLOSURE                       R24 P21
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R9
      107 CAPTURE                          REF R19
      108 CAPTURE                          VAL R23
      109 DUPCLOSURE                       R19 K41 [PROTO_22]
      110 CAPTURE                          VAL R24
      111 NEWCLOSURE                       R25 P23
      112 CAPTURE                          VAL R3
      113 CAPTURE                          REF R19
      114 DUPCLOSURE                       R26 K42 [PROTO_24]
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R25
      117 DUPCLOSURE                       R27 K43 [PROTO_25]
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R25
      120 SETTABLEKS                       R27 R5 K44 ["remove"]
      122 DUPCLOSURE                       R27 K45 [PROTO_26]
      123 SETTABLEKS                       R27 R5 K46 ["replaceChildren"]
      125 DUPCLOSURE                       R27 K47 [PROTO_27]
      126 CAPTURE                          VAL R27
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R5
      129 DUPCLOSURE                       R28 K48 [PROTO_28]
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R27
      133 SETTABLEKS                       R28 R5 K49 ["getNthDescendant"]
      135 MOVE                             R28 R4
      136 GETTABLEKS                       R29 R5 K49 ["getNthDescendant"]
      138 CALL                             R28 1 1
      139 SETTABLEKS                       R28 R5 K49 ["getNthDescendant"]
      141 DUPCLOSURE                       R28 K50 [PROTO_29]
      142 CAPTURE                          VAL R28
      143 DUPCLOSURE                       R29 K51 [PROTO_32]
      144 DUPCLOSURE                       R30 K52 [PROTO_34]
      145 DUPCLOSURE                       R31 K53 [PROTO_36]
      146 CAPTURE                          VAL R29
      147 SETTABLEKS                       R31 R5 K54 ["iterateSiblings"]
      149 DUPCLOSURE                       R31 K55 [PROTO_39]
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R29
      152 SETTABLEKS                       R31 R5 K56 ["iterate"]
      154 DUPCLOSURE                       R31 K57 [PROTO_40]
      155 SETTABLEKS                       R31 R5 K58 ["isEmpty"]
      157 DUPCLOSURE                       R31 K59 [PROTO_41]
      158 SETTABLEKS                       R31 R5 K60 ["first"]
      160 DUPCLOSURE                       R31 K61 [PROTO_42]
      161 SETTABLEKS                       R31 R5 K62 ["last"]
      163 DUPCLOSURE                       R31 K63 [PROTO_43]
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R31
      166 DUPCLOSURE                       R32 K64 [PROTO_44]
      167 CAPTURE                          VAL R31
      168 SETTABLEKS                       R32 R5 K65 ["dumpNode"]
      170 DUPCLOSURE                       R32 K66 [PROTO_45]
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R31
      173 SETTABLEKS                       R32 R5 K67 ["dump"]
      175 DUPCLOSURE                       R32 K68 [PROTO_49]
      176 CAPTURE                          VAL R3
      177 DUPCLOSURE                       R33 K69 [PROTO_50]
      178 CAPTURE                          VAL R2
      179 DUPCLOSURE                       R34 K70 [PROTO_51]
      180 CAPTURE                          VAL R32
      181 CAPTURE                          VAL R33
      182 SETTABLEKS                       R34 R5 K71 ["testAssertInvariants"]
      184 DUPCLOSURE                       R34 K72 [PROTO_52]
      185 CAPTURE                          VAL R5
      186 SETTABLEKS                       R34 R5 K73 ["testCreateNode"]
      188 DUPCLOSURE                       R34 K74 [PROTO_53]
      189 CAPTURE                          VAL R5
      190 SETTABLEKS                       R34 R5 K75 ["testSetRoot"]
      192 DUPCLOSURE                       R34 K76 [PROTO_54]
      193 CAPTURE                          VAL R5
      194 SETTABLEKS                       R34 R5 K77 ["testSetRight"]
      196 DUPCLOSURE                       R34 K78 [PROTO_55]
      197 CAPTURE                          VAL R5
      198 SETTABLEKS                       R34 R5 K79 ["testSetLeft"]
      200 CLOSEUPVALS                      R19
      201 RETURN                           R5 1
