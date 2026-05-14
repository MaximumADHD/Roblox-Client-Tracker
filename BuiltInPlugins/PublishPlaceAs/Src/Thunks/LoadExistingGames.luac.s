PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["games"]
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 GETTABLEKS                       R7 R5 K3 ["universeId"]
        9 GETTABLE                         R6 R0 R7
       10 SETTABLEKS                       R6 R5 K4 ["isPublishEligible"]
       12 FORGLOOP                         R1 2 ; [-6]
       14 GETUPVAL                         R1 0
       15 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["games"]
        2 FASTCALL1                        ASSERT R2 ; [+2]
        3 GETIMPORT                        R1 K2 [assert]
        5 CALL                             R1 1 0
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R2 R0 K0 ["games"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R9 R6 K3 ["universeId"]
       15 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       17 MOVE                             R8 R1
       18 GETIMPORT                        R7 K6 [table.insert]
       20 CALL                             R7 2 0
       21 FORGLOOP                         R2 2 ; [-9]
       23 GETUPVAL                         R2 0
       24 MOVE                             R3 R1
       25 CALL                             R2 1 1
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R0
       28 NAMECALL                         R2 R2 K7 ["andThen"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["games"]
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 GETTABLEKS                       R7 R5 K3 ["universeId"]
        9 GETTABLE                         R6 R0 R7
       10 JUMPIFEQKNIL                     R6 ; [+3]
       12 MOVE                             R7 R6
       13 JUMP                             ; [+1]
       14 LOADB                            R7 1
       15 SETTABLEKS                       R7 R5 K4 ["isUserEligible"]
       17 FORGLOOP                         R1 2 ; [-11]
       19 GETUPVAL                         R1 0
       20 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["games"]
        2 FASTCALL1                        ASSERT R2 ; [+2]
        3 GETIMPORT                        R1 K2 [assert]
        5 CALL                             R1 1 0
        6 NEWTABLE                         R1 0 0
        8 GETIMPORT                        R2 K4 [pairs]
       10 GETTABLEKS                       R3 R0 K0 ["games"]
       12 CALL                             R2 1 3
       13 FORGPREP_NEXT                    R2
       14 GETTABLEKS                       R7 R6 K5 ["minimumAge"]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K6 ["MINIMUM_AGE"]
       19 JUMPIFNOTLE                      R8 R7 ; [+9]
       21 GETTABLEKS                       R9 R6 K7 ["universeId"]
       23 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       25 MOVE                             R8 R1
       26 GETIMPORT                        R7 K10 [table.insert]
       28 CALL                             R7 2 0
       29 FORGLOOP                         R2 2 ; [-16]
       31 LENGTH                           R3 R1
       32 LOADN                            R4 0
       33 JUMPIFNOTLT                      R4 R3 ; [+9]
       35 GETUPVAL                         R2 1
       36 MOVE                             R3 R1
       37 GETUPVAL                         R4 2
       38 NAMECALL                         R4 R4 K11 ["getUserId"]
       40 CALL                             R4 1 -1
       41 CALL                             R2 -1 1
       42 JUMP                             ; [+6]
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R2 R2 K12 ["resolve"]
       46 NEWTABLE                         R3 0 0
       48 CALL                             R2 1 1
       49 NEWCLOSURE                       R5 P0
       50 CAPTURE                          VAL R0
       51 NAMECALL                         R3 R2 K13 ["andThen"]
       53 CALL                             R3 2 -1
       54 RETURN                           R3 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["games"]
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 GETTABLEKS                       R7 R0 K3 ["minimumAgeByUniverse"]
        9 GETTABLEKS                       R8 R5 K4 ["universeId"]
       11 GETTABLE                         R6 R7 R8
       12 SETTABLEKS                       R6 R5 K5 ["minimumAge"]
       14 FORGLOOP                         R1 2 ; [-8]
       16 GETUPVAL                         R1 0
       17 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["games"]
        2 FASTCALL1                        ASSERT R2 ; [+2]
        3 GETIMPORT                        R1 K2 [assert]
        5 CALL                             R1 1 0
        6 NEWTABLE                         R1 0 0
        8 GETIMPORT                        R2 K4 [pairs]
       10 GETTABLEKS                       R3 R0 K0 ["games"]
       12 CALL                             R2 1 3
       13 FORGPREP_NEXT                    R2
       14 GETTABLEKS                       R9 R6 K5 ["universeId"]
       16 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       18 MOVE                             R8 R1
       19 GETIMPORT                        R7 K8 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-9]
       24 GETUPVAL                         R2 0
       25 MOVE                             R3 R1
       26 CALL                             R2 1 1
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          VAL R0
       29 NAMECALL                         R2 R2 K9 ["andThen"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["minimumAgeByUniverse"]
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R3 R3 K3 ["GameId"]
        6 GETTABLE                         R1 R2 R3
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1
        6 RETURN                           R0 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["games"]
        2 FASTCALL1                        ASSERT R2 ; [+2]
        3 GETIMPORT                        R1 K2 [assert]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K3 ["List"]
        9 GETTABLEKS                       R1 R1 K4 ["join"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R3 R0 K0 ["games"]
       14 CALL                             R1 2 1
       15 SETUPVAL                         R1 0
       16 GETUPVAL                         R1 0
       17 SETTABLEKS                       R1 R0 K0 ["games"]
       19 GETUPVAL                         R1 2
       20 JUMPIFNOT                        R1 ; [+4]
       21 GETUPVAL                         R1 2
       22 NAMECALL                         R1 R1 K5 ["await"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R2 3
       26 FASTCALL1                        ASSERT R2 ; [+2]
       27 GETIMPORT                        R1 K2 [assert]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 3
       31 SETTABLEKS                       R1 R0 K6 ["minimumAge"]
       33 GETUPVAL                         R1 4
       34 GETUPVAL                         R3 5
       35 MOVE                             R4 R0
       36 CALL                             R3 1 -1
       37 NAMECALL                         R1 R1 K7 ["dispatch"]
       39 CALL                             R1 -1 0
       40 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["QUERY_STATE"]
        5 GETTABLEKS                       R4 R4 K1 ["QUERY_STATE_FAILED"]
        7 CALL                             R3 1 -1
        8 NAMECALL                         R1 R1 K2 ["dispatch"]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIF                           R2 ; [+25]
        3 GETIMPORT                        R2 K1 [game]
        5 GETTABLEKS                       R2 R2 K2 ["GameId"]
        7 JUMPIFNOTEQKN                    R2 K3 [0] ; [+4]
        9 LOADN                            R2 0
       10 SETUPVAL                         R2 0
       11 JUMP                             ; [+16]
       12 GETUPVAL                         R2 1
       13 NEWTABLE                         R3 0 1
       15 GETIMPORT                        R4 K1 [game]
       17 GETTABLEKS                       R4 R4 K2 ["GameId"]
       19 SETLIST                          R3 R4 1 [1]
       21 CALL                             R2 1 1
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U0
       24 NAMECALL                         R2 R2 K4 ["andThen"]
       26 CALL                             R2 2 1
       27 MOVE                             R1 R2
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R3 3
       30 JUMPIFNOTEQ                      R2 R3 ; [+3]
       32 GETUPVAL                         R2 2
       33 JUMPIF                           R2 ; [+74]
       34 GETUPVAL                         R2 2
       35 JUMPIF                           R2 ; [+10]
       36 GETUPVAL                         R4 4
       37 GETUPVAL                         R5 5
       38 GETTABLEKS                       R5 R5 K5 ["QUERY_STATE"]
       40 GETTABLEKS                       R5 R5 K6 ["QUERY_STATE_QUERYING"]
       42 CALL                             R4 1 -1
       43 NAMECALL                         R2 R0 K7 ["dispatch"]
       45 CALL                             R2 -1 0
       46 GETUPVAL                         R2 2
       47 SETUPVAL                         R2 3
       48 GETUPVAL                         R2 6
       49 GETUPVAL                         R3 7
       50 JUMPIFEQ                         R2 R3 ; [+6]
       52 NEWTABLE                         R2 0 0
       54 SETUPVAL                         R2 8
       55 GETUPVAL                         R2 6
       56 SETUPVAL                         R2 7
       57 GETUPVAL                         R2 9
       58 DUPTABLE                         R3 K13 [{"type", "id", "cursor", "limit", "isPublish"}]
       59 GETUPVAL                         R4 10
       60 SETTABLEKS                       R4 R3 K8 ["type"]
       62 GETUPVAL                         R4 6
       63 SETTABLEKS                       R4 R3 K9 ["id"]
       65 GETUPVAL                         R4 2
       66 SETTABLEKS                       R4 R3 K10 ["cursor"]
       68 LOADN                            R4 25
       69 SETTABLEKS                       R4 R3 K11 ["limit"]
       71 GETUPVAL                         R4 11
       72 SETTABLEKS                       R4 R3 K12 ["isPublish"]
       74 CALL                             R2 1 1
       75 DUPCLOSURE                       R4 K14 [PROTO_7]
       76 CAPTURE                          UPVAL U12
       77 NAMECALL                         R2 R2 K4 ["andThen"]
       79 CALL                             R2 2 1
       80 DUPCLOSURE                       R4 K15 [PROTO_8]
       81 CAPTURE                          UPVAL U13
       82 NAMECALL                         R2 R2 K4 ["andThen"]
       84 CALL                             R2 2 1
       85 NEWCLOSURE                       R4 P3
       86 CAPTURE                          UPVAL U11
       87 CAPTURE                          UPVAL U14
       88 NAMECALL                         R2 R2 K4 ["andThen"]
       90 CALL                             R2 2 1
       91 NEWCLOSURE                       R4 P4
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          UPVAL U15
       94 CAPTURE                          REF R1
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U16
       98 NAMECALL                         R2 R2 K4 ["andThen"]
      100 CALL                             R2 2 1
      101 NEWCLOSURE                       R4 P5
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U4
      104 CAPTURE                          UPVAL U5
      105 NAMECALL                         R2 R2 K16 ["catch"]
      107 CALL                             R2 2 0
      108 CLOSEUPVALS                      R1
      109 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["StudioService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R0 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Resources"]
       21 GETTABLEKS                       R3 R3 K11 ["Constants"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R0 K9 ["Src"]
       28 GETTABLEKS                       R4 R4 K12 ["Actions"]
       30 GETTABLEKS                       R4 R4 K13 ["SetGameInfo"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K8 [require]
       35 GETTABLEKS                       R5 R0 K9 ["Src"]
       37 GETTABLEKS                       R5 R5 K12 ["Actions"]
       39 GETTABLEKS                       R5 R5 K14 ["SetChooseGameQueryState"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K8 [require]
       44 GETTABLEKS                       R6 R0 K9 ["Src"]
       46 GETTABLEKS                       R6 R6 K15 ["Network"]
       48 GETTABLEKS                       R6 R6 K16 ["Requests"]
       50 GETTABLEKS                       R6 R6 K17 ["ApiFetchUniversePublishEligibility"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K8 [require]
       55 GETTABLEKS                       R7 R0 K9 ["Src"]
       57 GETTABLEKS                       R7 R7 K15 ["Network"]
       59 GETTABLEKS                       R7 R7 K16 ["Requests"]
       61 GETTABLEKS                       R7 R7 K18 ["ApiFetchGameAgeRecommendation"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K8 [require]
       66 GETTABLEKS                       R8 R0 K9 ["Src"]
       68 GETTABLEKS                       R8 R8 K15 ["Network"]
       70 GETTABLEKS                       R8 R8 K16 ["Requests"]
       72 GETTABLEKS                       R8 R8 K19 ["ApiFetchCreatorEligibility"]
       74 CALL                             R7 1 1
       75 GETIMPORT                        R8 K8 [require]
       77 GETTABLEKS                       R9 R0 K9 ["Src"]
       79 GETTABLEKS                       R9 R9 K15 ["Network"]
       81 GETTABLEKS                       R9 R9 K16 ["Requests"]
       83 GETTABLEKS                       R9 R9 K20 ["ApiFetchGames"]
       85 CALL                             R8 1 1
       86 GETIMPORT                        R9 K8 [require]
       88 GETTABLEKS                       R10 R0 K21 ["Packages"]
       90 GETTABLEKS                       R10 R10 K22 ["Framework"]
       92 CALL                             R9 1 1
       93 GETTABLEKS                       R9 R9 K23 ["Util"]
       95 GETTABLEKS                       R9 R9 K24 ["Promise"]
       97 GETIMPORT                        R10 K8 [require]
       99 GETTABLEKS                       R11 R0 K21 ["Packages"]
      101 GETTABLEKS                       R11 R11 K25 ["Cryo"]
      103 CALL                             R10 1 1
      104 NEWTABLE                         R11 0 0
      106 LOADN                            R12 255
      107 LOADNIL                          R13
      108 LOADNIL                          R14
      109 DUPCLOSURE                       R15 K26 [PROTO_1]
      110 CAPTURE                          VAL R5
      111 DUPCLOSURE                       R16 K27 [PROTO_3]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R9
      116 DUPCLOSURE                       R17 K28 [PROTO_5]
      117 CAPTURE                          VAL R6
      118 NEWCLOSURE                       R18 P3
      119 CAPTURE                          REF R14
      120 CAPTURE                          VAL R6
      121 CAPTURE                          REF R13
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R2
      124 CAPTURE                          REF R12
      125 CAPTURE                          REF R11
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R3
      132 CLOSEUPVALS                      R11
      133 RETURN                           R18 1
