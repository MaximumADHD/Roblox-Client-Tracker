PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["CreatorType"]
        2 JUMPIFNOTEQKS                    R3 K1 ["Group"] ; [+9]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["Group"]
        7 JUMPIFEQ                         R1 R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 RETURN                           R3 1
       12 GETTABLEKS                       R3 R0 K0 ["CreatorType"]
       14 JUMPIFNOTEQKS                    R3 K2 ["User"] ; [+21]
       16 GETTABLEKS                       R3 R0 K3 ["CreatorTargetId"]
       18 JUMPIFNOTEQ                      R3 R2 ; [+9]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["Owned"]
       23 JUMPIFEQ                         R1 R4 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 RETURN                           R3 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K5 ["Shared"]
       31 JUMPIFEQ                         R1 R4 ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 RETURN                           R3 1
       36 LOADB                            R3 0
       37 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETUPVAL                         R1 1
        5 LOADK                            R2 K0 ["pinned"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverUniverseData error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["pinnedExperiences"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETTABLEKS                       R9 R8 K1 ["experienceId"]
       15 JUMPIFNOT                        R9 ; [+12]
       16 GETTABLEKS                       R11 R8 K1 ["experienceId"]
       18 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       20 MOVE                             R10 R2
       21 GETIMPORT                        R9 K4 [table.insert]
       23 CALL                             R9 2 0
       24 GETTABLEKS                       R9 R8 K1 ["experienceId"]
       26 LOADB                            R10 1
       27 SETTABLE                         R10 R3 R9
       28 FORGLOOP                         R4 2 ; [-16]
       30 GETUPVAL                         R4 0
       31 MOVE                             R5 R3
       32 CALL                             R4 1 0
       33 LENGTH                           R4 R2
       34 JUMPIFNOTEQKN                    R4 K5 [0] ; [+5]
       36 GETUPVAL                         R4 1
       37 MOVE                             R5 R2
       38 CALL                             R4 1 0
       39 RETURN                           R0 0
       40 NEWTABLE                         R4 0 0
       42 MOVE                             R5 R2
       43 LOADNIL                          R6
       44 LOADNIL                          R7
       45 FORGPREP                         R5
       46 DUPTABLE                         R12 K7 [{"Id"}]
       47 SETTABLEKS                       R9 R12 K6 ["Id"]
       49 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       51 MOVE                             R11 R4
       52 GETIMPORT                        R10 K4 [table.insert]
       54 CALL                             R10 2 0
       55 FORGLOOP                         R5 2 ; [-10]
       57 GETUPVAL                         R5 2
       58 MOVE                             R6 R4
       59 CALL                             R5 1 1
       60 NEWCLOSURE                       R8 P0
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          UPVAL U3
       64 NAMECALL                         R6 R5 K8 ["andThen"]
       66 CALL                             R6 2 1
       67 DUPCLOSURE                       R8 K9 [PROTO_7]
       68 NAMECALL                         R6 R6 K10 ["catch"]
       70 CALL                             R6 2 -1
       71 RETURN                           R6 -1

PROTO_9:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["GetPinnedExperiences error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 NAMECALL                         R1 R0 K0 ["andThen"]
        9 CALL                             R1 2 1
       10 DUPCLOSURE                       R3 K1 [PROTO_9]
       11 NAMECALL                         R1 R1 K2 ["catch"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Pin mutation error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 RETURN                           R0 0
        3 MOVE                             R2 R0
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R3 R2 K0 ["andThen"]
       10 CALL                             R3 2 1
       11 DUPCLOSURE                       R5 K1 [PROTO_13]
       12 NAMECALL                         R3 R3 K2 ["catch"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_15:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFEQKB                       R2 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETUPVAL                         R8 2
       11 MOVE                             R10 R7
       12 NAMECALL                         R8 R8 K1 ["getItem"]
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+45]
       16 GETTABLEKS                       R10 R8 K2 ["CreatorType"]
       18 JUMPIFNOTEQKS                    R10 K3 ["Group"] ; [+9]
       20 GETUPVAL                         R10 3
       21 GETTABLEKS                       R10 R10 K3 ["Group"]
       23 JUMPIFEQ                         R0 R10 ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 JUMP                             ; [+25]
       28 GETTABLEKS                       R10 R8 K2 ["CreatorType"]
       30 JUMPIFNOTEQKS                    R10 K4 ["User"] ; [+21]
       32 GETTABLEKS                       R10 R8 K5 ["CreatorTargetId"]
       34 JUMPIFNOTEQ                      R10 R1 ; [+9]
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K6 ["Owned"]
       39 JUMPIFEQ                         R0 R10 ; [+2]
       41 LOADB                            R9 0 +1
       42 LOADB                            R9 1
       43 JUMP                             ; [+9]
       44 GETUPVAL                         R10 3
       45 GETTABLEKS                       R10 R10 K7 ["Shared"]
       47 JUMPIFEQ                         R0 R10 ; [+2]
       49 LOADB                            R9 0 +1
       50 LOADB                            R9 1
       51 JUMP                             ; [+1]
       52 LOADB                            R9 0
       53 JUMPIFNOT                        R9 ; [+7]
       54 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       56 MOVE                             R10 R2
       57 MOVE                             R11 R8
       58 GETIMPORT                        R9 K10 [table.insert]
       60 CALL                             R9 2 0
       61 FORGLOOP                         R3 2 ; [-52]
       63 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 DUPTABLE                         R1 K5 [{"isPinned", "getPinnedCellsForBucket", "pin", "unpin", "moveToTop"}]
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["isPinned"]
        7 NEWCLOSURE                       R2 P2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 SETTABLEKS                       R2 R1 K1 ["getPinnedCellsForBucket"]
       14 NEWCLOSURE                       R2 P3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U6
       17 SETTABLEKS                       R2 R1 K2 ["pin"]
       19 NEWCLOSURE                       R2 P4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U7
       22 SETTABLEKS                       R2 R1 K3 ["unpin"]
       24 NEWCLOSURE                       R2 P5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U6
       27 SETTABLEKS                       R2 R1 K4 ["moveToTop"]
       29 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["useState"]
        8 NEWTABLE                         R2 0 0
       10 CALL                             R1 1 2
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["useState"]
       14 NEWTABLE                         R4 0 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 NEWTABLE                         R7 0 2
       28 MOVE                             R8 R2
       29 MOVE                             R9 R4
       30 SETLIST                          R7 R8 2 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R5
       38 NEWTABLE                         R8 0 1
       40 MOVE                             R9 R5
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 0
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       47 NEWCLOSURE                       R7 P2
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          UPVAL U7
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          UPVAL U9
       56 NEWTABLE                         R8 0 3
       58 MOVE                             R9 R1
       59 MOVE                             R10 R3
       60 MOVE                             R11 R5
       61 SETLIST                          R8 R9 3 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K6 ["createElement"]
       67 GETUPVAL                         R8 10
       68 GETTABLEKS                       R8 R8 K7 ["Provider"]
       70 DUPTABLE                         R9 K9 [{"value"}]
       71 SETTABLEKS                       R6 R9 K8 ["value"]
       73 GETTABLEKS                       R10 R0 K10 ["children"]
       75 CALL                             R7 3 -1
       76 RETURN                           R7 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["StudioService"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K8 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Network"]
       38 GETTABLEKS                       R6 R6 K14 ["GetPinnedExperiences"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R7 K13 ["Network"]
       47 GETTABLEKS                       R7 R7 K15 ["PinExperience"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R8 K13 ["Network"]
       56 GETTABLEKS                       R8 R8 K16 ["UnpinExperience"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K8 ["Src"]
       63 GETTABLEKS                       R9 R9 K13 ["Network"]
       65 GETTABLEKS                       R9 R9 K17 ["DiscoverUniverseData"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K8 ["Src"]
       72 GETTABLEKS                       R10 R10 K13 ["Network"]
       74 GETTABLEKS                       R10 R10 K18 ["DiscoverAutogeneratedIcons"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K8 ["Src"]
       81 GETTABLEKS                       R11 R11 K13 ["Network"]
       83 GETTABLEKS                       R11 R11 K19 ["GameCache"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K8 ["Src"]
       90 GETTABLEKS                       R12 R12 K20 ["SharedFlags"]
       92 GETTABLEKS                       R12 R12 K21 ["getFFlagLuaStartPageExperiencePinning"]
       94 CALL                             R11 1 1
       95 CALL                             R11 0 1
       96 DUPTABLE                         R12 K28 [{["Owned"] = "owned", ["Group"] = "group", ["Shared"] = "shared"}]
       97 DUPTABLE                         R13 K34 [{"isPinned", "getPinnedCellsForBucket", "pin", "unpin", "moveToTop"}]
       98 DUPCLOSURE                       R14 K35 [PROTO_0]
       99 SETTABLEKS                       R14 R13 K29 ["isPinned"]
      101 DUPCLOSURE                       R14 K36 [PROTO_1]
      102 SETTABLEKS                       R14 R13 K30 ["getPinnedCellsForBucket"]
      104 DUPCLOSURE                       R14 K37 [PROTO_2]
      105 SETTABLEKS                       R14 R13 K31 ["pin"]
      107 DUPCLOSURE                       R14 K38 [PROTO_3]
      108 SETTABLEKS                       R14 R13 K32 ["unpin"]
      110 DUPCLOSURE                       R14 K39 [PROTO_4]
      111 SETTABLEKS                       R14 R13 K33 ["moveToTop"]
      113 GETTABLEKS                       R14 R1 K40 ["createContext"]
      115 MOVE                             R15 R13
      116 CALL                             R14 1 1
      117 DUPCLOSURE                       R15 K41 [PROTO_5]
      118 CAPTURE                          VAL R12
      119 DUPCLOSURE                       R16 K42 [PROTO_21]
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R14
      131 DUPCLOSURE                       R17 K43 [PROTO_22]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R14
      134 DUPTABLE                         R18 K47 [{"Bucket", "Provider", "usePinnedExperiences"}]
      135 SETTABLEKS                       R12 R18 K44 ["Bucket"]
      137 SETTABLEKS                       R16 R18 K45 ["Provider"]
      139 SETTABLEKS                       R17 R18 K46 ["usePinnedExperiences"]
      141 RETURN                           R18 1
