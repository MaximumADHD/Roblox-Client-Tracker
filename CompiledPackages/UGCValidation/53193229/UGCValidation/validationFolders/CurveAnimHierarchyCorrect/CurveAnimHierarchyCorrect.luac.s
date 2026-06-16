PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimations"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 NAMECALL                         R8 R6 K1 ["GetDescendants"]
        7 CALL                             R8 1 1
        8 LENGTH                           R7 R8
        9 GETUPVAL                         R8 0
       10 CALL                             R8 0 1
       11 JUMPIFNOTLT                      R8 R7 ; [+26]
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R10 R10 K2 ["Keys"]
       16 GETTABLEKS                       R10 R10 K3 ["CurveAnim_TooManyDescendants"]
       18 DUPTABLE                         R11 K6 [{"count", "maxAllowed"}]
       19 FASTCALL1                        TOSTRING R7 ; [+3]
       20 MOVE                             R13 R7
       21 GETIMPORT                        R12 K8 [tostring]
       23 CALL                             R12 1 1
       24 SETTABLEKS                       R12 R11 K4 ["count"]
       26 GETUPVAL                         R13 0
       27 CALL                             R13 0 -1
       28 FASTCALL                         TOSTRING ; [+2]
       29 GETIMPORT                        R12 K8 [tostring]
       31 CALL                             R12 -1 1
       32 SETTABLEKS                       R12 R11 K5 ["maxAllowed"]
       34 NAMECALL                         R8 R0 K9 ["fail"]
       36 CALL                             R8 3 0
       37 RETURN                           R0 0
       38 LOADN                            R8 0
       39 NAMECALL                         R9 R6 K10 ["GetChildren"]
       41 CALL                             R9 1 3
       42 FORGPREP                         R9
       43 LOADK                            R16 K11 ["Folder"]
       44 NAMECALL                         R14 R13 K12 ["IsA"]
       46 CALL                             R14 2 1
       47 JUMPIFNOT                        R14 ; [+20]
       48 GETUPVAL                         R14 2
       49 GETTABLEKS                       R14 R14 K13 ["isBodyPartFolderNameValid"]
       51 GETTABLEKS                       R15 R13 K14 ["Name"]
       53 CALL                             R14 1 1
       54 JUMPIFNOT                        R14 ; [+13]
       55 ADDK                             R8 R8 K15 [1]
       56 LOADN                            R14 1
       57 JUMPIFNOTLT                      R14 R8 ; [+10]
       59 GETUPVAL                         R16 1
       60 GETTABLEKS                       R16 R16 K2 ["Keys"]
       62 GETTABLEKS                       R16 R16 K16 ["CurveAnim_MultipleBodyRoots"]
       64 NAMECALL                         R14 R0 K9 ["fail"]
       66 CALL                             R14 2 0
       67 RETURN                           R0 0
       68 FORGLOOP                         R9 2 ; [-26]
       70 GETUPVAL                         R9 3
       71 CALL                             R9 0 1
       72 JUMPIFNOT                        R9 ; [+11]
       73 JUMPIFNOTEQKN                    R8 K17 [0] ; [+10]
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R11 R11 K2 ["Keys"]
       78 GETTABLEKS                       R11 R11 K18 ["CurveAnim_NoBodyRoot"]
       80 NAMECALL                         R9 R0 K9 ["fail"]
       82 CALL                             R9 2 0
       83 RETURN                           R0 0
       84 NAMECALL                         R9 R6 K10 ["GetChildren"]
       86 CALL                             R9 1 3
       87 FORGPREP                         R9
       88 LOADK                            R16 K19 ["MarkerCurve"]
       89 NAMECALL                         R14 R13 K12 ["IsA"]
       91 CALL                             R14 2 1
       92 JUMPIF                           R14 ; [+5]
       93 LOADK                            R16 K20 ["AnimationRigData"]
       94 NAMECALL                         R14 R13 K12 ["IsA"]
       96 CALL                             R14 2 1
       97 JUMPIFNOT                        R14 ; [+20]
       98 GETUPVAL                         R14 3
       99 CALL                             R14 0 1
      100 JUMPIFNOT                        R14 ; [+111]
      101 NAMECALL                         R15 R13 K10 ["GetChildren"]
      103 CALL                             R15 1 1
      104 LENGTH                           R14 R15
      105 LOADN                            R15 0
      106 JUMPIFNOTLT                      R15 R14 ; [+105]
      108 GETUPVAL                         R16 1
      109 GETTABLEKS                       R16 R16 K2 ["Keys"]
      111 GETTABLEKS                       R16 R16 K21 ["CurveAnim_ChildrenOnMarkerOrRig"]
      113 NAMECALL                         R14 R0 K9 ["fail"]
      115 CALL                             R14 2 0
      116 RETURN                           R0 0
      117 JUMP                             ; [+94]
      118 LOADK                            R16 K11 ["Folder"]
      119 NAMECALL                         R14 R13 K12 ["IsA"]
      121 CALL                             R14 2 1
      122 JUMPIFNOT                        R14 ; [+75]
      123 GETUPVAL                         R14 3
      124 CALL                             R14 0 1
      125 JUMPIFNOT                        R14 ; [+48]
      126 GETUPVAL                         R14 2
      127 GETTABLEKS                       R14 R14 K13 ["isBodyPartFolderNameValid"]
      129 GETTABLEKS                       R15 R13 K14 ["Name"]
      131 CALL                             R14 1 1
      132 JUMPIF                           R14 ; [+17]
      133 GETUPVAL                         R14 4
      134 CALL                             R14 0 1
      135 JUMPIF                           R14 ; [+14]
      136 GETUPVAL                         R16 1
      137 GETTABLEKS                       R16 R16 K2 ["Keys"]
      139 GETTABLEKS                       R16 R16 K22 ["CurveAnim_UnexpectedChild"]
      141 DUPTABLE                         R17 K24 [{"childName"}]
      142 GETTABLEKS                       R18 R13 K14 ["Name"]
      144 SETTABLEKS                       R18 R17 K23 ["childName"]
      146 NAMECALL                         R14 R0 K9 ["fail"]
      148 CALL                             R14 3 0
      149 RETURN                           R0 0
      150 GETUPVAL                         R14 4
      151 CALL                             R14 0 1
      152 JUMPIF                           R14 ; [+59]
      153 GETUPVAL                         R14 2
      154 GETTABLEKS                       R14 R14 K25 ["validateCurveAnimationBodyPartFolder"]
      156 MOVE                             R15 R13
      157 CALL                             R14 1 1
      158 JUMPIF                           R14 ; [+53]
      159 GETUPVAL                         R16 1
      160 GETTABLEKS                       R16 R16 K2 ["Keys"]
      162 GETTABLEKS                       R16 R16 K26 ["CurveAnim_InvalidBodyPartHierarchy"]
      164 DUPTABLE                         R17 K28 [{"folderName"}]
      165 GETTABLEKS                       R18 R13 K14 ["Name"]
      167 SETTABLEKS                       R18 R17 K27 ["folderName"]
      169 NAMECALL                         R14 R0 K9 ["fail"]
      171 CALL                             R14 3 0
      172 RETURN                           R0 0
      173 JUMP                             ; [+38]
      174 GETUPVAL                         R14 4
      175 CALL                             R14 0 1
      176 JUMPIF                           R14 ; [+35]
      177 GETUPVAL                         R14 2
      178 GETTABLEKS                       R14 R14 K25 ["validateCurveAnimationBodyPartFolder"]
      180 MOVE                             R15 R13
      181 CALL                             R14 1 1
      182 JUMPIF                           R14 ; [+29]
      183 GETUPVAL                         R16 1
      184 GETTABLEKS                       R16 R16 K2 ["Keys"]
      186 GETTABLEKS                       R16 R16 K26 ["CurveAnim_InvalidBodyPartHierarchy"]
      188 DUPTABLE                         R17 K28 [{"folderName"}]
      189 GETTABLEKS                       R18 R13 K14 ["Name"]
      191 SETTABLEKS                       R18 R17 K27 ["folderName"]
      193 NAMECALL                         R14 R0 K9 ["fail"]
      195 CALL                             R14 3 0
      196 RETURN                           R0 0
      197 JUMP                             ; [+14]
      198 GETUPVAL                         R16 1
      199 GETTABLEKS                       R16 R16 K2 ["Keys"]
      201 GETTABLEKS                       R16 R16 K22 ["CurveAnim_UnexpectedChild"]
      203 DUPTABLE                         R17 K24 [{"childName"}]
      204 GETTABLEKS                       R18 R13 K14 ["Name"]
      206 SETTABLEKS                       R18 R17 K23 ["childName"]
      208 NAMECALL                         R14 R0 K9 ["fail"]
      210 CALL                             R14 3 0
      211 RETURN                           R0 0
      212 FORGLOOP                         R9 2 ; [-125]
      214 FORGLOOP                         R2 2 ; [-210]
      216 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R5 K10 ["CurveAnimationHierarchyUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K11 ["flags"]
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateMigrateCurveAnim"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K11 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidateDuplicatesInAnimation"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K11 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidateMaxTotalInstances"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K11 ["flags"]
       62 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidationAnimationPackSupport"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K11 ["flags"]
       69 GETTABLEKS                       R10 R10 K16 ["getFFlagUGCValidateEmotesBonesAllowed"]
       71 CALL                             R9 1 1
       72 NEWTABLE                         R10 8 0
       74 NEWTABLE                         R11 0 1
       76 GETTABLEKS                       R12 R2 K17 ["UploadCategory"]
       78 GETTABLEKS                       R12 R12 K18 ["EMOTE_ANIMATION"]
       80 SETLIST                          R11 R12 1 [1]
       82 SETTABLEKS                       R11 R10 K19 ["categories"]
       84 MOVE                             R11 R8
       85 CALL                             R11 0 1
       86 JUMPIFNOT                        R11 ; [+11]
       87 GETTABLEKS                       R12 R10 K19 ["categories"]
       89 GETTABLEKS                       R13 R2 K17 ["UploadCategory"]
       91 GETTABLEKS                       R13 R13 K20 ["ANIMATION"]
       93 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
       95 GETIMPORT                        R11 K23 [table.insert]
       97 CALL                             R11 2 0
       98 NEWTABLE                         R11 0 1
      100 GETTABLEKS                       R12 R2 K24 ["SharedDataMember"]
      102 GETTABLEKS                       R12 R12 K25 ["curveAnimations"]
      104 SETLIST                          R11 R12 1 [1]
      106 SETTABLEKS                       R11 R10 K26 ["requiredData"]
      108 SETTABLEKS                       R5 R10 K27 ["fflag"]
      110 NEWTABLE                         R11 0 0
      112 SETTABLEKS                       R11 R10 K28 ["expectedFailures"]
      114 NEWTABLE                         R11 0 1
      116 GETTABLEKS                       R12 R2 K29 ["ValidationModule"]
      118 GETTABLEKS                       R12 R12 K30 ["CurveAnimDataAvailable"]
      120 SETLIST                          R11 R12 1 [1]
      122 SETTABLEKS                       R11 R10 K31 ["prereqTests"]
      124 DUPCLOSURE                       R11 K32 [PROTO_0]
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R9
      130 SETTABLEKS                       R11 R10 K33 ["run"]
      132 RETURN                           R10 1
