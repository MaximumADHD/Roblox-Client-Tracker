PROTO_0:
        0 GETIMPORT                        R0 K2 [math.random]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["MAX_SEED_VALUE"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 1
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["useState"]
       13 DUPCLOSURE                       R6 K2 [PROTO_0]
       14 CAPTURE                          UPVAL U1
       15 CALL                             R5 1 2
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K0 ["useState"]
       19 GETIMPORT                        R8 K5 [CFrame.new]
       21 CALL                             R8 0 -1
       22 CALL                             R7 -1 2
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K0 ["useState"]
       26 LOADB                            R10 1
       27 CALL                             R9 1 2
       28 GETUPVAL                         R11 0
       29 GETTABLEKS                       R11 R11 K0 ["useState"]
       31 LOADB                            R12 0
       32 CALL                             R11 1 2
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R13 R13 K0 ["useState"]
       36 LOADB                            R14 1
       37 CALL                             R13 1 2
       38 GETUPVAL                         R15 0
       39 GETTABLEKS                       R15 R15 K0 ["useState"]
       41 LOADB                            R16 1
       42 CALL                             R15 1 2
       43 GETUPVAL                         R17 0
       44 GETTABLEKS                       R17 R17 K0 ["useState"]
       46 LOADK                            R18 K1 [""]
       47 CALL                             R17 1 2
       48 GETUPVAL                         R19 0
       49 GETTABLEKS                       R19 R19 K0 ["useState"]
       51 LOADK                            R20 K6 [0.5]
       52 CALL                             R19 1 2
       53 GETUPVAL                         R21 0
       54 GETTABLEKS                       R21 R21 K0 ["useState"]
       56 LOADB                            R22 0
       57 CALL                             R21 1 2
       58 GETUPVAL                         R23 0
       59 GETTABLEKS                       R23 R23 K0 ["useState"]
       61 NEWTABLE                         R24 0 0
       63 CALL                             R23 1 2
       64 DUPTABLE                         R25 K31 [{"promptText", "randomizeSeed", "seed", "rotation", "smartUVUnwrap", "promptMasking", "validRotation", "validSeed", "artStyle", "strength", "artStyleExpanded", "optionsExpanded", "setPromptText", "setRandomizeSeed", "setSeed", "setRotation", "setSmartUVUnwrap", "setPromptMasking", "setValidRotation", "setValidSeed", "setArtStyle", "setStrength", "setArtStyleExpanded", "setOptionsExpanded"}]
       65 SETTABLEKS                       R1 R25 K7 ["promptText"]
       67 SETTABLEKS                       R3 R25 K8 ["randomizeSeed"]
       69 SETTABLEKS                       R5 R25 K9 ["seed"]
       71 SETTABLEKS                       R7 R25 K10 ["rotation"]
       73 SETTABLEKS                       R9 R25 K11 ["smartUVUnwrap"]
       75 SETTABLEKS                       R11 R25 K12 ["promptMasking"]
       77 SETTABLEKS                       R13 R25 K13 ["validRotation"]
       79 SETTABLEKS                       R15 R25 K14 ["validSeed"]
       81 SETTABLEKS                       R17 R25 K15 ["artStyle"]
       83 SETTABLEKS                       R19 R25 K16 ["strength"]
       85 SETTABLEKS                       R21 R25 K17 ["artStyleExpanded"]
       87 SETTABLEKS                       R23 R25 K18 ["optionsExpanded"]
       89 SETTABLEKS                       R2 R25 K19 ["setPromptText"]
       91 SETTABLEKS                       R4 R25 K20 ["setRandomizeSeed"]
       93 SETTABLEKS                       R6 R25 K21 ["setSeed"]
       95 SETTABLEKS                       R8 R25 K22 ["setRotation"]
       97 SETTABLEKS                       R10 R25 K23 ["setSmartUVUnwrap"]
       99 SETTABLEKS                       R12 R25 K24 ["setPromptMasking"]
      101 SETTABLEKS                       R14 R25 K25 ["setValidRotation"]
      103 SETTABLEKS                       R16 R25 K26 ["setValidSeed"]
      105 SETTABLEKS                       R18 R25 K27 ["setArtStyle"]
      107 SETTABLEKS                       R20 R25 K28 ["setStrength"]
      109 SETTABLEKS                       R22 R25 K29 ["setArtStyleExpanded"]
      111 SETTABLEKS                       R24 R25 K30 ["setOptionsExpanded"]
      113 GETUPVAL                         R26 0
      114 GETTABLEKS                       R26 R26 K32 ["createElement"]
      116 GETUPVAL                         R27 2
      117 GETTABLEKS                       R27 R27 K33 ["Provider"]
      119 DUPTABLE                         R28 K35 [{"value"}]
      120 SETTABLEKS                       R25 R28 K34 ["value"]
      122 GETTABLEKS                       R29 R0 K36 ["children"]
      124 CALL                             R26 3 -1
      125 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["OptionsContext"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K11 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 RETURN                           R4 1
