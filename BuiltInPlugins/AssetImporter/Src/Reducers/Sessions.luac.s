PROTO_0:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R5 R0 K0 ["sessionQueue"]
        2 GETTABLEKS                       R6 R1 K1 ["queueItem"]
        4 GETTABLEKS                       R6 R6 K2 ["filepath"]
        6 GETTABLE                         R4 R5 R6
        7 JUMPIFEQKNIL                     R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       13 LOADK                            R4 K3 ["Session must not exist to be added"]
       14 GETIMPORT                        R2 K5 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R0
       19 DUPTABLE                         R4 K8 [{"activeSessionCount", "sessionCount", "sessionQueue"}]
       20 GETTABLEKS                       R6 R1 K1 ["queueItem"]
       22 GETTABLEKS                       R6 R6 K9 ["enabled"]
       24 JUMPIFNOT                        R6 ; [+4]
       25 GETTABLEKS                       R6 R0 K6 ["activeSessionCount"]
       27 ADDK                             R5 R6 K10 [1]
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R5 R0 K6 ["activeSessionCount"]
       31 SETTABLEKS                       R5 R4 K6 ["activeSessionCount"]
       33 GETTABLEKS                       R6 R0 K7 ["sessionCount"]
       35 ADDK                             R5 R6 K10 [1]
       36 SETTABLEKS                       R5 R4 K7 ["sessionCount"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R6 R0 K0 ["sessionQueue"]
       41 NEWTABLE                         R7 1 0
       43 GETTABLEKS                       R8 R1 K1 ["queueItem"]
       45 GETTABLEKS                       R8 R8 K2 ["filepath"]
       47 GETTABLEKS                       R9 R1 K1 ["queueItem"]
       49 SETTABLE                         R9 R7 R8
       50 CALL                             R5 2 1
       51 SETTABLEKS                       R5 R4 K0 ["sessionQueue"]
       53 CALL                             R2 2 -1
       54 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["sessionQueue"]
        2 GETTABLEKS                       R5 R1 K1 ["filepath"]
        4 GETTABLE                         R3 R4 R5
        5 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        7 LOADK                            R4 K2 ["Session must exist to be removed"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETIMPORT                        R2 K7 [table.clone]
       13 GETTABLEKS                       R3 R0 K0 ["sessionQueue"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R4 R1 K1 ["filepath"]
       18 GETTABLE                         R3 R2 R4
       19 GETTABLEKS                       R4 R1 K1 ["filepath"]
       21 LOADNIL                          R5
       22 SETTABLE                         R5 R2 R4
       23 GETUPVAL                         R4 0
       24 MOVE                             R5 R0
       25 DUPTABLE                         R6 K10 [{"activeSessionCount", "sessionCount", "sessionQueue"}]
       26 GETTABLEKS                       R8 R3 K11 ["enabled"]
       28 JUMPIFNOT                        R8 ; [+4]
       29 GETTABLEKS                       R8 R0 K8 ["activeSessionCount"]
       31 SUBK                             R7 R8 K12 [1]
       32 JUMP                             ; [+2]
       33 GETTABLEKS                       R7 R0 K8 ["activeSessionCount"]
       35 SETTABLEKS                       R7 R6 K8 ["activeSessionCount"]
       37 GETTABLEKS                       R8 R0 K9 ["sessionCount"]
       39 SUBK                             R7 R8 K12 [1]
       40 SETTABLEKS                       R7 R6 K9 ["sessionCount"]
       42 SETTABLEKS                       R2 R6 K0 ["sessionQueue"]
       44 CALL                             R4 2 -1
       45 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K4 [{[1] = 0, ["sessionCount"] = 0, ["sessionQueue"]}]
        3 NEWTABLE                         R5 0 0
        5 SETTABLEKS                       R5 R4 K3 ["sessionQueue"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"parsing"}]
        3 GETTABLEKS                       R5 R1 K0 ["parsing"]
        5 SETTABLEKS                       R5 R4 K0 ["parsing"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"progress"}]
        3 GETTABLEKS                       R5 R1 K0 ["progress"]
        5 SETTABLEKS                       R5 R4 K0 ["progress"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"progressGoal"}]
        3 GETTABLEKS                       R5 R1 K0 ["progressGoal"]
        5 SETTABLEKS                       R5 R4 K0 ["progressGoal"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"searchTerm"}]
        3 GETTABLEKS                       R5 R1 K0 ["searchTerm"]
        5 SETTABLEKS                       R5 R4 K0 ["searchTerm"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"uploading"}]
        3 GETTABLEKS                       R5 R1 K0 ["uploading"]
        5 SETTABLEKS                       R5 R4 K0 ["uploading"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["join"]
       23 GETTABLEKS                       R4 R0 K10 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Actions"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K12 ["AddQueueItem"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K13 ["ClearQueue"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R4 K14 ["RemoveQueueItem"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R4 K15 ["ResetQueue"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R4 K16 ["SetParsing"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R4 K17 ["SetProgress"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R4 K18 ["SetProgressGoal"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R4 K19 ["SetSearchTerm"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R4 K20 ["SetUploading"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R0 K10 ["Src"]
       76 GETTABLEKS                       R15 R15 K21 ["Types"]
       78 GETTABLEKS                       R15 R15 K22 ["QueuedSession"]
       80 CALL                             R14 1 1
       81 DUPTABLE                         R15 K34 [{["activeSessionCount"] = 0, ["parsing"] = False, ["progress"] = 0, ["progressGoal"] = 0, ["searchTerm"] = "", ["sessionCount"] = 0, ["sessionQueue"], ["uploading"] = False}]
       82 NEWTABLE                         R16 0 0
       84 SETTABLEKS                       R16 R15 K32 ["sessionQueue"]
       86 GETTABLEKS                       R16 R1 K35 ["createReducer"]
       88 MOVE                             R17 R15
       89 NEWTABLE                         R18 16 0
       91 GETTABLEKS                       R19 R8 K36 ["name"]
       93 DUPCLOSURE                       R20 K37 [PROTO_0]
       94 CAPTURE                          VAL R15
       95 SETTABLE                         R20 R18 R19
       96 GETTABLEKS                       R19 R5 K36 ["name"]
       98 DUPCLOSURE                       R20 K38 [PROTO_1]
       99 CAPTURE                          VAL R3
      100 SETTABLE                         R20 R18 R19
      101 GETTABLEKS                       R19 R7 K36 ["name"]
      103 DUPCLOSURE                       R20 K39 [PROTO_2]
      104 CAPTURE                          VAL R3
      105 SETTABLE                         R20 R18 R19
      106 GETTABLEKS                       R19 R6 K36 ["name"]
      108 DUPCLOSURE                       R20 K40 [PROTO_3]
      109 CAPTURE                          VAL R3
      110 SETTABLE                         R20 R18 R19
      111 GETTABLEKS                       R19 R9 K36 ["name"]
      113 DUPCLOSURE                       R20 K41 [PROTO_4]
      114 CAPTURE                          VAL R3
      115 SETTABLE                         R20 R18 R19
      116 GETTABLEKS                       R19 R10 K36 ["name"]
      118 DUPCLOSURE                       R20 K42 [PROTO_5]
      119 CAPTURE                          VAL R3
      120 SETTABLE                         R20 R18 R19
      121 GETTABLEKS                       R19 R11 K36 ["name"]
      123 DUPCLOSURE                       R20 K43 [PROTO_6]
      124 CAPTURE                          VAL R3
      125 SETTABLE                         R20 R18 R19
      126 GETTABLEKS                       R19 R12 K36 ["name"]
      128 DUPCLOSURE                       R20 K44 [PROTO_7]
      129 CAPTURE                          VAL R3
      130 SETTABLE                         R20 R18 R19
      131 GETTABLEKS                       R19 R13 K36 ["name"]
      133 DUPCLOSURE                       R20 K45 [PROTO_8]
      134 CAPTURE                          VAL R3
      135 SETTABLE                         R20 R18 R19
      136 CALL                             R16 2 -1
      137 RETURN                           R16 -1
