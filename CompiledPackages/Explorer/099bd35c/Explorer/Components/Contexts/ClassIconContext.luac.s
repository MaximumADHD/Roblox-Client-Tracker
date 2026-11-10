PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["theme"]
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+10]
        9 NEWTABLE                         R1 0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["current"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K1 ["theme"]
       17 SETTABLE                         R1 R2 R3
       18 GETTABLE                         R2 R1 R0
       19 JUMPIFEQKNIL                     R2 ; [+2]
       21 RETURN                           R2 1
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K2 ["getClassIcon"]
       25 MOVE                             R4 R0
       26 CALL                             R3 1 1
       27 SETTABLE                         R3 R1 R0
       28 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["theme"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFNOTEQKNIL                  R0 ; [+10]
        9 NEWTABLE                         R0 0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["theme"]
       17 SETTABLE                         R0 R1 R2
       18 GETTABLEKS                       R1 R0 K2 ["CustomFolder"]
       20 JUMPIFEQKNIL                     R1 ; [+2]
       22 RETURN                           R1 1
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K3 ["getTintableFolderIcon"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K1 ["theme"]
       29 CALL                             R2 1 1
       30 SETTABLEKS                       R2 R0 K2 ["CustomFolder"]
       32 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 1
       22 GETTABLEKS                       R6 R1 K4 ["theme"]
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R6 0 1
       36 MOVE                             R7 R3
       37 SETLIST                          R6 R7 1 [1]
       39 CALL                             R4 2 1
       40 DUPTABLE                         R5 K9 [{["getClassIcon"], ["getTintableFolderIcon"], ["default"] = False}]
       41 SETTABLEKS                       R3 R5 K5 ["getClassIcon"]
       43 SETTABLEKS                       R4 R5 K6 ["getTintableFolderIcon"]
       45 GETUPVAL                         R6 2
       46 GETUPVAL                         R7 3
       47 GETTABLEKS                       R7 R7 K10 ["Provider"]
       49 DUPTABLE                         R8 K12 [{"value"}]
       50 SETTABLEKS                       R5 R8 K11 ["value"]
       52 GETTABLEKS                       R9 R0 K13 ["children"]
       54 CALL                             R6 3 -1
       55 RETURN                           R6 -1

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"Image", "ImageRectOffset", "ImageRectSize"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["tintableFolder"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K5 ["theme"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K0 ["Image"]
       10 GETIMPORT                        R1 K8 [Vector2.new]
       12 LOADN                            R2 0
       13 LOADN                            R3 0
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K1 ["ImageRectOffset"]
       17 GETIMPORT                        R1 K8 [Vector2.new]
       19 LOADN                            R2 16
       20 LOADN                            R3 16
       21 CALL                             R1 2 1
       22 SETTABLEKS                       R1 R0 K2 ["ImageRectSize"]
       24 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 LOADK                            R3 K1 ["Instance"]
        4 JUMP                             ; [+1]
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["GetClassIcon"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R1
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 4
       25 GETUPVAL                         R4 5
       26 DUPTABLE                         R5 K5 [{"getClassIcon", "getTintableFolderIcon"}]
       27 DUPCLOSURE                       R6 K6 [PROTO_4]
       28 CAPTURE                          UPVAL U6
       29 SETTABLEKS                       R6 R5 K3 ["getClassIcon"]
       31 SETTABLEKS                       R2 R5 K4 ["getTintableFolderIcon"]
       33 GETTABLEKS                       R6 R0 K7 ["children"]
       35 CALL                             R3 3 -1
       36 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["ImageUrl"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Components"]
       31 GETTABLEKS                       R5 R5 K15 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K16 ["ThemeContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K10 ["Util"]
       40 GETTABLEKS                       R6 R6 K17 ["createUnimplemented"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K18 ["Flags"]
       47 GETTABLEKS                       R7 R7 K19 ["getEngineFeatureFolderIconTint"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R3 K20 ["createElement"]
       52 DUPTABLE                         R8 K25 [{["getClassIcon"], ["getTintableFolderIcon"], ["default"] = True}]
       53 MOVE                             R9 R5
       54 LOADK                            R10 K21 ["getClassIcon"]
       55 CALL                             R9 1 1
       56 SETTABLEKS                       R9 R8 K21 ["getClassIcon"]
       58 MOVE                             R9 R5
       59 LOADK                            R10 K22 ["getTintableFolderIcon"]
       60 CALL                             R9 1 1
       61 SETTABLEKS                       R9 R8 K22 ["getTintableFolderIcon"]
       63 GETTABLEKS                       R9 R3 K26 ["createContext"]
       65 MOVE                             R10 R8
       66 CALL                             R9 1 1
       67 DUPCLOSURE                       R10 K27 [PROTO_2]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 DUPCLOSURE                       R11 K28 [PROTO_5]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R0
       80 DUPTABLE                         R12 K32 [{"Context", "Provider", "StandardProvider"}]
       81 SETTABLEKS                       R9 R12 K29 ["Context"]
       83 SETTABLEKS                       R10 R12 K30 ["Provider"]
       85 SETTABLEKS                       R11 R12 K31 ["StandardProvider"]
       87 RETURN                           R12 1
