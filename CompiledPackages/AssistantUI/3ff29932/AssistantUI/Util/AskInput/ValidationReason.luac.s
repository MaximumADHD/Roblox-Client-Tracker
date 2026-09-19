PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+2]
        7 RETURN                           R0 1
        8 JUMPIFNOT                        R0 ; [+9]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R3 R0 K3 ["namespace"]
       12 GETTABLEKS                       R4 R0 K4 ["key"]
       14 NAMECALL                         R1 R1 K5 ["getText"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getRowPresentation"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["resolveText"]
        9 GETTABLEKS                       R5 R2 K2 ["label"]
       11 CALL                             R4 1 1
       12 OR                               R3 R4 R1
       13 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Any"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["describer/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 NEWTABLE                         R2 0 0
       17 GETTABLEKS                       R3 R0 K5 ["rules"]
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 GETUPVAL                         R8 1
       23 MOVE                             R9 R7
       24 MOVE                             R10 R1
       25 CALL                             R8 2 1
       26 JUMPIFEQKNIL                     R8 ; [+8]
       28 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       30 MOVE                             R10 R2
       31 MOVE                             R11 R8
       32 GETIMPORT                        R9 K8 [table.insert]
       34 CALL                             R9 2 0
       35 FORGLOOP                         R3 2 ; [-14]
       37 LENGTH                           R3 R2
       38 JUMPIFNOTEQKN                    R3 K9 [0] ; [+3]
       40 LOADNIL                          R3
       41 RETURN                           R3 1
       42 GETUPVAL                         R3 2
       43 LOADK                            R5 K10 ["AskInput"]
       44 LOADK                            R6 K11 ["RequirementAny"]
       45 DUPTABLE                         R7 K13 [{"reasons"}]
       46 GETIMPORT                        R8 K15 [table.concat]
       48 MOVE                             R9 R2
       49 LOADK                            R10 K16 ["; "]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K12 ["reasons"]
       53 NAMECALL                         R3 R3 K17 ["getText"]
       55 CALL                             R3 4 -1
       56 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Equals"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["describer/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K5 ["AskInput"]
       17 LOADK                            R5 K6 ["RequirementEquals"]
       18 DUPTABLE                         R6 K9 [{"field", "value"}]
       19 GETTABLEKS                       R8 R0 K7 ["field"]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K10 ["getRowPresentation"]
       24 MOVE                             R10 R1
       25 MOVE                             R11 R8
       26 CALL                             R9 2 1
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R10 R10 K11 ["resolveText"]
       30 GETTABLEKS                       R11 R9 K12 ["label"]
       32 CALL                             R10 1 1
       33 OR                               R7 R10 R8
       34 SETTABLEKS                       R7 R6 K7 ["field"]
       36 GETTABLEKS                       R8 R0 K8 ["value"]
       38 FASTCALL1                        TOSTRING R8 ; [+2]
       39 GETIMPORT                        R7 K14 [tostring]
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R7 R6 K8 ["value"]
       44 NAMECALL                         R2 R2 K15 ["getText"]
       46 CALL                             R2 4 -1
       47 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Not"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["describer/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R3 R0 K5 ["rule"]
       18 MOVE                             R4 R1
       19 CALL                             R2 2 1
       20 JUMPIFNOTEQKNIL                  R2 ; [+3]
       22 LOADNIL                          R3
       23 RETURN                           R3 1
       24 GETUPVAL                         R3 2
       25 LOADK                            R5 K6 ["AskInput"]
       26 LOADK                            R6 K7 ["RequirementNot"]
       27 DUPTABLE                         R7 K9 [{"reason"}]
       28 SETTABLEKS                       R2 R7 K8 ["reason"]
       30 NAMECALL                         R3 R3 K10 ["getText"]
       32 CALL                             R3 4 -1
       33 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["NonEmpty"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["describer/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K5 ["AskInput"]
       17 LOADK                            R5 K6 ["RequirementPresent"]
       18 DUPTABLE                         R6 K8 [{"field"}]
       19 GETTABLEKS                       R8 R0 K7 ["field"]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K9 ["getRowPresentation"]
       24 MOVE                             R10 R1
       25 MOVE                             R11 R8
       26 CALL                             R9 2 1
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R10 R10 K10 ["resolveText"]
       30 GETTABLEKS                       R11 R9 K11 ["label"]
       32 CALL                             R10 1 1
       33 OR                               R7 R10 R8
       34 SETTABLEKS                       R7 R6 K7 ["field"]
       36 NAMECALL                         R2 R2 K12 ["getText"]
       38 CALL                             R2 4 -1
       39 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Exists"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["describer/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K5 ["AskInput"]
       17 LOADK                            R5 K6 ["RequirementPresent"]
       18 DUPTABLE                         R6 K8 [{"field"}]
       19 GETTABLEKS                       R8 R0 K7 ["field"]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K9 ["getRowPresentation"]
       24 MOVE                             R10 R1
       25 MOVE                             R11 R8
       26 CALL                             R9 2 1
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R10 R10 K10 ["resolveText"]
       30 GETTABLEKS                       R11 R9 K11 ["label"]
       32 CALL                             R10 1 1
       33 OR                               R7 R10 R8
       34 SETTABLEKS                       R7 R6 K7 ["field"]
       36 NAMECALL                         R2 R2 K12 ["getText"]
       38 CALL                             R2 4 -1
       39 RETURN                           R2 -1

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Range"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["describer/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R3 R0 K5 ["field"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K6 ["getRowPresentation"]
       20 MOVE                             R5 R1
       21 MOVE                             R6 R3
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K7 ["resolveText"]
       26 GETTABLEKS                       R6 R4 K8 ["label"]
       28 CALL                             R5 1 1
       29 OR                               R2 R5 R3
       30 GETTABLEKS                       R3 R0 K9 ["min"]
       32 JUMPIFEQKNIL                     R3 ; [+23]
       34 GETTABLEKS                       R3 R0 K10 ["max"]
       36 JUMPIFEQKNIL                     R3 ; [+19]
       38 GETUPVAL                         R3 3
       39 LOADK                            R5 K11 ["AskInput"]
       40 LOADK                            R6 K12 ["RequirementRange"]
       41 DUPTABLE                         R7 K13 [{"field", "min", "max"}]
       42 SETTABLEKS                       R2 R7 K5 ["field"]
       44 GETTABLEKS                       R8 R0 K9 ["min"]
       46 SETTABLEKS                       R8 R7 K9 ["min"]
       48 GETTABLEKS                       R8 R0 K10 ["max"]
       50 SETTABLEKS                       R8 R7 K10 ["max"]
       52 NAMECALL                         R3 R3 K14 ["getText"]
       54 CALL                             R3 4 -1
       55 RETURN                           R3 -1
       56 GETTABLEKS                       R3 R0 K9 ["min"]
       58 JUMPIFEQKNIL                     R3 ; [+15]
       60 GETUPVAL                         R3 3
       61 LOADK                            R5 K11 ["AskInput"]
       62 LOADK                            R6 K15 ["RequirementRangeMin"]
       63 DUPTABLE                         R7 K16 [{"field", "min"}]
       64 SETTABLEKS                       R2 R7 K5 ["field"]
       66 GETTABLEKS                       R8 R0 K9 ["min"]
       68 SETTABLEKS                       R8 R7 K9 ["min"]
       70 NAMECALL                         R3 R3 K14 ["getText"]
       72 CALL                             R3 4 -1
       73 RETURN                           R3 -1
       74 GETTABLEKS                       R3 R0 K10 ["max"]
       76 JUMPIFEQKNIL                     R3 ; [+15]
       78 GETUPVAL                         R3 3
       79 LOADK                            R5 K11 ["AskInput"]
       80 LOADK                            R6 K17 ["RequirementRangeMax"]
       81 DUPTABLE                         R7 K18 [{"field", "max"}]
       82 SETTABLEKS                       R2 R7 K5 ["field"]
       84 GETTABLEKS                       R8 R0 K10 ["max"]
       86 SETTABLEKS                       R8 R7 K10 ["max"]
       88 NAMECALL                         R3 R3 K14 ["getText"]
       90 CALL                             R3 4 -1
       91 RETURN                           R3 -1
       92 LOADNIL                          R3
       93 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["kind"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["NonEmpty"]
        5 JUMPIFEQ                         R3 R4 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       11 LOADK                            R3 K2 ["accessor/kind mismatch"]
       12 GETIMPORT                        R1 K4 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K5 ["field"]
       17 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["kind"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Exists"]
        5 JUMPIFEQ                         R3 R4 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       11 LOADK                            R3 K2 ["accessor/kind mismatch"]
       12 GETIMPORT                        R1 K4 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K5 ["field"]
       17 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["kind"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Equals"]
        5 JUMPIFEQ                         R3 R4 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       11 LOADK                            R3 K2 ["accessor/kind mismatch"]
       12 GETIMPORT                        R1 K4 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K5 ["field"]
       17 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["kind"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Range"]
        5 JUMPIFEQ                         R3 R4 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       11 LOADK                            R3 K2 ["accessor/kind mismatch"]
       12 GETIMPORT                        R1 K4 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K5 ["field"]
       17 RETURN                           R1 1

PROTO_12:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K0 ["kind"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFEQKNIL                     R2 ; [+18]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["getRowPresentation"]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 MOVE                             R6 R0
       16 CALL                             R5 1 -1
       17 CALL                             R3 -1 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K2 ["resolveText"]
       21 GETTABLEKS                       R5 R3 K3 ["requirementMessage"]
       23 CALL                             R4 1 1
       24 JUMPIFEQKNIL                     R4 ; [+2]
       26 RETURN                           R4 1
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R5 R0 K0 ["kind"]
       30 GETTABLE                         R3 R4 R5
       31 JUMPIFEQKNIL                     R3 ; [+8]
       33 MOVE                             R4 R3
       34 MOVE                             R5 R0
       35 MOVE                             R6 R1
       36 CALL                             R4 2 1
       37 JUMPIFEQKNIL                     R4 ; [+2]
       39 RETURN                           R4 1
       40 GETUPVAL                         R4 4
       41 LOADK                            R6 K4 ["AskInput"]
       42 LOADK                            R7 K5 ["Requirement"]
       43 DUPTABLE                         R8 K6 [{"kind"}]
       44 GETTABLEKS                       R9 R0 K0 ["kind"]
       46 SETTABLEKS                       R9 R8 K0 ["kind"]
       48 NAMECALL                         R4 R4 K7 ["getText"]
       50 CALL                             R4 4 -1
       51 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Util"]
       13 GETTABLEKS                       R3 R3 K7 ["AskInput"]
       15 GETTABLEKS                       R3 R3 K8 ["AskInputTypes"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K6 ["Util"]
       22 GETTABLEKS                       R4 R4 K9 ["SlashCommandConfiguration"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K10 ["Resources"]
       29 GETTABLEKS                       R5 R5 K11 ["Localization"]
       31 GETTABLEKS                       R5 R5 K12 ["Translator"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R2 K13 ["RULE_KIND"]
       36 LOADNIL                          R6
       37 DUPCLOSURE                       R7 K14 [PROTO_0]
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R7 R0 K15 ["resolveText"]
       41 DUPCLOSURE                       R7 K16 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R8 8 0
       46 GETTABLEKS                       R9 R5 K17 ["Any"]
       48 NEWCLOSURE                       R10 P2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          REF R6
       51 CAPTURE                          VAL R4
       52 SETTABLE                         R10 R8 R9
       53 GETTABLEKS                       R9 R5 K18 ["Equals"]
       55 DUPCLOSURE                       R10 K19 [PROTO_3]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R0
       60 SETTABLE                         R10 R8 R9
       61 GETTABLEKS                       R9 R5 K20 ["Not"]
       63 NEWCLOSURE                       R10 P4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          REF R6
       66 CAPTURE                          VAL R4
       67 SETTABLE                         R10 R8 R9
       68 GETTABLEKS                       R9 R5 K21 ["NonEmpty"]
       70 DUPCLOSURE                       R10 K22 [PROTO_5]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R0
       75 SETTABLE                         R10 R8 R9
       76 GETTABLEKS                       R9 R5 K23 ["Exists"]
       78 DUPCLOSURE                       R10 K24 [PROTO_6]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R0
       83 SETTABLE                         R10 R8 R9
       84 GETTABLEKS                       R9 R5 K25 ["Range"]
       86 DUPCLOSURE                       R10 K26 [PROTO_7]
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R4
       91 SETTABLE                         R10 R8 R9
       92 NEWTABLE                         R9 4 0
       94 GETTABLEKS                       R10 R5 K21 ["NonEmpty"]
       96 DUPCLOSURE                       R11 K27 [PROTO_8]
       97 CAPTURE                          VAL R5
       98 SETTABLE                         R11 R9 R10
       99 GETTABLEKS                       R10 R5 K23 ["Exists"]
      101 DUPCLOSURE                       R11 K28 [PROTO_9]
      102 CAPTURE                          VAL R5
      103 SETTABLE                         R11 R9 R10
      104 GETTABLEKS                       R10 R5 K18 ["Equals"]
      106 DUPCLOSURE                       R11 K29 [PROTO_10]
      107 CAPTURE                          VAL R5
      108 SETTABLE                         R11 R9 R10
      109 GETTABLEKS                       R10 R5 K25 ["Range"]
      111 DUPCLOSURE                       R11 K30 [PROTO_11]
      112 CAPTURE                          VAL R5
      113 SETTABLE                         R11 R9 R10
      114 DUPCLOSURE                       R6 K31 [PROTO_12]
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R4
      120 SETTABLEKS                       R6 R0 K32 ["describeFailure"]
      122 CLOSEUPVALS                      R6
      123 RETURN                           R0 1
