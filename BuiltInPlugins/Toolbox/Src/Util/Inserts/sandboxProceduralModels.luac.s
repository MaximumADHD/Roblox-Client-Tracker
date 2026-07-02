PROTO_0:
        0 GETUPVAL                         R3 0
        1 NOT                              R2 R3
        2 FASTCALL1                        ASSERT R2 ; [+2]
        3 GETIMPORT                        R1 K1 [assert]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["Generator"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K2 ["Generator"]
       13 GETUPVAL                         R2 1
       14 SETTABLEKS                       R2 R1 K3 ["Capabilities"]
       16 GETTABLEKS                       R1 R0 K2 ["Generator"]
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K4 ["Sandboxed"]
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+65]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 LOADK                            R12 K0 ["ProceduralModel"]
        9 NAMECALL                         R10 R6 K1 ["QueryDescendants"]
       11 CALL                             R10 2 1
       12 MOVE                             R7 R10
       13 LOADNIL                          R8
       14 LOADNIL                          R9
       15 FORGPREP                         R7
       16 GETTABLEKS                       R12 R11 K2 ["Generator"]
       18 JUMPIFNOT                        R12 ; [+4]
       19 GETTABLEKS                       R12 R11 K2 ["Generator"]
       21 LOADB                            R13 1
       22 SETTABLE                         R13 R1 R12
       23 FORGLOOP                         R7 2 ; [-8]
       25 LOADK                            R9 K0 ["ProceduralModel"]
       26 NAMECALL                         R7 R6 K3 ["IsA"]
       28 CALL                             R7 2 1
       29 JUMPIFNOT                        R7 ; [+7]
       30 GETTABLEKS                       R7 R6 K2 ["Generator"]
       32 JUMPIFNOT                        R7 ; [+4]
       33 GETTABLEKS                       R7 R6 K2 ["Generator"]
       35 LOADB                            R8 1
       36 SETTABLE                         R8 R1 R7
       37 FORGLOOP                         R2 2 ; [-30]
       39 MOVE                             R2 R1
       40 LOADNIL                          R3
       41 LOADNIL                          R4
       42 FORGPREP                         R2
       43 GETUPVAL                         R7 1
       44 SETTABLEKS                       R7 R5 K4 ["Capabilities"]
       46 LOADB                            R7 1
       47 SETTABLEKS                       R7 R5 K5 ["Sandboxed"]
       49 LOADK                            R12 K6 ["ModuleScript"]
       50 NAMECALL                         R10 R5 K1 ["QueryDescendants"]
       52 CALL                             R10 2 1
       53 MOVE                             R7 R10
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 FORGPREP                         R7
       57 GETTABLE                         R12 R1 R11
       58 JUMPIF                           R12 ; [+3]
       59 LOADB                            R12 0
       60 SETTABLEKS                       R12 R11 K5 ["Sandboxed"]
       62 FORGLOOP                         R7 2 ; [-6]
       64 FORGLOOP                         R2 1 ; [-22]
       66 RETURN                           R0 0
       67 MOVE                             R1 R0
       68 LOADNIL                          R2
       69 LOADNIL                          R3
       70 FORGPREP                         R1
       71 LOADK                            R8 K0 ["ProceduralModel"]
       72 NAMECALL                         R6 R5 K3 ["IsA"]
       74 CALL                             R6 2 1
       75 JUMPIFNOT                        R6 ; [+21]
       76 GETUPVAL                         R8 0
       77 NOT                              R7 R8
       78 FASTCALL1                        ASSERT R7 ; [+2]
       79 GETIMPORT                        R6 K8 [assert]
       81 CALL                             R6 1 0
       82 GETTABLEKS                       R6 R5 K2 ["Generator"]
       84 JUMPIFNOTEQKNIL                  R6 ; [+2]
       86 JUMP                             ; [+10]
       87 GETTABLEKS                       R6 R5 K2 ["Generator"]
       89 GETUPVAL                         R7 1
       90 SETTABLEKS                       R7 R6 K4 ["Capabilities"]
       92 GETTABLEKS                       R6 R5 K2 ["Generator"]
       94 LOADB                            R7 1
       95 SETTABLEKS                       R7 R6 K5 ["Sandboxed"]
       97 LOADK                            R8 K0 ["ProceduralModel"]
       98 NAMECALL                         R6 R5 K1 ["QueryDescendants"]
      100 CALL                             R6 2 3
      101 FORGPREP                         R6
      102 GETUPVAL                         R13 0
      103 NOT                              R12 R13
      104 FASTCALL1                        ASSERT R12 ; [+2]
      105 GETIMPORT                        R11 K8 [assert]
      107 CALL                             R11 1 0
      108 GETTABLEKS                       R11 R10 K2 ["Generator"]
      110 JUMPIFNOTEQKNIL                  R11 ; [+2]
      112 JUMP                             ; [+10]
      113 GETTABLEKS                       R11 R10 K2 ["Generator"]
      115 GETUPVAL                         R12 1
      116 SETTABLEKS                       R12 R11 K4 ["Capabilities"]
      118 GETTABLEKS                       R11 R10 K2 ["Generator"]
      120 LOADB                            R12 1
      121 SETTABLEKS                       R12 R11 K5 ["Sandboxed"]
      123 FORGLOOP                         R6 2 ; [-22]
      125 FORGLOOP                         R1 2 ; [-55]
      127 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["SharedFlags"]
       15 GETTABLEKS                       R2 R2 K9 ["getFFlagToolboxResandboxProceduralModels"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 CALL                             R2 0 1
       20 GETIMPORT                        R3 K12 [SecurityCapabilities.new]
       22 GETIMPORT                        R4 K16 [Enum.SecurityCapability.Animation]
       24 GETIMPORT                        R5 K18 [Enum.SecurityCapability.AvatarBehavior]
       26 GETIMPORT                        R6 K20 [Enum.SecurityCapability.Audio]
       28 GETIMPORT                        R7 K22 [Enum.SecurityCapability.Avatar]
       30 GETIMPORT                        R8 K24 [Enum.SecurityCapability.Basic]
       32 GETIMPORT                        R9 K26 [Enum.SecurityCapability.CreateInstances]
       34 GETIMPORT                        R10 K28 [Enum.SecurityCapability.CSG]
       36 GETIMPORT                        R11 K30 [Enum.SecurityCapability.DynamicGeneration]
       38 GETIMPORT                        R12 K32 [Enum.SecurityCapability.Logging]
       40 GETIMPORT                        R13 K34 [Enum.SecurityCapability.Input]
       42 GETIMPORT                        R14 K36 [Enum.SecurityCapability.LegacySound]
       44 GETIMPORT                        R15 K38 [Enum.SecurityCapability.Material]
       46 GETIMPORT                        R16 K40 [Enum.SecurityCapability.Physics]
       48 GETIMPORT                        R17 K42 [Enum.SecurityCapability.RunClientScript]
       50 GETIMPORT                        R18 K44 [Enum.SecurityCapability.RunServerScript]
       52 GETIMPORT                        R19 K46 [Enum.SecurityCapability.UI]
       54 CALL                             R3 16 1
       55 DUPCLOSURE                       R4 K47 [PROTO_0]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R3
       58 DUPCLOSURE                       R5 K48 [PROTO_1]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 RETURN                           R5 1
