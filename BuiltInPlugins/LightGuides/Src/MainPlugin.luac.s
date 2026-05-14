PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 GETIMPORT                        R5 K2 [string.format]
        4 LOADK                            R6 K3 ["Light type %s needs to be associated with a corresponding wireframe"]
        5 MOVE                             R7 R0
        6 CALL                             R5 2 -1
        7 FASTCALL                         ASSERT ; [+2]
        8 GETIMPORT                        R3 K5 [assert]
       10 CALL                             R3 -1 0
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R3 R4 R0
       13 CALL                             R3 0 1
       14 MOVE                             R6 R2
       15 NAMECALL                         R4 R3 K6 ["setGuidesFolder"]
       17 CALL                             R4 2 0
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R3 K7 ["adorn"]
       21 CALL                             R4 2 0
       22 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["renderSelection"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K5 [{"_folder", "_wireframePools", "_wireframes", "_storedLightGuides", "_listener"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["LightGuides"]
        3 NAMECALL                         R1 R1 K7 ["FindFirstChild"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["_folder"]
        8 NEWTABLE                         R1 4 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K8 ["PointLight"]
       13 NEWTABLE                         R3 0 0
       15 SETTABLE                         R3 R1 R2
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K9 ["SpotLight"]
       19 NEWTABLE                         R3 0 0
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K10 ["SurfaceLight"]
       25 NEWTABLE                         R3 0 0
       27 SETTABLE                         R3 R1 R2
       28 SETTABLEKS                       R1 R0 K1 ["_wireframePools"]
       30 NEWTABLE                         R1 0 0
       32 SETTABLEKS                       R1 R0 K2 ["_wireframes"]
       34 LOADN                            R1 0
       35 SETTABLEKS                       R1 R0 K3 ["_storedLightGuides"]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K4 ["_listener"]
       40 GETTABLEKS                       R1 R0 K0 ["_folder"]
       42 JUMPIF                           R1 ; [+12]
       43 GETIMPORT                        R1 K13 [Instance.new]
       45 LOADK                            R2 K14 ["Folder"]
       46 CALL                             R1 1 1
       47 LOADK                            R2 K6 ["LightGuides"]
       48 SETTABLEKS                       R2 R1 K15 ["Name"]
       50 GETUPVAL                         R2 0
       51 SETTABLEKS                       R2 R1 K16 ["Parent"]
       53 SETTABLEKS                       R1 R0 K0 ["_folder"]
       55 GETUPVAL                         R3 2
       56 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       58 MOVE                             R2 R0
       59 GETIMPORT                        R1 K18 [setmetatable]
       61 CALL                             R1 2 0
       62 GETUPVAL                         R1 3
       63 GETTABLEKS                       R1 R1 K19 ["SelectionChangedThisFrame"]
       65 NEWCLOSURE                       R3 P0
       66 CAPTURE                          VAL R0
       67 NAMECALL                         R1 R1 K20 ["Connect"]
       69 CALL                             R1 2 1
       70 SETTABLEKS                       R1 R0 K4 ["_listener"]
       72 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [ipairs]
        6 GETUPVAL                         R4 0
        7 NAMECALL                         R4 R4 K2 ["Get"]
        9 CALL                             R4 1 -1
       10 CALL                             R3 -1 3
       11 FORGPREP_INEXT                   R3
       12 GETUPVAL                         R8 1
       13 MOVE                             R9 R7
       14 CALL                             R8 1 1
       15 JUMPIF                           R8 ; [+21]
       16 LOADK                            R10 K3 ["Light"]
       17 NAMECALL                         R8 R7 K4 ["IsA"]
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+16]
       21 GETTABLEKS                       R9 R0 K5 ["_wireframes"]
       23 GETTABLE                         R8 R9 R7
       24 JUMPIFNOT                        R8 ; [+9]
       25 GETTABLEKS                       R9 R0 K5 ["_wireframes"]
       27 GETTABLE                         R8 R9 R7
       28 SETTABLE                         R8 R1 R7
       29 GETTABLEKS                       R8 R0 K5 ["_wireframes"]
       31 LOADNIL                          R9
       32 SETTABLE                         R9 R8 R7
       33 JUMP                             ; [+3]
       34 GETTABLEKS                       R8 R7 K6 ["ClassName"]
       36 SETTABLE                         R8 R2 R7
       37 FORGLOOP                         R3 2 [inext] ; [-26]
       39 GETIMPORT                        R3 K8 [pairs]
       41 GETTABLEKS                       R4 R0 K5 ["_wireframes"]
       43 CALL                             R3 1 3
       44 FORGPREP_NEXT                    R3
       45 GETTABLEKS                       R8 R6 K6 ["ClassName"]
       47 GETTABLEKS                       R11 R0 K9 ["_wireframePools"]
       49 GETTABLE                         R10 R11 R8
       50 GETIMPORT                        R11 K12 [string.format]
       52 LOADK                            R12 K13 ["Light type %s needs to be associated with a corresponding wireframe"]
       53 MOVE                             R13 R8
       54 CALL                             R11 2 -1
       55 FASTCALL                         ASSERT ; [+2]
       56 GETIMPORT                        R9 K15 [assert]
       58 CALL                             R9 -1 0
       59 GETTABLEKS                       R11 R0 K9 ["_wireframePools"]
       61 GETTABLE                         R10 R11 R8
       62 NAMECALL                         R11 R7 K16 ["pool"]
       64 CALL                             R11 1 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R9 K19 [table.insert]
       68 CALL                             R9 -1 0
       69 GETTABLEKS                       R9 R0 K20 ["_storedLightGuides"]
       71 ADDK                             R9 R9 K21 [1]
       72 SETTABLEKS                       R9 R0 K20 ["_storedLightGuides"]
       74 GETTABLEKS                       R9 R0 K5 ["_wireframes"]
       76 LOADNIL                          R10
       77 SETTABLE                         R10 R9 R6
       78 FORGLOOP                         R3 2 ; [-34]
       80 GETIMPORT                        R3 K8 [pairs]
       82 MOVE                             R4 R2
       83 CALL                             R3 1 3
       84 FORGPREP_NEXT                    R3
       85 GETTABLEKS                       R10 R0 K9 ["_wireframePools"]
       87 GETTABLE                         R9 R10 R7
       88 LENGTH                           R8 R9
       89 LOADN                            R9 1
       90 JUMPIFNOTLE                      R9 R8 ; [+21]
       92 GETTABLEKS                       R11 R0 K9 ["_wireframePools"]
       94 GETTABLE                         R10 R11 R7
       95 GETTABLE                         R9 R10 R8
       96 MOVE                             R11 R6
       97 NAMECALL                         R9 R9 K22 ["adorn"]
       99 CALL                             R9 2 1
      100 SETTABLE                         R9 R1 R6
      101 GETTABLEKS                       R10 R0 K9 ["_wireframePools"]
      103 GETTABLE                         R9 R10 R7
      104 LOADNIL                          R10
      105 SETTABLE                         R10 R9 R8
      106 GETTABLEKS                       R9 R0 K20 ["_storedLightGuides"]
      108 SUBK                             R9 R9 K21 [1]
      109 SETTABLEKS                       R9 R0 K20 ["_storedLightGuides"]
      111 JUMP                             ; [+58]
      112 GETTABLEKS                       R11 R0 K5 ["_wireframes"]
      114 LENGTH                           R10 R11
      115 GETTABLEKS                       R11 R0 K20 ["_storedLightGuides"]
      117 ADD                              R9 R10 R11
      118 GETUPVAL                         R10 2
      119 GETTABLEKS                       R10 R10 K23 ["MAX_POOL_SIZE"]
      121 JUMPIFNOTLE                      R10 R9 ; [+22]
      123 GETIMPORT                        R9 K8 [pairs]
      125 GETTABLEKS                       R10 R0 K9 ["_wireframePools"]
      127 CALL                             R9 1 3
      128 FORGPREP_NEXT                    R9
      129 LENGTH                           R14 R13
      130 LOADN                            R15 0
      131 JUMPIFNOTLT                      R15 R14 ; [+10]
      133 LENGTH                           R15 R13
      134 GETTABLE                         R14 R13 R15
      135 NAMECALL                         R14 R14 K24 ["destroy"]
      137 CALL                             R14 1 0
      138 LENGTH                           R14 R13
      139 LOADNIL                          R15
      140 SETTABLE                         R15 R13 R14
      141 JUMP                             ; [+2]
      142 FORGLOOP                         R9 2 ; [-14]
      144 GETTABLEKS                       R10 R0 K25 ["_folder"]
      146 GETUPVAL                         R13 3
      147 GETTABLE                         R12 R13 R7
      148 GETIMPORT                        R13 K12 [string.format]
      150 LOADK                            R14 K13 ["Light type %s needs to be associated with a corresponding wireframe"]
      151 MOVE                             R15 R7
      152 CALL                             R13 2 -1
      153 FASTCALL                         ASSERT ; [+2]
      154 GETIMPORT                        R11 K15 [assert]
      156 CALL                             R11 -1 0
      157 GETUPVAL                         R12 3
      158 GETTABLE                         R11 R12 R7
      159 CALL                             R11 0 1
      160 MOVE                             R14 R10
      161 NAMECALL                         R12 R11 K26 ["setGuidesFolder"]
      163 CALL                             R12 2 0
      164 MOVE                             R14 R6
      165 NAMECALL                         R12 R11 K22 ["adorn"]
      167 CALL                             R12 2 0
      168 MOVE                             R9 R11
      169 SETTABLE                         R9 R1 R6
      170 GETTABLE                         R9 R1 R6
      171 NAMECALL                         R9 R9 K27 ["render"]
      173 CALL                             R9 1 0
      174 FORGLOOP                         R3 2 ; [-90]
      176 SETTABLEKS                       R1 R0 K5 ["_wireframes"]
      178 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_wireframePools"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 GETIMPORT                        R6 K1 [pairs]
        8 MOVE                             R7 R5
        9 CALL                             R6 1 3
       10 FORGPREP_NEXT                    R6
       11 NAMECALL                         R11 R10 K3 ["destroy"]
       13 CALL                             R11 1 0
       14 FORGLOOP                         R6 2 ; [-4]
       16 FORGLOOP                         R1 2 ; [-11]
       18 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_wireframes"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 NAMECALL                         R6 R5 K3 ["destroy"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["emptyWireframes"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["emptyPools"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_wireframes"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["_wireframePools"]
       12 GETTABLEKS                       R1 R0 K4 ["_folder"]
       14 NAMECALL                         R1 R1 K5 ["Destroy"]
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K6 ["_listener"]
       19 NAMECALL                         R1 R1 K7 ["Disconnect"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K5 ["Src"]
       16 GETTABLEKS                       R2 R2 K7 ["Utility"]
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R2 K8 ["Constants"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R2 K9 ["SphereWireframe"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R2 K10 ["ConeWireframe"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R2 K11 ["TrapezoidalPrismWireframe"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R8 R2 K12 ["isProtectedInstance"]
       42 CALL                             R7 1 1
       43 DUPTABLE                         R8 K16 [{"PointLight", "SpotLight", "SurfaceLight"}]
       44 LOADK                            R9 K13 ["PointLight"]
       45 SETTABLEKS                       R9 R8 K13 ["PointLight"]
       47 LOADK                            R9 K14 ["SpotLight"]
       48 SETTABLEKS                       R9 R8 K14 ["SpotLight"]
       50 LOADK                            R9 K15 ["SurfaceLight"]
       51 SETTABLEKS                       R9 R8 K15 ["SurfaceLight"]
       53 NEWTABLE                         R9 4 0
       55 GETTABLEKS                       R10 R8 K13 ["PointLight"]
       57 GETTABLEKS                       R11 R4 K17 ["new"]
       59 SETTABLE                         R11 R9 R10
       60 GETTABLEKS                       R10 R8 K14 ["SpotLight"]
       62 GETTABLEKS                       R11 R5 K17 ["new"]
       64 SETTABLE                         R11 R9 R10
       65 GETTABLEKS                       R10 R8 K15 ["SurfaceLight"]
       67 GETTABLEKS                       R11 R6 K17 ["new"]
       69 SETTABLE                         R11 R9 R10
       70 GETIMPORT                        R10 K19 [game]
       72 LOADK                            R12 K20 ["Selection"]
       73 NAMECALL                         R10 R10 K21 ["GetService"]
       75 CALL                             R10 2 1
       76 GETIMPORT                        R11 K19 [game]
       78 LOADK                            R13 K22 ["CoreGui"]
       79 NAMECALL                         R11 R11 K21 ["GetService"]
       81 CALL                             R11 2 1
       82 DUPCLOSURE                       R12 K23 [PROTO_0]
       83 CAPTURE                          VAL R9
       84 NEWTABLE                         R13 8 0
       86 SETTABLEKS                       R13 R13 K24 ["__index"]
       88 DUPCLOSURE                       R14 K25 [PROTO_2]
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R10
       93 SETTABLEKS                       R14 R13 K17 ["new"]
       95 DUPCLOSURE                       R14 K26 [PROTO_3]
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R9
      100 SETTABLEKS                       R14 R13 K27 ["renderSelection"]
      102 DUPCLOSURE                       R14 K28 [PROTO_4]
      103 SETTABLEKS                       R14 R13 K29 ["emptyPools"]
      105 DUPCLOSURE                       R14 K30 [PROTO_5]
      106 SETTABLEKS                       R14 R13 K31 ["emptyWireframes"]
      108 DUPCLOSURE                       R14 K32 [PROTO_6]
      109 SETTABLEKS                       R14 R13 K33 ["destroy"]
      111 RETURN                           R13 1
