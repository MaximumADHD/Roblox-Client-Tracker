PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetProperty"]
        5 CALL                             R0 3 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["recordChange"]
        2 DUPTABLE                         R3 K6 [{["Name"] = "StyleEditor/SetSyleRulePropertyType", ["DisplayName"] = "StyleEditor - Set StyleRule Property Type", ["DoChange"]}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R4 R3 K5 ["DoChange"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R3
        1 JUMPIFNOTEQKS                    R2 K0 ["TokenReference"] ; [+9]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["TokenReferenceSchema"]
        6 GETTABLEKS                       R4 R4 K2 ["GetDefaultValue"]
        8 CALL                             R4 0 1
        9 MOVE                             R3 R4
       10 JUMP                             ; [+23]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["PropertySchemas"]
       14 GETTABLE                         R4 R5 R2
       15 JUMPIFNOTEQKNIL                  R4 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 LOADK                            R8 K4 ["unknown schema for type: %*"]
       20 MOVE                             R10 R2
       21 NAMECALL                         R8 R8 K5 ["format"]
       23 CALL                             R8 2 1
       24 MOVE                             R7 R8
       25 FASTCALL2                        ASSERT R6 R7 ; [+3]
       27 GETIMPORT                        R5 K7 [assert]
       29 CALL                             R5 2 0
       30 GETTABLEKS                       R5 R4 K2 ["GetDefaultValue"]
       32 CALL                             R5 0 1
       33 MOVE                             R3 R5
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          REF R3
       38 CLOSEUPVALS                      R3
       39 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["StyleSchema"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Reducers"]
       26 GETTABLEKS                       R3 R3 K9 ["RootReducer"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K10 ["Thunks"]
       35 GETTABLEKS                       R4 R4 K11 ["Types"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Types"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K12 [PROTO_2]
       46 CAPTURE                          VAL R1
       47 RETURN                           R5 1
