PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+6]
        4 JUMPIFEQ                         R0 R1 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 JUMPIFEQ                         R2 R3 ; [+3]
       17 LOADB                            R2 0
       18 RETURN                           R2 1
       19 LOADB                            R2 1
       20 GETIMPORT                        R3 K1 [pairs]
       22 MOVE                             R4 R0
       23 CALL                             R3 1 3
       24 FORGPREP_NEXT                    R3
       25 GETTABLE                         R8 R1 R6
       26 JUMPIFEQ                         R8 R7 ; [+3]
       28 LOADB                            R2 0
       29 JUMP                             ; [+2]
       30 FORGLOOP                         R3 2 ; [-6]
       32 GETIMPORT                        R3 K1 [pairs]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 3
       36 FORGPREP_NEXT                    R3
       37 GETTABLE                         R8 R0 R6
       38 JUMPIFEQ                         R8 R7 ; [+3]
       40 LOADB                            R2 0
       41 RETURN                           R2 1
       42 FORGLOOP                         R3 2 ; [-6]
       44 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R0 K4 [{"Current", "Changed", "Errors", "Warnings"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["Current"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["Changed"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["Errors"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K3 ["Warnings"]
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 RETURN                           R2 1

PROTO_3:
        0 JUMPIFEQ                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["value"]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R5 R2
        4 GETIMPORT                        R4 K2 [type]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+3]
        9 GETUPVAL                         R3 0
       10 JUMP                             ; [+1]
       11 DUPCLOSURE                       R3 K4 [PROTO_3]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R7 R1 K5 ["setting"]
       15 GETTABLE                         R5 R6 R7
       16 JUMPIFNOT                        R5 ; [+5]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R6 R1 K5 ["setting"]
       20 GETTABLE                         R4 R5 R6
       21 JUMP                             ; [+1]
       22 MOVE                             R4 R3
       23 MOVE                             R5 R4
       24 GETTABLEKS                       R7 R0 K6 ["Current"]
       26 GETTABLEKS                       R8 R1 K5 ["setting"]
       28 GETTABLE                         R6 R7 R8
       29 MOVE                             R7 R2
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+3]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R2 R5 K7 ["None"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R6 R7 K8 ["Dictionary"]
       38 GETTABLEKS                       R5 R6 K9 ["join"]
       40 MOVE                             R6 R0
       41 DUPTABLE                         R7 K12 [{"Changed", "Errors"}]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R9 R10 K8 ["Dictionary"]
       45 GETTABLEKS                       R8 R9 K9 ["join"]
       47 GETTABLEKS                       R9 R0 K10 ["Changed"]
       49 NEWTABLE                         R10 1 0
       51 GETTABLEKS                       R11 R1 K5 ["setting"]
       53 SETTABLE                         R2 R10 R11
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K10 ["Changed"]
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R9 R10 K8 ["Dictionary"]
       60 GETTABLEKS                       R8 R9 K9 ["join"]
       62 GETTABLEKS                       R9 R0 K11 ["Errors"]
       64 NEWTABLE                         R10 1 0
       66 GETTABLEKS                       R11 R1 K5 ["setting"]
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R12 R13 K7 ["None"]
       71 SETTABLE                         R12 R10 R11
       72 CALL                             R8 2 1
       73 SETTABLEKS                       R8 R7 K11 ["Errors"]
       75 CALL                             R5 2 -1
       76 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Errors"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["Errors"]
       14 GETTABLEKS                       R7 R1 K4 ["errors"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["Errors"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Errors"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["Errors"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["error"]
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R9 R10 K5 ["None"]
       21 SETTABLE                         R9 R7 R8
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K2 ["Errors"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Changed"}]
        7 NEWTABLE                         R5 0 0
        9 SETTABLEKS                       R5 R4 K2 ["Changed"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"Errors", "Warnings"}]
        7 NEWTABLE                         R5 0 0
        9 SETTABLEKS                       R5 R4 K2 ["Errors"]
       11 NEWTABLE                         R5 0 0
       13 SETTABLEKS                       R5 R4 K3 ["Warnings"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Current"}]
        7 GETTABLEKS                       R5 R1 K4 ["settings"]
        9 SETTABLEKS                       R5 R4 K2 ["Current"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Current"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["Current"]
       14 GETTABLEKS                       R7 R1 K4 ["settings"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["Current"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["List"]
        3 GETTABLEKS                       R2 R3 K1 ["find"]
        5 GETTABLEKS                       R3 R0 K2 ["Warnings"]
        7 GETTABLEKS                       R4 R1 K3 ["key"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+25]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K4 ["Dictionary"]
       14 GETTABLEKS                       R2 R3 K5 ["join"]
       16 MOVE                             R3 R0
       17 DUPTABLE                         R4 K6 [{"Warnings"}]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K0 ["List"]
       21 GETTABLEKS                       R5 R6 K5 ["join"]
       23 GETTABLEKS                       R6 R0 K2 ["Warnings"]
       25 NEWTABLE                         R7 0 1
       27 GETTABLEKS                       R8 R1 K3 ["key"]
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K2 ["Warnings"]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1
       36 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Warnings"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K4 ["List"]
       10 GETTABLEKS                       R5 R6 K5 ["removeValue"]
       12 GETTABLEKS                       R6 R0 K2 ["Warnings"]
       14 GETTABLEKS                       R7 R1 K6 ["key"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["Warnings"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R7 R0 K5 ["Packages"]
       27 GETTABLEKS                       R6 R7 K8 ["Framework"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R4 R5 K9 ["Util"]
       32 GETTABLEKS                       R3 R4 K10 ["deepEqual"]
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R7 K9 ["Util"]
       40 GETTABLEKS                       R5 R6 K12 ["isEmpty"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R8 R0 K11 ["Src"]
       47 GETTABLEKS                       R7 R8 K9 ["Util"]
       49 GETTABLEKS                       R6 R7 K13 ["AssetOverrides"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R9 R0 K11 ["Src"]
       56 GETTABLEKS                       R8 R9 K9 ["Util"]
       58 GETTABLEKS                       R7 R8 K14 ["Float"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R10 R0 K11 ["Src"]
       65 GETTABLEKS                       R9 R10 K9 ["Util"]
       67 GETTABLEKS                       R8 R9 K15 ["Scales"]
       69 CALL                             R7 1 1
       70 DUPTABLE                         R8 K24 [{"universeAvatarAssetOverrides", "universeAvatarMinScales", "universeAvatarMaxScales", "OptInLocations", "thumbnails", "workspaceGravity", "workspaceJumpHeight", "workspaceJumpPower"}]
       71 GETTABLEKS                       R9 R5 K25 ["isEqual"]
       73 SETTABLEKS                       R9 R8 K16 ["universeAvatarAssetOverrides"]
       75 GETTABLEKS                       R9 R7 K25 ["isEqual"]
       77 SETTABLEKS                       R9 R8 K17 ["universeAvatarMinScales"]
       79 GETTABLEKS                       R9 R7 K25 ["isEqual"]
       81 SETTABLEKS                       R9 R8 K18 ["universeAvatarMaxScales"]
       83 SETTABLEKS                       R3 R8 K19 ["OptInLocations"]
       85 SETTABLEKS                       R3 R8 K20 ["thumbnails"]
       87 GETTABLEKS                       R9 R6 K26 ["createIsEqualWithTolerance"]
       89 LOADK                            R10 K27 [0.001]
       90 CALL                             R9 1 1
       91 SETTABLEKS                       R9 R8 K21 ["workspaceGravity"]
       93 GETTABLEKS                       R9 R6 K26 ["createIsEqualWithTolerance"]
       95 LOADK                            R10 K27 [0.001]
       96 CALL                             R9 1 1
       97 SETTABLEKS                       R9 R8 K22 ["workspaceJumpHeight"]
       99 GETTABLEKS                       R9 R6 K26 ["createIsEqualWithTolerance"]
      101 LOADK                            R10 K27 [0.001]
      102 CALL                             R9 1 1
      103 SETTABLEKS                       R9 R8 K23 ["workspaceJumpPower"]
      105 DUPCLOSURE                       R9 K28 [PROTO_0]
      106 CAPTURE                          VAL R4
      107 DUPCLOSURE                       R10 K29 [PROTO_1]
      108 GETTABLEKS                       R11 R2 K30 ["createReducer"]
      110 MOVE                             R12 R10
      111 CALL                             R12 0 1
      112 DUPTABLE                         R13 K41 [{"ResetStore", "AddChange", "AddErrors", "DiscardError", "DiscardChanges", "DiscardErrors", "SetCurrentSettings", "AppendSettings", "AddWarning", "DiscardWarning"}]
      113 DUPCLOSURE                       R14 K42 [PROTO_2]
      114 CAPTURE                          VAL R10
      115 SETTABLEKS                       R14 R13 K31 ["ResetStore"]
      117 DUPCLOSURE                       R14 K43 [PROTO_4]
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R14 R13 K32 ["AddChange"]
      123 DUPCLOSURE                       R14 K44 [PROTO_5]
      124 CAPTURE                          VAL R1
      125 SETTABLEKS                       R14 R13 K33 ["AddErrors"]
      127 DUPCLOSURE                       R14 K45 [PROTO_6]
      128 CAPTURE                          VAL R1
      129 SETTABLEKS                       R14 R13 K34 ["DiscardError"]
      131 DUPCLOSURE                       R14 K46 [PROTO_7]
      132 CAPTURE                          VAL R1
      133 SETTABLEKS                       R14 R13 K35 ["DiscardChanges"]
      135 DUPCLOSURE                       R14 K47 [PROTO_8]
      136 CAPTURE                          VAL R1
      137 SETTABLEKS                       R14 R13 K36 ["DiscardErrors"]
      139 DUPCLOSURE                       R14 K48 [PROTO_9]
      140 CAPTURE                          VAL R1
      141 SETTABLEKS                       R14 R13 K37 ["SetCurrentSettings"]
      143 DUPCLOSURE                       R14 K49 [PROTO_10]
      144 CAPTURE                          VAL R1
      145 SETTABLEKS                       R14 R13 K38 ["AppendSettings"]
      147 DUPCLOSURE                       R14 K50 [PROTO_11]
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R14 R13 K39 ["AddWarning"]
      151 DUPCLOSURE                       R14 K51 [PROTO_12]
      152 CAPTURE                          VAL R1
      153 SETTABLEKS                       R14 R13 K40 ["DiscardWarning"]
      155 CALL                             R11 2 -1
      156 RETURN                           R11 -1
