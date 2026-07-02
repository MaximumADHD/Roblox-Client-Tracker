PROTO_0:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 30
        2 JUMPIFNOTLT                      R2 R1 ; [+3]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 GETIMPORT                        R2 K2 [string.match]
        8 MOVE                             R3 R0
        9 LOADK                            R4 K3 ["^[0-9]+$"]
       10 CALL                             R2 2 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimations"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 NAMECALL                         R7 R6 K1 ["GetChildren"]
        7 CALL                             R7 1 3
        8 FORGPREP                         R7
        9 NAMECALL                         R12 R11 K2 ["GetDescendants"]
       11 CALL                             R12 1 1
       12 FASTCALL2                        TABLE_INSERT R12 R11 ; [+5]
       14 MOVE                             R14 R12
       15 MOVE                             R15 R11
       16 GETIMPORT                        R13 K5 [table.insert]
       18 CALL                             R13 2 0
       19 NEWTABLE                         R13 0 0
       21 MOVE                             R14 R12
       22 LOADNIL                          R15
       23 LOADNIL                          R16
       24 FORGPREP                         R14
       25 GETUPVAL                         R20 0
       26 MOVE                             R22 R18
       27 NAMECALL                         R20 R20 K6 ["GetTags"]
       29 CALL                             R20 2 1
       30 LENGTH                           R19 R20
       31 LOADN                            R20 0
       32 JUMPIFNOTLT                      R20 R19 ; [+9]
       34 MOVE                             R20 R13
       35 NAMECALL                         R21 R18 K7 ["GetFullName"]
       37 CALL                             R21 1 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R19 K5 [table.insert]
       41 CALL                             R19 -1 0
       42 FORGLOOP                         R14 2 ; [-18]
       44 LENGTH                           R14 R13
       45 LOADN                            R15 0
       46 JUMPIFNOTLT                      R15 R14 ; [+18]
       48 GETUPVAL                         R16 1
       49 GETTABLEKS                       R16 R16 K8 ["Keys"]
       51 GETTABLEKS                       R16 R16 K9 ["InstanceTagsFound"]
       53 DUPTABLE                         R17 K11 [{"ProblematicDescendantPaths"}]
       54 GETIMPORT                        R18 K13 [table.concat]
       56 MOVE                             R19 R13
       57 LOADK                            R20 K14 [", "]
       58 CALL                             R18 2 1
       59 SETTABLEKS                       R18 R17 K10 ["ProblematicDescendantPaths"]
       61 NAMECALL                         R14 R0 K15 ["fail"]
       63 CALL                             R14 3 0
       64 RETURN                           R0 0
       65 FORGLOOP                         R7 2 ; [-57]
       67 GETUPVAL                         R7 0
       68 MOVE                             R9 R6
       69 NAMECALL                         R7 R7 K6 ["GetTags"]
       71 CALL                             R7 2 1
       72 LENGTH                           R8 R7
       73 LOADN                            R9 0
       74 JUMPIFNOTLT                      R9 R8 ; [+31]
       76 LOADN                            R9 1
       77 JUMPIFLT                         R9 R8 ; [+19]
       79 GETTABLEN                        R10 R7 1
       80 LENGTH                           R11 R10
       81 LOADN                            R12 30
       82 JUMPIFNOTLT                      R12 R11 ; [+3]
       84 LOADB                            R9 0
       85 JUMP                             ; [+10]
       86 GETIMPORT                        R12 K18 [string.match]
       88 MOVE                             R13 R10
       89 LOADK                            R14 K19 ["^[0-9]+$"]
       90 CALL                             R12 2 1
       91 JUMPIFNOTEQKNIL                  R12 ; [+2]
       93 LOADB                            R11 0 +1
       94 LOADB                            R11 1
       95 MOVE                             R9 R11
       96 JUMPIF                           R9 ; [+9]
       97 GETUPVAL                         R11 1
       98 GETTABLEKS                       R11 R11 K8 ["Keys"]
      100 GETTABLEKS                       R11 R11 K20 ["CurveAnim_InvalidTags"]
      102 NAMECALL                         R9 R0 K15 ["fail"]
      104 CALL                             R9 2 0
      105 RETURN                           R0 0
      106 FORGLOOP                         R2 2 ; [-102]
      108 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["util"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K11 ["validationSystem"]
       26 GETTABLEKS                       R4 R4 K12 ["ValidationEnums"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K11 ["validationSystem"]
       33 GETTABLEKS                       R5 R5 K13 ["ErrorSourceStrings"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K14 ["flags"]
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagUGCValidateMigrateCurveAnim"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K14 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidationAnimationPackSupport"]
       49 CALL                             R6 1 1
       50 NEWTABLE                         R7 8 0
       52 NEWTABLE                         R8 0 1
       54 GETTABLEKS                       R9 R3 K17 ["UploadCategory"]
       56 GETTABLEKS                       R9 R9 K18 ["EMOTE_ANIMATION"]
       58 SETLIST                          R8 R9 1 [1]
       60 SETTABLEKS                       R8 R7 K19 ["categories"]
       62 MOVE                             R8 R6
       63 CALL                             R8 0 1
       64 JUMPIFNOT                        R8 ; [+11]
       65 GETTABLEKS                       R9 R7 K19 ["categories"]
       67 GETTABLEKS                       R10 R3 K17 ["UploadCategory"]
       69 GETTABLEKS                       R10 R10 K20 ["ANIMATION"]
       71 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       73 GETIMPORT                        R8 K23 [table.insert]
       75 CALL                             R8 2 0
       76 NEWTABLE                         R8 0 1
       78 GETTABLEKS                       R9 R3 K24 ["SharedDataMember"]
       80 GETTABLEKS                       R9 R9 K25 ["curveAnimations"]
       82 SETLIST                          R8 R9 1 [1]
       84 SETTABLEKS                       R8 R7 K26 ["requiredData"]
       86 SETTABLEKS                       R5 R7 K27 ["fflag"]
       88 NEWTABLE                         R8 0 0
       90 SETTABLEKS                       R8 R7 K28 ["expectedFailures"]
       92 NEWTABLE                         R8 0 1
       94 GETTABLEKS                       R9 R3 K29 ["ValidationModule"]
       96 GETTABLEKS                       R9 R9 K30 ["CurveAnimDataAvailable"]
       98 SETLIST                          R8 R9 1 [1]
      100 SETTABLEKS                       R8 R7 K31 ["prereqTests"]
      102 DUPCLOSURE                       R8 K32 [PROTO_0]
      103 DUPCLOSURE                       R9 K33 [PROTO_1]
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R4
      106 SETTABLEKS                       R9 R7 K34 ["run"]
      108 RETURN                           R7 1
