PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["palette"]
        2 GETTABLEKS                       R2 R3 K1 ["OverrideEquipKey"]
        4 JUMPIF                           R2 ; [+4]
        5 GETTABLEKS                       R3 R0 K0 ["palette"]
        7 GETTABLEKS                       R2 R3 K2 ["Key"]
        9 GETTABLEKS                       R4 R1 K0 ["palette"]
       11 GETTABLEKS                       R3 R4 K1 ["OverrideEquipKey"]
       13 JUMPIF                           R3 ; [+4]
       14 GETTABLEKS                       R4 R1 K0 ["palette"]
       16 GETTABLEKS                       R3 R4 K2 ["Key"]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["item"]
        2 GETTABLEKS                       R2 R3 K1 ["source"]
        4 JUMPIFNOTEQKS                    R2 K2 ["builtin"] ; [+20]
        6 GETTABLEKS                       R3 R1 K0 ["item"]
        8 GETTABLEKS                       R2 R3 K1 ["source"]
       10 JUMPIFNOTEQKS                    R2 K2 ["builtin"] ; [+14]
       12 GETTABLEKS                       R4 R0 K0 ["item"]
       14 GETTABLEKS                       R3 R4 K3 ["builtinItem"]
       16 GETTABLEKS                       R5 R1 K0 ["item"]
       18 GETTABLEKS                       R4 R5 K3 ["builtinItem"]
       20 JUMPIFEQ                         R3 R4 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1
       25 GETTABLEKS                       R3 R0 K0 ["item"]
       27 GETTABLEKS                       R2 R3 K1 ["source"]
       29 JUMPIFNOTEQKS                    R2 K4 ["instance"] ; [+24]
       31 GETTABLEKS                       R3 R1 K0 ["item"]
       33 GETTABLEKS                       R2 R3 K1 ["source"]
       35 JUMPIFNOTEQKS                    R2 K4 ["instance"] ; [+18]
       37 GETTABLEKS                       R5 R0 K0 ["item"]
       39 GETTABLEKS                       R4 R5 K4 ["instance"]
       41 GETTABLEKS                       R3 R4 K5 ["Name"]
       43 GETTABLEKS                       R6 R1 K0 ["item"]
       45 GETTABLEKS                       R5 R6 K4 ["instance"]
       47 GETTABLEKS                       R4 R5 K5 ["Name"]
       49 JUMPIFEQ                         R3 R4 ; [+2]
       51 LOADB                            R2 0 +1
       52 LOADB                            R2 1
       53 RETURN                           R2 1
       54 GETUPVAL                         R2 0
       55 CALL                             R2 0 1
       56 JUMPIFNOT                        R2 ; [+76]
       57 GETTABLEKS                       R3 R0 K0 ["item"]
       59 GETTABLEKS                       R2 R3 K1 ["source"]
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R3 R4 K6 ["SOURCE_MARKETPLACE"]
       64 JUMPIFNOTEQ                      R2 R3 ; [+68]
       66 GETTABLEKS                       R3 R1 K0 ["item"]
       68 GETTABLEKS                       R2 R3 K1 ["source"]
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R3 R4 K6 ["SOURCE_MARKETPLACE"]
       73 JUMPIFNOTEQ                      R2 R3 ; [+59]
       75 GETUPVAL                         R2 2
       76 CALL                             R2 0 1
       77 JUMPIFNOT                        R2 ; [+11]
       78 GETUPVAL                         R2 3
       79 GETTABLEKS                       R4 R0 K0 ["item"]
       81 GETTABLEKS                       R3 R4 K7 ["marketplaceItem"]
       83 GETTABLEKS                       R5 R1 K0 ["item"]
       85 GETTABLEKS                       R4 R5 K7 ["marketplaceItem"]
       87 CALL                             R2 2 -1
       88 RETURN                           R2 -1
       89 GETTABLEKS                       R4 R0 K0 ["item"]
       91 GETTABLEKS                       R3 R4 K7 ["marketplaceItem"]
       93 FASTCALL1                        TYPEOF R3 ; [+2]
       94 GETIMPORT                        R2 K9 [typeof]
       96 CALL                             R2 1 1
       97 JUMPIFNOTEQKS                    R2 K10 ["table"] ; [+22]
       99 GETTABLEKS                       R4 R1 K0 ["item"]
      101 GETTABLEKS                       R3 R4 K7 ["marketplaceItem"]
      103 FASTCALL1                        TYPEOF R3 ; [+2]
      104 GETIMPORT                        R2 K9 [typeof]
      106 CALL                             R2 1 1
      107 JUMPIFNOTEQKS                    R2 K10 ["table"] ; [+12]
      109 GETUPVAL                         R2 3
      110 GETTABLEKS                       R4 R0 K0 ["item"]
      112 GETTABLEKS                       R3 R4 K7 ["marketplaceItem"]
      114 GETTABLEKS                       R5 R1 K0 ["item"]
      116 GETTABLEKS                       R4 R5 K7 ["marketplaceItem"]
      118 CALL                             R2 2 -1
      119 RETURN                           R2 -1
      120 GETTABLEKS                       R4 R0 K0 ["item"]
      122 GETTABLEKS                       R3 R4 K7 ["marketplaceItem"]
      124 GETTABLEKS                       R5 R1 K0 ["item"]
      126 GETTABLEKS                       R4 R5 K7 ["marketplaceItem"]
      128 JUMPIFEQ                         R3 R4 ; [+2]
      130 LOADB                            R2 0 +1
      131 LOADB                            R2 1
      132 RETURN                           R2 1
      133 LOADB                            R2 0
      134 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+29]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R4 R0 K0 ["palette"]
        6 GETTABLEKS                       R3 R4 K1 ["OverrideEquipKey"]
        8 JUMPIF                           R3 ; [+4]
        9 GETTABLEKS                       R4 R0 K0 ["palette"]
       11 GETTABLEKS                       R3 R4 K2 ["Key"]
       13 GETTABLEKS                       R5 R2 K0 ["palette"]
       15 GETTABLEKS                       R4 R5 K1 ["OverrideEquipKey"]
       17 JUMPIF                           R4 ; [+4]
       18 GETTABLEKS                       R5 R2 K0 ["palette"]
       20 GETTABLEKS                       R4 R5 K2 ["Key"]
       22 JUMPIFEQ                         R3 R4 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 JUMPIFNOT                        R1 ; [+4]
       27 GETUPVAL                         R1 2
       28 MOVE                             R2 R0
       29 GETUPVAL                         R3 1
       30 CALL                             R1 2 1
       31 RETURN                           R1 1
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R4 R0 K0 ["palette"]
       35 GETTABLEKS                       R3 R4 K1 ["OverrideEquipKey"]
       37 JUMPIF                           R3 ; [+4]
       38 GETTABLEKS                       R4 R0 K0 ["palette"]
       40 GETTABLEKS                       R3 R4 K2 ["Key"]
       42 GETTABLEKS                       R5 R2 K0 ["palette"]
       44 GETTABLEKS                       R4 R5 K1 ["OverrideEquipKey"]
       46 JUMPIF                           R4 ; [+4]
       47 GETTABLEKS                       R5 R2 K0 ["palette"]
       49 GETTABLEKS                       R4 R5 K2 ["Key"]
       51 JUMPIFEQ                         R3 R4 ; [+2]
       53 LOADB                            R1 0 +1
       54 LOADB                            R1 1
       55 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["findIndex"]
        7 MOVE                             R3 R1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CALL                             R2 2 1
       13 JUMPIFEQKNIL                     R2 ; [+9]
       15 GETIMPORT                        R3 K2 [table.clone]
       17 GETTABLE                         R4 R1 R2
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 4
       20 SETTABLEKS                       R4 R3 K4 ["isHidden"]
       22 SETTABLE                         R3 R1 R2
       23 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 2
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K9 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Util"]
       43 GETTABLEKS                       R6 R7 K13 ["shallowEqual"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K9 ["Src"]
       50 GETTABLEKS                       R8 R9 K14 ["Flags"]
       52 GETTABLEKS                       R7 R8 K15 ["getFFlagAvatarPreviewerMakeup"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K9 ["Src"]
       59 GETTABLEKS                       R9 R10 K14 ["Flags"]
       61 GETTABLEKS                       R8 R9 K16 ["getFFlagAvatarPreviewerLookComposer"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R11 R0 K9 ["Src"]
       68 GETTABLEKS                       R10 R11 K14 ["Flags"]
       70 GETTABLEKS                       R9 R10 K17 ["getFFlagAvatarPreviewerFixShallowEqual"]
       72 CALL                             R8 1 1
       73 DUPCLOSURE                       R9 K18 [PROTO_0]
       74 DUPCLOSURE                       R10 K19 [PROTO_1]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 DUPCLOSURE                       R11 K20 [PROTO_5]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R10
       84 RETURN                           R11 1
