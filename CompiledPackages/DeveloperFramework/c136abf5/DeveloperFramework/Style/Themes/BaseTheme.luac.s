PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETTABLEKS                       R6 R5 K2 ["style"]
        7 JUMPIFNOT                        R6 ; [+29]
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R10 R5 K3 ["name"]
       11 GETTABLE                         R8 R9 R10
       12 JUMPIFNOTEQKNIL                  R8 ; [+2]
       14 LOADB                            R7 0 +1
       15 LOADB                            R7 1
       16 LOADK                            R8 K4 ["No Symbol was found for the component %s"]
       17 GETTABLEKS                       R10 R5 K3 ["name"]
       19 NAMECALL                         R8 R8 K5 ["format"]
       21 CALL                             R8 2 -1
       22 FASTCALL                         ASSERT ; [+2]
       23 GETIMPORT                        R6 K7 [assert]
       25 CALL                             R6 -1 0
       26 GETIMPORT                        R6 K9 [require]
       28 GETTABLEKS                       R7 R5 K2 ["style"]
       30 CALL                             R6 1 1
       31 GETUPVAL                         R7 1
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R10 R5 K3 ["name"]
       35 GETTABLE                         R8 R9 R10
       36 SETTABLE                         R6 R7 R8
       37 FORGLOOP                         R1 2 ; [-33]
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Style"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["UI"]
       13 GETTABLEKS                       R2 R2 K8 ["Components"]
       15 GETTABLEKS                       R2 R2 K9 ["UIFolderData"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R0 K2 ["Style"]
       22 GETTABLEKS                       R3 R3 K10 ["ComponentSymbols"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["Style"]
       29 GETTABLEKS                       R4 R4 K11 ["StyleKey"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K18 [{["BorderColor"], ["Color"], ["Font"], ["TextColor"], ["TextSize"] = 18}]
       33 GETTABLEKS                       R5 R3 K19 ["Border"]
       35 SETTABLEKS                       R5 R4 K12 ["BorderColor"]
       37 GETTABLEKS                       R5 R3 K20 ["MainBackground"]
       39 SETTABLEKS                       R5 R4 K13 ["Color"]
       41 GETIMPORT                        R5 K23 [Enum.Font.SourceSans]
       43 SETTABLEKS                       R5 R4 K14 ["Font"]
       45 GETTABLEKS                       R5 R3 K24 ["MainText"]
       47 SETTABLEKS                       R5 R4 K15 ["TextColor"]
       49 DUPCLOSURE                       R5 K25 [PROTO_0]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 MOVE                             R6 R5
       53 MOVE                             R7 R1
       54 CALL                             R6 1 0
       55 RETURN                           R4 1
