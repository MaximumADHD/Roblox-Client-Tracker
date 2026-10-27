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
       35 JUMPIFNOT                        R4 ; [+6]
       36 GETUPVAL                         R4 6
       37 GETTABLE                         R3 R4 R1
       38 JUMPIF                           R3 ; [+4]
       39 GETUPVAL                         R4 7
       40 GETTABLE                         R3 R4 R1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R3
       43 JUMPIFNOT                        R3 ; [+22]
       44 GETUPVAL                         R4 8
       45 LOADK                            R5 K2 ["Image"]
       46 MOVE                             R6 R0
       47 GETTABLEKS                       R7 R3 K2 ["Image"]
       49 GETVARARGS                       R8 -1
       50 CALL                             R4 -1 1
       51 GETUPVAL                         R5 3
       52 GETTABLEKS                       R5 R5 K1 ["filter"]
       54 MOVE                             R6 R4
       55 NEWCLOSURE                       R7 P1
       56 CAPTURE                          VAL R3
       57 CALL                             R5 2 1
       58 MOVE                             R4 R5
       59 GETUPVAL                         R5 3
       60 GETTABLEKS                       R5 R5 K3 ["joinArrays"]
       62 MOVE                             R6 R4
       63 MOVE                             R7 R2
       64 CALL                             R5 2 -1
       65 RETURN                           R5 -1
       66 GETUPVAL                         R4 3
       67 GETTABLEKS                       R4 R4 K4 ["join"]
       69 GETUPVAL                         R5 8
       70 LOADK                            R6 K2 ["Image"]
       71 MOVE                             R7 R0
       72 MOVE                             R8 R1
       73 GETVARARGS                       R9 -1
       74 CALL                             R5 -1 1
       75 MOVE                             R6 R2
       76 CALL                             R4 2 -1
       77 RETURN                           R4 -1

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
       40 GETTABLEKS                       R9 R7 K15 ["IconImages_DEPRECATED"]
       42 GETIMPORT                        R10 K6 [require]
       44 GETTABLEKS                       R11 R0 K16 ["isFoundationImage"]
       46 CALL                             R10 1 1
       47 GETTABLEKS                       R11 R2 K17 ["Utility"]
       49 GETTABLEKS                       R11 R11 K18 ["isBuilderIcon"]
       51 GETTABLEKS                       R12 R6 K19 ["queryAllByText"]
       53 GETTABLEKS                       R13 R6 K20 ["queryAllByAttribute"]
       55 GETTABLEKS                       R14 R6 K21 ["wrapAllByQueryWithSuggestion"]
       57 GETTABLEKS                       R15 R6 K22 ["buildQueries"]
       59 DUPCLOSURE                       R16 K23 [PROTO_2]
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R13
       69 DUPCLOSURE                       R17 K24 [PROTO_3]
       70 DUPCLOSURE                       R18 K25 [PROTO_4]
       71 MOVE                             R19 R14
       72 MOVE                             R20 R16
       73 GETIMPORT                        R21 K28 [debug.info]
       75 MOVE                             R22 R16
       76 LOADK                            R23 K29 ["n"]
       77 CALL                             R21 2 1
       78 LOADK                            R22 K30 ["queryAll"]
       79 CALL                             R19 3 1
       80 MOVE                             R20 R15
       81 MOVE                             R21 R16
       82 MOVE                             R22 R17
       83 MOVE                             R23 R18
       84 CALL                             R20 3 5
       85 DUPTABLE                         R25 K37 [{"queryByImage", "queryAllByImage", "getAllByImage", "getByImage", "findAllByImage", "findByImage"}]
       86 SETTABLEKS                       R20 R25 K31 ["queryByImage"]
       88 SETTABLEKS                       R19 R25 K32 ["queryAllByImage"]
       90 SETTABLEKS                       R21 R25 K33 ["getAllByImage"]
       92 SETTABLEKS                       R22 R25 K34 ["getByImage"]
       94 SETTABLEKS                       R23 R25 K35 ["findAllByImage"]
       96 SETTABLEKS                       R24 R25 K36 ["findByImage"]
       98 RETURN                           R25 1
