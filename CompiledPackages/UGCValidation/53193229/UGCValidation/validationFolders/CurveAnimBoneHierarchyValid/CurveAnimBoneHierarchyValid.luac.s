PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isBoneFolderName"]
        3 GETTABLEKS                       R3 R0 K1 ["Name"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+91]
        7 NEWTABLE                         R2 0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["getChildBoneNames"]
       12 GETTABLEKS                       R4 R0 K1 ["Name"]
       14 CALL                             R3 1 1
       15 MOVE                             R4 R3
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 DUPTABLE                         R11 K4 [{"ClassName", "Name"}]
       20 LOADK                            R12 K5 ["Folder"]
       21 SETTABLEKS                       R12 R11 K3 ["ClassName"]
       23 SETTABLEKS                       R8 R11 K1 ["Name"]
       25 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       27 MOVE                             R10 R2
       28 GETIMPORT                        R9 K8 [table.insert]
       30 CALL                             R9 2 0
       31 FORGLOOP                         R4 2 ; [-13]
       33 LOADB                            R4 0
       34 LENGTH                           R5 R3
       35 JUMPIFNOTEQKN                    R5 K9 [1] ; [+19]
       37 GETTABLEN                        R5 R3 1
       38 NAMECALL                         R6 R0 K10 ["GetChildren"]
       40 CALL                             R6 1 3
       41 FORGPREP                         R6
       42 LOADK                            R13 K5 ["Folder"]
       43 NAMECALL                         R11 R10 K11 ["IsA"]
       45 CALL                             R11 2 1
       46 JUMPIFNOT                        R11 ; [+6]
       47 GETTABLEKS                       R11 R10 K1 ["Name"]
       49 JUMPIFNOTEQ                      R11 R5 ; [+3]
       51 LOADB                            R4 1
       52 JUMP                             ; [+2]
       53 FORGLOOP                         R6 2 ; [-12]
       55 JUMPIF                           R4 ; [+15]
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R5 R5 K12 ["calculateAcceptableChildBodyPartFolders"]
       59 MOVE                             R6 R1
       60 CALL                             R5 1 3
       61 FORGPREP                         R5
       62 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       64 MOVE                             R11 R2
       65 MOVE                             R12 R9
       66 GETIMPORT                        R10 K8 [table.insert]
       68 CALL                             R10 2 0
       69 FORGLOOP                         R5 2 ; [-8]
       71 DUPTABLE                         R7 K4 [{"ClassName", "Name"}]
       72 LOADK                            R8 K13 ["Vector3Curve"]
       73 SETTABLEKS                       R8 R7 K3 ["ClassName"]
       75 LOADK                            R8 K14 ["Position"]
       76 SETTABLEKS                       R8 R7 K1 ["Name"]
       78 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       80 MOVE                             R6 R2
       81 GETIMPORT                        R5 K8 [table.insert]
       83 CALL                             R5 2 0
       84 DUPTABLE                         R7 K4 [{"ClassName", "Name"}]
       85 LOADK                            R8 K15 ["EulerRotationCurve"]
       86 SETTABLEKS                       R8 R7 K3 ["ClassName"]
       88 LOADK                            R8 K16 ["Rotation"]
       89 SETTABLEKS                       R8 R7 K1 ["Name"]
       91 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       93 MOVE                             R6 R2
       94 GETIMPORT                        R5 K8 [table.insert]
       96 CALL                             R5 2 0
       97 RETURN                           R2 1
       98 GETUPVAL                         R2 1
       99 GETTABLEKS                       R2 R2 K12 ["calculateAcceptableChildBodyPartFolders"]
      101 GETTABLEKS                       R3 R0 K1 ["Name"]
      103 CALL                             R2 1 1
      104 GETUPVAL                         R3 0
      105 GETTABLEKS                       R3 R3 K17 ["getRootBoneNamesForBodyPart"]
      107 GETTABLEKS                       R4 R0 K1 ["Name"]
      109 CALL                             R3 1 3
      110 FORGPREP                         R3
      111 DUPTABLE                         R10 K4 [{"ClassName", "Name"}]
      112 LOADK                            R11 K5 ["Folder"]
      113 SETTABLEKS                       R11 R10 K3 ["ClassName"]
      115 SETTABLEKS                       R7 R10 K1 ["Name"]
      117 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      119 MOVE                             R9 R2
      120 GETIMPORT                        R8 K8 [table.insert]
      122 CALL                             R8 2 0
      123 FORGLOOP                         R3 2 ; [-13]
      125 GETTABLEKS                       R3 R0 K1 ["Name"]
      127 GETUPVAL                         R4 1
      128 GETTABLEKS                       R4 R4 K18 ["humanoidRootPartName"]
      130 JUMPIFNOTEQ                      R3 R4 ; [+2]
      132 RETURN                           R2 1
      133 DUPTABLE                         R5 K4 [{"ClassName", "Name"}]
      134 LOADK                            R6 K13 ["Vector3Curve"]
      135 SETTABLEKS                       R6 R5 K3 ["ClassName"]
      137 LOADK                            R6 K14 ["Position"]
      138 SETTABLEKS                       R6 R5 K1 ["Name"]
      140 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      142 MOVE                             R4 R2
      143 GETIMPORT                        R3 K8 [table.insert]
      145 CALL                             R3 2 0
      146 DUPTABLE                         R5 K4 [{"ClassName", "Name"}]
      147 LOADK                            R6 K15 ["EulerRotationCurve"]
      148 SETTABLEKS                       R6 R5 K3 ["ClassName"]
      150 LOADK                            R6 K16 ["Rotation"]
      151 SETTABLEKS                       R6 R5 K1 ["Name"]
      153 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      155 MOVE                             R4 R2
      156 GETIMPORT                        R3 K8 [table.insert]
      158 CALL                             R3 2 0
      159 GETTABLEKS                       R3 R0 K1 ["Name"]
      161 JUMPIFNOTEQKS                    R3 K19 ["Head"] ; [+16]
      163 DUPTABLE                         R5 K4 [{"ClassName", "Name"}]
      164 LOADK                            R6 K5 ["Folder"]
      165 SETTABLEKS                       R6 R5 K3 ["ClassName"]
      167 GETUPVAL                         R6 1
      168 GETTABLEKS                       R6 R6 K20 ["FaceControlsName"]
      170 SETTABLEKS                       R6 R5 K1 ["Name"]
      172 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      174 MOVE                             R4 R2
      175 GETIMPORT                        R3 K8 [table.insert]
      177 CALL                             R3 2 0
      178 RETURN                           R2 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 NAMECALL                         R2 R0 K0 ["GetChildren"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 LOADB                            R7 0
        8 MOVE                             R8 R1
        9 LOADNIL                          R9
       10 LOADNIL                          R10
       11 FORGPREP                         R8
       12 GETTABLEKS                       R13 R12 K1 ["ClassName"]
       14 GETTABLEKS                       R14 R6 K1 ["ClassName"]
       16 JUMPIFNOTEQ                      R13 R14 ; [+14]
       18 GETTABLEKS                       R13 R12 K2 ["Name"]
       20 GETTABLEKS                       R14 R6 K2 ["Name"]
       22 JUMPIFNOTEQ                      R13 R14 ; [+8]
       24 GETIMPORT                        R13 K5 [table.remove]
       26 MOVE                             R14 R1
       27 MOVE                             R15 R11
       28 CALL                             R13 2 0
       29 LOADB                            R7 1
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R8 2 ; [-20]
       33 JUMPIF                           R7 ; [+10]
       34 LOADK                            R9 K6 ["unexpected %* '%*'"]
       35 GETTABLEKS                       R11 R6 K1 ["ClassName"]
       37 GETTABLEKS                       R12 R6 K2 ["Name"]
       39 NAMECALL                         R9 R9 K7 ["format"]
       41 CALL                             R9 3 1
       42 MOVE                             R8 R9
       43 RETURN                           R8 1
       44 FORGLOOP                         R2 2 ; [-38]
       46 LOADNIL                          R2
       47 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 MOVE                             R6 R3
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R4 ; [+8]
        9 LOADK                            R6 K0 ["%* under '%*'"]
       10 MOVE                             R8 R4
       11 MOVE                             R9 R1
       12 NAMECALL                         R6 R6 K1 ["format"]
       14 CALL                             R6 3 1
       15 MOVE                             R5 R6
       16 RETURN                           R5 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K2 ["calculateAcceptableCurveChildrenArray"]
       20 CALL                             R5 0 1
       21 LOADK                            R8 K3 ["Position"]
       22 NAMECALL                         R6 R0 K4 ["FindFirstChild"]
       24 CALL                             R6 2 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K5 ["areChildrenAcceptable"]
       28 MOVE                             R8 R6
       29 MOVE                             R9 R5
       30 CALL                             R7 2 1
       31 JUMPIF                           R7 ; [+7]
       32 LOADK                            R8 K6 ["unexpected child under '%*/Position'"]
       33 MOVE                             R10 R1
       34 NAMECALL                         R8 R8 K1 ["format"]
       36 CALL                             R8 2 1
       37 MOVE                             R7 R8
       38 RETURN                           R7 1
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K2 ["calculateAcceptableCurveChildrenArray"]
       42 CALL                             R7 0 1
       43 MOVE                             R5 R7
       44 LOADK                            R9 K7 ["Rotation"]
       45 NAMECALL                         R7 R0 K4 ["FindFirstChild"]
       47 CALL                             R7 2 1
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K5 ["areChildrenAcceptable"]
       51 MOVE                             R9 R7
       52 MOVE                             R10 R5
       53 CALL                             R8 2 1
       54 JUMPIF                           R8 ; [+7]
       55 LOADK                            R9 K8 ["unexpected child under '%*/Rotation'"]
       56 MOVE                             R11 R1
       57 NAMECALL                         R9 R9 K1 ["format"]
       59 CALL                             R9 2 1
       60 MOVE                             R8 R9
       61 RETURN                           R8 1
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R10 R10 K9 ["FaceControlsName"]
       65 NAMECALL                         R8 R0 K4 ["FindFirstChild"]
       67 CALL                             R8 2 1
       68 JUMPIFNOT                        R8 ; [+41]
       69 NAMECALL                         R9 R8 K10 ["GetChildren"]
       71 CALL                             R9 1 1
       72 GETUPVAL                         R10 3
       73 CALL                             R10 0 1
       74 JUMPIFNOT                        R10 ; [+13]
       75 LENGTH                           R10 R9
       76 GETUPVAL                         R11 4
       77 CALL                             R11 0 1
       78 JUMPIFNOTLT                      R11 R10 ; [+9]
       80 LOADK                            R11 K11 ["FaceControls under '%*' exceeds max count (%*)"]
       81 MOVE                             R13 R1
       82 LENGTH                           R14 R9
       83 NAMECALL                         R11 R11 K1 ["format"]
       85 CALL                             R11 3 1
       86 MOVE                             R10 R11
       87 RETURN                           R10 1
       88 MOVE                             R10 R9
       89 LOADNIL                          R11
       90 LOADNIL                          R12
       91 FORGPREP                         R10
       92 LOADK                            R17 K12 ["FloatCurve"]
       93 NAMECALL                         R15 R14 K13 ["IsA"]
       95 CALL                             R15 2 1
       96 JUMPIF                           R15 ; [+11]
       97 LOADK                            R16 K14 ["unexpected %* '%*' under '%*/FaceControls'"]
       98 GETTABLEKS                       R18 R14 K15 ["ClassName"]
      100 GETTABLEKS                       R19 R14 K16 ["Name"]
      102 MOVE                             R20 R1
      103 NAMECALL                         R16 R16 K1 ["format"]
      105 CALL                             R16 4 1
      106 MOVE                             R15 R16
      107 RETURN                           R15 1
      108 FORGLOOP                         R10 2 ; [-17]
      110 GETUPVAL                         R9 2
      111 GETTABLEKS                       R9 R9 K17 ["containsGrandChildren"]
      113 MOVE                             R10 R6
      114 CALL                             R9 1 1
      115 JUMPIFNOT                        R9 ; [+7]
      116 LOADK                            R10 K18 ["'%*/Position' contains unexpected grandchildren"]
      117 MOVE                             R12 R1
      118 NAMECALL                         R10 R10 K1 ["format"]
      120 CALL                             R10 2 1
      121 MOVE                             R9 R10
      122 RETURN                           R9 1
      123 GETUPVAL                         R9 2
      124 GETTABLEKS                       R9 R9 K17 ["containsGrandChildren"]
      126 MOVE                             R10 R7
      127 CALL                             R9 1 1
      128 JUMPIFNOT                        R9 ; [+7]
      129 LOADK                            R10 K19 ["'%*/Rotation' contains unexpected grandchildren"]
      130 MOVE                             R12 R1
      131 NAMECALL                         R10 R10 K1 ["format"]
      133 CALL                             R10 2 1
      134 MOVE                             R9 R10
      135 RETURN                           R9 1
      136 GETUPVAL                         R9 2
      137 GETTABLEKS                       R9 R9 K17 ["containsGrandChildren"]
      139 MOVE                             R10 R8
      140 CALL                             R9 1 1
      141 JUMPIFNOT                        R9 ; [+7]
      142 LOADK                            R10 K20 ["'%*/FaceControls' contains unexpected grandchildren"]
      143 MOVE                             R12 R1
      144 NAMECALL                         R10 R10 K1 ["format"]
      146 CALL                             R10 2 1
      147 MOVE                             R9 R10
      148 RETURN                           R9 1
      149 LOADNIL                          R9
      150 RETURN                           R9 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 CALL                             R4 3 1
        5 JUMPIFNOT                        R4 ; [+16]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R7 R7 K0 ["Keys"]
        9 GETTABLEKS                       R7 R7 K1 ["CurveAnim_InvalidBodyPartHierarchyDetail"]
       11 DUPTABLE                         R8 K4 [{"folderName", "detail"}]
       12 GETTABLEKS                       R9 R0 K5 ["Name"]
       14 SETTABLEKS                       R9 R8 K2 ["folderName"]
       16 SETTABLEKS                       R4 R8 K3 ["detail"]
       18 NAMECALL                         R5 R3 K6 ["fail"]
       20 CALL                             R5 3 0
       21 RETURN                           R0 0
       22 NAMECALL                         R5 R0 K7 ["GetChildren"]
       24 CALL                             R5 1 3
       25 FORGPREP                         R5
       26 LOADK                            R12 K8 ["Folder"]
       27 NAMECALL                         R10 R9 K9 ["IsA"]
       29 CALL                             R10 2 1
       30 JUMPIFNOT                        R10 ; [+31]
       31 GETTABLEKS                       R10 R9 K5 ["Name"]
       33 GETUPVAL                         R11 2
       34 GETTABLEKS                       R11 R11 K10 ["FaceControlsName"]
       36 JUMPIFEQ                         R10 R11 ; [+25]
       38 GETUPVAL                         R11 3
       39 GETTABLEKS                       R11 R11 K11 ["isBoneFolderName"]
       41 GETTABLEKS                       R12 R9 K5 ["Name"]
       43 CALL                             R11 1 1
       44 JUMPIFNOT                        R11 ; [+2]
       45 MOVE                             R10 R2
       46 JUMP                             ; [+2]
       47 GETTABLEKS                       R10 R9 K5 ["Name"]
       49 GETUPVAL                         R11 4
       50 MOVE                             R12 R9
       51 LOADK                            R14 K12 ["%*/%*"]
       52 MOVE                             R16 R1
       53 GETTABLEKS                       R17 R9 K5 ["Name"]
       55 NAMECALL                         R14 R14 K13 ["format"]
       57 CALL                             R14 3 1
       58 MOVE                             R13 R14
       59 MOVE                             R14 R10
       60 MOVE                             R15 R3
       61 CALL                             R11 4 0
       62 FORGLOOP                         R5 2 ; [-37]
       64 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimations"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 NEWTABLE                         R7 0 0
        7 GETUPVAL                         R8 0
        8 CALL                             R8 0 1
        9 JUMPIFNOT                        R8 ; [+14]
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R8 R8 K1 ["getBodyPartFolderRoot"]
       13 MOVE                             R9 R6
       14 CALL                             R8 1 1
       15 JUMPIFNOT                        R8 ; [+33]
       16 FASTCALL2                        TABLE_INSERT R7 R8 ; [+5]
       18 MOVE                             R10 R7
       19 MOVE                             R11 R8
       20 GETIMPORT                        R9 K4 [table.insert]
       22 CALL                             R9 2 0
       23 JUMP                             ; [+25]
       24 NAMECALL                         R8 R6 K5 ["GetChildren"]
       26 CALL                             R8 1 3
       27 FORGPREP                         R8
       28 LOADK                            R15 K6 ["Folder"]
       29 NAMECALL                         R13 R12 K7 ["IsA"]
       31 CALL                             R13 2 1
       32 JUMPIFNOT                        R13 ; [+14]
       33 GETUPVAL                         R13 1
       34 GETTABLEKS                       R13 R13 K8 ["isBodyPartFolderNameValid"]
       36 GETTABLEKS                       R14 R12 K9 ["Name"]
       38 CALL                             R13 1 1
       39 JUMPIFNOT                        R13 ; [+7]
       40 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       42 MOVE                             R14 R7
       43 MOVE                             R15 R12
       44 GETIMPORT                        R13 K4 [table.insert]
       46 CALL                             R13 2 0
       47 FORGLOOP                         R8 2 ; [-20]
       49 MOVE                             R8 R7
       50 LOADNIL                          R9
       51 LOADNIL                          R10
       52 FORGPREP                         R8
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R13 R13 K8 ["isBodyPartFolderNameValid"]
       56 GETTABLEKS                       R14 R12 K9 ["Name"]
       58 CALL                             R13 1 1
       59 JUMPIFNOT                        R13 ; [+8]
       60 GETUPVAL                         R13 2
       61 MOVE                             R14 R12
       62 GETTABLEKS                       R15 R12 K9 ["Name"]
       64 GETTABLEKS                       R16 R12 K9 ["Name"]
       66 MOVE                             R17 R0
       67 CALL                             R13 4 0
       68 FORGLOOP                         R8 2 ; [-16]
       70 FORGLOOP                         R2 2 ; [-66]
       72 RETURN                           R0 0

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
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["CurveAnimBoneHierarchyUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K12 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidateEmotesBonesAllowed"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K12 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidateDuplicatesInAnimation"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K12 ["flags"]
       62 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidateRestrictNumFaceControls"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K12 ["flags"]
       69 GETTABLEKS                       R10 R10 K16 ["getFIntUGCValidateMaxTotalFaceControls"]
       71 CALL                             R9 1 1
       72 NEWTABLE                         R10 8 0
       74 NEWTABLE                         R11 0 1
       76 GETTABLEKS                       R12 R2 K17 ["UploadCategory"]
       78 GETTABLEKS                       R12 R12 K18 ["EMOTE_ANIMATION"]
       80 SETLIST                          R11 R12 1 [1]
       82 SETTABLEKS                       R11 R10 K19 ["categories"]
       84 NEWTABLE                         R11 0 1
       86 GETTABLEKS                       R12 R2 K20 ["SharedDataMember"]
       88 GETTABLEKS                       R12 R12 K21 ["curveAnimations"]
       90 SETLIST                          R11 R12 1 [1]
       92 SETTABLEKS                       R11 R10 K22 ["requiredData"]
       94 NEWTABLE                         R11 0 1
       96 GETTABLEKS                       R12 R2 K20 ["SharedDataMember"]
       98 GETTABLEKS                       R12 R12 K23 ["curveAnimBoneData"]
      100 SETLIST                          R11 R12 1 [1]
      102 SETTABLEKS                       R11 R10 K24 ["conditionalData"]
      104 SETTABLEKS                       R6 R10 K25 ["fflag"]
      106 NEWTABLE                         R11 0 0
      108 SETTABLEKS                       R11 R10 K26 ["expectedFailures"]
      110 NEWTABLE                         R11 0 1
      112 GETTABLEKS                       R12 R2 K27 ["ValidationModule"]
      114 GETTABLEKS                       R12 R12 K28 ["CurveAnimDataAvailable"]
      116 SETLIST                          R11 R12 1 [1]
      118 SETTABLEKS                       R11 R10 K29 ["prereqTests"]
      120 DUPCLOSURE                       R11 K30 [PROTO_0]
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R4
      123 DUPCLOSURE                       R12 K31 [PROTO_1]
      124 DUPCLOSURE                       R13 K32 [PROTO_2]
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R9
      130 DUPCLOSURE                       R14 K33 [PROTO_3]
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R14
      136 DUPCLOSURE                       R15 K34 [PROTO_4]
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R14
      140 SETTABLEKS                       R15 R10 K35 ["run"]
      142 RETURN                           R10 1
