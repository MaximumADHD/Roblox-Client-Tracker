PROTO_0:
        0 DUPTABLE                         R0 K2 [{"CurrentPlayTesters", "OriginRoles"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["CurrentPlayTesters"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["OriginRoles"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["NewPlayTesters"]
        2 JUMPIF                           R2 ; [+2]
        3 GETTABLEKS                       R2 R0 K1 ["CurrentPlayTesters"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
        8 GETTABLEKS                       R3 R3 K3 ["join"]
       10 MOVE                             R4 R2
       11 NEWTABLE                         R5 1 0
       13 GETTABLEKS                       R6 R1 K4 ["userId"]
       15 DUPTABLE                         R7 K7 [{"Name", "Id"}]
       16 GETTABLEKS                       R8 R1 K8 ["username"]
       18 SETTABLEKS                       R8 R7 K5 ["Name"]
       20 GETTABLEKS                       R8 R1 K4 ["userId"]
       22 SETTABLEKS                       R8 R7 K6 ["Id"]
       24 SETTABLE                         R7 R5 R6
       25 CALL                             R3 2 1
       26 MOVE                             R2 R3
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R4 R0 K1 ["CurrentPlayTesters"]
       30 MOVE                             R5 R2
       31 CALL                             R3 2 1
       32 JUMPIFNOT                        R3 ; [+3]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R2 R3 K9 ["None"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
       39 GETTABLEKS                       R3 R3 K3 ["join"]
       41 MOVE                             R4 R0
       42 DUPTABLE                         R5 K10 [{"NewPlayTesters"}]
       43 SETTABLEKS                       R2 R5 K0 ["NewPlayTesters"]
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["NewPlayTesters"]
        2 JUMPIF                           R2 ; [+2]
        3 GETTABLEKS                       R2 R0 K1 ["CurrentPlayTesters"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
        8 GETTABLEKS                       R3 R3 K3 ["join"]
       10 MOVE                             R4 R2
       11 NEWTABLE                         R5 1 0
       13 GETTABLEKS                       R6 R1 K4 ["userId"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K5 ["None"]
       18 SETTABLE                         R7 R5 R6
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R4 R0 K1 ["CurrentPlayTesters"]
       24 MOVE                             R5 R2
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+3]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K5 ["None"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
       33 GETTABLEKS                       R3 R3 K3 ["join"]
       35 MOVE                             R4 R0
       36 DUPTABLE                         R5 K6 [{"NewPlayTesters"}]
       37 SETTABLEKS                       R2 R5 K0 ["NewPlayTesters"]
       39 CALL                             R3 2 -1
       40 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"CurrentPlayTesters", "NewPlayTesters", "OriginRoles"}]
        7 GETTABLEKS                       R5 R1 K6 ["playTesters"]
        9 SETTABLEKS                       R5 R4 K2 ["CurrentPlayTesters"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K7 ["None"]
       14 SETTABLEKS                       R5 R4 K3 ["NewPlayTesters"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K4 ["OriginRoles"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"Eligibility", "EligibilityPendingLoad"}]
        7 GETTABLEKS                       R6 R1 K5 ["eligibility"]
        9 JUMPIFNOTEQKNIL                  R6 ; [+5]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K6 ["None"]
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R5 R1 K5 ["eligibility"]
       17 SETTABLEKS                       R5 R4 K2 ["Eligibility"]
       19 GETTABLEKS                       R6 R1 K7 ["pendingLoad"]
       21 JUMPIFNOTEQKNIL                  R6 ; [+5]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K6 ["None"]
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R5 R1 K7 ["pendingLoad"]
       29 SETTABLEKS                       R5 R4 K3 ["EligibilityPendingLoad"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["OriginRoles"]
        2 GETTABLEKS                       R4 R1 K1 ["userId"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFEQKNIL                     R2 ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       11 GETTABLEKS                       R2 R2 K3 ["join"]
       13 MOVE                             R3 R0
       14 DUPTABLE                         R4 K4 [{"OriginRoles"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K2 ["Dictionary"]
       18 GETTABLEKS                       R5 R5 K3 ["join"]
       20 GETTABLEKS                       R6 R0 K0 ["OriginRoles"]
       22 NEWTABLE                         R7 1 0
       24 GETTABLEKS                       R8 R1 K1 ["userId"]
       26 GETTABLEKS                       R9 R1 K5 ["role"]
       28 SETTABLE                         R9 R7 R8
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K0 ["OriginRoles"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Actions"]
       29 GETTABLEKS                       R4 R4 K10 ["AddPendingPlayTester"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Actions"]
       38 GETTABLEKS                       R5 R5 K11 ["RemovePendingPlayTester"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Actions"]
       47 GETTABLEKS                       R6 R6 K12 ["SetCurrentPlayTesters"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K9 ["Actions"]
       56 GETTABLEKS                       R7 R7 K13 ["RecordAudienceOriginRole"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K4 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K9 ["Actions"]
       65 GETTABLEKS                       R8 R8 K14 ["SetPlayTesterEligibility"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K4 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Src"]
       72 GETTABLEKS                       R9 R9 K15 ["Util"]
       74 GETTABLEKS                       R9 R9 K16 ["IsEqualCheck"]
       76 CALL                             R8 1 1
       77 DUPCLOSURE                       R9 K17 [PROTO_0]
       78 GETTABLEKS                       R10 R1 K18 ["createReducer"]
       80 MOVE                             R11 R9
       81 CALL                             R11 0 1
       82 NEWTABLE                         R12 8 0
       84 DUPCLOSURE                       R13 K19 [PROTO_1]
       85 CAPTURE                          VAL R9
       86 SETTABLEKS                       R13 R12 K20 ["ResetStore"]
       88 GETTABLEKS                       R13 R3 K21 ["name"]
       90 DUPCLOSURE                       R14 K22 [PROTO_2]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R8
       93 SETTABLE                         R14 R12 R13
       94 GETTABLEKS                       R13 R4 K21 ["name"]
       96 DUPCLOSURE                       R14 K23 [PROTO_3]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R8
       99 SETTABLE                         R14 R12 R13
      100 GETTABLEKS                       R13 R5 K21 ["name"]
      102 DUPCLOSURE                       R14 K24 [PROTO_4]
      103 CAPTURE                          VAL R2
      104 SETTABLE                         R14 R12 R13
      105 GETTABLEKS                       R13 R7 K21 ["name"]
      107 DUPCLOSURE                       R14 K25 [PROTO_5]
      108 CAPTURE                          VAL R2
      109 SETTABLE                         R14 R12 R13
      110 GETTABLEKS                       R13 R6 K21 ["name"]
      112 DUPCLOSURE                       R14 K26 [PROTO_6]
      113 CAPTURE                          VAL R2
      114 SETTABLE                         R14 R12 R13
      115 CALL                             R10 2 -1
      116 RETURN                           R10 -1
