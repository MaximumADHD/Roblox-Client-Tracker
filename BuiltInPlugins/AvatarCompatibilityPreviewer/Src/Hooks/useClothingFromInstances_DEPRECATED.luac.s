PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K0 ["LUAU_ANALYZE_ERROR"]
       12 FASTCALL2                        ASSERT R1 R2 ; [+3]
       14 GETIMPORT                        R0 K2 [assert]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R0 R1 K3 ["current"]
       20 NEWTABLE                         R1 0 0
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R2 R5 K4 ["equippedItems"]
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 FORGPREP                         R2
       28 GETTABLEKS                       R8 R6 K5 ["item"]
       30 GETTABLEKS                       R7 R8 K6 ["source"]
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R8 R9 K7 ["SOURCE_INSTANCE"]
       35 JUMPIFNOTEQ                      R7 R8 ; [+60]
       37 GETTABLEKS                       R10 R6 K5 ["item"]
       39 GETTABLEKS                       R9 R10 K6 ["source"]
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R10 R11 K7 ["SOURCE_INSTANCE"]
       44 JUMPIFEQ                         R9 R10 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R9 R10 K0 ["LUAU_ANALYZE_ERROR"]
       51 FASTCALL2                        ASSERT R8 R9 ; [+3]
       53 GETIMPORT                        R7 K2 [assert]
       55 CALL                             R7 2 0
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R8 R9 K3 ["current"]
       59 GETTABLE                         R7 R8 R6
       60 JUMPIFEQKNIL                     R7 ; [+20]
       62 GETTABLEKS                       R7 R6 K8 ["isHidden"]
       64 JUMPIF                           R7 ; [+31]
       65 GETTABLE                         R7 R0 R6
       66 SETTABLE                         R7 R1 R6
       67 GETTABLEKS                       R8 R6 K9 ["palette"]
       69 GETTABLEKS                       R7 R8 K10 ["UpdateInstances"]
       71 JUMPIFEQKNIL                     R7 ; [+24]
       73 GETTABLEKS                       R8 R6 K9 ["palette"]
       75 GETTABLEKS                       R7 R8 K10 ["UpdateInstances"]
       77 GETTABLE                         R8 R0 R6
       78 MOVE                             R9 R5
       79 CALL                             R7 2 0
       80 JUMP                             ; [+15]
       81 GETTABLEKS                       R7 R6 K8 ["isHidden"]
       83 JUMPIF                           R7 ; [+12]
       84 GETTABLEKS                       R8 R6 K9 ["palette"]
       86 GETTABLEKS                       R7 R8 K11 ["WearInstance"]
       88 GETTABLEKS                       R9 R6 K5 ["item"]
       90 GETTABLEKS                       R8 R9 K12 ["instance"]
       92 GETUPVAL                         R9 0
       93 MOVE                             R10 R5
       94 CALL                             R7 3 1
       95 SETTABLE                         R7 R1 R6
       96 FORGLOOP                         R2 2 ; [-69]
       98 GETUPVAL                         R5 4
       99 GETTABLEKS                       R2 R5 K3 ["current"]
      101 LOADNIL                          R3
      102 LOADNIL                          R4
      103 FORGPREP                         R2
      104 GETTABLE                         R7 R1 R6
      105 JUMPIFNOTEQKNIL                  R7 ; [+21]
      107 GETUPVAL                         R9 2
      108 GETTABLEKS                       R8 R9 K3 ["current"]
      110 GETTABLE                         R7 R8 R6
      111 JUMPIFEQKNIL                     R7 ; [+15]
      113 GETUPVAL                         R11 2
      114 GETTABLEKS                       R10 R11 K3 ["current"]
      116 GETTABLE                         R7 R10 R6
      117 LOADNIL                          R8
      118 LOADNIL                          R9
      119 FORGPREP                         R7
      120 JUMPIFEQKNIL                     R11 ; [+4]
      122 NAMECALL                         R12 R11 K13 ["Destroy"]
      124 CALL                             R12 1 0
      125 FORGLOOP                         R7 2 ; [-6]
      127 FORGLOOP                         R2 2 ; [-24]
      129 GETUPVAL                         R2 4
      130 GETUPVAL                         R4 3
      131 GETTABLEKS                       R3 R4 K4 ["equippedItems"]
      133 SETTABLEKS                       R3 R2 K3 ["current"]
      135 GETUPVAL                         R2 2
      136 SETTABLEKS                       R1 R2 K3 ["current"]
      138 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 NAMECALL                         R10 R9 K1 ["Destroy"]
       12 CALL                             R10 1 0
       13 FORGLOOP                         R5 2 ; [-4]
       15 FORGLOOP                         R0 2 ; [-10]
       17 GETIMPORT                        R0 K4 [table.clear]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K0 ["current"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["AvatarPreviewerEditingTools_Dev is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["useContext"]
       12 GETUPVAL                         R2 2
       13 CALL                             R1 1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K4 ["useRef"]
       17 NEWTABLE                         R3 0 0
       19 CALL                             R2 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K4 ["useRef"]
       23 NEWTABLE                         R4 0 0
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R6 R2 K5 ["current"]
       28 JUMPIFNOTEQKNIL                  R6 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R6 R7 K6 ["LUAU_ANALYZE_ERROR"]
       35 FASTCALL2                        ASSERT R5 R6 ; [+3]
       37 GETIMPORT                        R4 K2 [assert]
       39 CALL                             R4 2 0
       40 GETTABLEKS                       R6 R3 K5 ["current"]
       42 JUMPIFNOTEQKNIL                  R6 ; [+2]
       44 LOADB                            R5 0 +1
       45 LOADB                            R5 1
       46 GETUPVAL                         R7 3
       47 GETTABLEKS                       R6 R7 K6 ["LUAU_ANALYZE_ERROR"]
       49 FASTCALL2                        ASSERT R5 R6 ; [+3]
       51 GETIMPORT                        R4 K2 [assert]
       53 CALL                             R4 2 0
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R4 R5 K7 ["useEffect"]
       57 NEWCLOSURE                       R5 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 NEWTABLE                         R6 0 2
       65 MOVE                             R7 R0
       66 GETTABLEKS                       R8 R1 K8 ["equippedItems"]
       68 SETLIST                          R6 R7 2 [1]
       70 CALL                             R4 2 0
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R4 R5 K7 ["useEffect"]
       74 NEWCLOSURE                       R5 P1
       75 CAPTURE                          VAL R2
       76 NEWTABLE                         R6 0 1
       78 MOVE                             R7 R0
       79 SETLIST                          R6 R7 1 [1]
       81 CALL                             R4 2 0
       82 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["EquipmentStateContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K13 ["Flags"]
       45 GETTABLEKS                       R6 R7 K14 ["getFFlagAvatarPreviewerEditingTools"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_3]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 RETURN                           R6 1
