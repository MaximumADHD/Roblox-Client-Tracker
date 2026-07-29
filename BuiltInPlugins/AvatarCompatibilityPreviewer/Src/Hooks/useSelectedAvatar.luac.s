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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 NEWTABLE                         R2 0 0
       12 NAMECALL                         R0 R0 K0 ["Set"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 OR                               R1 R2 R0
        3 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_5:
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
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K0 ["getIsEditingWorldModel"]
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
       31 GETUPVAL                         R1 6
       32 GETTABLEKS                       R1 R1 K3 ["computeHashSerializeContext"]
       34 NEWTABLE                         R2 0 1
       36 GETUPVAL                         R3 0
       37 SETLIST                          R2 R3 1 [1]
       39 DUPTABLE                         R3 K7 [{["ignoreUniformScaleChanges"] = True, ["ignoreAccessories"] = True}]
       40 CALL                             R1 2 1
       41 DUPTABLE                         R2 K10 [{"originalDummy", "relativeScale", "hash"}]
       42 GETUPVAL                         R3 0
       43 SETTABLEKS                       R3 R2 K1 ["originalDummy"]
       45 GETTABLEKS                       R3 R1 K8 ["relativeScale"]
       47 SETTABLEKS                       R3 R2 K8 ["relativeScale"]
       49 GETUPVAL                         R3 6
       50 GETTABLEKS                       R3 R3 K11 ["hashCharacter"]
       52 GETUPVAL                         R4 0
       53 MOVE                             R5 R1
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R2 K9 ["hash"]
       57 MOVE                             R3 R2
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 GETTABLE                         R8 R0 R6
       62 JUMPIFEQ                         R8 R7 ; [+2]
       64 RETURN                           R2 1
       65 FORGLOOP                         R3 2 ; [-5]
       67 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["new"]
       10 CALL                             R0 0 1
       11 GETUPVAL                         R3 4
       12 GETTABLEKS                       R3 R3 K1 ["throttleDeferWatchForChanges"]
       14 GETUPVAL                         R4 0
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CALL                             R3 2 -1
       19 NAMECALL                         R1 R0 K2 ["giveTask"]
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K3 ["AncestryChanged"]
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["originalDummy"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 DUPTABLE                         R0 K5 [{"WorldModel", "ProportionalScale", "WorldModelScale", "LatestWorldModelHash"}]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["originalDummy"]
       11 SETTABLEKS                       R1 R0 K1 ["WorldModel"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K6 ["relativeScale"]
       16 SETTABLEKS                       R1 R0 K2 ["ProportionalScale"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["originalDummy"]
       21 NAMECALL                         R1 R1 K7 ["GetScale"]
       23 CALL                             R1 1 1
       24 SETTABLEKS                       R1 R0 K3 ["WorldModelScale"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K8 ["hash"]
       29 SETTABLEKS                       R1 R0 K4 ["LatestWorldModelHash"]
       31 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R1 0
        4 LENGTH                           R0 R1
        5 JUMPIFEQKN                       R0 K0 [1] ; [+3]
        7 LOADB                            R0 0
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R2 0
       13 GETTABLEN                        R1 R2 1
       14 GETUPVAL                         R2 2
       15 JUMPIFEQ                         R1 R2 ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 RETURN                           R0 1
       20 GETUPVAL                         R0 3
       21 GETTABLEKS                       R0 R0 K1 ["originalDummy"]
       23 GETUPVAL                         R1 0
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 JUMPIFNOTEQ                      R5 R0 ; [+3]
       29 LOADB                            R6 1
       30 RETURN                           R6 1
       31 FORGLOOP                         R1 2 ; [-5]
       33 LOADB                            R1 0
       34 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["useCallback"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R3 0 1
       14 MOVE                             R4 R0
       15 SETLIST                          R3 R4 1 [1]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 NEWTABLE                         R4 0 1
       26 MOVE                             R5 R0
       27 SETLIST                          R4 R5 1 [1]
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K3 ["useState"]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 2
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K3 ["useState"]
       38 MOVE                             R6 R1
       39 CALL                             R5 1 2
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       43 NEWCLOSURE                       R8 P2
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R9 0 1
       50 MOVE                             R10 R0
       51 SETLIST                          R9 R10 1 [1]
       53 CALL                             R7 2 1
       54 LOADNIL                          R8
       55 GETUPVAL                         R9 4
       56 CALL                             R9 0 1
       57 JUMPIFNOT                        R9 ; [+9]
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K4 ["useContext"]
       61 GETUPVAL                         R10 5
       62 GETTABLEKS                       R10 R10 K5 ["Context"]
       64 CALL                             R9 1 1
       65 MOVE                             R8 R9
       66 JUMP                             ; [+1]
       67 LOADNIL                          R8
       68 GETUPVAL                         R9 6
       69 GETTABLEKS                       R10 R0 K6 ["SelectionChanged"]
       71 NEWCLOSURE                       R11 P3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R1
       76 NEWTABLE                         R12 0 3
       78 MOVE                             R13 R2
       79 MOVE                             R14 R1
       80 MOVE                             R15 R0
       81 SETLIST                          R12 R13 3 [1]
       83 CALL                             R9 3 0
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K2 ["useCallback"]
       87 NEWCLOSURE                       R10 P4
       88 CAPTURE                          VAL R3
       89 CAPTURE                          UPVAL U7
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          UPVAL U4
       92 CAPTURE                          REF R8
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          UPVAL U9
       95 NEWTABLE                         R11 0 1
       97 MOVE                             R12 R3
       98 SETLIST                          R11 R12 1 [1]
      100 CALL                             R9 2 1
      101 GETUPVAL                         R10 1
      102 GETTABLEKS                       R10 R10 K3 ["useState"]
      104 NEWCLOSURE                       R11 P5
      105 CAPTURE                          VAL R9
      106 CAPTURE                          UPVAL U7
      107 CALL                             R10 1 2
      108 GETUPVAL                         R12 1
      109 GETTABLEKS                       R12 R12 K7 ["useEffect"]
      111 NEWCLOSURE                       R13 P6
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R9
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          UPVAL U11
      117 NEWTABLE                         R14 0 2
      119 MOVE                             R15 R3
      120 MOVE                             R16 R9
      121 SETLIST                          R14 R15 2 [1]
      123 CALL                             R12 2 0
      124 GETUPVAL                         R12 1
      125 GETTABLEKS                       R12 R12 K8 ["useMemo"]
      127 NEWCLOSURE                       R13 P7
      128 CAPTURE                          VAL R10
      129 NEWTABLE                         R14 0 3
      131 GETTABLEKS                       R15 R10 K9 ["originalDummy"]
      133 GETTABLEKS                       R16 R10 K10 ["hash"]
      135 GETTABLEKS                       R17 R10 K11 ["relativeScale"]
      137 SETLIST                          R14 R15 3 [1]
      139 CALL                             R12 2 1
      140 GETUPVAL                         R13 1
      141 GETTABLEKS                       R13 R13 K8 ["useMemo"]
      143 NEWCLOSURE                       R14 P8
      144 CAPTURE                          VAL R5
      145 CAPTURE                          UPVAL U12
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R10
      148 NEWTABLE                         R15 0 3
      150 MOVE                             R16 R5
      151 GETTABLEKS                       R17 R10 K9 ["originalDummy"]
      153 MOVE                             R18 R3
      154 SETLIST                          R15 R16 3 [1]
      156 CALL                             R13 2 1
      157 MOVE                             R14 R12
      158 MOVE                             R15 R13
      159 MOVE                             R16 R7
      160 CLOSEUPVALS                      R8
      161 RETURN                           R14 3

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
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["CharacterHashUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["DataModelUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K11 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["Maid"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R0 K15 ["Packages"]
       44 GETTABLEKS                       R6 R6 K16 ["React"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K10 ["Src"]
       51 GETTABLEKS                       R7 R7 K11 ["Util"]
       53 GETTABLEKS                       R7 R7 K17 ["SelectionWrapper"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R0 K10 ["Src"]
       60 GETTABLEKS                       R8 R8 K11 ["Util"]
       62 GETTABLEKS                       R8 R8 K18 ["isAvatar"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R9 R0 K10 ["Src"]
       69 GETTABLEKS                       R9 R9 K19 ["Hooks"]
       71 GETTABLEKS                       R9 R9 K20 ["useEventConnection"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R0 K10 ["Src"]
       78 GETTABLEKS                       R10 R10 K21 ["Components"]
       80 GETTABLEKS                       R10 R10 K22 ["EditingTools"]
       82 GETTABLEKS                       R10 R10 K23 ["EditingWorldModelContext"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R11 R0 K10 ["Src"]
       89 GETTABLEKS                       R11 R11 K24 ["Flags"]
       91 GETTABLEKS                       R11 R11 K25 ["getFFlagAvatarPreviewerAvatarScreenBack"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K9 [require]
       96 GETTABLEKS                       R12 R0 K10 ["Src"]
       98 GETTABLEKS                       R12 R12 K24 ["Flags"]
      100 GETTABLEKS                       R12 R12 K26 ["getFFlagAvatarPreviewerEditingTools"]
      102 CALL                             R11 1 1
      103 GETIMPORT                        R12 K9 [require]
      105 GETTABLEKS                       R13 R0 K10 ["Src"]
      107 GETTABLEKS                       R13 R13 K24 ["Flags"]
      109 GETTABLEKS                       R13 R13 K27 ["getFFlagAvatarPreviewerSelectionStability"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K9 [require]
      114 GETTABLEKS                       R14 R0 K10 ["Src"]
      116 GETTABLEKS                       R14 R14 K28 ["Types"]
      118 CALL                             R13 1 1
      119 GETIMPORT                        R14 K31 [table.freeze]
      121 NEWTABLE                         R15 0 0
      123 CALL                             R14 1 1
      124 DUPCLOSURE                       R15 K32 [PROTO_13]
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R12
      138 RETURN                           R15 1
