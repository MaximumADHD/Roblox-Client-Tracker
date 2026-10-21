PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["Model"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R1 1
        8 NAMECALL                         R2 R0 K2 ["GetDescendants"]
       10 CALL                             R2 1 3
       11 FORGPREP                         R2
       12 LOADK                            R9 K3 ["MeshPart"]
       13 NAMECALL                         R7 R6 K1 ["IsA"]
       15 CALL                             R7 2 1
       16 JUMPIFNOT                        R7 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R6
       21 GETIMPORT                        R7 K6 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-13]
       26 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+4]
        6 NEWTABLE                         R0 0 0
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 1
       12 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 NAMECALL                         R5 R4 K0 ["Destroy"]
       14 CALL                             R5 1 0
       15 FORGLOOP                         R0 2 ; [-4]
       17 GETIMPORT                        R0 K3 [table.clear]
       19 GETUPVAL                         R1 2
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PrimaryPart"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+10]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R1 0
        7 LOADK                            R3 K1 ["BasePart"]
        8 LOADB                            R4 1
        9 NAMECALL                         R1 R1 K2 ["FindFirstChildWhichIsA"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K0 ["PrimaryPart"]
       14 GETUPVAL                         R0 1
       15 JUMPIF                           R0 ; [+5]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["PrimaryPart"]
       19 JUMPIFNOTEQKNIL                  R0 ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 2
       23 DUPTABLE                         R1 K7 [{["source"], ["phase"] = "revealing", ["model"]}]
       24 GETUPVAL                         R2 3
       25 SETTABLEKS                       R2 R1 K3 ["source"]
       27 GETUPVAL                         R2 0
       28 SETTABLEKS                       R2 R1 K6 ["model"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K5 [{[1] = 10, ["displayParts"], ["onReveal"], ["isCancelled"]}]
        3 GETUPVAL                         R3 2
        4 GETUPVAL                         R4 3
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K2 ["displayParts"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 SETTABLEKS                       R3 R2 K3 ["onReveal"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U4
       17 SETTABLEKS                       R3 R2 K4 ["isCancelled"]
       19 CALL                             R0 2 1
       20 JUMPIFNOTEQKNIL                  R0 ; [+13]
       22 GETUPVAL                         R1 7
       23 CALL                             R1 0 0
       24 GETUPVAL                         R1 4
       25 JUMPIFNOT                        R1 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 5
       28 DUPTABLE                         R2 K11 [{["source"], ["phase"] = "inactive", ["model"] = }]
       29 GETUPVAL                         R3 6
       30 SETTABLEKS                       R3 R2 K6 ["source"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0
       34 SETUPVAL                         R0 8
       35 GETUPVAL                         R1 5
       36 DUPTABLE                         R2 K13 [{["source"], ["phase"] = "completed", ["model"] = }]
       37 GETUPVAL                         R3 6
       38 SETTABLEKS                       R3 R2 K6 ["source"]
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFEQKN                       R0 K0 [0] ; [+10]
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+7]
        7 GETUPVAL                         R0 1
        8 LOADK                            R2 K1 ["Model"]
        9 NAMECALL                         R0 R0 K2 ["IsA"]
       11 CALL                             R0 2 1
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 LOADB                            R1 0
       16 LOADB                            R2 0
       17 NAMECALL                         R3 R0 K3 ["Clone"]
       19 CALL                             R3 1 1
       20 NEWTABLE                         R4 0 0
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          REF R2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          REF R4
       26 GETUPVAL                         R6 2
       27 SETTABLEKS                       R5 R6 K4 ["current"]
       29 GETIMPORT                        R6 K7 [task.spawn]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          REF R1
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R5
       40 CAPTURE                          REF R4
       41 CALL                             R6 1 0
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          REF R1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R5
       46 CLOSEUPVALS                      R1
       47 RETURN                           R6 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["phase"]
        6 JUMPIFNOTEQKS                    R1 K2 ["completed"] ; [+3]
        8 JUMPIFNOTEQKNIL                  R0 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K0 ["current"]
       15 MOVE                             R1 R0
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 NEWTABLE                         R6 0 2
       19 MOVE                             R7 R0
       20 GETUPVAL                         R8 2
       21 CALL                             R8 0 -1
       22 SETLIST                          R6 R7 -1 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R2
       35 NEWTABLE                         R7 0 2
       37 MOVE                             R8 R0
       38 MOVE                             R9 R4
       39 SETLIST                          R7 R8 2 [1]
       41 CALL                             R5 2 0
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       45 NEWCLOSURE                       R6 P2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 NEWTABLE                         R7 0 1
       50 GETTABLEKS                       R8 R1 K4 ["phase"]
       52 SETLIST                          R7 R8 1 [1]
       54 CALL                             R5 2 0
       55 LENGTH                           R5 R4
       56 JUMPIFNOTEQKN                    R5 K5 [0] ; [+3]
       58 GETUPVAL                         R5 5
       59 RETURN                           R5 1
       60 GETTABLEKS                       R5 R1 K6 ["source"]
       62 JUMPIFEQ                         R5 R0 ; [+3]
       64 DUPTABLE                         R5 K10 [{["phase"] = "revealing", ["model"] = }]
       65 RETURN                           R5 1
       66 DUPTABLE                         R5 K11 [{"phase", "model"}]
       67 GETTABLEKS                       R6 R1 K4 ["phase"]
       69 SETTABLEKS                       R6 R5 K4 ["phase"]
       71 GETTABLEKS                       R6 R1 K8 ["model"]
       73 SETTABLEKS                       R6 R5 K8 ["model"]
       75 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarPreviewerProgressiveMeshPreview"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["revealMeshPartsAsync"]
       38 CALL                             R4 1 1
       39 DUPTABLE                         R5 K18 [{["phase"] = "inactive", ["model"] = }]
       40 DUPTABLE                         R6 K20 [{["source"] = , ["phase"] = "inactive", ["model"] = }]
       41 DUPCLOSURE                       R7 K21 [PROTO_0]
       42 DUPCLOSURE                       R8 K22 [PROTO_9]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 RETURN                           R8 1
