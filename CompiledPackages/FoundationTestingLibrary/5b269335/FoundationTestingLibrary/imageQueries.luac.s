PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["FontFace"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Font"]
        5 GETUPVAL                         R7 1
        6 GETUPVAL                         R8 2
        7 GETTABLE                         R6 R7 R8
        8 GETTABLEKS                       R5 R6 K2 ["variant"]
       10 GETTABLE                         R3 R4 R5
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["ImageRectOffset"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["ImageRectOffset"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+10]
        8 GETTABLEKS                       R2 R0 K1 ["ImageRectSize"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K1 ["ImageRectSize"]
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
        6 JUMPIF                           R3 ; [+7]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K0 ["FoundationMigrateIconNames"]
       10 JUMPIFNOT                        R3 ; [+27]
       11 GETUPVAL                         R4 2
       12 GETTABLE                         R3 R4 R1
       13 JUMPIFNOT                        R3 ; [+24]
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R0
       16 GETUPVAL                         R7 2
       17 GETTABLE                         R6 R7 R1
       18 GETTABLEKS                       R5 R6 K1 ["name"]
       20 GETVARARGS                       R6 -1
       21 CALL                             R3 -1 1
       22 JUMPIF                           R3 ; [+2]
       23 NEWTABLE                         R3 0 0
       25 MOVE                             R2 R3
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R4 R5 K2 ["List"]
       29 GETTABLEKS                       R3 R4 K3 ["filter"]
       31 MOVE                             R4 R2
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R1
       36 CALL                             R3 2 1
       37 MOVE                             R2 R3
       38 GETUPVAL                         R4 6
       39 MOVE                             R5 R1
       40 CALL                             R4 1 1
       41 JUMPIFNOT                        R4 ; [+3]
       42 GETUPVAL                         R4 7
       43 GETTABLE                         R3 R4 R1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R3
       46 JUMPIFNOT                        R3 ; [+26]
       47 GETUPVAL                         R4 8
       48 LOADK                            R5 K4 ["Image"]
       49 MOVE                             R6 R0
       50 GETTABLEKS                       R7 R3 K4 ["Image"]
       52 GETVARARGS                       R8 -1
       53 CALL                             R4 -1 1
       54 GETUPVAL                         R7 4
       55 GETTABLEKS                       R6 R7 K2 ["List"]
       57 GETTABLEKS                       R5 R6 K3 ["filter"]
       59 MOVE                             R6 R4
       60 NEWCLOSURE                       R7 P1
       61 CAPTURE                          VAL R3
       62 CALL                             R5 2 1
       63 MOVE                             R4 R5
       64 GETUPVAL                         R7 4
       65 GETTABLEKS                       R6 R7 K2 ["List"]
       67 GETTABLEKS                       R5 R6 K5 ["join"]
       69 MOVE                             R6 R4
       70 MOVE                             R7 R2
       71 CALL                             R5 2 -1
       72 RETURN                           R5 -1
       73 GETUPVAL                         R6 4
       74 GETTABLEKS                       R5 R6 K2 ["List"]
       76 GETTABLEKS                       R4 R5 K5 ["join"]
       78 GETUPVAL                         R5 8
       79 LOADK                            R6 K4 ["Image"]
       80 MOVE                             R7 R0
       81 MOVE                             R8 R1
       82 GETVARARGS                       R9 -1
       83 CALL                             R5 -1 1
       84 MOVE                             R6 R2
       85 CALL                             R4 2 -1
       86 RETURN                           R4 -1

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
       14 GETTABLEKS                       R4 R2 K8 ["Utility"]
       16 GETTABLEKS                       R3 R4 K9 ["Flags"]
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R1 K10 ["BuilderIcons"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R6 R4 K12 ["Migration"]
       25 GETTABLEKS                       R5 R6 K11 ["uiblox"]
       27 GETIMPORT                        R6 K6 [require]
       29 GETTABLEKS                       R7 R1 K13 ["Cryo"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K6 [require]
       34 GETTABLEKS                       R8 R1 K14 ["FoundationImages"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K6 [require]
       39 GETTABLEKS                       R9 R1 K15 ["DomTestingLibrary"]
       41 CALL                             R8 1 1
       42 GETTABLEKS                       R9 R7 K16 ["Images"]
       44 GETIMPORT                        R10 K6 [require]
       46 GETTABLEKS                       R11 R0 K17 ["isFoundationImage"]
       48 CALL                             R10 1 1
       49 GETTABLEKS                       R12 R2 K8 ["Utility"]
       51 GETTABLEKS                       R11 R12 K18 ["isBuilderIcon"]
       53 GETTABLEKS                       R12 R8 K19 ["queryAllByText"]
       55 GETTABLEKS                       R13 R8 K20 ["queryAllByAttribute"]
       57 GETTABLEKS                       R14 R8 K21 ["wrapAllByQueryWithSuggestion"]
       59 GETTABLEKS                       R15 R8 K22 ["buildQueries"]
       61 DUPCLOSURE                       R16 K23 [PROTO_2]
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R13
       71 DUPCLOSURE                       R17 K24 [PROTO_3]
       72 DUPCLOSURE                       R18 K25 [PROTO_4]
       73 MOVE                             R19 R14
       74 MOVE                             R20 R16
       75 GETIMPORT                        R21 K28 [debug.info]
       77 MOVE                             R22 R16
       78 LOADK                            R23 K29 ["n"]
       79 CALL                             R21 2 1
       80 LOADK                            R22 K30 ["queryAll"]
       81 CALL                             R19 3 1
       82 MOVE                             R20 R15
       83 MOVE                             R21 R16
       84 MOVE                             R22 R17
       85 MOVE                             R23 R18
       86 CALL                             R20 3 5
       87 DUPTABLE                         R25 K37 [{"queryByImage", "queryAllByImage", "getAllByImage", "getByImage", "findAllByImage", "findByImage"}]
       88 SETTABLEKS                       R20 R25 K31 ["queryByImage"]
       90 SETTABLEKS                       R19 R25 K32 ["queryAllByImage"]
       92 SETTABLEKS                       R21 R25 K33 ["getAllByImage"]
       94 SETTABLEKS                       R22 R25 K34 ["getByImage"]
       96 SETTABLEKS                       R23 R25 K35 ["findAllByImage"]
       98 SETTABLEKS                       R24 R25 K36 ["findByImage"]
      100 RETURN                           R25 1
