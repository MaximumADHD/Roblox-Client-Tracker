PROTO_0:
        0 LOADN                            R2 0
        1 LOADN                            R3 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K0 ["palette"]
        8 GETTABLEKS                       R9 R9 K1 ["PreferredLayer"]
       10 JUMPIFEQKNIL                     R9 ; [+18]
       12 JUMPIFNOTEQKNIL                  R9 ; [+2]
       14 LOADB                            R11 0 +1
       15 LOADB                            R11 1
       16 GETUPVAL                         R12 0
       17 GETTABLEKS                       R12 R12 K2 ["LUAU_ANALYZE_ERROR"]
       19 FASTCALL2                        ASSERT R11 R12 ; [+3]
       21 GETIMPORT                        R10 K4 [assert]
       23 CALL                             R10 2 0
       24 JUMPIFNOTLE                      R9 R1 ; [+4]
       26 JUMPIFNOTLE                      R3 R9 ; [+2]
       28 MOVE                             R2 R7
       29 FORGLOOP                         R4 2 ; [-24]
       31 ADDK                             R4 R2 K5 [1]
       32 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["palette"]
        2 GETTABLEKS                       R1 R1 K1 ["OverrideEquipKey"]
        4 JUMPIF                           R1 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["palette"]
        7 GETTABLEKS                       R1 R1 K2 ["Key"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["palette"]
       12 GETTABLEKS                       R2 R2 K1 ["OverrideEquipKey"]
       14 JUMPIF                           R2 ; [+5]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["palette"]
       18 GETTABLEKS                       R2 R2 K2 ["Key"]
       20 JUMPIFEQ                         R1 R2 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["palette"]
        2 GETTABLEKS                       R1 R1 K1 ["OverrideEquipKey"]
        4 JUMPIF                           R1 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["palette"]
        7 GETTABLEKS                       R1 R1 K2 ["Key"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["palette"]
       12 GETTABLEKS                       R2 R2 K1 ["OverrideEquipKey"]
       14 JUMPIF                           R2 ; [+5]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["palette"]
       18 GETTABLEKS                       R2 R2 K2 ["Key"]
       20 JUMPIFEQ                         R1 R2 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["findIndex"]
        7 MOVE                             R3 R1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R2 2 1
       11 JUMPIFEQKNIL                     R2 ; [+42]
       13 GETUPVAL                         R3 2
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+33]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["palette"]
       19 GETTABLEKS                       R3 R3 K5 ["MaxItems"]
       21 JUMPIFNOTEQKNIL                  R3 ; [+7]
       23 GETIMPORT                        R3 K7 [table.remove]
       25 MOVE                             R4 R1
       26 MOVE                             R5 R2
       27 CALL                             R3 2 0
       28 JUMP                             ; [+25]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K8 ["count"]
       32 MOVE                             R4 R1
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          UPVAL U1
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K4 ["palette"]
       39 GETTABLEKS                       R4 R4 K5 ["MaxItems"]
       41 JUMPIFNOTLE                      R4 R3 ; [+12]
       43 GETIMPORT                        R4 K7 [table.remove]
       45 MOVE                             R5 R1
       46 MOVE                             R6 R2
       47 CALL                             R4 2 0
       48 JUMP                             ; [+5]
       49 GETIMPORT                        R3 K7 [table.remove]
       51 MOVE                             R4 R1
       52 MOVE                             R5 R2
       53 CALL                             R3 2 0
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K4 ["palette"]
       57 GETTABLEKS                       R3 R3 K9 ["PreferredLayer"]
       59 JUMPIFNOTEQKNIL                  R3 ; [+9]
       61 GETUPVAL                         R5 1
       62 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       64 MOVE                             R4 R1
       65 GETIMPORT                        R3 K11 [table.insert]
       67 CALL                             R3 2 0
       68 RETURN                           R1 1
       69 GETUPVAL                         R5 3
       70 MOVE                             R6 R1
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K4 ["palette"]
       74 GETTABLEKS                       R7 R7 K9 ["PreferredLayer"]
       76 CALL                             R5 2 1
       77 GETUPVAL                         R6 1
       78 FASTCALL3                        TABLE_INSERT R1 R5 R6
       80 MOVE                             R4 R1
       81 GETIMPORT                        R3 K11 [table.insert]
       83 CALL                             R3 3 0
       84 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 NEWTABLE                         R3 0 1
       10 MOVE                             R4 R0
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Flags"]
       43 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarPreviewerMakeup"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_0]
       47 CAPTURE                          VAL R3
       48 DUPCLOSURE                       R7 K16 [PROTO_5]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 RETURN                           R7 1
