PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["Folder"]
        3 NAMECALL                         R1 R1 K1 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+2]
        7 GETUPVAL                         R0 0
        8 JUMP                             ; [+24]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R3 1
       11 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+7]
       15 LOADK                            R4 K0 ["Folder"]
       16 NAMECALL                         R2 R1 K1 ["IsA"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+2]
       20 MOVE                             R0 R1
       21 JUMP                             ; [+11]
       22 GETIMPORT                        R2 K5 [Instance.new]
       24 LOADK                            R3 K0 ["Folder"]
       25 CALL                             R2 1 1
       26 MOVE                             R0 R2
       27 GETUPVAL                         R2 1
       28 SETTABLEKS                       R2 R0 K6 ["Name"]
       30 GETUPVAL                         R2 0
       31 SETTABLEKS                       R2 R0 K7 ["Parent"]
       33 LOADN                            R1 0
       34 NAMECALL                         R2 R0 K8 ["GetChildren"]
       36 CALL                             R2 1 3
       37 FORGPREP                         R2
       38 LOADK                            R9 K9 ["StyleRule"]
       39 NAMECALL                         R7 R6 K1 ["IsA"]
       41 CALL                             R7 2 1
       42 JUMPIFNOT                        R7 ; [+6]
       43 GETTABLEKS                       R7 R6 K10 ["Priority"]
       45 JUMPIFNOTLT                      R1 R7 ; [+3]
       47 GETTABLEKS                       R1 R6 K10 ["Priority"]
       49 FORGLOOP                         R2 2 ; [-12]
       51 GETUPVAL                         R2 2
       52 GETTABLEKS                       R2 R2 K11 ["Selectors"]
       54 LOADNIL                          R3
       55 LOADNIL                          R4
       56 FORGPREP                         R2
       57 GETIMPORT                        R7 K5 [Instance.new]
       59 LOADK                            R8 K9 ["StyleRule"]
       60 CALL                             R7 1 1
       61 SETTABLEKS                       R6 R7 K12 ["Selector"]
       63 SETTABLEKS                       R6 R7 K6 ["Name"]
       65 ADD                              R8 R1 R5
       66 SETTABLEKS                       R8 R7 K10 ["Priority"]
       68 SETTABLEKS                       R0 R7 K7 ["Parent"]
       70 FORGLOOP                         R2 2 ; [-14]
       72 SETUPVAL                         R0 3
       73 GETIMPORT                        R2 K16 [Enum.FinishRecordingOperation.Commit]
       75 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FolderName"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 1
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETTABLEKS                       R10 R9 K1 ["Name"]
       11 GETUPVAL                         R11 2
       12 JUMPIFNOTEQ                      R10 R11 ; [+3]
       14 MOVE                             R4 R9
       15 JUMP                             ; [+2]
       16 FORGLOOP                         R5 2 ; [-8]
       18 JUMPIFNOTEQKNIL                  R4 ; [+2]
       20 LOADB                            R6 0 +1
       21 LOADB                            R6 1
       22 LOADK                            R8 K2 ["Unknown builtin style query category: %*"]
       23 GETUPVAL                         R10 2
       24 NAMECALL                         R8 R8 K3 ["format"]
       26 CALL                             R8 2 1
       27 MOVE                             R7 R8
       28 FASTCALL2                        ASSERT R6 R7 ; [+3]
       30 GETIMPORT                        R5 K5 [assert]
       32 CALL                             R5 2 0
       33 GETTABLEKS                       R5 R1 K6 ["recordChange"]
       35 DUPTABLE                         R6 K9 [{"Name", "DisplayName", "DoChange"}]
       36 LOADK                            R7 K10 ["StyleEditor/CreateBuiltinStyleQuery"]
       37 SETTABLEKS                       R7 R6 K1 ["Name"]
       39 LOADK                            R8 K11 ["StyleEditor - Create Builtin StyleQuery (%*)"]
       40 GETUPVAL                         R10 2
       41 NAMECALL                         R8 R8 K3 ["format"]
       43 CALL                             R8 2 1
       44 MOVE                             R7 R8
       45 SETTABLEKS                       R7 R6 K7 ["DisplayName"]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          REF R4
       51 CAPTURE                          REF R3
       52 SETTABLEKS                       R7 R6 K8 ["DoChange"]
       54 CALL                             R5 1 0
       55 GETUPVAL                         R5 4
       56 JUMPIFNOT                        R5 ; [+11]
       57 GETUPVAL                         R5 5
       58 GETTABLEKS                       R5 R5 K12 ["createItemId"]
       60 MOVE                             R6 R3
       61 CALL                             R5 1 1
       62 GETUPVAL                         R8 6
       63 MOVE                             R9 R5
       64 CALL                             R8 1 -1
       65 NAMECALL                         R6 R0 K13 ["dispatch"]
       67 CALL                             R6 -1 0
       68 CLOSEUPVALS                      R3
       69 RETURN                           R3 1

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R3 1

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
       17 GETTABLEKS                       R2 R2 K7 ["BuiltinStyleQueryCategories"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["StyleQueryHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K6 ["Util"]
       35 GETTABLEKS                       R4 R4 K9 ["TreeTableHelpers"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R4 R0 K5 ["Src"]
       40 GETTABLEKS                       R4 R4 K10 ["Actions"]
       42 GETIMPORT                        R5 K4 [require]
       44 GETTABLEKS                       R6 R4 K11 ["Window"]
       46 GETTABLEKS                       R6 R6 K12 ["SelectItem"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K5 ["Src"]
       53 GETTABLEKS                       R7 R7 K13 ["Thunks"]
       55 GETTABLEKS                       R7 R7 K14 ["Types"]
       57 CALL                             R6 1 1
       58 DUPCLOSURE                       R7 K15 [PROTO_2]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 RETURN                           R7 1
