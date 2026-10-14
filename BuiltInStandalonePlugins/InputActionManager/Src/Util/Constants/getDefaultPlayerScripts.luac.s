PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 0
        9 LOADK                            R6 K0 ["PlayerScripts"]
       10 NAMECALL                         R4 R4 K1 ["FindFirstChild"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 1
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+1]
       16 JUMPIF                           R4 ; [+10]
       17 DUPTABLE                         R5 K6 [{"contexts", "actions", "bindings", "contextOrder"}]
       18 SETTABLEKS                       R0 R5 K2 ["contexts"]
       20 SETTABLEKS                       R1 R5 K3 ["actions"]
       22 SETTABLEKS                       R2 R5 K4 ["bindings"]
       24 SETTABLEKS                       R3 R5 K5 ["contextOrder"]
       26 RETURN                           R5 1
       27 NAMECALL                         R5 R4 K7 ["GetChildren"]
       29 CALL                             R5 1 3
       30 FORGPREP                         R5
       31 LOADK                            R12 K8 ["InputContext"]
       32 NAMECALL                         R10 R9 K9 ["IsA"]
       34 CALL                             R10 2 1
       35 JUMPIFNOT                        R10 ; [+100]
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K10 ["serializeContext"]
       39 MOVE                             R11 R9
       40 CALL                             R10 1 1
       41 LOADB                            R11 1
       42 SETTABLEKS                       R11 R10 K11 ["defaultPlayerScript"]
       44 LOADK                            R11 K12 [""]
       45 SETTABLEKS                       R11 R10 K13 ["parentUuid"]
       47 NEWTABLE                         R11 0 0
       49 SETTABLEKS                       R11 R10 K3 ["actions"]
       51 GETTABLEKS                       R11 R10 K14 ["uuid"]
       53 SETTABLE                         R10 R0 R11
       54 GETTABLEKS                       R13 R10 K14 ["uuid"]
       56 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       58 MOVE                             R12 R3
       59 GETIMPORT                        R11 K17 [table.insert]
       61 CALL                             R11 2 0
       62 NAMECALL                         R11 R9 K7 ["GetChildren"]
       64 CALL                             R11 1 3
       65 FORGPREP                         R11
       66 LOADK                            R18 K18 ["InputAction"]
       67 NAMECALL                         R16 R15 K9 ["IsA"]
       69 CALL                             R16 2 1
       70 JUMPIFNOT                        R16 ; [+63]
       71 GETUPVAL                         R16 2
       72 GETTABLEKS                       R16 R16 K19 ["serializeAction"]
       74 MOVE                             R17 R15
       75 CALL                             R16 1 1
       76 LOADB                            R17 1
       77 SETTABLEKS                       R17 R16 K11 ["defaultPlayerScript"]
       79 GETTABLEKS                       R17 R10 K14 ["uuid"]
       81 SETTABLEKS                       R17 R16 K13 ["parentUuid"]
       83 NEWTABLE                         R17 0 0
       85 SETTABLEKS                       R17 R16 K4 ["bindings"]
       87 GETTABLEKS                       R17 R16 K14 ["uuid"]
       89 SETTABLE                         R16 R1 R17
       90 GETTABLEKS                       R18 R10 K3 ["actions"]
       92 GETTABLEKS                       R19 R16 K14 ["uuid"]
       94 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
       96 GETIMPORT                        R17 K17 [table.insert]
       98 CALL                             R17 2 0
       99 NAMECALL                         R17 R15 K7 ["GetChildren"]
      101 CALL                             R17 1 3
      102 FORGPREP                         R17
      103 LOADK                            R24 K20 ["InputBinding"]
      104 NAMECALL                         R22 R21 K9 ["IsA"]
      106 CALL                             R22 2 1
      107 JUMPIFNOT                        R22 ; [+24]
      108 GETUPVAL                         R22 2
      109 GETTABLEKS                       R22 R22 K21 ["serializeBinding"]
      111 MOVE                             R23 R21
      112 CALL                             R22 1 1
      113 LOADB                            R23 1
      114 SETTABLEKS                       R23 R22 K11 ["defaultPlayerScript"]
      116 GETTABLEKS                       R23 R16 K14 ["uuid"]
      118 SETTABLEKS                       R23 R22 K13 ["parentUuid"]
      120 GETTABLEKS                       R23 R22 K14 ["uuid"]
      122 SETTABLE                         R22 R2 R23
      123 GETTABLEKS                       R24 R16 K4 ["bindings"]
      125 GETTABLEKS                       R25 R22 K14 ["uuid"]
      127 FASTCALL2                        TABLE_INSERT R24 R25 ; [+3]
      129 GETIMPORT                        R23 K17 [table.insert]
      131 CALL                             R23 2 0
      132 FORGLOOP                         R17 2 ; [-30]
      134 FORGLOOP                         R11 2 ; [-69]
      136 FORGLOOP                         R5 2 ; [-106]
      138 DUPTABLE                         R5 K6 [{"contexts", "actions", "bindings", "contextOrder"}]
      139 SETTABLEKS                       R0 R5 K2 ["contexts"]
      141 SETTABLEKS                       R1 R5 K3 ["actions"]
      143 SETTABLEKS                       R2 R5 K4 ["bindings"]
      145 SETTABLEKS                       R3 R5 K5 ["contextOrder"]
      147 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["PropertyManager"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagIAMPlayerScripts"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_0]
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
