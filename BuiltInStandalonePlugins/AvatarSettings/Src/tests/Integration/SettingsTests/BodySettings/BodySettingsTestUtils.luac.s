PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["upperRangeInput"]
        3 GETTABLEKS                       R5 R5 K1 ["Text"]
        5 CALL                             R4 1 1
        6 GETTABLEKS                       R4 R4 K2 ["toBe"]
        8 FASTCALL1                        TOSTRING R2 ; [+3]
        9 MOVE                             R6 R2
       10 GETIMPORT                        R5 K4 [tostring]
       12 CALL                             R5 1 1
       13 CALL                             R4 1 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R5 R1 K5 ["CustomHeight"]
       17 GETTABLEKS                       R5 R5 K6 ["Max"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R4 R4 K2 ["toBe"]
       22 MOVE                             R5 R2
       23 CALL                             R4 1 0
       24 JUMPIFNOT                        R3 ; [+40]
       25 GETTABLEKS                       R5 R0 K7 ["lowerRangeInput"]
       27 JUMPIFNOT                        R5 ; [+6]
       28 GETTABLEKS                       R5 R0 K7 ["lowerRangeInput"]
       30 LOADK                            R7 K8 ["TextBox"]
       31 NAMECALL                         R5 R5 K9 ["IsA"]
       33 CALL                             R5 2 1
       34 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       36 LOADK                            R6 K10 ["LowerRangeInput not found"]
       37 GETIMPORT                        R4 K12 [assert]
       39 CALL                             R4 2 0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R5 R0 K7 ["lowerRangeInput"]
       43 GETTABLEKS                       R5 R5 K1 ["Text"]
       45 CALL                             R4 1 1
       46 GETTABLEKS                       R4 R4 K2 ["toBe"]
       48 FASTCALL1                        TOSTRING R3 ; [+3]
       49 MOVE                             R6 R3
       50 GETIMPORT                        R5 K4 [tostring]
       52 CALL                             R5 1 1
       53 CALL                             R4 1 0
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R5 R1 K5 ["CustomHeight"]
       57 GETTABLEKS                       R5 R5 K13 ["Min"]
       59 CALL                             R4 1 1
       60 GETTABLEKS                       R4 R4 K2 ["toBe"]
       62 MOVE                             R5 R3
       63 CALL                             R4 1 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R5 R0 K7 ["lowerRangeInput"]
       68 CALL                             R4 1 1
       69 GETTABLEKS                       R4 R4 K14 ["never"]
       71 GETTABLEKS                       R4 R4 K15 ["toBeDefined"]
       73 CALL                             R4 0 0
       74 GETUPVAL                         R4 0
       75 GETTABLEKS                       R5 R1 K5 ["CustomHeight"]
       77 GETTABLEKS                       R5 R5 K13 ["Min"]
       79 CALL                             R4 1 1
       80 GETTABLEKS                       R4 R4 K2 ["toBe"]
       82 MOVE                             R5 R2
       83 CALL                             R4 1 0
       84 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["screen"]
        3 JUMPIFNOTEQKS                    R1 K1 ["CustomParts"] ; [+13]
        5 GETTABLEKS                       R3 R0 K2 ["mouseClickOverInstance"]
        7 GETTABLEKS                       R4 R2 K3 ["getByText"]
        9 LOADK                            R5 K4 ["AppearanceSectionCustomPartsButtonText"]
       10 DUPTABLE                         R6 K6 [{"exact"}]
       11 LOADB                            R7 0
       12 SETTABLEKS                       R7 R6 K5 ["exact"]
       14 CALL                             R4 2 -1
       15 CALL                             R3 -1 0
       16 JUMP                             ; [+11]
       17 GETTABLEKS                       R3 R0 K2 ["mouseClickOverInstance"]
       19 GETTABLEKS                       R4 R2 K3 ["getByText"]
       21 LOADK                            R5 K7 ["AppearanceSectionCustomBodyButtonText"]
       22 DUPTABLE                         R6 K6 [{"exact"}]
       23 LOADB                            R7 0
       24 SETTABLEKS                       R7 R6 K5 ["exact"]
       26 CALL                             R4 2 -1
       27 CALL                             R3 -1 0
       28 GETTABLEKS                       R3 R0 K8 ["updateStylingServiceUnitTestOnly"]
       30 CALL                             R3 0 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["querySliderComponentFrom"]
        2 GETTABLEKS                       R5 R0 K1 ["queryTitledComponentByText"]
        4 MOVE                             R6 R1
        5 CALL                             R5 1 -1
        6 CALL                             R4 -1 1
        7 FASTCALL2K                       ASSERT R4 K2 ; [+5]
        9 MOVE                             R6 R4
       10 LOADK                            R7 K2 ["SliderComponent not found"]
       11 GETIMPORT                        R5 K4 [assert]
       13 CALL                             R5 2 0
       14 GETTABLEKS                       R6 R4 K5 ["upperRangeInput"]
       16 LOADK                            R8 K6 ["TextBox"]
       17 NAMECALL                         R6 R6 K7 ["IsA"]
       19 CALL                             R6 2 1
       20 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       22 LOADK                            R7 K8 ["UpperRangeInput not found"]
       23 GETIMPORT                        R5 K4 [assert]
       25 CALL                             R5 2 0
       26 GETTABLEKS                       R6 R4 K9 ["lowerRangeInput"]
       28 JUMPIFNOT                        R6 ; [+6]
       29 GETTABLEKS                       R6 R4 K9 ["lowerRangeInput"]
       31 LOADK                            R8 K6 ["TextBox"]
       32 NAMECALL                         R6 R6 K7 ["IsA"]
       34 CALL                             R6 2 1
       35 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       37 LOADK                            R7 K10 ["LowerRangeInput not found"]
       38 GETIMPORT                        R5 K4 [assert]
       40 CALL                             R5 2 0
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R6 R4 K9 ["lowerRangeInput"]
       44 GETTABLEKS                       R6 R6 K11 ["Text"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R5 R5 K12 ["toBe"]
       49 MOVE                             R6 R2
       50 CALL                             R5 1 0
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R6 R4 K5 ["upperRangeInput"]
       54 GETTABLEKS                       R6 R6 K11 ["Text"]
       56 CALL                             R5 1 1
       57 GETTABLEKS                       R5 R5 K12 ["toBe"]
       59 MOVE                             R6 R3
       60 CALL                             R5 1 0
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R6 R4 K13 ["minMaxToggle"]
       64 CALL                             R5 1 1
       65 GETTABLEKS                       R5 R5 K14 ["never"]
       67 GETTABLEKS                       R5 R5 K15 ["toBeDefined"]
       69 CALL                             R5 0 0
       70 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Dev"]
       22 GETTABLEKS                       R3 R3 K9 ["ReactTestingLibrary"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Src"]
       29 GETTABLEKS                       R4 R4 K11 ["tests"]
       31 GETTABLEKS                       R4 R4 K12 ["Util"]
       33 GETTABLEKS                       R4 R4 K13 ["setup"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R1 K14 ["expect"]
       38 NEWTABLE                         R5 4 0
       40 DUPCLOSURE                       R6 K15 [PROTO_0]
       41 CAPTURE                          VAL R4
       42 SETTABLEKS                       R6 R5 K16 ["checkSliderInputsAndBodyRulesCustomHeightToBe"]
       44 DUPCLOSURE                       R6 K17 [PROTO_1]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R6 R5 K18 ["selectAppearanceMode"]
       48 DUPCLOSURE                       R6 K19 [PROTO_2]
       49 CAPTURE                          VAL R4
       50 SETTABLEKS                       R6 R5 K20 ["querySliderAndCheckValues"]
       52 RETURN                           R5 1
