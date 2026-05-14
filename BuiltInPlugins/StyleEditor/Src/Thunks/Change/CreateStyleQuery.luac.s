PROTO_0:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K0 ["Folder"]
        4 NAMECALL                         R2 R2 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+18]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R2 0
       10 LOADK                            R4 K2 ["StyleRule"]
       11 NAMECALL                         R2 R2 K3 ["FindFirstAncestorWhichIsA"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 JUMPIFNOTEQKNIL                  R1 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       21 LOADK                            R4 K4 ["Folder that can create StyleQuery StyleRule should have a StyleRule ancestor"]
       22 GETIMPORT                        R2 K6 [assert]
       24 CALL                             R2 2 0
       25 JUMP                             ; [+26]
       26 GETUPVAL                         R1 0
       27 GETUPVAL                         R2 0
       28 GETUPVAL                         R4 1
       29 NAMECALL                         R2 R2 K7 ["FindFirstChild"]
       31 CALL                             R2 2 1
       32 JUMPIFNOT                        R2 ; [+7]
       33 LOADK                            R5 K0 ["Folder"]
       34 NAMECALL                         R3 R2 K1 ["IsA"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+2]
       38 MOVE                             R0 R2
       39 JUMP                             ; [+12]
       40 GETIMPORT                        R3 K10 [Instance.new]
       42 LOADK                            R4 K0 ["Folder"]
       43 CALL                             R3 1 1
       44 MOVE                             R0 R3
       45 GETUPVAL                         R3 1
       46 SETTABLEKS                       R3 R0 K11 ["Name"]
       48 GETUPVAL                         R3 0
       49 SETTABLEKS                       R3 R0 K12 ["Parent"]
       51 SETUPVAL                         R0 2
       52 GETUPVAL                         R2 3
       53 GETTABLEKS                       R2 R2 K13 ["getAvailablePseudoSelector"]
       55 MOVE                             R3 R1
       56 LOADK                            R4 K14 ["StyleQuery"]
       57 CALL                             R2 2 1
       58 GETIMPORT                        R3 K10 [Instance.new]
       60 LOADK                            R4 K2 ["StyleRule"]
       61 CALL                             R3 1 1
       62 SETTABLEKS                       R2 R3 K15 ["Selector"]
       64 SETTABLEKS                       R2 R3 K11 ["Name"]
       66 GETUPVAL                         R4 4
       67 GETTABLEKS                       R4 R4 K16 ["calculatePriority"]
       69 MOVE                             R5 R1
       70 MOVE                             R6 R2
       71 CALL                             R4 2 1
       72 SETTABLEKS                       R4 R3 K17 ["Priority"]
       74 SETTABLEKS                       R0 R3 K12 ["Parent"]
       76 GETIMPORT                        R4 K20 [string.match]
       78 MOVE                             R5 R2
       79 LOADK                            R6 K21 ["#(.*)"]
       80 CALL                             R4 2 1
       81 LOADK                            R6 K22 ["%*%*"]
       82 GETUPVAL                         R8 5
       83 GETTABLEKS                       R8 R8 K23 ["SelectorSyntax"]
       85 GETTABLEKS                       R8 R8 K24 ["Query"]
       87 MOVE                             R9 R4
       88 JUMPIF                           R9 ; [+3]
       89 GETUPVAL                         R9 6
       90 GETTABLEKS                       R9 R9 K25 ["ClassName"]
       92 NAMECALL                         R6 R6 K26 ["format"]
       94 CALL                             R6 3 1
       95 MOVE                             R5 R6
       96 GETIMPORT                        R6 K10 [Instance.new]
       98 LOADK                            R7 K2 ["StyleRule"]
       99 CALL                             R6 1 1
      100 SETTABLEKS                       R5 R6 K15 ["Selector"]
      102 SETTABLEKS                       R5 R6 K11 ["Name"]
      104 GETUPVAL                         R7 7
      105 JUMPIFNOT                        R7 ; [+5]
      106 GETTABLEKS                       R7 R3 K17 ["Priority"]
      108 SETTABLEKS                       R7 R6 K17 ["Priority"]
      110 JUMP                             ; [+8]
      111 GETUPVAL                         R7 4
      112 GETTABLEKS                       R7 R7 K16 ["calculatePriority"]
      114 MOVE                             R8 R1
      115 MOVE                             R9 R5
      116 CALL                             R7 2 1
      117 SETTABLEKS                       R7 R6 K17 ["Priority"]
      119 SETTABLEKS                       R0 R6 K12 ["Parent"]
      121 GETUPVAL                         R7 2
      122 JUMPIF                           R7 ; [+1]
      123 SETUPVAL                         R3 2
      124 GETIMPORT                        R7 K30 [Enum.FinishRecordingOperation.Commit]
      126 RETURN                           R7 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["FolderName"]
        4 GETTABLEKS                       R4 R1 K1 ["recordChange"]
        6 DUPTABLE                         R5 K5 [{"Name", "DisplayName", "DoChange"}]
        7 LOADK                            R6 K6 ["StyleEditor/CreateStyleQuery"]
        8 SETTABLEKS                       R6 R5 K2 ["Name"]
       10 LOADK                            R6 K7 ["StyleEditor - Create StyleQuery"]
       11 SETTABLEKS                       R6 R5 K3 ["DisplayName"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R3
       16 CAPTURE                          REF R2
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U5
       22 SETTABLEKS                       R6 R5 K4 ["DoChange"]
       24 CALL                             R4 1 0
       25 GETUPVAL                         R4 6
       26 JUMPIFNOT                        R4 ; [+11]
       27 GETUPVAL                         R4 7
       28 GETTABLEKS                       R4 R4 K8 ["createItemId"]
       30 MOVE                             R5 R2
       31 CALL                             R4 1 1
       32 GETUPVAL                         R7 8
       33 MOVE                             R8 R4
       34 CALL                             R7 1 -1
       35 NAMECALL                         R5 R0 K9 ["dispatch"]
       37 CALL                             R5 -1 0
       38 CLOSEUPVALS                      R2
       39 RETURN                           R2 1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 RETURN                           R2 1

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
       17 GETTABLEKS                       R2 R2 K7 ["MenuHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["SelectorHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K6 ["Util"]
       35 GETTABLEKS                       R4 R4 K9 ["StyleQueryHelpers"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K6 ["Util"]
       44 GETTABLEKS                       R5 R5 K10 ["StyleRuleHelpers"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R6 R0 K5 ["Src"]
       51 GETTABLEKS                       R6 R6 K6 ["Util"]
       53 GETTABLEKS                       R6 R6 K11 ["TreeTableHelpers"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R6 R0 K5 ["Src"]
       58 GETTABLEKS                       R6 R6 K12 ["Actions"]
       60 GETIMPORT                        R7 K4 [require]
       62 GETTABLEKS                       R8 R6 K13 ["Window"]
       64 GETTABLEKS                       R8 R8 K14 ["SelectItem"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K4 [require]
       69 GETTABLEKS                       R9 R0 K5 ["Src"]
       71 GETTABLEKS                       R9 R9 K15 ["Reducers"]
       73 GETTABLEKS                       R9 R9 K16 ["RootReducer"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K4 [require]
       78 GETTABLEKS                       R10 R0 K5 ["Src"]
       80 GETTABLEKS                       R10 R10 K17 ["Thunks"]
       82 GETTABLEKS                       R10 R10 K18 ["Types"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K4 [require]
       87 GETTABLEKS                       R11 R0 K5 ["Src"]
       89 GETTABLEKS                       R11 R11 K19 ["Flags"]
       91 GETTABLEKS                       R11 R11 K20 ["getFFlagStyleQuery"]
       93 CALL                             R10 1 1
       94 CALL                             R10 0 1
       95 DUPCLOSURE                       R11 K21 [PROTO_2]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R7
      103 RETURN                           R11 1
