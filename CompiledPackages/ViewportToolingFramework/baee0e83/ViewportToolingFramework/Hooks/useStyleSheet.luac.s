PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StudioDesign"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+17]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["Styling"]
       10 GETTABLEKS                       R1 R2 K3 ["createStudioDesign"]
       12 CALL                             R1 0 1
       13 MOVE                             R0 R1
       14 GETUPVAL                         R1 2
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+3]
       17 LOADK                            R1 K0 ["StudioDesign"]
       18 SETTABLEKS                       R1 R0 K4 ["Name"]
       20 GETUPVAL                         R1 0
       21 SETTABLEKS                       R1 R0 K5 ["Parent"]
       23 NEWTABLE                         R1 0 1
       25 GETTABLEKS                       R2 R0 K6 ["Design"]
       27 SETLIST                          R1 R2 1 [1]
       29 GETUPVAL                         R2 3
       30 JUMPIFEQKNIL                     R2 ; [+8]
       32 GETUPVAL                         R4 3
       33 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       35 MOVE                             R3 R1
       36 GETIMPORT                        R2 K9 [table.insert]
       38 CALL                             R2 2 0
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R3 R4 K2 ["Styling"]
       42 GETTABLEKS                       R2 R3 K10 ["createStyleSheet"]
       44 LOADK                            R3 K11 ["ViewportToolingFramework"]
       45 GETUPVAL                         R4 4
       46 CALL                             R4 0 1
       47 NEWTABLE                         R5 0 0
       49 MOVE                             R6 R1
       50 CALL                             R2 4 -1
       51 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Parent"]
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Hooks"]
        3 GETTABLEKS                       R0 R1 K1 ["useStyleSheet"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["useMemo"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U5
       15 NEWTABLE                         R3 0 1
       17 MOVE                             R4 R0
       18 SETLIST                          R3 R4 1 [1]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K3 ["useEffect"]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U2
       27 NEWTABLE                         R4 0 0
       29 CALL                             R2 2 0
       30 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StudioDesign"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+17]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["Styling"]
       10 GETTABLEKS                       R1 R2 K3 ["createStudioDesign"]
       12 CALL                             R1 0 1
       13 MOVE                             R0 R1
       14 GETUPVAL                         R1 2
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+3]
       17 LOADK                            R1 K0 ["StudioDesign"]
       18 SETTABLEKS                       R1 R0 K4 ["Name"]
       20 GETUPVAL                         R1 0
       21 SETTABLEKS                       R1 R0 K5 ["Parent"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K2 ["Styling"]
       26 GETTABLEKS                       R1 R2 K6 ["createStyleSheet"]
       28 LOADK                            R2 K7 ["ViewportToolingFramework"]
       29 GETUPVAL                         R3 3
       30 CALL                             R3 0 1
       31 NEWTABLE                         R4 0 0
       33 NEWTABLE                         R5 0 1
       35 GETTABLEKS                       R6 R0 K8 ["Design"]
       37 SETLIST                          R5 R6 1 [1]
       39 CALL                             R1 4 -1
       40 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Parent"]
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 DUPCLOSURE                       R1 K1 [PROTO_4]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["useEffect"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 NEWTABLE                         R3 0 0
       17 CALL                             R1 2 0
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ViewportToolingFramework"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["Foundation"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Parent"]
       31 GETTABLEKS                       R5 R6 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["createStyle"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R8 R1 K15 ["Flags"]
       43 GETTABLEKS                       R7 R8 K16 ["getFFlagViewportToolingFrameworkMoreComponents"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R9 R1 K15 ["Flags"]
       50 GETTABLEKS                       R8 R9 K17 ["getFFlagViewportToolingFrameworkRenameCreatedStudioDesign"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K18 [PROTO_3]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R5
       60 DUPCLOSURE                       R9 K19 [PROTO_7]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 MOVE                             R11 R6
       67 CALL                             R11 0 1
       68 JUMPIFNOT                        R11 ; [+2]
       69 MOVE                             R10 R8
       70 RETURN                           R10 1
       71 MOVE                             R10 R9
       72 RETURN                           R10 1
