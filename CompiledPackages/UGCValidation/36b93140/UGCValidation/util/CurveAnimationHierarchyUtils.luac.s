PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["getBodyPartsToParents"]
        5 CALL                             R0 0 1
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["Position"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["Rotation"]
        5 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIFEQKNIL                     R1 ; [+6]
       10 LOADK                            R5 K3 ["Vector3Curve"]
       11 NAMECALL                         R3 R1 K4 ["IsA"]
       13 CALL                             R3 2 1
       14 JUMPIF                           R3 ; [+12]
       15 LOADB                            R3 0
       16 JUMPIFEQKNIL                     R2 ; [+10]
       18 LOADK                            R5 K5 ["EulerRotationCurve"]
       19 NAMECALL                         R3 R2 K4 ["IsA"]
       21 CALL                             R3 2 1
       22 JUMPIF                           R3 ; [+4]
       23 LOADK                            R5 K6 ["RotationCurve"]
       24 NAMECALL                         R3 R2 K4 ["IsA"]
       26 CALL                             R3 2 1
       27 RETURN                           R3 1

PROTO_2:
        0 LOADB                            R1 1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["getBodyPartToParentMap"]
        4 CALL                             R3 0 1
        5 GETTABLE                         R2 R3 R0
        6 JUMPIFNOTEQKNIL                  R2 ; [+8]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["humanoidRootPartName"]
       11 JUMPIFEQ                         R0 R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Folder"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+8]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K3 ["isBodyPartFolderNameValid"]
       12 GETTABLEKS                       R7 R5 K4 ["Name"]
       14 CALL                             R6 1 1
       15 JUMPIFNOT                        R6 ; [+1]
       16 RETURN                           R5 1
       17 FORGLOOP                         R1 2 ; [-14]
       19 LOADNIL                          R1
       20 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["ClassName"]
        6 GETTABLEKS                       R7 R0 K0 ["ClassName"]
        8 JUMPIFNOTEQ                      R6 R7 ; [+14]
       10 GETTABLEKS                       R6 R5 K1 ["Name"]
       12 GETTABLEKS                       R7 R0 K1 ["Name"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+8]
       16 GETIMPORT                        R6 K4 [table.remove]
       18 GETUPVAL                         R7 0
       19 MOVE                             R8 R4
       20 CALL                             R6 2 0
       21 LOADB                            R6 1
       22 RETURN                           R6 1
       23 FORGLOOP                         R1 2 ; [-20]
       25 LOADB                            R1 0
       26 RETURN                           R1 1

PROTO_5:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 1
        2 RETURN                           R2 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R1
        5 NAMECALL                         R3 R0 K0 ["GetChildren"]
        7 CALL                             R3 1 3
        8 FORGPREP                         R3
        9 MOVE                             R8 R2
       10 MOVE                             R9 R7
       11 CALL                             R8 1 1
       12 JUMPIF                           R8 ; [+2]
       13 LOADB                            R8 0
       14 RETURN                           R8 1
       15 FORGLOOP                         R3 2 ; [-7]
       17 LOADB                            R3 1
       18 RETURN                           R3 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getBodyPartToParentMap"]
        5 CALL                             R2 0 3
        6 FORGPREP                         R2
        7 JUMPIFNOTEQ                      R6 R0 ; [+10]
        9 DUPTABLE                         R9 K4 [{["ClassName"] = "Folder", ["Name"]}]
       10 SETTABLEKS                       R5 R9 K3 ["Name"]
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K7 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-12]
       20 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["calculateAcceptableChildBodyPartFolders"]
        3 GETTABLEKS                       R3 R0 K1 ["Name"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R0 K1 ["Name"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["humanoidRootPartName"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+2]
       13 RETURN                           R2 1
       14 DUPTABLE                         R5 K6 [{["ClassName"] = "Vector3Curve", ["Name"] = "Position"}]
       15 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K9 [table.insert]
       20 CALL                             R3 2 0
       21 DUPTABLE                         R5 K11 [{["ClassName"], ["Name"] = "Rotation"}]
       22 JUMPIFNOT                        R1 ; [+2]
       23 LOADK                            R6 K12 ["EulerRotationCurve"]
       24 JUMP                             ; [+1]
       25 LOADK                            R6 K13 ["RotationCurve"]
       26 SETTABLEKS                       R6 R5 K3 ["ClassName"]
       28 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       30 MOVE                             R4 R2
       31 GETIMPORT                        R3 K9 [table.insert]
       33 CALL                             R3 2 0
       34 GETTABLEKS                       R3 R0 K1 ["Name"]
       36 JUMPIFEQKS                       R3 K14 ["Head"] ; [+2]
       38 RETURN                           R2 1
       39 DUPTABLE                         R5 K16 [{["ClassName"] = "Folder", ["Name"]}]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K17 ["FaceControlsName"]
       43 SETTABLEKS                       R6 R5 K1 ["Name"]
       45 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       47 MOVE                             R4 R2
       48 GETIMPORT                        R3 K9 [table.insert]
       50 CALL                             R3 2 0
       51 RETURN                           R2 1

PROTO_8:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K4 [{[1] = "FloatCurve", ["Name"] = "X"}]
        3 DUPTABLE                         R2 K6 [{[1] = "FloatCurve", ["Name"] = "Y"}]
        4 DUPTABLE                         R3 K8 [{[1] = "FloatCurve", ["Name"] = "Z"}]
        5 SETLIST                          R0 R1 3 [1]
        7 RETURN                           R0 1

PROTO_9:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        5 CALL                             R3 1 1
        6 LENGTH                           R2 R3
        7 NAMECALL                         R4 R0 K1 ["GetChildren"]
        9 CALL                             R4 1 1
       10 LENGTH                           R3 R4
       11 JUMPIFLT                         R3 R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["calculateAcceptableBodyPartFolderChildrenArray"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["areChildrenAcceptable"]
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+98]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["calculateAcceptableCurveChildrenArray"]
       16 CALL                             R2 0 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K1 ["areChildrenAcceptable"]
       20 LOADK                            R6 K3 ["Position"]
       21 NAMECALL                         R4 R0 K4 ["FindFirstChild"]
       23 CALL                             R4 2 1
       24 MOVE                             R5 R2
       25 CALL                             R3 2 1
       26 JUMPIF                           R3 ; [+2]
       27 LOADB                            R3 0
       28 RETURN                           R3 1
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K2 ["calculateAcceptableCurveChildrenArray"]
       32 CALL                             R3 0 1
       33 MOVE                             R2 R3
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K1 ["areChildrenAcceptable"]
       37 LOADK                            R6 K5 ["Rotation"]
       38 NAMECALL                         R4 R0 K4 ["FindFirstChild"]
       40 CALL                             R4 2 1
       41 MOVE                             R5 R2
       42 CALL                             R3 2 1
       43 JUMPIF                           R3 ; [+2]
       44 LOADB                            R3 0
       45 RETURN                           R3 1
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K6 ["FaceControlsName"]
       49 NAMECALL                         R3 R0 K4 ["FindFirstChild"]
       51 CALL                             R3 2 1
       52 JUMPIFNOT                        R3 ; [+26]
       53 NAMECALL                         R4 R3 K7 ["GetChildren"]
       55 CALL                             R4 1 1
       56 GETUPVAL                         R5 1
       57 CALL                             R5 0 1
       58 JUMPIFNOT                        R5 ; [+7]
       59 LENGTH                           R5 R4
       60 GETUPVAL                         R6 2
       61 CALL                             R6 0 1
       62 JUMPIFNOTLT                      R6 R5 ; [+3]
       64 LOADB                            R5 0
       65 RETURN                           R5 1
       66 MOVE                             R5 R4
       67 LOADNIL                          R6
       68 LOADNIL                          R7
       69 FORGPREP                         R5
       70 LOADK                            R12 K8 ["FloatCurve"]
       71 NAMECALL                         R10 R9 K9 ["IsA"]
       73 CALL                             R10 2 1
       74 JUMPIF                           R10 ; [+2]
       75 LOADB                            R10 0
       76 RETURN                           R10 1
       77 FORGLOOP                         R5 2 ; [-8]
       79 GETUPVAL                         R4 0
       80 GETTABLEKS                       R4 R4 K10 ["containsGrandChildren"]
       82 LOADK                            R7 K3 ["Position"]
       83 NAMECALL                         R5 R0 K4 ["FindFirstChild"]
       85 CALL                             R5 2 -1
       86 CALL                             R4 -1 1
       87 JUMPIFNOT                        R4 ; [+2]
       88 LOADB                            R4 0
       89 RETURN                           R4 1
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R4 R4 K10 ["containsGrandChildren"]
       93 LOADK                            R7 K5 ["Rotation"]
       94 NAMECALL                         R5 R0 K4 ["FindFirstChild"]
       96 CALL                             R5 2 -1
       97 CALL                             R4 -1 1
       98 JUMPIFNOT                        R4 ; [+2]
       99 LOADB                            R4 0
      100 RETURN                           R4 1
      101 GETUPVAL                         R4 0
      102 GETTABLEKS                       R4 R4 K10 ["containsGrandChildren"]
      104 MOVE                             R5 R3
      105 CALL                             R4 1 1
      106 JUMPIFNOT                        R4 ; [+2]
      107 LOADB                            R4 0
      108 RETURN                           R4 1
      109 LOADB                            R4 1
      110 RETURN                           R4 1
      111 LOADB                            R2 0
      112 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+34]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["validateBodyPartFolderChildren"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+2]
        9 LOADB                            R1 0
       10 RETURN                           R1 1
       11 NAMECALL                         R1 R0 K1 ["GetChildren"]
       13 CALL                             R1 1 3
       14 FORGPREP                         R1
       15 LOADK                            R8 K2 ["Folder"]
       16 NAMECALL                         R6 R5 K3 ["IsA"]
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+13]
       20 GETTABLEKS                       R6 R5 K4 ["Name"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K5 ["FaceControlsName"]
       25 JUMPIFEQ                         R6 R7 ; [+7]
       27 GETUPVAL                         R6 2
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 JUMPIF                           R6 ; [+2]
       31 LOADB                            R6 0
       32 RETURN                           R6 1
       33 FORGLOOP                         R1 2 ; [-19]
       35 LOADB                            R1 1
       36 RETURN                           R1 1
       37 NAMECALL                         R1 R0 K1 ["GetChildren"]
       39 CALL                             R1 1 3
       40 FORGPREP                         R1
       41 LOADK                            R8 K2 ["Folder"]
       42 NAMECALL                         R6 R5 K3 ["IsA"]
       44 CALL                             R6 2 1
       45 JUMPIFNOT                        R6 ; [+27]
       46 GETTABLEKS                       R6 R5 K4 ["Name"]
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K6 ["humanoidRootPartName"]
       51 JUMPIFNOTEQ                      R6 R7 ; [+3]
       53 LOADB                            R6 0
       54 RETURN                           R6 1
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R7 R7 K7 ["getBodyPartToParentMap"]
       58 CALL                             R7 0 1
       59 GETTABLEKS                       R8 R5 K4 ["Name"]
       61 GETTABLE                         R6 R7 R8
       62 JUMPIFNOT                        R6 ; [+10]
       63 GETTABLEKS                       R7 R0 K4 ["Name"]
       65 JUMPIFEQ                         R6 R7 ; [+3]
       67 LOADB                            R7 0
       68 RETURN                           R7 1
       69 GETUPVAL                         R7 2
       70 MOVE                             R8 R5
       71 CALL                             R7 1 -1
       72 RETURN                           R7 -1
       73 FORGLOOP                         R1 2 ; [-33]
       75 LOADB                            R1 1
       76 RETURN                           R1 1

PROTO_12:
        0 DUPCLOSURE                       R1 K0 [PROTO_11]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["isBodyPartFolderNameValid"]
        7 GETTABLEKS                       R3 R0 K2 ["Name"]
        9 CALL                             R2 1 1
       10 JUMPIF                           R2 ; [+2]
       11 LOADB                            R2 1
       12 RETURN                           R2 1
       13 MOVE                             R2 R1
       14 MOVE                             R3 R0
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["AssetCalculator"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K7 ["flags"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R2 K8 ["getFFlagUGCValidateDuplicatesInAnimation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R2 K9 ["getFFlagUGCValidateRestrictNumFaceControls"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R2 K10 ["getFIntUGCValidateMaxTotalFaceControls"]
       30 CALL                             R5 1 1
       31 NEWTABLE                         R6 16 0
       33 LOADNIL                          R7
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          REF R7
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R8 R6 K11 ["getBodyPartToParentMap"]
       39 LOADK                            R8 K12 ["HumanoidRootPart"]
       40 SETTABLEKS                       R8 R6 K13 ["humanoidRootPartName"]
       42 LOADK                            R8 K14 ["FaceControls"]
       43 SETTABLEKS                       R8 R6 K15 ["FaceControlsName"]
       45 DUPCLOSURE                       R8 K16 [PROTO_1]
       46 SETTABLEKS                       R8 R6 K17 ["folderHasAnimationTracks"]
       48 DUPCLOSURE                       R8 K18 [PROTO_2]
       49 CAPTURE                          VAL R6
       50 SETTABLEKS                       R8 R6 K19 ["isBodyPartFolderNameValid"]
       52 DUPCLOSURE                       R8 K20 [PROTO_3]
       53 CAPTURE                          VAL R6
       54 SETTABLEKS                       R8 R6 K21 ["getBodyPartFolderRoot"]
       56 DUPCLOSURE                       R8 K22 [PROTO_5]
       57 SETTABLEKS                       R8 R6 K23 ["areChildrenAcceptable"]
       59 DUPCLOSURE                       R8 K24 [PROTO_6]
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R8 R6 K25 ["calculateAcceptableChildBodyPartFolders"]
       63 DUPCLOSURE                       R8 K26 [PROTO_7]
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R8 R6 K27 ["calculateAcceptableBodyPartFolderChildrenArray"]
       67 DUPCLOSURE                       R8 K28 [PROTO_8]
       68 SETTABLEKS                       R8 R6 K29 ["calculateAcceptableCurveChildrenArray"]
       70 DUPCLOSURE                       R8 K30 [PROTO_9]
       71 SETTABLEKS                       R8 R6 K31 ["containsGrandChildren"]
       73 DUPCLOSURE                       R8 K32 [PROTO_10]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R8 R6 K33 ["validateBodyPartFolderChildren"]
       79 DUPCLOSURE                       R8 K34 [PROTO_12]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R6
       82 SETTABLEKS                       R8 R6 K35 ["validateCurveAnimationBodyPartFolder"]
       84 CLOSEUPVALS                      R7
       85 RETURN                           R6 1
