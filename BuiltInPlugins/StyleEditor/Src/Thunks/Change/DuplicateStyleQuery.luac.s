PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDataFromSelector"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Selector"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["Type"]
        9 GETTABLEKS                       R2 R3 K3 ["Pseudo"]
       11 CALL                             R0 2 1
       12 FASTCALL2K                       ASSERT R0 K4 ; [+5]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K4 ["Calling DuplicateStyleQuery on non StyleQuery rule"]
       16 GETIMPORT                        R1 K6 [assert]
       18 CALL                             R1 2 0
       19 GETTABLEKS                       R2 R0 K7 ["Name"]
       21 JUMPIFNOT                        R2 ; [+5]
       22 GETTABLEKS                       R2 R0 K7 ["Name"]
       24 LOADK                            R3 K8 ["-copy"]
       25 CONCAT                           R1 R2 R3
       26 JUMP                             ; [+1]
       27 LOADK                            R1 K9 ["copy"]
       28 SETTABLEKS                       R1 R0 K7 ["Name"]
       30 GETUPVAL                         R1 1
       31 NAMECALL                         R1 R1 K10 ["Clone"]
       33 CALL                             R1 1 1
       34 SETUPVAL                         R1 2
       35 GETUPVAL                         R2 2
       36 FASTCALL2K                       ASSERT R2 K11 ; [+4]
       38 LOADK                            R3 K11 ["Failed to clone pseudo rule"]
       39 GETIMPORT                        R1 K6 [assert]
       41 CALL                             R1 2 0
       42 GETUPVAL                         R1 2
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R2 R3 K12 ["constructSelector"]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K2 ["Type"]
       49 GETTABLEKS                       R3 R4 K3 ["Pseudo"]
       51 MOVE                             R4 R0
       52 CALL                             R2 2 1
       53 SETTABLEKS                       R2 R1 K1 ["Selector"]
       55 GETUPVAL                         R1 2
       56 GETUPVAL                         R3 1
       57 GETTABLEKS                       R2 R3 K13 ["Parent"]
       59 SETTABLEKS                       R2 R1 K13 ["Parent"]
       61 GETUPVAL                         R1 3
       62 LOADNIL                          R2
       63 LOADNIL                          R3
       64 FORGPREP                         R1
       65 NAMECALL                         R6 R5 K10 ["Clone"]
       67 CALL                             R6 1 1
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R7 R8 K14 ["getQueryTypeFromSelector"]
       71 GETTABLEKS                       R8 R5 K1 ["Selector"]
       73 CALL                             R7 1 1
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R11 R12 K2 ["Type"]
       77 GETTABLEKS                       R10 R11 K15 ["Query"]
       79 JUMPIFEQ                         R7 R10 ; [+2]
       81 LOADB                            R9 0 +1
       82 LOADB                            R9 1
       83 FASTCALL1                        ASSERT R9 ; [+2]
       84 GETIMPORT                        R8 K6 [assert]
       86 CALL                             R8 1 0
       87 GETUPVAL                         R9 0
       88 GETTABLEKS                       R8 R9 K0 ["getDataFromSelector"]
       90 GETTABLEKS                       R9 R5 K1 ["Selector"]
       92 MOVE                             R10 R7
       93 CALL                             R8 2 1
       94 FASTCALL1                        ASSERT R8 ; [+3]
       95 MOVE                             R10 R8
       96 GETIMPORT                        R9 K6 [assert]
       98 CALL                             R9 1 0
       99 GETTABLEKS                       R9 R0 K7 ["Name"]
      101 SETTABLEKS                       R9 R8 K7 ["Name"]
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R9 R10 K12 ["constructSelector"]
      106 MOVE                             R10 R7
      107 MOVE                             R11 R8
      108 CALL                             R9 2 1
      109 SETTABLEKS                       R9 R6 K1 ["Selector"]
      111 GETTABLEKS                       R9 R5 K13 ["Parent"]
      113 SETTABLEKS                       R9 R6 K13 ["Parent"]
      115 FORGLOOP                         R1 2 ; [-51]
      117 GETIMPORT                        R1 K19 [Enum.FinishRecordingOperation.Commit]
      119 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K2 ["getQueryStyleRulesForPseudo"]
       11 GETUPVAL                         R3 1
       12 CALL                             R2 1 1
       13 LOADNIL                          R3
       14 GETTABLEKS                       R4 R1 K3 ["recordChange"]
       16 DUPTABLE                         R5 K7 [{"Name", "DisplayName", "DoChange"}]
       17 LOADK                            R6 K8 ["StyleEditor/DuplicateStyleQuery"]
       18 SETTABLEKS                       R6 R5 K4 ["Name"]
       20 LOADK                            R6 K9 ["StyleEditor - Duplicate Style Query"]
       21 SETTABLEKS                       R6 R5 K5 ["DisplayName"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          REF R3
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R6 R5 K6 ["DoChange"]
       30 CALL                             R4 1 0
       31 JUMPIFNOT                        R3 ; [+11]
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R4 R5 K10 ["createItemId"]
       35 MOVE                             R5 R3
       36 CALL                             R4 1 1
       37 GETUPVAL                         R7 4
       38 MOVE                             R8 R4
       39 CALL                             R7 1 -1
       40 NAMECALL                         R5 R0 K11 ["dispatch"]
       42 CALL                             R5 -1 0
       43 CLOSEUPVALS                      R3
       44 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["StyleQueryHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Util"]
       26 GETTABLEKS                       R3 R4 K8 ["TreeTableHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K9 ["Flags"]
       35 GETTABLEKS                       R4 R5 K10 ["getFFlagStyleQuery"]
       37 CALL                             R3 1 1
       38 CALL                             R3 0 1
       39 GETTABLEKS                       R5 R0 K5 ["Src"]
       41 GETTABLEKS                       R4 R5 K11 ["Actions"]
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R7 R4 K12 ["Window"]
       47 GETTABLEKS                       R6 R7 K13 ["SelectItem"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R9 R0 K5 ["Src"]
       54 GETTABLEKS                       R8 R9 K14 ["Thunks"]
       56 GETTABLEKS                       R7 R8 K15 ["Types"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K16 [PROTO_2]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R5
       64 RETURN                           R7 1
