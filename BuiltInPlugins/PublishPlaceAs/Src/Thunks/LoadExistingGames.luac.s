PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 JUMPIFNOTEQ                      R0 R1 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["minimumAgeByUniverse"]
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R3 R3 K3 ["GameId"]
        6 GETTABLE                         R1 R2 R3
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R4 0 1
        4 MOVE                             R1 R4
        5 JUMPIFNOT                        R1 ; [+4]
        6 JUMPIFNOTEQ                      R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K0 ["reject"]
       14 GETUPVAL                         R2 4
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 5
       18 MOVE                             R2 R0
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R4 0 1
        4 MOVE                             R1 R4
        5 JUMPIFNOT                        R1 ; [+4]
        6 JUMPIFNOTEQ                      R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K0 ["reject"]
       14 GETUPVAL                         R2 4
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 5
       18 MOVE                             R2 R0
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R4 0 1
        4 MOVE                             R1 R4
        5 JUMPIFNOT                        R1 ; [+4]
        6 JUMPIFNOTEQ                      R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K0 ["reject"]
       14 GETUPVAL                         R2 4
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 5
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 6
       20 MOVE                             R2 R0
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1
       23 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R4 0 1
        4 MOVE                             R1 R4
        5 JUMPIFNOT                        R1 ; [+4]
        6 JUMPIFNOTEQ                      R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K0 ["reject"]
       14 GETUPVAL                         R2 4
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 GETTABLEKS                       R2 R0 K1 ["games"]
       19 FASTCALL1                        ASSERT R2 ; [+2]
       20 GETIMPORT                        R1 K3 [assert]
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 6
       24 GETTABLEKS                       R1 R1 K4 ["List"]
       26 GETTABLEKS                       R1 R1 K5 ["join"]
       28 GETUPVAL                         R2 5
       29 GETTABLEKS                       R3 R0 K1 ["games"]
       31 CALL                             R1 2 1
       32 SETUPVAL                         R1 5
       33 GETUPVAL                         R1 5
       34 SETTABLEKS                       R1 R0 K1 ["games"]
       36 GETUPVAL                         R1 7
       37 JUMPIFNOT                        R1 ; [+4]
       38 GETUPVAL                         R1 7
       39 NAMECALL                         R1 R1 K6 ["await"]
       41 CALL                             R1 1 0
       42 GETUPVAL                         R2 8
       43 FASTCALL1                        ASSERT R2 ; [+2]
       44 GETIMPORT                        R1 K3 [assert]
       46 CALL                             R1 1 0
       47 GETUPVAL                         R1 8
       48 SETTABLEKS                       R1 R0 K7 ["minimumAge"]
       50 GETUPVAL                         R1 9
       51 GETUPVAL                         R3 10
       52 MOVE                             R4 R0
       53 CALL                             R3 1 -1
       54 NAMECALL                         R1 R1 K8 ["dispatch"]
       56 CALL                             R1 -1 0
       57 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["QUERY_STATE"]
        9 GETTABLEKS                       R4 R4 K1 ["QUERY_STATE_FAILED"]
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R1 K2 ["dispatch"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_13:
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
       33 JUMPIF                           R2 ; [+106]
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
       57 LOADNIL                          R2
       58 GETUPVAL                         R3 9
       59 CALL                             R3 0 1
       60 JUMPIFNOT                        R3 ; [+9]
       61 GETUPVAL                         R3 2
       62 JUMPIF                           R3 ; [+6]
       63 NEWTABLE                         R3 0 0
       65 SETUPVAL                         R3 8
       66 GETUPVAL                         R3 10
       67 ADDK                             R3 R3 K8 [1]
       68 SETUPVAL                         R3 10
       69 GETUPVAL                         R2 10
       70 GETUPVAL                         R3 11
       71 DUPTABLE                         R4 K15 [{["type"], ["id"], ["cursor"], ["limit"] = 25, ["isPublish"]}]
       72 GETUPVAL                         R5 12
       73 SETTABLEKS                       R5 R4 K9 ["type"]
       75 GETUPVAL                         R5 6
       76 SETTABLEKS                       R5 R4 K10 ["id"]
       78 GETUPVAL                         R5 2
       79 SETTABLEKS                       R5 R4 K11 ["cursor"]
       81 GETUPVAL                         R5 13
       82 SETTABLEKS                       R5 R4 K14 ["isPublish"]
       84 CALL                             R3 1 1
       85 NEWCLOSURE                       R5 P1
       86 CAPTURE                          REF R2
       87 CAPTURE                          UPVAL U10
       88 CAPTURE                          UPVAL U9
       89 CAPTURE                          UPVAL U14
       90 CAPTURE                          UPVAL U15
       91 CAPTURE                          UPVAL U16
       92 NAMECALL                         R3 R3 K4 ["andThen"]
       94 CALL                             R3 2 1
       95 NEWCLOSURE                       R5 P2
       96 CAPTURE                          REF R2
       97 CAPTURE                          UPVAL U10
       98 CAPTURE                          UPVAL U9
       99 CAPTURE                          UPVAL U14
      100 CAPTURE                          UPVAL U15
      101 CAPTURE                          UPVAL U17
      102 NAMECALL                         R3 R3 K4 ["andThen"]
      104 CALL                             R3 2 1
      105 NEWCLOSURE                       R5 P3
      106 CAPTURE                          REF R2
      107 CAPTURE                          UPVAL U10
      108 CAPTURE                          UPVAL U9
      109 CAPTURE                          UPVAL U14
      110 CAPTURE                          UPVAL U15
      111 CAPTURE                          UPVAL U13
      112 CAPTURE                          UPVAL U18
      113 NAMECALL                         R3 R3 K4 ["andThen"]
      115 CALL                             R3 2 1
      116 NEWCLOSURE                       R5 P4
      117 CAPTURE                          REF R2
      118 CAPTURE                          UPVAL U10
      119 CAPTURE                          UPVAL U9
      120 CAPTURE                          UPVAL U14
      121 CAPTURE                          UPVAL U15
      122 CAPTURE                          UPVAL U8
      123 CAPTURE                          UPVAL U19
      124 CAPTURE                          REF R1
      125 CAPTURE                          UPVAL U0
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U20
      128 NAMECALL                         R3 R3 K4 ["andThen"]
      130 CALL                             R3 2 1
      131 NEWCLOSURE                       R5 P5
      132 CAPTURE                          UPVAL U15
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U4
      135 CAPTURE                          UPVAL U5
      136 NAMECALL                         R3 R3 K16 ["catch"]
      138 CALL                             R3 2 0
      139 CLOSEUPVALS                      R2
      140 CLOSEUPVALS                      R1
      141 RETURN                           R0 0

PROTO_14:
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
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 CAPTURE                          UPVAL U15
       21 CAPTURE                          UPVAL U16
       22 RETURN                           R4 1

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
      106 LOADN                            R12 -1
      107 LOADNIL                          R13
      108 LOADNIL                          R14
      109 LOADN                            R15 0
      110 GETIMPORT                        R16 K8 [require]
      112 GETTABLEKS                       R17 R0 K9 ["Src"]
      114 GETTABLEKS                       R17 R17 K26 ["Flags"]
      116 GETTABLEKS                       R17 R17 K27 ["getFFlagCOLLAB6755TimingBug2"]
      118 CALL                             R16 1 1
      119 NEWTABLE                         R17 0 0
      121 DUPCLOSURE                       R18 K28 [PROTO_0]
      122 CAPTURE                          VAL R16
      123 DUPCLOSURE                       R19 K29 [PROTO_2]
      124 CAPTURE                          VAL R5
      125 DUPCLOSURE                       R20 K30 [PROTO_4]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R9
      130 DUPCLOSURE                       R21 K31 [PROTO_6]
      131 CAPTURE                          VAL R6
      132 NEWCLOSURE                       R22 P4
      133 CAPTURE                          REF R14
      134 CAPTURE                          VAL R6
      135 CAPTURE                          REF R13
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R2
      138 CAPTURE                          REF R12
      139 CAPTURE                          REF R11
      140 CAPTURE                          VAL R16
      141 CAPTURE                          REF R15
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R3
      150 CLOSEUPVALS                      R11
      151 RETURN                           R22 1
