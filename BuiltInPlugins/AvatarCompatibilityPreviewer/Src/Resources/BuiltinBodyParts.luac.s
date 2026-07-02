MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 GETTABLEKS                       R3 R3 K10 ["getFFlagAvatarPreviewerReplaceBuiltinBodyParts"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 2 0
       25 NEWTABLE                         R4 0 9
       27 LOADK                            R5 K11 [10687288296]
       28 LOADK                            R6 K12 [10725626210]
       29 LOADK                            R7 K13 [11572085825]
       30 LOADK                            R8 K14 [11584333045]
       31 LOADK                            R9 K15 [9107287520]
       32 LOADK                            R10 K16 [4908014528]
       33 LOADK                            R11 K17 [11775683481]
       34 LOADK                            R12 K18 [10407915508]
       35 LOADK                            R13 K19 [13207192743]
       36 SETLIST                          R4 R5 9 [1]
       38 NEWTABLE                         R5 0 24
       40 LOADK                            R6 K20 [13682084865]
       41 LOADK                            R7 K21 [11163789916]
       42 LOADK                            R8 K22 [13820744684]
       43 LOADK                            R9 K23 [10725826963]
       44 LOADK                            R10 K11 [10687288296]
       45 LOADK                            R11 K12 [10725626210]
       46 LOADK                            R12 K24 [13490415688]
       47 LOADK                            R13 K25 [13479925381]
       48 LOADK                            R14 K26 [139835947319060]
       49 LOADK                            R15 K27 [11702291006]
       50 LOADK                            R16 K28 [11740063830]
       51 LOADK                            R17 K29 [11714044513]
       52 LOADK                            R18 K13 [11572085825]
       53 LOADK                            R19 K30 [11715265417]
       54 LOADK                            R20 K31 [12853000475]
       55 LOADK                            R21 K14 [11584333045]
       56 SETLIST                          R5 R6 16 [1]
       58 LOADK                            R6 K32 [11317454381]
       59 LOADK                            R7 K33 [11254193498]
       60 LOADK                            R8 K34 [108140862598253]
       61 LOADK                            R9 K35 [12724232885]
       62 LOADK                            R10 K15 [9107287520]
       63 LOADK                            R11 K16 [4908014528]
       64 LOADK                            R12 K17 [11775683481]
       65 LOADK                            R13 K18 [10407915508]
       66 SETLIST                          R5 R6 8 [17]
       68 DUPTABLE                         R6 K46 [{["Torso"] = 116488623753864, ["LeftArm"] = 133986177057036, ["RightArm"] = 101158810738872, ["LeftLeg"] = 78536356632840, ["RightLeg"] = 129290873866258}]
       69 NEWTABLE                         R7 0 6
       71 DUPTABLE                         R8 K52 [{["Torso"] = 10610645439, ["LeftArm"] = 10610637502, ["RightArm"] = 10610642340, ["LeftLeg"] = 10610640030, ["RightLeg"] = 10610643939}]
       72 DUPTABLE                         R9 K58 [{["Torso"] = 11572083496, ["LeftArm"] = 11572074613, ["RightArm"] = 11572079320, ["LeftLeg"] = 11572076845, ["RightLeg"] = 11572081357}]
       73 DUPTABLE                         R10 K64 [{["Torso"] = 11740060397, ["LeftArm"] = 11740050465, ["RightArm"] = 11740055375, ["LeftLeg"] = 11740052832, ["RightLeg"] = 11740057815}]
       74 DUPTABLE                         R11 K70 [{["Torso"] = 11775682187, ["LeftArm"] = 11775676733, ["RightArm"] = 11775679683, ["LeftLeg"] = 11775678171, ["RightLeg"] = 11775680970}]
       75 DUPTABLE                         R12 K76 [{["Torso"] = 7200824885, ["LeftArm"] = 7200822331, ["RightArm"] = 7200823471, ["LeftLeg"] = 7200822888, ["RightLeg"] = 7200824015}]
       76 DUPTABLE                         R13 K82 [{["Torso"] = 13207187481, ["LeftArm"] = 13207165801, ["RightArm"] = 13207181458, ["LeftLeg"] = 13207168831, ["RightLeg"] = 13207184265}]
       77 SETLIST                          R7 R8 6 [1]
       79 NEWTABLE                         R8 0 16
       81 DUPTABLE                         R9 K88 [{["Torso"] = 13490413139, ["LeftArm"] = 13490404457, ["RightArm"] = 13490409014, ["LeftLeg"] = 13490406444, ["RightLeg"] = 13490411021}]
       82 DUPTABLE                         R10 K94 [{["Torso"] = 13479923313, ["LeftArm"] = 13479913091, ["RightArm"] = 13479919352, ["LeftLeg"] = 13479916783, ["RightLeg"] = 13479921373}]
       83 DUPTABLE                         R11 K100 [{["Torso"] = 113518345769072, ["LeftArm"] = 83377686242799, ["RightArm"] = 117733298730179, ["LeftLeg"] = 76021575176814, ["RightLeg"] = 139704754106917}]
       84 DUPTABLE                         R12 K106 [{["Torso"] = 11702287641, ["LeftArm"] = 11702279057, ["RightArm"] = 11702284438, ["LeftLeg"] = 11702282072, ["RightLeg"] = 11702286099}]
       85 DUPTABLE                         R13 K64 [{["Torso"] = 11740060397, ["LeftArm"] = 11740050465, ["RightArm"] = 11740055375, ["LeftLeg"] = 11740052832, ["RightLeg"] = 11740057815}]
       86 DUPTABLE                         R14 K112 [{["Torso"] = 11714041015, ["LeftArm"] = 11714033534, ["RightArm"] = 11714037276, ["LeftLeg"] = 11714035598, ["RightLeg"] = 11714039415}]
       87 DUPTABLE                         R15 K58 [{["Torso"] = 11572083496, ["LeftArm"] = 11572074613, ["RightArm"] = 11572079320, ["LeftLeg"] = 11572076845, ["RightLeg"] = 11572081357}]
       88 DUPTABLE                         R16 K118 [{["Torso"] = 11715264057, ["LeftArm"] = 11715257112, ["RightArm"] = 11715260558, ["LeftLeg"] = 11715258659, ["RightLeg"] = 11715262273}]
       89 DUPTABLE                         R17 K124 [{["Torso"] = 3963485362, ["LeftArm"] = 3963476651, ["RightArm"] = 3963481369, ["LeftLeg"] = 3963479563, ["RightLeg"] = 3963483107}]
       90 DUPTABLE                         R18 K130 [{["Torso"] = 11584241181, ["LeftArm"] = 11584231502, ["RightArm"] = 11584238141, ["LeftLeg"] = 11584235843, ["RightLeg"] = 11584239464}]
       91 DUPTABLE                         R19 K136 [{["Torso"] = 7198457558, ["LeftArm"] = 7198453654, ["RightArm"] = 7198455404, ["LeftLeg"] = 7198454372, ["RightLeg"] = 7198456660}]
       92 DUPTABLE                         R20 K142 [{["Torso"] = 7200830734, ["LeftArm"] = 7200828041, ["RightArm"] = 7200829517, ["LeftLeg"] = 7200828755, ["RightLeg"] = 7200830218}]
       93 DUPTABLE                         R21 K148 [{["Torso"] = 2739557383, ["LeftArm"] = 2739553403, ["RightArm"] = 2739555394, ["LeftLeg"] = 2739765336, ["RightLeg"] = 2739556467}]
       94 DUPTABLE                         R22 K154 [{["Torso"] = 4381823417, ["LeftArm"] = 4381815211, ["RightArm"] = 4381819685, ["LeftLeg"] = 4381817635, ["RightLeg"] = 4381821661}]
       95 DUPTABLE                         R23 K70 [{["Torso"] = 11775682187, ["LeftArm"] = 11775676733, ["RightArm"] = 11775679683, ["LeftLeg"] = 11775678171, ["RightLeg"] = 11775680970}]
       96 DUPTABLE                         R24 K76 [{["Torso"] = 7200824885, ["LeftArm"] = 7200822331, ["RightArm"] = 7200823471, ["LeftLeg"] = 7200822888, ["RightLeg"] = 7200824015}]
       97 SETLIST                          R8 R9 16 [1]
       99 GETTABLEKS                       R9 R1 K155 ["List"]
      101 GETTABLEKS                       R9 R9 K156 ["join"]
      103 NEWTABLE                         R10 0 1
      105 LOADK                            R11 K157 [72510165520892]
      106 SETLIST                          R10 R11 1 [1]
      108 MOVE                             R12 R2
      109 CALL                             R12 0 1
      110 JUMPIFNOT                        R12 ; [+2]
      111 MOVE                             R11 R5
      112 JUMP                             ; [+1]
      113 MOVE                             R11 R4
      114 CALL                             R9 2 1
      115 SETTABLEKS                       R9 R3 K158 ["heads"]
      117 GETTABLEKS                       R9 R1 K155 ["List"]
      119 GETTABLEKS                       R9 R9 K156 ["join"]
      121 NEWTABLE                         R10 0 1
      123 MOVE                             R11 R6
      124 SETLIST                          R10 R11 1 [1]
      126 MOVE                             R12 R2
      127 CALL                             R12 0 1
      128 JUMPIFNOT                        R12 ; [+2]
      129 MOVE                             R11 R8
      130 JUMP                             ; [+1]
      131 MOVE                             R11 R7
      132 CALL                             R9 2 1
      133 SETTABLEKS                       R9 R3 K159 ["bodies"]
      135 RETURN                           R3 1
