PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["FontFace"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Font"]
        5 GETUPVAL                         R6 1
        6 GETUPVAL                         R7 2
        7 GETTABLE                         R5 R6 R7
        8 GETTABLEKS                       R5 R5 K2 ["variant"]
       10 GETTABLE                         R3 R4 R5
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["ImageRectOffset"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["ImageRectOffset"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+10]
        8 GETTABLEKS                       R2 R0 K1 ["ImageRectSize"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["ImageRectSize"]
       13 JUMPIFEQ                         R2 R3 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 JUMPIF                           R3 ; [+3]
        7 GETUPVAL                         R4 1
        8 GETTABLE                         R3 R4 R1
        9 JUMPIFNOT                        R3 ; [+22]
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 GETUPVAL                         R6 1
       13 GETTABLE                         R5 R6 R1
       14 GETTABLEKS                       R5 R5 K0 ["name"]
       16 GETVARARGS                       R6 -1
       17 CALL                             R3 -1 1
       18 JUMPIF                           R3 ; [+2]
       19 NEWTABLE                         R3 0 0
       21 MOVE                             R2 R3
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K1 ["filter"]
       25 MOVE                             R4 R2
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 CALL                             R3 2 1
       31 MOVE                             R2 R3
       32 GETUPVAL                         R4 5
       33 MOVE                             R5 R1
       34 CALL                             R4 1 1
       35 JUMPIFNOT                        R4 ; [+3]
       36 GETUPVAL                         R4 6
       37 GETTABLE                         R3 R4 R1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R3
       40 JUMPIFNOT                        R3 ; [+22]
       41 GETUPVAL                         R4 7
       42 LOADK                            R5 K2 ["Image"]
       43 MOVE                             R6 R0
       44 GETTABLEKS                       R7 R3 K2 ["Image"]
       46 GETVARARGS                       R8 -1
       47 CALL                             R4 -1 1
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R5 R5 K1 ["filter"]
       51 MOVE                             R6 R4
       52 NEWCLOSURE                       R7 P1
       53 CAPTURE                          VAL R3
       54 CALL                             R5 2 1
       55 MOVE                             R4 R5
       56 GETUPVAL                         R5 3
       57 GETTABLEKS                       R5 R5 K3 ["joinArrays"]
       59 MOVE                             R6 R4
       60 MOVE                             R7 R2
       61 CALL                             R5 2 -1
       62 RETURN                           R5 -1
       63 GETUPVAL                         R4 3
       64 GETTABLEKS                       R4 R4 K4 ["join"]
       66 GETUPVAL                         R5 7
       67 LOADK                            R6 K2 ["Image"]
       68 MOVE                             R7 R0
       69 MOVE                             R8 R1
       70 GETVARARGS                       R9 -1
       71 CALL                             R5 -1 1
       72 MOVE                             R6 R2
       73 CALL                             R4 2 -1
       74 RETURN                           R4 -1

PROTO_3:
        0 LOADK                            R2 K0 ["Found multiple elements by: [%s=\"%s\"]"]
        1 LOADK                            R4 K1 ["Image"]
        2 FASTCALL1                        TOSTRING R1 ; [+3]
        3 MOVE                             R6 R1
        4 GETIMPORT                        R5 K3 [tostring]
        6 CALL                             R5 1 1
        7 NAMECALL                         R2 R2 K4 ["format"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

PROTO_4:
        0 LOADK                            R2 K0 ["Unable to find an element by: [%s=\"%s\"]"]
        1 LOADK                            R4 K1 ["Image"]
        2 FASTCALL1                        TOSTRING R1 ; [+3]
        3 MOVE                             R6 R1
        4 GETIMPORT                        R5 K3 [tostring]
        6 CALL                             R5 1 1
        7 NAMECALL                         R2 R2 K4 ["format"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FoundationTestingLibrary"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R3 K10 ["Migration"]
       21 GETTABLEKS                       R4 R5 K9 ["uiblox"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R1 K11 ["Dash"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R1 K12 ["DomTestingLibrary"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R1 K13 ["FoundationImages"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R7 K14 ["Images"]
       40 GETIMPORT                        R9 K6 [require]
       42 GETTABLEKS                       R10 R0 K15 ["isFoundationImage"]
       44 CALL                             R9 1 1
       45 GETTABLEKS                       R10 R2 K16 ["Utility"]
       47 GETTABLEKS                       R10 R10 K17 ["isBuilderIcon"]
       49 GETTABLEKS                       R11 R6 K18 ["queryAllByText"]
       51 GETTABLEKS                       R12 R6 K19 ["queryAllByAttribute"]
       53 GETTABLEKS                       R13 R6 K20 ["wrapAllByQueryWithSuggestion"]
       55 GETTABLEKS                       R14 R6 K21 ["buildQueries"]
       57 DUPCLOSURE                       R15 K22 [PROTO_2]
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R12
       66 DUPCLOSURE                       R16 K23 [PROTO_3]
       67 DUPCLOSURE                       R17 K24 [PROTO_4]
       68 MOVE                             R18 R13
       69 MOVE                             R19 R15
       70 GETIMPORT                        R20 K27 [debug.info]
       72 MOVE                             R21 R15
       73 LOADK                            R22 K28 ["n"]
       74 CALL                             R20 2 1
       75 LOADK                            R21 K29 ["queryAll"]
       76 CALL                             R18 3 1
       77 MOVE                             R19 R14
       78 MOVE                             R20 R15
       79 MOVE                             R21 R16
       80 MOVE                             R22 R17
       81 CALL                             R19 3 5
       82 DUPTABLE                         R24 K36 [{"queryByImage", "queryAllByImage", "getAllByImage", "getByImage", "findAllByImage", "findByImage"}]
       83 SETTABLEKS                       R19 R24 K30 ["queryByImage"]
       85 SETTABLEKS                       R18 R24 K31 ["queryAllByImage"]
       87 SETTABLEKS                       R20 R24 K32 ["getAllByImage"]
       89 SETTABLEKS                       R21 R24 K33 ["getByImage"]
       91 SETTABLEKS                       R22 R24 K34 ["findAllByImage"]
       93 SETTABLEKS                       R23 R24 K35 ["findByImage"]
       95 RETURN                           R24 1
