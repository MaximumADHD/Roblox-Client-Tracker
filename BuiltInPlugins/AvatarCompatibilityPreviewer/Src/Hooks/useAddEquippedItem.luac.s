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
       11 JUMPIFEQKNIL                     R2 ; [+33]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["palette"]
       16 GETTABLEKS                       R3 R3 K5 ["MaxItems"]
       18 JUMPIFNOTEQKNIL                  R3 ; [+7]
       20 GETIMPORT                        R3 K7 [table.remove]
       22 MOVE                             R4 R1
       23 MOVE                             R5 R2
       24 CALL                             R3 2 0
       25 JUMP                             ; [+19]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K8 ["count"]
       29 MOVE                             R4 R1
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U1
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K4 ["palette"]
       36 GETTABLEKS                       R4 R4 K5 ["MaxItems"]
       38 JUMPIFNOTLE                      R4 R3 ; [+6]
       40 GETIMPORT                        R4 K7 [table.remove]
       42 MOVE                             R5 R1
       43 MOVE                             R6 R2
       44 CALL                             R4 2 0
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K4 ["palette"]
       48 GETTABLEKS                       R3 R3 K9 ["PreferredLayer"]
       50 JUMPIFNOTEQKNIL                  R3 ; [+9]
       52 GETUPVAL                         R5 1
       53 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       55 MOVE                             R4 R1
       56 GETIMPORT                        R3 K11 [table.insert]
       58 CALL                             R3 2 0
       59 RETURN                           R1 1
       60 GETUPVAL                         R5 2
       61 MOVE                             R6 R1
       62 GETUPVAL                         R7 1
       63 GETTABLEKS                       R7 R7 K4 ["palette"]
       65 GETTABLEKS                       R7 R7 K9 ["PreferredLayer"]
       67 CALL                             R5 2 1
       68 GETUPVAL                         R6 1
       69 FASTCALL3                        TABLE_INSERT R1 R5 R6
       71 MOVE                             R4 R1
       72 GETIMPORT                        R3 K11 [table.insert]
       74 CALL                             R3 3 0
       75 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R0
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

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
       37 DUPCLOSURE                       R5 K13 [PROTO_0]
       38 CAPTURE                          VAL R3
       39 DUPCLOSURE                       R6 K14 [PROTO_5]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 RETURN                           R6 1
