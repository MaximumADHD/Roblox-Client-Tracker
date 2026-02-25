PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEN                        R1 R0 1
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 OR                               R1 R2 R0
        3 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 0
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+22]
        9 GETUPVAL                         R1 3
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+17]
       12 GETUPVAL                         R2 4
       13 GETTABLEKS                       R1 R2 K0 ["getIsEditingWorldModel"]
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+12]
       17 GETTABLEKS                       R1 R0 K1 ["originalDummy"]
       19 GETUPVAL                         R2 0
       20 JUMPIFNOTEQ                      R1 R2 ; [+8]
       22 GETUPVAL                         R1 0
       23 GETUPVAL                         R3 5
       24 NAMECALL                         R1 R1 K2 ["IsDescendantOf"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+1]
       28 RETURN                           R0 1
       29 GETUPVAL                         R1 1
       30 RETURN                           R1 1
       31 GETUPVAL                         R2 6
       32 GETTABLEKS                       R1 R2 K3 ["computeHashSerializeContext"]
       34 NEWTABLE                         R2 0 1
       36 GETUPVAL                         R3 0
       37 SETLIST                          R2 R3 1 [1]
       39 DUPTABLE                         R3 K6 [{"ignoreUniformScaleChanges", "ignoreAccessories"}]
       40 LOADB                            R4 1
       41 SETTABLEKS                       R4 R3 K4 ["ignoreUniformScaleChanges"]
       43 LOADB                            R4 1
       44 SETTABLEKS                       R4 R3 K5 ["ignoreAccessories"]
       46 CALL                             R1 2 1
       47 DUPTABLE                         R2 K9 [{"originalDummy", "relativeScale", "hash"}]
       48 GETUPVAL                         R3 0
       49 SETTABLEKS                       R3 R2 K1 ["originalDummy"]
       51 GETTABLEKS                       R3 R1 K7 ["relativeScale"]
       53 SETTABLEKS                       R3 R2 K7 ["relativeScale"]
       55 GETUPVAL                         R4 6
       56 GETTABLEKS                       R3 R4 K10 ["hashCharacter"]
       58 GETUPVAL                         R4 0
       59 MOVE                             R5 R1
       60 CALL                             R3 2 1
       61 SETTABLEKS                       R3 R2 K8 ["hash"]
       63 MOVE                             R3 R2
       64 LOADNIL                          R4
       65 LOADNIL                          R5
       66 FORGPREP                         R3
       67 GETTABLE                         R8 R0 R6
       68 JUMPIFEQ                         R8 R7 ; [+2]
       70 RETURN                           R2 1
       71 FORGLOOP                         R3 2 ; [-5]
       73 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R0 R1 K0 ["new"]
       10 CALL                             R0 0 1
       11 GETUPVAL                         R4 4
       12 GETTABLEKS                       R3 R4 K1 ["throttleDeferWatchForChanges"]
       14 GETUPVAL                         R4 0
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CALL                             R3 2 -1
       19 NAMECALL                         R1 R0 K2 ["giveTask"]
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K3 ["AncestryChanged"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 NAMECALL                         R3 R3 K4 ["Connect"]
       30 CALL                             R3 2 -1
       31 NAMECALL                         R1 R0 K2 ["giveTask"]
       33 CALL                             R1 -1 0
       34 GETUPVAL                         R1 1
       35 GETUPVAL                         R2 2
       36 CALL                             R1 1 0
       37 NEWCLOSURE                       R1 P2
       38 CAPTURE                          VAL R0
       39 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["originalDummy"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 DUPTABLE                         R0 K5 [{"WorldModel", "ProportionalScale", "WorldModelScale", "LatestWorldModelHash"}]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K0 ["originalDummy"]
       11 SETTABLEKS                       R1 R0 K1 ["WorldModel"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K6 ["relativeScale"]
       16 SETTABLEKS                       R1 R0 K2 ["ProportionalScale"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K0 ["originalDummy"]
       21 NAMECALL                         R1 R1 K7 ["GetScale"]
       23 CALL                             R1 1 1
       24 SETTABLEKS                       R1 R0 K3 ["WorldModelScale"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K8 ["hash"]
       29 SETTABLEKS                       R1 R0 K4 ["LatestWorldModelHash"]
       31 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R1 0
        7 LENGTH                           R0 R1
        8 JUMPIFEQKN                       R0 K0 [1] ; [+3]
       10 LOADB                            R0 0
       11 RETURN                           R0 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K1 ["originalDummy"]
       15 GETUPVAL                         R1 0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 JUMPIFNOTEQ                      R5 R0 ; [+3]
       21 LOADB                            R6 1
       22 RETURN                           R6 1
       23 FORGLOOP                         R1 2 ; [-5]
       25 LOADB                            R1 0
       26 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["useCallback"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R3 0 1
       14 MOVE                             R4 R0
       15 SETLIST                          R3 R4 1 [1]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K2 ["useCallback"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 NEWTABLE                         R4 0 1
       26 MOVE                             R5 R0
       27 SETLIST                          R4 R5 1 [1]
       29 CALL                             R2 2 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K3 ["useState"]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 2
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K3 ["useState"]
       38 MOVE                             R6 R1
       39 CALL                             R5 1 2
       40 LOADNIL                          R7
       41 GETUPVAL                         R8 3
       42 CALL                             R8 0 1
       43 JUMPIFNOT                        R8 ; [+9]
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R8 R9 K4 ["useContext"]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R9 R10 K5 ["Context"]
       50 CALL                             R8 1 1
       51 MOVE                             R7 R8
       52 JUMP                             ; [+1]
       53 LOADNIL                          R7
       54 GETUPVAL                         R8 5
       55 GETTABLEKS                       R9 R0 K6 ["SelectionChanged"]
       57 NEWCLOSURE                       R10 P2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 NEWTABLE                         R11 0 3
       64 MOVE                             R12 R2
       65 MOVE                             R13 R1
       66 MOVE                             R14 R0
       67 SETLIST                          R11 R12 3 [1]
       69 CALL                             R8 3 0
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R8 R9 K2 ["useCallback"]
       73 NEWCLOSURE                       R9 P3
       74 CAPTURE                          VAL R3
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          REF R7
       79 CAPTURE                          UPVAL U7
       80 CAPTURE                          UPVAL U8
       81 NEWTABLE                         R10 0 1
       83 MOVE                             R11 R3
       84 SETLIST                          R10 R11 1 [1]
       86 CALL                             R8 2 1
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R9 R10 K3 ["useState"]
       90 NEWCLOSURE                       R10 P4
       91 CAPTURE                          VAL R8
       92 CAPTURE                          UPVAL U6
       93 CALL                             R9 1 2
       94 GETUPVAL                         R12 1
       95 GETTABLEKS                       R11 R12 K7 ["useEffect"]
       97 NEWCLOSURE                       R12 P5
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R8
      101 CAPTURE                          UPVAL U9
      102 CAPTURE                          UPVAL U10
      103 NEWTABLE                         R13 0 2
      105 MOVE                             R14 R3
      106 MOVE                             R15 R8
      107 SETLIST                          R13 R14 2 [1]
      109 CALL                             R11 2 0
      110 GETUPVAL                         R12 1
      111 GETTABLEKS                       R11 R12 K8 ["useMemo"]
      113 NEWCLOSURE                       R12 P6
      114 CAPTURE                          VAL R9
      115 NEWTABLE                         R13 0 3
      117 GETTABLEKS                       R14 R9 K9 ["originalDummy"]
      119 GETTABLEKS                       R15 R9 K10 ["hash"]
      121 GETTABLEKS                       R16 R9 K11 ["relativeScale"]
      123 SETLIST                          R13 R14 3 [1]
      125 CALL                             R11 2 1
      126 GETUPVAL                         R13 1
      127 GETTABLEKS                       R12 R13 K8 ["useMemo"]
      129 NEWCLOSURE                       R13 P7
      130 CAPTURE                          VAL R5
      131 CAPTURE                          UPVAL U11
      132 CAPTURE                          VAL R9
      133 NEWTABLE                         R14 0 2
      135 MOVE                             R15 R5
      136 GETTABLEKS                       R16 R9 K9 ["originalDummy"]
      138 SETLIST                          R14 R15 2 [1]
      140 CALL                             R12 2 1
      141 CLOSEUPVALS                      R7
      142 RETURN                           R11 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R0 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["CharacterHashUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R0 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["DataModelUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Src"]
       35 GETTABLEKS                       R6 R7 K11 ["Util"]
       37 GETTABLEKS                       R5 R6 K14 ["Maid"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R7 R0 K15 ["Packages"]
       44 GETTABLEKS                       R6 R7 K16 ["React"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R9 R0 K10 ["Src"]
       51 GETTABLEKS                       R8 R9 K11 ["Util"]
       53 GETTABLEKS                       R7 R8 K17 ["SelectionWrapper"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R10 R0 K10 ["Src"]
       60 GETTABLEKS                       R9 R10 K11 ["Util"]
       62 GETTABLEKS                       R8 R9 K18 ["isAvatar"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R11 R0 K10 ["Src"]
       69 GETTABLEKS                       R10 R11 K19 ["Hooks"]
       71 GETTABLEKS                       R9 R10 K20 ["useEventConnection"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R13 R0 K10 ["Src"]
       78 GETTABLEKS                       R12 R13 K21 ["Components"]
       80 GETTABLEKS                       R11 R12 K22 ["EditingTools"]
       82 GETTABLEKS                       R10 R11 K23 ["EditingWorldModelContext"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R13 R0 K10 ["Src"]
       89 GETTABLEKS                       R12 R13 K24 ["Flags"]
       91 GETTABLEKS                       R11 R12 K25 ["getFFlagAvatarAutosetupOptionsInput"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K9 [require]
       96 GETTABLEKS                       R14 R0 K10 ["Src"]
       98 GETTABLEKS                       R13 R14 K24 ["Flags"]
      100 GETTABLEKS                       R12 R13 K26 ["getFFlagAvatarPreviewerEditingTools"]
      102 CALL                             R11 1 1
      103 GETIMPORT                        R12 K9 [require]
      105 GETTABLEKS                       R14 R0 K10 ["Src"]
      107 GETTABLEKS                       R13 R14 K27 ["Types"]
      109 CALL                             R12 1 1
      110 GETIMPORT                        R13 K30 [table.freeze]
      112 NEWTABLE                         R14 0 0
      114 CALL                             R13 1 1
      115 DUPCLOSURE                       R14 K31 [PROTO_12]
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R10
      128 RETURN                           R14 1
