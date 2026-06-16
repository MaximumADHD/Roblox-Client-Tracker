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
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["FFlagToolboxSandboxProceduralModels was not on"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+65]
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 LOADK                            R12 K3 ["ProceduralModel"]
       16 NAMECALL                         R10 R6 K4 ["QueryDescendants"]
       18 CALL                             R10 2 1
       19 MOVE                             R7 R10
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 FORGPREP                         R7
       23 GETTABLEKS                       R12 R11 K5 ["Generator"]
       25 JUMPIFNOT                        R12 ; [+4]
       26 GETTABLEKS                       R12 R11 K5 ["Generator"]
       28 LOADB                            R13 1
       29 SETTABLE                         R13 R1 R12
       30 FORGLOOP                         R7 2 ; [-8]
       32 LOADK                            R9 K3 ["ProceduralModel"]
       33 NAMECALL                         R7 R6 K6 ["IsA"]
       35 CALL                             R7 2 1
       36 JUMPIFNOT                        R7 ; [+7]
       37 GETTABLEKS                       R7 R6 K5 ["Generator"]
       39 JUMPIFNOT                        R7 ; [+4]
       40 GETTABLEKS                       R7 R6 K5 ["Generator"]
       42 LOADB                            R8 1
       43 SETTABLE                         R8 R1 R7
       44 FORGLOOP                         R2 2 ; [-30]
       46 MOVE                             R2 R1
       47 LOADNIL                          R3
       48 LOADNIL                          R4
       49 FORGPREP                         R2
       50 GETUPVAL                         R7 2
       51 SETTABLEKS                       R7 R5 K7 ["Capabilities"]
       53 LOADB                            R7 1
       54 SETTABLEKS                       R7 R5 K8 ["Sandboxed"]
       56 LOADK                            R12 K9 ["ModuleScript"]
       57 NAMECALL                         R10 R5 K4 ["QueryDescendants"]
       59 CALL                             R10 2 1
       60 MOVE                             R7 R10
       61 LOADNIL                          R8
       62 LOADNIL                          R9
       63 FORGPREP                         R7
       64 GETTABLE                         R12 R1 R11
       65 JUMPIF                           R12 ; [+3]
       66 LOADB                            R12 0
       67 SETTABLEKS                       R12 R11 K8 ["Sandboxed"]
       69 FORGLOOP                         R7 2 ; [-6]
       71 FORGLOOP                         R2 1 ; [-22]
       73 RETURN                           R0 0
       74 MOVE                             R1 R0
       75 LOADNIL                          R2
       76 LOADNIL                          R3
       77 FORGPREP                         R1
       78 LOADK                            R8 K3 ["ProceduralModel"]
       79 NAMECALL                         R6 R5 K6 ["IsA"]
       81 CALL                             R6 2 1
       82 JUMPIFNOT                        R6 ; [+21]
       83 GETUPVAL                         R8 1
       84 NOT                              R7 R8
       85 FASTCALL1                        ASSERT R7 ; [+2]
       86 GETIMPORT                        R6 K2 [assert]
       88 CALL                             R6 1 0
       89 GETTABLEKS                       R6 R5 K5 ["Generator"]
       91 JUMPIFNOTEQKNIL                  R6 ; [+2]
       93 JUMP                             ; [+10]
       94 GETTABLEKS                       R6 R5 K5 ["Generator"]
       96 GETUPVAL                         R7 2
       97 SETTABLEKS                       R7 R6 K7 ["Capabilities"]
       99 GETTABLEKS                       R6 R5 K5 ["Generator"]
      101 LOADB                            R7 1
      102 SETTABLEKS                       R7 R6 K8 ["Sandboxed"]
      104 LOADK                            R8 K3 ["ProceduralModel"]
      105 NAMECALL                         R6 R5 K4 ["QueryDescendants"]
      107 CALL                             R6 2 3
      108 FORGPREP                         R6
      109 GETUPVAL                         R13 1
      110 NOT                              R12 R13
      111 FASTCALL1                        ASSERT R12 ; [+2]
      112 GETIMPORT                        R11 K2 [assert]
      114 CALL                             R11 1 0
      115 GETTABLEKS                       R11 R10 K5 ["Generator"]
      117 JUMPIFNOTEQKNIL                  R11 ; [+2]
      119 JUMP                             ; [+10]
      120 GETTABLEKS                       R11 R10 K5 ["Generator"]
      122 GETUPVAL                         R12 2
      123 SETTABLEKS                       R12 R11 K7 ["Capabilities"]
      125 GETTABLEKS                       R11 R10 K5 ["Generator"]
      127 LOADB                            R12 1
      128 SETTABLEKS                       R12 R11 K8 ["Sandboxed"]
      130 FORGLOOP                         R6 2 ; [-22]
      132 FORGLOOP                         R1 2 ; [-55]
      134 RETURN                           R0 0

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
       15 GETTABLEKS                       R2 R2 K9 ["getFFlagToolboxSandboxProceduralModels"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["SharedFlags"]
       26 GETTABLEKS                       R3 R3 K10 ["getFFlagToolboxResandboxProceduralModels"]
       28 CALL                             R2 1 1
       29 MOVE                             R3 R1
       30 CALL                             R3 0 1
       31 MOVE                             R4 R2
       32 CALL                             R4 0 1
       33 GETIMPORT                        R5 K13 [SecurityCapabilities.new]
       35 GETIMPORT                        R6 K17 [Enum.SecurityCapability.Animation]
       37 GETIMPORT                        R7 K19 [Enum.SecurityCapability.AvatarBehavior]
       39 GETIMPORT                        R8 K21 [Enum.SecurityCapability.Audio]
       41 GETIMPORT                        R9 K23 [Enum.SecurityCapability.Avatar]
       43 GETIMPORT                        R10 K25 [Enum.SecurityCapability.Basic]
       45 GETIMPORT                        R11 K27 [Enum.SecurityCapability.CreateInstances]
       47 GETIMPORT                        R12 K29 [Enum.SecurityCapability.CSG]
       49 GETIMPORT                        R13 K31 [Enum.SecurityCapability.DynamicGeneration]
       51 GETIMPORT                        R14 K33 [Enum.SecurityCapability.Logging]
       53 GETIMPORT                        R15 K35 [Enum.SecurityCapability.Input]
       55 GETIMPORT                        R16 K37 [Enum.SecurityCapability.LegacySound]
       57 GETIMPORT                        R17 K39 [Enum.SecurityCapability.Material]
       59 GETIMPORT                        R18 K41 [Enum.SecurityCapability.Physics]
       61 GETIMPORT                        R19 K43 [Enum.SecurityCapability.RunClientScript]
       63 GETIMPORT                        R20 K45 [Enum.SecurityCapability.RunServerScript]
       65 GETIMPORT                        R21 K47 [Enum.SecurityCapability.UI]
       67 CALL                             R5 16 1
       68 DUPCLOSURE                       R6 K48 [PROTO_0]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 DUPCLOSURE                       R7 K49 [PROTO_1]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 RETURN                           R7 1
